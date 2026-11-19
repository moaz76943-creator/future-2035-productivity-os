import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/diagnostics/error_log.dart';

void main() {
  test('error log keeps the type and code locations, never the message; stays small', () async {
    final dir = await Directory.systemTemp.createTemp('errlog');
    final log = ErrorLog(File('${dir.path}/errors.log'));
    try {
      throw const FormatException('my secret note text');
    } on FormatException catch (e, st) {
      log.record(e, st, source: 'test');
    }
    final text = log.read();
    expect(text, contains('FormatException'));
    expect(text, isNot(contains('secret')));
    expect(log.count(), 1);
    for (var i = 0; i < 2000; i++) {
      log.record(StateError('x'), StackTrace.current);
    }
    expect(File('${dir.path}/errors.log').lengthSync(), lessThanOrEqualTo(ErrorLog.maxBytes));
    expect(log.read(), startsWith('['), reason: 'trimmed at an entry boundary');
    log.clear();
    expect(log.count(), 0);
    expect(ErrorLog(null).read(), isEmpty);
    await dir.delete(recursive: true);
  });
}
