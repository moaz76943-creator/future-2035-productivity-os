import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/text/text_normalizer.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/search/data/search_service.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';

import '../../helpers.dart';

void main() {
  test('normalizer handles Arabic, Latin accents, Cyrillic, digits', () {
    expect(TextNormalizer.normalize('الْمَدْرَسَةُ'), 'المدرسه');
    expect(TextNormalizer.normalize('أحمد'), TextNormalizer.normalize('احمد'));
    expect(TextNormalizer.normalize('Café  CRÈME'), 'cafe creme');
    expect(TextNormalizer.normalize('Ёлка'), 'елка');
    expect(TextNormalizer.normalize('٢٠٢٦'), '2026');
    expect(TextNormalizer.westernDigits('٣ و ५'), '3 و 5');
  });

  test('searches across modules with Unicode-aware matching', () async {
    final env = TestEnv();
    final tasks = TasksRepository(env.db, env.clock);
    final notes = NotesRepository(env.db, env.clock);
    await tasks.create(const TaskDraft(title: 'مراجعة الدَّرس'));
    await tasks.create(const TaskDraft(title: 'Préparer la réunion'));
    await notes.create(title: '会议记录', body: '明天的项目会议');
    await notes.create(title: 'Заметка', body: 'Ёжик в тумане');
    final s = SearchService(env.db, env.clock);

    expect((await s.search('الدرس')).single.title, 'مراجعة الدَّرس');
    expect((await s.search('reunion')).single.category, SearchCategory.task);
    expect((await s.search('项目')).single.category, SearchCategory.note);
    expect((await s.search('ежик')).single.title, 'Заметка');
    expect(
      await s.search('100%'),
      isEmpty,
      reason: 'LIKE wildcards are escaped',
    );
    expect(await s.search('   '), isEmpty);
    expect(
      (await s.search('réunion', categories: {SearchCategory.note})),
      isEmpty,
    );

    await s.remember('one');
    await s.remember('two');
    await s.remember('one');
    expect(await s.watchRecent().first, ['one', 'two']);
    await env.dispose();
  });
}
