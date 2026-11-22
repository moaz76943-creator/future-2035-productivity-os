import '../../../l10n/gen/app_localizations.dart';
import '../domain/prayer_calc.dart';

String prayerName(AppLocalizations l10n, Prayer p) => switch (p) {
  Prayer.fajr => l10n.prayerFajr,
  Prayer.sunrise => l10n.prayerSunrise,
  Prayer.dhuhr => l10n.prayerDhuhr,
  Prayer.asr => l10n.prayerAsr,
  Prayer.maghrib => l10n.prayerMaghrib,
  Prayer.isha => l10n.prayerIsha,
};

String prayerMethodName(AppLocalizations l10n, PrayerMethod m) => switch (m) {
  PrayerMethod.mwl => l10n.prayerMethodMwl,
  PrayerMethod.ummAlQura => l10n.prayerMethodUmmAlQura,
  PrayerMethod.egypt => l10n.prayerMethodEgypt,
  PrayerMethod.jordan => l10n.prayerMethodJordan,
  PrayerMethod.karachi => l10n.prayerMethodKarachi,
  PrayerMethod.isna => l10n.prayerMethodIsna,
  PrayerMethod.gulf => l10n.prayerMethodGulf,
  PrayerMethod.kuwait => l10n.prayerMethodKuwait,
  PrayerMethod.qatar => l10n.prayerMethodQatar,
  PrayerMethod.turkey => l10n.prayerMethodTurkey,
  PrayerMethod.singapore => l10n.prayerMethodSingapore,
  PrayerMethod.france => l10n.prayerMethodFrance,
  PrayerMethod.russia => l10n.prayerMethodRussia,
};
