// Every plural in every language picks a sensible branch for 0..200.
//
// Flutter turns `=0`/`zero` into Intl's `zero:` slot, `=1`/`one` into `one:`
// and `=2`/`two` into `two:`, and Intl then also uses those slots for every
// number the language's plural rule puts in that category. So `=1{1 card}`
// alone is shown for 21 in Croatian and for 0 in French, and `=0{No cards}` is
// shown for 10 in Latvian. This test runs Intl's real rules over each message
// and fails when an exact branch (`=N`) would be shown for another number.
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart' show Intl;

const _slot = {'=0': 'zero', 'zero': 'zero', '=1': 'one', 'one': 'one', '=2': 'two', 'two': 'two'};

/// Branch keys of each `{x, plural, ...}` in [text], in order.
List<List<String>> pluralBranches(String text) {
  final out = <List<String>>[];
  for (final m in RegExp(r'\{\s*\w+\s*,\s*plural\s*,').allMatches(text)) {
    final keys = <String>[];
    var depth = 1;
    final buf = StringBuffer();
    for (var i = m.end; i < text.length && depth > 0; i++) {
      final c = text[i];
      if (c == '{') {
        if (depth == 1) {
          keys.add(buf.toString().trim());
          buf.clear();
        }
        depth++;
      } else if (c == '}') {
        depth--;
      } else if (depth == 1) {
        buf.write(c);
      }
    }
    out.add(keys);
  }
  return out;
}

/// Which written branch Flutter's generated code shows for [n].
String chosen(List<String> keys, int n, String locale) {
  final slots = <String, String>{};
  for (final k in keys) {
    slots[_slot[k] ?? k] = k; // a later branch replaces an earlier one, as in Flutter
  }
  return Intl.pluralLogic<String>(n,
      locale: locale,
      zero: slots['zero'],
      one: slots['one'],
      two: slots['two'],
      few: slots['few'],
      many: slots['many'],
      other: slots['other'] ?? 'other');
}

void main() {
  final rows = (jsonDecode(File('lib/l10n/languages.json').readAsStringSync()) as List)
      .cast<Map<String, dynamic>>();
  for (final row in rows) {
    final code = row['code'] as String;
    final locale = row['intl'] as String;
    test('plural branches fit the numbers they are shown for: $code', () {
      final arb = jsonDecode(File('lib/l10n/app_$code.arb').readAsStringSync()) as Map<String, dynamic>;
      final problems = <String>[];
      arb.forEach((key, value) {
        if (key.startsWith('@') || value is! String) return;
        for (final keys in pluralBranches(value)) {
          for (var n = 0; n <= 200; n++) {
            final k = chosen(keys, n, locale);
            if (k.startsWith('=') && int.parse(k.substring(1)) != n) {
              problems.add('$key: $k is shown for $n (use the category branch instead)');
              break;
            }
          }
        }
      });
      expect(problems, isEmpty, reason: 'app_$code.arb');
    });
  }
}
