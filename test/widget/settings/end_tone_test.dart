import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/speech/audio_service.dart';
import 'package:future_os/features/focus/application/focus_controller.dart';
import 'package:future_os/features/focus/domain/end_tone.dart';
import 'package:future_os/features/focus/domain/focus_timer_state.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/features/settings/presentation/settings_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../widget_helpers.dart';
import 'settings_test_utils.dart';

class _Player implements AudioClipPlayer {
  final tones = <String>[];
  @override
  Future<bool> play(List<int> bytes, {String extension = 'm4a'}) async => true;
  @override
  Future<bool> playTone(String resource) async {
    tones.add(resource);
    return true;
  }

  @override
  Future<void> stop() async {}
}

void main() {
  testWidgets('choose the timer end sound: saved and previewed', (tester) async {
    final player = _Player();
    final env = await pumpScreen(
      tester,
      const SettingsScreen(),
      overrides: [audioClipPlayerProvider.overrideWithValue(player)],
    );
    await settle(tester);
    await scrollTo(tester, find.byKey(const Key('focusEndTone')));
    await tester.tap(find.byKey(const Key('focusEndTone')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('endTone_bird')));
    await settle(tester);
    expect(player.tones, ['alarm_bird']);
    expect(containerOf(tester, SettingsScreen).read(settingsProvider).focusEndTone, 'bird');
    await tester.tap(find.byKey(const Key('endTone_system')));
    await settle(tester);
    expect(player.tones, ['alarm_bird']); // the phone's sound has no preview
    await tester.tap(find.byKey(const Key('endToneDone')));
    await settle(tester);
    expect((await SettingsRepository(env.db).load()).focusEndTone, 'system');
    await env.dispose();
  });

  test('the focus alert carries the chosen sound; unknown names fall back', () {
    final s = FocusTimerState(
      sessionId: 's',
      mode: FocusMode.pomodoro,
      phase: FocusPhase.work,
      status: FocusStatus.running,
      startedAtUtc: DateTime.utc(2026),
      accumulatedMs: 0,
      segmentStartedAtUtc: DateTime.utc(2026),
      plannedSeconds: 1500,
    );
    final end = DateTime.utc(2026, 1, 1, 0, 25);
    expect(
      focusEndNotification(s, end, const AppSettings(focusEndTone: 'wood')).tone,
      'alarm_wood',
    );
    expect(focusEndNotification(s, end, const AppSettings(focusEndTone: 'system')).tone, isNull);
    expect(EndTone.byName('music'), EndTone.gentle);
    final a = focusEndNotification(s, end, const AppSettings(focusEndTone: 'bird'));
    final b = focusEndNotification(s, end, const AppSettings(focusEndTone: 'stream'));
    expect(a.signature == b.signature, isFalse, reason: 'a new sound reschedules the alert');
  });
}
