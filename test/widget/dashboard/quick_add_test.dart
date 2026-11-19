import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/dashboard/presentation/dashboard_screen.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

void main() {
  testWidgets('the plus button offers task, note, event and card (ar)', (tester) async {
    final env = TestEnv();
    await pumpScreen(tester, const DashboardScreen(), env: env, localeTag: 'ar');
    await settle(tester);
    await tester.tap(find.byKey(const Key('quickAdd')));
    await settle(tester);
    for (final k in ['quickAddTask', 'quickAddNote', 'quickAddEvent', 'quickAddCard']) {
      expect(find.byKey(Key(k)), findsOneWidget, reason: k);
    }
    await closeEnv(tester, env);
  });
}
