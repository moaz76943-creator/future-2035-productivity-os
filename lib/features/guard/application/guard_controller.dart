import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/platform/distraction_guard.dart';
import '../../../core/providers/core_providers.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../focus/application/focus_controller.dart';
import '../../focus/domain/focus_timer_state.dart';
import '../../notifications/data/notification_service.dart';
import '../../settings/application/settings_providers.dart';
import '../domain/guard_config.dart';

class GuardNotifier extends AsyncNotifier<GuardConfig> {
  static const key = 'guard.config';

  @override
  Future<GuardConfig> build() async {
    final raw = await ref.read(databaseProvider).readValue(key);
    if (raw == null) return const GuardConfig();
    try {
      return GuardConfig.fromJson((jsonDecode(raw) as Map).cast<String, Object?>());
    } on Object {
      return const GuardConfig();
    }
  }

  Future<void> change(GuardConfig Function(GuardConfig) edit) async {
    final next = edit(state.value ?? const GuardConfig());
    state = AsyncData(next);
    await ref.read(databaseProvider).writeValue(key, jsonEncode(next.toJson()));
  }
}

final guardProvider = AsyncNotifierProvider<GuardNotifier, GuardConfig>(GuardNotifier.new);

/// What the phone's pause screen shows, in the app language.
Map<String, String> guardStrings(AppLocalizations l10n) => {
  'breathe': l10n.guardBreathe,
  'question': l10n.guardQuestion,
  'back': l10n.guardBackToFocus,
  'open': l10n.guardOpenFive,
  'strictBody': l10n.guardStrictBody,
  'shortsBlocked': l10n.guardShortsClosed,
};

/// Keeps the Android guard in step: its rules and texts whenever they or the
/// language change, and "focus time" while a work phase runs (open-ended
/// sessions are guarded for up to 12 hours; a pause or a break ends it).
final guardLinkProvider = Provider<void>((ref) {
  final guard = ref.read(distractionGuardProvider);

  void push() {
    final config = ref.read(guardProvider).value;
    if (config == null) return;
    final l10n = notificationL10n(ref.read(settingsProvider));
    unawaited(guard.setConfig(jsonEncode({...config.toJson(), 'strings': guardStrings(l10n)})));
  }

  ref.listen(guardProvider, (_, _) => push(), fireImmediately: true);
  ref.listen(settingsProvider.select((s) => s.localeTag), (_, _) => push());
  ref.listen(
    focusControllerProvider.select((s) {
      final t = s.active;
      final working = t != null && t.phase == FocusPhase.work && t.status == FocusStatus.running;
      return working ? (t.sessionId, t.completionMomentUtc()) : null;
    }),
    (_, now) {
      if (now == null) {
        unawaited(guard.session(null));
      } else {
        final until = now.$2 ?? ref.read(clockProvider).nowUtc().add(const Duration(hours: 12));
        unawaited(guard.session(until));
      }
    },
    fireImmediately: true,
  );
});
