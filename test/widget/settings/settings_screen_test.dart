import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/backup/backup_service.dart';
import 'package:future_os/features/backup/application/backup_ui.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/features/settings/presentation/settings_screen.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';
import 'settings_test_utils.dart';

void main() {
  final en = lookupAppLocalizations(const Locale('en'));
  final ar = lookupAppLocalizations(const Locale('ar'));

  testWidgets('renders all sections in English', (tester) async {
    final env = await pumpScreen(tester, const SettingsScreen());
    await settle(tester);
    expect(find.text(en.settingsTitle), findsWidgets);
    for (final title in [
      en.settingsNotifications,
      en.settingsDashboard,
      en.settingsPrivacy,
      en.settingsAbout,
    ]) {
      await scrollTo(tester, find.text(title));
      expect(find.text(title), findsOneWidget);
    }
    expect(find.text(en.settingsVersion('1.0.0 (1)')), findsNothing); // part of a 2-line subtitle
    expect(find.textContaining(en.settingsVersion('1.0.0 (1)')), findsOneWidget);
    await env.dispose();
  });

  testWidgets('switching language to Arabic re-renders RTL and persists', (tester) async {
    final env = await pumpScreen(tester, const LiveLocale(child: SettingsScreen()));
    await settle(tester);
    expect(Directionality.of(tester.element(find.byType(SettingsScreen))), TextDirection.ltr);

    await tester.tap(find.byKey(const ValueKey('settings-language')));
    await settle(tester);
    // Only native names are listed.
    expect(find.text('العربية'), findsOneWidget);
    expect(find.text('Español'), findsOneWidget);
    expect(find.text(en.settingsLanguageSystem), findsWidgets);
    await tester.tap(find.byKey(const ValueKey('lang-ar')));
    await settle(tester);
    await settle(tester);

    final c = containerOf(tester, SettingsScreen);
    expect(c.read(settingsProvider).localeTag, 'ar');
    expect(Directionality.of(tester.element(find.byType(SettingsScreen))), TextDirection.rtl);
    expect(find.text(ar.settingsTitle), findsWidgets);
    expect(find.text(en.settingsGeneral), findsNothing);
    expect((await SettingsRepository(env.db).load()).localeTag, 'ar');

    // Back to device language.
    await tester.tap(find.byKey(const ValueKey('settings-language')));
    await settle(tester);
    await tester.tap(find.byKey(const ValueKey('lang-system')));
    await settle(tester);
    expect(c.read(settingsProvider).localeTag, isNull);
    await env.dispose();
  });

  testWidgets('steppers and toggles update settings', (tester) async {
    final env = await pumpScreen(tester, const SettingsScreen());
    await settle(tester);
    final c = containerOf(tester, SettingsScreen);
    await tester.tap(find.text(en.themeDark));
    await tester.pump();
    expect(c.read(settingsProvider).theme, ThemePreference.dark);

    final inc = find.byTooltip(en.settingsIncrease(en.settingsWorkLength));
    await scrollTo(tester, inc);
    await tester.tap(inc);
    await tester.pump();
    expect(c.read(settingsProvider).workMinutes, 30);
    expect(find.text(en.settingsMinutesValue(30)), findsOneWidget);

    final quiet = find.text(en.settingsQuietHours);
    await scrollTo(tester, quiet);
    await tester.tap(quiet);
    await tester.pump();
    expect(c.read(settingsProvider).quietHoursEnabled, isTrue);
    expect(find.text(en.settingsQuietStart), findsOneWidget);
    await env.dispose();
  });

  testWidgets('home sections can be toggled', (tester) async {
    final env = await pumpScreen(tester, const SettingsScreen());
    await settle(tester);
    final c = containerOf(tester, SettingsScreen);
    final row = find.byKey(const ValueKey('dash-notes'));
    await scrollTo(tester, row);
    await tester.tap(find.descendant(of: row, matching: find.byType(Switch)));
    await tester.pump();
    expect(c.read(settingsProvider).dashboardSections, isNot(contains('notes')));
    await tester.tap(
      find.descendant(of: find.byKey(const ValueKey('dash-notes')), matching: find.byType(Switch)),
    );
    await tester.pump();
    expect(c.read(settingsProvider).dashboardSections.last, 'notes');
    await env.dispose();
  });

  for (final tag in ['en', 'ar']) {
    testWidgets('erase requires the exact localized word ($tag)', (tester) async {
      final l10n = tag == 'ar' ? ar : en;
      final env = await pumpScreen(tester, const SettingsScreen(), localeTag: tag);
      await TasksRepository(env.db, env.clock).create(const TaskDraft(title: 'keep me?'));
      await SettingsRepository(env.db).save(const AppSettings(onboardingDone: true));
      await settle(tester);

      final erase = find.byKey(const ValueKey('settings-erase'));
      await scrollTo(tester, erase);
      await tester.tap(erase);
      await settle(tester);
      expect(find.text(l10n.settingsEraseFirstBody), findsOneWidget);
      await tester.tap(find.text(l10n.actionContinue));
      await settle(tester);

      FilledButton confirm() =>
          tester.widget<FilledButton>(find.byKey(const ValueKey('erase-confirm')));
      expect(confirm().onPressed, isNull);
      await tester.enterText(find.byKey(const ValueKey('erase-word')), 'nope');
      await tester.pump();
      expect(confirm().onPressed, isNull);
      final word = l10n.settingsEraseWord;
      await tester.enterText(
        find.byKey(const ValueKey('erase-word')),
        tag == 'en' ? ' ${word.toLowerCase()} ' : word,
      );
      await tester.pump();
      expect(confirm().onPressed, isNotNull);
      await tester.tap(find.byKey(const ValueKey('erase-confirm')));
      await settle(tester);
      await settle(tester);

      final rows = await env.db.select(env.db.tasks).get();
      expect(rows, isEmpty);
      final c = containerOf(tester, SettingsScreen);
      expect(c.read(settingsProvider).onboardingDone, isFalse);
      expect(find.text(l10n.settingsErased), findsOneWidget);
      await env.dispose();
    });

    testWidgets('cancelling erase keeps data ($tag)', (tester) async {
      final l10n = tag == 'ar' ? ar : en;
      final env = await pumpScreen(tester, const SettingsScreen(), localeTag: tag);
      await TasksRepository(env.db, env.clock).create(const TaskDraft(title: 'stay'));
      await settle(tester);
      final erase = find.byKey(const ValueKey('settings-erase'));
      await scrollTo(tester, erase);
      await tester.tap(erase);
      await settle(tester);
      await tester.tap(find.text(l10n.actionContinue));
      await settle(tester);
      await tester.tap(find.text(l10n.actionCancel));
      await settle(tester);
      expect(await env.db.select(env.db.tasks).get(), hasLength(1));
      await env.dispose();
    });

    testWidgets('restoring a non-backup file shows a mapped error ($tag)', (tester) async {
      final l10n = tag == 'ar' ? ar : en;
      final files = FakeBackupFiles(picked: Uint8List.fromList(List.filled(64, 3)));
      final env = await pumpScreen(
        tester,
        const SettingsScreen(),
        localeTag: tag,
        overrides: [backupFilesProvider.overrideWithValue(files)],
      );
      await TasksRepository(env.db, env.clock).create(const TaskDraft(title: 'untouched'));
      await settle(tester);
      final restore = find.byKey(const ValueKey('settings-restore'));
      await scrollTo(tester, restore);
      await tester.tap(restore);
      await pumpFrames(tester);
      expect(find.text(l10n.backupRestoreConfirmTitle), findsOneWidget);
      await tester.tap(find.text(l10n.actionContinue));
      await pumpFrames(tester);
      await tester.enterText(find.byKey(const ValueKey('backup-password')), 'something');
      await tester.tap(find.text(l10n.actionRestore));
      await pumpFrames(tester, 8);
      expect(find.text(l10n.backupNotABackup), findsOneWidget);
      expect(find.text(l10n.backupRestoring), findsNothing);
      expect(await env.db.select(env.db.tasks).get(), hasLength(1));
      await env.dispose();
    });
  }

  testWidgets('create backup validates password then saves an encrypted file', (tester) async {
    final files = FakeBackupFiles();
    final env2 = TestEnv();
    await pumpScreen(
      tester,
      const SettingsScreen(),
      env: env2,
      overrides: [
        backupFilesProvider.overrideWithValue(files),
        backupServiceProvider.overrideWithValue(
          BackupService(
            env2.db,
            kdf: Argon2id(memory: 256, iterations: 1, parallelism: 1, hashLength: 32),
          ),
        ),
      ],
    );
    await settle(tester);
    final backup = find.byKey(const ValueKey('settings-backup'));
    await scrollTo(tester, backup);
    await tester.tap(backup);
    await settle(tester);

    await tester.enterText(find.byKey(const ValueKey('backup-password')), 'short');
    await tester.tap(find.text(en.actionCreate));
    await tester.pump();
    expect(find.text(en.backupPasswordShort), findsOneWidget);

    await tester.enterText(find.byKey(const ValueKey('backup-password')), 'long enough pw');
    await tester.enterText(find.byKey(const ValueKey('backup-password-confirm')), 'different pw');
    await tester.tap(find.text(en.actionCreate));
    await tester.pump();
    expect(find.text(en.backupPasswordMismatch), findsOneWidget);

    await tester.enterText(find.byKey(const ValueKey('backup-password-confirm')), 'long enough pw');
    await tester.tap(find.text(en.actionCreate));
    await pumpFrames(tester, 10);
    expect(files.savedName, 'future-os-20261116.f35b');
    expect(files.savedBytes!.sublist(0, 4), BackupService.magic);
    expect(find.text(en.backupSaved), findsOneWidget);
    await env2.dispose();
  });

  testWidgets('large text in Russian lays out without overflow', (tester) async {
    final env = await pumpScreen(tester, const SettingsScreen(), localeTag: 'ru');
    tester.platformDispatcher.textScaleFactorTestValue = 2;
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    await settle(tester);
    await scrollTo(tester, find.byKey(const ValueKey('settings-erase')));
    expect(tester.takeException(), isNull);
    await env.dispose();
  });
}
