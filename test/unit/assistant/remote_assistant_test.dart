import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/security/secret_store.dart';
import 'package:future_os/features/assistant/data/remote_assistant.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  group('AssistantEndpoint', () {
    test('accepts only absolute https URLs and builds the chat URL', () {
      expect(
        AssistantEndpoint.chatCompletionsUrl('https://api.example.com/v1').toString(),
        'https://api.example.com/v1/chat/completions',
      );
      expect(
        AssistantEndpoint.chatCompletionsUrl('https://api.example.com').toString(),
        'https://api.example.com/v1/chat/completions',
      );
      expect(
        AssistantEndpoint.chatCompletionsUrl(' https://h.example/openai/v1/chat/completions/ ')
            .toString(),
        'https://h.example/openai/v1/chat/completions',
      );
      expect(AssistantEndpoint.host('HTTPS://API.Example.com/v1'), 'api.example.com');
      for (final bad in [
        '',
        'http://api.example.com/v1',
        'ftp://api.example.com',
        'api.example.com/v1',
        'https://',
        'https://user:pass@api.example.com',
        'javascript:alert(1)',
      ]) {
        expect(AssistantEndpoint.isValid(bad), isFalse, reason: bad);
      }
    });
  });

  group('RemoteAssistant', () {
    late MemorySecretStore secrets;
    late List<http.Request> requests;
    late int status;
    late String responseBody;

    RemoteAssistant build() => RemoteAssistant(
      secrets: secrets,
      client: MockClient((req) async {
        requests.add(req);
        return http.Response.bytes(utf8.encode(responseBody), status);
      }),
    );

    const configured = AppSettings(
      assistantEnabled: true,
      assistantEndpoint: 'https://api.example.com/v1',
      assistantModel: 'test-model',
    );

    setUp(() async {
      secrets = MemorySecretStore();
      requests = [];
      status = 200;
      responseBody = jsonEncode({
        'choices': [
          {
            'message': {'role': 'assistant', 'content': ' • Short summary '},
          },
        ],
      });
      await secrets.write(SecretKeys.assistantApiKey, 'sk-test');
    });

    test('declined consent sends no request', () async {
      final r = build();
      final asked = <String>[];
      await expectLater(
        r.summarize(
          text: 'private note',
          settings: configured,
          askConsent: (host) async {
            asked.add(host);
            return null;
          },
        ),
        throwsA(isA<AssistantConsentDeclined>()),
      );
      expect(asked, ['api.example.com']);
      expect(requests, isEmpty);
    });

    test('consent once sends exactly one well-formed request', () async {
      final r = build();
      final (summary, decision) = await r.summarize(
        text: 'my note',
        settings: configured,
        askConsent: (_) async => ConsentDecision.once,
      );
      expect(summary, '• Short summary');
      expect(decision, ConsentDecision.once);
      expect(requests, hasLength(1));
      final req = requests.single;
      expect(req.url.toString(), 'https://api.example.com/v1/chat/completions');
      expect(req.method, 'POST');
      expect(req.headers['Authorization'], 'Bearer sk-test');
      final body = jsonDecode(req.body) as Map<String, Object?>;
      expect(body['model'], 'test-model');
      final messages = body['messages'] as List;
      expect((messages.last as Map)['content'], 'my note');
    });

    test('stored "do not ask again" skips the dialog', () async {
      final r = build();
      var asked = false;
      await r.summarize(
        text: 'x',
        settings: configured.copyWith(assistantRemoteConsent: true),
        askConsent: (_) async {
          asked = true;
          return null;
        },
      );
      expect(asked, isFalse);
      expect(requests, hasLength(1));
    });

    test('no request without https endpoint or key', () async {
      final r = build();
      Future<ConsentDecision?> yes(String _) async => ConsentDecision.once;
      await expectLater(
        r.summarize(
          text: 'x',
          settings: configured.copyWith(assistantEndpoint: 'http://api.example.com/v1'),
          askConsent: yes,
        ),
        throwsA(isA<AssistantNotConfigured>()),
      );
      await r.deleteKey();
      expect(await r.hasKey(), isFalse);
      await expectLater(
        r.summarize(text: 'x', settings: configured, askConsent: yes),
        throwsA(isA<AssistantNotConfigured>()),
      );
      expect(requests, isEmpty);
    });

    test('server errors and malformed bodies become AssistantUnavailable', () async {
      final r = build();
      Future<ConsentDecision?> yes(String _) async => ConsentDecision.once;
      status = 500;
      await expectLater(
        r.summarize(text: 'x', settings: configured, askConsent: yes),
        throwsA(isA<AssistantUnavailable>()),
      );
      status = 200;
      responseBody = '{"nope": true}';
      await expectLater(
        r.summarize(text: 'x', settings: configured, askConsent: yes),
        throwsA(isA<AssistantUnavailable>()),
      );
    });

    test('network failures and timeouts become AssistantUnavailable', () async {
      final failing = RemoteAssistant(
        secrets: secrets,
        client: MockClient((_) async => throw http.ClientException('offline')),
      );
      await expectLater(
        failing.summarize(
          text: 'x',
          settings: configured,
          askConsent: (_) async => ConsentDecision.once,
        ),
        throwsA(isA<AssistantUnavailable>()),
      );
      final slow = RemoteAssistant(
        secrets: secrets,
        timeout: const Duration(milliseconds: 20),
        client: MockClient((_) async {
          await Future<void>.delayed(const Duration(milliseconds: 200));
          return http.Response('{}', 200);
        }),
      );
      await expectLater(
        slow.summarize(
          text: 'x',
          settings: configured,
          askConsent: (_) async => ConsentDecision.once,
        ),
        throwsA(isA<AssistantUnavailable>()),
      );
    });

    test('API key never appears in settings JSON', () async {
      final r = build();
      await r.saveKey('  sk-secret  ');
      expect(await secrets.read(SecretKeys.assistantApiKey), 'sk-secret');
      expect(jsonEncode(configured.toJson()), isNot(contains('sk-')));
    });
  });
}
