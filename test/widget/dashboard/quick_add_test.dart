import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/dashboard/presentation/dashboard_screen.dart';
import 'package:future_os/features/dashboard/presentation/quick_add_sheet.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('home has no floating plus: its quick actions add instead (ar)', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const DashboardScreen(), env: env, localeTag: 'ar');
    await settle(tester);
    expect(find.byType(FloatingActionButton), findsNothing);
    await closeEnv(tester, env);
  });

  testWidgets('the quick-add sheet offers task, note, event and card (ar)', (tester) async {
    final env = TestEnv();
    await pumpScreen(
      tester,
      Builder(
        builder: (context) => Scaffold(
          body: TextButton(
            key: const Key('openQuickAdd'),
            onPressed: () => showQuickAdd(context),
            child: const Text('open'),
          ),
        ),
      ),
      env: env,
      localeTag: 'ar',
    );
    await settle(tester);
    await tester.tap(find.byKey(const Key('openQuickAdd')));
    await settle(tester);
    for (final k in ['quickAddTask', 'quickAddNote', 'quickAddEvent', 'quickAddCard']) {
      expect(find.byKey(Key(k)), findsOneWidget, reason: k);
    }
    await closeEnv(tester, env);
  });
}
