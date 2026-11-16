import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../core/security/secret_store.dart';
import '../../settings/data/settings_repository.dart';

/// Thrown when no usable provider is configured (no endpoint, invalid
/// endpoint or no API key).
class AssistantNotConfigured implements Exception {
  const AssistantNotConfigured();
}

/// Thrown when the user declines the consent dialog. No request was made.
class AssistantConsentDeclined implements Exception {
  const AssistantConsentDeclined();
}

/// Thrown for network errors, timeouts, non-2xx responses or malformed
/// responses. Never contains user content.
class AssistantUnavailable implements Exception {
  const AssistantUnavailable(this.reason);
  final String reason;
  @override
  String toString() => 'AssistantUnavailable($reason)';
}

/// Result of the consent dialog.
enum ConsentDecision { once, always }

typedef ConsentPrompt = Future<ConsentDecision?> Function(String host);

/// Validation helpers for OpenAI-compatible endpoints.
abstract final class AssistantEndpoint {
  /// Parses [raw] and returns the chat-completions URL, or null when the
  /// value is not an absolute `https://` URL with a host. Accepted forms:
  /// `https://host`, `https://host/v1`, `https://host/v1/chat/completions`.
  static Uri? chatCompletionsUrl(String raw) {
    final v = raw.trim();
    if (v.isEmpty) return null;
    final u = Uri.tryParse(v);
    if (u == null || u.scheme.toLowerCase() != 'https' || u.host.isEmpty) return null;
    if (u.userInfo.isNotEmpty) return null;
    var path = u.path;
    while (path.endsWith('/')) {
      path = path.substring(0, path.length - 1);
    }
    if (!path.endsWith('/chat/completions')) {
      path = path.endsWith('/v1') ? '$path/chat/completions' : '$path/v1/chat/completions';
    }
    return Uri(
      scheme: 'https',
      host: u.host,
      port: u.hasPort ? u.port : null,
      path: path,
      query: u.query.isEmpty ? null : u.query,
    );
  }

  static bool isValid(String raw) => chatCompletionsUrl(raw) != null;

  static String? host(String raw) => chatCompletionsUrl(raw)?.host;
}

/// Client for an optional, user-chosen OpenAI-compatible provider.
///
/// Privacy guarantees enforced here (and unit-tested):
/// * No request without a valid HTTPS endpoint and an API key from
///   [SecretStore].
/// * No request unless the user consented: either the stored
///   "do not ask again" flag is set, or [ConsentPrompt] returns a decision.
/// * The API key is read from secure storage per request and never logged.
class RemoteAssistant {
  RemoteAssistant({
    required this.client,
    required this.secrets,
    this.timeout = const Duration(seconds: 30),
  });

  final http.Client client;
  final SecretStore secrets;
  final Duration timeout;

  static const maxInputChars = 16000;

  Future<bool> hasKey() async {
    final k = await secrets.read(SecretKeys.assistantApiKey);
    return k != null && k.trim().isNotEmpty;
  }

  Future<void> saveKey(String key) => secrets.write(SecretKeys.assistantApiKey, key.trim());

  Future<void> deleteKey() => secrets.delete(SecretKeys.assistantApiKey);

  /// Whether a provider is fully configured (endpoint + key).
  Future<bool> isConfigured(AppSettings s) async =>
      AssistantEndpoint.isValid(s.assistantEndpoint) && await hasKey();

  /// Summarizes [text]. [askConsent] is called unless the user already
  /// chose "do not ask again" for the configured provider. Returns the
  /// decision so callers can persist [ConsentDecision.always].
  Future<(String, ConsentDecision?)> summarize({
    required String text,
    required AppSettings settings,
    required ConsentPrompt askConsent,
  }) async {
    final url = AssistantEndpoint.chatCompletionsUrl(settings.assistantEndpoint);
    if (url == null) throw const AssistantNotConfigured();
    final key = await secrets.read(SecretKeys.assistantApiKey);
    if (key == null || key.trim().isEmpty) throw const AssistantNotConfigured();

    ConsentDecision? decision;
    if (!settings.assistantRemoteConsent) {
      decision = await askConsent(url.host);
      if (decision == null) throw const AssistantConsentDeclined();
    }

    final input = text.length > maxInputChars ? text.substring(0, maxInputChars) : text;
    final body = jsonEncode({
      if (settings.assistantModel.trim().isNotEmpty) 'model': settings.assistantModel.trim(),
      'temperature': 0.3,
      'messages': [
        {
          'role': 'system',
          'content':
              'Summarize the user\'s note in a few short bullet points. '
              'Reply in the same language as the note. Do not add facts.',
        },
        {'role': 'user', 'content': input},
      ],
    });

    final http.Response res;
    try {
      res = await client
          .post(
            url,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'Bearer ${key.trim()}',
            },
            body: body,
          )
          .timeout(timeout);
    } on TimeoutException {
      throw const AssistantUnavailable('timeout');
    } on Object {
      throw const AssistantUnavailable('network');
    }
    if (res.statusCode < 200 || res.statusCode >= 300) {
      throw AssistantUnavailable('http ${res.statusCode}');
    }
    try {
      final json = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, Object?>;
      final choices = json['choices'] as List;
      final message = (choices.first as Map)['message'] as Map;
      final content = (message['content'] as String).trim();
      if (content.isEmpty) throw const FormatException('empty');
      return (content, decision);
    } on Object {
      throw const AssistantUnavailable('format');
    }
  }
}
