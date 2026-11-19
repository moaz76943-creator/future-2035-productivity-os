import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/flashcards/application/flashcards_providers.dart';
import '../features/focus/application/focus_controller.dart';
import '../features/focus/domain/focus_timer_state.dart';
import '../features/notifications/data/notification_service.dart';
import '../features/settings/application/settings_providers.dart';
import 'localization/app_format.dart';
import 'routing/routes.dart';

/// What the home screen widget shows, already in the app language.
class HomeWidgetData {
  const HomeWidgetData({
    required this.title,
    required this.idle,
    required this.running,
    required this.cards,
    this.endsAt,
  });
  final String title;
  final String idle;
  final String running;
  final String cards;

  /// End of the running work phase; null when no countdown is shown.
  final DateTime? endsAt;

  Map<String, Object?> toMap() => {
    'title': title,
    'idle': idle,
    'running': running,
    'cards': cards,
    'endsAt': endsAt?.millisecondsSinceEpoch ?? 0,
    'focusRoute': Routes.focus,
    'cardsRoute': Routes.flashcards,
  };
}

abstract class HomeWidgetPlatform {
  Future<void> update(HomeWidgetData data);
}

class ChannelHomeWidget implements HomeWidgetPlatform {
  static const _c = MethodChannel('future_os/home_widget');
  @override
  Future<void> update(HomeWidgetData data) async {
    try {
      await _c.invokeMethod<void>('update', data.toMap());
    } on Object {
      // No widget support: nothing to update.
    }
  }
}

class MemoryHomeWidget implements HomeWidgetPlatform {
  HomeWidgetData? last;
  @override
  Future<void> update(HomeWidgetData data) async => last = data;
}

final homeWidgetPlatformProvider = Provider<HomeWidgetPlatform>(
  (ref) => Platform.isAndroid ? ChannelHomeWidget() : MemoryHomeWidget(),
);

/// Keeps the widget in step with the focus timer and the cards due.
final homeWidgetLinkProvider = Provider<void>((ref) {
  void push() {
    final settings = ref.read(settingsProvider);
    final l10n = notificationL10n(settings);
    final fmt = AppFormat(notificationLanguage(settings), l10n);
    final a = ref.read(focusControllerProvider).active;
    final working = a != null && a.phase == FocusPhase.work && a.status == FocusStatus.running;
    final ends = working ? a.completionMomentUtc() : null;
    final due = ref.read(totalDueProvider).value ?? 0;
    unawaited(
      ref
          .read(homeWidgetPlatformProvider)
          .update(
            HomeWidgetData(
              title: l10n.appName,
              idle: l10n.widgetStartFocus,
              running: ends == null ? '' : l10n.widgetFocusUntil(fmt.time(ends)),
              cards: due > 0 ? l10n.dashCardsDue(due) : l10n.widgetNoCardsDue,
              endsAt: ends,
            ),
          ),
    );
  }

  ref.listen(
    focusControllerProvider.select((s) => (s.active?.status, s.active?.phase, s.active?.sessionId)),
    (_, _) => push(),
  );
  ref.listen(totalDueProvider, (_, _) => push());
  ref.listen(settingsProvider.select((s) => s.localeTag), (_, _) => push());
  push();
});
