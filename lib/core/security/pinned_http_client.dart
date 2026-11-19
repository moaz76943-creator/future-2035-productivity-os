import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// HTTP client that enforces additional security for the optional remote assistant.
/// Combined with Android network_security_config (cleartext forbidden) and R8 obfuscation.
/// For full certificate pinning of dynamic endpoints, extend with platform channel to OkHttp CertificatePinner
/// or use a maintained package after reviewing licenses and Play policy.
class PinnedHttpClient extends http.BaseClient {
  PinnedHttpClient() : _inner = IOClient(HttpClient());

  final http.Client _inner;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    // Enforce HTTPS only (already validated upstream).
    if (request.url.scheme != 'https') {
      throw ArgumentError('Only HTTPS endpoints are permitted');
    }
    return _inner.send(request);
  }

  @override
  void close() => _inner.close();
}

final pinnedHttpClientProvider = Provider<http.Client>((ref) => PinnedHttpClient());
