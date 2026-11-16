import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/search/domain/highlight.dart';

String marked(String text, String q) {
  final b = StringBuffer();
  var pos = 0;
  for (final (s, e) in MatchHighlighter.ranges(text, q)) {
    b
      ..write(text.substring(pos, s))
      ..write('[')
      ..write(text.substring(s, e))
      ..write(']');
    pos = e;
  }
  b.write(text.substring(pos));
  return b.toString();
}

void main() {
  test('ignores case and Latin accents', () {
    expect(marked('Préparer la Réunion', 'reunion'), 'Préparer la [Réunion]');
    expect(marked('CAFÉ café', 'cafe'), '[CAFÉ] [café]');
  });

  test('ignores Arabic diacritics and hamza variants in both directions', () {
    expect(marked('مراجعة الدَّرسِ اليوم', 'الدرس'), 'مراجعة [الدَّرسِ] اليوم');
    expect(marked('مراجعة الدرس', 'الدَّرس'), 'مراجعة [الدرس]');
    expect(marked('أحمد وإيمان', 'احمد'), '[أحمد] وإيمان');
    expect(marked('مدرسة', 'مدرسه'), '[مدرسة]');
  });

  test('handles collapsed whitespace, CJK and emoji safely', () {
    expect(marked('a   big  plan', 'big plan'), 'a   [big  plan]');
    expect(marked('明天的项目会议', '项目'), '明天的[项目]会议');
    expect(marked('🚀 launch day', 'launch'), '🚀 [launch] day');
  });

  test('no match or empty query yields no ranges', () {
    expect(MatchHighlighter.ranges('hello', 'xyz'), isEmpty);
    expect(MatchHighlighter.ranges('hello', '  '), isEmpty);
  });
}
