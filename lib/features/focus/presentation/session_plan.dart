import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../settings/application/settings_providers.dart';
import '../../settings/data/settings_repository.dart';
import '../domain/focus_engine.dart';

/// Inline session plan under the timer: number of focus sessions, focus and
/// break lengths, long-break rhythm and automation, adjusted with − / +
/// (hold to repeat). Saved plans are one tap away. Changes apply to the
/// next phase that starts; a running phase keeps its length.
class SessionPlanCard extends ConsumerWidget {
  const SessionPlanCard({super.key, required this.locked});

  /// While a session runs the lengths are shown but cannot change.
  final bool locked;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final s = ref.watch(settingsProvider);
    final ctrl = ref.read(settingsProvider.notifier);
    void save(AppSettings next) => unawaited(ctrl.update((_) => next));
    final total = PomodoroConfig(
      workMinutes: s.workMinutes,
      shortBreakMinutes: s.shortBreakMinutes,
      longBreakMinutes: s.longBreakMinutes,
      longBreakEvery: s.longBreakEvery,
      rounds: s.sessionRounds,
      skipLastBreak: s.skipLastBreak,
    ).seriesLength;

    return LuxCard(
      key: const Key('sessionPlanCard'),
      padding: const EdgeInsets.fromLTRB(Space.md, Space.sm, Space.md, Space.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(child: Text(l10n.focusPlanTitle, style: context.text.titleMedium)),
              if (total != null)
                Text(
                  l10n.focusPlanTotal(context.fmt.duration(total)),
                  key: const Key('sessionPlanTotal'),
                  style: context.text.labelLarge?.copyWith(color: context.lux.ink2),
                ),
            ],
          ),
          if (s.focusPresets.isNotEmpty) ...[
            const SizedBox(height: Space.xs),
            _PresetRow(settings: s, enabled: !locked, onApply: save),
          ],
          const Divider(height: Space.lg),
          PlanStepper(
            key: const Key('planRounds'),
            label: l10n.focusPlanRounds,
            value: s.sessionRounds,
            min: 0,
            max: 99,
            enabled: !locked,
            display: (v) => v == 0 ? l10n.focusPlanUnlimited : context.fmt.number(v),
            onChanged: (v) => save(s.copyWith(sessionRounds: v)),
          ),
          PlanStepper(
            key: const Key('planWork'),
            label: l10n.focusPhaseWork,
            value: s.workMinutes,
            min: 1,
            max: 240,
            enabled: !locked,
            display: (v) => context.fmt.minutes(v),
            onChanged: (v) => save(s.copyWith(workMinutes: v)),
          ),
          PlanStepper(
            key: const Key('planShort'),
            label: l10n.focusPhaseShortBreak,
            value: s.shortBreakMinutes,
            min: 1,
            max: 60,
            enabled: !locked,
            display: (v) => context.fmt.minutes(v),
            onChanged: (v) => save(s.copyWith(shortBreakMinutes: v)),
          ),
          PlanStepper(
            key: const Key('planLong'),
            label: l10n.focusPhaseLongBreak,
            value: s.longBreakMinutes,
            min: 1,
            max: 120,
            enabled: !locked,
            display: (v) => context.fmt.minutes(v),
            onChanged: (v) => save(s.copyWith(longBreakMinutes: v)),
          ),
          PlanStepper(
            key: const Key('planEvery'),
            label: l10n.focusPlanLongEvery,
            value: s.longBreakEvery,
            min: 2,
            max: 12,
            enabled: !locked,
            display: (v) => context.fmt.number(v),
            onChanged: (v) => save(s.copyWith(longBreakEvery: v)),
          ),
          if (s.sessionRounds > 0)
            _PlanSwitch(
              key: const Key('planSkipLastBreak'),
              label: l10n.focusPlanSkipLastBreak,
              value: s.skipLastBreak,
              onChanged: (v) => save(s.copyWith(skipLastBreak: v)),
            ),
          _PlanSwitch(
            key: const Key('planAutoBreaks'),
            label: l10n.focusPlanAutoBreaks,
            value: s.autoStartBreaks,
            onChanged: (v) => save(s.copyWith(autoStartBreaks: v)),
          ),
          _PlanSwitch(
            key: const Key('planAutoFocus'),
            label: l10n.focusPlanAutoFocus,
            value: s.autoStartFocus,
            onChanged: (v) => save(s.copyWith(autoStartFocus: v)),
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton.icon(
              key: const Key('planSavePreset'),
              onPressed: locked || s.focusPresets.length >= FocusPreset.maxCount
                  ? null
                  : () => _savePreset(context, s, save),
              icon: const Icon(Icons.bookmark_add_outlined),
              label: Text(l10n.focusPlanSave),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _savePreset(
    BuildContext context,
    AppSettings s,
    void Function(AppSettings) save,
  ) async {
    final l10n = context.l10n;
    final name = await promptText(
      context,
      title: l10n.focusPlanSave,
      hint: l10n.focusPlanNameHint,
      confirmLabel: l10n.actionSave,
    );
    final trimmed = name?.trim() ?? '';
    if (trimmed.isEmpty) return;
    final preset = FocusPreset(
      name: trimmed.length > FocusPreset.maxName
          ? trimmed.substring(0, FocusPreset.maxName)
          : trimmed,
      workMinutes: s.workMinutes,
      shortBreakMinutes: s.shortBreakMinutes,
      longBreakMinutes: s.longBreakMinutes,
      longBreakEvery: s.longBreakEvery,
      rounds: s.sessionRounds,
    );
    save(s.copyWith(focusPresets: [preset, ...s.focusPresets.where((p) => p.name != preset.name)]));
    if (context.mounted) showMessage(context, l10n.focusPlanSaved);
  }
}

class _PresetRow extends StatelessWidget {
  const _PresetRow({required this.settings, required this.enabled, required this.onApply});
  final AppSettings settings;
  final bool enabled;
  final void Function(AppSettings) onApply;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SizedBox(
      height: 48,
      child: ListView(
        key: const Key('planPresets'),
        scrollDirection: Axis.horizontal,
        children: [
          for (final p in settings.focusPresets)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: Space.xs),
              child: InputChip(
                label: Text(p.name),
                selected: p.matches(settings),
                isEnabled: enabled,
                tooltip: l10n.focusPlanPresetA11y(p.name, p.workMinutes, p.shortBreakMinutes),
                onPressed: () => onApply(
                  settings.copyWith(
                    workMinutes: p.workMinutes,
                    shortBreakMinutes: p.shortBreakMinutes,
                    longBreakMinutes: p.longBreakMinutes,
                    longBreakEvery: p.longBreakEvery,
                    sessionRounds: p.rounds,
                  ),
                ),
                deleteButtonTooltipMessage: l10n.actionDelete,
                onDeleted: enabled
                    ? () => onApply(
                        settings.copyWith(
                          focusPresets: [
                            for (final x in settings.focusPresets)
                              if (x.name != p.name) x,
                          ],
                        ),
                      )
                    : null,
              ),
            ),
        ],
      ),
    );
  }
}

class _PlanSwitch extends StatelessWidget {
  const _PlanSwitch({super.key, required this.label, required this.value, required this.onChanged});
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) => SwitchListTile(
    contentPadding: EdgeInsets.zero,
    dense: true,
    title: Text(label, style: context.text.bodyLarge),
    value: value,
    onChanged: onChanged,
  );
}

/// Label, then − value + . Holding a button repeats, speeding up the longer
/// it is held. Values are clamped to [min]..[max].
class PlanStepper extends StatefulWidget {
  const PlanStepper({
    super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.display,
    required this.onChanged,
    this.enabled = true,
  });

  final String label;
  final int value;
  final int min;
  final int max;
  final String Function(int) display;
  final ValueChanged<int> onChanged;
  final bool enabled;

  @override
  State<PlanStepper> createState() => _PlanStepperState();
}

class _PlanStepperState extends State<PlanStepper> {
  Timer? _repeat;
  late int _value = widget.value;
  int _ticks = 0;

  @override
  void didUpdateWidget(PlanStepper old) {
    super.didUpdateWidget(old);
    if (_repeat == null) _value = widget.value;
  }

  @override
  void dispose() {
    _stop();
    super.dispose();
  }

  bool _can(int delta) => widget.enabled && (delta < 0 ? _value > widget.min : _value < widget.max);

  void _step(int delta) {
    if (!_can(delta)) return;
    final step = _ticks > 20 ? 5 : 1;
    setState(() => _value = (_value + delta * step).clamp(widget.min, widget.max));
    unawaited(HapticFeedback.selectionClick());
  }

  void _startRepeat(int delta) {
    _ticks = 0;
    _repeat?.cancel();
    _repeat = Timer.periodic(const Duration(milliseconds: 110), (_) {
      _ticks++;
      _step(delta);
    });
  }

  void _stop() {
    final wasRepeating = _repeat != null;
    _repeat?.cancel();
    _repeat = null;
    if (wasRepeating && _value != widget.value) widget.onChanged(_value);
  }

  Widget _button(int delta, IconData icon, String tooltip) {
    final can = _can(delta);
    return GestureDetector(
      onLongPressStart: can ? (_) => _startRepeat(delta) : null,
      onLongPressEnd: (_) => _stop(),
      onLongPressCancel: _stop,
      child: IconButton(
        tooltip: tooltip,
        onPressed: can
            ? () {
                _step(delta);
                widget.onChanged(_value);
              }
            : null,
        icon: Icon(icon),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final shown = widget.display(_value);
    return Semantics(
      label: widget.label,
      value: shown,
      child: Row(
        children: [
          Expanded(child: Text(widget.label, style: context.text.bodyLarge, maxLines: 2)),
          _button(-1, Icons.remove_rounded, l10n.focusPlanDecrease(widget.label)),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 72),
            child: Text(
              shown,
              textAlign: TextAlign.center,
              style: context.text.titleMedium?.copyWith(
                fontFeatures: const [FontFeature.tabularFigures()],
              ),
            ),
          ),
          _button(1, Icons.add_rounded, l10n.focusPlanIncrease(widget.label)),
        ],
      ),
    );
  }
}
