import 'dart:math' as math;
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/landscape.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/theme/deep_focus_visuals.dart';
import '../../../core/widgets/deep_focus_glass.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../../shared/widgets/task_picker.dart';
import '../../notifications/application/notification_providers.dart';
import '../../notifications/data/notification_service.dart';
import '../../settings/application/settings_providers.dart';
import '../../sounds/application/sounds_controller.dart';
import '../../tasks/application/tasks_providers.dart';
import '../application/focus_controller.dart';
import '../application/focus_draft.dart';
import '../application/focus_prefs.dart';
import '../application/focus_providers.dart';
import '../domain/focus_engine.dart';
import '../domain/focus_timer_state.dart';
import 'focus_screen/end_tone_strip.dart';
import 'focus_time_sheet.dart';
import 'session_plan.dart';

part 'focus_screen/focus_screen_state.dart';
part 'focus_screen/countdown_choices.dart';
part 'focus_screen/focus_controls.dart';
part 'focus_screen/linked_task.dart';
part 'focus_screen/target_rings.dart';
part 'focus_screen/timer_style.dart';

/// Lengths offered for the plain timer mode, in minutes.
const focusCountdownChoices = [5, 10, 15, 25, 45, 60, 90];

String focusModeLabel(AppLocalizations l10n, FocusMode m) => switch (m) {
  FocusMode.pomodoro => l10n.focusModePomodoro,
  FocusMode.countdown => l10n.focusModeCountdown,
  FocusMode.countUp => l10n.focusModeCountUp,
  FocusMode.open => l10n.focusModeOpen,
};

String focusPhaseLabel(AppLocalizations l10n, FocusPhase p) => switch (p) {
  FocusPhase.work => l10n.focusPhaseWork,
  FocusPhase.shortBreak => l10n.focusPhaseShortBreak,
  FocusPhase.longBreak => l10n.focusPhaseLongBreak,
};

/// 1-based position within the pomodoro cycle shown as "Cycle x of n".
int focusCyclePosition(FocusPhase phase, int completedCycles, int every) {
  final r = completedCycles % every;
  if (phase == FocusPhase.work) return r + 1;
  return r == 0 ? every : r;
}

enum _StopChoice { save, discard }

class FocusScreen extends ConsumerStatefulWidget {
  const FocusScreen({super.key, this.initialTaskId});

  /// Preselects this task as the linked task when no session is running.
  final String? initialTaskId;

  @override
  ConsumerState<FocusScreen> createState() => _FocusScreenState();
}
