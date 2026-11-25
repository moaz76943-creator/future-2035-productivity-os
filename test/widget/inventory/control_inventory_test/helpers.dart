part of '../control_inventory_test.dart';

Future<_Seed> _seed(TestEnv env) async {
  final s = _Seed();
  final now = env.clock.now();
  final projects = ProjectsRepository(env.db, env.clock);
  s.project = await projects.create(const ProjectDraft(name: 'Thesis', color: 0xFF6C4CFF));
  final tasks = TasksRepository(env.db, env.clock);
  s.task = await tasks.create(
    TaskDraft(title: 'Write chapter 2', projectId: s.project, dueAt: now, priority: 2),
  );
  await tasks.create(TaskDraft(title: 'Outline', parentId: s.task));
  s.event = await EventsRepository(env.db, env.clock).create(
    EventDraft(
      title: 'Seminar',
      start: now.add(const Duration(hours: 1)),
      end: now.add(const Duration(hours: 2)),
    ),
  );
  s.note = await NotesRepository(
    env.db,
    env.clock,
  ).create(title: 'Ideas', body: 'First draft notes', projectId: s.project);
  final cards = FlashcardsRepository(env.db, env.clock);
  s.deck = await cards.createDeck('Spanish', color: 0xFF2EC4B6);
  await cards.addCard(s.deck, 'hola', 'hello');
  await cards.addCard(s.deck, 'gracias', 'thank you');
  s.goal = await GoalsRepository(
    env.db,
    env.clock,
  ).create(title: 'Read 10 papers', period: GoalPeriod.monthly, target: 10);
  s.habit = await HabitsRepository(env.db, env.clock).create(name: 'Meditate', color: 0xFFFF9F1C);
  return s;
}

List<String> _routes(_Seed s) => [
  Routes.home,
  Routes.tasks,
  Routes.focus,
  Routes.calendar,
  Routes.spaces,
  Routes.taskNew,
  Routes.task(s.task),
  Routes.eventNew,
  Routes.event(s.event),
  Routes.projects,
  Routes.project(s.project),
  Routes.notes,
  Routes.note(s.note),
  Routes.flashcards,
  Routes.deck(s.deck),
  Routes.review(s.deck),
  Routes.goals,
  Routes.goal(s.goal),
  Routes.habits,
  Routes.habit(s.habit),
  Routes.insights,
  Routes.search,
  Routes.assistant,
  Routes.sounds,
  Routes.settings,
  Routes.help,
  Routes.trash,
  Routes.guard,
];

const double _dpr = 2;

bool _inHorizontalScroll(SemanticsNode node) {
  for (var n = node.parent; n != null; n = n.parent) {
    final d = n.getSemanticsData();
    if (d.hasAction(SemanticsAction.scrollLeft) || d.hasAction(SemanticsAction.scrollRight)) {
      return true;
    }
  }
  return false;
}

/// Open dialogs, bottom sheets and menus: their modal barrier is exposed to accessibility
/// as "Dismiss" (or "Scrim" for sheets). Page transitions have no such node.
int _barriers(WidgetTester tester) {
  var n = 0;
  void visit(SemanticsNode node) {
    final l = node.getSemanticsData().label;
    if (!node.isMergedIntoParent && (l == 'Dismiss' || l == 'Scrim')) n++;
    node.visitChildren((c) {
      visit(c);
      return true;
    });
  }

  visit(_root(tester));
  return n;
}

Future<void> _quiesce(WidgetTester tester) async {
  await tester.pump(const Duration(milliseconds: 400));
  await settle(tester);
  await tester.pump(const Duration(seconds: 1));
  await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 150)));
  await settle(tester);
}

SemanticsOwner _owner(WidgetTester tester) =>
    tester.binding.renderViews.first.owner!.semanticsOwner!;

SemanticsNode _root(WidgetTester tester) => _owner(tester).rootSemanticsNode!;

Rect _globalRect(SemanticsNode node) {
  var rect = node.rect;
  SemanticsNode? n = node;
  while (n != null) {
    final t = n.transform;
    if (t != null) rect = MatrixUtils.transformRect(t, rect);
    n = n.parent;
  }
  // The semantics tree is in physical pixels; pointer events use logical ones.
  return Rect.fromLTRB(rect.left / _dpr, rect.top / _dpr, rect.right / _dpr, rect.bottom / _dpr);
}

String _role(SemanticsData d) {
  final f = d.flagsCollection;
  if (f.isTextField) return 'textField';
  if (f.isToggled != Tristate.none) return 'switch';
  if (f.isChecked != CheckedState.none) return 'checkbox';
  if (f.isSlider) return 'slider';
  if (f.isLink) return 'link';
  if (f.isButton) return 'button';
  return 'tappable';
}

String _signature(WidgetTester tester, GoRouter router) {
  final buf = StringBuffer(router.routerDelegate.currentConfiguration.uri.toString());
  buf.write('|routes:${find.byWidgetPredicate((w) => w is ModalBarrier).evaluate().length}');
  void visit(SemanticsNode node) {
    final d = node.getSemanticsData();
    final f = d.flagsCollection;
    buf.write(
      '[${d.label}/${d.value}/${f.isSelected}${f.isChecked}${f.isToggled}${f.isExpanded}'
      '${f.isFocused}${f.isEnabled}/${d.actions}]',
    );
    node.visitChildren((c) {
      visit(c);
      return true;
    });
  }

  visit(_root(tester));
  return buf.toString();
}

Future<GoRouter> _pumpApp(WidgetTester tester, TestEnv env) async {
  late GoRouter router;
  final locale = AppLocales.byTag('en')!.locale;
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        databaseProvider.overrideWithValue(env.db),
        clockProvider.overrideWithValue(env.clock),
        secretStoreProvider.overrideWithValue(MemorySecretStore()),
        // The real system picker does not exist in tests; a chosen file keeps the tap observable.
        mediaPickerProvider.overrideWithValue(const _FakePicker()),
        initialSettingsProvider.overrideWithValue(const AppSettings(onboardingDone: true)),
      ],
      child: Consumer(
        builder: (context, ref, _) {
          router = ref.watch(routerProvider);
          return MaterialApp.router(
            locale: locale,
            supportedLocales: AppLocales.locales,
            localizationsDelegates: AppLocales.delegates,
            theme: AppTheme.build(brightness: Brightness.light, locale: locale),
            routerConfig: router,
          );
        },
      ),
    ),
  );
  await settle(tester);
  return router;
}

Future<void> _open(WidgetTester tester, GoRouter router, String path, [double offset = 0]) async {
  // Close anything a previous tap opened, then show the screen fresh.
  // Pop only page-less routes (dialogs, sheets, menus); pages belong to the router.
  for (final nav in tester.stateList<NavigatorState>(find.byType(Navigator)).toList().reversed) {
    if (nav.mounted) nav.popUntil((r) => r.settings is Page || r.isFirst);
  }
  // Let route transitions (and their hero flights) finish before navigating again.
  await tester.pump(const Duration(seconds: 1));
  router.go(Routes.home);
  await tester.pump(const Duration(seconds: 1));
  router.go(path);
  await tester.pump(const Duration(seconds: 1));
  await settle(tester);
  if (offset > 0) {
    final pos = _mainScroll(tester);
    if (pos != null) {
      pos.jumpTo(offset.clamp(0, pos.maxScrollExtent));
      await tester.pump();
      await settle(tester);
    }
  }
}

/// The page's own vertical scroll position (the largest vertical scrollable on screen).
ScrollPosition? _mainScroll(WidgetTester tester) {
  ScrollPosition? best;
  double bestArea = 0;
  for (final st in tester.stateList<ScrollableState>(find.byType(Scrollable))) {
    if (st.axisDirection != AxisDirection.down || !st.position.hasContentDimensions) continue;
    final box = st.context.findRenderObject();
    if (box is! RenderBox || !box.hasSize) continue;
    final area = box.size.width * box.size.height;
    if (area > bestArea) {
      bestArea = area;
      best = st.position;
    }
  }
  return best;
}

class _FakePicker implements MediaPicker {
  const _FakePicker();
  @override
  Future<PickedMedia?> pick({required bool image}) async =>
      const PickedMedia(_onePixelPng, 'picked.png');
}

const _onePixelPng = <int>[
  137,
  80,
  78,
  71,
  13,
  10,
  26,
  10,
  0,
  0,
  0,
  13,
  73,
  72,
  68,
  82,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  1,
  8,
  6,
  0,
  0,
  0,
  31,
  21,
  196,
  137,
  0,
  0,
  0,
  13,
  73,
  68,
  65,
  84,
  120,
  218,
  99,
  100,
  96,
  248,
  95,
  15,
  0,
  2,
  135,
  1,
  128,
  235,
  71,
  186,
  146,
  0,
  0,
  0,
  0,
  73,
  69,
  78,
  68,
  174,
  66,
  96,
  130,
];
