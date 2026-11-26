// On-device checks of the real app (encrypted database, platform channels,
// notifications, speech), run on an Android emulator in CI:
//   flutter test integration_test -d emulator-5554
import 'dart:ui' show PlatformDispatcher;

import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/bootstrap/bootstrap.dart';
import 'package:future_os/app/routing/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:integration_test/integration_test.dart';

/// Pumps frames for [seconds] (the app has gentle ambient animations, so it
/// never "settles").
Future<void> wait(WidgetTester tester, [double seconds = 1]) async {
  final end = DateTime.now().add(Duration(milliseconds: (seconds * 1000).round()));
  while (DateTime.now().isBefore(end)) {
    await tester.pump(const Duration(milliseconds: 100));
  }
}

/// Waits until [f] is built, then lets page and sheet transitions finish, so a
/// tap lands on it and not on the page still sliding away (seen on the emulator).
Future<void> waitFor(WidgetTester tester, Finder f, {int seconds = 20}) async {
  for (var i = 0; i < seconds * 10; i++) {
    if (f.evaluate().isNotEmpty) {
      await wait(tester, 0.8);
      return;
    }
    await tester.pump(const Duration(milliseconds: 100));
  }
  expect(f, findsWidgets, reason: 'timed out waiting');
}

Future<void> tapTab(WidgetTester tester, int index) async {
  await tester.tap(
    find
        .descendant(of: find.byType(NavigationBar), matching: find.byType(NavigationDestination))
        .at(index),
  );
  await wait(tester);
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // A tap on a hidden control is a real bug (it happened with the nav bar).
  WidgetController.hitTestWarningShouldBeFatal = true;

  testWidgets('first run, focus, starter deck review, help', (tester) async {
    // bootstrap() installs the app's own error handlers. Chain the test's
    // handlers behind them and restore them at the end, otherwise any failure
    // shows up only as "A test overrode FlutterError.onError" and hides the cause.
    final testOnError = FlutterError.onError;
    final testPlatformOnError = PlatformDispatcher.instance.onError;
    await bootstrap();
    final appOnError = FlutterError.onError;
    FlutterError.onError = (details) {
      appOnError?.call(details);
      testOnError?.call(details);
    };
    addTearDown(() {
      FlutterError.onError = testOnError;
      PlatformDispatcher.instance.onError = testPlatformOnError;
    });
    await waitFor(tester, find.byKey(const ValueKey('onboard-skip')), seconds: 60);

    // First-run setup, then the three-page tour once.
    await tester.tap(find.byKey(const ValueKey('onboard-skip')));
    await waitFor(tester, find.byKey(const Key('tourNext')));
    await tester.tap(find.byKey(const Key('tourSkip')));
    await wait(tester);
    expect(find.byType(NavigationBar), findsOneWidget);

    // Focus: start, pause, stop. Tabs: Home, Tasks, Cards, Focus, Calendar, Spaces.
    await tapTab(tester, 3);
    await tester.tap(find.byKey(const ValueKey('focus-start')));
    await wait(tester, 2);
    expect(find.byKey(const ValueKey('focus-pause')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('focus-pause')));
    await wait(tester);
    expect(find.byKey(const ValueKey('focus-resume')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('focus-stop')));
    await wait(tester);
    if (find.byType(AlertDialog).evaluate().isNotEmpty) {
      // Confirm stopping (the last button is the confirming one).
      await tester.tap(
        find
            .descendant(of: find.byType(AlertDialog), matching: find.byType(ButtonStyleButton))
            .last,
      );
      await wait(tester);
    }
    expect(find.byKey(const ValueKey('focus-start')), findsOneWidget);

    // Flashcards: add a starter deck into the real (encrypted) database.
    GoRouter router() => GoRouter.of(tester.element(find.byType(NavigationBar)));
    router().go(Routes.flashcards);
    await waitFor(tester, find.byKey(const Key('starterDecksEmpty')));
    await tester.tap(find.byKey(const Key('starterDecksEmpty')));
    await waitFor(tester, find.byKey(const Key('starterAdd_capitals')));
    await tester.tap(find.byKey(const Key('starterAdd_capitals')));
    await waitFor(tester, find.byIcon(Icons.check_circle_rounded));
    Navigator.of(tester.element(find.byKey(const Key('starter_capitals')))).pop();
    await wait(tester);
    // The new deck is listed (the Today card appears only after studying).
    expect(
      find.byWidgetPredicate(
        (w) =>
            w.key is ValueKey<String> && (w.key! as ValueKey<String>).value.startsWith('deckMore_'),
      ),
      findsWidgets,
      reason: 'the starter deck in the deck list',
    );

    // Help: every answer is reachable; open one screen from it.
    router().push(Routes.help);
    await waitFor(tester, find.byKey(const Key('faq_myDay')));
    await tester.tap(find.byKey(const Key('faq_myDay')));
    await wait(tester);
    await tester.tap(find.byKey(const Key('faqOpen_myDay')));
    await wait(tester, 2);
    expect(find.byType(NavigationBar), findsOneWidget);

    // Settings: prayer times with a city (offline calculation on the device).
    router().push(Routes.settings);
    await waitFor(tester, find.byKey(const ValueKey('settings-prayer')));
    await tester.scrollUntilVisible(find.byKey(const ValueKey('settings-prayer')), 200);
    await tester.tap(find.byKey(const ValueKey('settings-prayer')));
    await waitFor(tester, find.byKey(const Key('prayerChooseCity')));
    await tester.tap(find.byKey(const Key('prayerChooseCity')));
    await waitFor(tester, find.byKey(const Key('prayerCitySearch')));
    await tester.enterText(find.byKey(const Key('prayerCitySearch')), 'Amman');
    await wait(tester);
    await tester.tap(find.byKey(const Key('city_Amman')));
    await waitFor(tester, find.byKey(const Key('prayer_fajr')));
    expect(find.byKey(const Key('prayer_isha')), findsOneWidget);
  });
}
