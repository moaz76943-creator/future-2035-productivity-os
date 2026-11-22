import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../settings/application/settings_providers.dart';
import '../data/dnd_platform.dart';
import '../domain/focus_timer_state.dart';
import 'focus_controller.dart';

final dndPlatformProvider = Provider<DndPlatform>((ref) => DndPlatform.create());

/// "Silence the phone while focusing": Do Not Disturb (priority only) for the
/// length of a running work phase, then the previous mode again. Breaks,
/// pauses and stops restore it. Nothing happens without the user's access.
final focusDndLinkProvider = Provider<void>((ref) {
  var on = false;

  ref.listen(
    focusControllerProvider.select((s) {
      final t = s.active;
      final working = t != null && t.phase == FocusPhase.work && t.status == FocusStatus.running;
      return working ? (t.sessionId, t.completionMomentUtc()) : null;
    }),
    (was, now) {
      final dnd = ref.read(dndPlatformProvider);
      if (now != null && ref.read(settingsProvider).focusDnd) {
        // A safety margin: the alarm restores the mode if the app sleeps.
        final until = now.$2?.add(const Duration(minutes: 1));
        on = true;
        unawaited(dnd.enable(until));
      } else if (now == null && on) {
        on = false;
        unawaited(dnd.restore());
      }
    },
  );
});
