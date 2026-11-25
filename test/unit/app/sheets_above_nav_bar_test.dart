import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// The tab pages run under the floating navigation bar, so a bottom sheet
/// opened on a tab's own navigator has its bottom buttons hidden behind the
/// bar. Every sheet must open on the root navigator, above the bar.
void main() {
  test('every bottom sheet opens above the navigation bar', () {
    final missing = <String>[];
    for (final f in Directory('lib').listSync(recursive: true).whereType<File>()) {
      if (!f.path.endsWith('.dart')) continue;
      final src = f.readAsStringSync();
      for (final m in RegExp(r'showModalBottomSheet(<[^(]*>)?\(').allMatches(src)) {
        final head = src.substring(m.end, (m.end + 200).clamp(0, src.length));
        if (!head.contains('useRootNavigator: true')) {
          final line = '\n'.allMatches(src.substring(0, m.start)).length + 1;
          missing.add('${f.path}:$line');
        }
      }
    }
    expect(missing, isEmpty, reason: 'add useRootNavigator: true');
  });
}
