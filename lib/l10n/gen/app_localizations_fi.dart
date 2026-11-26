// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Koti';

  @override
  String get navTasks => 'Tehtävät';

  @override
  String get navFocus => 'Keskitys';

  @override
  String get navCalendar => 'Kalenteri';

  @override
  String get navSpaces => 'Tilat';

  @override
  String get moduleProjects => 'Projektit';

  @override
  String get moduleNotes => 'Muistiinpanot';

  @override
  String get moduleFlashcards => 'Kortit';

  @override
  String get moduleGoals => 'Tavoitteet';

  @override
  String get moduleHabits => 'Tavat';

  @override
  String get moduleAnalytics => 'Tilastot';

  @override
  String get moduleSearch => 'Haku';

  @override
  String get moduleAssistant => 'Avustaja';

  @override
  String get moduleSettings => 'Asetukset';

  @override
  String get moduleTrash => 'Roskakori';

  @override
  String get actionSave => 'Tallenna';

  @override
  String get actionCancel => 'Peruuta';

  @override
  String get actionDelete => 'Poista';

  @override
  String get actionEdit => 'Muokkaa';

  @override
  String get actionDone => 'Valmis';

  @override
  String get actionAdd => 'Lisää';

  @override
  String get actionCreate => 'Luo';

  @override
  String get actionClose => 'Sulje';

  @override
  String get actionBack => 'Takaisin';

  @override
  String get actionUndo => 'Kumoa';

  @override
  String get actionRestore => 'Palauta';

  @override
  String get actionRetry => 'Yritä uudelleen';

  @override
  String get actionContinue => 'Jatka';

  @override
  String get actionSkip => 'Ohita';

  @override
  String get actionArchive => 'Arkistoi';

  @override
  String get actionUnarchive => 'Palauta arkistosta';

  @override
  String get actionPin => 'Kiinnitä';

  @override
  String get actionUnpin => 'Irrota';

  @override
  String get actionMore => 'Lisää vaihtoehtoja';

  @override
  String get actionClear => 'Tyhjennä';

  @override
  String get actionSearch => 'Hae';

  @override
  String get actionSort => 'Järjestä';

  @override
  String get actionShare => 'Jaa';

  @override
  String get actionImport => 'Tuo';

  @override
  String get actionExport => 'Vie';

  @override
  String get actionPause => 'Tauko';

  @override
  String get actionResume => 'Jatka';

  @override
  String get actionStart => 'Aloita';

  @override
  String get actionStop => 'Lopeta';

  @override
  String get actionComplete => 'Merkitse valmiiksi';

  @override
  String get actionDeleteForever => 'Poista pysyvästi';

  @override
  String get actionEmptyTrash => 'Tyhjennä roskakori';

  @override
  String get actionUnlink => 'Poista linkitys';

  @override
  String get actionCustomize => 'Muokkaa näkymää';

  @override
  String get actionPreview => 'Esikatselu';

  @override
  String get actionLog => 'Kirjaa edistyminen';

  @override
  String get stateLoading => 'Ladataan…';

  @override
  String get stateSaving => 'Tallennetaan…';

  @override
  String get stateSaved => 'Tallennettu';

  @override
  String get stateUnsaved => 'Tallentamattomia muutoksia';

  @override
  String get errorGenericTitle => 'Jokin meni vikaan';

  @override
  String get errorGenericMessage => 'Tietosi ovat tallessa. Yritä uudelleen.';

  @override
  String get errorLoadFailed => 'Sisältöä ei voitu ladata.';

  @override
  String get errorSaveFailed => 'Tallennus epäonnistui. Muutoksesi ovat yhä tallessa.';

  @override
  String get validationRequired => 'Tämä kenttä on pakollinen';

  @override
  String get validationTitleRequired => 'Kirjoita otsikko';

  @override
  String get validationNameRequired => 'Kirjoita nimi';

  @override
  String get validationTooLong => 'Tämä on liian pitkä';

  @override
  String get validationEndBeforeStart => 'Lopun on oltava alun jälkeen';

  @override
  String get validationStartAfterDue => 'Aloituspäivän on oltava ennen määräpäivää';

  @override
  String get validationPositiveNumber => 'Anna nollaa suurempi luku';

  @override
  String get validationDependencyCycle => 'Tästä syntyisi kehäriippuvuus';

  @override
  String get validationInvalidRepeat => 'Toistosääntö ei kelpaa';

  @override
  String get deletedItem => 'Siirretty roskakoriin';

  @override
  String get untitled => 'Nimetön';

  @override
  String get noProject => 'Ei projektia';

  @override
  String get greetingMorning => 'Hyvää huomenta';

  @override
  String get greetingAfternoon => 'Hyvää iltapäivää';

  @override
  String get greetingEvening => 'Hyvää iltaa';

  @override
  String get dashFocusToday => 'Päivän keskitys';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Aloita keskitys';

  @override
  String get dashFocusRunning => 'Istunto käynnissä';

  @override
  String get dashTodayTasks => 'Tänään erääntyvät';

  @override
  String get dashAgenda => 'Ohjelma';

  @override
  String get dashHabits => 'Tämän päivän tavat';

  @override
  String get dashGoals => 'Tavoitteet';

  @override
  String get dashReview => 'Kertaus';

  @override
  String get dashRecentNotes => 'Viimeisimmät muistiinpanot';

  @override
  String get dashInsight => 'Ehdotus';

  @override
  String get dashSeeAll => 'Näytä kaikki';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kerrattavaa korttia',
      one: '1 kerrattava kortti',
      zero: 'Ei kerrattavia kortteja',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Kertaa nyt';

  @override
  String get dashCustomizeTitle => 'Yleiskatsauksen osiot';

  @override
  String get dashCustomizeHint => 'Valitse, mitä aloitusnäytölläsi näkyy.';

  @override
  String get dashSectionFocus => 'Keskitys';

  @override
  String get dashSectionToday => 'Tänään erääntyvät tehtävät';

  @override
  String get dashSectionAgenda => 'Ohjelma';

  @override
  String get dashSectionHabits => 'Tavat';

  @override
  String get dashSectionGoals => 'Tavoitteet';

  @override
  String get dashSectionReview => 'Korttien kertaus';

  @override
  String get dashSectionNotes => 'Viimeisimmät muistiinpanot';

  @override
  String get dashSectionInsight => 'Ehdotukset';

  @override
  String get quickAddTask => 'Uusi tehtävä';

  @override
  String get quickAddNote => 'Uusi muistiinpano';

  @override
  String get quickAddEvent => 'Uusi tapahtuma';

  @override
  String get quickStartFocus => 'Keskitys';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sinulla on $count myöhässä olevaa tehtävää. Aloita tärkeimmästä.',
      one: 'Sinulla on 1 myöhässä oleva tehtävä. Siirrä se tai tee se ensin valmiiksi.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Päivittäiseen keskitystavoitteeseesi on enää $minutes minuuttia.';
  }

  @override
  String get insightCardsDue => 'Kertaa korttisi nyt, kun ne ovat vielä tuoreessa muistissa.';

  @override
  String get insightAllClear =>
      'Kaikki sujuu suunnitellusti. Suunnittele huominen tai pidä rauhallinen tauko.';

  @override
  String insightHabitStreak(String habit) {
    return 'Pidä putki yllä: $habit on vielä tekemättä tänään.';
  }

  @override
  String get focusTitle => 'Keskitys';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Ajastin';

  @override
  String get focusModeCountUp => 'Sekuntikello';

  @override
  String get focusModeOpen => 'Vapaa';

  @override
  String get focusPhaseWork => 'Keskitys';

  @override
  String get focusPhaseShortBreak => 'Lyhyt tauko';

  @override
  String get focusPhaseLongBreak => 'Pitkä tauko';

  @override
  String get focusReady => 'Valmiina, kun sinä olet';

  @override
  String get focusPaused => 'Tauolla';

  @override
  String get focusRunning => 'Keskittynyt';

  @override
  String get focusDuration => 'Kesto';

  @override
  String get focusLinkTask => 'Linkitä tehtävä';

  @override
  String get focusLinkedTask => 'Työn alla';

  @override
  String get focusNoTask => 'Ei linkitettyä tehtävää';

  @override
  String focusCycle(int current, int total) {
    return 'Kierros $current/$total';
  }

  @override
  String get focusSkipBreak => 'Ohita tauko';

  @override
  String get focusStartBreak => 'Aloita tauko';

  @override
  String get focusStartNext => 'Aloita seuraava keskitys';

  @override
  String get focusSessionComplete => 'Istunto valmis';

  @override
  String get focusSessionStopped => 'Istunto tallennettu';

  @override
  String focusSessionSummary(String duration) {
    return 'Keskityit $duration.';
  }

  @override
  String get focusAddNote => 'Lisää muistiinpano tästä istunnosta';

  @override
  String get focusHistory => 'Historia';

  @override
  String get focusNoHistory => 'Valmiit istunnot näkyvät täällä';

  @override
  String get focusTargets => 'Tavoitteet';

  @override
  String get focusDailyTarget => 'Päivätavoite';

  @override
  String get focusWeeklyTarget => 'Viikkotavoite';

  @override
  String get focusOutcomeCompleted => 'Valmis';

  @override
  String get focusOutcomeInterrupted => 'Lopetettu kesken';

  @override
  String get focusRecovered => 'Istuntosi jatkui, kun sovellus oli suljettuna.';

  @override
  String get focusCompletedWhileAway =>
      'Istunto päättyi, kun sovellus oli suljettuna, ja se on tallennettu.';

  @override
  String get focusNotificationsOff =>
      'Ilmoitukset ovat pois päältä. Et saa ilmoitusta, kun istunto päättyy.';

  @override
  String get focusBatteryHint =>
      'Jotkin laitteet keskeyttävät sovelluksia taustalla. Ajastin pysyy tarkkana, mutta ilmoitukset voivat viivästyä. Salli rajoittamaton akun käyttö, jotta ilmoitukset tulevat varmasti.';

  @override
  String get focusOpenSettings => 'Avaa asetukset';

  @override
  String get focusStopConfirmTitle => 'Lopetetaanko istunto?';

  @override
  String get focusStopConfirmMessage => 'Tähänastinen keskitysaika tallennetaan.';

  @override
  String get focusDiscard => 'Hylkää';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuuttia',
      one: '1 minuutti',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time jäljellä';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time kulunut';
  }

  @override
  String get focusDeleteSession => 'Poista istunto';

  @override
  String get tasksTitle => 'Tehtävät';

  @override
  String get tasksViewToday => 'Tänään';

  @override
  String get tasksViewUpcoming => 'Tulevat';

  @override
  String get tasksViewAll => 'Kaikki';

  @override
  String get tasksViewOverdue => 'Myöhässä';

  @override
  String get tasksViewCompleted => 'Valmiit';

  @override
  String get tasksQuickAddHint => 'Lisää tehtävä…';

  @override
  String get tasksEmptyTitle => 'Kaikki tehty';

  @override
  String get tasksEmptyMessage => 'Lisää tehtävä ja anna päivällesi muoto.';

  @override
  String get tasksEmptyCompleted => 'Valmiit tehtävät näkyvät täällä.';

  @override
  String get taskNew => 'Uusi tehtävä';

  @override
  String get taskEdit => 'Muokkaa tehtävää';

  @override
  String get taskTitleLabel => 'Otsikko';

  @override
  String get taskTitleHint => 'Mitä pitää tehdä?';

  @override
  String get taskDescriptionLabel => 'Kuvaus';

  @override
  String get taskNotesLabel => 'Muistiinpanot';

  @override
  String get taskPriority => 'Tärkeys';

  @override
  String get priorityNone => 'Ei mitään';

  @override
  String get priorityLow => 'Matala';

  @override
  String get priorityMedium => 'Keskitaso';

  @override
  String get priorityHigh => 'Korkea';

  @override
  String get priorityUrgent => 'Kiireellinen';

  @override
  String get taskDueDate => 'Määräpäivä';

  @override
  String get taskStartDate => 'Aloituspäivä';

  @override
  String get taskReminder => 'Muistutus';

  @override
  String get taskRepeat => 'Toisto';

  @override
  String get taskProject => 'Projekti';

  @override
  String get taskCategory => 'Luokka';

  @override
  String get taskCategoryHint => 'esim. Työ, Koti, Opiskelu';

  @override
  String get taskEstimateMinutes => 'Arvio (minuutteina)';

  @override
  String get taskTracked => 'Mitattu keskitys';

  @override
  String get taskLabels => 'Tunnisteet';

  @override
  String get taskAddLabel => 'Uusi tunniste';

  @override
  String get taskChecklist => 'Tarkistuslista';

  @override
  String get taskAddChecklistItem => 'Lisää kohta';

  @override
  String get taskSubtasks => 'Alitehtävät';

  @override
  String get taskAddSubtask => 'Lisää alitehtävä';

  @override
  String get taskDependencies => 'Estäjät';

  @override
  String get taskAddDependency => 'Lisää estävä tehtävä';

  @override
  String get taskLinkedNotes => 'Linkitetyt muistiinpanot';

  @override
  String get taskSetTime => 'Aseta kellonaika';

  @override
  String get taskNoDate => 'Ei päivämäärää';

  @override
  String get taskCompleted => 'Tehtävä valmis';

  @override
  String get taskNextOccurrence => 'Seuraava kerta luotu';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päivää myöhässä',
      one: '1 päivä myöhässä',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Merkitse ”$title” valmiiksi';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Merkitse ”$title” keskeneräiseksi';
  }

  @override
  String get sortSmart => 'Älykäs';

  @override
  String get sortDueDate => 'Määräpäivä';

  @override
  String get sortPriority => 'Tärkeys';

  @override
  String get sortCreated => 'Uusimmat';

  @override
  String get sortTitle => 'Otsikko';

  @override
  String get filterAllProjects => 'Kaikki projektit';

  @override
  String get filterAnyPriority => 'Kaikki tärkeystasot';

  @override
  String get filterTitle => 'Suodata ja järjestä';

  @override
  String get dateToday => 'Tänään';

  @override
  String get dateTomorrow => 'Huomenna';

  @override
  String get dateYesterday => 'Eilen';

  @override
  String get repeatNever => 'Ei toistu';

  @override
  String get repeatDaily => 'Joka päivä';

  @override
  String get repeatWeekdays => 'Joka arkipäivä';

  @override
  String get repeatWeekly => 'Joka viikko';

  @override
  String get repeatMonthly => 'Joka kuukausi';

  @override
  String get repeatYearly => 'Joka vuosi';

  @override
  String get repeatCustom => 'Mukautettu';

  @override
  String get repeatEvery => 'Toista joka';

  @override
  String get repeatOnDays => 'Päivinä';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'päivää', one: 'päivä');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'viikkoa',
      one: 'viikko',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kuukautta',
      one: 'kuukausi',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'vuotta', one: 'vuosi');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kerran jälkeen',
      one: '1 kerran jälkeen',
    );
    return 'Päättyy $_temp0';
  }

  @override
  String get repeatEndsNever => 'Ei pääty';

  @override
  String get reminderAtTime => 'Alkamishetkellä';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuuttia ennen',
      one: '1 minuutti ennen',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours tuntia ennen',
      one: '1 tunti ennen',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 päivä ennen';

  @override
  String get projectsTitle => 'Projektit';

  @override
  String get projectsEmptyTitle => 'Ei vielä projekteja';

  @override
  String get projectsEmptyMessage =>
      'Kokoa yhteen kuuluvat tehtävät, muistiinpanot ja keskitysaika.';

  @override
  String get projectNew => 'Uusi projekti';

  @override
  String get projectEdit => 'Muokkaa projektia';

  @override
  String get projectName => 'Nimi';

  @override
  String get projectDescription => 'Kuvaus';

  @override
  String get projectGoal => 'Päämäärä';

  @override
  String get projectDeadline => 'Takaraja';

  @override
  String get projectColor => 'Väri';

  @override
  String get projectIcon => 'Kuvake';

  @override
  String get projectProgress => 'Edistyminen';

  @override
  String projectTasksDone(int done, int total) {
    return '$done/$total tehtävää valmiina';
  }

  @override
  String get projectFocusTime => 'Keskitysaika';

  @override
  String get projectArchived => 'Arkistoidut projektit';

  @override
  String get projectShowArchived => 'Näytä arkistoidut';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päivää jäljellä',
      one: '1 päivä jäljellä',
      zero: 'Erääntyy tänään',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Takaraja ylitetty';

  @override
  String get calendarTitle => 'Kalenteri';

  @override
  String get calendarMonth => 'Kuukausi';

  @override
  String get calendarWeek => 'Viikko';

  @override
  String get calendarDay => 'Päivä';

  @override
  String get calendarToday => 'Tänään';

  @override
  String get calendarPrevious => 'Edellinen';

  @override
  String get calendarNext => 'Seuraava';

  @override
  String get calendarNoEvents => 'Ei mitään suunniteltuna';

  @override
  String get calendarAllDay => 'Koko päivä';

  @override
  String get eventNew => 'Uusi tapahtuma';

  @override
  String get eventEdit => 'Muokkaa tapahtumaa';

  @override
  String get eventTitleHint => 'Tapahtuman nimi';

  @override
  String get eventStarts => 'Alkaa';

  @override
  String get eventEnds => 'Päättyy';

  @override
  String get eventKind => 'Tyyppi';

  @override
  String get eventKindEvent => 'Tapahtuma';

  @override
  String get eventKindTimeBlock => 'Aikalohko';

  @override
  String get eventKindFocus => 'Keskitysistunto';

  @override
  String get eventKindGoal => 'Henkilökohtainen tavoite';

  @override
  String get eventDescription => 'Lisätiedot';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Päällekkäin $count tapahtuman kanssa',
      one: 'Päällekkäin 1 tapahtuman kanssa',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Päällekkäisyyksiä tänä päivänä';

  @override
  String get calendarTaskDue => 'Tehtävä erääntyy';

  @override
  String get calendarDragHint => 'Siirrä tapahtumaa painamalla pitkään ja vetämällä';

  @override
  String get calendarRescheduled => 'Tapahtuma siirretty';

  @override
  String get calendarScheduleTask => 'Ajoita aikalohkoksi';

  @override
  String get notesTitle => 'Muistiinpanot';

  @override
  String get notesViewAll => 'Kaikki';

  @override
  String get notesViewPinned => 'Kiinnitetyt';

  @override
  String get notesViewFavorites => 'Suosikit';

  @override
  String get notesViewArchived => 'Arkistoidut';

  @override
  String get notesTags => 'Tunnisteet';

  @override
  String get notesNewNotebook => 'Uusi muistikirja';

  @override
  String get notesNoNotebook => 'Ei muistikirjaa';

  @override
  String get notesEmptyTitle => 'Tyhjä sivu';

  @override
  String get notesEmptyMessage => 'Tallenna ideat, kokousmuistiinpanot ja tieto.';

  @override
  String get noteTitleHint => 'Otsikko';

  @override
  String get noteBodyHint =>
      'Aloita kirjoittaminen… Käytä #-merkkiä tunnisteisiin ja [[Otsikko]] linkittämään muistiinpanoja.';

  @override
  String get noteFavorite => 'Suosikki';

  @override
  String get noteUnfavorite => 'Poista suosikeista';

  @override
  String get noteMoveTo => 'Siirrä muistikirjaan';

  @override
  String get noteBacklinks => 'Linkitetty kohteesta';

  @override
  String get noteLinkedTasks => 'Linkitetyt tehtävät';

  @override
  String get noteLinkTask => 'Linkitä tehtävä';

  @override
  String get noteLinkProject => 'Projekti';

  @override
  String get noteFormatHeading => 'Otsikko';

  @override
  String get noteFormatBold => 'Lihavointi';

  @override
  String get noteFormatItalic => 'Kursiivi';

  @override
  String get noteFormatList => 'Luettelo';

  @override
  String get noteFormatChecklist => 'Tarkistuslista';

  @override
  String get noteFormatLink => 'Linkki';

  @override
  String noteEdited(String time) {
    return 'Muokattu $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sanaa',
      one: '1 sana',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kortit';

  @override
  String get flashEmptyTitle => 'Tee ensimmäinen pakkasi';

  @override
  String get flashEmptyMessage =>
      'Välein toistettu kertaus näyttää jokaisen kortin juuri ennen kuin unohtaisit sen.';

  @override
  String get deckNew => 'Uusi pakka';

  @override
  String get deckEdit => 'Muokkaa pakkaa';

  @override
  String get deckName => 'Pakan nimi';

  @override
  String get deckDescription => 'Kuvaus';

  @override
  String get deckDailyNew => 'Uusia kortteja päivässä';

  @override
  String get deckDailyReview => 'Päivittäinen kertaustavoite';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia',
      one: '1 kortti',
      zero: 'Ei kortteja',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Kerrattavana';

  @override
  String get deckNewCards => 'Uudet';

  @override
  String get deckMature => 'Opitut';

  @override
  String get deckStudy => 'Opiskele';

  @override
  String get deckNothingDue => 'Ei mitään kerrattavaa juuri nyt. Palaa myöhemmin.';

  @override
  String get deckEmptyCards => 'Lisää kortteja aloittaaksesi opiskelun.';

  @override
  String get cardNew => 'Uusi kortti';

  @override
  String get cardEdit => 'Muokkaa korttia';

  @override
  String get cardFront => 'Etupuoli';

  @override
  String get cardBack => 'Takapuoli';

  @override
  String get cardFrontHint => 'Kysymys tai käsite';

  @override
  String get cardBackHint => 'Vastaus tai määritelmä';

  @override
  String get cardTags => 'Tunnisteet';

  @override
  String get cardAddAnother => 'Tallenna ja lisää uusi';

  @override
  String get reviewShowAnswer => 'Näytä vastaus';

  @override
  String get reviewAgain => 'Uudelleen';

  @override
  String get reviewHard => 'Vaikea';

  @override
  String get reviewGood => 'Hyvä';

  @override
  String get reviewEasy => 'Helppo';

  @override
  String reviewProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String get reviewFinishedTitle => 'Istunto valmis';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kertasit $count korttia.',
      one: 'Kertasit 1 kortin.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Näytä vastaus napauttamalla';

  @override
  String get importCardsTitle => 'Tuo kortteja';

  @override
  String get importCardsHint =>
      'Liitä yksi kortti riville (etu- ja takapuoli erotettuina sarkaimella tai puolipisteellä) tai valitse tiedosto: Excel (.xlsx), CSV, Anki-pakka (.apkg) tai viety pakka.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia tuotu',
      one: '1 kortti tuotu',
      zero: 'Kortteja ei tuotu',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Sisältöä ei voitu tuoda.';

  @override
  String get exportCopied => 'Pakka viety';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count min',
      one: '1 min',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pv',
      one: '1 pv',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Tavoitteet';

  @override
  String get goalsEmptyTitle => 'Tähtää johonkin';

  @override
  String get goalsEmptyMessage =>
      'Aseta tavoitteita päiväksi, viikoksi, kuukaudeksi tai pitkäksi aikaa ja seuraa todellista edistymistäsi.';

  @override
  String get goalNew => 'Uusi tavoite';

  @override
  String get goalEdit => 'Muokkaa tavoitetta';

  @override
  String get goalTitleHint => 'Mitä haluat saavuttaa?';

  @override
  String get goalPeriod => 'Jakso';

  @override
  String get goalPeriodDaily => 'Päivittäin';

  @override
  String get goalPeriodWeekly => 'Viikoittain';

  @override
  String get goalPeriodMonthly => 'Kuukausittain';

  @override
  String get goalPeriodLongTerm => 'Pitkän aikavälin';

  @override
  String get goalTarget => 'Tavoitearvo';

  @override
  String get goalUnit => 'Yksikkö';

  @override
  String get goalUnitHint => 'esim. sivut, km, tunnit';

  @override
  String get goalStatusActive => 'Aktiivinen';

  @override
  String get goalStatusPaused => 'Tauolla';

  @override
  String get goalStatusAchieved => 'Saavutettu';

  @override
  String get goalPause => 'Keskeytä tavoite';

  @override
  String get goalResume => 'Jatka tavoitetta';

  @override
  String get goalMarkAchieved => 'Merkitse saavutetuksi';

  @override
  String goalProgressOf(String current, String target) {
    return '$current/$target';
  }

  @override
  String get goalLogAmount => 'Määrä';

  @override
  String get goalLogNote => 'Huomautus (valinnainen)';

  @override
  String get goalHistory => 'Historia';

  @override
  String get goalNoHistory => 'Kirjattu edistyminen näkyy täällä';

  @override
  String get goalLinkedTasks => 'Linkitetyt tehtävät';

  @override
  String get goalLinkedTasksHint =>
      'Jokainen valmis linkitetty tehtävä lasketaan yhdeksi tähän tavoitteeseen.';

  @override
  String get goalThisPeriod => 'Tämä jakso';

  @override
  String get habitsTitle => 'Tavat';

  @override
  String get habitsEmptyTitle => 'Pieniä askelia joka päivä';

  @override
  String get habitsEmptyMessage => 'Luo tapa ja merkitse se tehdyksi, kun teet sen.';

  @override
  String get habitNew => 'Uusi tapa';

  @override
  String get habitEdit => 'Muokkaa tapaa';

  @override
  String get habitNameHint => 'esim. Lue 20 sivua';

  @override
  String get habitDays => 'Aikataulu';

  @override
  String get habitEveryDay => 'Joka päivä';

  @override
  String get habitTargetPerDay => 'Kertaa päivässä';

  @override
  String get habitReminder => 'Päivittäinen muistutus';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivän putki',
      one: '1 päivän putki',
      zero: 'Ei putkea',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Pisin putki';

  @override
  String get habitCurrentStreak => 'Nykyinen putki';

  @override
  String get habitConsistency => 'Säännöllisyys';

  @override
  String get habitLast90 => 'Viimeiset 90 päivää';

  @override
  String get habitPaused => 'Tauolla';

  @override
  String get habitPause => 'Keskeytä tapa';

  @override
  String get habitResume => 'Jatka tapaa';

  @override
  String get habitDoneToday => 'Tehty tänään';

  @override
  String habitCountToday(int count, int target) {
    return 'Tänään $count/$target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Merkitse ”$name” tehdyksi';
  }

  @override
  String get habitNotScheduledToday => 'Ei ajoitettu tänään';

  @override
  String get analyticsTitle => 'Tilastot';

  @override
  String get rangeWeek => '7 päivää';

  @override
  String get rangeMonth => '30 päivää';

  @override
  String get rangeQuarter => '90 päivää';

  @override
  String get statFocusTime => 'Keskitysaika';

  @override
  String get statSessions => 'Istunnot';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed valmista · $interrupted lopetettu kesken';
  }

  @override
  String get statTasksDone => 'Valmiit tehtävät';

  @override
  String get statCompletionRate => 'Ajallaan valmiit';

  @override
  String get statHabitConsistency => 'Tapojen säännöllisyys';

  @override
  String get statRetention => 'Muistetut kortit';

  @override
  String get statReviews => 'Kertaukset';

  @override
  String get statActiveGoals => 'Aktiiviset tavoitteet';

  @override
  String get statEstimated => 'Arvioitu tehty työ';

  @override
  String get statEstimatedNote => 'Perustuu arvioihisi, ei mitattuun aikaan';

  @override
  String get statMeasuredNote => 'Mitattu keskitysistunnoista';

  @override
  String get chartFocusByDay => 'Keskitysminuutit päivässä';

  @override
  String get chartTasksByDay => 'Valmiit tehtävät päivässä';

  @override
  String get chartTimeByProject => 'Aika projekteittain';

  @override
  String get chartProjectProgress => 'Projektien edistyminen';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: yhteensä $total, paras päivä $best';
  }

  @override
  String get analyticsNoData => 'Ei vielä tarpeeksi tietoa';

  @override
  String get analyticsUnassigned => 'Ei projektia';

  @override
  String get searchHint => 'Hae kaikesta…';

  @override
  String get searchRecent => 'Viimeisimmät haut';

  @override
  String get searchClearRecent => 'Tyhjennä viimeisimmät haut';

  @override
  String searchNoResults(String query) {
    return 'Ei tuloksia haulla ”$query”';
  }

  @override
  String get searchStartTyping =>
      'Hae tehtävistä, muistiinpanoista, korteista, tavoitteista, tapahtumista ja muusta. Haku pysyy tällä laitteella.';

  @override
  String get searchCatTask => 'Tehtävät';

  @override
  String get searchCatProject => 'Projektit';

  @override
  String get searchCatNote => 'Muistiinpanot';

  @override
  String get searchCatFlashcard => 'Kortit';

  @override
  String get searchCatDeck => 'Pakat';

  @override
  String get searchCatGoal => 'Tavoitteet';

  @override
  String get searchCatHabit => 'Tavat';

  @override
  String get searchCatEvent => 'Tapahtumat';

  @override
  String get searchCatSession => 'Istunnot';

  @override
  String get searchAll => 'Kaikki';

  @override
  String get assistantTitle => 'Avustaja';

  @override
  String get assistantIntro =>
      'Suunnitteluapua, joka toimii laitteellasi. Voit halutessasi yhdistää valitsemasi tekoälypalvelun yhteenvetoja ja tuottamista varten.';

  @override
  String get assistantOnDevice => 'Laitteella';

  @override
  String get assistantCloud => 'Tekoälypalvelu';

  @override
  String get assistantPlanDay => 'Suunnittele päiväni';

  @override
  String get assistantPlanDayDesc =>
      'Järjestää avoimet tehtävät kiireellisyyden, tärkeyden ja arvion mukaan ja sovittaa ne tapahtumiesi lomaan.';

  @override
  String get assistantExtractTasks => 'Poimi tehtävät muistiinpanosta';

  @override
  String get assistantExtractTasksDesc =>
      'Löytää muistiinpanon tarkistuslistan kohdat ja toimintarivit ja tekee niistä tehtäviä.';

  @override
  String get assistantMakeCards => 'Tee kortit muistiinpanosta';

  @override
  String get assistantMakeCardsDesc =>
      'Tekee kortteja riveistä kuten ”käsite: määritelmä” sekä kysymys–vastaus-riveistä.';

  @override
  String get assistantSummarize => 'Tiivistä muistiinpano';

  @override
  String get assistantSummarizeDesc =>
      'Vaatii tekoälypalvelun. Muistiinpano lähetetään vasta, kun vahvistat.';

  @override
  String get assistantWorkload => 'Työmäärän yleiskuva';

  @override
  String get assistantWorkloadDesc => 'Vertaa arvioitua työtä vapaa-aikaasi tällä viikolla.';

  @override
  String get assistantPlanEmpty => 'Ei avoimia tehtäviä suunniteltavaksi. Nauti väljyydestä.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Vapaata keskitysaikaa tänään: $time';
  }

  @override
  String get assistantPlanOverflow => 'Nämä eivät ehkä mahdu tähän päivään:';

  @override
  String get assistantChooseNote => 'Valitse muistiinpano';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tehtävää löytyi',
      one: '1 tehtävä löytyi',
      zero: 'Muistiinpanosta ei löytynyt tehtäviä',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia löytyi',
      one: '1 kortti löytyi',
      zero: 'Muistiinpanosta ei löytynyt kortteja',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Valitse pakka';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Arvioitu työ: $estimated. Vapaa-aika: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Olet suunnitellut enemmän kuin aikaa on. Harkitse vähemmän tärkeiden tehtävien siirtämistä.';

  @override
  String get assistantWorkloadOk => 'Suunnitelmasi mahtuu käytettävissä olevaan aikaan.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avoimella tehtävällä ei ole arviota.',
      one: '1 avoimella tehtävällä ei ole arviota.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Tekoälypalvelu';

  @override
  String get assistantProviderOff =>
      'Palvelua ei ole yhdistetty. Laitteen omat työkalut toimivat silti.';

  @override
  String assistantProviderOn(String host) {
    return 'Yhdistetty: $host';
  }

  @override
  String get assistantEndpoint => 'API-osoite (HTTPS)';

  @override
  String get assistantModel => 'Malli';

  @override
  String get assistantApiKey => 'API-avain';

  @override
  String get assistantApiKeyStored => 'Tallennettu turvallisesti tälle laitteelle';

  @override
  String get assistantHttpsOnly => 'Vain HTTPS-osoitteet ovat sallittuja';

  @override
  String get assistantConsentTitle => 'Lähetetäänkö tämä sisältö tekoälypalveluusi?';

  @override
  String assistantConsentBody(String host) {
    return 'Valittu muistiinpanoteksti lähtee laitteelta, ja $host käsittelee sen. Mitään muuta ei lähetetä.';
  }

  @override
  String get assistantConsentAlways => 'Älä kysy uudelleen tämän palvelun kohdalla';

  @override
  String get assistantSend => 'Lähetä';

  @override
  String get assistantUnavailable =>
      'Tekoälypalveluun ei saatu yhteyttä. Yritä myöhemmin uudelleen.';

  @override
  String get assistantDisabledTitle => 'Avustaja on pois päältä';

  @override
  String get assistantDisabledMessage =>
      'Ota se käyttöön käyttääksesi suunnittelutyökaluja. Tietoja ei lähde laitteeltasi, ellet yhdistä palvelua ja vahvista jokaista pyyntöä.';

  @override
  String get assistantSummaryTitle => 'Yhteenveto';

  @override
  String get assistantRemoveProvider => 'Poista palvelu';

  @override
  String get settingsTitle => 'Asetukset';

  @override
  String get settingsGeneral => 'Yleiset';

  @override
  String get settingsLanguage => 'Kieli';

  @override
  String get settingsLanguageSystem => 'Laitteen kieli';

  @override
  String get settingsAppearance => 'Ulkoasu';

  @override
  String get settingsTheme => 'Teema';

  @override
  String get themeLight => 'Vaalea';

  @override
  String get themeDark => 'Tumma';

  @override
  String get themeSystem => 'Järjestelmä';

  @override
  String get settingsReduceMotion => 'Vähennä liikettä';

  @override
  String get settingsReduceMotionDesc => 'Vähemmän animaatioita ja liikkuvia taustoja';

  @override
  String get settingsFocus => 'Keskitysajastin';

  @override
  String get settingsWorkLength => 'Keskityksen pituus';

  @override
  String get settingsShortBreak => 'Lyhyt tauko';

  @override
  String get settingsLongBreak => 'Pitkä tauko';

  @override
  String get settingsLongBreakEvery => 'Pitkän tauon väli';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count istunnon välein',
      one: 'joka istunto',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Aloita tauot automaattisesti';

  @override
  String get settingsSound => 'Valmistumisääni';

  @override
  String get settingsDailyFocusTarget => 'Päivittäinen keskitystavoite';

  @override
  String get settingsWeeklyFocusTarget => 'Viikoittainen keskitystavoite';

  @override
  String get settingsNotifications => 'Ilmoitukset';

  @override
  String get settingsNotificationsEnable => 'Salli muistutukset';

  @override
  String get settingsQuietHours => 'Hiljaiset tunnit';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Tapojen, tavoitteiden ja kertauksen muistutukset ovat hiljaa $start–$end';
  }

  @override
  String get settingsReviewReminder => 'Korttien kertausmuistutus';

  @override
  String get settingsPermissionDenied => 'Ilmoitukset on estetty järjestelmän asetuksissa.';

  @override
  String get settingsPrivacy => 'Yksityisyys ja tiedot';

  @override
  String get settingsPrivacyStatement =>
      'Tietosi tallennetaan vain tälle laitteelle salattuina. Ei tiliä, ei analytiikkaa eikä seurantaa.';

  @override
  String get settingsBackup => 'Luo salattu varmuuskopio';

  @override
  String get settingsBackupDesc => 'Suojattu itse valitsemallasi salasanalla';

  @override
  String get settingsRestore => 'Palauta varmuuskopiosta';

  @override
  String get settingsRestoreDesc => 'Korvaa kaikki tämän laitteen tiedot';

  @override
  String get settingsErase => 'Poista kaikki tiedot';

  @override
  String get settingsEraseDesc => 'Poista kaikki tältä laitteelta pysyvästi';

  @override
  String get settingsEraseConfirmTitle => 'Poistetaanko kaikki tiedot?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Kaikki tehtävät, muistiinpanot, kortit, tavoitteet, tavat, tapahtumat ja istunnot poistetaan pysyvästi. Vahvista kirjoittamalla $word.';
  }

  @override
  String get settingsEraseWord => 'POISTA';

  @override
  String get settingsErased => 'Kaikki tiedot poistettu';

  @override
  String get backupPassword => 'Varmuuskopion salasana';

  @override
  String get backupPasswordConfirm => 'Vahvista salasana';

  @override
  String backupPasswordHint(int count) {
    return 'Vähintään $count merkkiä. Sitä ei voi palauttaa, jos se unohtuu.';
  }

  @override
  String get backupPasswordMismatch => 'Salasanat eivät täsmää';

  @override
  String get backupPasswordShort => 'Salasana on liian lyhyt';

  @override
  String get backupCreating => 'Salataan varmuuskopiota…';

  @override
  String get backupCreated => 'Varmuuskopio on valmis tallennettavaksi';

  @override
  String get backupRestoring => 'Tarkistetaan ja palautetaan…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kohdetta palautettu',
      one: '1 kohde palautettu',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Väärä salasana, tai tiedostoa on muutettu.';

  @override
  String get backupNotABackup => 'Tämä tiedosto ei ole Deep Focusin varmuuskopio.';

  @override
  String get backupCorrupted => 'Varmuuskopiotiedosto on vioittunut.';

  @override
  String get backupNewer =>
      'Tämä varmuuskopio on tehty sovelluksen uudemmalla versiolla. Päivitä ensin.';

  @override
  String get backupRestoreConfirmTitle => 'Korvataanko kaikki tiedot?';

  @override
  String get backupRestoreConfirmBody =>
      'Kaikki laitteella nyt oleva korvataan varmuuskopiolla. Jos palautus epäonnistuu, mikään ei muutu.';

  @override
  String get settingsAbout => 'Tietoja';

  @override
  String settingsVersion(String version) {
    return 'Versio $version';
  }

  @override
  String get settingsLicenses => 'Avoimen lähdekoodin lisenssit';

  @override
  String get settingsAssistant => 'Avustaja';

  @override
  String get settingsAssistantEnable => 'Ota avustaja käyttöön';

  @override
  String get settingsDashboard => 'Kotinäkymän osiot';

  @override
  String get settingsTrash => 'Roskakori';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Roskakori on tyhjä';

  @override
  String get trashHint => 'Poistetut kohteet pysyvät täällä, kunnes poistat ne.';

  @override
  String get trashTasks => 'Tehtävät';

  @override
  String get trashNotes => 'Muistiinpanot';

  @override
  String get onboardWelcomeTitle => 'Tervetuloa uuteen työtilaasi';

  @override
  String get onboardWelcomeBody =>
      'Tehtävät, keskitys, kalenteri, muistiinpanot, kortit, tavoitteet ja tavat – yhdessä, kauniin yksinkertaisesti.';

  @override
  String get onboardPrivateTitle => 'Yksityinen alusta asti';

  @override
  String get onboardPrivateBody =>
      'Kaikki pysyy salattuna tällä laitteella. Ei tiliä. Ei seurantaa. Sinä päätät.';

  @override
  String get onboardLanguageTitle => 'Valitse kieli';

  @override
  String get onboardNotifTitle => 'Lempeät muistutukset';

  @override
  String get onboardNotifBody =>
      'Salli ilmoitukset tehtävämuistutuksia ja keskityshälytyksiä varten. Voit muuttaa tätä milloin tahansa.';

  @override
  String get onboardGetStarted => 'Aloitetaan';

  @override
  String onboardStep(int current, int total) {
    return 'Vaihe $current/$total';
  }

  @override
  String get notifChannelReminders => 'Muistutukset';

  @override
  String get notifChannelRemindersDesc =>
      'Tehtävien, tapahtumien, tapojen ja tavoitteiden muistutukset';

  @override
  String get notifChannelFocus => 'Keskitysajastin';

  @override
  String get notifChannelFocusDesc => 'Ilmoitukset, kun keskitysistunto tai tauko päättyy';

  @override
  String get notifTaskTitle => 'Tehtävämuistutus';

  @override
  String get notifEventTitle => 'Tuleva tapahtuma';

  @override
  String notifEventBody(String title, String time) {
    return '$title klo $time';
  }

  @override
  String get notifFocusDoneTitle => 'Keskitysistunto valmis';

  @override
  String get notifFocusDoneBody => 'Hienoa työtä. Aika pitää tauko.';

  @override
  String get notifBreakDoneTitle => 'Tauko on ohi';

  @override
  String get notifBreakDoneBody => 'Valmiina seuraavaan keskitysistuntoon?';

  @override
  String get notifHabitTitle => 'Tapamuistutus';

  @override
  String get notifReviewTitle => 'Korttisi odottavat';

  @override
  String get notifReviewBody => 'Lyhyt kertaus pitää muistin vahvana.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationHours(int hours) {
    return '$hours h';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String percentValue(int value) {
    return '$value %';
  }

  @override
  String get weekdaysShort => 'M,T,K,T,P,L,S';

  @override
  String a11yProgress(int value) {
    return 'Edistyminen $value prosenttia';
  }

  @override
  String a11yPriority(String level) {
    return 'Tärkeys: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Väri $index';
  }

  @override
  String get analyticsRangeLabel => 'Aikaväli';

  @override
  String get analyticsRefresh => 'Päivitä';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done/$total erääntyvää tehtävää valmistui ajallaan';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done/$total tehtävää valmiina';
  }

  @override
  String get analyticsNoProjects => 'Ei aktiivisia projekteja';

  @override
  String get analyticsNoFocus => 'Ei keskitysistuntoja tällä aikavälillä';

  @override
  String get analyticsHabitsNone => 'Ei aktiivisia tapoja';

  @override
  String get analyticsRetentionNote => 'Osuus opituista korteista, jotka muistit';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Vapaa-aika lasketaan $start–$end työpäivinä ($days), vähennettynä kellonajallisilla tapahtumilla. Arvioitu työ on seuraavan 7 päivän aikana erääntyvien avointen tehtävien arvioiden summa.';
  }

  @override
  String get assistantWorkdaysMonFri => 'maanantai–perjantai';

  @override
  String get assistantWorkdaysSunThu => 'sunnuntai–torstai';

  @override
  String get assistantWorkloadDayOff => 'Vapaapäivä';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated suunniteltu · $free vapaana';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Suunniteltu nyt–$end, päivän tapahtumien lomaan. Ensin myöhässä olevat tehtävät, sitten tärkeys, määräpäivä ja arvio.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get assistantScheduleBlocks => 'Ajoita aikalohkoiksi';

  @override
  String get assistantScheduleConfirmTitle => 'Lisätäänkö aikalohkot kalenteriisi?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tämän päivän kalenteriin lisätään $count aikalohkoa.',
      one: 'Tämän päivän kalenteriin lisätään 1 aikalohko.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aikalohkoa lisätty',
      one: '1 aikalohko lisätty',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Jo kalenterissasi';

  @override
  String get assistantPlanTimeline => 'Mahtuu tähän päivään';

  @override
  String get assistantNoEstimate => 'Lisää arvio, jotta nämä voi suunnitella';

  @override
  String get assistantNoNotes => 'Ei vielä muistiinpanoja. Kirjoita ensin muistiinpano.';

  @override
  String get assistantNoteEmpty => 'Tämä muistiinpano on tyhjä.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tehtävää luotu',
      one: '1 tehtävä luotu',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia luotu',
      one: '1 kortti luotu',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Luo $count',
      one: 'Luo 1',
      zero: 'Mitään ei ole valittu',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Tunnistetaan: tyhjät valintaruudut ”- [ ]” ja rivit, jotka alkavat TODO: tai To do:';

  @override
  String get assistantCardsHint =>
      'Tunnistetaan: ”käsite: määritelmä”, ”käsite — määritelmä” ja Q:/A:-riviparit';

  @override
  String get assistantProviderHint =>
      'Käytä mitä tahansa OpenAI-yhteensopivaa palvelua. Avain pysyy laitteen suojatussa tallennustilassa eikä sitä koskaan sisällytetä varmuuskopioihin.';

  @override
  String get assistantEndpointHelp => 'Esimerkiksi https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Jätä tyhjäksi, niin tallennettu avain säilyy';

  @override
  String get assistantApiKeyRequired => 'Anna API-avain';

  @override
  String get assistantProviderSaved => 'Palvelu tallennettu';

  @override
  String get assistantProviderRemoved => 'Palvelu poistettu ja avain poistettu';

  @override
  String get assistantRemoveProviderConfirm =>
      'Poistetaanko palvelu ja tallennettu API-avain tältä laitteelta?';

  @override
  String get assistantAskEveryTime => 'Kysy ennen jokaista pyyntöä';

  @override
  String get assistantSummarizing => 'Tiivistetään…';

  @override
  String assistantSummaryNote(String host) {
    return 'Tuottanut $host. Tarkista ennen kuin luotat siihen.';
  }

  @override
  String get assistantCopy => 'Kopioi';

  @override
  String get assistantCopied => 'Kopioitu';

  @override
  String get assistantConfigure => 'Määritä palvelu';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get calendarSeriesMoved => 'Kaikki sarjan tapahtumat siirrettiin';

  @override
  String get calendarEventReminder => 'Muistutus';

  @override
  String get calendarEventRepeat => 'Toisto';

  @override
  String get calendarEventColor => 'Väri';

  @override
  String get calendarDefaultColor => 'Käytä tyypin väriä';

  @override
  String get calendarEventLinkedTask => 'Linkitetty tehtävä';

  @override
  String get calendarEventNoTask => 'Ei linkitettyä tehtävää';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tapahtumaa',
      one: '1 tapahtuma',
      zero: 'Ei tapahtumia',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tehtävää erääntyy',
      one: '1 tehtävä erääntyy',
      zero: 'ei erääntyviä tehtäviä',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Lisää tapahtuma tai aikalohko suunnitellaksesi tämän päivän.';

  @override
  String get calendarNow => 'Nykyinen aika';

  @override
  String get calendarRecurring => 'Toistuu';

  @override
  String get calendarEventNotFound => 'Tätä tapahtumaa ei ole enää olemassa';

  @override
  String get calendarEventLocalTime => 'Ajat näytetään laitteesi aikavyöhykkeellä';

  @override
  String get calendarEventDeleted => 'Tapahtuma siirretty roskakoriin';

  @override
  String get calendarConflictMarker => 'Päällekkäin toisen tapahtuman kanssa';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Muutokset koskevat sarjan kaikkia tapahtumia';

  @override
  String get calendarDragHintSeries => 'Toistuvan tapahtuman vetäminen siirtää koko sarjan';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, tehtävä erääntyy';
  }

  @override
  String get startupErrorTitle => 'Tietojasi ei voitu avata';

  @override
  String get startupErrorLocked =>
      'Tämän laitteen tietojen salausavain ei ole käytettävissä. Mitään ei ole poistettu. Laitteen uudelleenkäynnistys auttaa usein. Jos palautit laitteen äskettäin, palauta tietosi sen sijaan salatusta varmuuskopiosta.';

  @override
  String get startupErrorCipher =>
      'Tämä laite ei tue sovelluksen vaatimaa salattua tallennusta. Mitään ei ole tallennettu salaamattomana.';

  @override
  String get startupErrorRetry => 'Yritä uudelleen';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia odottaa kertausta',
      one: '1 kortti odottaa kertausta',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count kerrattavana';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count uutta';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Opitut kortit: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Anna 0 tai enemmän';

  @override
  String get flashcardsSearchCards => 'Hae kortteja';

  @override
  String get flashcardsSearchEmpty => 'Hakuasi vastaavia kortteja ei löytynyt';

  @override
  String get flashcardsCardAdded => 'Kortti lisätty';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Kertaus $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopioi leikepöydälle';

  @override
  String get flashcardsExportTitle => 'Vie pakka';

  @override
  String get flashcardsDeleteDeck => 'Poista pakka';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, seuraava kertaus $interval kuluttua';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Kysymys: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Vastaus: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Näytä kysymys';

  @override
  String get flashcardsImportField => 'Tuotavat kortit';

  @override
  String get flashcardsNothingToStudy => 'Ei opiskeltavaa';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia valmiina opiskeluun',
      one: '1 kortti valmiina opiskeluun',
      zero: 'Ei valmiita kortteja',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Arvion mukaan';

  @override
  String get flashcardsDeckNotFound => 'Tämä pakka ei ole enää saatavilla.';

  @override
  String get focusSessionDeleted => 'Istunto poistettu';

  @override
  String get focusDeleteConfirm =>
      'Poistetaanko tämä istunto historiastasi? Sen aikaa ei enää lasketa tavoitteisiisi.';

  @override
  String get focusUnlinkTask => 'Poista linkitetty tehtävä';

  @override
  String get focusNoteHint => 'Mitä teit?';

  @override
  String get focusTargetCaption => 'Mitattu tallennetuista istunnoista';

  @override
  String get focusModeLabel => 'Ajastintila';

  @override
  String focusUpNext(String phase) {
    return 'Seuraavaksi: $phase';
  }

  @override
  String get focusStopwatchHint => 'Laskee ylöspäin, kunnes lopetat.';

  @override
  String get focusOpenHint => 'Ei aikarajaa. Lopeta, kun olet valmis.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Muistutukset on poistettu käytöstä asetuksissa. Et saa ilmoitusta, kun istunto päättyy.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Kaikki';

  @override
  String get goalsFilterPeriod => 'Jaksosuodatin';

  @override
  String get goalsFilterStatus => 'Tilasuodatin';

  @override
  String get goalsEmptyFiltered => 'Yksikään tavoite ei vastaa tätä suodatinta';

  @override
  String goalsDueOn(String date) {
    return 'Määräpäivä $date';
  }

  @override
  String get goalsDeadline => 'Takaraja (valinnainen)';

  @override
  String get goalsNoDeadline => 'Ei takarajaa';

  @override
  String get goalsSetDeadline => 'Aseta takaraja';

  @override
  String get goalsRemoveDeadline => 'Poista takaraja';

  @override
  String get goalsDescription => 'Kuvaus (valinnainen)';

  @override
  String get goalsTitleLabel => 'Otsikko';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Tavoite saavutettu';

  @override
  String get goalsLogged => 'Edistyminen kirjattu';

  @override
  String get goalsEntryDeleted => 'Merkintä poistettu';

  @override
  String get goalsDeleteEntry => 'Poista merkintä';

  @override
  String get goalsDeleted => 'Tavoite poistettu';

  @override
  String get goalsMarkActive => 'Merkitse aktiiviseksi';

  @override
  String get goalsNotFound => 'Tämä tavoite ei ole enää saatavilla';

  @override
  String get goalsLinkTask => 'Linkitä tehtävä';

  @override
  String get goalsNoLinkedTasks => 'Ei vielä linkitettyjä tehtäviä';

  @override
  String get goalsUnlinkTask => 'Poista tehtävän linkitys';

  @override
  String get goalsTaskOpen => 'Ei vielä valmis';

  @override
  String get goalsTaskLinked => 'Tehtävä linkitetty';

  @override
  String get goalsTaskUnlinked => 'Tehtävän linkitys poistettu';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valmista linkitettyä tehtävää',
      one: '1 valmiin linkitetyn tehtävän',
    );
    return 'Sisältää tällä jaksolla $_temp0';
  }

  @override
  String get goalsHistoryAllTime =>
      'Aiempien jaksojen merkinnät säilyvät täällä, mutta ne lasketaan vain omaan jaksoonsa.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done/$total tehty tänään';
  }

  @override
  String get habitsNothingToday => 'Tälle päivälle ei ole ajoitettu tapoja';

  @override
  String get habitsDecrease => 'Poista yksi merkintä';

  @override
  String get habitsResetToday => 'Nollaa tämä päivä';

  @override
  String get habitsCheckInHint => 'Säädä painamalla pitkään';

  @override
  String get habitsName => 'Nimi';

  @override
  String get habitsColor => 'Väri';

  @override
  String get habitsValidationDays => 'Valitse vähintään yksi päivä';

  @override
  String habitsReminderAt(String time) {
    return 'Joka päivä klo $time';
  }

  @override
  String get habitsSetReminder => 'Aseta muistutuksen aika';

  @override
  String get habitsRemoveReminder => 'Poista muistutus';

  @override
  String get habitsReminderNote =>
      'Muistutukset näkyvät ajoitettuina päivinä, kun ilmoitukset ovat sallittuja.';

  @override
  String get habitsArchived => 'Tapa arkistoitu';

  @override
  String get habitsNotFound => 'Tämä tapa ei ole enää saatavilla';

  @override
  String get habitsLast30 => 'Viimeiset 30 päivää';

  @override
  String get habitsConsistencyNone => 'Ei vielä tarpeeksi tietoa';

  @override
  String get habitsCalendar => 'Merkintähistoria';

  @override
  String get habitsCalendarHint => 'Korjaa päivää napauttamalla sitä.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count/$target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Merkinnät viimeisten 90 päivän ajalta. Säännöllisyys $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Merkinnät viimeisten 90 päivän ajalta. Ei vielä tarpeeksi tietoa.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivää',
      one: '1 päivä',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Taukopäivät eivät vaikuta putkeesi.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arkistoi tapa';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kertaa päivässä',
      one: 'Kerran päivässä',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Muut muistiinpanot';

  @override
  String get notesAllNotebooks => 'Kaikki muistikirjat';

  @override
  String get notesNotebookName => 'Muistikirjan nimi';

  @override
  String get notesNotebookColor => 'Väri';

  @override
  String get notesDeleteNotebook => 'Poista muistikirja';

  @override
  String get notesDeleteNotebookMessage =>
      'Muistikirja poistetaan. Sen muistiinpanot säilyvät ja näkyvät kohdassa Kaikki muistikirjat.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Kiinnitä tärkeät muistiinpanot, niin ne pysyvät ylimpänä.';

  @override
  String get notesEmptyFavorites => 'Suosikeiksi merkitsemäsi muistiinpanot näkyvät täällä.';

  @override
  String get notesEmptyArchived => 'Arkistoidut muistiinpanot näkyvät täällä.';

  @override
  String get notesEmptyFiltered => 'Yksikään muistiinpano ei vastaa näitä suodattimia.';

  @override
  String get notesArchivedSnack => 'Muistiinpano arkistoitu';

  @override
  String get notesUnarchivedSnack => 'Muistiinpano palautettu muistiinpanoihisi';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done/$total valmiina';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Muotoilu';

  @override
  String get notesWrite => 'Kirjoita';

  @override
  String get notesPreviewEmpty => 'Ei vielä esikatseltavaa.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Mikään muu muistiinpano ei vielä linkitä tänne. Linkitä tähän muistiinpanoon kirjoittamalla [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Anna muistiinpanolle otsikko, jotta muut muistiinpanot voivat linkittää siihen.';

  @override
  String get notesLinkedTasksEmpty => 'Tähän muistiinpanoon ei ole linkitetty tehtäviä.';

  @override
  String notesLinkMissing(String title) {
    return 'Otsikolla ”$title” ei ole vielä muistiinpanoa.';
  }

  @override
  String get notesNotFound => 'Tätä muistiinpanoa ei ole enää olemassa.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Tarkistuslistan kohta: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Avaa muistiinpano $title';
  }

  @override
  String get notesTaskDone => 'Valmis';

  @override
  String get notifTimerDoneBody => 'Asettamasi aika on kulunut.';

  @override
  String get onboardingPrivatePointDevice => 'Tallennetaan salattuna vain tälle laitteelle';

  @override
  String get onboardingPrivatePointAccount => 'Tiliä ei tarvita';

  @override
  String get onboardingPrivatePointTracking => 'Ei analytiikkaa, ei seurantaa';

  @override
  String get onboardingLanguageBody => 'Voit muuttaa tätä milloin tahansa asetuksissa.';

  @override
  String get onboardingNext => 'Seuraava';

  @override
  String get projectsActive => 'Aktiiviset';

  @override
  String get projectNameHint => 'esim. Tuotelanseeraus';

  @override
  String get projectGoalHint => 'Miltä valmis näyttää?';

  @override
  String get projectNoDeadline => 'Ei takarajaa';

  @override
  String get projectTasksOpen => 'Avoimet tehtävät';

  @override
  String get projectTasksCompleted => 'Valmiit tehtävät';

  @override
  String get projectAddTask => 'Lisää tehtävä projektiin';

  @override
  String get projectAddNote => 'Uusi projektimuistiinpano';

  @override
  String get projectLinkedNotes => 'Muistiinpanot';

  @override
  String get projectNoTasks => 'Tässä projektissa ei ole vielä tehtäviä';

  @override
  String get projectArchivedBadge => 'Arkistoitu';

  @override
  String get projectDeleted => 'Projekti siirretty roskakoriin';

  @override
  String get projectDeleteMessage => 'Tehtävät jäävät listaasi ilman projektia.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent prosenttia valmiina';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tulosta',
      one: '1 tulos',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Suodata tyypin mukaan';

  @override
  String searchRecentTap(String query) {
    return 'Hae uudelleen: $query';
  }

  @override
  String get settingsLanguageHint =>
      'Valitse koko sovelluksen kieli. Nimet näytetään niiden omalla kielellä.';

  @override
  String get settingsThemeHint => 'Vaalea, tumma tai järjestelmän mukaan';

  @override
  String settingsDecrease(String setting) {
    return 'Pienennä: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Suurenna: $setting';
  }

  @override
  String get settingsQuietStart => 'Alkaa';

  @override
  String get settingsQuietEnd => 'Päättyy';

  @override
  String get settingsNotificationsHint =>
      'Tämä tallentaa valintasi sovellukseen. Järjestelmä voi myös pyytää lupaa.';

  @override
  String get settingsDashboardHint =>
      'Muuta järjestystä vetämällä. Poista käytöstä osiot, joita et tarvitse.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Siirrä osiota $section';
  }

  @override
  String get settingsDashboardReset => 'Palauta oletusjärjestys';

  @override
  String get settingsAssistantDesc =>
      'Valinnaista suunnitteluapua. Mitään ei lähde laitteelta, ellet yhdistä palvelua.';

  @override
  String get settingsAssistantSetup => 'Avustaja ja palvelun asetukset';

  @override
  String get settingsTrashDesc => 'Palauta tai poista poistetut kohteet pysyvästi';

  @override
  String get settingsEraseFirstBody =>
      'Tätä ei voi kumota. Harkitse ensin salatun varmuuskopion luomista.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Kirjoita $word';
  }

  @override
  String get settingsEraseFailed => 'Tietoja ei voitu poistaa. Mitään ei muutettu.';

  @override
  String get settingsAboutTagline => 'Yksityinen, paikallisesti toimiva tuottavuustila.';

  @override
  String get backupShowPassword => 'Näytä salasana';

  @override
  String get backupHidePassword => 'Piilota salasana';

  @override
  String get backupSaved => 'Varmuuskopio tallennettu';

  @override
  String get backupFailed => 'Varmuuskopiota ei voitu luoda. Tietosi ovat ennallaan.';

  @override
  String get backupReadFailed => 'Valittua tiedostoa ei voitu lukea.';

  @override
  String get backupRestoreFailed => 'Palautus epäonnistui. Mitään ei muutettu.';

  @override
  String get backupShareSubject => 'Deep Focusin salattu varmuuskopio';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivän välein',
      one: 'Joka päivä',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viikon välein',
      one: 'Joka viikko',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kuukauden välein',
      one: 'Joka kuukausi',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vuoden välein',
      one: 'Joka vuosi',
    );
    String _temp4 = intl.Intl.selectLogic(unit, {
      'day': '$_temp0',
      'week': '$_temp1',
      'month': '$_temp2',
      'other': '$_temp3',
    });
    return '$_temp4';
  }

  @override
  String repeatOnWeekdays(String days) {
    return 'päivinä $days';
  }

  @override
  String get repeatEndsLabel => 'Päättyy';

  @override
  String get repeatEndsAfter => 'Tietyn kertamäärän jälkeen';

  @override
  String get repeatCountLabel => 'Kertoja';

  @override
  String get reminderNone => 'Ei muistutusta';

  @override
  String get reminderCustomTime => 'Tiettynä aikana';

  @override
  String get a11yDecrease => 'Pienennä';

  @override
  String get a11yIncrease => 'Suurenna';

  @override
  String get pickTaskTitle => 'Valitse tehtävä';

  @override
  String get pickTaskEmpty => 'Ei avoimia tehtäviä';

  @override
  String get tasksSearchTooltip => 'Hae tehtäviä';

  @override
  String get tasksSectionOverdue => 'Myöhässä';

  @override
  String get tasksSectionToday => 'Tänään';

  @override
  String get tasksRecurringSemantics => 'Toistuu';

  @override
  String get tasksFilterPriorityAtLeast => 'Vähimmäistärkeys';

  @override
  String get tasksFilterCategory => 'Luokka';

  @override
  String get tasksFilterAnyCategory => 'Kaikki luokat';

  @override
  String get tasksFilterLabel => 'Tunniste';

  @override
  String get tasksFilterAnyLabel => 'Kaikki tunnisteet';

  @override
  String get tasksFilterReset => 'Nollaa suodattimet';

  @override
  String get tasksViewByProject => 'Projekteittain';

  @override
  String get tasksViewByPriority => 'Tärkeyden mukaan';

  @override
  String get tasksViewByCategory => 'Luokittain';

  @override
  String get tasksGroupNoCategory => 'Ei luokkaa';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tehtävää',
      one: '1 tehtävä',
    );
    return 'Estäjänä $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Keskeneräiset tehtävät estävät tämän tehtävän. Merkitäänkö se silti valmiiksi?';

  @override
  String get taskStartFocus => 'Keskity tähän tehtävään';

  @override
  String get taskRemoveDate => 'Poista päivämäärä';

  @override
  String get taskAllDay => 'Ei tiettyä kellonaikaa';

  @override
  String get taskSaved => 'Tehtävä tallennettu';

  @override
  String get taskCreated => 'Tehtävä luotu';

  @override
  String get taskReminderNeedsDue => 'Aseta määräpäivä käyttääksesi suhteellisia muistutuksia';

  @override
  String get taskSubtaskDetailsHint =>
      'Tallenna tehtävä ensin, jotta voit lisätä alitehtäviä, tarkistuslistan kohtia, tunnisteita ja riippuvuuksia.';

  @override
  String get taskLabelName => 'Tunnisteen nimi';

  @override
  String get taskMoreDetails => 'Lisätiedot';

  @override
  String get taskPlanning => 'Suunnittelu';

  @override
  String get taskOrganize => 'Järjestely';

  @override
  String get taskBreakdown => 'Jako osiin';

  @override
  String get trashDeleteTaskTitle => 'Poistetaanko tämä tehtävä pysyvästi?';

  @override
  String get trashDeleteNoteTitle => 'Poistetaanko tämä muistiinpano pysyvästi?';

  @override
  String get trashDeleteBody => 'Tätä ei voi kumota.';

  @override
  String get trashEmptyTitle => 'Tyhjennetäänkö roskakori?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kohdetta poistetaan pysyvästi.',
      one: '1 kohde poistetaan pysyvästi.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Palautettu';

  @override
  String get trashPurged => 'Poistettu pysyvästi';

  @override
  String trashDeletedOn(String date) {
    return 'Poistettu $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kohdetta',
      one: '1 kohde',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Lue ääneen';

  @override
  String get flashcardsTtsUnavailable =>
      'Tekstistä puheeksi ei ole käytettävissä tällä laitteella.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Tälle kielelle ei ole asennettu ääntä. Lisää ääni Androidin tekstistä puheeksi -asetuksissa.';

  @override
  String get calendarAgenda => 'Ohjelma';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Kipinä',
      'rocket': 'Raketti',
      'book': 'Kirja',
      'work': 'Työ',
      'home': 'Koti',
      'heart': 'Sydän',
      'code': 'Koodi',
      'palette': 'Paletti',
      'fitness': 'Kuntoilu',
      'school': 'Koulu',
      'travel': 'Matkailu',
      'money': 'Säästöt',
      'other': 'Kuvake',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Lisää kenttiä';

  @override
  String get cardFieldExample => 'Esimerkki';

  @override
  String get cardFieldExplanation => 'Selitys';

  @override
  String get cardFieldPronunciation => 'Ääntämys';

  @override
  String get cardFieldNotes => 'Lisähuomiot';

  @override
  String get projectMilestones => 'Välitavoitteet';

  @override
  String get milestoneAdd => 'Lisää välitavoite';

  @override
  String get milestoneEdit => 'Muokkaa välitavoitetta';

  @override
  String get milestoneTitleLabel => 'Välitavoite';

  @override
  String get milestoneNoDate => 'Ei päivämäärää';

  @override
  String get milestonesEmpty =>
      'Ei vielä välitavoitteita. Lisää päivättyjä tarkistuspisteitä seurataksesi projektia kalenterissa.';

  @override
  String get milestoneDeleted => 'Välitavoite poistettu';

  @override
  String milestoneDoneA11y(String title) {
    return 'Merkitse välitavoite ”$title” valmiiksi';
  }

  @override
  String calendarMilestone(String project) {
    return 'Välitavoite · $project';
  }

  @override
  String get tasksViewInbox => 'Saapuneet';

  @override
  String get tasksViewArchived => 'Arkistoidut';

  @override
  String get tasksEmptyInbox =>
      'Tehtävät ilman projektia tai päivämäärää päätyvät tänne. Järjestä ne, kun ehdit.';

  @override
  String get tasksEmptyArchived =>
      'Arkistoidut tehtävät säilytetään täällä, poissa listoistasi ja muistutuksistasi.';

  @override
  String get taskArchivedBadge => 'Arkistoitu';

  @override
  String get taskStatusInProgress => 'Työn alla';

  @override
  String get taskArchived => 'Tehtävä arkistoitu';

  @override
  String get taskUnarchived => 'Tehtävä palautettu arkistosta';

  @override
  String get focusPlanTitle => 'Istuntosuunnitelma';

  @override
  String focusPlanTotal(String duration) {
    return 'Yhteensä $duration';
  }

  @override
  String get focusPlanRounds => 'Keskitysistunnot';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Pitkän tauon väli';

  @override
  String get focusPlanSkipLastBreak => 'Ohita viimeinen tauko';

  @override
  String get focusPlanAutoBreaks => 'Aloita tauot automaattisesti';

  @override
  String get focusPlanAutoFocus => 'Aloita keskitys automaattisesti tauon jälkeen';

  @override
  String get focusPlanSave => 'Tallenna suunnitelma';

  @override
  String get focusPlanNameHint => 'esim. Tenttiin valmistautuminen';

  @override
  String get focusPlanSaved => 'Suunnitelma tallennettu';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min keskitystä, $rest min taukoa';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Pienennä: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Suurenna: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Istunto $current/$total';
  }

  @override
  String get focusSeriesComplete => 'Sarja valmis. Hienoa!';

  @override
  String get filterAll => 'Kaikki';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added tuotu · $duplicates kaksoiskappaletta ohitettu · $invalid puutteellista riviä';
  }

  @override
  String get flashcardsSuspend => 'Keskeytä kortti';

  @override
  String get flashcardsResume => 'Jatka korttia';

  @override
  String get flashcardsSuspended => 'Kortti keskeytetty: sitä ei ajoiteta';

  @override
  String get flashcardsResumed => 'Korttia jatkettu';

  @override
  String get flashcardsSuspendedFilter => 'Keskeytetyt';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown/$total korttia';
  }

  @override
  String get flashcardsImportFile => 'Tiedostosta';

  @override
  String get speechTitle => 'Puhe';

  @override
  String get speechAppLanguage => 'Sovelluksen kieli';

  @override
  String get speechFrontLanguage => 'Etupuolen kieli';

  @override
  String get speechBackLanguage => 'Takapuolen kieli';

  @override
  String get speechRepeat => 'Toista jokainen luenta';

  @override
  String get speechRate => 'Nopeus';

  @override
  String get speechAutoRead => 'Lue kysymys automaattisesti';

  @override
  String get speechHint =>
      'Käyttää laitteelle asennettuja ääniä ilman verkkoa. Jos kielelle ei ole ääntä, saat siitä tiedon eikä mitään muuta käytetä sen sijaan.';

  @override
  String get studyHowTitle => 'Miten haluat opiskella?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kertaa $count korttia',
      one: 'Kertaa 1 kortti',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Harjoittele kaikkia kortteja (aikataulu ei muutu)';

  @override
  String get studyPracticeMistakes => 'Harjoittele viimeisimpiä virheitä';

  @override
  String get studyPracticeHint =>
      'Harjoituskierrokset eivät koskaan muuta korttien kertausaikoja. Kertaus päivittää aikataulun.';

  @override
  String get studyModeClassic => 'Perinteinen';

  @override
  String get studyModeReverse => 'Käänteinen';

  @override
  String get studyModeMixed => 'Molempiin suuntiin';

  @override
  String get studyModeTyped => 'Kirjoita vastaus';

  @override
  String get studyModeChoice => 'Monivalinta';

  @override
  String get studyModeListening => 'Kuuntelu';

  @override
  String get studyPractice => 'harjoitus';

  @override
  String get studyNoMistakes => 'Ei viimeaikaisia virheitä tässä pakassa. Hienoa!';

  @override
  String get studyTypeAnswer => 'Kirjoita vastauksesi';

  @override
  String get studyCheck => 'Tarkista';

  @override
  String get studyKnewIt => 'Tiesin';

  @override
  String get studyDidntKnow => 'En tiennyt';

  @override
  String studyMistakes(int count) {
    return 'Väärin ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Kertaa väärin menneet kortit';

  @override
  String get studyCorrect => 'Oikein';

  @override
  String get studyAlmost => 'Melkein – tarkista kirjoitusasu';

  @override
  String get studyWrong => 'Ei aivan';

  @override
  String get studyShowText => 'Näytä teksti';

  @override
  String get flashcardsImportFileFailed =>
      'Tiedostoa ei voitu avata. Voit liittää sen sisällön sen sijaan.';

  @override
  String get studyNoMatchingCards => 'Tähän valintaan ei vielä sovi yhtään korttia.';

  @override
  String get studyPracticeNew => 'Vain uudet';

  @override
  String get studyPracticeHard => 'Vaikeat kortit';

  @override
  String get studyPracticeFavorites => 'Suosikit';

  @override
  String get studySessionSize => 'Kortteja istuntoa kohden';

  @override
  String get studySessionAll => 'Kaikki';

  @override
  String get studyOrder => 'Järjestys';

  @override
  String get studyOrderDue => 'Eniten myöhässä ensin';

  @override
  String get studyOrderRandom => 'Satunnainen';

  @override
  String get studyOrderHardest => 'Vaikeimmat ensin';

  @override
  String get flashcardsHard => 'Vaikeat';

  @override
  String get flashcardsFavorites => 'Suosikit';

  @override
  String get flashcardsFavorite => 'Lisää suosikkeihin';

  @override
  String get flashcardsUnfavorite => 'Poista suosikeista';

  @override
  String get flashcardsDuplicate => 'Monista';

  @override
  String get flashcardsMoveTo => 'Siirrä pakkaan';

  @override
  String get flashcardsNoOtherDeck => 'Luo ensin toinen pakka.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia siirretty',
      one: 'Kortti siirretty',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Lisää tunniste';

  @override
  String get flashcardsTagHint => 'esim. verbit';

  @override
  String flashcardsSelected(int count) {
    return '$count valittu';
  }

  @override
  String get flashcardsSelectAll => 'Valitse kaikki näytetyt';

  @override
  String flashcardsSelectCard(String front) {
    return 'Valitse $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Muistaminen $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Mahdollinen kaksoiskappale';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Tässä pakassa on jo ”$front” → ”$back”. Tallennetaanko silti?';
  }

  @override
  String get flashcardsSaveAnyway => 'Tallenna silti';

  @override
  String get flashcardsStats => 'Tilastot';

  @override
  String get flashcardsStatTotal => 'Kortit';

  @override
  String get flashcardsStatLearning => 'Opeteltavana';

  @override
  String get flashcardsStatMatureCaption => 'Muistettu yli 21 päivää';

  @override
  String get flashcardsStatReviewsToday => 'Kertaukset tänään';

  @override
  String get flashcardsStatCorrect => 'Oikeat vastaukset';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Viimeiset $days päivää';
  }

  @override
  String get flashcardsStatForget => 'Unohtamisaste';

  @override
  String get flashcardsStatForgetCaption => '”Uudelleen” opituissa korteissa';

  @override
  String get flashcardsStatRecall => 'Muistaminen nyt';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-arvio, kerratut kortit';

  @override
  String flashcardsStatActivity(int count) {
    return 'Kertaukset päivässä · yhteensä $count';
  }

  @override
  String get flashcardsStatHistory => 'Viimeisimmät vastaukset';

  @override
  String get flashcardsStatNoHistory =>
      'Ei vielä kertauksia. Opiskele pakkaa nähdäksesi edistymisesi täällä.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Lue ääneen: $field';
  }

  @override
  String get speechVoice => 'Ääni';

  @override
  String get speechVoiceDefault => 'Automaattinen';

  @override
  String get speechVoiceOnline => 'vaatii internetin';

  @override
  String get speechTest => 'Kokeile ääntä';

  @override
  String get importNext => 'Esikatselu';

  @override
  String get importPreviewTitle => 'Yhdistä sarakkeet kenttiin';

  @override
  String get importIgnoreColumn => 'Ohita';

  @override
  String importColumn(int n) {
    return 'Sarake $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready korttia valmiina · $invalid puutteellista riviä ohitetaan';
  }

  @override
  String get importNeedFrontBack => 'Valitse, mitkä sarakkeet ovat etu- ja takapuoli.';

  @override
  String get actionMoveUp => 'Siirrä ylös';

  @override
  String get actionMoveDown => 'Siirrä alas';

  @override
  String get flashcardsLayoutTitle => 'Kortin asettelu';

  @override
  String get flashcardsLayoutHint =>
      'Nimeä uudelleen, piilota tai järjestä tämän pakan lisäkenttiä. Korttien sisältö ei koskaan muutu.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Näytä $field opiskellessa';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Näytä vastaus vaihe vaiheelta';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Takapuoli näkyy ensin; jokainen lisäkenttä avautuu napautuksella.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Näytä $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Tiedosto on suurempi kuin $mb Mt.';
  }

  @override
  String get flashcardsImage => 'Kuva';

  @override
  String get flashcardsAudio => 'Ääni';

  @override
  String get flashcardsAddImage => 'Lisää kuva';

  @override
  String get flashcardsAddAudio => 'Lisää ääni';

  @override
  String get flashcardsPlayAudio => 'Toista äänite';

  @override
  String get flashcardsAudioUnavailable => 'Tätä äänitettä ei voi toistaa tällä laitteella.';

  @override
  String get flashcardsCustomFields => 'Omat kentät';

  @override
  String get flashcardsTemplates => 'Mallit';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Kenttä $n';
  }

  @override
  String get flashcardsAddField => 'Lisää kenttä';

  @override
  String get flashcardsFieldName => 'Kentän nimi';

  @override
  String get flashcardsFieldLangDefault => 'Puolen kieli';

  @override
  String get flashcardsTemplateConfirm =>
      'Malli määrää, miten kentät näytetään, ja lisää omat kenttänsä. Korttisi ja nykyiset kentät pysyvät ennallaan.';

  @override
  String get flashcardsApplyTemplate => 'Käytä';

  @override
  String get templateVocabulary => 'Sanasto';

  @override
  String get templateTwoTranslations => 'Sana kahdella käännöksellä';

  @override
  String get templateQuestionAnswer => 'Kysymys ja vastaus';

  @override
  String get templateDefinition => 'Käsite ja määritelmä';

  @override
  String get templateGrammar => 'Kielioppisääntö';

  @override
  String get templateFieldPlural => 'Monikko';

  @override
  String get templateFieldTranslation2 => 'Toinen käännös';

  @override
  String get templateFieldSynonyms => 'Synonyymit';

  @override
  String get templateFieldRule => 'Sääntö';

  @override
  String get deckCategory => 'Taso tai aihe';

  @override
  String get deckCategoryHint => 'esim. A1, Lääketiede';

  @override
  String get flashcardsSearchAll => 'Hae kaikista korteista';

  @override
  String get flashcardsSearchAllHint => 'Sana, käännös, esimerkki, huomautus, tunniste…';

  @override
  String get flashcardsAllDecks => 'Kaikki pakat';

  @override
  String get flashcardsAllLanguages => 'Kaikki kielet';

  @override
  String get flashcardsLangUnset => 'Kieltä ei ole asetettu';

  @override
  String get flashcardsLevelUnset => 'Ei tasoa tai aihetta';

  @override
  String get flashcardsByLanguage => 'Edistyminen kielittäin';

  @override
  String get flashcardsByLevel => 'Edistyminen tason tai aiheen mukaan';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks pakkaa · $cards korttia · $mature opittua · $due kerrattavana · $correct oikein (30 päivää)';
  }

  @override
  String get flashcardsRecord => 'Äänitä';

  @override
  String get flashcardsRecording => 'Äänitetään…';

  @override
  String get flashcardsRecordStop => 'Lopeta ja säilytä';

  @override
  String get flashcardsMicDenied =>
      'Mikrofonin käyttö on estetty. Salli se järjestelmän asetuksissa äänittääksesi.';

  @override
  String get flashcardsRecordFailed => 'Äänitys ei ole käytettävissä tällä laitteella.';

  @override
  String get soundsTitle => 'Äänet';

  @override
  String get soundsNature => 'Luonto';

  @override
  String get soundsNoise => 'Keskittymiskohina';

  @override
  String get soundRain => 'Sade';

  @override
  String get soundStorm => 'Ukkosmyrsky';

  @override
  String get soundRiver => 'Joki';

  @override
  String get soundOcean => 'Meren aallot';

  @override
  String get soundFire => 'Nuotio';

  @override
  String get soundForest => 'Metsän linnut';

  @override
  String get soundNight => 'Kesäyö';

  @override
  String get soundWhite => 'Valkoinen kohina';

  @override
  String get soundPink => 'Vaaleanpunainen kohina';

  @override
  String get soundBrown => 'Ruskea kohina';

  @override
  String get soundsPlay => 'Toista';

  @override
  String get soundsSleep => 'Uniajastin';

  @override
  String get soundsSleepOff => 'Pois';

  @override
  String soundsSleepAt(String time) {
    return 'Pysähtyy klo $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Enintään $count ääntä voi soida yhtä aikaa.';
  }

  @override
  String get soundsHint =>
      'Aloita napauttamalla ääntä. Yhdistele useita ja säädä jokaisen äänenvoimakkuus.';

  @override
  String get soundsMixer => 'Miksaus';

  @override
  String soundsVolumeOf(String name) {
    return 'Äänen $name voimakkuus';
  }

  @override
  String get soundsChannel => 'Luonnon äänet';

  @override
  String get settingsEndTone => 'Ajastimen loppuääni';

  @override
  String get toneGentle => 'Pehmeät piippaukset';

  @override
  String get toneBeeps => 'Piippaukset';

  @override
  String get toneWood => 'Koputus puuhun';

  @override
  String get toneBird => 'Linnun huuto';

  @override
  String get toneStream => 'Puro';

  @override
  String get toneSystem => 'Puhelimen ääni';

  @override
  String get speechOnPhone => 'Tässä puhelimessa';

  @override
  String get speechAllLanguages => 'Kaikki kielet';

  @override
  String get speechSearchLanguage => 'Hae kieliä';

  @override
  String get speechGetVoices => 'Lataa lisää ääniä';

  @override
  String get speechGetVoicesHint =>
      'Kielille, joilla ei ole ääntä, voi ladata äänen puhelimen puheasetuksista.';

  @override
  String get speechSettingsFailed => 'Tämän puhelimen puheasetuksia ei voitu avata.';

  @override
  String get speechVoiceMissing => 'Ääntä ei ole asennettu';

  @override
  String get speechPause => 'Tauko toistojen välillä';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Lue esimerkki vastauksen kanssa';

  @override
  String get flashListen => 'Kuuntele';

  @override
  String get flashListenNext => 'Seuraava kortti';

  @override
  String get flashListenEmpty => 'Ei kuunneltavia kortteja.';

  @override
  String get flashViewTable => 'Taulukko';

  @override
  String get flashViewCards => 'Kortit';

  @override
  String get flashSwapSides => 'Vaihda sarakkeet';

  @override
  String get flashSort => 'Järjestä';

  @override
  String get flashSortNewest => 'Uusimmat ensin';

  @override
  String get flashSortAlpha => 'A–Ö';

  @override
  String get flashSortDue => 'Kerrattavat ensin';

  @override
  String get flashSortHard => 'Vaikeimmat ensin';

  @override
  String get flashPasteCards => 'Liitä kortteja';

  @override
  String get flashClipboardEmpty => 'Leikepöydällä ei ole tekstiä.';

  @override
  String get flashMenuAdd => 'Lisää kortteja';

  @override
  String get flashMenuDeck => 'Pakka';

  @override
  String get flashToday => 'Tänään';

  @override
  String get flashStudyNow => 'Opiskele';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia vastattu',
      one: '1 kortti vastattu',
      zero: 'Ei vastattuja kortteja',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Sade metsässä';

  @override
  String get autoBackupTitle => 'Automaattiset varmuuskopiot';

  @override
  String get autoBackupDesc => 'Joka päivä tähän puhelimeen; viimeiset 7 säilytetään';

  @override
  String get autoBackupHint =>
      'Nämä kopiot pysyvät tässä puhelimessa ja poistuvat, jos sovellus poistetaan. Kun vaihdat puhelinta, tallenna tiedosto kohdasta ”Varmuuskopioi”.';

  @override
  String get autoBackupNone => 'Ei vielä automaattista varmuuskopiota. Ensimmäinen tehdään tänään.';

  @override
  String get autoBackupRestore => 'Palauta';

  @override
  String autoBackupConfirm(String date) {
    return 'Korvataanko kaikki nykyiset tiedot varmuuskopiolla, joka on tehty $date?';
  }

  @override
  String get autoBackupRestored => 'Palautettu.';

  @override
  String get errorLogTitle => 'Virheloki';

  @override
  String get errorLogHint =>
      'Jos jokin menee vikaan, siitä tehdään merkintä tänne: vain virheen tyyppi ja kohta koodissa, ei koskaan sisältöäsi. Jaa se auttaaksesi ongelman korjaamisessa.';

  @override
  String get errorLogEmpty => 'Virheitä ei ole kirjattu.';

  @override
  String get errorLogClear => 'Tyhjennä';

  @override
  String get soundsWithFocus => 'Soita keskitysistuntojen aikana';

  @override
  String get soundsWithFocusHint =>
      'Miksaus alkaa keskitysistunnon kanssa ja tauottuu taukojen ajaksi.';

  @override
  String get soundsSavedMixes => 'Tallennetut miksaukset';

  @override
  String get soundsSaveMix => 'Tallenna tämä miksaus';

  @override
  String get soundsMixNameHint => 'Nimi, esim. Sateinen kirjasto';

  @override
  String soundsDeleteMix(String name) {
    return 'Poistetaanko miksaus ”$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Kerran päivässä, vain kun kortteja on kerrattavana';

  @override
  String get settingsReviewTime => 'Muistutuksen aika';

  @override
  String get shortcutFocus => 'Keskitys';

  @override
  String get shortcutNewTask => 'Uusi tehtävä';

  @override
  String get shortcutReview => 'Kertaa kortit';

  @override
  String get shortcutSounds => 'Luonnon äänet';

  @override
  String get myDayTitle => 'Aloita päiväni';

  @override
  String get myDayHint => 'Päiväsi yhdellä silmäyksellä, sitten keskitys yhdellä napautuksella';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tehtävää tänään',
      one: '1 tehtävä tänään',
      zero: 'Ei tehtäviä tänään',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Ei enää tapahtumia tänään';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Seuraavaksi: $title klo $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tapaa jäljellä',
      one: '1 tapa jäljellä',
      zero: 'Kaikki tavat tehty',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Aloita keskitysistunnolla';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-awwal';

  @override
  String get hijriMonth4 => 'Rabi al-thani';

  @override
  String get hijriMonth5 => 'Džumada al-ula';

  @override
  String get hijriMonth6 => 'Džumada al-akhira';

  @override
  String get hijriMonth7 => 'Radžab';

  @override
  String get hijriMonth8 => 'Šaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Šawwal';

  @override
  String get hijriMonth11 => 'Dhu al-qada';

  @override
  String get hijriMonth12 => 'Dhu al-hiddža';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year AH';
  }

  @override
  String get settingsHijri => 'Islamilaiset päivämäärät';

  @override
  String get settingsHijriHint => 'Näytetään kalenterissa ja kotinäkymässä (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivää',
      one: '1 päivä',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Tänään $done/$goal korttia';
  }

  @override
  String get studyGoalReached => 'Päivän tavoite saavutettu. Hienoa!';

  @override
  String get studyWeekTitle => 'Viikkosi';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia vastattu 7 päivässä',
      one: '1 kortti vastattu 7 päivässä',
      zero: 'Ei vastattuja kortteja 7 päivässä',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration keskitystä 7 päivässä';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Putki: $current · Paras: $best';
  }

  @override
  String get studyGoalTitle => 'Päivätavoite (kortit)';

  @override
  String get studyGoalOff => 'Pois';

  @override
  String get focusDndTitle => 'Älä häiritse -tila keskittyessä';

  @override
  String get focusDndHint => 'Kytkeytyy päälle jokaisen keskitysistunnon ajaksi ja pois tauolla';

  @override
  String get focusDndNeedsAccess => 'Salli käyttöoikeus puhelimen asetuksissa käyttääksesi tätä';

  @override
  String get voiceInput => 'Kirjoita puhumalla';

  @override
  String get voiceInputPrompt => 'Puhu nyt';

  @override
  String get voiceInputUnavailable =>
      'Puhekirjoitus ei ole käytettävissä tässä puhelimessa. Asenna tai ota käyttöön puhepalvelu (esimerkiksi Googlen puheentunnistus ja -synteesi).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Auringonnousu';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Muslimimaailman liitto';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egyptin yleinen viranomainen';

  @override
  String get prayerMethodJordan => 'Jordania, awqaf-ministeriö';

  @override
  String get prayerMethodKarachi => 'Islamilaisten tieteiden yliopisto, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Persianlahden alue';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turkki, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malesia, Indonesia';

  @override
  String get prayerMethodFrance => 'Ranska (12°)';

  @override
  String get prayerMethodRussia => 'Venäjä, hengellinen hallinto';

  @override
  String prayerNotifTitle(String name) {
    return 'Aika: $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Rukousaika · $time';
  }

  @override
  String get prayerTitle => 'Rukousajat';

  @override
  String get prayerOffHint =>
      'Valitse kaupunkisi nähdäksesi rukousajat. Ne lasketaan puhelimessa; sijaintia ei tarvita.';

  @override
  String get prayerChooseCity => 'Valitse kaupunki';

  @override
  String get prayerCity => 'Kaupunki';

  @override
  String get prayerCitySearch => 'Hae kaupunkia';

  @override
  String get prayerMethod => 'Laskentatapa';

  @override
  String get prayerHanafiAsr => 'Hanafi-asr (myöhempi aika)';

  @override
  String get prayerReminders => 'Ilmoita jokaisena rukousaikana';

  @override
  String get prayerPauseFocus => 'Keskeytä keskitys rukousajaksi';

  @override
  String get prayerPauseFocusHint => 'Käynnissä oleva istunto keskeytyy; jatka rukouksen jälkeen';

  @override
  String get prayerTurnOff => 'Poista rukousajat käytöstä';

  @override
  String get prayerAccuracyNote =>
      'Lasketut ajat voivat poiketa muutaman minuutin paikallisen moskeijasi ajoista.';

  @override
  String prayerNext(String name, String time) {
    return '$name klo $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Tämä Anki-tiedosto käyttää uusinta muotoa. Vie se Ankissa uudelleen niin, että ”Tue vanhempia Anki-versioita” on päällä, ja tuo sitten se tiedosto.';

  @override
  String get importTemplate => 'Laskentataulukkomalli';

  @override
  String get importTemplateFront => 'omena';

  @override
  String get importTemplateBack => 'pyöreä hedelmä';

  @override
  String get importTemplateExample => 'Syön omenan joka päivä.';

  @override
  String get importTemplateTag => 'ruoka';

  @override
  String get starterTitle => 'Aloituspakat';

  @override
  String get starterHint =>
      'Lisää yksi, niin voit aloittaa opiskelun heti. Voit muokata tai poistaa sen myöhemmin.';

  @override
  String get starterAdd => 'Lisää';

  @override
  String get starterWords => 'Arkisia englannin sanoja (arabia)';

  @override
  String get starterCapitals => 'Maailman pääkaupungit';

  @override
  String get starterElements => 'Alkuaineet';

  @override
  String get settingsAccent => 'Korostusväri';

  @override
  String get accentViolet => 'Violetti';

  @override
  String get accentBlue => 'Sininen';

  @override
  String get accentTeal => 'Sinivihreä';

  @override
  String get accentGreen => 'Vihreä';

  @override
  String get accentRose => 'Ruusu';

  @override
  String get accentAmber => 'Meripihka';

  @override
  String get settingsFlashTextSize => 'Korttien tekstikoko';

  @override
  String get settingsFlashTextSample => 'Esimerkki';

  @override
  String get widgetStartFocus => 'Keskity napauttamalla';

  @override
  String widgetFocusUntil(String time) {
    return 'Keskitys klo $time asti';
  }

  @override
  String get widgetNoCardsDue => 'Kortit: kaikki tehty';

  @override
  String get faqMyDayQ => 'Mitä ”Aloita päiväni” tekee?';

  @override
  String get faqMyDayA =>
      'Kerran päivässä kotinäkymä tarjoaa sitä: näet päivän tehtävät, seuraavan tapahtuman, jäljellä olevat tavat ja kerrattavat kortit, ja voit aloittaa keskitysistunnon yhdellä napautuksella. Paina sovelluksen kuvaketta pitkään pikatoimintoja varten tai lisää kotinäytön widget nähdäksesi keskitysajan ja kerrattavat kortit.';

  @override
  String get faqTasksQ => 'Miten lisään tehtävän muistutuksen kanssa?';

  @override
  String get faqTasksA =>
      'Napauta Uusi tehtävä Kodissa tai + Tehtävissä. Kirjoita otsikko tai sano se mikrofoniin, ja aseta sitten määräpäivä, kellonaika ja muistutus. Myöhässä olevat tehtävät näkyvät ensin.';

  @override
  String get faqFocusQ => 'Miten keskitysajastin toimii?';

  @override
  String get faqFocusA =>
      'Valitse Pomodoro, ajastin tai vapaa aika ja paina Aloita; tauot voivat seurata automaattisesti. Asetuksissa voit valita loppuäänen, kytkeä Älä häiritse -tilan keskittymisen ajaksi ja soittaa luonnon ääniä jokaisen istunnon aikana.';

  @override
  String get faqSoundsQ => 'Voinko yhdistellä luonnon ääniä?';

  @override
  String get faqSoundsA =>
      'Kytke päälle enintään kuusi aitoa äänitettä, säädä jokaisen voimakkuus ja tallenna miksaus nimellä. Ne soivat taustalla, ja uniajastin voi lopettaa ne. Musiikkia ei käytetä.';

  @override
  String get faqCalendarQ => 'Voiko kalenteri näyttää islamilaiset päivämäärät?';

  @override
  String get faqCalendarA =>
      'Kyllä. Islamilaiset päivämäärät (Umm al-Qura) näkyvät automaattisesti arabiaksi, ja ne voi ottaa käyttöön asetuksista millä tahansa kielellä. Tapahtumat, määräpäivälliset tehtävät ja projektien välitavoitteet näkyvät yhdessä.';

  @override
  String get faqFlashcardsQ => 'Miten kertaus päättää, mitkä kortit näen?';

  @override
  String get faqFlashcardsA =>
      'Hyvin osaamasi kortit palaavat pidemmän ajan päästä ja väärin menneet pian (välein toistettu kertaus). Arvioi jokainen vastaus: Uudelleen, Vaikea, Hyvä tai Helppo. Aseta päivätavoite ja pidä putkesi yllä Tänään-kortissa. Aseta pakalle koepäivä nähdäksesi, montako päivää on jäljellä ja montako uutta korttia kannattaa oppia päivässä. Järjestä ”Oma järjestys” -valinnalla vetääksesi kortit paikoilleen, napauta kaiutinta kummalla tahansa puolella kuullaksesi sen ja säädä nopeus ja toistot Puhe-valikosta.';

  @override
  String get faqImportQ => 'Voinko tuoda kortteja Ankista tai Excelistä?';

  @override
  String get faqImportA =>
      'Kyllä. Valitse pakassa Tuo ja valitse tiedosto: Anki (.apkg), Excel (.xlsx) tai CSV, ja yhdistä sarakkeet. Käytä ”Laskentataulukkomallia” kirjoittaaksesi kortteja tietokoneella. Anki-tiedostojen kuvia ja ääniä ei tuoda.';

  @override
  String get faqNotesQ => 'Mitä muistiinpanoilla voi tehdä?';

  @override
  String get faqNotesA =>
      'Kirjoita vapaasti tarkistuslistojen ja muotoilun kanssa, kiinnitä tai merkitse tärkeät muistiinpanot suosikeiksi, lisää tunnisteita ja linkitä muistiinpanoja tehtäviin. Mikrofonipainikkeella voit sanella. Uuden muistiinpanon voi aloittaa mallista (luento, kirjan tiivistelmä, päiväkirja, viikkosuunnitelma), ja kuvapainike lisää valokuvia.';

  @override
  String get faqHabitsQ => 'Miten tapojen putket lasketaan?';

  @override
  String get faqHabitsA =>
      'Päivä lasketaan, kun saavutat tavan tavoitteen ajoitettuna päivänä. Tavan keskeyttäminen pitää putken tallessa. Jokaisella tavalla voi olla oma muistutusaikansa.';

  @override
  String get faqGoalsQ => 'Miten tavoitteet seuraavat edistymistä?';

  @override
  String get faqGoalsA =>
      'Anna tavoitteelle tavoitearvo ja yksikkö ja kirjaa edistyminen. Sen kortti näyttää, kuinka pitkällä olet ja paljonko on jäljellä ennen takarajaa.';

  @override
  String get faqProjectsQ => 'Mihin projektit ovat?';

  @override
  String get faqProjectsA =>
      'Kokoa tehtäviä projektin alle, lisää päivättyjä välitavoitteita ja seuraa kokonaisedistymistä. Välitavoitteet näkyvät myös kalenterissa.';

  @override
  String get faqInsightsQ => 'Mitä Tilastot näyttävät?';

  @override
  String get faqInsightsA =>
      'Keskitysaikasi, valmiit tehtävät ja opiskelun päivien ja viikkojen ajalta lempeiden ehdotusten kera. Kaikki lasketaan puhelimessasi.';

  @override
  String get faqSpacesQ => 'Missä kaikki osiot ovat?';

  @override
  String get faqSpacesA =>
      'Tilat luettelee sovelluksen kaikki osat (muistiinpanot, pakat, tavat, tavoitteet, projektit, äänet ja muuta), jotta pääpalkki pysyy yksinkertaisena.';

  @override
  String get faqBackupQ => 'Miten tietoni varmuuskopioidaan?';

  @override
  String get faqBackupA =>
      'Joka päivä sovellus tallentaa huomaamatta salatun kopion tähän puhelimeen ja säilyttää viimeiset 7. Asetuksissa voit myös viedä salasanalla suojatun varmuuskopiotiedoston ja palauttaa sen toiseen puhelimeen.';

  @override
  String get faqPrayerQ => 'Miten rukousajat toimivat?';

  @override
  String get faqPrayerA =>
      'Valitse kaupunkisi kohdassa Asetukset → Rukousajat. Ajat lasketaan puhelimessa siellä käytetyllä menetelmällä, ja voit vaihtaa menetelmän ja asr-koulukunnan. Voit saada ilmoituksen jokaisesta rukouksesta, ja käynnissä oleva keskitysistunto keskeytyy.';

  @override
  String get faqPrivacyQ => 'Missä tietojani säilytetään?';

  @override
  String get faqPrivacyA =>
      'Vain puhelimessasi, salatussa tietokannassa. Ei tiliä eikä seurantaa. Internetiä käyttävät vain itse käyttöön ottamasi toiminnot, kuten valinnainen avustaja.';

  @override
  String get faqAssistantQ => 'Mikä avustaja on?';

  @override
  String get faqAssistantA =>
      'Valinnainen apuri, jonka yhdistät asetuksissa omaan tekoälypalveluusi. Se on oletuksena pois päältä ja kysyy ennen kuin lähettää muistiinpanon tekstiä.';

  @override
  String get tourPlanTitle => 'Suunnittele päiväsi';

  @override
  String get tourPlanBody =>
      'Tehtävät, kalenteri ja tavat yhdessä rauhallisessa paikassa. Aloita joka aamu valinnalla ”Aloita päiväni”.';

  @override
  String get tourFocusTitle => 'Keskity syvästi';

  @override
  String get tourFocusBody =>
      'Ajastetut istunnot aidoilla luonnon äänillä, Älä häiritse -tilalla ja pehmeillä loppuäänillä.';

  @override
  String get tourLearnTitle => 'Opi pysyvästi';

  @override
  String get tourLearnBody =>
      'Kortit välein toistetulla kertauksella, puhe monilla kielillä ja tuonti Ankista tai Excelistä.';

  @override
  String get helpTitle => 'Ohjeet ja kysymykset';

  @override
  String get helpOpen => 'Avaa';

  @override
  String get helpTour => 'Katso esittely';

  @override
  String get tourNext => 'Seuraava';

  @override
  String get tourDone => 'Aloitetaan';

  @override
  String get transferColTitle => 'Otsikko';

  @override
  String get transferColNotes => 'Muistiinpanot';

  @override
  String get transferColBody => 'Teksti';

  @override
  String get transferColDue => 'Määräpäivä';

  @override
  String get transferColPriority => 'Tärkeys (0-3)';

  @override
  String get transferColDone => 'Valmis';

  @override
  String get transferColProject => 'Projekti';

  @override
  String get transferColCategory => 'Luokka';

  @override
  String get transferTitle => 'Tuonti ja vienti';

  @override
  String get transferSaveAs => 'Tallenna muodossa';

  @override
  String get transferImport => 'Tuo tiedostosta';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV tai Wordin taulukko. Sarakkeet: otsikko, määräpäivä (2026-12-31), tärkeys 0-3, valmis, projekti, muistiinpanot. Sovelluksessa jo olevat tehtävät ohitetaan.';

  @override
  String get transferImportNotesHint =>
      'Word-, Markdown- tai tekstitiedostoista tulee muistiinpano. Excel tai CSV: yksi muistiinpano riviä kohden (otsikko, teksti).';

  @override
  String get transferSaved => 'Tiedosto tallennettu';

  @override
  String get transferFailed => 'Tiedostoa ei voitu luoda. Mitään ei muutettu.';

  @override
  String get transferUnsupported =>
      'Tätä tiedostoa ei voi lukea täällä. Käytä Exceliä, CSV:tä, Wordia, Markdownia tai tekstiä.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added lisätty',
      one: '1 lisätty',
      zero: 'Ei mitään uutta lisättävää',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Teksti';

  @override
  String get transferAllNotes => 'Kaikki muistiinpanot';

  @override
  String get transferThisNote => 'Tämä muistiinpano';

  @override
  String get transferDeckFormats => 'Tallenna Excel-, Word- tai PDF-muodossa';

  @override
  String get faqFilesQ => 'Voinko käyttää Excel-, Word- tai PDF-tiedostoja?';

  @override
  String get faqFilesA =>
      'Kyllä. Tehtävissä ja Muistiinpanoissa on ylhäällä tuonti- ja vientipainike (kaksi nuolta), ja jokaisen pakan valikossa on sama. Tallenna Excel-, CSV-, Word- tai PDF-muodossa tai tuo Excel-, CSV-, Word-, Markdown- tai tekstitiedostoja. Sarakkeiden nimet voivat olla millä tahansa sovelluksen kielellä, ja tallentamasi tiedostot voi aina tuoda uudelleen.';

  @override
  String get tplLecture => 'Luento';

  @override
  String get tplBook => 'Kirjan tiivistelmä';

  @override
  String get tplJournal => 'Päiväkirja';

  @override
  String get tplWeek => 'Viikkosuunnitelma';

  @override
  String get tplLectureBody =>
      '## Tärkeimmät kohdat\n- \n\n## Kysymykset\n- [ ] \n\n## Yhteenveto\n';

  @override
  String get tplBookBody =>
      '## Pääajatus\n\n## Mitä opin\n- \n\n## Lainaukset\n> \n\n## Sovellettavaksi\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Kiitollinen\n- \n\n## Päivän keskitys\n- [ ] \n\n## Muistiinpanot\n';

  @override
  String get tplWeekBody =>
      '## Viikon tavoitteet\n- [ ] \n\n### Lauantai\n- [ ] \n\n### Sunnuntai\n- [ ] \n\n### Maanantai\n- [ ] \n\n### Tiistai\n- [ ] \n\n### Keskiviikko\n- [ ] \n\n### Torstai\n- [ ] \n\n### Perjantai\n- [ ] \n';

  @override
  String get tplHint => 'Aloita mallista';

  @override
  String get noteImage => 'Kuva';

  @override
  String get noteAddImage => 'Lisää kuva';

  @override
  String get noteImageUnreadable => 'Tämä tiedosto ei ole kuva, jota sovellus voi lukea.';

  @override
  String get noteImageTooLarge => 'Tämä kuva on liian suuri.';

  @override
  String get examSet => 'Aseta koepäivä';

  @override
  String get examDate => 'Koepäivä';

  @override
  String get examToday => 'Koe tänään. Onnea!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kokeeseen $count päivää',
      one: 'Koe huomenna',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'opi $count uutta korttia päivässä',
      one: 'opi 1 uusi kortti päivässä',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'kaikki kortit opittu, jatka kertaamista';

  @override
  String examRaiseLimit(int count) {
    return 'Näytä $count uutta korttia päivässä';
  }

  @override
  String get backupDriveHint =>
      'Jos haluat kopion verkkoon, valitse Google Drive (tai muu pilvisovellus) seuraavaksi avautuvasta tallennusnäkymästä.';

  @override
  String get flashShareDeck => 'Jaa pakka ystävälle';

  @override
  String get flashSortManual => 'Oma järjestys (vedä)';

  @override
  String get flashReorderHint => 'Siirrä korttia pitämällä kahvasta kiinni ja vetämällä.';

  @override
  String get flashReorderNeedsAll => 'Tyhjennä haku ja suodattimet, jotta voit vetää kortteja.';

  @override
  String get flashDragHandle => 'Siirrä vetämällä';

  @override
  String get reportTitle => 'Kuukausiraportti';

  @override
  String get reportFocus => 'Keskitysaika';

  @override
  String reportSessions(int count) {
    return '$count istuntoa';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Paras päivä: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktiivista päivää';
  }

  @override
  String get reportCards => 'Kerratut kortit';

  @override
  String reportCardsKnown(String percent) {
    return '$percent muistettu';
  }

  @override
  String get reportTasks => 'Valmiit tehtävät';

  @override
  String get reportHabits => 'Tapojen merkinnät';

  @override
  String get reportEmpty => 'Tässä kuussa ei ole vielä mitään kirjattu.';

  @override
  String get reportSave => 'Tallenna PDF- tai Word-muodossa';

  @override
  String get reportPrevMonth => 'Edellinen kuukausi';

  @override
  String get reportNextMonth => 'Seuraava kuukausi';

  @override
  String get careTitle => 'Puhelimen ja tietojen hoito';

  @override
  String get storageTitle => 'Tallennustila';

  @override
  String get storageSubtitle => 'Mikä vie tilaa, ja käyttämättömien kuvien siivous';

  @override
  String get storagePictures => 'Muistiinpanojen kuvat';

  @override
  String get storageCardMedia => 'Korttien kuvat ja äänet';

  @override
  String get storageText => 'Muistiinpanojen teksti';

  @override
  String get storageFree => 'Vapaana puhelimessa';

  @override
  String get storageLow =>
      'Puhelimesi on lähes täynnä. Vapauta tilaa, jotta varmuuskopiot ja muistutukset toimivat edelleen.';

  @override
  String storageUnused(int count, String size) {
    return '$count käyttämätöntä kuvaa ($size)';
  }

  @override
  String get storageNoUnused => 'Ei käyttämättömiä kuvia. Kaikki on siistiä.';

  @override
  String get storageClean => 'Poista käyttämättömät kuvat';

  @override
  String storageCleaned(int count) {
    return '$count kuvaa poistettu';
  }

  @override
  String get storageHint =>
      'Kuva lasketaan käyttämättömäksi vain, jos mikään muistiinpano ei näytä sitä, roskakorissa olevat mukaan lukien.';

  @override
  String get batteryTitle => 'Pidä muistutukset toiminnassa';

  @override
  String get batterySubtitle =>
      'Jotkin puhelimet pysäyttävät sovelluksia taustalla. Tarkista omasi.';

  @override
  String get batteryStatusOk =>
      'Virransäästö ei rajoita tätä sovellusta. Muistutusten ja äänten pitäisi tulla ajallaan.';

  @override
  String get batteryStatusLimited =>
      'Virransäästö voi pysäyttää sovelluksen taustalla, jolloin muistutukset ja äänet voivat myöhästyä tai jäädä tulematta.';

  @override
  String get batteryOpen => 'Avaa akkuasetukset';

  @override
  String get batteryOpenApp => 'Avaa sovelluksen asetukset';

  @override
  String get batteryGeneric =>
      'Valitse akkuasetuksista tämä sovellus ja aseta se tilaan Rajoittamaton (tai Älä optimoi).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: avaa myös Suojaus › Käyttöoikeudet › Automaattinen käynnistys ja kytke tämä sovellus päälle, ja aseta Virransäästö tilaan Ei rajoituksia.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: avaa Akku › tämä sovellus ja salli taustatoiminta ja automaattinen käynnistys; lukitse sovellus viimeaikaisten sovellusten luetteloon.';

  @override
  String get batterySamsung =>
      'Samsung: Akku › Taustakäytön rajoitukset: poista tämä sovellus kohdista Lepäävät sovellukset ja Syvässä unessa olevat sovellukset.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Sovelluksen käynnistys › tämä sovellus › hallitse manuaalisesti, ja salli automaattinen käynnistys, toissijainen käynnistys ja suoritus taustalla.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Akku › Taustan virrankulutus › salli tämä sovellus, ja ota automaattinen käynnistys käyttöön käyttöoikeuksista.';

  @override
  String get whatsNewTitle => 'Uutta';

  @override
  String get whatsNewSubtitle => 'Viimeisimmät muutokset muutamalla rivillä';

  @override
  String get whatsNewDone => 'Selvä';

  @override
  String get whatsNewOrderTitle => 'Vedä kortit omaan järjestykseesi';

  @override
  String get whatsNewOrderBody =>
      'Valitse pakassa Järjestä › Oma järjestys, pidä sitten kahvasta kiinni ja vedä.';

  @override
  String get whatsNewSpeechTitle => 'Kaiutin kortin kummallakin puolella';

  @override
  String get whatsNewSpeechBody =>
      'Napauta sitä kuullaksesi sanan tai käännöksen. Nopeus, toistot ja ääni löytyvät kertausvalikosta. Kieli tunnistetaan tekstistä.';

  @override
  String get whatsNewReportTitle => 'Kuukausiraportti';

  @override
  String get whatsNewReportBody =>
      'Napauta Tilastoissa raporttikuvaketta nähdäksesi kuukauden ja tallentaaksesi sen PDF- tai Word-muodossa.';

  @override
  String get whatsNewCareTitle => 'Puhelimen ja tietojen hoito';

  @override
  String get whatsNewCareBody =>
      'Asetuksissa on nyt tallennustilasivu kuvien siivoukseen ja akkuopas puhelimesi merkille.';

  @override
  String get whatsNewSoundTitle => 'Rauhallisemmat äänet';

  @override
  String get whatsNewSoundBody =>
      'Luonnon äänet ovat pehmeämpiä ja hiljaisempia, ja kuvakortit ovat kauniimpia.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Tarkistettu $date: uusin varmuuskopio aukeaa oikein.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Tarkistettu $date: vioittunut varmuuskopio löytyi ja korvattiin uudella.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Tarkistettu $date: uusinta varmuuskopiota ei voitu avata. Tallenna varmuuskopiotiedosto itse asetuksista.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Opiskelet yleensä noin klo $time';
  }

  @override
  String get smartReviewTimeUse => 'Käytä';

  @override
  String get widgetNewNote => 'Uusi muistiinpano';

  @override
  String get noteConnections => 'Tunnisteet, linkit ja tehtävät';

  @override
  String get navCards => 'Kortit';

  @override
  String get studyAnswerWay => 'Miten haluat vastata?';

  @override
  String get studyMorePractice => 'Lisäharjoitus';

  @override
  String get studySessionSettings => 'Istunnon asetukset';

  @override
  String get focusAdjustTitle => 'Istuntosi';

  @override
  String get focusPresetsTitle => 'Valmiit';

  @override
  String get focusPresetStudy => 'Opiskelu';

  @override
  String get focusPresetDeep => 'Syvä työ';

  @override
  String get focusPresetQuick => 'Pikapyrähdys';

  @override
  String get focusPresetReading => 'Lukeminen';

  @override
  String get focusPresetWorkout => 'Treenikierrokset';

  @override
  String get focusAdjustMinutes => 'Keskityksen pituus';

  @override
  String get focusAdjustBreak => 'Tauon pituus';

  @override
  String get focusAdjustRounds => 'Kierrokset';

  @override
  String get focusRoundsOpen => 'Ei rajaa';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Muuta aikaa napauttamalla';

  @override
  String get flashArrangeDecks => 'Järjestä pakat';

  @override
  String get flashDeckActions => 'Pakan valinnat';

  @override
  String get starterBrowse => 'Valmiit pakat';

  @override
  String get starterBrowseHint => 'Lisää yksi napautuksella ja aloita oppiminen';

  @override
  String get dashOpenDecks => 'Avaa korttisi';

  @override
  String speechVoiceNumber(String n) {
    return 'Ääni $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Hyvä flow. Lepäätkö $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Aloita tauko';

  @override
  String tasksFinishAt(String time) {
    return 'Aloita nyt, niin saat kaiken valmiiksi klo $time mennessä';
  }

  @override
  String get focusCalmPacing => 'Rauhallinen tahti';

  @override
  String get focusCalmPacingHint => 'Vain kokonaiset minuutit ja rengas, ei tikittäviä sekunteja';

  @override
  String get focusFlipHint => 'Aloita kääntämällä puhelin näyttö alaspäin';

  @override
  String get focusImmersive => 'Uppoutumistila';

  @override
  String get focusImmersiveBlack => 'Täysi musta (säästää akkua)';

  @override
  String get focusFlipToFocus => 'Käännä keskittyäksesi';

  @override
  String get focusFlipToFocusHint =>
      'Uppoutumistilassa: näyttö alaspäin aloittaa, puhelimen nostaminen keskeyttää';

  @override
  String get guardTitle => 'Häiriösuoja';

  @override
  String get guardSubtitle => 'Keskeytä häiritsevät sovellukset, kun keskityt';

  @override
  String get guardSwitch => 'Keskeytä häiritsevät sovellukset';

  @override
  String get guardSwitchHint => 'Keskitysistuntojen ja Aikasuoja-tuntiesi aikana';

  @override
  String get guardNeedsAccess => 'Vaatii saavutettavuuskytkimen: ota se käyttöön napauttamalla';

  @override
  String get guardDisclosureTitle => 'Miten suoja toimii';

  @override
  String get guardDisclosureBody =>
      'Keskeyttääkseen valitsemasi sovellukset Deep Focus käyttää Androidin saavutettavuuspalvelua nähdäkseen, mikä sovellus on auki. Kun ”Sulje Shorts ja Reels” on päällä, se tarkistaa myös, onko näytöllä lyhytvideoiden soitin.\n\nSe ei lue tekstiä, ei tallenna mitään näkemäänsä eikä lähetä mitään minnekään: kaikki pysyy puhelimessasi. Voit poistaa sen käytöstä milloin tahansa saavutettavuusasetuksista.';

  @override
  String get guardAgree => 'Hyväksy ja avaa asetukset';

  @override
  String get guardModeGentle => 'Lempeä';

  @override
  String get guardModeStrict => 'Tiukka';

  @override
  String get guardGentleHint => '5 sekunnin hengitystauko, sitten valitset itse';

  @override
  String get guardStrictHint => 'Valitut sovellukset pysyvät suljettuina keskitysajan loppuun';

  @override
  String get guardApps => 'Keskeytettävät sovellukset';

  @override
  String get guardAppsAllowed => 'Sallitut sovellukset';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sovellusta',
      one: '1 sovellus',
      zero: 'Ei vielä valittuja',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Salli vain valitut sovellukset';

  @override
  String get guardAllowlistHint =>
      'Kaikki muut sovellukset keskeytetään; puhelut, asetukset ja näppäimistö toimivat aina';

  @override
  String get guardShorts => 'Sulje Shorts ja Reels';

  @override
  String get guardShortsHint =>
      'Aina kun suoja on päällä. Parhaan mukaan: nämä sovellukset muuttuvat usein';

  @override
  String get guardSchedule => 'Aikasuoja';

  @override
  String get guardScheduleHint =>
      'Suojaa myös valittuina päivinä ja tunteina, kuten koulussa tai töissä';

  @override
  String get guardFrom => 'Alkaen';

  @override
  String get guardTo => 'Asti';

  @override
  String get guardSearchApps => 'Hae sovelluksia';

  @override
  String get guardNoApps => 'Sovelluksia ei löytynyt';

  @override
  String get guardPrivacy =>
      'Toimii vain puhelimessasi: suoja näkee, mikä sovellus on auki, ei koskaan sen sisältöä, eikä lähetä mitään.';

  @override
  String get guardBreathe => 'Hengitä sisään… ja ulos';

  @override
  String get guardQuestion => 'Tarvitsetko tätä sovellusta nyt?';

  @override
  String get guardBackToFocus => 'Takaisin keskittymään';

  @override
  String get guardOpenFive => 'Avaa 5 minuutiksi';

  @override
  String get guardStrictBody => 'Tämä sovellus on keskeytetty keskitysaikasi loppuun.';

  @override
  String get guardShortsClosed => 'Lyhytvideot suljetaan, kun suoja on päällä';

  @override
  String get faqGuardQ => 'Miten estän häiritsevät sovellukset keskittyessäni?';

  @override
  String get faqGuardA =>
      'Avaa Keskitys → ajastimen asetukset → Häiriösuoja. Valitse sovellukset ja sitten Lempeä (5 sekunnin hengitys ja kysymys ”Tarvitsetko tätä sovellusta nyt?”) tai Tiukka (ne pysyvät suljettuina). Se toimii keskitysistuntojen aikana ja Aikasuojan kanssa asettaminasi päivinä ja tunteina. ”Salli vain valitut sovellukset” keskeyttää kaiken muun; puhelut, asetukset ja näppäimistö toimivat aina. Android pyytää kerran ottamaan suojan käyttöön saavutettavuusasetuksista. Se näkee vain, mikä sovellus on auki, eikä lähetä mitään.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Siirretty: $name';
  }

  @override
  String get notesDragHint => 'Pidä muistiinpanoa painettuna ja vedä se muistikirjaan';

  @override
  String get guardReviewCards => 'Kertaa kortteja sen sijaan';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korttia odottaa sinua',
      one: '1 kortti odottaa sinua',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Hätätilanne: pidä painettuna 10 sekuntia';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Pidä painettuna… $n';
  }

  @override
  String get guardWeekTitle => 'Tällä viikolla';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count keskeytystä',
      one: '1 keskeytys',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'takaisin keskittymään $count kertaa',
      one: 'takaisin keskittymään kerran',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Nimeä sanoja uudelleen';

  @override
  String get wordsSubtitle => 'Käytä omaa sanaasi missä tahansa sovelluksen tekstissä';

  @override
  String get wordsHint =>
      'Muuta tekstiä napauttamalla sitä. Sanasi koskevat vain tätä kieltä ja säilyvät varmuuskopioissa.';

  @override
  String get wordsSearch => 'Hae tekstejä';

  @override
  String get wordsChangedOnly => 'Vain muutetut';

  @override
  String wordsOriginal(String text) {
    return 'Alkuperäinen: $text';
  }

  @override
  String get wordsReset => 'Käytä alkuperäistä';

  @override
  String get wordsResetAll => 'Palauta kaikki sanat';

  @override
  String get wordsResetAllConfirm => 'Kaikki tämän kielen tekstit palautuvat alkuperäisiksi.';

  @override
  String get wordsNone => 'Tekstiä ei löytynyt';

  @override
  String get settingsLanguageSearch => 'Hae kieliä';

  @override
  String get settingsLanguageNoMatch => 'Yksikään kieli ei vastaa';

  @override
  String get soundsMyMusic => 'Oma äänitiedosto';

  @override
  String get soundsMusicHint =>
      'Toista äänitiedosto puhelimestasi. Mitään ei kopioida eikä ladata palvelimelle.';

  @override
  String get soundsChooseMusic => 'Valitse ääni';

  @override
  String get soundsRemoveMusic => 'Poista ääni';
}
