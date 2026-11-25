import 'dart:async';

import '../../../l10n/custom/custom_words.dart';

import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform, kIsWeb;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

import '../../../app/localization/app_locales.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../settings/data/settings_repository.dart';
import '../domain/notification_plan.dart';
import '../../focus/application/end_tone_labels.dart';
import '../../focus/domain/end_tone.dart';

/// Whether the OS lets the app post notifications.
enum NotificationAccess { granted, denied, unknown }

/// The language notifications are written in: the user's chosen app
/// language, else the first supported device language, else English.
AppLocalizations notificationL10n(AppSettings settings) => withCustomWords(
  lookupAppLocalizations(
    AppLocales.resolve(settings.localeTag, PlatformDispatcher.instance.locales).locale,
  ),
);

SupportedLanguage notificationLanguage(AppSettings settings) =>
    AppLocales.resolve(settings.localeTag, PlatformDispatcher.instance.locales);

/// Platform boundary for local notifications. Every method is safe to call
/// before [init] or on unsupported platforms (it then does nothing) and
/// never throws, so notification problems can never break app flows.
abstract class NotificationService {
  bool get isReady;
  Future<void> init(AppSettings settings);
  Future<NotificationAccess> access();

  /// Shows the Android 13+ permission prompt. Call only from a user action.
  Future<bool> requestPermission();
  Future<void> openSystemSettings();
  Future<bool> canScheduleExact();

  /// Opens the system screen for exact alarms (Android 14+). User action only.
  Future<void> requestExactAlarms();

  /// Re-creates channels with names in [l10n] (Android updates names in place).
  Future<void> updateChannels(AppLocalizations l10n);
  Future<bool> schedule(PlannedNotification n, {bool silent = false});
  Future<void> cancel(int id);

  /// Routes from tapped notifications.
  Stream<String> get taps;

  /// Route of the notification that launched the app, if any.
  String? get launchPayload;
}

const _channelReminders = 'reminders';
const _channelFocus = 'focus';

/// 'alarm_drops' → 'focus_drops'.
String _focusChannelFor(String resource) => 'focus_${resource.replaceFirst('alarm_', '')}';
const _icon = 'ic_stat_notify';

class LocalNotificationService implements NotificationService {
  LocalNotificationService._();

  /// The process-wide instance; initialized from bootstrap.
  static final shared = LocalNotificationService._();

  final _plugin = FlutterLocalNotificationsPlugin();
  // Lives as long as the process: this service is the app-wide singleton `shared`.
  final _taps = StreamController<String>.broadcast();
  bool _ready = false;
  bool _tzReady = false;
  String? _launchPayload;
  AppLocalizations? _l10n;

  @override
  bool get isReady => _ready;
  @override
  Stream<String> get taps => _taps.stream;
  @override
  String? get launchPayload => _launchPayload;

  bool get _isAndroid => !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  AndroidFlutterLocalNotificationsPlugin? get _android =>
      _plugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

  @override
  Future<void> init(AppSettings settings) async {
    if (_ready || !_isAndroid) return;
    try {
      await _initTimeZone();
      final ok = await _plugin.initialize(
        settings: const InitializationSettings(android: AndroidInitializationSettings(_icon)),
        onDidReceiveNotificationResponse: (r) {
          final p = r.payload;
          if (p != null && p.startsWith('/')) _taps.add(p);
        },
      );
      _ready = ok ?? false;
      if (!_ready) return;
      final launch = await _plugin.getNotificationAppLaunchDetails();
      if (launch?.didNotificationLaunchApp ?? false) {
        final p = launch!.notificationResponse?.payload;
        if (p != null && p.startsWith('/')) _launchPayload = p;
      }
      await updateChannels(notificationL10n(settings));
    } on Object {
      _ready = false;
    }
  }

  Future<void> _initTimeZone() async {
    tzdata.initializeTimeZones();
    try {
      final info = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(info.identifier));
      _tzReady = true;
    } on Object {
      // One-shot notifications use absolute instants and stay correct in
      // UTC; repeating ones are then scheduled as one-shots (see schedule).
      tz.setLocalLocation(tz.UTC);
      _tzReady = false;
    }
  }

  @override
  Future<void> updateChannels(AppLocalizations l10n) async {
    _l10n = l10n;
    if (!_ready) return;
    try {
      final a = _android;
      await a?.createNotificationChannel(
        AndroidNotificationChannel(
          _channelReminders,
          l10n.notifChannelReminders,
          description: l10n.notifChannelRemindersDesc,
          importance: Importance.high,
        ),
      );
      await a?.createNotificationChannel(
        AndroidNotificationChannel(
          _channelFocus,
          l10n.notifChannelFocus,
          description: l10n.notifChannelFocusDesc,
          importance: Importance.high,
        ),
      );
      // One channel per end sound: Android fixes a channel's sound at creation.
      for (final t in EndTone.values) {
        final res = t.resource;
        if (res == null) continue;
        await a?.createNotificationChannel(
          AndroidNotificationChannel(
            _focusChannelFor(res),
            '${l10n.notifChannelFocus} · ${endToneName(l10n, t)}',
            description: l10n.notifChannelFocusDesc,
            importance: Importance.high,
            sound: RawResourceAndroidNotificationSound(res),
          ),
        );
      }
    } on Object {
      // Channels are recreated on the next language change or launch.
    }
  }

  @override
  Future<NotificationAccess> access() async {
    if (!_ready) return NotificationAccess.unknown;
    try {
      final v = await _android?.areNotificationsEnabled();
      return switch (v) {
        true => NotificationAccess.granted,
        false => NotificationAccess.denied,
        null => NotificationAccess.unknown,
      };
    } on Object {
      return NotificationAccess.unknown;
    }
  }

  @override
  Future<bool> requestPermission() async {
    if (!_ready) return false;
    try {
      return await _android?.requestNotificationsPermission() ?? false;
    } on Object {
      return false;
    }
  }

  @override
  Future<void> openSystemSettings() async {
    if (!_ready) return;
    try {
      await _android?.openAppNotificationSettings();
    } on Object {
      // Nothing else to do; the banner stays visible.
    }
  }

  @override
  Future<bool> canScheduleExact() async {
    if (!_ready) return false;
    try {
      return await _android?.canScheduleExactNotifications() ?? false;
    } on Object {
      return false;
    }
  }

  @override
  Future<void> requestExactAlarms() async {
    if (!_ready) return;
    try {
      await _android?.requestExactAlarmsPermission();
    } on Object {
      // Inexact scheduling remains in place.
    }
  }

  @override
  Future<bool> schedule(PlannedNotification n, {bool silent = false}) async {
    if (!_ready) return false;
    final l10n = _l10n;
    final isFocus = n.channel == NotificationChannelKind.focus;
    final tone = isFocus ? n.tone : null;
    final details = NotificationDetails(
      android: AndroidNotificationDetails(
        isFocus ? (tone == null ? _channelFocus : _focusChannelFor(tone)) : _channelReminders,
        isFocus ? (l10n?.notifChannelFocus ?? '') : (l10n?.notifChannelReminders ?? ''),
        sound: tone == null ? null : RawResourceAndroidNotificationSound(tone),
        channelDescription: isFocus ? l10n?.notifChannelFocusDesc : l10n?.notifChannelRemindersDesc,
        importance: Importance.high,
        priority: Priority.high,
        category: isFocus
            ? AndroidNotificationCategory.alarm
            : AndroidNotificationCategory.reminder,
        // Content stays hidden on a secure lock screen.
        visibility: NotificationVisibility.private,
        silent: silent,
      ),
    );
    final repeat = _tzReady ? n.repeat : NotificationRepeat.none;
    final local = n.at.toLocal();
    final when = repeat == NotificationRepeat.none
        ? tz.TZDateTime.from(n.at.toUtc(), tz.local)
        : tz.TZDateTime(tz.local, local.year, local.month, local.day, local.hour, local.minute);
    final components = switch (repeat) {
      NotificationRepeat.none => null,
      NotificationRepeat.daily => DateTimeComponents.time,
      NotificationRepeat.weekly => DateTimeComponents.dayOfWeekAndTime,
    };
    Future<void> go(AndroidScheduleMode mode) => _plugin.zonedSchedule(
      id: n.id,
      scheduledDate: when,
      notificationDetails: details,
      androidScheduleMode: mode,
      title: n.title,
      body: n.body.isEmpty ? null : n.body,
      payload: n.payload,
      matchDateTimeComponents: components,
    );
    var exact = false;
    try {
      exact = await canScheduleExact();
      await go(
        exact ? AndroidScheduleMode.exactAllowWhileIdle : AndroidScheduleMode.inexactAllowWhileIdle,
      );
      return true;
    } on Object {
      // Exact alarm permission can be revoked between check and call.
      // Retry inexactly, but report failure if the OS still rejects it.
      if (!exact) return false;
      try {
        await go(AndroidScheduleMode.inexactAllowWhileIdle);
        return true;
      } on Object {
        return false;
      }
    }
  }

  @override
  Future<void> cancel(int id) async {
    if (!_ready) return;
    try {
      await _plugin.cancel(id: id);
    } on Object {
      // Ignore; the reconciler retries on the next change.
    }
  }
}
