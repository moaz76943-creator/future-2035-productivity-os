import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../settings/application/settings_providers.dart';
import '../../settings/presentation/end_tone_sheet.dart';
import '../application/focus_prefs.dart';
import '../domain/focus_timer_state.dart';

/// Ready-made sessions for different kinds of work: (focus, break, rounds).
enum FocusPreset {
  study(25, 5, 4, Icons.school_outlined),
  deep(50, 10, 3, Icons.psychology_outlined),
  quick(15, 3, 4, Icons.bolt_rounded),
  reading(45, 10, 2, Icons.menu_book_outlined),
  workout(3, 1, 8, Icons.directions_run_rounded);

  const FocusPreset(this.work, this.rest, this.rounds, this.icon);
  final int work, rest, rounds;
  final IconData icon;
}

String focusPresetName(BuildContext context, FocusPreset p) {
  final l10n = context.l10n;
  return switch (p) {
    FocusPreset.study => l10n.focusPresetStudy,
    FocusPreset.deep => l10n.focusPresetDeep,
    FocusPreset.quick => l10n.focusPresetQuick,
    FocusPreset.reading => l10n.focusPresetReading,
    FocusPreset.workout => l10n.focusPresetWorkout,
  };
}

/// Opened by tapping the timer: the session's length, its kind and the end sound, in one place.
Future<void> showFocusTimeSheet(
  BuildContext context, {
  required FocusMode mode,
  required int countdownMinutes,
  required ValueChanged<FocusMode> onMode,
  required ValueChanged<int> onCountdown,
}) => showModalBottomSheet<void>(
  context: context,
  showDragHandle: true,
  useSafeArea: true,
  isScrollControlled: true,
  builder: (_) => _FocusTimeSheet(
    mode: mode,
    countdownMinutes: countdownMinutes,
    onMode: onMode,
    onCountdown: onCountdown,
  ),
);

class _FocusTimeSheet extends ConsumerStatefulWidget {
  const _FocusTimeSheet({
    required this.mode,
    required this.countdownMinutes,
    required this.onMode,
    required this.onCountdown,
  });
  final FocusMode mode;
  final int countdownMinutes;
  final ValueChanged<FocusMode> onMode;
  final ValueChanged<int> onCountdown;

  @override
  ConsumerState<_FocusTimeSheet> createState() => _FocusTimeSheetState();
}

class _FocusTimeSheetState extends ConsumerState<_FocusTimeSheet> {
  late FocusMode _mode = widget.mode;
  late int _countdown = widget.countdownMinutes;

  void _apply(FocusPreset p) {
    unawaited(
      ref
          .read(settingsProvider.notifier)
          .update(
            (s) =>
                s.copyWith(workMinutes: p.work, shortBreakMinutes: p.rest, sessionRounds: p.rounds),
          ),
    );
    setState(() => _mode = FocusMode.pomodoro);
    widget.onMode(FocusMode.pomodoro);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final s = ref.watch(settingsProvider);
    final ctrl = ref.read(settingsProvider.notifier);
    final prefs = ref.watch(focusPrefsProvider).value ?? const FocusPrefs();
    final pomodoro = _mode == FocusMode.pomodoro;
    final countdown = _mode == FocusMode.countdown;
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.focusAdjustTitle, style: context.text.titleLarge),
          const SizedBox(height: Space.sm),
          Text(l10n.focusPresetsTitle, style: context.text.labelLarge),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final p in FocusPreset.values)
                ActionChip(
                  key: Key('focusPreset_${p.name}'),
                  avatar: Icon(p.icon, size: 18),
                  label: Text(
                    '${focusPresetName(context, p)} · ${fmt.number(p.work)}/${fmt.number(p.rest)}',
                  ),
                  onPressed: () => _apply(p),
                ),
            ],
          ),
          const SizedBox(height: Space.md),
          if (pomodoro || countdown)
            _Slide(
              key: const Key('focusMinutesSlider'),
              label: l10n.focusAdjustMinutes,
              value: pomodoro ? s.workMinutes : _countdown,
              min: 1,
              max: 180,
              display: (v) => l10n.focusMinutesShort(fmt.number(v)),
              onChanged: (v) {
                if (pomodoro) {
                  unawaited(ctrl.update((c) => c.copyWith(workMinutes: v)));
                } else {
                  setState(() => _countdown = v);
                  widget.onCountdown(v);
                }
              },
            ),
          if (pomodoro) ...[
            _Slide(
              key: const Key('focusBreakSlider'),
              label: l10n.focusAdjustBreak,
              value: s.shortBreakMinutes,
              min: 1,
              max: 30,
              display: (v) => l10n.focusMinutesShort(fmt.number(v)),
              onChanged: (v) => unawaited(ctrl.update((c) => c.copyWith(shortBreakMinutes: v))),
            ),
            _Slide(
              key: const Key('focusRoundsSlider'),
              label: l10n.focusAdjustRounds,
              value: s.sessionRounds,
              min: 0,
              max: 12,
              display: (v) => v == 0 ? l10n.focusRoundsOpen : fmt.number(v),
              onChanged: (v) => unawaited(ctrl.update((c) => c.copyWith(sessionRounds: v))),
            ),
          ],
          const Divider(height: Space.lg),
          SwitchListTile(
            key: const Key('focusCalmPacing'),
            contentPadding: EdgeInsets.zero,
            secondary: const Icon(Icons.spa_outlined),
            title: Text(l10n.focusCalmPacing),
            subtitle: Text(l10n.focusCalmPacingHint),
            value: prefs.calmPacing,
            onChanged: (v) => unawaited(
              ref.read(focusPrefsProvider.notifier).change((p) => p.copyWith(calmPacing: v)),
            ),
          ),
          SwitchListTile(
            key: const Key('focusFlipSwitch'),
            contentPadding: EdgeInsets.zero,
            secondary: const Icon(Icons.screen_rotation_alt_rounded),
            title: Text(l10n.focusFlipToFocus),
            subtitle: Text(l10n.focusFlipToFocusHint),
            value: prefs.flipToFocus,
            onChanged: (v) => unawaited(
              ref.read(focusPrefsProvider.notifier).change((p) => p.copyWith(flipToFocus: v)),
            ),
          ),
          SwitchListTile(
            key: const Key('focusBlackSwitch'),
            contentPadding: EdgeInsets.zero,
            secondary: const Icon(Icons.dark_mode_outlined),
            title: Text(l10n.focusImmersiveBlack),
            value: prefs.immersiveBlack,
            onChanged: (v) => unawaited(
              ref.read(focusPrefsProvider.notifier).change((p) => p.copyWith(immersiveBlack: v)),
            ),
          ),
          if (!prefs.immersiveBlack)
            SizedBox(
              height: 64,
              child: ListView(
                key: const Key('immersiveScenes'),
                scrollDirection: Axis.horizontal,
                children: [
                  for (final n in const [
                    'night',
                    'rain',
                    'forest',
                    'ocean',
                    'river',
                    'fire',
                    'storm',
                    'forestrain',
                  ])
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: Space.xs),
                      child: Semantics(
                        button: true,
                        selected: prefs.immersiveScene == n,
                        label: l10n.focusImmersive,
                        child: InkWell(
                          key: Key('scene_$n'),
                          borderRadius: BorderRadius.circular(Radii.md),
                          onTap: () => unawaited(
                            ref
                                .read(focusPrefsProvider.notifier)
                                .change((p) => p.copyWith(immersiveScene: n)),
                          ),
                          child: Container(
                            width: 64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Radii.md),
                              border: Border.all(
                                width: 2,
                                color: prefs.immersiveScene == n
                                    ? ModuleHue.focus.a
                                    : Colors.transparent,
                              ),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/sound_art/$n.webp',
                              fit: BoxFit.cover,
                              cacheWidth: 160,
                              excludeFromSemantics: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          const EndToneTile(enabled: true),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide({
    super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.display,
    required this.onChanged,
  });
  final String label;
  final int value, min, max;
  final String Function(int) display;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final v = value.clamp(min, max);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: Text(label, style: context.text.titleSmall)),
            Text(
              display(v),
              style: context.text.titleMedium?.copyWith(
                color: ModuleHue.focus.a,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              tooltip: context.l10n.focusPlanDecrease(label),
              icon: const Icon(Icons.remove_rounded),
              onPressed: v > min ? () => onChanged(v - 1) : null,
            ),
            Expanded(
              child: Slider(
                value: v.toDouble(),
                min: min.toDouble(),
                max: max.toDouble(),
                divisions: max - min,
                label: display(v),
                activeColor: ModuleHue.focus.a,
                onChanged: (d) {
                  if (d.round() != v) onChanged(d.round());
                },
              ),
            ),
            IconButton(
              tooltip: context.l10n.focusPlanIncrease(label),
              icon: const Icon(Icons.add_rounded),
              onPressed: v < max ? () => onChanged(v + 1) : null,
            ),
          ],
        ),
      ],
    );
  }
}
