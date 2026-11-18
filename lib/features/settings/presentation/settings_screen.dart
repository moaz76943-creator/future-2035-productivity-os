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
import 'language_options.dart';

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

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(title: title),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: LuxCard(
            padding: const EdgeInsets.symmetric(vertical: Space.xs),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var i = 0; i < children.length; i++) ...[
                  if (i > 0) Divider(height: 1, indent: Space.md, endIndent: Space.md),
                  children[i],
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _NavRow extends StatelessWidget {
  const _NavRow({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
    this.danger = false,
  });
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final bool danger;

  @override
  Widget build(BuildContext context) {
    final color = danger ? Theme.of(context).colorScheme.error : null;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(color: color)),
      subtitle: subtitle == null ? null : Text(subtitle!),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: onTap,
    );
  }
}

class _StepperRow extends StatelessWidget {
  const _StepperRow({
    required this.label,
    required this.value,
    required this.onChange,
    required this.canDecrease,
    required this.canIncrease,
  });
  final String label;
  final String value;
  final ValueChanged<int> onChange;
  final bool canDecrease;
  final bool canIncrease;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.xxs, Space.xs, Space.xxs),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: context.text.bodyLarge),
                Semantics(
                  liveRegion: true,
                  child: Text(
                    value,
                    style: context.text.titleSmall?.copyWith(color: ModuleHue.focus.a),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            tooltip: l10n.settingsDecrease(label),
            onPressed: canDecrease ? () => onChange(-1) : null,
            icon: const Icon(Icons.remove_circle_outline_rounded),
          ),
          IconButton(
            tooltip: l10n.settingsIncrease(label),
            onPressed: canIncrease ? () => onChange(1) : null,
            icon: const Icon(Icons.add_circle_outline_rounded),
          ),
        ],
      ),
    );
  }
}

class _NotificationsSection extends ConsumerWidget {
  const _NotificationsSection({required this.settings, required this.set});
  final AppSettings settings;
  final void Function(AppSettings Function(AppSettings)) set;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final s = settings;
    final blocked = ref.watch(notificationsBlockedProvider);
    String at(int minute) => context.fmt.time(DateTime(2026, 1, 1, minute ~/ 60, minute % 60));
    Future<void> pick(int current, AppSettings Function(AppSettings, int) apply) async {
      final t = await pickTime(
        context,
        initial: TimeOfDay(hour: current ~/ 60, minute: current % 60),
      );
      if (t != null) set((c) => apply(c, t.hour * 60 + t.minute));
    }

    return _Section(
      title: l10n.settingsNotifications,
      children: [
        SwitchListTile(
          secondary: const Icon(Icons.notifications_active_rounded),
          title: Text(l10n.settingsNotificationsEnable),
          subtitle: Text(l10n.settingsNotificationsHint),
          value: s.notificationsEnabled,
          onChanged: (v) => set((c) => c.copyWith(notificationsEnabled: v)),
        ),
        if (blocked && s.notificationsEnabled)
          Padding(
            padding: const EdgeInsets.all(Space.md),
            child: Row(
              children: [
                Icon(Icons.warning_amber_rounded, color: context.lux.warning),
                const SizedBox(width: Space.sm),
                Expanded(child: Text(l10n.settingsPermissionDenied)),
              ],
            ),
          ),
        SwitchListTile(
          secondary: const Icon(Icons.bedtime_rounded),
          title: Text(l10n.settingsQuietHours),
          subtitle: Text(l10n.settingsQuietHoursDesc(at(s.quietStartMinute), at(s.quietEndMinute))),
          value: s.quietHoursEnabled,
          onChanged: s.notificationsEnabled
              ? (v) => set((c) => c.copyWith(quietHoursEnabled: v))
              : null,
        ),
        if (s.quietHoursEnabled) ...[
          ListTile(
            title: Text(l10n.settingsQuietStart),
            trailing: Text(at(s.quietStartMinute), style: context.text.titleSmall),
            onTap: () => pick(s.quietStartMinute, (c, m) => c.copyWith(quietStartMinute: m)),
          ),
          ListTile(
            title: Text(l10n.settingsQuietEnd),
            trailing: Text(at(s.quietEndMinute), style: context.text.titleSmall),
            onTap: () => pick(s.quietEndMinute, (c, m) => c.copyWith(quietEndMinute: m)),
          ),
        ],
        ListTile(
          leading: const Icon(Icons.style_rounded),
          title: Text(l10n.settingsReviewReminder),
          trailing: Text(at(s.reviewReminderMinute), style: context.text.titleSmall),
          enabled: s.notificationsEnabled,
          onTap: () => pick(s.reviewReminderMinute, (c, m) => c.copyWith(reviewReminderMinute: m)),
        ),
      ],
    );
  }
}

class _DashboardSection extends StatelessWidget {
  const _DashboardSection({required this.settings, required this.set});
  final AppSettings settings;
  final void Function(AppSettings Function(AppSettings)) set;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const known = AppSettings.defaultDashboardSections;
    final enabled = [
      for (final id in settings.dashboardSections)
        if (known.contains(id)) id,
    ];
    final disabled = [
      for (final id in known)
        if (!enabled.contains(id)) id,
    ];

    Widget row(String id, {required bool on, int? index}) {
      final label = dashboardSectionLabel(l10n, id);
      return Material(
        key: ValueKey('dash-$id'),
        type: MaterialType.transparency,
        child: ListTile(
          contentPadding: const EdgeInsetsDirectional.only(start: Space.xs, end: Space.md),
          leading: index == null
              ? const SizedBox(width: kMinTouchTarget)
              : ReorderableDragStartListener(
                  index: index,
                  child: Semantics(
                    label: l10n.settingsDashboardReorder(label),
                    child: const SizedBox.square(
                      dimension: kMinTouchTarget,
                      child: Icon(Icons.drag_indicator_rounded),
                    ),
                  ),
                ),
          title: Text(label, maxLines: 2, overflow: TextOverflow.ellipsis),
          // Separate node from the title: give the switch its own label for TalkBack.
          trailing: Semantics(
            label: label,
            child: Switch(
              value: on,
              // Keep at least one section so Home is never blank.
              onChanged: on && enabled.length <= 1
                  ? null
                  : (v) => set(
                      (c) => c.copyWith(
                        dashboardSections: v
                            ? [...enabled, id]
                            : [
                                for (final e in enabled)
                                  if (e != id) e,
                              ],
                      ),
                    ),
            ),
          ),
        ),
      );
    }

    return _Section(
      title: l10n.settingsDashboard,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.md, 0),
          child: Text(
            l10n.settingsDashboardHint,
            style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
          ),
        ),
        ReorderableListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          buildDefaultDragHandles: false,
          onReorderItem: (from, to) {
            final next = [...enabled];
            final item = next.removeAt(from);
            next.insert(to, item);
            set((c) => c.copyWith(dashboardSections: next));
          },
          children: [for (var i = 0; i < enabled.length; i++) row(enabled[i], on: true, index: i)],
        ),
        for (final id in disabled) row(id, on: false),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: TextButton(
            onPressed: () =>
                set((c) => c.copyWith(dashboardSections: AppSettings.defaultDashboardSections)),
            child: Text(l10n.settingsDashboardReset),
          ),
        ),
      ],
    );
  }
}

class _LanguageSheet extends StatelessWidget {
  const _LanguageSheet();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(Space.lg, 0, Space.lg, Space.xs),
              child: Semantics(
                header: true,
                child: Text(l10n.settingsLanguage, style: context.text.titleLarge),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(Space.lg, 0, Space.lg, Space.sm),
              child: Text(
                l10n.settingsLanguageHint,
                style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
              ),
            ),
            LanguageOptionList(onSelected: () => Navigator.pop(context)),
            const SizedBox(height: Space.md),
          ],
        ),
      ),
    );
  }
}
