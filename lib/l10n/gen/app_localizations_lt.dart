// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Pradžia';

  @override
  String get navTasks => 'Užduotys';

  @override
  String get navFocus => 'Fokusas';

  @override
  String get navCalendar => 'Kalendorius';

  @override
  String get navSpaces => 'Erdvės';

  @override
  String get moduleProjects => 'Projektai';

  @override
  String get moduleNotes => 'Užrašai';

  @override
  String get moduleFlashcards => 'Kortelės';

  @override
  String get moduleGoals => 'Tikslai';

  @override
  String get moduleHabits => 'Įpročiai';

  @override
  String get moduleAnalytics => 'Įžvalgos';

  @override
  String get moduleSearch => 'Paieška';

  @override
  String get moduleAssistant => 'Asistentas';

  @override
  String get moduleSettings => 'Nustatymai';

  @override
  String get moduleTrash => 'Šiukšlinė';

  @override
  String get actionSave => 'Išsaugoti';

  @override
  String get actionCancel => 'Atšaukti';

  @override
  String get actionDelete => 'Ištrinti';

  @override
  String get actionEdit => 'Redaguoti';

  @override
  String get actionDone => 'Atlikta';

  @override
  String get actionAdd => 'Pridėti';

  @override
  String get actionCreate => 'Sukurti';

  @override
  String get actionClose => 'Uždaryti';

  @override
  String get actionBack => 'Atgal';

  @override
  String get actionUndo => 'Anuliuoti';

  @override
  String get actionRestore => 'Atkurti';

  @override
  String get actionRetry => 'Bandyti dar kartą';

  @override
  String get actionContinue => 'Tęsti';

  @override
  String get actionSkip => 'Praleisti';

  @override
  String get actionArchive => 'Archyvuoti';

  @override
  String get actionUnarchive => 'Išarchyvuoti';

  @override
  String get actionPin => 'Prisegti';

  @override
  String get actionUnpin => 'Atsegti';

  @override
  String get actionMore => 'Daugiau parinkčių';

  @override
  String get actionClear => 'Išvalyti';

  @override
  String get actionSearch => 'Ieškoti';

  @override
  String get actionSort => 'Rikiuoti';

  @override
  String get actionShare => 'Bendrinti';

  @override
  String get actionImport => 'Importuoti';

  @override
  String get actionExport => 'Eksportuoti';

  @override
  String get actionPause => 'Pristabdyti';

  @override
  String get actionResume => 'Tęsti';

  @override
  String get actionStart => 'Pradėti';

  @override
  String get actionStop => 'Sustabdyti';

  @override
  String get actionComplete => 'Užbaigti';

  @override
  String get actionDeleteForever => 'Ištrinti visam laikui';

  @override
  String get actionEmptyTrash => 'Ištuštinti šiukšlinę';

  @override
  String get actionUnlink => 'Atsieti';

  @override
  String get actionCustomize => 'Tinkinti';

  @override
  String get actionPreview => 'Peržiūra';

  @override
  String get actionLog => 'Įrašyti pažangą';

  @override
  String get stateLoading => 'Įkeliama…';

  @override
  String get stateSaving => 'Išsaugoma…';

  @override
  String get stateSaved => 'Išsaugota';

  @override
  String get stateUnsaved => 'Neišsaugoti pakeitimai';

  @override
  String get errorGenericTitle => 'Kažkas nepavyko';

  @override
  String get errorGenericMessage => 'Jūsų duomenys saugūs. Bandykite dar kartą.';

  @override
  String get errorLoadFailed => 'Nepavyko įkelti šio turinio.';

  @override
  String get errorSaveFailed => 'Nepavyko išsaugoti. Jūsų pakeitimai vis dar čia.';

  @override
  String get validationRequired => 'Šis laukas privalomas';

  @override
  String get validationTitleRequired => 'Įveskite pavadinimą';

  @override
  String get validationNameRequired => 'Įveskite vardą';

  @override
  String get validationTooLong => 'Per ilga';

  @override
  String get validationEndBeforeStart => 'Pabaiga turi būti po pradžios';

  @override
  String get validationStartAfterDue => 'Pradžios data turi būti prieš terminą';

  @override
  String get validationPositiveNumber => 'Įveskite skaičių, didesnį už nulį';

  @override
  String get validationDependencyCycle => 'Tai sukurtų ciklinę priklausomybę';

  @override
  String get validationInvalidRepeat => 'Ši kartojimo taisyklė netinkama';

  @override
  String get deletedItem => 'Perkelta į šiukšlinę';

  @override
  String get untitled => 'Be pavadinimo';

  @override
  String get noProject => 'Be projekto';

  @override
  String get greetingMorning => 'Labas rytas';

  @override
  String get greetingAfternoon => 'Laba diena';

  @override
  String get greetingEvening => 'Labas vakaras';

  @override
  String get dashFocusToday => 'Šiandienos fokusas';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done iš $target';
  }

  @override
  String get dashStartFocus => 'Pradėti fokusą';

  @override
  String get dashFocusRunning => 'Vyksta sesija';

  @override
  String get dashTodayTasks => 'Šiandien terminas';

  @override
  String get dashAgenda => 'Darbotvarkė';

  @override
  String get dashHabits => 'Šiandienos įpročiai';

  @override
  String get dashGoals => 'Tikslai';

  @override
  String get dashReview => 'Kartojimas';

  @override
  String get dashRecentNotes => 'Naujausi užrašai';

  @override
  String get dashInsight => 'Patarimas';

  @override
  String get dashSeeAll => 'Rodyti viską';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kartoti $count kortelių',
      few: 'Kartoti $count korteles',
      one: 'Kartoti $count kortelę',
      zero: 'Nėra kortelių kartoti',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Kartoti dabar';

  @override
  String get dashCustomizeTitle => 'Pradžios ekrano skiltys';

  @override
  String get dashCustomizeHint => 'Pasirinkite, kas rodoma pradžios ekrane.';

  @override
  String get dashSectionFocus => 'Fokusas';

  @override
  String get dashSectionToday => 'Šiandienos užduotys';

  @override
  String get dashSectionAgenda => 'Darbotvarkė';

  @override
  String get dashSectionHabits => 'Įpročiai';

  @override
  String get dashSectionGoals => 'Tikslai';

  @override
  String get dashSectionReview => 'Kortelių kartojimas';

  @override
  String get dashSectionNotes => 'Naujausi užrašai';

  @override
  String get dashSectionInsight => 'Patarimai';

  @override
  String get quickAddTask => 'Nauja užduotis';

  @override
  String get quickAddNote => 'Naujas užrašas';

  @override
  String get quickAddEvent => 'Naujas įvykis';

  @override
  String get quickStartFocus => 'Fokusas';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Turite $count vėluojančių užduočių. Pradėkite nuo svarbiausios.',
      few: 'Turite $count vėluojančias užduotis. Pradėkite nuo svarbiausios.',
      one: 'Turite $count vėluojančią užduotį. Pradėkite nuo svarbiausios.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Iki dienos fokuso tikslo liko $minutes min.';
  }

  @override
  String get insightCardsDue => 'Pakartokite korteles dabar, kol jos šviežios.';

  @override
  String get insightAllClear =>
      'Viskas pagal planą. Suplanuokite rytdieną arba sąmoningai pailsėkite.';

  @override
  String insightHabitStreak(String habit) {
    return 'Išlaikykite seriją: $habit šiandien dar neatliktas.';
  }

  @override
  String get focusTitle => 'Fokusas';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Laikmatis';

  @override
  String get focusModeCountUp => 'Chronometras';

  @override
  String get focusModeOpen => 'Laisvas';

  @override
  String get focusPhaseWork => 'Fokusas';

  @override
  String get focusPhaseShortBreak => 'Trumpa pertrauka';

  @override
  String get focusPhaseLongBreak => 'Ilga pertrauka';

  @override
  String get focusReady => 'Pradėkite, kai būsite pasiruošę';

  @override
  String get focusPaused => 'Pristabdyta';

  @override
  String get focusRunning => 'Fokusuojamasi';

  @override
  String get focusDuration => 'Trukmė';

  @override
  String get focusLinkTask => 'Susieti užduotį';

  @override
  String get focusLinkedTask => 'Dirbama su';

  @override
  String get focusNoTask => 'Užduotis nesusieta';

  @override
  String focusCycle(int current, int total) {
    return 'Ciklas $current iš $total';
  }

  @override
  String get focusSkipBreak => 'Praleisti pertrauką';

  @override
  String get focusStartBreak => 'Pradėti pertrauką';

  @override
  String get focusStartNext => 'Pradėti kitą fokusą';

  @override
  String get focusSessionComplete => 'Sesija baigta';

  @override
  String get focusSessionStopped => 'Sesija išsaugota';

  @override
  String focusSessionSummary(String duration) {
    return 'Fokusavotės $duration.';
  }

  @override
  String get focusAddNote => 'Pridėkite pastabą apie šią sesiją';

  @override
  String get focusHistory => 'Istorija';

  @override
  String get focusNoHistory => 'Baigtos sesijos bus rodomos čia';

  @override
  String get focusTargets => 'Tikslai';

  @override
  String get focusDailyTarget => 'Dienos tikslas';

  @override
  String get focusWeeklyTarget => 'Savaitės tikslas';

  @override
  String get focusOutcomeCompleted => 'Baigta';

  @override
  String get focusOutcomeInterrupted => 'Sustabdyta anksčiau';

  @override
  String get focusRecovered => 'Jūsų sesija tęsėsi, kol programa buvo uždaryta.';

  @override
  String get focusCompletedWhileAway =>
      'Kol programa buvo uždaryta, sesija baigėsi ir buvo išsaugota.';

  @override
  String get focusNotificationsOff => 'Pranešimai išjungti. Nebūsite įspėti, kai sesija baigsis.';

  @override
  String get focusBatteryHint =>
      'Kai kurie įrenginiai pristabdo programas fone. Laikmatis lieka tikslus, bet įspėjimai gali vėluoti. Kad įspėjimai būtų patikimi, leiskite neribotą akumuliatoriaus naudojimą.';

  @override
  String get focusOpenSettings => 'Atidaryti nustatymus';

  @override
  String get focusStopConfirmTitle => 'Sustabdyti šią sesiją?';

  @override
  String get focusStopConfirmMessage => 'Iki šiol fokusuotas laikas bus išsaugotas.';

  @override
  String get focusDiscard => 'Atmesti';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minučių',
      few: '$minutes minutės',
      one: '$minutes minutė',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, liko $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, praėjo $time';
  }

  @override
  String get focusDeleteSession => 'Ištrinti sesiją';

  @override
  String get tasksTitle => 'Užduotys';

  @override
  String get tasksViewToday => 'Šiandien';

  @override
  String get tasksViewUpcoming => 'Artėjančios';

  @override
  String get tasksViewAll => 'Visos';

  @override
  String get tasksViewOverdue => 'Vėluojančios';

  @override
  String get tasksViewCompleted => 'Atliktos';

  @override
  String get tasksQuickAddHint => 'Pridėkite užduotį…';

  @override
  String get tasksEmptyTitle => 'Viskas atlikta';

  @override
  String get tasksEmptyMessage => 'Pridėkite užduotį ir pradėkite kurti savo dieną.';

  @override
  String get tasksEmptyCompleted => 'Atliktos užduotys bus rodomos čia.';

  @override
  String get taskNew => 'Nauja užduotis';

  @override
  String get taskEdit => 'Redaguoti užduotį';

  @override
  String get taskTitleLabel => 'Pavadinimas';

  @override
  String get taskTitleHint => 'Ką reikia padaryti?';

  @override
  String get taskDescriptionLabel => 'Aprašymas';

  @override
  String get taskNotesLabel => 'Pastabos';

  @override
  String get taskPriority => 'Prioritetas';

  @override
  String get priorityNone => 'Nėra';

  @override
  String get priorityLow => 'Žemas';

  @override
  String get priorityMedium => 'Vidutinis';

  @override
  String get priorityHigh => 'Aukštas';

  @override
  String get priorityUrgent => 'Skubus';

  @override
  String get taskDueDate => 'Terminas';

  @override
  String get taskStartDate => 'Pradžios data';

  @override
  String get taskReminder => 'Priminimas';

  @override
  String get taskRepeat => 'Kartoti';

  @override
  String get taskProject => 'Projektas';

  @override
  String get taskCategory => 'Kategorija';

  @override
  String get taskCategoryHint => 'pvz., Darbas, Namai, Mokslai';

  @override
  String get taskEstimateMinutes => 'Įvertis (minutėmis)';

  @override
  String get taskTracked => 'Fokuso laikas';

  @override
  String get taskLabels => 'Žymos';

  @override
  String get taskAddLabel => 'Nauja žyma';

  @override
  String get taskChecklist => 'Kontrolinis sąrašas';

  @override
  String get taskAddChecklistItem => 'Pridėti punktą';

  @override
  String get taskSubtasks => 'Papildomos užduotys';

  @override
  String get taskAddSubtask => 'Pridėti papildomą užduotį';

  @override
  String get taskDependencies => 'Blokuoja';

  @override
  String get taskAddDependency => 'Pridėti blokuojančią užduotį';

  @override
  String get taskLinkedNotes => 'Susieti užrašai';

  @override
  String get taskSetTime => 'Nustatyti laiką';

  @override
  String get taskNoDate => 'Be datos';

  @override
  String get taskCompleted => 'Užduotis atlikta';

  @override
  String get taskNextOccurrence => 'Sukurtas kitas pasikartojimas';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Vėluoja $days dienų',
      few: 'Vėluoja $days dienas',
      one: 'Vėluoja $days dieną',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Pažymėti „$title“ kaip atliktą';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Pažymėti „$title“ kaip neatliktą';
  }

  @override
  String get sortSmart => 'Išmanus';

  @override
  String get sortDueDate => 'Terminas';

  @override
  String get sortPriority => 'Prioritetas';

  @override
  String get sortCreated => 'Naujausios';

  @override
  String get sortTitle => 'Pavadinimas';

  @override
  String get filterAllProjects => 'Visi projektai';

  @override
  String get filterAnyPriority => 'Bet koks prioritetas';

  @override
  String get filterTitle => 'Filtruoti ir rikiuoti';

  @override
  String get dateToday => 'Šiandien';

  @override
  String get dateTomorrow => 'Rytoj';

  @override
  String get dateYesterday => 'Vakar';

  @override
  String get repeatNever => 'Nesikartoja';

  @override
  String get repeatDaily => 'Kasdien';

  @override
  String get repeatWeekdays => 'Kiekvieną darbo dieną';

  @override
  String get repeatWeekly => 'Kas savaitę';

  @override
  String get repeatMonthly => 'Kas mėnesį';

  @override
  String get repeatYearly => 'Kasmet';

  @override
  String get repeatCustom => 'Pasirinktinai';

  @override
  String get repeatEvery => 'Kartoti kas';

  @override
  String get repeatOnDays => 'Dienomis';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dienų',
      few: 'dienas',
      one: 'dieną',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'savaičių',
      few: 'savaites',
      one: 'savaitę',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mėnesių',
      few: 'mėnesius',
      one: 'mėnesį',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'metų',
      few: 'metus',
      one: 'metus',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartų',
      few: '$count kartų',
      one: '$count karto',
    );
    return 'Baigiasi po $_temp0';
  }

  @override
  String get repeatEndsNever => 'Niekada nesibaigia';

  @override
  String get reminderAtTime => 'Įvykio metu';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'Prieš $minutes minučių',
      few: 'Prieš $minutes minutes',
      one: 'Prieš $minutes minutę',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Prieš $hours valandų',
      few: 'Prieš $hours valandas',
      one: 'Prieš $hours valandą',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => 'Prieš 1 dieną';

  @override
  String get projectsTitle => 'Projektai';

  @override
  String get projectsEmptyTitle => 'Projektų dar nėra';

  @override
  String get projectsEmptyMessage => 'Grupuokite susijusias užduotis, užrašus ir fokuso laiką.';

  @override
  String get projectNew => 'Naujas projektas';

  @override
  String get projectEdit => 'Redaguoti projektą';

  @override
  String get projectName => 'Pavadinimas';

  @override
  String get projectDescription => 'Aprašymas';

  @override
  String get projectGoal => 'Tikslas';

  @override
  String get projectDeadline => 'Terminas';

  @override
  String get projectColor => 'Spalva';

  @override
  String get projectIcon => 'Piktograma';

  @override
  String get projectProgress => 'Pažanga';

  @override
  String projectTasksDone(int done, int total) {
    return 'Atlikta užduočių: $done iš $total';
  }

  @override
  String get projectFocusTime => 'Fokuso laikas';

  @override
  String get projectArchived => 'Archyvuoti projektai';

  @override
  String get projectShowArchived => 'Rodyti archyvuotus';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Liko $days dienų',
      few: 'Liko $days dienos',
      one: 'Liko $days diena',
      zero: 'Terminas šiandien',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Terminas praėjo';

  @override
  String get calendarTitle => 'Kalendorius';

  @override
  String get calendarMonth => 'Mėnuo';

  @override
  String get calendarWeek => 'Savaitė';

  @override
  String get calendarDay => 'Diena';

  @override
  String get calendarToday => 'Šiandien';

  @override
  String get calendarPrevious => 'Ankstesnis';

  @override
  String get calendarNext => 'Kitas';

  @override
  String get calendarNoEvents => 'Nieko nesuplanuota';

  @override
  String get calendarAllDay => 'Visą dieną';

  @override
  String get eventNew => 'Naujas įvykis';

  @override
  String get eventEdit => 'Redaguoti įvykį';

  @override
  String get eventTitleHint => 'Įvykio pavadinimas';

  @override
  String get eventStarts => 'Prasideda';

  @override
  String get eventEnds => 'Baigiasi';

  @override
  String get eventKind => 'Tipas';

  @override
  String get eventKindEvent => 'Įvykis';

  @override
  String get eventKindTimeBlock => 'Laiko blokas';

  @override
  String get eventKindFocus => 'Fokuso sesija';

  @override
  String get eventKindGoal => 'Asmeninis tikslas';

  @override
  String get eventDescription => 'Išsami informacija';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Persidengia su $count įvykių',
      few: 'Persidengia su $count įvykiais',
      one: 'Persidengia su $count įvykiu',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Šią dieną yra planavimo konfliktų';

  @override
  String get calendarTaskDue => 'Užduoties terminas';

  @override
  String get calendarDragHint => 'Ilgai paspauskite ir vilkite įvykį, kad jį perkeltumėte';

  @override
  String get calendarRescheduled => 'Įvykis perkeltas';

  @override
  String get calendarScheduleTask => 'Suplanuoti kaip laiko bloką';

  @override
  String get notesTitle => 'Užrašai';

  @override
  String get notesViewAll => 'Visi';

  @override
  String get notesViewPinned => 'Prisegti';

  @override
  String get notesViewFavorites => 'Mėgstami';

  @override
  String get notesViewArchived => 'Archyvuoti';

  @override
  String get notesTags => 'Žymos';

  @override
  String get notesNewNotebook => 'Naujas sąsiuvinis';

  @override
  String get notesNoNotebook => 'Be sąsiuvinio';

  @override
  String get notesEmptyTitle => 'Tuščias lapas';

  @override
  String get notesEmptyMessage => 'Užsirašykite idėjas, susitikimų pastabas ir žinias.';

  @override
  String get noteTitleHint => 'Pavadinimas';

  @override
  String get noteBodyHint =>
      'Pradėkite rašyti… Naudokite # žymoms ir [[Pavadinimas]] užrašams susieti.';

  @override
  String get noteFavorite => 'Į mėgstamus';

  @override
  String get noteUnfavorite => 'Pašalinti iš mėgstamų';

  @override
  String get noteMoveTo => 'Perkelti į sąsiuvinį';

  @override
  String get noteBacklinks => 'Nuorodos iš';

  @override
  String get noteLinkedTasks => 'Susietos užduotys';

  @override
  String get noteLinkTask => 'Susieti užduotį';

  @override
  String get noteLinkProject => 'Projektas';

  @override
  String get noteFormatHeading => 'Antraštė';

  @override
  String get noteFormatBold => 'Paryškintas';

  @override
  String get noteFormatItalic => 'Kursyvas';

  @override
  String get noteFormatList => 'Ženklinamasis sąrašas';

  @override
  String get noteFormatChecklist => 'Kontrolinis sąrašas';

  @override
  String get noteFormatLink => 'Nuoroda';

  @override
  String noteEdited(String time) {
    return 'Redaguota $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count žodžių',
      few: '$count žodžiai',
      one: '$count žodis',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kortelės';

  @override
  String get flashEmptyTitle => 'Sukurkite pirmąjį rinkinį';

  @override
  String get flashEmptyMessage =>
      'Kartojimas intervalais parodo kiekvieną kortelę prieš pat tai, kai ją pamirštumėte.';

  @override
  String get deckNew => 'Naujas rinkinys';

  @override
  String get deckEdit => 'Redaguoti rinkinį';

  @override
  String get deckName => 'Rinkinio pavadinimas';

  @override
  String get deckDescription => 'Aprašymas';

  @override
  String get deckDailyNew => 'Naujų kortelių per dieną';

  @override
  String get deckDailyReview => 'Dienos kartojimo tikslas';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kortelių',
      few: '$count kortelės',
      one: '$count kortelė',
      zero: 'Kortelių nėra',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Kartoti';

  @override
  String get deckNewCards => 'Naujos';

  @override
  String get deckMature => 'Įsisavintos';

  @override
  String get deckStudy => 'Mokytis';

  @override
  String get deckNothingDue => 'Šiuo metu nieko kartoti nereikia. Grįžkite vėliau.';

  @override
  String get deckEmptyCards => 'Pridėkite kortelių, kad pradėtumėte mokytis.';

  @override
  String get cardNew => 'Nauja kortelė';

  @override
  String get cardEdit => 'Redaguoti kortelę';

  @override
  String get cardFront => 'Priekis';

  @override
  String get cardBack => 'Galas';

  @override
  String get cardFrontHint => 'Klausimas arba terminas';

  @override
  String get cardBackHint => 'Atsakymas arba apibrėžimas';

  @override
  String get cardTags => 'Žymos';

  @override
  String get cardAddAnother => 'Išsaugoti ir pridėti kitą';

  @override
  String get reviewShowAnswer => 'Rodyti atsakymą';

  @override
  String get reviewAgain => 'Dar kartą';

  @override
  String get reviewHard => 'Sunku';

  @override
  String get reviewGood => 'Gerai';

  @override
  String get reviewEasy => 'Lengva';

  @override
  String reviewProgress(int done, int total) {
    return '$done iš $total';
  }

  @override
  String get reviewFinishedTitle => 'Sesija baigta';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pakartojote $count kortelių.',
      few: 'Pakartojote $count korteles.',
      one: 'Pakartojote $count kortelę.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Palieskite, kad pamatytumėte atsakymą';

  @override
  String get importCardsTitle => 'Importuoti korteles';

  @override
  String get importCardsHint =>
      'Įklijuokite po vieną kortelę eilutėje (priekis ir galas atskirti tabuliacija arba kabliataškiu) arba pasirinkite failą: Excel (.xlsx), CSV, Anki rinkinį (.apkg) arba eksportuotą rinkinį.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Importuota $count kortelių',
      few: 'Importuotos $count kortelės',
      one: 'Importuota $count kortelė',
      zero: 'Neimportuota nė viena kortelė',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Šio turinio importuoti nepavyko.';

  @override
  String get exportCopied => 'Rinkinys eksportuotas';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count min.',
      few: '$count min.',
      one: '$count min.',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count d.',
      few: '$count d.',
      one: '$count d.',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Tikslai';

  @override
  String get goalsEmptyTitle => 'Siekite kažko';

  @override
  String get goalsEmptyMessage =>
      'Nustatykite dienos, savaitės, mėnesio ar ilgalaikius tikslus ir stebėkite tikrą pažangą.';

  @override
  String get goalNew => 'Naujas tikslas';

  @override
  String get goalEdit => 'Redaguoti tikslą';

  @override
  String get goalTitleHint => 'Ko norite pasiekti?';

  @override
  String get goalPeriod => 'Laikotarpis';

  @override
  String get goalPeriodDaily => 'Kasdien';

  @override
  String get goalPeriodWeekly => 'Kas savaitę';

  @override
  String get goalPeriodMonthly => 'Kas mėnesį';

  @override
  String get goalPeriodLongTerm => 'Ilgalaikis';

  @override
  String get goalTarget => 'Tikslas';

  @override
  String get goalUnit => 'Vienetas';

  @override
  String get goalUnitHint => 'pvz., puslapiai, km, valandos';

  @override
  String get goalStatusActive => 'Aktyvus';

  @override
  String get goalStatusPaused => 'Pristabdytas';

  @override
  String get goalStatusAchieved => 'Pasiektas';

  @override
  String get goalPause => 'Pristabdyti tikslą';

  @override
  String get goalResume => 'Tęsti tikslą';

  @override
  String get goalMarkAchieved => 'Pažymėti kaip pasiektą';

  @override
  String goalProgressOf(String current, String target) {
    return '$current iš $target';
  }

  @override
  String get goalLogAmount => 'Kiekis';

  @override
  String get goalLogNote => 'Pastaba (neprivaloma)';

  @override
  String get goalHistory => 'Istorija';

  @override
  String get goalNoHistory => 'Įrašyta pažanga bus rodoma čia';

  @override
  String get goalLinkedTasks => 'Susietos užduotys';

  @override
  String get goalLinkedTasksHint =>
      'Kiekviena atlikta susieta užduotis šiam tikslui skaičiuojama kaip 1.';

  @override
  String get goalThisPeriod => 'Šis laikotarpis';

  @override
  String get habitsTitle => 'Įpročiai';

  @override
  String get habitsEmptyTitle => 'Maži žingsniai kasdien';

  @override
  String get habitsEmptyMessage => 'Sukurkite įprotį ir pažymėkite, kai jį atliksite.';

  @override
  String get habitNew => 'Naujas įprotis';

  @override
  String get habitEdit => 'Redaguoti įprotį';

  @override
  String get habitNameHint => 'pvz., Perskaityti 20 puslapių';

  @override
  String get habitDays => 'Tvarkaraštis';

  @override
  String get habitEveryDay => 'Kasdien';

  @override
  String get habitTargetPerDay => 'Kartų per dieną';

  @override
  String get habitReminder => 'Dienos priminimas';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienų serija',
      few: '$count dienų serija',
      one: '$count dienos serija',
      zero: 'Serijos nėra',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Geriausia serija';

  @override
  String get habitCurrentStreak => 'Dabartinė serija';

  @override
  String get habitConsistency => 'Pastovumas';

  @override
  String get habitLast90 => 'Paskutinės 90 dienų';

  @override
  String get habitPaused => 'Pristabdytas';

  @override
  String get habitPause => 'Pristabdyti įprotį';

  @override
  String get habitResume => 'Tęsti įprotį';

  @override
  String get habitDoneToday => 'Šiandien atlikta';

  @override
  String habitCountToday(int count, int target) {
    return 'Šiandien $count iš $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Pažymėti „$name“';
  }

  @override
  String get habitNotScheduledToday => 'Šiandien nesuplanuota';

  @override
  String get analyticsTitle => 'Įžvalgos';

  @override
  String get rangeWeek => '7 dienos';

  @override
  String get rangeMonth => '30 dienų';

  @override
  String get rangeQuarter => '90 dienų';

  @override
  String get statFocusTime => 'Fokuso laikas';

  @override
  String get statSessions => 'Sesijos';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return 'Baigta: $completed · Sustabdyta anksčiau: $interrupted';
  }

  @override
  String get statTasksDone => 'Atliktos užduotys';

  @override
  String get statCompletionRate => 'Atlikta laiku';

  @override
  String get statHabitConsistency => 'Įpročių pastovumas';

  @override
  String get statRetention => 'Kortelių įsiminimas';

  @override
  String get statReviews => 'Kartojimai';

  @override
  String get statActiveGoals => 'Aktyvūs tikslai';

  @override
  String get statEstimated => 'Įvertintas atliktas darbas';

  @override
  String get statEstimatedNote => 'Pagal jūsų įverčius, o ne išmatuotą laiką';

  @override
  String get statMeasuredNote => 'Išmatuota pagal fokuso sesijas';

  @override
  String get chartFocusByDay => 'Fokuso minutės per dieną';

  @override
  String get chartTasksByDay => 'Atliktos užduotys per dieną';

  @override
  String get chartTimeByProject => 'Laikas pagal projektą';

  @override
  String get chartProjectProgress => 'Projektų pažanga';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: iš viso $total, geriausia diena $best';
  }

  @override
  String get analyticsNoData => 'Kol kas nepakanka duomenų';

  @override
  String get analyticsUnassigned => 'Nepriskirta';

  @override
  String get searchHint => 'Ieškoti visur…';

  @override
  String get searchRecent => 'Naujausios paieškos';

  @override
  String get searchClearRecent => 'Išvalyti naujausias paieškas';

  @override
  String searchNoResults(String query) {
    return 'Pagal „$query“ nieko nerasta';
  }

  @override
  String get searchStartTyping =>
      'Ieškokite užduotyse, užrašuose, kortelėse, tiksluose, įvykiuose ir kitur. Paieška lieka šiame įrenginyje.';

  @override
  String get searchCatTask => 'Užduotys';

  @override
  String get searchCatProject => 'Projektai';

  @override
  String get searchCatNote => 'Užrašai';

  @override
  String get searchCatFlashcard => 'Kortelės';

  @override
  String get searchCatDeck => 'Rinkiniai';

  @override
  String get searchCatGoal => 'Tikslai';

  @override
  String get searchCatHabit => 'Įpročiai';

  @override
  String get searchCatEvent => 'Įvykiai';

  @override
  String get searchCatSession => 'Sesijos';

  @override
  String get searchAll => 'Visi';

  @override
  String get assistantTitle => 'Asistentas';

  @override
  String get assistantIntro =>
      'Planavimo pagalba, veikianti jūsų įrenginyje. Santraukoms ir generavimui galite prijungti pasirinktą DI paslaugų teikėją.';

  @override
  String get assistantOnDevice => 'Įrenginyje';

  @override
  String get assistantCloud => 'DI teikėjas';

  @override
  String get assistantPlanDay => 'Suplanuoti mano dieną';

  @override
  String get assistantPlanDayDesc =>
      'Surikiuoja atviras užduotis pagal skubumą, prioritetą ir įvertį ir pritaiko jas prie jūsų įvykių.';

  @override
  String get assistantExtractTasks => 'Išgauti užduotis iš užrašo';

  @override
  String get assistantExtractTasksDesc =>
      'Užraše randa kontrolinio sąrašo punktus ir veiksmų eilutes ir paverčia jas užduotimis.';

  @override
  String get assistantMakeCards => 'Sukurti korteles iš užrašo';

  @override
  String get assistantMakeCardsDesc =>
      'Eilutes „terminas: apibrėžimas“ ir klausimas / atsakymas paverčia kortelėmis.';

  @override
  String get assistantSummarize => 'Apibendrinti užrašą';

  @override
  String get assistantSummarizeDesc =>
      'Reikia DI teikėjo. Užrašas siunčiamas tik jums patvirtinus.';

  @override
  String get assistantWorkload => 'Darbo krūvio apžvalga';

  @override
  String get assistantWorkloadDesc => 'Palygina įvertintą darbą su jūsų laisvu laiku šią savaitę.';

  @override
  String get assistantPlanEmpty => 'Nėra atvirų užduočių planuoti. Mėgaukitės laisve.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Laisvas fokuso laikas šiandien: $time';
  }

  @override
  String get assistantPlanOverflow => 'Šios gali šiandien netilpti:';

  @override
  String get assistantChooseNote => 'Pasirinkite užrašą';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rasta $count užduočių',
      few: 'Rastos $count užduotys',
      one: 'Rasta $count užduotis',
      zero: 'Šiame užraše užduočių nerasta',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rasta $count kortelių',
      few: 'Rastos $count kortelės',
      one: 'Rasta $count kortelė',
      zero: 'Šiame užraše kortelių nerasta',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Pasirinkite rinkinį';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Įvertintas darbas: $estimated. Laisvas laikas: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Suplanavote daugiau, nei turite laiko. Apsvarstykite galimybę perkelti mažesnio prioriteto užduotis.';

  @override
  String get assistantWorkloadOk => 'Jūsų planas telpa į turimą laiką.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count atvirų užduočių neturi įverčio.',
      few: '$count atviros užduotys neturi įverčio.',
      one: '$count atvira užduotis neturi įverčio.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'DI teikėjas';

  @override
  String get assistantProviderOff => 'Teikėjas neprijungtas. Įrankiai įrenginyje vis tiek veikia.';

  @override
  String assistantProviderOn(String host) {
    return 'Prisijungta prie $host';
  }

  @override
  String get assistantEndpoint => 'API galinis taškas (HTTPS)';

  @override
  String get assistantModel => 'Modelis';

  @override
  String get assistantApiKey => 'API raktas';

  @override
  String get assistantApiKeyStored => 'Saugiai laikomas šiame įrenginyje';

  @override
  String get assistantHttpsOnly => 'Leidžiami tik HTTPS galiniai taškai';

  @override
  String get assistantConsentTitle => 'Siųsti šį turinį jūsų DI teikėjui?';

  @override
  String assistantConsentBody(String host) {
    return 'Pasirinkto užrašo tekstas paliks šį įrenginį ir bus apdorotas $host. Niekas kita nesiunčiama.';
  }

  @override
  String get assistantConsentAlways => 'Daugiau neklausti dėl šio teikėjo';

  @override
  String get assistantSend => 'Siųsti';

  @override
  String get assistantUnavailable => 'Nepavyko pasiekti DI teikėjo. Bandykite vėliau.';

  @override
  String get assistantDisabledTitle => 'Asistentas išjungtas';

  @override
  String get assistantDisabledMessage =>
      'Įjunkite, kad galėtumėte naudoti planavimo įrankius. Jokie duomenys nepalieka įrenginio, nebent prijungsite teikėją ir patvirtinsite kiekvieną užklausą.';

  @override
  String get assistantSummaryTitle => 'Santrauka';

  @override
  String get assistantRemoveProvider => 'Pašalinti teikėją';

  @override
  String get settingsTitle => 'Nustatymai';

  @override
  String get settingsGeneral => 'Bendrieji';

  @override
  String get settingsLanguage => 'Kalba';

  @override
  String get settingsLanguageSystem => 'Įrenginio kalba';

  @override
  String get settingsAppearance => 'Išvaizda';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Šviesi';

  @override
  String get themeDark => 'Tamsi';

  @override
  String get themeSystem => 'Sistemos';

  @override
  String get settingsReduceMotion => 'Mažinti judesį';

  @override
  String get settingsReduceMotionDesc => 'Sumažinti animacijas ir judančius fonus';

  @override
  String get settingsFocus => 'Fokuso laikmatis';

  @override
  String get settingsWorkLength => 'Fokuso trukmė';

  @override
  String get settingsShortBreak => 'Trumpa pertrauka';

  @override
  String get settingsLongBreak => 'Ilga pertrauka';

  @override
  String get settingsLongBreakEvery => 'Ilga pertrauka po';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesijų',
      few: '$count sesijų',
      one: '$count sesijos',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Pertraukas pradėti automatiškai';

  @override
  String get settingsSound => 'Pabaigos garsas';

  @override
  String get settingsDailyFocusTarget => 'Dienos fokuso tikslas';

  @override
  String get settingsWeeklyFocusTarget => 'Savaitės fokuso tikslas';

  @override
  String get settingsNotifications => 'Pranešimai';

  @override
  String get settingsNotificationsEnable => 'Leisti priminimus';

  @override
  String get settingsQuietHours => 'Tylos valandos';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Įpročių, tikslų ir kartojimo priminimai nutildomi nuo $start iki $end';
  }

  @override
  String get settingsReviewReminder => 'Kortelių kartojimo priminimas';

  @override
  String get settingsPermissionDenied => 'Pranešimai užblokuoti sistemos nustatymuose.';

  @override
  String get settingsPrivacy => 'Privatumas ir duomenys';

  @override
  String get settingsPrivacyStatement =>
      'Jūsų duomenys laikomi tik šiame įrenginyje ir yra užšifruoti. Nėra paskyros, analitikos ar sekimo.';

  @override
  String get settingsBackup => 'Sukurti užšifruotą atsarginę kopiją';

  @override
  String get settingsBackupDesc => 'Apsaugota jūsų pasirinktu slaptažodžiu';

  @override
  String get settingsRestore => 'Atkurti iš atsarginės kopijos';

  @override
  String get settingsRestoreDesc => 'Pakeičia visus šio įrenginio duomenis';

  @override
  String get settingsErase => 'Ištrinti visus duomenis';

  @override
  String get settingsEraseDesc => 'Visam laikui ištrinti viską šiame įrenginyje';

  @override
  String get settingsEraseConfirmTitle => 'Ištrinti visus duomenis?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Visos užduotys, užrašai, kortelės, tikslai, įpročiai, įvykiai ir sesijos bus ištrinti visam laikui. Norėdami patvirtinti, įveskite $word.';
  }

  @override
  String get settingsEraseWord => 'IŠTRINTI';

  @override
  String get settingsErased => 'Visi duomenys ištrinti';

  @override
  String get backupPassword => 'Atsarginės kopijos slaptažodis';

  @override
  String get backupPasswordConfirm => 'Patvirtinkite slaptažodį';

  @override
  String backupPasswordHint(int count) {
    return 'Ne mažiau kaip $count simbolių. Pamiršto jo atkurti neįmanoma.';
  }

  @override
  String get backupPasswordMismatch => 'Slaptažodžiai nesutampa';

  @override
  String get backupPasswordShort => 'Slaptažodis per trumpas';

  @override
  String get backupCreating => 'Šifruojama atsarginė kopija…';

  @override
  String get backupCreated => 'Atsarginė kopija paruošta išsaugoti';

  @override
  String get backupRestoring => 'Tikrinama ir atkuriama…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atkurta $count elementų',
      few: 'Atkurti $count elementai',
      one: 'Atkurtas $count elementas',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Neteisingas slaptažodis arba failas buvo pakeistas.';

  @override
  String get backupNotABackup => 'Tai ne Deep Focus atsarginė kopija.';

  @override
  String get backupCorrupted => 'Atsarginės kopijos failas sugadintas.';

  @override
  String get backupNewer =>
      'Ši atsarginė kopija sukurta naujesne programos versija. Pirmiausia atnaujinkite programą.';

  @override
  String get backupRestoreConfirmTitle => 'Pakeisti visus duomenis?';

  @override
  String get backupRestoreConfirmBody =>
      'Viskas, kas dabar yra šiame įrenginyje, bus pakeista atsargine kopija. Jei atkūrimas nepavyks, niekas nepasikeis.';

  @override
  String get settingsAbout => 'Apie';

  @override
  String settingsVersion(String version) {
    return 'Versija $version';
  }

  @override
  String get settingsLicenses => 'Atvirojo kodo licencijos';

  @override
  String get settingsAssistant => 'Asistentas';

  @override
  String get settingsAssistantEnable => 'Įjungti asistentą';

  @override
  String get settingsDashboard => 'Pradžios ekrano skiltys';

  @override
  String get settingsTrash => 'Šiukšlinė';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min.';
  }

  @override
  String get trashEmpty => 'Šiukšlinė tuščia';

  @override
  String get trashHint => 'Ištrinti elementai lieka čia, kol juos pašalinsite.';

  @override
  String get trashTasks => 'Užduotys';

  @override
  String get trashNotes => 'Užrašai';

  @override
  String get onboardWelcomeTitle => 'Sveiki atvykę į savo ateities darbo erdvę';

  @override
  String get onboardWelcomeBody =>
      'Užduotys, fokusas, kalendorius, užrašai, kortelės, tikslai ir įpročiai – kartu ir gražiai paprastai.';

  @override
  String get onboardPrivateTitle => 'Privatu iš esmės';

  @override
  String get onboardPrivateBody =>
      'Viskas lieka šiame įrenginyje, užšifruota. Jokios paskyros. Jokio sekimo. Jūs viską valdote.';

  @override
  String get onboardLanguageTitle => 'Pasirinkite kalbą';

  @override
  String get onboardNotifTitle => 'Švelnūs priminimai';

  @override
  String get onboardNotifBody =>
      'Leiskite pranešimus užduočių priminimams ir fokuso įspėjimams. Tai galite pakeisti bet kada.';

  @override
  String get onboardGetStarted => 'Pradėti';

  @override
  String onboardStep(int current, int total) {
    return '$current veiksmas iš $total';
  }

  @override
  String get notifChannelReminders => 'Priminimai';

  @override
  String get notifChannelRemindersDesc => 'Užduočių, įvykių, įpročių ir tikslų priminimai';

  @override
  String get notifChannelFocus => 'Fokuso laikmatis';

  @override
  String get notifChannelFocusDesc => 'Įspėjimai, kai baigiasi fokuso sesija ar pertrauka';

  @override
  String get notifTaskTitle => 'Užduoties priminimas';

  @override
  String get notifEventTitle => 'Artėjantis įvykis';

  @override
  String notifEventBody(String title, String time) {
    return '$title $time';
  }

  @override
  String get notifFocusDoneTitle => 'Fokuso sesija baigta';

  @override
  String get notifFocusDoneBody => 'Puikus darbas. Laikas pertraukai.';

  @override
  String get notifBreakDoneTitle => 'Pertrauka baigėsi';

  @override
  String get notifBreakDoneBody => 'Pasiruošę kitai fokuso sesijai?';

  @override
  String get notifHabitTitle => 'Įpročio priminimas';

  @override
  String get notifReviewTitle => 'Kortelės paruoštos';

  @override
  String get notifReviewBody => 'Trumpas kartojimas palaiko stiprią atmintį.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours val. $minutes min.';
  }

  @override
  String durationHours(int hours) {
    return '$hours val.';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min.';
  }

  @override
  String percentValue(int value) {
    return '$value %';
  }

  @override
  String get weekdaysShort => 'P,A,T,K,P,Š,S';

  @override
  String a11yProgress(int value) {
    return 'Pažanga $value procentų';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritetas: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Spalva $index';
  }

  @override
  String get analyticsRangeLabel => 'Laikotarpis';

  @override
  String get analyticsRefresh => 'Atnaujinti';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Laiku atlikta $done iš $total užduočių su terminu';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Atlikta užduočių: $done iš $total';
  }

  @override
  String get analyticsNoProjects => 'Nėra aktyvių projektų';

  @override
  String get analyticsNoFocus => 'Šiuo laikotarpiu fokuso sesijų nėra';

  @override
  String get analyticsHabitsNone => 'Nėra aktyvių įpročių';

  @override
  String get analyticsRetentionNote => 'Įsimintų įsisavintų kortelių dalis';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Laisvas laikas skaičiuojamas darbo dienomis ($days) $start–$end, atėmus įvykius su laiku. Įvertintas darbas – atvirų užduočių, kurių terminas per artimiausias 7 dienas, įverčių suma.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Pirmadienis–penktadienis';

  @override
  String get assistantWorkdaysSunThu => 'Sekmadienis–ketvirtadienis';

  @override
  String get assistantWorkloadDayOff => 'Poilsio diena';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return 'Suplanuota $estimated · laisva $free';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Suplanuota nuo dabar iki $end, aplink šiandienos įvykius. Pirmiausia vėluojančios užduotys, tada prioritetas, terminas ir įvertis.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Suplanuoti kaip laiko blokus';

  @override
  String get assistantScheduleConfirmTitle => 'Pridėti laiko blokus į kalendorių?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Į šiandienos kalendorių bus pridėta $count laiko blokų.',
      few: 'Į šiandienos kalendorių bus pridėti $count laiko blokai.',
      one: 'Į šiandienos kalendorių bus pridėtas $count laiko blokas.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridėta $count laiko blokų',
      few: 'Pridėti $count laiko blokai',
      one: 'Pridėtas $count laiko blokas',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Jau yra jūsų kalendoriuje';

  @override
  String get assistantPlanTimeline => 'Telpa šiandien';

  @override
  String get assistantNoEstimate => 'Pridėkite įvertį, kad galėtumėte suplanuoti';

  @override
  String get assistantNoNotes => 'Užrašų dar nėra. Pirmiausia parašykite užrašą.';

  @override
  String get assistantNoteEmpty => 'Šis užrašas tuščias.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sukurta $count užduočių',
      few: 'Sukurtos $count užduotys',
      one: 'Sukurta $count užduotis',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sukurta $count kortelių',
      few: 'Sukurtos $count kortelės',
      one: 'Sukurta $count kortelė',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sukurti $count',
      few: 'Sukurti $count',
      one: 'Sukurti $count',
      zero: 'Niekas nepasirinkta',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Atpažįstama: nepažymėti žymimieji langeliai „- [ ]“ ir eilutės, prasidedančios TODO: arba To do:';

  @override
  String get assistantCardsHint =>
      'Atpažįstama: „terminas: apibrėžimas“, „terminas — apibrėžimas“ ir Q:/A: eilučių poros';

  @override
  String get assistantProviderHint =>
      'Naudokite bet kurią su OpenAI suderinamą paslaugą. Raktas lieka saugioje šio įrenginio saugykloje ir niekada neįtraukiamas į atsargines kopijas.';

  @override
  String get assistantEndpointHelp => 'Pavyzdžiui, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Palikite tuščią, kad būtų paliktas išsaugotas raktas';

  @override
  String get assistantApiKeyRequired => 'Įveskite API raktą';

  @override
  String get assistantProviderSaved => 'Teikėjas išsaugotas';

  @override
  String get assistantProviderRemoved => 'Teikėjas pašalintas, raktas ištrintas';

  @override
  String get assistantRemoveProviderConfirm =>
      'Pašalinti teikėją ir ištrinti išsaugotą API raktą iš šio įrenginio?';

  @override
  String get assistantAskEveryTime => 'Klausti prieš kiekvieną užklausą';

  @override
  String get assistantSummarizing => 'Apibendrinama…';

  @override
  String assistantSummaryNote(String host) {
    return 'Sugeneravo $host. Peržiūrėkite prieš pasikliaudami.';
  }

  @override
  String get assistantCopy => 'Kopijuoti';

  @override
  String get assistantCopied => 'Nukopijuota';

  @override
  String get assistantConfigure => 'Nustatyti teikėją';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Visi šios serijos įvykiai perkelti';

  @override
  String get calendarEventReminder => 'Priminimas';

  @override
  String get calendarEventRepeat => 'Kartoti';

  @override
  String get calendarEventColor => 'Spalva';

  @override
  String get calendarDefaultColor => 'Naudoti tipo spalvą';

  @override
  String get calendarEventLinkedTask => 'Susieta užduotis';

  @override
  String get calendarEventNoTask => 'Nėra susietos užduoties';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count įvykių',
      few: '$count įvykiai',
      one: '$count įvykis',
      zero: 'Įvykių nėra',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count užduočių su terminu',
      few: '$count užduotys su terminu',
      one: '$count užduotis su terminu',
      zero: 'užduočių su terminu nėra',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Pridėkite įvykį arba laiko bloką, kad suplanuotumėte šią dieną.';

  @override
  String get calendarNow => 'Dabartinis laikas';

  @override
  String get calendarRecurring => 'Kartojasi';

  @override
  String get calendarEventNotFound => 'Šio įvykio nebėra';

  @override
  String get calendarEventLocalTime => 'Laikas rodomas jūsų įrenginio laiko juostoje';

  @override
  String get calendarEventDeleted => 'Įvykis perkeltas į šiukšlinę';

  @override
  String get calendarConflictMarker => 'Persidengia su kitu įvykiu';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Pakeitimai taikomi visiems šios serijos įvykiams';

  @override
  String get calendarDragHintSeries => 'Vilkdami pasikartojantį įvykį perkeliate visą seriją';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, užduoties terminas';
  }

  @override
  String get startupErrorTitle => 'Nepavyko atidaryti jūsų duomenų';

  @override
  String get startupErrorLocked =>
      'Šio įrenginio duomenų šifravimo raktas nepasiekiamas. Niekas neištrinta. Dažnai padeda įrenginio paleidimas iš naujo. Jei neseniai atkūrėte įrenginį, verčiau atkurkite duomenis iš užšifruotos atsarginės kopijos.';

  @override
  String get startupErrorCipher =>
      'Šis įrenginys nepalaiko programai reikalingos šifruotos saugyklos. Niekas nebuvo išsaugota neužšifruota.';

  @override
  String get startupErrorRetry => 'Bandyti dar kartą';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kartoti reikia $count kortelių',
      few: 'Kartoti reikia $count korteles',
      one: 'Kartoti reikia $count kortelę',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return 'Kartoti: $count';
  }

  @override
  String flashcardsNewCount(int count) {
    return 'Naujų: $count';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Įsisavintos kortelės: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Įveskite 0 arba daugiau';

  @override
  String get flashcardsSearchCards => 'Ieškoti kortelių';

  @override
  String get flashcardsSearchEmpty => 'Paieškos atitinkančių kortelių nėra';

  @override
  String get flashcardsCardAdded => 'Kortelė pridėta';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Kartoti $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopijuoti į iškarpinę';

  @override
  String get flashcardsExportTitle => 'Eksportuoti rinkinį';

  @override
  String get flashcardsDeleteDeck => 'Ištrinti rinkinį';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, kitas kartojimas po $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Klausimas: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Atsakymas: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Rodyti klausimą';

  @override
  String get flashcardsImportField => 'Importuojamos kortelės';

  @override
  String get flashcardsNothingToStudy => 'Nėra ko mokytis';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kortelių paruošta mokytis',
      few: '$count kortelės paruoštos mokytis',
      one: '$count kortelė paruošta mokytis',
      zero: 'Paruoštų kortelių nėra',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Pagal įvertinimą';

  @override
  String get flashcardsDeckNotFound => 'Šis rinkinys nebepasiekiamas.';

  @override
  String get focusSessionDeleted => 'Sesija ištrinta';

  @override
  String get focusDeleteConfirm =>
      'Ištrinti šią sesiją iš istorijos? Jos laikas nebebus skaičiuojamas jūsų tiksluose.';

  @override
  String get focusUnlinkTask => 'Pašalinti susietą užduotį';

  @override
  String get focusNoteHint => 'Su kuo dirbote?';

  @override
  String get focusTargetCaption => 'Išmatuota pagal išsaugotas sesijas';

  @override
  String get focusModeLabel => 'Laikmačio režimas';

  @override
  String focusUpNext(String phase) {
    return 'Toliau: $phase';
  }

  @override
  String get focusStopwatchHint => 'Skaičiuoja į priekį, kol sustabdysite.';

  @override
  String get focusOpenHint => 'Be laiko ribos. Sustabdykite, kai baigsite.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Priminimai išjungti nustatymuose. Nebūsite įspėti, kai sesija baigsis.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Visi';

  @override
  String get goalsFilterPeriod => 'Laikotarpio filtras';

  @override
  String get goalsFilterStatus => 'Būsenos filtras';

  @override
  String get goalsEmptyFiltered => 'Šį filtrą atitinkančių tikslų nėra';

  @override
  String goalsDueOn(String date) {
    return 'Terminas $date';
  }

  @override
  String get goalsDeadline => 'Terminas (neprivaloma)';

  @override
  String get goalsNoDeadline => 'Be termino';

  @override
  String get goalsSetDeadline => 'Nustatyti terminą';

  @override
  String get goalsRemoveDeadline => 'Pašalinti terminą';

  @override
  String get goalsDescription => 'Aprašymas (neprivaloma)';

  @override
  String get goalsTitleLabel => 'Pavadinimas';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Tikslas pasiektas';

  @override
  String get goalsLogged => 'Pažanga įrašyta';

  @override
  String get goalsEntryDeleted => 'Įrašas pašalintas';

  @override
  String get goalsDeleteEntry => 'Pašalinti įrašą';

  @override
  String get goalsDeleted => 'Tikslas ištrintas';

  @override
  String get goalsMarkActive => 'Pažymėti kaip aktyvų';

  @override
  String get goalsNotFound => 'Šio tikslo nebėra';

  @override
  String get goalsLinkTask => 'Susieti užduotį';

  @override
  String get goalsNoLinkedTasks => 'Susietų užduočių dar nėra';

  @override
  String get goalsUnlinkTask => 'Atsieti užduotį';

  @override
  String get goalsTaskOpen => 'Dar neatlikta';

  @override
  String get goalsTaskLinked => 'Užduotis susieta';

  @override
  String get goalsTaskUnlinked => 'Užduotis atsieta';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count atliktų susietų užduočių',
      few: '$count atliktas susietas užduotis',
      one: '$count atliktą susietą užduotį',
    );
    return 'Įskaitant $_temp0 šiuo laikotarpiu';
  }

  @override
  String get goalsHistoryAllTime =>
      'Ankstesnių laikotarpių įrašai lieka čia, bet skaičiuojami tik savo laikotarpiui.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Šiandien atlikta $done iš $total';
  }

  @override
  String get habitsNothingToday => 'Šiandien įpročių nesuplanuota';

  @override
  String get habitsDecrease => 'Pašalinti vieną pažymėjimą';

  @override
  String get habitsResetToday => 'Atstatyti šiandieną';

  @override
  String get habitsCheckInHint => 'Ilgai paspauskite, kad pakoreguotumėte';

  @override
  String get habitsName => 'Pavadinimas';

  @override
  String get habitsColor => 'Spalva';

  @override
  String get habitsValidationDays => 'Pasirinkite bent vieną dieną';

  @override
  String habitsReminderAt(String time) {
    return 'Kasdien $time';
  }

  @override
  String get habitsSetReminder => 'Nustatyti priminimo laiką';

  @override
  String get habitsRemoveReminder => 'Pašalinti priminimą';

  @override
  String get habitsReminderNote =>
      'Priminimai rodomi suplanuotomis dienomis, kai pranešimai leidžiami.';

  @override
  String get habitsArchived => 'Įprotis archyvuotas';

  @override
  String get habitsNotFound => 'Šio įpročio nebėra';

  @override
  String get habitsLast30 => 'Paskutinės 30 dienų';

  @override
  String get habitsConsistencyNone => 'Kol kas nepakanka duomenų';

  @override
  String get habitsCalendar => 'Pažymėjimų istorija';

  @override
  String get habitsCalendarHint => 'Palieskite dieną, kad ją pataisytumėte.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count iš $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Pažymėjimai per paskutines 90 dienų. Pastovumas $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Pažymėjimai per paskutines 90 dienų. Kol kas nepakanka duomenų.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienų',
      few: '$count dienos',
      one: '$count diena',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Pristabdytos dienos neturi įtakos jūsų serijai.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Archyvuoti įprotį';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartų per dieną',
      few: '$count kartus per dieną',
      one: '$count kartą per dieną',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Kiti užrašai';

  @override
  String get notesAllNotebooks => 'Visi sąsiuviniai';

  @override
  String get notesNotebookName => 'Sąsiuvinio pavadinimas';

  @override
  String get notesNotebookColor => 'Spalva';

  @override
  String get notesDeleteNotebook => 'Ištrinti sąsiuvinį';

  @override
  String get notesDeleteNotebookMessage =>
      'Sąsiuvinis pašalinamas. Jo užrašai išsaugomi ir rodomi skiltyje „Visi sąsiuviniai“.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Prisekite svarbius užrašus, kad jie liktų viršuje.';

  @override
  String get notesEmptyFavorites => 'Čia rodomi užrašai, kuriuos pažymite kaip mėgstamus.';

  @override
  String get notesEmptyArchived => 'Čia rodomi archyvuoti užrašai.';

  @override
  String get notesEmptyFiltered => 'Šiuos filtrus atitinkančių užrašų nėra.';

  @override
  String get notesArchivedSnack => 'Užrašas archyvuotas';

  @override
  String get notesUnarchivedSnack => 'Užrašas grąžintas į jūsų užrašus';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Atlikta $done iš $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatavimas';

  @override
  String get notesWrite => 'Rašyti';

  @override
  String get notesPreviewEmpty => 'Kol kas nėra ką peržiūrėti.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Į šį užrašą kol kas nenurodo jokie kiti užrašai. Nuorodą į jį sukurkite su [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Suteikite užrašui pavadinimą, kad kiti užrašai galėtų į jį nurodyti.';

  @override
  String get notesLinkedTasksEmpty => 'Su šiuo užrašu nesusieta jokių užduočių.';

  @override
  String notesLinkMissing(String title) {
    return 'Užrašo pavadinimu „$title“ dar nėra.';
  }

  @override
  String get notesNotFound => 'Šio užrašo nebėra.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Kontrolinio sąrašo punktas: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Atidaryti užrašą $title';
  }

  @override
  String get notesTaskDone => 'Atlikta';

  @override
  String get notifTimerDoneBody => 'Jūsų nustatytas laikas baigėsi.';

  @override
  String get onboardingPrivatePointDevice => 'Laikoma tik šiame įrenginyje, užšifruota';

  @override
  String get onboardingPrivatePointAccount => 'Paskyros nereikia';

  @override
  String get onboardingPrivatePointTracking => 'Jokios analitikos, jokio sekimo';

  @override
  String get onboardingLanguageBody => 'Tai galite bet kada pakeisti nustatymuose.';

  @override
  String get onboardingNext => 'Toliau';

  @override
  String get projectsActive => 'Aktyvūs';

  @override
  String get projectNameHint => 'pvz., Produkto paleidimas';

  @override
  String get projectGoalHint => 'Kaip atrodo atliktas darbas?';

  @override
  String get projectNoDeadline => 'Be termino';

  @override
  String get projectTasksOpen => 'Atviros užduotys';

  @override
  String get projectTasksCompleted => 'Atliktos užduotys';

  @override
  String get projectAddTask => 'Pridėti užduotį į projektą';

  @override
  String get projectAddNote => 'Naujas projekto užrašas';

  @override
  String get projectLinkedNotes => 'Užrašai';

  @override
  String get projectNoTasks => 'Šiame projekte dar nėra užduočių';

  @override
  String get projectArchivedBadge => 'Archyvuotas';

  @override
  String get projectDeleted => 'Projektas perkeltas į šiukšlinę';

  @override
  String get projectDeleteMessage => 'Užduotys lieka jūsų sąraše be projekto.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, atlikta $percent procentų';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultatų',
      few: '$count rezultatai',
      one: '$count rezultatas',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtruoti pagal tipą';

  @override
  String searchRecentTap(String query) {
    return 'Vėl ieškoti „$query“';
  }

  @override
  String get settingsLanguageHint =>
      'Pasirinkite visos programos kalbą. Pavadinimai rodomi jų pačių kalba.';

  @override
  String get settingsThemeHint => 'Šviesi, tamsi arba pagal sistemą';

  @override
  String settingsDecrease(String setting) {
    return 'Sumažinti: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Padidinti: $setting';
  }

  @override
  String get settingsQuietStart => 'Prasideda';

  @override
  String get settingsQuietEnd => 'Baigiasi';

  @override
  String get settingsNotificationsHint =>
      'Tai išsaugo jūsų nuostatą programoje. Sistema taip pat gali paprašyti leidimo.';

  @override
  String get settingsDashboardHint =>
      'Vilkite, kad pakeistumėte tvarką. Išjunkite nereikalingas skiltis.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Pakeisti skilties „$section“ vietą';
  }

  @override
  String get settingsDashboardReset => 'Atkurti numatytąją tvarką';

  @override
  String get settingsAssistantDesc =>
      'Neprivaloma pagalba planuojant. Niekas nepalieka įrenginio, nebent prijungsite teikėją.';

  @override
  String get settingsAssistantSetup => 'Asistentas ir teikėjo sąranka';

  @override
  String get settingsTrashDesc => 'Atkurkite arba visam laikui ištrinkite pašalintus elementus';

  @override
  String get settingsEraseFirstBody =>
      'To anuliuoti negalima. Pirmiausia apsvarstykite galimybę sukurti užšifruotą atsarginę kopiją.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Įveskite $word';
  }

  @override
  String get settingsEraseFailed => 'Duomenų ištrinti nepavyko. Niekas nepakeista.';

  @override
  String get settingsAboutTagline => 'Privati, vietinė produktyvumo darbo erdvė.';

  @override
  String get backupShowPassword => 'Rodyti slaptažodį';

  @override
  String get backupHidePassword => 'Slėpti slaptažodį';

  @override
  String get backupSaved => 'Atsarginė kopija išsaugota';

  @override
  String get backupFailed => 'Nepavyko sukurti atsarginės kopijos. Jūsų duomenys nepakeisti.';

  @override
  String get backupReadFailed => 'Nepavyko perskaityti pasirinkto failo.';

  @override
  String get backupRestoreFailed => 'Atkurti nepavyko. Niekas nepakeista.';

  @override
  String get backupShareSubject => 'Deep Focus užšifruota atsarginė kopija';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kas $count dienų',
      few: 'Kas $count dienas',
      one: 'Kas $count dieną',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kas $count savaičių',
      few: 'Kas $count savaites',
      one: 'Kas $count savaitę',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kas $count mėnesių',
      few: 'Kas $count mėnesius',
      one: 'Kas $count mėnesį',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kas $count metų',
      few: 'Kas $count metus',
      one: 'Kas $count metus',
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
    return 'dienomis: $days';
  }

  @override
  String get repeatEndsLabel => 'Baigiasi';

  @override
  String get repeatEndsAfter => 'Po tam tikro kartų skaičiaus';

  @override
  String get repeatCountLabel => 'Pasikartojimai';

  @override
  String get reminderNone => 'Be priminimo';

  @override
  String get reminderCustomTime => 'Konkrečiu laiku';

  @override
  String get a11yDecrease => 'Sumažinti';

  @override
  String get a11yIncrease => 'Padidinti';

  @override
  String get pickTaskTitle => 'Pasirinkite užduotį';

  @override
  String get pickTaskEmpty => 'Nėra atvirų užduočių';

  @override
  String get tasksSearchTooltip => 'Ieškoti užduočių';

  @override
  String get tasksSectionOverdue => 'Vėluojančios';

  @override
  String get tasksSectionToday => 'Šiandien';

  @override
  String get tasksRecurringSemantics => 'Kartojasi';

  @override
  String get tasksFilterPriorityAtLeast => 'Mažiausias prioritetas';

  @override
  String get tasksFilterCategory => 'Kategorija';

  @override
  String get tasksFilterAnyCategory => 'Bet kokia kategorija';

  @override
  String get tasksFilterLabel => 'Žyma';

  @override
  String get tasksFilterAnyLabel => 'Bet kokia žyma';

  @override
  String get tasksFilterReset => 'Atstatyti filtrus';

  @override
  String get tasksViewByProject => 'Pagal projektą';

  @override
  String get tasksViewByPriority => 'Pagal prioritetą';

  @override
  String get tasksViewByCategory => 'Pagal kategoriją';

  @override
  String get tasksGroupNoCategory => 'Be kategorijos';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count užduočių',
      few: '$count užduotys',
      one: '$count užduotis',
    );
    return 'Blokuoja $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Šią užduotį blokuoja neatliktos užduotys. Vis tiek ją užbaigti?';

  @override
  String get taskStartFocus => 'Fokusuotis į šią užduotį';

  @override
  String get taskRemoveDate => 'Pašalinti datą';

  @override
  String get taskAllDay => 'Be konkretaus laiko';

  @override
  String get taskSaved => 'Užduotis išsaugota';

  @override
  String get taskCreated => 'Užduotis sukurta';

  @override
  String get taskReminderNeedsDue =>
      'Nustatykite terminą, kad galėtumėte naudoti santykinius priminimus';

  @override
  String get taskSubtaskDetailsHint =>
      'Pirmiausia išsaugokite užduotį, kad pridėtumėte papildomų užduočių, kontrolinio sąrašo punktų, žymų ir priklausomybių.';

  @override
  String get taskLabelName => 'Žymos pavadinimas';

  @override
  String get taskMoreDetails => 'Išsami informacija';

  @override
  String get taskPlanning => 'Planavimas';

  @override
  String get taskOrganize => 'Tvarkymas';

  @override
  String get taskBreakdown => 'Išskaidymas';

  @override
  String get trashDeleteTaskTitle => 'Ištrinti šią užduotį visam laikui?';

  @override
  String get trashDeleteNoteTitle => 'Ištrinti šį užrašą visam laikui?';

  @override
  String get trashDeleteBody => 'To anuliuoti negalima.';

  @override
  String get trashEmptyTitle => 'Ištuštinti šiukšlinę?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementų bus ištrinta visam laikui.',
      few: '$count elementai bus ištrinti visam laikui.',
      one: '$count elementas bus ištrintas visam laikui.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Atkurta';

  @override
  String get trashPurged => 'Ištrinta visam laikui';

  @override
  String trashDeletedOn(String date) {
    return 'Ištrinta $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementų',
      few: '$count elementai',
      one: '$count elementas',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Skaityti garsiai';

  @override
  String get flashcardsTtsUnavailable => 'Teksto vertimas kalba šiame įrenginyje nepasiekiamas.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Šiai kalbai neįdiegtas joks balsas. Pridėkite jį Android teksto vertimo kalba nustatymuose.';

  @override
  String get calendarAgenda => 'Darbotvarkė';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Kibirkštis',
      'rocket': 'Raketa',
      'book': 'Knyga',
      'work': 'Darbas',
      'home': 'Namai',
      'heart': 'Širdis',
      'code': 'Kodas',
      'palette': 'Paletė',
      'fitness': 'Sportas',
      'school': 'Mokykla',
      'travel': 'Kelionės',
      'money': 'Santaupos',
      'other': 'Piktograma',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Daugiau laukų';

  @override
  String get cardFieldExample => 'Pavyzdys';

  @override
  String get cardFieldExplanation => 'Paaiškinimas';

  @override
  String get cardFieldPronunciation => 'Tarimas';

  @override
  String get cardFieldNotes => 'Papildomos pastabos';

  @override
  String get projectMilestones => 'Etapai';

  @override
  String get milestoneAdd => 'Pridėti etapą';

  @override
  String get milestoneEdit => 'Redaguoti etapą';

  @override
  String get milestoneTitleLabel => 'Etapas';

  @override
  String get milestoneNoDate => 'Be datos';

  @override
  String get milestonesEmpty =>
      'Etapų dar nėra. Pridėkite kontrolinius taškus su datomis, kad stebėtumėte projektą kalendoriuje.';

  @override
  String get milestoneDeleted => 'Etapas ištrintas';

  @override
  String milestoneDoneA11y(String title) {
    return 'Pažymėti etapą „$title“ kaip atliktą';
  }

  @override
  String calendarMilestone(String project) {
    return 'Etapas · $project';
  }

  @override
  String get tasksViewInbox => 'Gautieji';

  @override
  String get tasksViewArchived => 'Archyvuotos';

  @override
  String get tasksEmptyInbox =>
      'Čia patenka užduotys be projekto ar datos. Surūšiuokite jas, kai turėsite minutę.';

  @override
  String get tasksEmptyArchived =>
      'Archyvuotos užduotys laikomos čia, atokiau nuo jūsų sąrašų ir priminimų.';

  @override
  String get taskArchivedBadge => 'Archyvuota';

  @override
  String get taskStatusInProgress => 'Vykdoma';

  @override
  String get taskArchived => 'Užduotis archyvuota';

  @override
  String get taskUnarchived => 'Užduotis atkurta iš archyvo';

  @override
  String get focusPlanTitle => 'Sesijų planas';

  @override
  String focusPlanTotal(String duration) {
    return 'Iš viso $duration';
  }

  @override
  String get focusPlanRounds => 'Fokuso sesijos';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Ilga pertrauka po';

  @override
  String get focusPlanSkipLastBreak => 'Praleisti paskutinę pertrauką';

  @override
  String get focusPlanAutoBreaks => 'Pertraukas pradėti automatiškai';

  @override
  String get focusPlanAutoFocus => 'Po pertraukos fokusą pradėti automatiškai';

  @override
  String get focusPlanSave => 'Išsaugoti planą';

  @override
  String get focusPlanNameHint => 'pvz., Pasiruošimas egzaminui';

  @override
  String get focusPlanSaved => 'Planas išsaugotas';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min. fokusas, $rest min. pertrauka';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Sumažinti: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Padidinti: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '$current sesija iš $total';
  }

  @override
  String get focusSeriesComplete => 'Serija baigta. Puiku!';

  @override
  String get filterAll => 'Visos';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Importuota: $added · praleista dublikatų: $duplicates · neišsamių eilučių: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Sustabdyti kortelę';

  @override
  String get flashcardsResume => 'Tęsti kortelę';

  @override
  String get flashcardsSuspended => 'Kortelė sustabdyta: ji nebus planuojama';

  @override
  String get flashcardsResumed => 'Kortelė vėl aktyvi';

  @override
  String get flashcardsSuspendedFilter => 'Sustabdyta';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown iš $total kortelių';
  }

  @override
  String get flashcardsImportFile => 'Iš failo';

  @override
  String get speechTitle => 'Kalba';

  @override
  String get speechAppLanguage => 'Programos kalba';

  @override
  String get speechFrontLanguage => 'Priekio kalba';

  @override
  String get speechBackLanguage => 'Galo kalba';

  @override
  String get speechRepeat => 'Kartoti kiekvieną skaitymą';

  @override
  String get speechRate => 'Greitis';

  @override
  String get speechAutoRead => 'Klausimą skaityti automatiškai';

  @override
  String get speechHint =>
      'Naudojami šiame įrenginyje įdiegti balsai, be interneto. Jei kalba neturi balso, jums bus pranešta ir niekas kitas nebus naudojamas.';

  @override
  String get studyHowTitle => 'Kaip norite mokytis?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kartoti $count kortelių',
      few: 'Kartoti $count korteles',
      one: 'Kartoti $count kortelę',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Praktikuoti visas korteles (tvarkaraštis nesikeičia)';

  @override
  String get studyPracticeMistakes => 'Praktikuoti naujausias klaidas';

  @override
  String get studyPracticeHint =>
      'Praktikos ratai niekada nekeičia kortelių kartojimo laiko. Kartojimas atnaujina tvarkaraštį.';

  @override
  String get studyModeClassic => 'Klasikinis';

  @override
  String get studyModeReverse => 'Atvirkštinis';

  @override
  String get studyModeMixed => 'Abiem kryptimis';

  @override
  String get studyModeTyped => 'Įrašyti atsakymą';

  @override
  String get studyModeChoice => 'Keli pasirinkimai';

  @override
  String get studyModeListening => 'Klausymas';

  @override
  String get studyPractice => 'praktika';

  @override
  String get studyNoMistakes => 'Šiame rinkinyje naujausių klaidų nėra. Puiku!';

  @override
  String get studyTypeAnswer => 'Įrašykite atsakymą';

  @override
  String get studyCheck => 'Tikrinti';

  @override
  String get studyKnewIt => 'Žinojau';

  @override
  String get studyDidntKnow => 'Nežinojau';

  @override
  String studyMistakes(int count) {
    return 'Praleista ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Kartoti praleistas korteles';

  @override
  String get studyCorrect => 'Teisingai';

  @override
  String get studyAlmost => 'Beveik – patikrinkite rašybą';

  @override
  String get studyWrong => 'Ne visai';

  @override
  String get studyShowText => 'Rodyti tekstą';

  @override
  String get flashcardsImportFileFailed =>
      'Nepavyko atidaryti failo. Vietoj to galite įklijuoti jo turinį.';

  @override
  String get studyNoMatchingCards => 'Šį pasirinkimą atitinkančių kortelių dar nėra.';

  @override
  String get studyPracticeNew => 'Tik naujos';

  @override
  String get studyPracticeHard => 'Sunkios kortelės';

  @override
  String get studyPracticeFavorites => 'Mėgstamos';

  @override
  String get studySessionSize => 'Kortelių per sesiją';

  @override
  String get studySessionAll => 'Visos';

  @override
  String get studyOrder => 'Tvarka';

  @override
  String get studyOrderDue => 'Pirmiausia labiausiai vėluojančios';

  @override
  String get studyOrderRandom => 'Atsitiktinė';

  @override
  String get studyOrderHardest => 'Pirmiausia sunkiausios';

  @override
  String get flashcardsHard => 'Sunki';

  @override
  String get flashcardsFavorites => 'Mėgstamos';

  @override
  String get flashcardsFavorite => 'Į mėgstamas';

  @override
  String get flashcardsUnfavorite => 'Pašalinti iš mėgstamų';

  @override
  String get flashcardsDuplicate => 'Dubliuoti';

  @override
  String get flashcardsMoveTo => 'Perkelti į rinkinį';

  @override
  String get flashcardsNoOtherDeck => 'Pirmiausia sukurkite kitą rinkinį.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Perkelta $count kortelių',
      few: 'Perkeltos $count kortelės',
      one: 'Perkelta $count kortelė',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Pridėti žymą';

  @override
  String get flashcardsTagHint => 'pvz., veiksmažodžiai';

  @override
  String flashcardsSelected(int count) {
    return 'Pasirinkta: $count';
  }

  @override
  String get flashcardsSelectAll => 'Pasirinkti visas rodomas';

  @override
  String flashcardsSelectCard(String front) {
    return 'Pasirinkti $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Prisiminimas $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Galimas dublikatas';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Šiame rinkinyje jau yra „$front“ → „$back“. Vis tiek išsaugoti?';
  }

  @override
  String get flashcardsSaveAnyway => 'Vis tiek išsaugoti';

  @override
  String get flashcardsStats => 'Statistika';

  @override
  String get flashcardsStatTotal => 'Kortelės';

  @override
  String get flashcardsStatLearning => 'Mokomasi';

  @override
  String get flashcardsStatMatureCaption => 'Įsiminta 21+ dienų';

  @override
  String get flashcardsStatReviewsToday => 'Kartojimai šiandien';

  @override
  String get flashcardsStatCorrect => 'Teisingi atsakymai';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Paskutinės dienos: $days';
  }

  @override
  String get flashcardsStatForget => 'Pamiršimo dažnis';

  @override
  String get flashcardsStatForgetCaption => '„Dar kartą“ išmoktoms kortelėms';

  @override
  String get flashcardsStatRecall => 'Prisiminimas dabar';

  @override
  String get flashcardsStatRecallCaption => 'FSRS įvertis, kartotos kortelės';

  @override
  String flashcardsStatActivity(int count) {
    return 'Kartojimai per dieną · iš viso $count';
  }

  @override
  String get flashcardsStatHistory => 'Naujausi atsakymai';

  @override
  String get flashcardsStatNoHistory =>
      'Kartojimų dar nėra. Mokykitės rinkinio, kad čia matytumėte savo pažangą.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Skaityti garsiai: $field';
  }

  @override
  String get speechVoice => 'Balsas';

  @override
  String get speechVoiceDefault => 'Automatinis';

  @override
  String get speechVoiceOnline => 'reikia interneto';

  @override
  String get speechTest => 'Išbandyti balsą';

  @override
  String get importNext => 'Peržiūra';

  @override
  String get importPreviewTitle => 'Susiekite stulpelius su laukais';

  @override
  String get importIgnoreColumn => 'Ignoruoti';

  @override
  String importColumn(int n) {
    return '$n stulpelis';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Paruošta kortelių: $ready · bus praleista neišsamių eilučių: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Pasirinkite, kurie stulpeliai yra priekis ir galas.';

  @override
  String get actionMoveUp => 'Perkelti aukštyn';

  @override
  String get actionMoveDown => 'Perkelti žemyn';

  @override
  String get flashcardsLayoutTitle => 'Kortelės išdėstymas';

  @override
  String get flashcardsLayoutHint =>
      'Pervadinkite, paslėpkite ar pertvarkykite šio rinkinio papildomus laukus. Kortelių turinys niekada nekeičiamas.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Rodyti $field mokantis';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Atskleisti atsakymą žingsnis po žingsnio';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Pirmiausia rodomas galas; kiekvienas papildomas laukas atsidaro palietus.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Rodyti $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Šis failas didesnis nei $mb MB.';
  }

  @override
  String get flashcardsImage => 'Vaizdas';

  @override
  String get flashcardsAudio => 'Garsas';

  @override
  String get flashcardsAddImage => 'Pridėti vaizdą';

  @override
  String get flashcardsAddAudio => 'Pridėti garsą';

  @override
  String get flashcardsPlayAudio => 'Leisti įrašą';

  @override
  String get flashcardsAudioUnavailable => 'Šio įrašo negalima paleisti šiame įrenginyje.';

  @override
  String get flashcardsCustomFields => 'Jūsų laukai';

  @override
  String get flashcardsTemplates => 'Šablonai';

  @override
  String flashcardsNewFieldName(int n) {
    return '$n laukas';
  }

  @override
  String get flashcardsAddField => 'Pridėti lauką';

  @override
  String get flashcardsFieldName => 'Lauko pavadinimas';

  @override
  String get flashcardsFieldLangDefault => 'Pusės kalba';

  @override
  String get flashcardsTemplateConfirm =>
      'Šablonas nustato, kaip rodomi laukai, ir prideda savo laukus. Jūsų kortelės ir esami laukai lieka nepakitę.';

  @override
  String get flashcardsApplyTemplate => 'Taikyti';

  @override
  String get templateVocabulary => 'Žodynas';

  @override
  String get templateTwoTranslations => 'Žodis su dviem vertimais';

  @override
  String get templateQuestionAnswer => 'Klausimas ir atsakymas';

  @override
  String get templateDefinition => 'Terminas ir apibrėžimas';

  @override
  String get templateGrammar => 'Gramatikos taisyklė';

  @override
  String get templateFieldPlural => 'Daugiskaita';

  @override
  String get templateFieldTranslation2 => 'Antras vertimas';

  @override
  String get templateFieldSynonyms => 'Sinonimai';

  @override
  String get templateFieldRule => 'Taisyklė';

  @override
  String get deckCategory => 'Lygis arba tema';

  @override
  String get deckCategoryHint => 'pvz., A1, Medicina';

  @override
  String get flashcardsSearchAll => 'Ieškoti visų kortelių';

  @override
  String get flashcardsSearchAllHint => 'Žodis, vertimas, pavyzdys, pastaba, žyma…';

  @override
  String get flashcardsAllDecks => 'Visi rinkiniai';

  @override
  String get flashcardsAllLanguages => 'Visos kalbos';

  @override
  String get flashcardsLangUnset => 'Kalba nenustatyta';

  @override
  String get flashcardsLevelUnset => 'Be lygio ar temos';

  @override
  String get flashcardsByLanguage => 'Pažanga pagal kalbą';

  @override
  String get flashcardsByLevel => 'Pažanga pagal lygį ar temą';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Rinkiniai: $decks · kortelės: $cards · įsisavintos: $mature · kartoti: $due · teisingi: $correct (30 dienų)';
  }

  @override
  String get flashcardsRecord => 'Įrašyti';

  @override
  String get flashcardsRecording => 'Įrašoma…';

  @override
  String get flashcardsRecordStop => 'Sustabdyti ir palikti';

  @override
  String get flashcardsMicDenied =>
      'Prieiga prie mikrofono išjungta. Kad galėtumėte įrašyti, leiskite ją sistemos nustatymuose.';

  @override
  String get flashcardsRecordFailed => 'Įrašymas šiame įrenginyje negalimas.';

  @override
  String get soundsTitle => 'Garsai';

  @override
  String get soundsNature => 'Gamta';

  @override
  String get soundsNoise => 'Fokuso triukšmas';

  @override
  String get soundRain => 'Lietus';

  @override
  String get soundStorm => 'Perkūnija';

  @override
  String get soundRiver => 'Upė';

  @override
  String get soundOcean => 'Jūros bangos';

  @override
  String get soundFire => 'Laužas';

  @override
  String get soundForest => 'Miško paukščiai';

  @override
  String get soundNight => 'Vasaros naktis';

  @override
  String get soundWhite => 'Baltasis triukšmas';

  @override
  String get soundPink => 'Rožinis triukšmas';

  @override
  String get soundBrown => 'Rudasis triukšmas';

  @override
  String get soundsPlay => 'Leisti';

  @override
  String get soundsSleep => 'Miego laikmatis';

  @override
  String get soundsSleepOff => 'Išjungta';

  @override
  String soundsSleepAt(String time) {
    return 'Sustos $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Vienu metu gali skambėti iki $count garsų.';
  }

  @override
  String get soundsHint =>
      'Palieskite garsą, kad jį paleistumėte. Sumaišykite kelis ir nustatykite kiekvieno garsumą.';

  @override
  String get soundsMixer => 'Mišinys';

  @override
  String soundsVolumeOf(String name) {
    return '$name garsumas';
  }

  @override
  String get soundsChannel => 'Gamtos garsai';

  @override
  String get settingsEndTone => 'Laikmačio pabaigos garsas';

  @override
  String get toneGentle => 'Švelnūs pyptelėjimai';

  @override
  String get toneBeeps => 'Pyptelėjimai';

  @override
  String get toneWood => 'Beldimas į medį';

  @override
  String get toneBird => 'Paukščio balsas';

  @override
  String get toneStream => 'Upelis';

  @override
  String get toneSystem => 'Telefono garsas';

  @override
  String get speechOnPhone => 'Šiame telefone';

  @override
  String get speechAllLanguages => 'Visos kalbos';

  @override
  String get speechSearchLanguage => 'Ieškoti kalbų';

  @override
  String get speechGetVoices => 'Atsisiųsti daugiau balsų';

  @override
  String get speechGetVoicesHint =>
      'Kalbų be balso balsus galima atsisiųsti telefono kalbos nustatymuose.';

  @override
  String get speechSettingsFailed => 'Nepavyko atidaryti šio telefono kalbos nustatymų.';

  @override
  String get speechVoiceMissing => 'Balsas neįdiegtas';

  @override
  String get speechPause => 'Pauzė tarp kartojimų';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Su atsakymu skaityti pavyzdį';

  @override
  String get flashListen => 'Klausyti';

  @override
  String get flashListenNext => 'Kita kortelė';

  @override
  String get flashListenEmpty => 'Nėra kortelių klausyti.';

  @override
  String get flashViewTable => 'Lentelė';

  @override
  String get flashViewCards => 'Kortelės';

  @override
  String get flashSwapSides => 'Sukeisti stulpelius';

  @override
  String get flashSort => 'Rikiuoti';

  @override
  String get flashSortNewest => 'Pirmiausia naujausios';

  @override
  String get flashSortAlpha => 'Nuo A iki Z';

  @override
  String get flashSortDue => 'Pirmiausia kartotinos';

  @override
  String get flashSortHard => 'Pirmiausia sunkiausios';

  @override
  String get flashPasteCards => 'Įklijuoti korteles';

  @override
  String get flashClipboardEmpty => 'Iškarpinėje nėra teksto.';

  @override
  String get flashMenuAdd => 'Pridėti korteles';

  @override
  String get flashMenuDeck => 'Rinkinys';

  @override
  String get flashToday => 'Šiandien';

  @override
  String get flashStudyNow => 'Mokytis';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atsakyta $count kortelių',
      few: 'Atsakytos $count kortelės',
      one: 'Atsakyta $count kortelė',
      zero: 'Neatsakyta nė viena kortelė',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Lietus miške';

  @override
  String get autoBackupTitle => 'Automatinės atsarginės kopijos';

  @override
  String get autoBackupDesc => 'Kasdien šiame telefone; saugomos paskutinės 7';

  @override
  String get autoBackupHint =>
      'Šios kopijos lieka šiame telefone ir ištrinamos, jei programa pašalinama. Norėdami pereiti prie naujo telefono, išsaugokite failą naudodami „Atsarginė kopija“.';

  @override
  String get autoBackupNone =>
      'Automatinės atsarginės kopijos dar nėra. Pirmoji bus sukurta šiandien.';

  @override
  String get autoBackupRestore => 'Atkurti';

  @override
  String autoBackupConfirm(String date) {
    return 'Pakeisti visus dabartinius duomenis atsargine kopija iš $date?';
  }

  @override
  String get autoBackupRestored => 'Atkurta.';

  @override
  String get errorLogTitle => 'Klaidų žurnalas';

  @override
  String get errorLogHint =>
      'Jei kas nors nepavyksta, tai užrašoma čia: tik klaidos tipas ir vieta kode, niekada jūsų turinys. Bendrinkite jį, kad padėtumėte išspręsti problemą.';

  @override
  String get errorLogEmpty => 'Klaidų neužregistruota.';

  @override
  String get errorLogClear => 'Išvalyti';

  @override
  String get soundsWithFocus => 'Leisti per fokuso sesijas';

  @override
  String get soundsWithFocusHint =>
      'Jūsų mišinys prasideda su fokuso sesija ir pristabdomas per pertraukas.';

  @override
  String get soundsSavedMixes => 'Išsaugoti mišiniai';

  @override
  String get soundsSaveMix => 'Išsaugoti šį mišinį';

  @override
  String get soundsMixNameHint => 'Pavadinimas, pvz., Lietinga biblioteka';

  @override
  String soundsDeleteMix(String name) {
    return 'Ištrinti mišinį „$name“?';
  }

  @override
  String get settingsReviewReminderHint => 'Kartą per dieną, tik kai yra kortelių kartoti';

  @override
  String get settingsReviewTime => 'Priminimo laikas';

  @override
  String get shortcutFocus => 'Fokusas';

  @override
  String get shortcutNewTask => 'Nauja užduotis';

  @override
  String get shortcutReview => 'Kartoti korteles';

  @override
  String get shortcutSounds => 'Gamtos garsai';

  @override
  String get myDayTitle => 'Pradėti dieną';

  @override
  String get myDayHint => 'Jūsų diena vienu žvilgsniu, tada fokusas vienu palietimu';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Šiandien $count užduočių',
      few: 'Šiandien $count užduotys',
      one: 'Šiandien $count užduotis',
      zero: 'Šiandien užduočių nėra',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Šiandien daugiau įvykių nėra';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Toliau: $title $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Liko $count įpročių',
      few: 'Liko $count įpročiai',
      one: 'Liko $count įprotis',
      zero: 'Visi įpročiai atlikti',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Pradėti nuo fokuso sesijos';

  @override
  String get hijriMonth1 => 'Muharamas';

  @override
  String get hijriMonth2 => 'Safaras';

  @override
  String get hijriMonth3 => 'Rabi al Avalis';

  @override
  String get hijriMonth4 => 'Rabi al Sanis';

  @override
  String get hijriMonth5 => 'Džumada al Ula';

  @override
  String get hijriMonth6 => 'Džumada al Achira';

  @override
  String get hijriMonth7 => 'Radžabas';

  @override
  String get hijriMonth8 => 'Šabanas';

  @override
  String get hijriMonth9 => 'Ramadanas';

  @override
  String get hijriMonth10 => 'Šavalis';

  @override
  String get hijriMonth11 => 'Zul Kada';

  @override
  String get hijriMonth12 => 'Zul Hidža';

  @override
  String hijriDate(int day, String month, int year) {
    return '$year m. pagal hidžrą $month $day d.';
  }

  @override
  String get settingsHijri => 'Hidžros datos';

  @override
  String get settingsHijriHint => 'Rodomos kalendoriuje ir pradžios ekrane (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienų',
      few: '$count dienos',
      one: '$count diena',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Šiandien $done iš $goal kortelių';
  }

  @override
  String get studyGoalReached => 'Dienos tikslas pasiektas. Puiku!';

  @override
  String get studyWeekTitle => 'Jūsų savaitė';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Per 7 dienas atsakyta $count kortelių',
      few: 'Per 7 dienas atsakytos $count kortelės',
      one: 'Per 7 dienas atsakyta $count kortelė',
      zero: 'Per 7 dienas neatsakyta nė viena kortelė',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return 'Fokusas per 7 dienas: $duration';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Serija: $current · Geriausia: $best';
  }

  @override
  String get studyGoalTitle => 'Dienos tikslas (kortelės)';

  @override
  String get studyGoalOff => 'Išjungta';

  @override
  String get focusDndTitle => 'Netrukdyti fokusuojantis';

  @override
  String get focusDndHint => 'Įsijungia kiekvienai fokuso sesijai ir išsijungia per pertrauką';

  @override
  String get focusDndNeedsAccess =>
      'Kad galėtumėte tai naudoti, leiskite prieigą telefono nustatymuose';

  @override
  String get voiceInput => 'Diktuoti';

  @override
  String get voiceInputPrompt => 'Kalbėkite dabar';

  @override
  String get voiceInputUnavailable =>
      'Šiame telefone balso įvestis negalima. Įdiekite arba įjunkite kalbos paslaugą (pavyzdžiui, „Google“ kalbos atpažinimą ir sintezę).';

  @override
  String get prayerFajr => 'Fadžras';

  @override
  String get prayerSunrise => 'Saulėtekis';

  @override
  String get prayerDhuhr => 'Zuhras';

  @override
  String get prayerAsr => 'Asras';

  @override
  String get prayerMaghrib => 'Magribas';

  @override
  String get prayerIsha => 'Iša';

  @override
  String get prayerMethodMwl => 'Pasaulio musulmonų lyga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Meka';

  @override
  String get prayerMethodEgypt => 'Egipto generalinė institucija';

  @override
  String get prayerMethodJordan => 'Jordanija, Vakufų ministerija';

  @override
  String get prayerMethodKarachi => 'Islamo mokslų universitetas, Karačis';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Persijos įlankos regionas';

  @override
  String get prayerMethodKuwait => 'Kuveitas';

  @override
  String get prayerMethodQatar => 'Kataras';

  @override
  String get prayerMethodTurkey => 'Turkija, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapūras, Malaizija, Indonezija';

  @override
  String get prayerMethodFrance => 'Prancūzija (12°)';

  @override
  String get prayerMethodRussia => 'Rusija, Dvasinė valdyba';

  @override
  String prayerNotifTitle(String name) {
    return 'Laikas: $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Maldos laikas · $time';
  }

  @override
  String get prayerTitle => 'Maldų laikai';

  @override
  String get prayerOffHint =>
      'Pasirinkite miestą, kad matytumėte maldų laikus. Jie apskaičiuojami telefone; prieigos prie vietos nereikia.';

  @override
  String get prayerChooseCity => 'Pasirinkti miestą';

  @override
  String get prayerCity => 'Miestas';

  @override
  String get prayerCitySearch => 'Ieškoti miesto';

  @override
  String get prayerMethod => 'Skaičiavimo metodas';

  @override
  String get prayerHanafiAsr => 'Hanafitų Asras (vėlesnis laikas)';

  @override
  String get prayerReminders => 'Pranešti kiekvienu maldos laiku';

  @override
  String get prayerPauseFocus => 'Pristabdyti fokusą maldos metu';

  @override
  String get prayerPauseFocusHint => 'Vykstanti sesija pristabdoma; tęskite po maldos';

  @override
  String get prayerTurnOff => 'Išjungti maldų laikus';

  @override
  String get prayerAccuracyNote =>
      'Apskaičiuoti laikai gali keliomis minutėmis skirtis nuo jūsų vietos mečetės.';

  @override
  String prayerNext(String name, String time) {
    return '$name $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Šis Anki failas naudoja naujausią formatą. Anki programoje eksportuokite dar kartą įjungę „Support older Anki versions“, tada importuokite tą failą.';

  @override
  String get importTemplate => 'Skaičiuoklės šablonas';

  @override
  String get importTemplateFront => 'obuolys';

  @override
  String get importTemplateBack => 'apvalus vaisius';

  @override
  String get importTemplateExample => 'Kasdien suvalgau obuolį.';

  @override
  String get importTemplateTag => 'maistas';

  @override
  String get starterTitle => 'Pradiniai rinkiniai';

  @override
  String get starterHint =>
      'Pridėkite vieną ir iškart pradėkite mokytis. Vėliau galėsite jį redaguoti arba ištrinti.';

  @override
  String get starterAdd => 'Pridėti';

  @override
  String get starterWords => 'Kasdieniai anglų kalbos žodžiai (arabų k.)';

  @override
  String get starterCapitals => 'Pasaulio sostinės';

  @override
  String get starterElements => 'Cheminiai elementai';

  @override
  String get settingsAccent => 'Akcento spalva';

  @override
  String get accentViolet => 'Violetinė';

  @override
  String get accentBlue => 'Mėlyna';

  @override
  String get accentTeal => 'Žalsvai mėlyna';

  @override
  String get accentGreen => 'Žalia';

  @override
  String get accentRose => 'Rožinė';

  @override
  String get accentAmber => 'Gintarinė';

  @override
  String get settingsFlashTextSize => 'Kortelių teksto dydis';

  @override
  String get settingsFlashTextSample => 'Pavyzdys';

  @override
  String get widgetStartFocus => 'Palieskite, kad fokusuotumėtės';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokusas iki $time';
  }

  @override
  String get widgetNoCardsDue => 'Kortelės: viskas atlikta';

  @override
  String get faqMyDayQ => 'Ką daro „Pradėti dieną“?';

  @override
  String get faqMyDayA =>
      'Kartą per dieną jį pasiūlo pradžios ekranas: matote šiandienos užduotis, kitą įvykį, likusius įpročius ir kortelių kartojimą, tada vienu palietimu pradedate fokuso sesiją. Ilgai paspauskite programos piktogramą greitiesiems veiksmams arba pridėkite valdiklį į pradžios ekraną, kad matytumėte fokuso laiką ir korteles kartoti.';

  @override
  String get faqTasksQ => 'Kaip pridėti užduotį su priminimu?';

  @override
  String get faqTasksA =>
      'Palieskite „Nauja užduotis“ pradžios ekrane arba „+“ užduotyse. Įveskite pavadinimą arba pasakykite jį mikrofonu, tada nustatykite terminą, laiką ir priminimą. Vėluojančios užduotys rodomos pirmiausia.';

  @override
  String get faqFocusQ => 'Kaip veikia fokuso laikmatis?';

  @override
  String get faqFocusA =>
      'Pasirinkite Pomodoro, atgalinį skaičiavimą ar laisvą laiką ir paspauskite „Pradėti“; pertraukos gali prasidėti automatiškai. Nustatymuose galite pasirinkti pabaigos garsą, įjungti „Netrukdyti“ fokusuojantis ir leisti gamtos garsus su kiekviena sesija.';

  @override
  String get faqSoundsQ => 'Ar galiu maišyti gamtos garsus?';

  @override
  String get faqSoundsA =>
      'Įjunkite iki šešių tikrų įrašų, nustatykite kiekvieno garsumą ir išsaugokite mišinį su pavadinimu. Jie skamba fone, o miego laikmatis gali juos sustabdyti. Muzika nenaudojama.';

  @override
  String get faqCalendarQ => 'Ar kalendorius gali rodyti hidžros datas?';

  @override
  String get faqCalendarA =>
      'Taip. Hidžros datos (Umm al-Qura) arabų kalba rodomos automatiškai, o nustatymuose jas galima įjungti bet kuriai kalbai. Įvykiai, užduotys su terminais ir projektų etapai rodomi kartu.';

  @override
  String get faqFlashcardsQ => 'Kaip kartojimas nusprendžia, kurias korteles matysiu?';

  @override
  String get faqFlashcardsA =>
      'Gerai žinomos kortelės grįžta po ilgesnių pertraukų, o tos, kurių nežinojote, grįžta greitai (kartojimas intervalais). Kiekvieną atsakymą įvertinkite: Dar kartą, Sunku, Gerai arba Lengva. Nustatykite dienos tikslą ir išlaikykite seriją kortelėje „Šiandien“. Rinkinyje nustatykite egzamino datą, kad matytumėte likusias dienas ir kiek naujų kortelių reikia išmokti kasdien. Rikiuokite pagal „Mano tvarka“, kad nuvilktumėte korteles į vietą, palieskite garsiakalbį bet kurioje pusėje, kad ją išgirstumėte, o greitį ir kartojimus nustatykite meniu „Kalba“.';

  @override
  String get faqImportQ => 'Ar galiu perkelti korteles iš Anki ar Excel?';

  @override
  String get faqImportA =>
      'Taip. Rinkinyje pasirinkite „Importuoti“, tada failą: Anki (.apkg), Excel (.xlsx) arba CSV, ir susiekite stulpelius. Naudodami „Skaičiuoklės šabloną“ galite rašyti korteles kompiuteriu. Anki failuose esantys vaizdai ir garsai neimportuojami.';

  @override
  String get faqNotesQ => 'Ką gali užrašai?';

  @override
  String get faqNotesA =>
      'Rašykite laisvai su kontroliniais sąrašais ir formatavimu, prisekite arba pažymėkite svarbius užrašus kaip mėgstamus, pridėkite žymų ir susiekite užrašus su užduotimis. Mikrofono mygtuku galite diktuoti. Naujas užrašas gali prasidėti nuo šablono (paskaita, knygos santrauka, dienoraštis, savaitės planas), o vaizdo mygtukas prideda nuotraukų.';

  @override
  String get faqHabitsQ => 'Kaip skaičiuojamos įpročių serijos?';

  @override
  String get faqHabitsA =>
      'Diena įskaitoma, kai suplanuotą dieną pasiekiate įpročio tikslą. Pristabdžius įprotį serija išsaugoma. Kiekvienas įprotis gali turėti savo priminimo laiką.';

  @override
  String get faqGoalsQ => 'Kaip tikslai stebi pažangą?';

  @override
  String get faqGoalsA =>
      'Nustatykite tikslui kiekį ir vienetą, tada įrašykite pažangą. Jo kortelė rodo, kiek nuveikėte ir kiek liko iki termino.';

  @override
  String get faqProjectsQ => 'Kam skirti projektai?';

  @override
  String get faqProjectsA =>
      'Sugrupuokite užduotis projekte, pridėkite etapų su datomis ir stebėkite bendrą pažangą. Etapai rodomi ir kalendoriuje.';

  @override
  String get faqInsightsQ => 'Ką rodo Įžvalgos?';

  @override
  String get faqInsightsA =>
      'Jūsų fokuso laiką, atliktas užduotis ir mokymąsi per dienas ir savaites, su švelniais patarimais. Viskas apskaičiuojama jūsų telefone.';

  @override
  String get faqSpacesQ => 'Kur visos skiltys?';

  @override
  String get faqSpacesA =>
      'Erdvėse išvardytos visos programos dalys (užrašai, rinkiniai, įpročiai, tikslai, projektai, garsai ir kt.), kad pagrindinė juosta liktų paprasta.';

  @override
  String get faqBackupQ => 'Kaip daromos mano duomenų atsarginės kopijos?';

  @override
  String get faqBackupA =>
      'Kasdien programa tyliai saugo užšifruotą kopiją šiame telefone ir laiko paskutines 7. Nustatymuose taip pat galite eksportuoti slaptažodžiu apsaugotą atsarginės kopijos failą ir atkurti jį kitame telefone.';

  @override
  String get faqPrayerQ => 'Kaip veikia maldų laikai?';

  @override
  String get faqPrayerA =>
      'Pasirinkite miestą skiltyje Nustatymai → Maldų laikai. Laikai apskaičiuojami telefone tame mieste naudojamu metodu, o metodą ir Asro mokyklą galite pakeisti. Galite gauti pranešimą kiekvienos maldos metu, o vykstanti fokuso sesija pristabdoma.';

  @override
  String get faqPrivacyQ => 'Kur saugomi mano duomenys?';

  @override
  String get faqPrivacyA =>
      'Tik jūsų telefone, užšifruotoje duomenų bazėje. Nėra paskyros ir sekimo. Internetą naudoja tik funkcijos, kurias įjungiate patys, pavyzdžiui, neprivalomas asistentas.';

  @override
  String get faqAssistantQ => 'Kas yra asistentas?';

  @override
  String get faqAssistantA =>
      'Neprivalomas pagalbininkas, kurį nustatymuose prijungiate prie savo DI paslaugos. Pagal numatytuosius nustatymus jis išjungtas ir prieš siųsdamas bet kokį užrašo tekstą paklausia.';

  @override
  String get tourPlanTitle => 'Suplanuokite savo dieną';

  @override
  String get tourPlanBody =>
      'Užduotys, kalendorius ir įpročiai vienoje ramioje vietoje. Kiekvieną rytą pradėkite nuo „Pradėti dieną“.';

  @override
  String get tourFocusTitle => 'Gilus fokusas';

  @override
  String get tourFocusBody =>
      'Sesijos su laikmačiu, tikri gamtos garsai, „Netrukdyti“ ir švelnūs pabaigos garsai.';

  @override
  String get tourLearnTitle => 'Išmokite visam laikui';

  @override
  String get tourLearnBody =>
      'Kortelės su kartojimu intervalais, skaitymas balsu daugeliu kalbų ir importas iš Anki ar Excel.';

  @override
  String get helpTitle => 'Pagalba ir klausimai';

  @override
  String get helpOpen => 'Atidaryti';

  @override
  String get helpTour => 'Peržiūrėti apžvalgą';

  @override
  String get tourNext => 'Toliau';

  @override
  String get tourDone => 'Pradėkime';

  @override
  String get transferColTitle => 'Pavadinimas';

  @override
  String get transferColNotes => 'Pastabos';

  @override
  String get transferColBody => 'Tekstas';

  @override
  String get transferColDue => 'Terminas';

  @override
  String get transferColPriority => 'Prioritetas (0-3)';

  @override
  String get transferColDone => 'Atlikta';

  @override
  String get transferColProject => 'Projektas';

  @override
  String get transferColCategory => 'Kategorija';

  @override
  String get transferTitle => 'Importas ir eksportas';

  @override
  String get transferSaveAs => 'Išsaugoti kaip';

  @override
  String get transferImport => 'Importuoti iš failo';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV arba lentelė Word dokumente. Stulpeliai: pavadinimas, terminas (2026-12-31), prioritetas 0-3, atlikta, projektas, pastabos. Programoje jau esančios užduotys praleidžiamos.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown arba tekstiniai failai tampa užrašu. Excel arba CSV: vienas užrašas eilutėje (pavadinimas, tekstas).';

  @override
  String get transferSaved => 'Failas išsaugotas';

  @override
  String get transferFailed => 'Failo sukurti nepavyko. Niekas nepakeista.';

  @override
  String get transferUnsupported =>
      'Šio failo čia perskaityti negalima. Naudokite Excel, CSV, Word, Markdown arba tekstą.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Pridėta $added',
      few: 'Pridėti $added',
      one: 'Pridėtas $added',
      zero: 'Nėra ko naujo pridėti',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Tekstas';

  @override
  String get transferAllNotes => 'Visi užrašai';

  @override
  String get transferThisNote => 'Šis užrašas';

  @override
  String get transferDeckFormats => 'Išsaugoti kaip Excel, Word arba PDF';

  @override
  String get faqFilesQ => 'Ar galiu naudoti Excel, Word ar PDF failus?';

  @override
  String get faqFilesA =>
      'Taip. Užduotyse ir užrašuose viršuje yra importo ir eksporto mygtukas (dvi rodyklės), o kiekvienas rinkinys jį turi savo meniu. Išsaugokite kaip Excel, CSV, Word arba PDF arba įkelkite Excel, CSV, Word, Markdown ar tekstinius failus. Stulpelių pavadinimai gali būti bet kuria programos kalba, o išsaugotus failus visada galima vėl importuoti.';

  @override
  String get tplLecture => 'Paskaita';

  @override
  String get tplBook => 'Knygos santrauka';

  @override
  String get tplJournal => 'Dienoraštis';

  @override
  String get tplWeek => 'Savaitės planas';

  @override
  String get tplLectureBody =>
      '## Svarbiausi punktai\n- \n\n## Klausimai\n- [ ] \n\n## Santrauka\n';

  @override
  String get tplBookBody =>
      '## Pagrindinė mintis\n\n## Ką sužinojau\n- \n\n## Citatos\n> \n\n## Pritaikyti\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Esu dėkingas už\n- \n\n## Šiandienos fokusas\n- [ ] \n\n## Pastabos\n';

  @override
  String get tplWeekBody =>
      '## Savaitės tikslai\n- [ ] \n\n### Šeštadienis\n- [ ] \n\n### Sekmadienis\n- [ ] \n\n### Pirmadienis\n- [ ] \n\n### Antradienis\n- [ ] \n\n### Trečiadienis\n- [ ] \n\n### Ketvirtadienis\n- [ ] \n\n### Penktadienis\n- [ ] \n';

  @override
  String get tplHint => 'Pradėti nuo šablono';

  @override
  String get noteImage => 'Vaizdas';

  @override
  String get noteAddImage => 'Pridėti vaizdą';

  @override
  String get noteImageUnreadable => 'Šis failas nėra vaizdas, kurį programa gali perskaityti.';

  @override
  String get noteImageTooLarge => 'Šis vaizdas per didelis.';

  @override
  String get examSet => 'Nustatyti egzamino datą';

  @override
  String get examDate => 'Egzamino data';

  @override
  String get examToday => 'Egzaminas šiandien. Sėkmės!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Egzaminas po $count dienų',
      few: 'Egzaminas po $count dienų',
      one: 'Egzaminas po $count dienos',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mokykitės $count naujų kortelių per dieną',
      few: 'mokykitės $count naujas korteles per dieną',
      one: 'mokykitės $count naują kortelę per dieną',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'visos kortelės išmoktos, toliau kartokite';

  @override
  String examRaiseLimit(int count) {
    return 'Rodyti naujų kortelių per dieną: $count';
  }

  @override
  String get backupDriveHint =>
      'Kad kopija būtų saugoma internete, kitame atsidarysiančiame išsaugojimo ekrane pasirinkite Google Drive (ar kitą debesies programą).';

  @override
  String get flashShareDeck => 'Bendrinti rinkinį su draugu';

  @override
  String get flashSortManual => 'Mano tvarka (vilkimas)';

  @override
  String get flashReorderHint => 'Laikykite rankenėlę ir vilkite kortelę, kad ją perkeltumėte.';

  @override
  String get flashReorderNeedsAll =>
      'Išvalykite paiešką ir filtrus, kad galėtumėte vilkti korteles.';

  @override
  String get flashDragHandle => 'Vilkite, kad perkeltumėte';

  @override
  String get reportTitle => 'Mėnesio ataskaita';

  @override
  String get reportFocus => 'Fokuso laikas';

  @override
  String reportSessions(int count) {
    return 'Sesijos: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Geriausia diena: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Aktyvios dienos: $count';
  }

  @override
  String get reportCards => 'Pakartotos kortelės';

  @override
  String reportCardsKnown(String percent) {
    return 'Įsiminta: $percent';
  }

  @override
  String get reportTasks => 'Atliktos užduotys';

  @override
  String get reportHabits => 'Įpročių pažymėjimai';

  @override
  String get reportEmpty => 'Šį mėnesį dar nieko neužregistruota.';

  @override
  String get reportSave => 'Išsaugoti kaip PDF arba Word';

  @override
  String get reportPrevMonth => 'Ankstesnis mėnuo';

  @override
  String get reportNextMonth => 'Kitas mėnuo';

  @override
  String get careTitle => 'Telefono ir duomenų priežiūra';

  @override
  String get storageTitle => 'Saugykla';

  @override
  String get storageSubtitle => 'Kas užima vietą ir nenaudojamų vaizdų valymas';

  @override
  String get storagePictures => 'Vaizdai užrašuose';

  @override
  String get storageCardMedia => 'Vaizdai ir garsas kortelėse';

  @override
  String get storageText => 'Užrašų tekstas';

  @override
  String get storageFree => 'Laisva telefone';

  @override
  String get storageLow =>
      'Jūsų telefonas beveik pilnas. Atlaisvinkite vietos, kad atsarginės kopijos ir priminimai toliau veiktų.';

  @override
  String storageUnused(int count, String size) {
    return 'Nenaudojami vaizdai: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Nenaudojamų vaizdų nėra. Viskas tvarkinga.';

  @override
  String get storageClean => 'Pašalinti nenaudojamus vaizdus';

  @override
  String storageCleaned(int count) {
    return 'Pašalinta vaizdų: $count';
  }

  @override
  String get storageHint =>
      'Vaizdas laikomas nenaudojamu tik tada, kai jo nerodo joks užrašas, įskaitant užrašus šiukšlinėje.';

  @override
  String get batteryTitle => 'Kad priminimai veiktų';

  @override
  String get batterySubtitle => 'Kai kurie telefonai sustabdo programas fone. Patikrinkite savąjį.';

  @override
  String get batteryStatusOk =>
      'Akumuliatoriaus taupymas šios programos neriboja. Priminimai ir garsai turėtų ateiti laiku.';

  @override
  String get batteryStatusLimited =>
      'Akumuliatoriaus taupymas gali sustabdyti šią programą fone, todėl priminimai ir garsai gali vėluoti arba neateiti.';

  @override
  String get batteryOpen => 'Atidaryti akumuliatoriaus nustatymus';

  @override
  String get batteryOpenApp => 'Atidaryti programos nustatymus';

  @override
  String get batteryGeneric =>
      'Akumuliatoriaus nustatymuose pasirinkite šią programą ir nustatykite „Neribota“ (arba „Neoptimizuoti“).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: taip pat atidarykite Sauga › Leidimai › Automatinis paleidimas ir įjunkite šią programą, o akumuliatoriaus taupymą nustatykite į „Be apribojimų“.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: atidarykite Akumuliatorius › ši programa ir leiskite veiklą fone bei automatinį paleidimą; užrakinkite programą naujausių programų sąraše.';

  @override
  String get batterySamsung =>
      'Samsung: Akumuliatorius › Naudojimo fone apribojimai: pašalinkite šią programą iš miegančių ir giliai miegančių programų.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Programų paleidimas › ši programa › valdyti rankiniu būdu ir leiskite automatinį paleidimą, antrinį paleidimą ir veikimą fone.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Akumuliatorius › Energijos sąnaudos fone › leiskite šią programą ir leidimuose įjunkite automatinį paleidimą.';

  @override
  String get whatsNewTitle => 'Kas naujo';

  @override
  String get whatsNewSubtitle => 'Naujausi pakeitimai keliomis eilutėmis';

  @override
  String get whatsNewDone => 'Supratau';

  @override
  String get whatsNewOrderTitle => 'Vilkite korteles savo tvarka';

  @override
  String get whatsNewOrderBody =>
      'Rinkinyje pasirinkite Rikiuoti › Mano tvarka, tada laikykite rankenėlę ir vilkite.';

  @override
  String get whatsNewSpeechTitle => 'Garsiakalbis kiekvienoje kortelės pusėje';

  @override
  String get whatsNewSpeechBody =>
      'Palieskite jį, kad išgirstumėte žodį ar vertimą. Greitis, kartojimai ir balsas yra kartojimo meniu. Kalba atpažįstama iš teksto.';

  @override
  String get whatsNewReportTitle => 'Mėnesio ataskaita';

  @override
  String get whatsNewReportBody =>
      'Įžvalgose palieskite ataskaitos piktogramą, kad pamatytumėte mėnesį ir išsaugotumėte jį kaip PDF arba Word.';

  @override
  String get whatsNewCareTitle => 'Telefono ir duomenų priežiūra';

  @override
  String get whatsNewCareBody =>
      'Nustatymuose dabar yra saugyklos puslapis su vaizdų valymu ir akumuliatoriaus vadovu jūsų telefono gamintojui.';

  @override
  String get whatsNewSoundTitle => 'Ramesni garsai';

  @override
  String get whatsNewSoundBody =>
      'Gamtos garsai švelnesni ir tylesni, o paveikslėlių kortelės gražesnės.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Patikrinta $date: naujausia atsarginė kopija atsidaro tinkamai.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Patikrinta $date: rasta sugadinta atsarginė kopija, ji pakeista nauja.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Patikrinta $date: nepavyko atidaryti naujausios atsarginės kopijos. Išsaugokite atsarginės kopijos failą patys nustatymuose.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Paprastai mokotės apie $time';
  }

  @override
  String get smartReviewTimeUse => 'Naudoti';

  @override
  String get widgetNewNote => 'Naujas užrašas';

  @override
  String get noteConnections => 'Žymos, nuorodos ir užduotys';

  @override
  String get navCards => 'Kortelės';

  @override
  String get studyAnswerWay => 'Kaip atsakyti';

  @override
  String get studyMorePractice => 'Papildoma praktika';

  @override
  String get studySessionSettings => 'Sesijos nustatymai';

  @override
  String get focusAdjustTitle => 'Jūsų sesija';

  @override
  String get focusPresetsTitle => 'Paruošti';

  @override
  String get focusPresetStudy => 'Mokymasis';

  @override
  String get focusPresetDeep => 'Gilus darbas';

  @override
  String get focusPresetQuick => 'Greitas sprintas';

  @override
  String get focusPresetReading => 'Skaitymas';

  @override
  String get focusPresetWorkout => 'Treniruotės ratai';

  @override
  String get focusAdjustMinutes => 'Fokuso trukmė';

  @override
  String get focusAdjustBreak => 'Pertraukos trukmė';

  @override
  String get focusAdjustRounds => 'Ratai';

  @override
  String get focusRoundsOpen => 'Be ribos';

  @override
  String focusMinutesShort(String n) {
    return '$n min.';
  }

  @override
  String get focusTapToAdjust => 'Palieskite, kad pakeistumėte laiką';

  @override
  String get flashArrangeDecks => 'Tvarkyti rinkinius';

  @override
  String get flashDeckActions => 'Rinkinio parinktys';

  @override
  String get starterBrowse => 'Paruošti rinkiniai';

  @override
  String get starterBrowseHint => 'Pridėkite vienu palietimu ir pradėkite mokytis';

  @override
  String get dashOpenDecks => 'Atidaryti korteles';

  @override
  String speechVoiceNumber(String n) {
    return 'Balsas $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Puikus srautas. Ilsėtis $m min.?';
  }

  @override
  String get focusFlowBreakStart => 'Pradėti pertrauką';

  @override
  String tasksFinishAt(String time) {
    return 'Pradėkite dabar ir viską baigsite iki $time';
  }

  @override
  String get focusCalmPacing => 'Ramus tempas';

  @override
  String get focusCalmPacingHint => 'Tik visos minutės ir žiedas, be tiksinčių sekundžių';

  @override
  String get focusFlipHint => 'Apverskite telefoną ekranu žemyn, kad pradėtumėte';

  @override
  String get focusImmersive => 'Įsigilinimo režimas';

  @override
  String get focusImmersiveBlack => 'Grynai juoda (taupo akumuliatorių)';

  @override
  String get focusFlipToFocus => 'Apversti fokusui';

  @override
  String get focusFlipToFocusHint => 'Įsigilinimo režime: ekranu žemyn pradeda, pakėlus pristabdo';

  @override
  String get guardTitle => 'Apsauga nuo blaškymosi';

  @override
  String get guardSubtitle => 'Pristabdykite blaškančias programas, kol fokusuojatės';

  @override
  String get guardSwitch => 'Pristabdyti blaškančias programas';

  @override
  String get guardSwitchHint => 'Fokuso sesijų ir Laiko apsaugos valandomis';

  @override
  String get guardNeedsAccess =>
      'Reikia pritaikymo neįgaliesiems jungiklio: palieskite, kad įjungtumėte';

  @override
  String get guardDisclosureTitle => 'Kaip veikia apsauga';

  @override
  String get guardDisclosureBody =>
      'Kad pristabdytų jūsų pasirinktas programas, Deep Focus naudoja Android pritaikymo neįgaliesiems paslaugą ir mato, kuri programa atidaryta. Kai įjungta „Uždaryti Shorts ir Reels“, ji taip pat tikrina, ar ekrane yra trumpų vaizdo įrašų grotuvas.\n\nJi neskaito jokio teksto, nieko neišsaugo iš to, ką mato, ir niekur nieko nesiunčia: viskas lieka jūsų telefone. Ją bet kada galite išjungti pritaikymo neįgaliesiems nustatymuose.';

  @override
  String get guardAgree => 'Sutikti ir atidaryti nustatymus';

  @override
  String get guardModeGentle => 'Švelnus';

  @override
  String get guardModeStrict => 'Griežtas';

  @override
  String get guardGentleHint => '5 sekundžių kvėpavimo pauzė, tada sprendžiate jūs';

  @override
  String get guardStrictHint => 'Pasirinktos programos lieka uždarytos, kol baigsis fokuso laikas';

  @override
  String get guardApps => 'Pristabdomos programos';

  @override
  String get guardAppsAllowed => 'Leidžiamos programos';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count programų',
      few: '$count programos',
      one: '$count programa',
      zero: 'Dar nieko nepasirinkta',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Leisti tik pasirinktas programas';

  @override
  String get guardAllowlistHint =>
      'Visos kitos programos pristabdomos; skambučiai, nustatymai ir klaviatūra veikia visada';

  @override
  String get guardShorts => 'Uždaryti Shorts ir Reels';

  @override
  String get guardShortsHint =>
      'Visada, kai apsauga įjungta. Be garantijų: šios programos dažnai keičiasi';

  @override
  String get guardSchedule => 'Laiko apsauga';

  @override
  String get guardScheduleHint =>
      'Saugoti ir pasirinktomis dienomis bei valandomis, pavyzdžiui, mokykloje ar darbe';

  @override
  String get guardFrom => 'Nuo';

  @override
  String get guardTo => 'Iki';

  @override
  String get guardSearchApps => 'Ieškoti programų';

  @override
  String get guardNoApps => 'Programų nerasta';

  @override
  String get guardPrivacy =>
      'Veikia tik jūsų telefone: apsauga mato, kuri programa atidaryta, bet niekada – kas joje, ir nieko nesiunčia.';

  @override
  String get guardBreathe => 'Įkvėpkite… ir iškvėpkite';

  @override
  String get guardQuestion => 'Ar jums dabar reikia šios programos?';

  @override
  String get guardBackToFocus => 'Grįžti prie fokuso';

  @override
  String get guardOpenFive => 'Atidaryti 5 minutėms';

  @override
  String get guardStrictBody => 'Ši programa pristabdyta, kol baigsis jūsų fokuso laikas.';

  @override
  String get guardShortsClosed => 'Kol apsauga įjungta, trumpi vaizdo įrašai uždaromi';

  @override
  String get faqGuardQ => 'Kaip sustabdyti blaškančias programas fokusuojantis?';

  @override
  String get faqGuardA =>
      'Atidarykite Fokusas → laikmačio nustatymai → Apsauga nuo blaškymosi. Pasirinkite programas, tada Švelnus (5 sekundžių įkvėpimas ir klausimas „Ar jums dabar reikia šios programos?“) arba Griežtas (jos lieka uždarytos). Ji veikia fokuso sesijų metu, o su Laiko apsauga – jūsų nustatytomis dienomis ir valandomis. „Leisti tik pasirinktas programas“ pristabdo visa kita; skambučiai, nustatymai ir klaviatūra veikia visada. Android vieną kartą paprašys įjungti apsaugą pritaikymo neįgaliesiems nustatymuose. Ji mato tik tai, kuri programa atidaryta, ir nieko nesiunčia.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Perkelta į „$name“';
  }

  @override
  String get notesDragHint => 'Laikykite užrašą ir nuvilkite jį ant sąsiuvinio';

  @override
  String get guardReviewCards => 'Geriau pakartoti korteles';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jūsų laukia $count kortelių',
      few: 'Jūsų laukia $count kortelės',
      one: 'Jūsų laukia $count kortelė',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Skubiai: laikykite 10 sekundžių';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Laikykite toliau… $n';
  }

  @override
  String get guardWeekTitle => 'Ši savaitė';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauzių',
      few: '$count pauzės',
      one: '$count pauzė',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'grįžta prie fokuso $count kartų',
      few: 'grįžta prie fokuso $count kartus',
      one: 'grįžta prie fokuso $count kartą',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Pervadinti žodžius';

  @override
  String get wordsSubtitle => 'Savas žodis bet kuriam programos tekstui';

  @override
  String get wordsHint =>
      'Palieskite tekstą, kad jį pakeistumėte. Jūsų žodžiai galioja tik šiai kalbai ir išsaugomi atsarginėse kopijose.';

  @override
  String get wordsSearch => 'Ieškoti tekstų';

  @override
  String get wordsChangedOnly => 'Tik pakeisti';

  @override
  String wordsOriginal(String text) {
    return 'Originalas: $text';
  }

  @override
  String get wordsReset => 'Naudoti originalą';

  @override
  String get wordsResetAll => 'Atstatyti visus žodžius';

  @override
  String get wordsResetAllConfirm => 'Visi šios kalbos tekstai grįžta į originalą.';

  @override
  String get wordsNone => 'Tekstas nerastas';

  @override
  String get settingsLanguageSearch => 'Ieškoti kalbų';

  @override
  String get settingsLanguageNoMatch => 'Nė viena kalba neatitinka';

  @override
  String get soundsMyMusic => 'Jūsų garsas';

  @override
  String get soundsMusicHint =>
      'Paleiskite garso failą iš telefono. Niekas nekopijuojama ir neįkeliama.';

  @override
  String get soundsChooseMusic => 'Pasirinkti garsą';

  @override
  String get soundsRemoveMusic => 'Pašalinti garsą';
}
