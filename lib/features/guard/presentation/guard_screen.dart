import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/platform/distraction_guard.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/guard_controller.dart';
import '../domain/guard_config.dart';
import 'guard_apps_sheet.dart';

final _serviceOnProvider = FutureProvider.autoDispose<bool>(
  (ref) => ref.read(distractionGuardProvider).isEnabled(),
);

final _weekProvider = FutureProvider.autoDispose<GuardWeek>(
  (ref) => ref.read(distractionGuardProvider).week(),
);

/// Distraction guard settings: on/off, gentle or strict, which apps, Shorts and
/// Reels, and the Time Guard schedule.
class GuardScreen extends ConsumerStatefulWidget {
  const GuardScreen({super.key});

  @override
  ConsumerState<GuardScreen> createState() => _GuardScreenState();
}

class _GuardScreenState extends ConsumerState<GuardScreen> {
  late final AppLifecycleListener _life;

  @override
  void initState() {
    super.initState();
    // Back from Accessibility settings: show whether the switch is now on.
    _life = AppLifecycleListener(
      onResume: () => ref
        ..invalidate(_serviceOnProvider)
        ..invalidate(_weekProvider),
    );
  }

  @override
  void dispose() {
    _life.dispose();
    super.dispose();
  }

  Future<void> _edit(GuardConfig Function(GuardConfig) f) =>
      ref.read(guardProvider.notifier).change(f);

  /// Google Play's prominent disclosure: say what is used and why, then open settings.
  Future<void> _askAccess() async {
    final l10n = context.l10n;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.shield_moon_outlined),
        title: Text(l10n.guardDisclosureTitle),
        content: SingleChildScrollView(child: Text(l10n.guardDisclosureBody)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l10n.actionCancel)),
          FilledButton(
            key: const Key('guardAgree'),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l10n.guardAgree),
          ),
        ],
      ),
    );
    if (ok ?? false) await ref.read(distractionGuardProvider).openSettings();
  }

  Future<void> _pickTime(int current, void Function(int) set) async {
    final t = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: current ~/ 60, minute: current % 60),
    );
    if (t != null) set(t.hour * 60 + t.minute);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final c = ref.watch(guardProvider).value ?? const GuardConfig();
    final serviceOn = ref.watch(_serviceOnProvider).value ?? true;
    final missing = c.enabled && !serviceOn;
    final error = Theme.of(context).colorScheme.error;
    String clock(int m) => fmt.time(DateTime(2024, 1, 1, m ~/ 60, m % 60));

    return ModuleScaffold(
      title: l10n.guardTitle,
      hue: ModuleHue.focus,
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, Space.xxl),
          sliver: SliverList.list(
            children: [
              LuxCard(
                padding: const EdgeInsets.symmetric(vertical: Space.xs),
                child: Column(
                  children: [
                    SwitchListTile(
                      key: const Key('guardSwitch'),
                      secondary: const IconOrb(
                        icon: Icons.shield_moon_outlined,
                        hue: ModuleHue.focus,
                        size: 40,
                      ),
                      title: Text(l10n.guardSwitch),
                      subtitle: Text(
                        missing ? l10n.guardNeedsAccess : l10n.guardSwitchHint,
                        style: missing ? TextStyle(color: error) : null,
                      ),
                      value: c.enabled,
                      onChanged: (v) async {
                        await _edit((x) => x.copyWith(enabled: v));
                        if (v && !await ref.read(distractionGuardProvider).isEnabled()) {
                          await _askAccess();
                        }
                      },
                    ),
                    if (missing)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(Space.md, 0, Space.md, Space.sm),
                        child: Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: FilledButton.tonal(
                            key: const Key('guardOpenSettings'),
                            onPressed: _askAccess,
                            child: Text(l10n.guardAgree),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              if (ref.watch(_weekProvider).value case final w? when w.paused > 0) ...[
                const SizedBox(height: Space.md),
                LuxCard(
                  key: const Key('guardWeek'),
                  child: Row(
                    children: [
                      const IconOrb(icon: Icons.insights_rounded, hue: ModuleHue.habits, size: 40),
                      const SizedBox(width: Space.sm),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(l10n.guardWeekTitle, style: context.text.labelMedium),
                            Text(
                              '${l10n.guardWeekPaused(w.paused)} · ${l10n.guardWeekReturned(w.returned)}',
                              style: context.text.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              const SizedBox(height: Space.md),
              LuxCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SegmentedButton<bool>(
                      key: const Key('guardMode'),
                      segments: [
                        ButtonSegment(
                          value: false,
                          icon: const Icon(Icons.air_rounded),
                          label: Text(l10n.guardModeGentle),
                        ),
                        ButtonSegment(
                          value: true,
                          icon: const Icon(Icons.lock_outline_rounded),
                          label: Text(l10n.guardModeStrict),
                        ),
                      ],
                      selected: {c.strict},
                      onSelectionChanged: (s) =>
                          unawaited(_edit((x) => x.copyWith(strict: s.first))),
                    ),
                    const SizedBox(height: Space.sm),
                    Text(
                      c.strict ? l10n.guardStrictHint : l10n.guardGentleHint,
                      style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Space.md),
              LuxCard(
                padding: const EdgeInsets.symmetric(vertical: Space.xs),
                child: Column(
                  children: [
                    ListTile(
                      key: const Key('guardApps'),
                      leading: const Icon(Icons.apps_rounded),
                      title: Text(c.allowlist ? l10n.guardAppsAllowed : l10n.guardApps),
                      subtitle: Text(l10n.guardAppsCount(c.apps.length)),
                      trailing: const Icon(Icons.chevron_right_rounded),
                      onTap: () => showGuardApps(context),
                    ),
                    SwitchListTile(
                      key: const Key('guardAllowlist'),
                      secondary: const Icon(Icons.verified_user_outlined),
                      title: Text(l10n.guardAllowlist),
                      subtitle: Text(l10n.guardAllowlistHint),
                      value: c.allowlist,
                      onChanged: (v) => unawaited(_edit((x) => x.copyWith(allowlist: v))),
                    ),
                    SwitchListTile(
                      key: const Key('guardShorts'),
                      secondary: const Icon(Icons.video_library_outlined),
                      title: Text(l10n.guardShorts),
                      subtitle: Text(l10n.guardShortsHint),
                      value: c.shorts,
                      onChanged: (v) => unawaited(_edit((x) => x.copyWith(shorts: v))),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Space.md),
              LuxCard(
                padding: const EdgeInsets.symmetric(vertical: Space.xs),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SwitchListTile(
                      key: const Key('guardSchedule'),
                      secondary: const Icon(Icons.schedule_rounded),
                      title: Text(l10n.guardSchedule),
                      subtitle: Text(l10n.guardScheduleHint),
                      value: c.scheduleOn,
                      onChanged: (v) => unawaited(_edit((x) => x.copyWith(scheduleOn: v))),
                    ),
                    if (c.scheduleOn) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: Space.md),
                        child: Wrap(
                          spacing: Space.xs,
                          runSpacing: Space.xs,
                          children: [
                            for (var d = 1; d <= 7; d++)
                              FilterChip(
                                key: Key('guardDay_$d'),
                                label: Text(fmt.weekdayShort(DateTime(2024, 1, d))),
                                selected: c.onDay(d),
                                onSelected: (on) => unawaited(
                                  _edit((x) => x.copyWith(days: x.days ^ (1 << (d - 1)))),
                                ),
                              ),
                          ],
                        ),
                      ),
                      ListTile(
                        key: const Key('guardFrom'),
                        leading: const Icon(Icons.wb_twilight_rounded),
                        title: Text(l10n.guardFrom),
                        trailing: Text(clock(c.start), style: context.text.titleMedium),
                        onTap: () => _pickTime(
                          c.start,
                          (m) => unawaited(_edit((x) => x.copyWith(start: m))),
                        ),
                      ),
                      ListTile(
                        key: const Key('guardTo'),
                        leading: const Icon(Icons.nights_stay_outlined),
                        title: Text(l10n.guardTo),
                        trailing: Text(clock(c.end), style: context.text.titleMedium),
                        onTap: () =>
                            _pickTime(c.end, (m) => unawaited(_edit((x) => x.copyWith(end: m)))),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: Space.lg),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.lock_outline_rounded, size: 18, color: context.lux.ink3),
                  const SizedBox(width: Space.xs),
                  Expanded(
                    child: Text(
                      l10n.guardPrivacy,
                      style: context.text.bodySmall?.copyWith(color: context.lux.ink3),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
