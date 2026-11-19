import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/localization/app_locales.dart';
import '../../../app/routing/routes.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../../shared/widgets/pickers.dart';
import '../../backup/presentation/backup_flows.dart';
import '../application/settings_providers.dart';
import '../data/settings_repository.dart';
import '../../backup/presentation/auto_backup_sheet.dart';
import 'end_tone_sheet.dart';
import 'error_log_sheet.dart';
import 'language_options.dart';

part 'settings_screen/section.dart';

/// Localized label of a dashboard section id.
String dashboardSectionLabel(AppLocalizations l10n, String id) => switch (id) {
  'focus' => l10n.dashSectionFocus,
  'today' => l10n.dashSectionToday,
  'agenda' => l10n.dashSectionAgenda,
  'habits' => l10n.dashSectionHabits,
  'goals' => l10n.dashSectionGoals,
  'review' => l10n.dashSectionReview,
  'notes' => l10n.dashSectionNotes,
  'insight' => l10n.dashSectionInsight,
  _ => id,
};

/// Shows the language sheet. Returns after the selection was applied.
Future<void> showLanguagePicker(BuildContext context) => showModalBottomSheet<void>(
  context: context,
  isScrollControlled: true,
  showDragHandle: true,
  builder: (_) => const _LanguageSheet(),
);

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final s = ref.watch(settingsProvider);
    final ctrl = ref.read(settingsProvider.notifier);
    void set(AppSettings Function(AppSettings) f) => ctrl.update(f);
    final fmt = context.fmt;
    final chosen = AppLocales.byTag(s.localeTag);

    return ModuleScaffold(
      title: l10n.settingsTitle,
      hue: ModuleHue.analytics,
      slivers: [
        SliverList.list(
          children: [
            // ---------------- General
            _Section(
              title: l10n.settingsGeneral,
              children: [
                _NavRow(
                  key: const ValueKey('settings-language'),
                  icon: Icons.translate_rounded,
                  title: l10n.settingsLanguage,
                  subtitle: chosen?.nativeName ?? l10n.settingsLanguageSystem,
                  onTap: () => showLanguagePicker(context),
                ),
              ],
            ),
            // ---------------- Appearance
            _Section(
              title: l10n.settingsAppearance,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                    Space.md,
                    Space.sm,
                    Space.md,
                    Space.sm,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l10n.settingsTheme, style: context.text.titleSmall),
                      Text(
                        l10n.settingsThemeHint,
                        style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                      ),
                      const SizedBox(height: Space.sm),
                      SizedBox(
                        width: double.infinity,
                        child: SegmentedButton<ThemePreference>(
                          showSelectedIcon: false,
                          segments: [
                            ButtonSegment(
                              value: ThemePreference.light,
                              icon: const Icon(Icons.light_mode_rounded),
                              label: Text(l10n.themeLight),
                            ),
                            ButtonSegment(
                              value: ThemePreference.dark,
                              icon: const Icon(Icons.dark_mode_rounded),
                              label: Text(l10n.themeDark),
                            ),
                            ButtonSegment(
                              value: ThemePreference.system,
                              icon: const Icon(Icons.brightness_auto_rounded),
                              label: Text(l10n.themeSystem),
                            ),
                          ],
                          selected: {s.theme},
                          onSelectionChanged: (v) => set((c) => c.copyWith(theme: v.first)),
                        ),
                      ),
                    ],
                  ),
                ),
                SwitchListTile(
                  secondary: const Icon(Icons.motion_photos_off_rounded),
                  title: Text(l10n.settingsReduceMotion),
                  subtitle: Text(l10n.settingsReduceMotionDesc),
                  value: s.reduceMotion,
                  onChanged: (v) => set((c) => c.copyWith(reduceMotion: v)),
                ),
              ],
            ),
            // ---------------- Focus timer
            _Section(
              title: l10n.settingsFocus,
              children: [
                _StepperRow(
                  label: l10n.settingsWorkLength,
                  value: l10n.settingsMinutesValue(s.workMinutes),
                  canDecrease: s.workMinutes > 5,
                  canIncrease: s.workMinutes < 120,
                  onChange: (d) =>
                      set((c) => c.copyWith(workMinutes: (c.workMinutes + d * 5).clamp(5, 120))),
                ),
                _StepperRow(
                  label: l10n.settingsShortBreak,
                  value: l10n.settingsMinutesValue(s.shortBreakMinutes),
                  canDecrease: s.shortBreakMinutes > 1,
                  canIncrease: s.shortBreakMinutes < 30,
                  onChange: (d) => set(
                    (c) => c.copyWith(shortBreakMinutes: (c.shortBreakMinutes + d).clamp(1, 30)),
                  ),
                ),
                _StepperRow(
                  label: l10n.settingsLongBreak,
                  value: l10n.settingsMinutesValue(s.longBreakMinutes),
                  canDecrease: s.longBreakMinutes > 5,
                  canIncrease: s.longBreakMinutes < 60,
                  onChange: (d) => set(
                    (c) => c.copyWith(longBreakMinutes: (c.longBreakMinutes + d * 5).clamp(5, 60)),
                  ),
                ),
                _StepperRow(
                  label: l10n.settingsLongBreakEvery,
                  value: l10n.settingsCycles(s.longBreakEvery),
                  canDecrease: s.longBreakEvery > 2,
                  canIncrease: s.longBreakEvery < 12,
                  onChange: (d) =>
                      set((c) => c.copyWith(longBreakEvery: (c.longBreakEvery + d).clamp(2, 12))),
                ),
                SwitchListTile(
                  title: Text(l10n.settingsAutoBreaks),
                  value: s.autoStartBreaks,
                  onChanged: (v) => set((c) => c.copyWith(autoStartBreaks: v)),
                ),
                SwitchListTile(
                  title: Text(l10n.settingsSound),
                  value: s.focusSound,
                  onChanged: (v) => set((c) => c.copyWith(focusSound: v)),
                ),
                EndToneTile(enabled: s.focusSound),
                _StepperRow(
                  label: l10n.settingsDailyFocusTarget,
                  value: fmt.minutes(s.dailyFocusTargetMinutes),
                  canDecrease: s.dailyFocusTargetMinutes > 15,
                  canIncrease: s.dailyFocusTargetMinutes < 16 * 60,
                  onChange: (d) => set(
                    (c) => c.copyWith(
                      dailyFocusTargetMinutes: (c.dailyFocusTargetMinutes + d * 15).clamp(
                        15,
                        16 * 60,
                      ),
                    ),
                  ),
                ),
                _StepperRow(
                  label: l10n.settingsWeeklyFocusTarget,
                  value: fmt.minutes(s.weeklyFocusTargetMinutes),
                  canDecrease: s.weeklyFocusTargetMinutes > 60,
                  canIncrease: s.weeklyFocusTargetMinutes < 80 * 60,
                  onChange: (d) => set(
                    (c) => c.copyWith(
                      weeklyFocusTargetMinutes: (c.weeklyFocusTargetMinutes + d * 60).clamp(
                        60,
                        80 * 60,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // ---------------- Notifications
            _NotificationsSection(settings: s, set: set),
            // ---------------- Home sections
            _DashboardSection(settings: s, set: set),
            // ---------------- Assistant
            _Section(
              title: l10n.settingsAssistant,
              children: [
                SwitchListTile(
                  secondary: const Icon(Icons.auto_awesome_rounded),
                  title: Text(l10n.settingsAssistantEnable),
                  subtitle: Text(l10n.settingsAssistantDesc),
                  value: s.assistantEnabled,
                  onChanged: (v) => set((c) => c.copyWith(assistantEnabled: v)),
                ),
                _NavRow(
                  icon: Icons.tune_rounded,
                  title: l10n.settingsAssistantSetup,
                  onTap: () => context.push(Routes.assistant),
                ),
              ],
            ),
            // ---------------- Privacy & data
            _Section(
              title: l10n.settingsPrivacy,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                    Space.md,
                    Space.md,
                    Space.md,
                    Space.xs,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.verified_user_rounded, color: context.lux.success),
                      const SizedBox(width: Space.sm),
                      Expanded(
                        child: Text(l10n.settingsPrivacyStatement, style: context.text.bodyMedium),
                      ),
                    ],
                  ),
                ),
                _NavRow(
                  key: const ValueKey('settings-backup'),
                  icon: Icons.lock_rounded,
                  title: l10n.settingsBackup,
                  subtitle: l10n.settingsBackupDesc,
                  onTap: () => createBackupFlow(context, ref),
                ),
                _NavRow(
                  key: const ValueKey('settings-restore'),
                  icon: Icons.settings_backup_restore_rounded,
                  title: l10n.settingsRestore,
                  subtitle: l10n.settingsRestoreDesc,
                  onTap: () => restoreBackupFlow(context, ref),
                ),
                _NavRow(
                  key: const ValueKey('settings-auto-backup'),
                  icon: Icons.history_rounded,
                  title: l10n.autoBackupTitle,
                  subtitle: l10n.autoBackupDesc,
                  onTap: () => showAutoBackups(context),
                ),
                _NavRow(
                  key: const ValueKey('settings-erase'),
                  icon: Icons.delete_forever_rounded,
                  title: l10n.settingsErase,
                  subtitle: l10n.settingsEraseDesc,
                  danger: true,
                  onTap: () => eraseAllDataFlow(context, ref),
                ),
              ],
            ),
            // ---------------- Trash
            _Section(
              title: l10n.settingsTrash,
              children: [
                _NavRow(
                  key: const ValueKey('settings-trash'),
                  icon: Icons.delete_outline_rounded,
                  title: l10n.moduleTrash,
                  subtitle: l10n.settingsTrashDesc,
                  onTap: () => context.push(Routes.trash),
                ),
              ],
            ),
            // ---------------- About
            _Section(
              title: l10n.settingsAbout,
              children: [
                ListTile(
                  leading: const IconOrb(
                    icon: Icons.blur_on_rounded,
                    hue: ModuleHue.focus,
                    size: 40,
                    glow: false,
                  ),
                  title: Text(l10n.appName),
                  subtitle: Text(
                    '${l10n.settingsVersion(_displayVersion)}\n${l10n.settingsAboutTagline}',
                  ),
                  isThreeLine: true,
                ),
                _NavRow(
                  key: const ValueKey('settings-error-log'),
                  icon: Icons.bug_report_outlined,
                  title: l10n.errorLogTitle,
                  onTap: () => showErrorLog(context),
                ),
                _NavRow(
                  icon: Icons.description_outlined,
                  title: l10n.settingsLicenses,
                  onTap: () => showLicensePage(
                    context: context,
                    applicationName: l10n.appName,
                    applicationVersion: _displayVersion,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

/// `1.0.0+1` → `1.0.0 (1)`.
String get _displayVersion {
  final parts = appVersion.split('+');
  return parts.length == 2 ? '${parts[0]} (${parts[1]})' : appVersion;
}
