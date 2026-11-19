part of '../settings_screen.dart';

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
                  if (i > 0) const Divider(height: 1, indent: Space.md, endIndent: Space.md),
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
        SwitchListTile(
          key: const Key('settings-review-reminder'),
          secondary: const Icon(Icons.style_rounded),
          title: Text(l10n.settingsReviewReminder),
          subtitle: Text(l10n.settingsReviewReminderHint),
          value: s.reviewReminderOn,
          onChanged: s.notificationsEnabled
              ? (v) => set((c) => c.copyWith(reviewReminderOn: v))
              : null,
        ),
        if (s.reviewReminderOn)
          ListTile(
            key: const Key('settings-review-time'),
            title: Text(l10n.settingsReviewTime),
            trailing: Text(at(s.reviewReminderMinute), style: context.text.titleSmall),
            enabled: s.notificationsEnabled,
            onTap: () =>
                pick(s.reviewReminderMinute, (c, m) => c.copyWith(reviewReminderMinute: m)),
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
