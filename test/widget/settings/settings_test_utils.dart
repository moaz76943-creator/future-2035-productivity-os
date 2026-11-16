import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/features/backup/application/backup_ui.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:material_ui/material_ui.dart';

/// Re-localizes [child] from the live settings, like the real app does, so
/// tests can observe a language switch.
class LiveLocale extends ConsumerWidget {
  const LiveLocale({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tag = ref.watch(settingsProvider).localeTag;
    final lang = AppLocales.resolve(tag, const [Locale('en')]);
    return Localizations.override(
      context: context,
      locale: lang.locale,
      delegates: AppLocales.delegates,
      child: child,
    );
  }
}

class FakeBackupFiles implements BackupFiles {
  FakeBackupFiles({this.picked});
  Uint8List? picked;
  String? savedName;
  Uint8List? savedBytes;

  @override
  Future<Uint8List?> pick() async => picked;

  @override
  Future<BackupSaveResult> save(String fileName, Uint8List bytes, {required String subject}) async {
    savedName = fileName;
    savedBytes = bytes;
    return BackupSaveResult.saved;
  }
}

ProviderContainer containerOf(WidgetTester tester, Type screen) =>
    ProviderScope.containerOf(tester.element(find.byType(screen)));

/// Scrolls the main page until [finder] is built and visible.
Future<void> scrollTo(WidgetTester tester, Finder finder) async {
  await tester.scrollUntilVisible(
    finder,
    250,
    scrollable: find
        .descendant(of: find.byType(CustomScrollView), matching: find.byType(Scrollable))
        .first,
  );
  await tester.pump();
}

Future<void> pumpFrames(WidgetTester tester, [int n = 4]) async {
  for (var i = 0; i < n; i++) {
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 20)));
    await tester.pump(const Duration(milliseconds: 120));
  }
}
