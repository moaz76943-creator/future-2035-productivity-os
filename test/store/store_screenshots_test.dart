import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/app/routing/app_router.dart';
import 'package:future_os/app/routing/routes.dart';
import 'package:future_os/core/design_system/app_theme.dart';
import 'package:future_os/core/design_system/components/surfaces.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/core/security/secret_store.dart';
import 'package:future_os/features/calendar/data/events_repository.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/goals/data/goals_repository.dart';
import 'package:future_os/features/habits/data/habits_repository.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/projects/data/milestones_repository.dart';
import 'package:future_os/features/projects/data/projects_repository.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_ui/material_ui.dart';

import '../helpers.dart';
import '../widget/widget_helpers.dart';

/// Renders Play Store phone screenshots (1080x1920) of the real screens with
/// the bundled fonts, from sample content typed into the app's own
/// repositories. Off by default; run with:
///   STORE_SCREENSHOTS=1 flutter test test/store/store_screenshots_test.dart
/// Output: `build/store_screenshots/<locale>/<nn>-<screen>.png`
const _logical = Size(1080 / 2.625, 1920 / 2.625);
final _enabled = Platform.environment['STORE_SCREENSHOTS'] == '1';

Future<void> _loadFonts() async {
  Future<void> family(String name, List<String> assets) async {
    final loader = FontLoader(name);
    for (final a in assets) {
      loader.addFont(rootBundle.load(a));
    }
    await loader.load();
  }

  await family('Manrope', ['assets/fonts/Manrope.ttf']);
  await family('ReadexPro', ['assets/fonts/ReadexPro.ttf']);
  await family('NotoSansDevanagari', ['assets/fonts/NotoSansDevanagari.ttf']);
  final sdk = Platform.environment['FLUTTER_ROOT'] ?? '/opt/fl/flutter';
  final icons = File('$sdk/bin/cache/artifacts/material_fonts/MaterialIcons-Regular.otf');
  if (icons.existsSync()) {
    final loader = FontLoader('MaterialIcons')
      ..addFont(Future.value(ByteData.sublistView(icons.readAsBytesSync())));
    await loader.load();
  }
}

Map<String, String> _copy(String tag) => tag == 'ar'
    ? {
        'project': 'إطلاق التطبيق',
        'goal': 'نسخة تجريبية للمختبرين',
        't1': 'مراجعة تصميم الشاشة الرئيسية',
        't2': 'كتابة ملاحظات الإصدار',
        't3': 'تجهيز لقطات المتجر',
        't4': 'الاتصال بفريق الدعم',
        't5': 'تنظيم صور الرحلة',
        'm1': 'النسخة التجريبية',
        'm2': 'الإطلاق العام',
        'e1': 'اجتماع الفريق',
        'e2': 'جلسة تركيز عميق',
        'h1': 'قراءة 20 دقيقة',
        'h2': 'مشي صباحي',
        'deck': 'مفردات إسبانية',
        'note': 'أفكار الأسبوع',
        'noteBody': 'تبسيط شاشة الإعدادات\nإضافة وضع التركيز للمشاريع',
        'g': 'قراءة 12 كتابًا',
      }
    : {
        'project': 'App launch',
        'goal': 'Beta build for testers',
        't1': 'Review home screen design',
        't2': 'Write release notes',
        't3': 'Prepare store screenshots',
        't4': 'Call the support team',
        't5': 'Sort trip photos',
        'm1': 'Beta',
        'm2': 'Public launch',
        'e1': 'Team sync',
        'e2': 'Deep work block',
        'h1': 'Read 20 minutes',
        'h2': 'Morning walk',
        'deck': 'Spanish words',
        'note': 'Ideas this week',
        'noteBody': 'Simplify the settings screen\nProject-based focus mode',
        'g': 'Read 12 books',
      };

Future<String> _seed(TestEnv env, String tag) async {
  final c = _copy(tag);
  final db = env.db;
  final clock = env.clock;
  final now = clock.now();
  final day = DateTime(now.year, now.month, now.day);
  final projects = ProjectsRepository(db, clock);
  final pid = await projects.create(
    ProjectDraft(
      name: c['project']!,
      color: 0xFF6C4CFF,
      icon: 'rocket',
      goal: c['goal']!,
      deadline: day.add(const Duration(days: 24)),
    ),
  );
  final tasks = TasksRepository(db, clock);
  final a = await tasks.create(
    TaskDraft(
      title: c['t1']!,
      projectId: pid,
      priority: 3,
      dueAt: day.add(const Duration(hours: 11)),
    ),
  );
  await tasks.setInProgress(a, true);
  await tasks.create(TaskDraft(title: c['t2']!, projectId: pid, priority: 2, dueAt: day));
  final done = await tasks.create(TaskDraft(title: c['t3']!, projectId: pid, dueAt: day));
  await tasks.complete(done);
  await tasks.create(
    TaskDraft(title: c['t4']!, dueAt: day.add(const Duration(days: 1)), priority: 1),
  );
  await tasks.create(TaskDraft(title: c['t5']!));
  final ms = MilestonesRepository(db, clock);
  final m1 = await ms.add(pid, c['m1']!, dueAt: day.subtract(const Duration(days: 2)));
  await ms.setDone(m1, true);
  await ms.add(pid, c['m2']!, dueAt: day.add(const Duration(days: 24)));
  final events = EventsRepository(db, clock);
  await events.create(
    EventDraft(
      title: c['e1']!,
      start: day.add(const Duration(hours: 9, minutes: 30)),
      end: day.add(const Duration(hours: 10, minutes: 15)),
    ),
  );
  await events.create(
    EventDraft(
      title: c['e2']!,
      start: day.add(const Duration(hours: 14)),
      end: day.add(const Duration(hours: 16)),
    ),
  );
  final habits = HabitsRepository(db, clock);
  final h1 = await habits.create(name: c['h1']!, color: 0xFF2BB5A0);
  final h2 = await habits.create(name: c['h2']!, color: 0xFFF29E4C);
  for (var i = 0; i < 9; i++) {
    await habits.increment(h1, day.subtract(Duration(days: i)));
    if (i.isEven) await habits.increment(h2, day.subtract(Duration(days: i)));
  }
  final cards = FlashcardsRepository(db, clock);
  final deck = await cards.createDeck(c['deck']!, color: 0xFFE5578F);
  for (final (f, b) in [('la ventana', 'window'), ('el puente', 'bridge'), ('la llave', 'key')]) {
    await cards.addCard(
      deck,
      f,
      tag == 'ar' ? {'window': 'نافذة', 'bridge': 'جسر', 'key': 'مفتاح'}[b]! : b,
    );
  }
  await NotesRepository(db, clock).create(title: c['note']!, body: c['noteBody']!, projectId: pid);
  final goals = GoalsRepository(db, clock);
  final g = await goals.create(title: c['g']!, period: GoalPeriod.longTerm, target: 12);
  await goals.addEntry(g, 7);
  return pid;
}

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('store screenshots ($tag)', skip: !_enabled, (tester) async {
      await initializeDateFormatting();
      await tester.runAsync(_loadFonts);
      tester.view.physicalSize = _logical * 2.625;
      tester.view.devicePixelRatio = 2.625;
      addTearDown(tester.view.reset);
      final env = TestEnv();
      final pid = (await tester.runAsync(() => _seed(env, tag)))!;
      final locale = AppLocales.byTag(tag)!.locale;
      final boundary = GlobalKey();
      late GoRouter router;
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            databaseProvider.overrideWithValue(env.db),
            clockProvider.overrideWithValue(env.clock),
            secretStoreProvider.overrideWithValue(MemorySecretStore()),
            initialSettingsProvider.overrideWithValue(
              AppSettings(onboardingDone: true, localeTag: tag),
            ),
          ],
          child: RepaintBoundary(
            key: boundary,
            child: Consumer(
              builder: (context, ref, _) {
                router = ref.watch(routerProvider);
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  locale: locale,
                  supportedLocales: AppLocales.locales,
                  localizationsDelegates: AppLocales.delegates,
                  theme: AppTheme.build(brightness: Brightness.light, locale: locale),
                  routerConfig: router,
                  builder: (context, child) => MotionScope(reduceMotion: true, child: child!),
                );
              },
            ),
          ),
        ),
      );
      await settle(tester);
      final out = Directory('build/store_screenshots/$tag')..createSync(recursive: true);
      final shots = <(String, String)>[
        ('01-home', Routes.home),
        ('02-tasks', Routes.tasks),
        ('03-calendar', Routes.calendar),
        ('04-project', Routes.project(pid)),
        ('05-focus', Routes.focus),
        ('06-habits', Routes.habits),
        ('07-flashcards', Routes.flashcards),
        ('08-insights', Routes.insights),
      ];
      for (final (name, route) in shots) {
        router.go(route);
        for (var i = 0; i < 6; i++) {
          await settle(tester);
        }
        final ro = boundary.currentContext!.findRenderObject()! as RenderRepaintBoundary;
        await tester.runAsync(() async {
          final ui.Image img = await ro.toImage(pixelRatio: 2.625);
          final bytes = await img.toByteData(format: ui.ImageByteFormat.png);
          File('${out.path}/$name.png').writeAsBytesSync(bytes!.buffer.asUint8List());
        });
      }
      await closeEnv(tester, env);
    });
  }
}
