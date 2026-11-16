import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:future_os/app/localization/app_format.dart';

import 'widget_helpers.dart';

void main() {
  for (final tag in allLocaleTags) {
    testWidgets('localized frame renders in $tag', (tester) async {
      final env = await pumpScreen(
        tester,
        Builder(builder: (c) => Scaffold(body: Text(c.l10n.navHome))),
        localeTag: tag,
      );
      expect(find.byType(Text), findsOneWidget);
      final dir = Directionality.of(tester.element(find.byType(Text)));
      expect(dir, tag == 'ar' ? TextDirection.rtl : TextDirection.ltr);
      await env.dispose();
    });
  }
}
