import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/app/routing/app_router.dart';
import 'package:future_os/app/routing/routes.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/features/help/domain/feature_guide.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../helpers.dart';

/// Screens that need no help entry of their own (flows inside other
/// screens, or the help itself). Anything else added to the router must get
/// an entry in featureGuide: this keeps the FAQ in step with the features.
const _noHelpNeeded = {
  Routes.onboarding,
  Routes.search,
  Routes.trash,
  Routes.cardSearch,
  Routes.taskNew,
  Routes.noteNew,
  Routes.focusImmersive,
  Routes.customWords,
  Routes.eventNew,
  Routes.help,
};

void main() {
  late Set<String> screens;

  setUpAll(() {
    final env = TestEnv();
    final c = ProviderContainer(
      overrides: [
        databaseProvider.overrideWithValue(env.db),
        clockProvider.overrideWithValue(env.clock),
        initialSettingsProvider.overrideWithValue(const AppSettings(onboardingDone: true)),
      ],
    );
    final router = c.read(routerProvider);
    screens = {};
    void walk(List<RouteBase> routes) {
      for (final r in routes) {
        if (r is GoRoute && r.path.startsWith('/') && !r.path.contains(':')) screens.add(r.path);
        if (r is ShellRouteBase) walk(r.routes);
      }
    }

    walk(router.configuration.routes);
    c.dispose();
    addTearDown(env.dispose);
  });

  test('every screen has help, and every help entry opens a real screen', () {
    expect(screens, contains(Routes.flashcards), reason: 'router walk works');
    final covered = {for (final e in featureGuide) e.route};
    final missing = screens.difference(covered).difference(_noHelpNeeded);
    expect(missing, isEmpty, reason: 'add a GuideEntry (FAQ) for these screens');
    expect(
      covered.difference(screens),
      isEmpty,
      reason: 'help points to a screen that no longer exists',
    );
  });

  test('ids are unique and the tour has three pages', () {
    expect(featureGuide.map((e) => e.id).toSet().length, featureGuide.length);
    expect(tourEntries.length, 3);
  });

  test('every entry is written in every language', () {
    for (final lang in AppLocales.all) {
      final l = lookupAppLocalizations(Locale(lang.locale.languageCode));
      for (final e in featureGuide) {
        expect(e.question(l).trim(), isNotEmpty, reason: '${lang.tag} ${e.id}');
        expect(e.answer(l).trim().length, greaterThan(20), reason: '${lang.tag} ${e.id}');
        if (e.inTour) expect(e.tourBody!(l).trim(), isNotEmpty);
      }
    }
  });
}
