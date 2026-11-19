import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A small local log of app errors, kept on the phone and shared only when the
/// user chooses. Privacy: only the error's type and code locations (stack
/// frames) are written, never its message, which could contain the user's text.
class ErrorLog {
  ErrorLog(this.file);

  /// Where the log lives; null where there is no file system (tests).
  final File? file;
  static const maxBytes = 64 * 1024;
  static const _frames = 12;

  /// One entry: time, where it happened, the error type and the top frames.
  static String entry(
    Object error,
    StackTrace? stack, {
    required String source,
    required DateTime at,
  }) {
    final frames = (stack?.toString() ?? '')
        .split('\n')
        .where((l) => l.trim().isNotEmpty)
        .take(_frames)
        .map((l) => '  $l')
        .join('\n');
    return '[${at.toUtc().toIso8601String()}] $source: ${error.runtimeType}\n$frames\n';
  }

  void record(Object error, StackTrace? stack, {String source = 'app'}) {
    final f = file;
    if (f == null) return;
    try {
      f.writeAsStringSync(
        entry(error, stack, source: source, at: DateTime.now()),
        mode: FileMode.append,
        flush: true,
      );
      final len = f.lengthSync();
      if (len > maxBytes) {
        // Keep the newest half, cut at an entry boundary.
        final text = f.readAsStringSync();
        final cut = text.indexOf('\n[', text.length - maxBytes ~/ 2);
        f.writeAsStringSync(cut < 0 ? '' : text.substring(cut + 1), flush: true);
      }
    } on FileSystemException {
      // Logging must never cause another error.
    }
  }

  String read() {
    final f = file;
    if (f == null || !f.existsSync()) return '';
    try {
      return f.readAsStringSync();
    } on FileSystemException {
      return '';
    }
  }

  int count() => RegExp(r'^\[', multiLine: true).allMatches(read()).length;

  void clear() {
    try {
      file?.writeAsStringSync('', flush: true);
    } on FileSystemException {
      // Nothing to clear.
    }
  }
}

final errorLogProvider = Provider<ErrorLog>((ref) => ErrorLog(null));
