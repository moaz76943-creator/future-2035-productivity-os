import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Client-side Play Integrity attestation.
///
/// Full trust requires a backend: generate a nonce on the server, pass it here,
/// then send the returned token to your backend which calls the Google Play
/// Integrity API to verify it. Client-only checks are useful for basic detection
/// but can be bypassed by a determined attacker.
class PlayIntegrityService {
  static const _channel = MethodChannel('future_os/integrity');

  /// Requests an integrity token. [nonce] should be a cryptographically random
  /// value obtained from your backend (base64-url, 16-500 bytes).
  Future<String?> requestToken({required String nonce}) async {
    try {
      final token = await _channel.invokeMethod<String>('requestIntegrityToken', {
        'nonce': nonce,
      });
      return token;
    } on PlatformException catch (e) {
      // Log only the code, never the full exception that might contain sensitive data.
      // In production, send code to your analytics/crash reporter without PII.
      return null;
    } catch (_) {
      return null;
    }
  }

  /// Convenience helper that generates a local nonce (for demo / offline detection only).
  /// Prefer a server-generated nonce for real protection.
  Future<String?> requestTokenWithLocalNonce() async {
    final nonce = DateTime.now().millisecondsSinceEpoch.toRadixString(16) +
        List.generate(16, (_) => (DateTime.now().microsecond % 16).toRadixString(16)).join();
    return requestToken(nonce: nonce);
  }
}

final playIntegrityServiceProvider = Provider<PlayIntegrityService>(
  (ref) => PlayIntegrityService(),
);
