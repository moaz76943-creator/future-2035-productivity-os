// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Heim';

  @override
  String get navTasks => 'Verkefni';

  @override
  String get navFocus => 'Einbeiting';

  @override
  String get navCalendar => 'Dagatal';

  @override
  String get navSpaces => 'Svæði';

  @override
  String get moduleProjects => 'Verkefnaflokkar';

  @override
  String get moduleNotes => 'Glósur';

  @override
  String get moduleFlashcards => 'Spjöld';

  @override
  String get moduleGoals => 'Markmið';

  @override
  String get moduleHabits => 'Venjur';

  @override
  String get moduleAnalytics => 'Innsýn';

  @override
  String get moduleSearch => 'Leit';

  @override
  String get moduleAssistant => 'Aðstoðarmaður';

  @override
  String get moduleSettings => 'Stillingar';

  @override
  String get moduleTrash => 'Ruslafata';

  @override
  String get actionSave => 'Vista';

  @override
  String get actionCancel => 'Hætta við';

  @override
  String get actionDelete => 'Eyða';

  @override
  String get actionEdit => 'Breyta';

  @override
  String get actionDone => 'Lokið';

  @override
  String get actionAdd => 'Bæta við';

  @override
  String get actionCreate => 'Búa til';

  @override
  String get actionClose => 'Loka';

  @override
  String get actionBack => 'Til baka';

  @override
  String get actionUndo => 'Afturkalla';

  @override
  String get actionRestore => 'Endurheimta';

  @override
  String get actionRetry => 'Reyna aftur';

  @override
  String get actionContinue => 'Halda áfram';

  @override
  String get actionSkip => 'Sleppa';

  @override
  String get actionArchive => 'Setja í safn';

  @override
  String get actionUnarchive => 'Taka úr safni';

  @override
  String get actionPin => 'Festa';

  @override
  String get actionUnpin => 'Losa';

  @override
  String get actionMore => 'Fleiri valkostir';

  @override
  String get actionClear => 'Hreinsa';

  @override
  String get actionSearch => 'Leita';

  @override
  String get actionSort => 'Raða';

  @override
  String get actionShare => 'Deila';

  @override
  String get actionImport => 'Flytja inn';

  @override
  String get actionExport => 'Flytja út';

  @override
  String get actionPause => 'Gera hlé';

  @override
  String get actionResume => 'Halda áfram';

  @override
  String get actionStart => 'Byrja';

  @override
  String get actionStop => 'Stöðva';

  @override
  String get actionComplete => 'Ljúka';

  @override
  String get actionDeleteForever => 'Eyða endanlega';

  @override
  String get actionEmptyTrash => 'Tæma ruslafötu';

  @override
  String get actionUnlink => 'Aftengja';

  @override
  String get actionCustomize => 'Sérsníða';

  @override
  String get actionPreview => 'Forskoðun';

  @override
  String get actionLog => 'Skrá framvindu';

  @override
  String get stateLoading => 'Hleður…';

  @override
  String get stateSaving => 'Vistar…';

  @override
  String get stateSaved => 'Vistað';

  @override
  String get stateUnsaved => 'Óvistaðar breytingar';

  @override
  String get errorGenericTitle => 'Eitthvað fór úrskeiðis';

  @override
  String get errorGenericMessage => 'Gögnin þín eru örugg. Reyndu aftur.';

  @override
  String get errorLoadFailed => 'Ekki tókst að hlaða þessu efni.';

  @override
  String get errorSaveFailed => 'Ekki tókst að vista. Breytingarnar þínar eru enn hér.';

  @override
  String get validationRequired => 'Þennan reit þarf að fylla út';

  @override
  String get validationTitleRequired => 'Sláðu inn titil';

  @override
  String get validationNameRequired => 'Sláðu inn nafn';

  @override
  String get validationTooLong => 'Þetta er of langt';

  @override
  String get validationEndBeforeStart => 'Lok verða að vera á eftir upphafi';

  @override
  String get validationStartAfterDue => 'Upphafsdagur verður að vera á undan skiladegi';

  @override
  String get validationPositiveNumber => 'Sláðu inn tölu sem er hærri en núll';

  @override
  String get validationDependencyCycle => 'Þetta myndi búa til hringtengingu';

  @override
  String get validationInvalidRepeat => 'Þessi endurtekningarregla er ógild';

  @override
  String get deletedItem => 'Fært í ruslafötu';

  @override
  String get untitled => 'Án titils';

  @override
  String get noProject => 'Enginn verkefnaflokkur';

  @override
  String get greetingMorning => 'Góðan daginn';

  @override
  String get greetingAfternoon => 'Góðan dag';

  @override
  String get greetingEvening => 'Gott kvöld';

  @override
  String get dashFocusToday => 'Einbeiting dagsins';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done af $target';
  }

  @override
  String get dashStartFocus => 'Hefja einbeitingu';

  @override
  String get dashFocusRunning => 'Lota í gangi';

  @override
  String get dashTodayTasks => 'Á skila í dag';

  @override
  String get dashAgenda => 'Dagskrá';

  @override
  String get dashHabits => 'Venjur dagsins';

  @override
  String get dashGoals => 'Markmið';

  @override
  String get dashReview => 'Upprifjun';

  @override
  String get dashRecentNotes => 'Nýlegar glósur';

  @override
  String get dashInsight => 'Tillaga';

  @override
  String get dashSeeAll => 'Sjá allt';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöld til upprifjunar',
      one: '$count spjald til upprifjunar',
      zero: 'Engin spjöld til upprifjunar',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Rifja upp núna';

  @override
  String get dashCustomizeTitle => 'Hlutar heimaskjás';

  @override
  String get dashCustomizeHint => 'Veldu hvað birtist á heimaskjánum.';

  @override
  String get dashSectionFocus => 'Einbeiting';

  @override
  String get dashSectionToday => 'Verkefni sem á að skila í dag';

  @override
  String get dashSectionAgenda => 'Dagskrá';

  @override
  String get dashSectionHabits => 'Venjur';

  @override
  String get dashSectionGoals => 'Markmið';

  @override
  String get dashSectionReview => 'Upprifjun spjalda';

  @override
  String get dashSectionNotes => 'Nýlegar glósur';

  @override
  String get dashSectionInsight => 'Tillögur';

  @override
  String get quickAddTask => 'Nýtt verkefni';

  @override
  String get quickAddNote => 'Ný glósa';

  @override
  String get quickAddEvent => 'Nýr viðburður';

  @override
  String get quickStartFocus => 'Einbeiting';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Þú átt $count verkefni sem eru komin fram yfir. Byrjaðu á því mikilvægasta.',
      one: 'Þú átt $count verkefni sem er komið fram yfir. Byrjaðu á því mikilvægasta.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Þú átt $minutes mínútur eftir í daglegt einbeitingarmarkmið þitt.';
  }

  @override
  String get insightCardsDue => 'Rifjaðu upp spjöldin núna meðan þau eru fersk.';

  @override
  String get insightAllClear =>
      'Allt er á áætlun. Skipuleggðu morgundaginn eða taktu meðvitaða pásu.';

  @override
  String insightHabitStreak(String habit) {
    return 'Haltu röðinni: $habit er enn ógert í dag.';
  }

  @override
  String get focusTitle => 'Einbeiting';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Tímastillir';

  @override
  String get focusModeCountUp => 'Skeiðklukka';

  @override
  String get focusModeOpen => 'Opið';

  @override
  String get focusPhaseWork => 'Einbeiting';

  @override
  String get focusPhaseShortBreak => 'Stutt hlé';

  @override
  String get focusPhaseLongBreak => 'Langt hlé';

  @override
  String get focusReady => 'Tilbúið þegar þú ert það';

  @override
  String get focusPaused => 'Í hléi';

  @override
  String get focusRunning => 'Í einbeitingu';

  @override
  String get focusDuration => 'Lengd';

  @override
  String get focusLinkTask => 'Tengja verkefni';

  @override
  String get focusLinkedTask => 'Unnið að';

  @override
  String get focusNoTask => 'Ekkert verkefni tengt';

  @override
  String focusCycle(int current, int total) {
    return 'Lota $current af $total';
  }

  @override
  String get focusSkipBreak => 'Sleppa hléi';

  @override
  String get focusStartBreak => 'Hefja hlé';

  @override
  String get focusStartNext => 'Hefja næstu einbeitingu';

  @override
  String get focusSessionComplete => 'Lotu lokið';

  @override
  String get focusSessionStopped => 'Lota vistuð';

  @override
  String focusSessionSummary(String duration) {
    return 'Þú einbeittir þér í $duration.';
  }

  @override
  String get focusAddNote => 'Bættu við athugasemd um þessa lotu';

  @override
  String get focusHistory => 'Ferill';

  @override
  String get focusNoHistory => 'Loknar lotur birtast hér';

  @override
  String get focusTargets => 'Mörk';

  @override
  String get focusDailyTarget => 'Daglegt mark';

  @override
  String get focusWeeklyTarget => 'Vikulegt mark';

  @override
  String get focusOutcomeCompleted => 'Lokið';

  @override
  String get focusOutcomeInterrupted => 'Stöðvað snemma';

  @override
  String get focusRecovered => 'Lotan hélt áfram meðan forritið var lokað.';

  @override
  String get focusCompletedWhileAway => 'Lota kláraðist meðan forritið var lokað og var vistuð.';

  @override
  String get focusNotificationsOff =>
      'Slökkt er á tilkynningum. Þú færð ekki viðvörun þegar lotu lýkur.';

  @override
  String get focusBatteryHint =>
      'Sum tæki gera hlé á forritum í bakgrunni. Tímastillirinn helst nákvæmur en viðvaranir geta tafist. Leyfðu ótakmarkaða rafhlöðunotkun til að fá áreiðanlegar viðvaranir.';

  @override
  String get focusOpenSettings => 'Opna stillingar';

  @override
  String get focusStopConfirmTitle => 'Stöðva þessa lotu?';

  @override
  String get focusStopConfirmMessage => 'Einbeitingartíminn hingað til verður vistaður.';

  @override
  String get focusDiscard => 'Henda';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes mínútur',
      one: '$minutes mínúta',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time eftir';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time liðnar';
  }

  @override
  String get focusDeleteSession => 'Eyða lotu';

  @override
  String get tasksTitle => 'Verkefni';

  @override
  String get tasksViewToday => 'Í dag';

  @override
  String get tasksViewUpcoming => 'Á næstunni';

  @override
  String get tasksViewAll => 'Allt';

  @override
  String get tasksViewOverdue => 'Komið fram yfir';

  @override
  String get tasksViewCompleted => 'Lokið';

  @override
  String get tasksQuickAddHint => 'Bæta við verkefni…';

  @override
  String get tasksEmptyTitle => 'Allt klárt';

  @override
  String get tasksEmptyMessage => 'Bættu við verkefni til að byrja að móta daginn.';

  @override
  String get tasksEmptyCompleted => 'Lokin verkefni birtast hér.';

  @override
  String get taskNew => 'Nýtt verkefni';

  @override
  String get taskEdit => 'Breyta verkefni';

  @override
  String get taskTitleLabel => 'Titill';

  @override
  String get taskTitleHint => 'Hvað þarf að gera?';

  @override
  String get taskDescriptionLabel => 'Lýsing';

  @override
  String get taskNotesLabel => 'Athugasemdir';

  @override
  String get taskPriority => 'Forgangur';

  @override
  String get priorityNone => 'Enginn';

  @override
  String get priorityLow => 'Lítill';

  @override
  String get priorityMedium => 'Miðlungs';

  @override
  String get priorityHigh => 'Mikill';

  @override
  String get priorityUrgent => 'Áríðandi';

  @override
  String get taskDueDate => 'Skiladagur';

  @override
  String get taskStartDate => 'Upphafsdagur';

  @override
  String get taskReminder => 'Áminning';

  @override
  String get taskRepeat => 'Endurtaka';

  @override
  String get taskProject => 'Verkefnaflokkur';

  @override
  String get taskCategory => 'Flokkur';

  @override
  String get taskCategoryHint => 't.d. Vinna, Heimili, Nám';

  @override
  String get taskEstimateMinutes => 'Áætlun (mínútur)';

  @override
  String get taskTracked => 'Mæld einbeiting';

  @override
  String get taskLabels => 'Merki';

  @override
  String get taskAddLabel => 'Nýtt merki';

  @override
  String get taskChecklist => 'Gátlisti';

  @override
  String get taskAddChecklistItem => 'Bæta við atriði';

  @override
  String get taskSubtasks => 'Undirverkefni';

  @override
  String get taskAddSubtask => 'Bæta við undirverkefni';

  @override
  String get taskDependencies => 'Lokað af';

  @override
  String get taskAddDependency => 'Bæta við verkefni sem stendur í vegi';

  @override
  String get taskLinkedNotes => 'Tengdar glósur';

  @override
  String get taskSetTime => 'Stilla tíma';

  @override
  String get taskNoDate => 'Engin dagsetning';

  @override
  String get taskCompleted => 'Verkefni lokið';

  @override
  String get taskNextOccurrence => 'Næsta endurtekning búin til';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days daga fram yfir',
      one: '$days dag fram yfir',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Merkja „$title“ sem lokið';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Merkja „$title“ sem ólokið';
  }

  @override
  String get sortSmart => 'Snjallt';

  @override
  String get sortDueDate => 'Skiladagur';

  @override
  String get sortPriority => 'Forgangur';

  @override
  String get sortCreated => 'Nýjast';

  @override
  String get sortTitle => 'Titill';

  @override
  String get filterAllProjects => 'Allir verkefnaflokkar';

  @override
  String get filterAnyPriority => 'Hvaða forgangur sem er';

  @override
  String get filterTitle => 'Sía og raða';

  @override
  String get dateToday => 'Í dag';

  @override
  String get dateTomorrow => 'Á morgun';

  @override
  String get dateYesterday => 'Í gær';

  @override
  String get repeatNever => 'Endurtekst ekki';

  @override
  String get repeatDaily => 'Daglega';

  @override
  String get repeatWeekdays => 'Alla virka daga';

  @override
  String get repeatWeekly => 'Vikulega';

  @override
  String get repeatMonthly => 'Mánaðarlega';

  @override
  String get repeatYearly => 'Árlega';

  @override
  String get repeatCustom => 'Sérsniðið';

  @override
  String get repeatEvery => 'Endurtaka á';

  @override
  String get repeatOnDays => 'Dagar';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'daga fresti',
      one: 'dags fresti',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vikna fresti',
      one: 'viku fresti',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mánaða fresti',
      one: 'mánaðar fresti',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ára fresti',
      one: 'árs fresti',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skipti',
      one: '$count skipti',
    );
    return 'Lýkur eftir $_temp0';
  }

  @override
  String get repeatEndsNever => 'Lýkur aldrei';

  @override
  String get reminderAtTime => 'Þegar viðburður hefst';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes mínútum áður',
      one: '$minutes mínútu áður',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours klukkustundum áður',
      one: '$hours klukkustund áður',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 degi áður';

  @override
  String get projectsTitle => 'Verkefnaflokkar';

  @override
  String get projectsEmptyTitle => 'Engir verkefnaflokkar enn';

  @override
  String get projectsEmptyMessage => 'Flokkaðu saman tengd verkefni, glósur og einbeitingartíma.';

  @override
  String get projectNew => 'Nýr verkefnaflokkur';

  @override
  String get projectEdit => 'Breyta verkefnaflokki';

  @override
  String get projectName => 'Heiti';

  @override
  String get projectDescription => 'Lýsing';

  @override
  String get projectGoal => 'Markmið';

  @override
  String get projectDeadline => 'Lokafrestur';

  @override
  String get projectColor => 'Litur';

  @override
  String get projectIcon => 'Tákn';

  @override
  String get projectProgress => 'Framvinda';

  @override
  String projectTasksDone(int done, int total) {
    return '$done af $total verkefnum lokið';
  }

  @override
  String get projectFocusTime => 'Einbeitingartími';

  @override
  String get projectArchived => 'Verkefnaflokkar í safni';

  @override
  String get projectShowArchived => 'Sýna safn';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dagar eftir',
      one: '$days dagur eftir',
      zero: 'Á skila í dag',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Lokafrestur liðinn';

  @override
  String get calendarTitle => 'Dagatal';

  @override
  String get calendarMonth => 'Mánuður';

  @override
  String get calendarWeek => 'Vika';

  @override
  String get calendarDay => 'Dagur';

  @override
  String get calendarToday => 'Í dag';

  @override
  String get calendarPrevious => 'Fyrra';

  @override
  String get calendarNext => 'Næsta';

  @override
  String get calendarNoEvents => 'Ekkert á dagskrá';

  @override
  String get calendarAllDay => 'Allan daginn';

  @override
  String get eventNew => 'Nýr viðburður';

  @override
  String get eventEdit => 'Breyta viðburði';

  @override
  String get eventTitleHint => 'Titill viðburðar';

  @override
  String get eventStarts => 'Hefst';

  @override
  String get eventEnds => 'Lýkur';

  @override
  String get eventKind => 'Tegund';

  @override
  String get eventKindEvent => 'Viðburður';

  @override
  String get eventKindTimeBlock => 'Tímablokk';

  @override
  String get eventKindFocus => 'Einbeitingarlota';

  @override
  String get eventKindGoal => 'Persónulegt markmið';

  @override
  String get eventDescription => 'Nánar';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Skarast á við $count viðburði',
      one: 'Skarast á við $count viðburð',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Árekstrar í dagskrá þennan dag';

  @override
  String get calendarTaskDue => 'Verkefni á skila';

  @override
  String get calendarDragHint => 'Haltu inni og dragðu viðburð til að færa hann';

  @override
  String get calendarRescheduled => 'Viðburður færður';

  @override
  String get calendarScheduleTask => 'Setja á dagskrá sem tímablokk';

  @override
  String get notesTitle => 'Glósur';

  @override
  String get notesViewAll => 'Allt';

  @override
  String get notesViewPinned => 'Festar';

  @override
  String get notesViewFavorites => 'Eftirlæti';

  @override
  String get notesViewArchived => 'Í safni';

  @override
  String get notesTags => 'Merki';

  @override
  String get notesNewNotebook => 'Ný glósubók';

  @override
  String get notesNoNotebook => 'Engin glósubók';

  @override
  String get notesEmptyTitle => 'Autt blað';

  @override
  String get notesEmptyMessage => 'Skráðu hugmyndir, fundarglósur og þekkingu.';

  @override
  String get noteTitleHint => 'Titill';

  @override
  String get noteBodyHint =>
      'Byrjaðu að skrifa… Notaðu # fyrir merki og [[Titill]] til að tengja glósur.';

  @override
  String get noteFavorite => 'Eftirlæti';

  @override
  String get noteUnfavorite => 'Fjarlægja úr eftirlætum';

  @override
  String get noteMoveTo => 'Færa í glósubók';

  @override
  String get noteBacklinks => 'Tengt frá';

  @override
  String get noteLinkedTasks => 'Tengd verkefni';

  @override
  String get noteLinkTask => 'Tengja verkefni';

  @override
  String get noteLinkProject => 'Verkefnaflokkur';

  @override
  String get noteFormatHeading => 'Fyrirsögn';

  @override
  String get noteFormatBold => 'Feitletrað';

  @override
  String get noteFormatItalic => 'Skáletrað';

  @override
  String get noteFormatList => 'Punktalisti';

  @override
  String get noteFormatChecklist => 'Gátlisti';

  @override
  String get noteFormatLink => 'Tengill';

  @override
  String noteEdited(String time) {
    return 'Breytt $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count orð',
      one: '$count orð',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Spjöld';

  @override
  String get flashEmptyTitle => 'Búðu til fyrsta stokkinn';

  @override
  String get flashEmptyMessage =>
      'Dreifð endurtekning sýnir hvert spjald rétt áður en þú myndir gleyma því.';

  @override
  String get deckNew => 'Nýr stokkur';

  @override
  String get deckEdit => 'Breyta stokki';

  @override
  String get deckName => 'Heiti stokks';

  @override
  String get deckDescription => 'Lýsing';

  @override
  String get deckDailyNew => 'Ný spjöld á dag';

  @override
  String get deckDailyReview => 'Daglegt upprifjunarmark';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöld',
      one: '$count spjald',
      zero: 'Engin spjöld',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Á gjalddaga';

  @override
  String get deckNewCards => 'Ný';

  @override
  String get deckMature => 'Lærð';

  @override
  String get deckStudy => 'Læra';

  @override
  String get deckNothingDue => 'Ekkert til upprifjunar núna. Komdu aftur síðar.';

  @override
  String get deckEmptyCards => 'Bættu við spjöldum til að byrja að læra.';

  @override
  String get cardNew => 'Nýtt spjald';

  @override
  String get cardEdit => 'Breyta spjaldi';

  @override
  String get cardFront => 'Framhlið';

  @override
  String get cardBack => 'Bakhlið';

  @override
  String get cardFrontHint => 'Spurning eða hugtak';

  @override
  String get cardBackHint => 'Svar eða skilgreining';

  @override
  String get cardTags => 'Merki';

  @override
  String get cardAddAnother => 'Vista og bæta við öðru';

  @override
  String get reviewShowAnswer => 'Sýna svar';

  @override
  String get reviewAgain => 'Aftur';

  @override
  String get reviewHard => 'Erfitt';

  @override
  String get reviewGood => 'Gott';

  @override
  String get reviewEasy => 'Auðvelt';

  @override
  String reviewProgress(int done, int total) {
    return '$done af $total';
  }

  @override
  String get reviewFinishedTitle => 'Lotu lokið';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Þú rifjaðir upp $count spjöld.',
      one: 'Þú rifjaðir upp $count spjald.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Ýttu til að sjá svarið';

  @override
  String get importCardsTitle => 'Flytja inn spjöld';

  @override
  String get importCardsHint =>
      'Límdu eitt spjald í hverja línu (framhlið og bakhlið aðskildar með dálkahléi eða semíkommu), eða veldu skrá: Excel (.xlsx), CSV, Anki-stokk (.apkg) eða útfluttan stokk.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöld flutt inn',
      one: '$count spjald flutt inn',
      zero: 'Engin spjöld flutt inn',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Ekki tókst að flytja þetta efni inn.';

  @override
  String get exportCopied => 'Stokkur fluttur út';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mín.',
      one: '$count mín.',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '$count dagur',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Markmið';

  @override
  String get goalsEmptyTitle => 'Stefndu að einhverju';

  @override
  String get goalsEmptyMessage =>
      'Settu dagleg, vikuleg, mánaðarleg eða langtímamarkmið og fylgstu með raunverulegri framvindu.';

  @override
  String get goalNew => 'Nýtt markmið';

  @override
  String get goalEdit => 'Breyta markmiði';

  @override
  String get goalTitleHint => 'Hverju viltu ná?';

  @override
  String get goalPeriod => 'Tímabil';

  @override
  String get goalPeriodDaily => 'Daglegt';

  @override
  String get goalPeriodWeekly => 'Vikulegt';

  @override
  String get goalPeriodMonthly => 'Mánaðarlegt';

  @override
  String get goalPeriodLongTerm => 'Langtíma';

  @override
  String get goalTarget => 'Mark';

  @override
  String get goalUnit => 'Eining';

  @override
  String get goalUnitHint => 't.d. blaðsíður, km, klukkustundir';

  @override
  String get goalStatusActive => 'Virkt';

  @override
  String get goalStatusPaused => 'Í hléi';

  @override
  String get goalStatusAchieved => 'Náð';

  @override
  String get goalPause => 'Gera hlé á markmiði';

  @override
  String get goalResume => 'Halda markmiði áfram';

  @override
  String get goalMarkAchieved => 'Merkja sem náð';

  @override
  String goalProgressOf(String current, String target) {
    return '$current af $target';
  }

  @override
  String get goalLogAmount => 'Magn';

  @override
  String get goalLogNote => 'Athugasemd (valfrjálst)';

  @override
  String get goalHistory => 'Ferill';

  @override
  String get goalNoHistory => 'Skráð framvinda birtist hér';

  @override
  String get goalLinkedTasks => 'Tengd verkefni';

  @override
  String get goalLinkedTasksHint => 'Hvert lokið tengt verkefni telst sem 1 fyrir þetta markmið.';

  @override
  String get goalThisPeriod => 'Þetta tímabil';

  @override
  String get habitsTitle => 'Venjur';

  @override
  String get habitsEmptyTitle => 'Lítil skref, á hverjum degi';

  @override
  String get habitsEmptyMessage => 'Búðu til venju og hakaðu við hana þegar þú gerir hana.';

  @override
  String get habitNew => 'Ný venja';

  @override
  String get habitEdit => 'Breyta venju';

  @override
  String get habitNameHint => 't.d. Lesa 20 blaðsíður';

  @override
  String get habitDays => 'Áætlun';

  @override
  String get habitEveryDay => 'Daglega';

  @override
  String get habitTargetPerDay => 'Skipti á dag';

  @override
  String get habitReminder => 'Dagleg áminning';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count daga röð',
      one: '$count dags röð',
      zero: 'Engin röð',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Lengsta röð';

  @override
  String get habitCurrentStreak => 'Núverandi röð';

  @override
  String get habitConsistency => 'Stöðugleiki';

  @override
  String get habitLast90 => 'Síðustu 90 dagar';

  @override
  String get habitPaused => 'Í hléi';

  @override
  String get habitPause => 'Gera hlé á venju';

  @override
  String get habitResume => 'Halda venju áfram';

  @override
  String get habitDoneToday => 'Gert í dag';

  @override
  String habitCountToday(int count, int target) {
    return '$count af $target í dag';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Haka við „$name“';
  }

  @override
  String get habitNotScheduledToday => 'Ekki á dagskrá í dag';

  @override
  String get analyticsTitle => 'Innsýn';

  @override
  String get rangeWeek => '7 dagar';

  @override
  String get rangeMonth => '30 dagar';

  @override
  String get rangeQuarter => '90 dagar';

  @override
  String get statFocusTime => 'Einbeitingartími';

  @override
  String get statSessions => 'Lotur';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed lokið · $interrupted stöðvaðar snemma';
  }

  @override
  String get statTasksDone => 'Lokin verkefni';

  @override
  String get statCompletionRate => 'Lokið á réttum tíma';

  @override
  String get statHabitConsistency => 'Stöðugleiki venja';

  @override
  String get statRetention => 'Minni á spjöld';

  @override
  String get statReviews => 'Upprifjanir';

  @override
  String get statActiveGoals => 'Virk markmið';

  @override
  String get statEstimated => 'Áætluð vinna lokið';

  @override
  String get statEstimatedNote => 'Byggt á áætlunum þínum, ekki mældum tíma';

  @override
  String get statMeasuredNote => 'Mælt út frá einbeitingarlotum';

  @override
  String get chartFocusByDay => 'Einbeitingarmínútur á dag';

  @override
  String get chartTasksByDay => 'Lokin verkefni á dag';

  @override
  String get chartTimeByProject => 'Tími eftir verkefnaflokkum';

  @override
  String get chartProjectProgress => 'Framvinda verkefnaflokka';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: samtals $total, besti dagur $best';
  }

  @override
  String get analyticsNoData => 'Ekki nóg af gögnum enn';

  @override
  String get analyticsUnassigned => 'Óúthlutað';

  @override
  String get searchHint => 'Leita í öllu…';

  @override
  String get searchRecent => 'Nýlegar leitir';

  @override
  String get searchClearRecent => 'Hreinsa nýlegar leitir';

  @override
  String searchNoResults(String query) {
    return 'Engar niðurstöður fyrir „$query“';
  }

  @override
  String get searchStartTyping =>
      'Leitaðu í verkefnum, glósum, spjöldum, markmiðum, viðburðum og fleiru. Leitin helst á þessu tæki.';

  @override
  String get searchCatTask => 'Verkefni';

  @override
  String get searchCatProject => 'Verkefnaflokkar';

  @override
  String get searchCatNote => 'Glósur';

  @override
  String get searchCatFlashcard => 'Spjöld';

  @override
  String get searchCatDeck => 'Stokkar';

  @override
  String get searchCatGoal => 'Markmið';

  @override
  String get searchCatHabit => 'Venjur';

  @override
  String get searchCatEvent => 'Viðburðir';

  @override
  String get searchCatSession => 'Lotur';

  @override
  String get searchAll => 'Allt';

  @override
  String get assistantTitle => 'Aðstoðarmaður';

  @override
  String get assistantIntro =>
      'Skipulagshjálp sem virkar á tækinu þínu. Þú getur tengt gervigreindarþjónustu að eigin vali fyrir samantektir og myndun.';

  @override
  String get assistantOnDevice => 'Á tæki';

  @override
  String get assistantCloud => 'Gervigreindarþjónusta';

  @override
  String get assistantPlanDay => 'Skipuleggja daginn minn';

  @override
  String get assistantPlanDayDesc =>
      'Raðar opnum verkefnum eftir því hve brýn þau eru, forgangi og áætlun, og fellir þau að viðburðunum þínum.';

  @override
  String get assistantExtractTasks => 'Draga verkefni úr glósu';

  @override
  String get assistantExtractTasksDesc =>
      'Finnur gátlistaatriði og aðgerðalínur í glósu og breytir þeim í verkefni.';

  @override
  String get assistantMakeCards => 'Búa til spjöld úr glósu';

  @override
  String get assistantMakeCardsDesc =>
      'Breytir línum á forminu „hugtak: skilgreining“ og spurning/svar í spjöld.';

  @override
  String get assistantSummarize => 'Taka saman glósu';

  @override
  String get assistantSummarizeDesc =>
      'Krefst gervigreindarþjónustu. Glósan er aðeins send eftir að þú staðfestir.';

  @override
  String get assistantWorkload => 'Yfirlit yfir vinnuálag';

  @override
  String get assistantWorkloadDesc => 'Ber áætlaða vinnu saman við frítímann þinn í þessari viku.';

  @override
  String get assistantPlanEmpty => 'Engin opin verkefni til að skipuleggja. Njóttu rýmisins.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Frír einbeitingartími í dag: $time';
  }

  @override
  String get assistantPlanOverflow => 'Þessi passa hugsanlega ekki í dag:';

  @override
  String get assistantChooseNote => 'Veldu glósu';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count verkefni fundust',
      one: '$count verkefni fannst',
      zero: 'Engin verkefni fundust í þessari glósu',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöld fundust',
      one: '$count spjald fannst',
      zero: 'Engin spjöld fundust í þessari glósu',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Veldu stokk';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Áætluð vinna: $estimated. Frítími: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Þú hefur skipulagt meira en tími er fyrir. Íhugaðu að færa verkefni með lægri forgang.';

  @override
  String get assistantWorkloadOk => 'Áætlunin þín passar í tímann sem þú hefur.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opin verkefni hafa enga áætlun.',
      one: '$count opið verkefni hefur enga áætlun.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Gervigreindarþjónusta';

  @override
  String get assistantProviderOff => 'Engin þjónusta tengd. Verkfæri á tækinu virka áfram.';

  @override
  String assistantProviderOn(String host) {
    return 'Tengt við $host';
  }

  @override
  String get assistantEndpoint => 'API-endapunktur (HTTPS)';

  @override
  String get assistantModel => 'Líkan';

  @override
  String get assistantApiKey => 'API-lykill';

  @override
  String get assistantApiKeyStored => 'Geymt á öruggan hátt á þessu tæki';

  @override
  String get assistantHttpsOnly => 'Aðeins HTTPS-endapunktar eru leyfðir';

  @override
  String get assistantConsentTitle => 'Senda þetta efni til gervigreindarþjónustunnar þinnar?';

  @override
  String assistantConsentBody(String host) {
    return 'Texti valinnar glósu fer af þessu tæki og $host vinnur úr honum. Ekkert annað er sent.';
  }

  @override
  String get assistantConsentAlways => 'Ekki spyrja aftur fyrir þessa þjónustu';

  @override
  String get assistantSend => 'Senda';

  @override
  String get assistantUnavailable => 'Ekki náðist í gervigreindarþjónustuna. Reyndu aftur síðar.';

  @override
  String get assistantDisabledTitle => 'Slökkt er á aðstoðarmanni';

  @override
  String get assistantDisabledMessage =>
      'Kveiktu á honum til að nota skipulagsverkfæri. Engin gögn fara af tækinu nema þú tengir þjónustu og staðfestir hverja beiðni.';

  @override
  String get assistantSummaryTitle => 'Samantekt';

  @override
  String get assistantRemoveProvider => 'Fjarlægja þjónustu';

  @override
  String get settingsTitle => 'Stillingar';

  @override
  String get settingsGeneral => 'Almennt';

  @override
  String get settingsLanguage => 'Tungumál';

  @override
  String get settingsLanguageSystem => 'Tungumál tækis';

  @override
  String get settingsAppearance => 'Útlit';

  @override
  String get settingsTheme => 'Þema';

  @override
  String get themeLight => 'Ljóst';

  @override
  String get themeDark => 'Dökkt';

  @override
  String get themeSystem => 'Kerfi';

  @override
  String get settingsReduceMotion => 'Minnka hreyfingu';

  @override
  String get settingsReduceMotionDesc => 'Lágmarka hreyfimyndir og hreyfanlegan bakgrunn';

  @override
  String get settingsFocus => 'Einbeitingartímastillir';

  @override
  String get settingsWorkLength => 'Lengd einbeitingar';

  @override
  String get settingsShortBreak => 'Stutt hlé';

  @override
  String get settingsLongBreak => 'Langt hlé';

  @override
  String get settingsLongBreakEvery => 'Langt hlé eftir';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lotur',
      one: '$count lotu',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Hefja hlé sjálfkrafa';

  @override
  String get settingsSound => 'Hljóð við lok';

  @override
  String get settingsDailyFocusTarget => 'Daglegt einbeitingarmark';

  @override
  String get settingsWeeklyFocusTarget => 'Vikulegt einbeitingarmark';

  @override
  String get settingsNotifications => 'Tilkynningar';

  @override
  String get settingsNotificationsEnable => 'Leyfa áminningar';

  @override
  String get settingsQuietHours => 'Kyrrðartími';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Áminningar um venjur, markmið og upprifjun eru þaggaðar frá $start til $end';
  }

  @override
  String get settingsReviewReminder => 'Áminning um upprifjun spjalda';

  @override
  String get settingsPermissionDenied => 'Lokað er fyrir tilkynningar í kerfisstillingum.';

  @override
  String get settingsPrivacy => 'Persónuvernd og gögn';

  @override
  String get settingsPrivacyStatement =>
      'Gögnin þín eru aðeins geymd á þessu tæki og eru dulkóðuð. Enginn reikningur, engin greining og engin rakning.';

  @override
  String get settingsBackup => 'Búa til dulkóðað afrit';

  @override
  String get settingsBackupDesc => 'Varið með lykilorði sem þú velur';

  @override
  String get settingsRestore => 'Endurheimta úr afriti';

  @override
  String get settingsRestoreDesc => 'Kemur í stað allra gagna á þessu tæki';

  @override
  String get settingsErase => 'Eyða öllum gögnum';

  @override
  String get settingsEraseDesc => 'Eyða öllu á þessu tæki varanlega';

  @override
  String get settingsEraseConfirmTitle => 'Eyða öllum gögnum?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Öllum verkefnum, glósum, spjöldum, markmiðum, venjum, viðburðum og lotum verður eytt varanlega. Sláðu inn $word til að staðfesta.';
  }

  @override
  String get settingsEraseWord => 'EYÐA';

  @override
  String get settingsErased => 'Öllum gögnum eytt';

  @override
  String get backupPassword => 'Lykilorð afrits';

  @override
  String get backupPasswordConfirm => 'Staðfesta lykilorð';

  @override
  String backupPasswordHint(int count) {
    return 'Minnst $count stafir. Það er ekki hægt að endurheimta ef það glatast.';
  }

  @override
  String get backupPasswordMismatch => 'Lykilorðin passa ekki saman';

  @override
  String get backupPasswordShort => 'Lykilorðið er of stutt';

  @override
  String get backupCreating => 'Dulkóðar afrit…';

  @override
  String get backupCreated => 'Afrit tilbúið til vistunar';

  @override
  String get backupRestoring => 'Staðfestir og endurheimtir…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count atriði endurheimt',
      one: '$count atriði endurheimt',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Rangt lykilorð, eða skránni hefur verið breytt.';

  @override
  String get backupNotABackup => 'Þessi skrá er ekki Deep Focus-afrit.';

  @override
  String get backupCorrupted => 'Afritsskráin er skemmd.';

  @override
  String get backupNewer => 'Þetta afrit var gert með nýrri útgáfu af forritinu. Uppfærðu fyrst.';

  @override
  String get backupRestoreConfirmTitle => 'Skipta út öllum gögnum?';

  @override
  String get backupRestoreConfirmBody =>
      'Öllu sem er á þessu tæki núna verður skipt út fyrir afritið. Ef endurheimt mistekst breytist ekkert.';

  @override
  String get settingsAbout => 'Um';

  @override
  String settingsVersion(String version) {
    return 'Útgáfa $version';
  }

  @override
  String get settingsLicenses => 'Leyfi opins hugbúnaðar';

  @override
  String get settingsAssistant => 'Aðstoðarmaður';

  @override
  String get settingsAssistantEnable => 'Virkja aðstoðarmann';

  @override
  String get settingsDashboard => 'Hlutar heimaskjás';

  @override
  String get settingsTrash => 'Ruslafata';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes mín.';
  }

  @override
  String get trashEmpty => 'Ruslafatan er tóm';

  @override
  String get trashHint => 'Eydd atriði haldast hér þar til þú fjarlægir þau.';

  @override
  String get trashTasks => 'Verkefni';

  @override
  String get trashNotes => 'Glósur';

  @override
  String get onboardWelcomeTitle => 'Velkomin í vinnusvæði framtíðarinnar';

  @override
  String get onboardWelcomeBody =>
      'Verkefni, einbeiting, dagatal, glósur, spjöld, markmið og venjur — saman, fallega einfalt.';

  @override
  String get onboardPrivateTitle => 'Persónuvernd frá grunni';

  @override
  String get onboardPrivateBody =>
      'Allt helst á þessu tæki, dulkóðað. Enginn reikningur. Engin rakning. Þú ræður.';

  @override
  String get onboardLanguageTitle => 'Veldu tungumál';

  @override
  String get onboardNotifTitle => 'Mildar áminningar';

  @override
  String get onboardNotifBody =>
      'Leyfðu tilkynningar fyrir áminningar um verkefni og viðvaranir um einbeitingu. Þú getur breytt þessu hvenær sem er.';

  @override
  String get onboardGetStarted => 'Hefjast handa';

  @override
  String onboardStep(int current, int total) {
    return 'Skref $current af $total';
  }

  @override
  String get notifChannelReminders => 'Áminningar';

  @override
  String get notifChannelRemindersDesc => 'Áminningar um verkefni, viðburði, venjur og markmið';

  @override
  String get notifChannelFocus => 'Einbeitingartímastillir';

  @override
  String get notifChannelFocusDesc => 'Viðvaranir þegar einbeitingarlotu eða hléi lýkur';

  @override
  String get notifTaskTitle => 'Áminning um verkefni';

  @override
  String get notifEventTitle => 'Væntanlegur viðburður';

  @override
  String notifEventBody(String title, String time) {
    return '$title kl. $time';
  }

  @override
  String get notifFocusDoneTitle => 'Einbeitingarlotu lokið';

  @override
  String get notifFocusDoneBody => 'Vel gert. Tími fyrir hlé.';

  @override
  String get notifBreakDoneTitle => 'Hléinu er lokið';

  @override
  String get notifBreakDoneBody => 'Tilbúin(n) í næstu einbeitingarlotu?';

  @override
  String get notifHabitTitle => 'Áminning um venju';

  @override
  String get notifReviewTitle => 'Spjöldin eru tilbúin';

  @override
  String get notifReviewBody => 'Stutt upprifjun heldur minninu sterku.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours klst. $minutes mín.';
  }

  @override
  String durationHours(int hours) {
    return '$hours klst.';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes mín.';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'M,Þ,M,F,F,L,S';

  @override
  String a11yProgress(int value) {
    return 'Framvinda $value prósent';
  }

  @override
  String a11yPriority(String level) {
    return 'Forgangur: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Litur $index';
  }

  @override
  String get analyticsRangeLabel => 'Tímabil';

  @override
  String get analyticsRefresh => 'Uppfæra';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done af $total verkefnum með skiladag lokið á réttum tíma';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done af $total verkefnum lokið';
  }

  @override
  String get analyticsNoProjects => 'Engir virkir verkefnaflokkar';

  @override
  String get analyticsNoFocus => 'Engar einbeitingarlotur á þessu tímabili';

  @override
  String get analyticsHabitsNone => 'Engar virkar venjur';

  @override
  String get analyticsRetentionNote => 'Hlutfall lærðra spjalda sem þú mundir';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Frítími telst $start–$end á virkum dögum ($days), að frádregnum viðburðum með tíma. Áætluð vinna er summa áætlana opinna verkefna sem á að skila næstu 7 daga.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Mánudagur–föstudagur';

  @override
  String get assistantWorkdaysSunThu => 'Sunnudagur–fimmtudagur';

  @override
  String get assistantWorkloadDayOff => 'Frídagur';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated skipulagt · $free laust';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Skipulagt frá núna til $end, í kringum viðburði dagsins. Verkefni sem eru komin fram yfir fyrst, síðan forgangur, skiladagur og áætlun.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Setja á dagskrá sem tímablokkir';

  @override
  String get assistantScheduleConfirmTitle => 'Bæta tímablokkum við dagatalið?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tímablokkum verður bætt við dagatal dagsins.',
      one: '$count tímablokk verður bætt við dagatal dagsins.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tímablokkum bætt við',
      one: '$count tímablokk bætt við',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Þegar á dagatalinu';

  @override
  String get assistantPlanTimeline => 'Passar í dag';

  @override
  String get assistantNoEstimate => 'Bættu við áætlun til að skipuleggja þessi';

  @override
  String get assistantNoNotes => 'Engar glósur enn. Skrifaðu glósu fyrst.';

  @override
  String get assistantNoteEmpty => 'Þessi glósa er tóm.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count verkefni búin til',
      one: '$count verkefni búið til',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöld búin til',
      one: '$count spjald búið til',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Búa til $count',
      one: 'Búa til $count',
      zero: 'Ekkert valið',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Greint: óhakaðir reitir „- [ ]“ og línur sem byrja á TODO: eða To do:';

  @override
  String get assistantCardsHint =>
      'Greint: „hugtak: skilgreining“, „hugtak — skilgreining“ og Q:/A: línupör';

  @override
  String get assistantProviderHint =>
      'Notaðu hvaða OpenAI-samhæfða þjónustu sem er. Lykillinn helst í öruggri geymslu þessa tækis og fer aldrei í afrit.';

  @override
  String get assistantEndpointHelp => 'Til dæmis https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Skildu eftir autt til að halda vistaða lyklinum';

  @override
  String get assistantApiKeyRequired => 'Sláðu inn API-lykil';

  @override
  String get assistantProviderSaved => 'Þjónusta vistuð';

  @override
  String get assistantProviderRemoved => 'Þjónusta fjarlægð og lykli eytt';

  @override
  String get assistantRemoveProviderConfirm =>
      'Fjarlægja þjónustuna og eyða vistaða API-lyklinum af þessu tæki?';

  @override
  String get assistantAskEveryTime => 'Spyrja fyrir hverja beiðni';

  @override
  String get assistantSummarizing => 'Tekur saman…';

  @override
  String assistantSummaryNote(String host) {
    return 'Búið til af $host. Farðu yfir áður en þú treystir á það.';
  }

  @override
  String get assistantCopy => 'Afrita';

  @override
  String get assistantCopied => 'Afritað';

  @override
  String get assistantConfigure => 'Setja upp þjónustu';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Allir viðburðir í þessari röð voru færðir';

  @override
  String get calendarEventReminder => 'Áminning';

  @override
  String get calendarEventRepeat => 'Endurtaka';

  @override
  String get calendarEventColor => 'Litur';

  @override
  String get calendarDefaultColor => 'Nota lit tegundar';

  @override
  String get calendarEventLinkedTask => 'Tengt verkefni';

  @override
  String get calendarEventNoTask => 'Ekkert tengt verkefni';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viðburðir',
      one: '$count viðburður',
      zero: 'Engir viðburðir',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count verkefni á skila',
      one: '$count verkefni á skila',
      zero: 'engin verkefni á skila',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Bættu við viðburði eða tímablokk til að skipuleggja daginn.';

  @override
  String get calendarNow => 'Núverandi tími';

  @override
  String get calendarRecurring => 'Endurtekst';

  @override
  String get calendarEventNotFound => 'Þessi viðburður er ekki lengur til';

  @override
  String get calendarEventLocalTime => 'Tímar eru sýndir á tímabelti tækisins';

  @override
  String get calendarEventDeleted => 'Viðburður færður í ruslafötu';

  @override
  String get calendarConflictMarker => 'Skarast á við annan viðburð';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Breytingar gilda um alla viðburði í þessari röð';

  @override
  String get calendarDragHintSeries => 'Ef endurtekinn viðburður er dreginn færist öll röðin';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, verkefni á skila';
  }

  @override
  String get startupErrorTitle => 'Ekki tókst að opna gögnin þín';

  @override
  String get startupErrorLocked =>
      'Dulkóðunarlykill fyrir gögn þessa tækis er ekki tiltækur. Engu hefur verið eytt. Oft hjálpar að endurræsa tækið. Ef þú endurheimtir tækið nýlega skaltu frekar endurheimta gögnin úr dulkóðuðu afriti.';

  @override
  String get startupErrorCipher =>
      'Þetta tæki styður ekki dulkóðuðu geymsluna sem forritið þarf. Ekkert hefur verið vistað ódulkóðað.';

  @override
  String get startupErrorRetry => 'Reyna aftur';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöld bíða upprifjunar',
      one: '$count spjald bíður upprifjunar',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count á gjalddaga';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count ný';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Lærð spjöld: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Sláðu inn 0 eða meira';

  @override
  String get flashcardsSearchCards => 'Leita í spjöldum';

  @override
  String get flashcardsSearchEmpty => 'Engin spjöld passa við leitina';

  @override
  String get flashcardsCardAdded => 'Spjaldi bætt við';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Á gjalddaga $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Afrita á klippiborð';

  @override
  String get flashcardsExportTitle => 'Flytja út stokk';

  @override
  String get flashcardsDeleteDeck => 'Eyða stokki';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, næsta upprifjun eftir $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Spurning: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Svar: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Sýna spurningu';

  @override
  String get flashcardsImportField => 'Spjöld til innflutnings';

  @override
  String get flashcardsNothingToStudy => 'Ekkert til að læra';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöld tilbúin til náms',
      one: '$count spjald tilbúið til náms',
      zero: 'Engin spjöld tilbúin',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Eftir einkunn';

  @override
  String get flashcardsDeckNotFound => 'Þessi stokkur er ekki lengur tiltækur.';

  @override
  String get focusSessionDeleted => 'Lotu eytt';

  @override
  String get focusDeleteConfirm =>
      'Eyða þessari lotu úr ferlinum? Tími hennar telst þá ekki lengur með í mörkunum þínum.';

  @override
  String get focusUnlinkTask => 'Fjarlægja tengt verkefni';

  @override
  String get focusNoteHint => 'Að hverju vannstu?';

  @override
  String get focusTargetCaption => 'Mælt út frá vistuðum lotum';

  @override
  String get focusModeLabel => 'Stilling tímastillis';

  @override
  String focusUpNext(String phase) {
    return 'Næst: $phase';
  }

  @override
  String get focusStopwatchHint => 'Telur upp þar til þú stöðvar.';

  @override
  String get focusOpenHint => 'Engin tímamörk. Stöðvaðu þegar þú ert búin(n).';

  @override
  String get focusNotificationsDisabledInApp =>
      'Slökkt er á áminningum í stillingum. Þú færð ekki viðvörun þegar lotu lýkur.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Allt';

  @override
  String get goalsFilterPeriod => 'Tímabilssía';

  @override
  String get goalsFilterStatus => 'Stöðusía';

  @override
  String get goalsEmptyFiltered => 'Engin markmið passa við þessa síu';

  @override
  String goalsDueOn(String date) {
    return 'Lokafrestur $date';
  }

  @override
  String get goalsDeadline => 'Lokafrestur (valfrjálst)';

  @override
  String get goalsNoDeadline => 'Enginn lokafrestur';

  @override
  String get goalsSetDeadline => 'Stilla lokafrest';

  @override
  String get goalsRemoveDeadline => 'Fjarlægja lokafrest';

  @override
  String get goalsDescription => 'Lýsing (valfrjálst)';

  @override
  String get goalsTitleLabel => 'Titill';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Marki náð';

  @override
  String get goalsLogged => 'Framvinda skráð';

  @override
  String get goalsEntryDeleted => 'Færsla fjarlægð';

  @override
  String get goalsDeleteEntry => 'Fjarlægja færslu';

  @override
  String get goalsDeleted => 'Markmiði eytt';

  @override
  String get goalsMarkActive => 'Merkja sem virkt';

  @override
  String get goalsNotFound => 'Þetta markmið er ekki lengur tiltækt';

  @override
  String get goalsLinkTask => 'Tengja verkefni';

  @override
  String get goalsNoLinkedTasks => 'Engin tengd verkefni enn';

  @override
  String get goalsUnlinkTask => 'Aftengja verkefni';

  @override
  String get goalsTaskOpen => 'Ekki lokið enn';

  @override
  String get goalsTaskLinked => 'Verkefni tengt';

  @override
  String get goalsTaskUnlinked => 'Verkefni aftengt';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lokin tengd verkefni',
      one: '$count lokið tengt verkefni',
    );
    return 'Inniheldur $_temp0 á þessu tímabili';
  }

  @override
  String get goalsHistoryAllTime =>
      'Færslur frá fyrri tímabilum eru geymdar hér en teljast aðeins fyrir sitt tímabil.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done af $total gert í dag';
  }

  @override
  String get habitsNothingToday => 'Engar venjur eru á dagskrá í dag';

  @override
  String get habitsDecrease => 'Fjarlægja eitt hak';

  @override
  String get habitsResetToday => 'Endurstilla daginn';

  @override
  String get habitsCheckInHint => 'Haltu inni til að stilla';

  @override
  String get habitsName => 'Heiti';

  @override
  String get habitsColor => 'Litur';

  @override
  String get habitsValidationDays => 'Veldu að minnsta kosti einn dag';

  @override
  String habitsReminderAt(String time) {
    return 'Daglega kl. $time';
  }

  @override
  String get habitsSetReminder => 'Stilla tíma áminningar';

  @override
  String get habitsRemoveReminder => 'Fjarlægja áminningu';

  @override
  String get habitsReminderNote =>
      'Áminningar birtast á áætluðum dögum þegar tilkynningar eru leyfðar.';

  @override
  String get habitsArchived => 'Venja sett í safn';

  @override
  String get habitsNotFound => 'Þessi venja er ekki lengur tiltæk';

  @override
  String get habitsLast30 => 'Síðustu 30 dagar';

  @override
  String get habitsConsistencyNone => 'Ekki nóg af gögnum enn';

  @override
  String get habitsCalendar => 'Ferill haka';

  @override
  String get habitsCalendarHint => 'Ýttu á dag til að leiðrétta hann.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count af $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Hök síðustu 90 daga. Stöðugleiki $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Hök síðustu 90 daga. Ekki nóg af gögnum enn.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '$count dagur',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Dagar í hléi hafa ekki áhrif á röðina.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Setja venju í safn';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sinnum á dag',
      one: '$count sinni á dag',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Aðrar glósur';

  @override
  String get notesAllNotebooks => 'Allar glósubækur';

  @override
  String get notesNotebookName => 'Heiti glósubókar';

  @override
  String get notesNotebookColor => 'Litur';

  @override
  String get notesDeleteNotebook => 'Eyða glósubók';

  @override
  String get notesDeleteNotebookMessage =>
      'Glósubókin er fjarlægð. Glósurnar í henni eru geymdar og birtast undir Allar glósubækur.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Festu mikilvægar glósur svo þær haldist efst.';

  @override
  String get notesEmptyFavorites => 'Glósur sem þú merkir sem eftirlæti birtast hér.';

  @override
  String get notesEmptyArchived => 'Glósur í safni birtast hér.';

  @override
  String get notesEmptyFiltered => 'Engar glósur passa við þessar síur.';

  @override
  String get notesArchivedSnack => 'Glósa sett í safn';

  @override
  String get notesUnarchivedSnack => 'Glósa færð aftur í glósurnar þínar';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done af $total lokið';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Snið';

  @override
  String get notesWrite => 'Skrifa';

  @override
  String get notesPreviewEmpty => 'Ekkert til að forskoða enn.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Engar aðrar glósur tengja hingað enn. Tengdu í þessa glósu með [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle => 'Gefðu glósunni titil svo aðrar glósur geti tengt í hana.';

  @override
  String get notesLinkedTasksEmpty => 'Engin verkefni tengd þessari glósu.';

  @override
  String notesLinkMissing(String title) {
    return 'Engin glósa heitir „$title“ enn.';
  }

  @override
  String get notesNotFound => 'Þessi glósa er ekki lengur til.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Gátlistaatriði: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Opna glósuna $title';
  }

  @override
  String get notesTaskDone => 'Lokið';

  @override
  String get notifTimerDoneBody => 'Tíminn sem þú stilltir er liðinn.';

  @override
  String get onboardingPrivatePointDevice => 'Aðeins geymt á þessu tæki, dulkóðað';

  @override
  String get onboardingPrivatePointAccount => 'Enginn reikningur nauðsynlegur';

  @override
  String get onboardingPrivatePointTracking => 'Engin greining, engin rakning';

  @override
  String get onboardingLanguageBody => 'Þú getur breytt þessu hvenær sem er í Stillingum.';

  @override
  String get onboardingNext => 'Áfram';

  @override
  String get projectsActive => 'Virkir';

  @override
  String get projectNameHint => 't.d. Vörukynning';

  @override
  String get projectGoalHint => 'Hvernig lítur lokið út?';

  @override
  String get projectNoDeadline => 'Enginn lokafrestur';

  @override
  String get projectTasksOpen => 'Opin verkefni';

  @override
  String get projectTasksCompleted => 'Lokin verkefni';

  @override
  String get projectAddTask => 'Bæta verkefni við verkefnaflokk';

  @override
  String get projectAddNote => 'Ný glósa fyrir verkefnaflokk';

  @override
  String get projectLinkedNotes => 'Glósur';

  @override
  String get projectNoTasks => 'Engin verkefni í þessum verkefnaflokki enn';

  @override
  String get projectArchivedBadge => 'Í safni';

  @override
  String get projectDeleted => 'Verkefnaflokkur færður í ruslafötu';

  @override
  String get projectDeleteMessage => 'Verkefnin verða áfram á listanum þínum án verkefnaflokks.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent prósent lokið';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count niðurstöður',
      one: '$count niðurstaða',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Sía eftir tegund';

  @override
  String searchRecentTap(String query) {
    return 'Leita aftur að $query';
  }

  @override
  String get settingsLanguageHint =>
      'Veldu tungumál fyrir allt forritið. Heitin eru sýnd á eigin tungumáli.';

  @override
  String get settingsThemeHint => 'Ljóst, dökkt eða eftir kerfinu';

  @override
  String settingsDecrease(String setting) {
    return 'Lækka $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Hækka $setting';
  }

  @override
  String get settingsQuietStart => 'Hefst';

  @override
  String get settingsQuietEnd => 'Lýkur';

  @override
  String get settingsNotificationsHint =>
      'Þetta vistar val þitt í forritinu. Kerfið gæti líka beðið um heimild.';

  @override
  String get settingsDashboardHint =>
      'Dragðu til að endurraða. Slökktu á hlutum sem þú þarft ekki.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Endurraða $section';
  }

  @override
  String get settingsDashboardReset => 'Endurheimta sjálfgefna röð';

  @override
  String get settingsAssistantDesc =>
      'Valfrjáls skipulagshjálp. Ekkert fer af þessu tæki nema þú tengir þjónustu.';

  @override
  String get settingsAssistantSetup => 'Aðstoðarmaður og uppsetning þjónustu';

  @override
  String get settingsTrashDesc => 'Endurheimtu eða eyddu fjarlægðum atriðum varanlega';

  @override
  String get settingsEraseFirstBody =>
      'Ekki er hægt að afturkalla þetta. Íhugaðu að búa fyrst til dulkóðað afrit.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Sláðu inn $word';
  }

  @override
  String get settingsEraseFailed => 'Ekki tókst að eyða gögnum. Engu var breytt.';

  @override
  String get settingsAboutTagline =>
      'Einkavinnusvæði fyrir afköst sem virkar fyrst og fremst á tækinu.';

  @override
  String get backupShowPassword => 'Sýna lykilorð';

  @override
  String get backupHidePassword => 'Fela lykilorð';

  @override
  String get backupSaved => 'Afrit vistað';

  @override
  String get backupFailed => 'Ekki tókst að búa til afritið. Gögnin þín eru óbreytt.';

  @override
  String get backupReadFailed => 'Ekki tókst að lesa valda skrá.';

  @override
  String get backupRestoreFailed => 'Endurheimt mistókst. Engu var breytt.';

  @override
  String get backupShareSubject => 'Dulkóðað Deep Focus-afrit';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Á $count daga fresti',
      one: 'Á $count dags fresti',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Á $count vikna fresti',
      one: 'Á $count viku fresti',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Á $count mánaða fresti',
      one: 'Á $count mánaðar fresti',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Á $count ára fresti',
      one: 'Á $count árs fresti',
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
    return 'á $days';
  }

  @override
  String get repeatEndsLabel => 'Lýkur';

  @override
  String get repeatEndsAfter => 'Eftir ákveðinn fjölda skipta';

  @override
  String get repeatCountLabel => 'Skipti';

  @override
  String get reminderNone => 'Engin áminning';

  @override
  String get reminderCustomTime => 'Á tilteknum tíma';

  @override
  String get a11yDecrease => 'Lækka';

  @override
  String get a11yIncrease => 'Hækka';

  @override
  String get pickTaskTitle => 'Veldu verkefni';

  @override
  String get pickTaskEmpty => 'Engin opin verkefni';

  @override
  String get tasksSearchTooltip => 'Leita í verkefnum';

  @override
  String get tasksSectionOverdue => 'Komið fram yfir';

  @override
  String get tasksSectionToday => 'Í dag';

  @override
  String get tasksRecurringSemantics => 'Endurtekst';

  @override
  String get tasksFilterPriorityAtLeast => 'Lágmarksforgangur';

  @override
  String get tasksFilterCategory => 'Flokkur';

  @override
  String get tasksFilterAnyCategory => 'Hvaða flokkur sem er';

  @override
  String get tasksFilterLabel => 'Merki';

  @override
  String get tasksFilterAnyLabel => 'Hvaða merki sem er';

  @override
  String get tasksFilterReset => 'Endurstilla síur';

  @override
  String get tasksViewByProject => 'Eftir verkefnaflokki';

  @override
  String get tasksViewByPriority => 'Eftir forgangi';

  @override
  String get tasksViewByCategory => 'Eftir flokki';

  @override
  String get tasksGroupNoCategory => 'Enginn flokkur';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count verkefnum',
      one: '$count verkefni',
    );
    return 'Lokað af $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Ólokin verkefni standa í vegi fyrir þessu verkefni. Ljúka því samt?';

  @override
  String get taskStartFocus => 'Einbeita sér að þessu verkefni';

  @override
  String get taskRemoveDate => 'Fjarlægja dagsetningu';

  @override
  String get taskAllDay => 'Enginn tiltekinn tími';

  @override
  String get taskSaved => 'Verkefni vistað';

  @override
  String get taskCreated => 'Verkefni búið til';

  @override
  String get taskReminderNeedsDue => 'Stilltu skiladag til að nota afstæðar áminningar';

  @override
  String get taskSubtaskDetailsHint =>
      'Vistaðu verkefnið fyrst til að bæta við undirverkefnum, gátlistaatriðum, merkjum og tengslum.';

  @override
  String get taskLabelName => 'Heiti merkis';

  @override
  String get taskMoreDetails => 'Nánar';

  @override
  String get taskPlanning => 'Skipulag';

  @override
  String get taskOrganize => 'Flokkun';

  @override
  String get taskBreakdown => 'Sundurliðun';

  @override
  String get trashDeleteTaskTitle => 'Eyða þessu verkefni endanlega?';

  @override
  String get trashDeleteNoteTitle => 'Eyða þessari glósu endanlega?';

  @override
  String get trashDeleteBody => 'Ekki er hægt að afturkalla þetta.';

  @override
  String get trashEmptyTitle => 'Tæma ruslafötu?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count atriðum verður eytt endanlega.',
      one: '$count atriði verður eytt endanlega.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Endurheimt';

  @override
  String get trashPurged => 'Eytt endanlega';

  @override
  String trashDeletedOn(String date) {
    return 'Eytt $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count atriði',
      one: '$count atriði',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Lesa upphátt';

  @override
  String get flashcardsTtsUnavailable => 'Talgervill er ekki tiltækur á þessu tæki.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Engin rödd er uppsett fyrir þetta tungumál. Bættu einni við í talgervilsstillingum Android.';

  @override
  String get calendarAgenda => 'Dagskrá';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Neisti',
      'rocket': 'Eldflaug',
      'book': 'Bók',
      'work': 'Vinna',
      'home': 'Heimili',
      'heart': 'Hjarta',
      'code': 'Kóði',
      'palette': 'Litaspjald',
      'fitness': 'Hreysti',
      'school': 'Skóli',
      'travel': 'Ferðalög',
      'money': 'Sparnaður',
      'other': 'Tákn',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Fleiri reitir';

  @override
  String get cardFieldExample => 'Dæmi';

  @override
  String get cardFieldExplanation => 'Skýring';

  @override
  String get cardFieldPronunciation => 'Framburður';

  @override
  String get cardFieldNotes => 'Viðbótarathugasemdir';

  @override
  String get projectMilestones => 'Áfangar';

  @override
  String get milestoneAdd => 'Bæta við áfanga';

  @override
  String get milestoneEdit => 'Breyta áfanga';

  @override
  String get milestoneTitleLabel => 'Áfangi';

  @override
  String get milestoneNoDate => 'Engin dagsetning';

  @override
  String get milestonesEmpty =>
      'Engir áfangar enn. Bættu við vörðum með dagsetningum til að fylgjast með verkefnaflokknum á dagatalinu.';

  @override
  String get milestoneDeleted => 'Áfanga eytt';

  @override
  String milestoneDoneA11y(String title) {
    return 'Merkja áfangann „$title“ sem lokið';
  }

  @override
  String calendarMilestone(String project) {
    return 'Áfangi · $project';
  }

  @override
  String get tasksViewInbox => 'Innhólf';

  @override
  String get tasksViewArchived => 'Í safni';

  @override
  String get tasksEmptyInbox =>
      'Verkefni án verkefnaflokks eða dagsetningar lenda hér. Flokkaðu þau þegar þú hefur mínútu.';

  @override
  String get tasksEmptyArchived => 'Verkefni í safni eru geymd hér, utan lista og áminninga.';

  @override
  String get taskArchivedBadge => 'Í safni';

  @override
  String get taskStatusInProgress => 'Í vinnslu';

  @override
  String get taskArchived => 'Verkefni sett í safn';

  @override
  String get taskUnarchived => 'Verkefni endurheimt úr safni';

  @override
  String get focusPlanTitle => 'Lotuáætlun';

  @override
  String focusPlanTotal(String duration) {
    return 'Samtals $duration';
  }

  @override
  String get focusPlanRounds => 'Einbeitingarlotur';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Langt hlé eftir';

  @override
  String get focusPlanSkipLastBreak => 'Sleppa síðasta hléi';

  @override
  String get focusPlanAutoBreaks => 'Hefja hlé sjálfkrafa';

  @override
  String get focusPlanAutoFocus => 'Hefja einbeitingu sjálfkrafa eftir hlé';

  @override
  String get focusPlanSave => 'Vista áætlun';

  @override
  String get focusPlanNameHint => 't.d. Prófundirbúningur';

  @override
  String get focusPlanSaved => 'Áætlun vistuð';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work mín. einbeiting, $rest mín. hlé';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Lækka $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Hækka $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Lota $current af $total';
  }

  @override
  String get focusSeriesComplete => 'Röð lokið. Vel gert!';

  @override
  String get filterAll => 'Allt';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added flutt inn · $duplicates tvítök sleppt · $invalid ófullgerðar línur';
  }

  @override
  String get flashcardsSuspend => 'Fresta spjaldi';

  @override
  String get flashcardsResume => 'Halda spjaldi áfram';

  @override
  String get flashcardsSuspended => 'Spjaldi frestað: það fer ekki á dagskrá';

  @override
  String get flashcardsResumed => 'Spjald virkt aftur';

  @override
  String get flashcardsSuspendedFilter => 'Frestað';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown af $total spjöldum';
  }

  @override
  String get flashcardsImportFile => 'Úr skrá';

  @override
  String get speechTitle => 'Tal';

  @override
  String get speechAppLanguage => 'Tungumál forrits';

  @override
  String get speechFrontLanguage => 'Tungumál framhliðar';

  @override
  String get speechBackLanguage => 'Tungumál bakhliðar';

  @override
  String get speechRepeat => 'Endurtaka hvern lestur';

  @override
  String get speechRate => 'Hraði';

  @override
  String get speechAutoRead => 'Lesa spurninguna sjálfkrafa';

  @override
  String get speechHint =>
      'Notar raddirnar sem eru uppsettar á þessu tæki, án nettengingar. Ef tungumál hefur enga rödd færðu að vita það og ekkert annað er notað í staðinn.';

  @override
  String get studyHowTitle => 'Hvernig viltu læra?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rifja upp $count spjöld',
      one: 'Rifja upp $count spjald',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Æfa öll spjöld (áætlun óbreytt)';

  @override
  String get studyPracticeMistakes => 'Æfa nýleg mistök';

  @override
  String get studyPracticeHint =>
      'Æfingalotur breyta aldrei því hvenær spjöld eru á gjalddaga. Upprifjun uppfærir áætlunina.';

  @override
  String get studyModeClassic => 'Klassískt';

  @override
  String get studyModeReverse => 'Öfugt';

  @override
  String get studyModeMixed => 'Báðar áttir';

  @override
  String get studyModeTyped => 'Skrifa svarið';

  @override
  String get studyModeChoice => 'Fjölval';

  @override
  String get studyModeListening => 'Hlustun';

  @override
  String get studyPractice => 'æfing';

  @override
  String get studyNoMistakes => 'Engin nýleg mistök í þessum stokki. Flott!';

  @override
  String get studyTypeAnswer => 'Skrifaðu svarið';

  @override
  String get studyCheck => 'Athuga';

  @override
  String get studyKnewIt => 'Ég vissi það';

  @override
  String get studyDidntKnow => 'Vissi það ekki';

  @override
  String studyMistakes(int count) {
    return 'Mistök ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Endurtaka spjöldin sem mistókust';

  @override
  String get studyCorrect => 'Rétt';

  @override
  String get studyAlmost => 'Næstum — athugaðu stafsetninguna';

  @override
  String get studyWrong => 'Ekki alveg';

  @override
  String get studyShowText => 'Sýna textann';

  @override
  String get flashcardsImportFileFailed =>
      'Ekki tókst að opna skrána. Þú getur límt inn efni hennar í staðinn.';

  @override
  String get studyNoMatchingCards => 'Engin spjöld passa við þetta val enn.';

  @override
  String get studyPracticeNew => 'Aðeins ný';

  @override
  String get studyPracticeHard => 'Erfið spjöld';

  @override
  String get studyPracticeFavorites => 'Eftirlæti';

  @override
  String get studySessionSize => 'Spjöld í lotu';

  @override
  String get studySessionAll => 'Öll';

  @override
  String get studyOrder => 'Röð';

  @override
  String get studyOrderDue => 'Lengst fram yfir fyrst';

  @override
  String get studyOrderRandom => 'Handahófskennt';

  @override
  String get studyOrderHardest => 'Erfiðust fyrst';

  @override
  String get flashcardsHard => 'Erfitt';

  @override
  String get flashcardsFavorites => 'Eftirlæti';

  @override
  String get flashcardsFavorite => 'Bæta við eftirlæti';

  @override
  String get flashcardsUnfavorite => 'Fjarlægja úr eftirlætum';

  @override
  String get flashcardsDuplicate => 'Tvítaka';

  @override
  String get flashcardsMoveTo => 'Færa í stokk';

  @override
  String get flashcardsNoOtherDeck => 'Búðu fyrst til annan stokk.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöld færð',
      one: '$count spjald fært',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Bæta við merki';

  @override
  String get flashcardsTagHint => 't.d. sagnorð';

  @override
  String flashcardsSelected(int count) {
    return '$count valin';
  }

  @override
  String get flashcardsSelectAll => 'Velja öll sýnd';

  @override
  String flashcardsSelectCard(String front) {
    return 'Velja $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Minni $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Hugsanlegt tvítak';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Þessi stokkur er þegar með „$front“ → „$back“. Vista samt?';
  }

  @override
  String get flashcardsSaveAnyway => 'Vista samt';

  @override
  String get flashcardsStats => 'Tölfræði';

  @override
  String get flashcardsStatTotal => 'Spjöld';

  @override
  String get flashcardsStatLearning => 'Í námi';

  @override
  String get flashcardsStatMatureCaption => 'Munað í 21+ dag';

  @override
  String get flashcardsStatReviewsToday => 'Upprifjanir í dag';

  @override
  String get flashcardsStatCorrect => 'Rétt svör';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Síðustu dagar: $days';
  }

  @override
  String get flashcardsStatForget => 'Gleymskuhlutfall';

  @override
  String get flashcardsStatForgetCaption => '„Aftur“ á lærðum spjöldum';

  @override
  String get flashcardsStatRecall => 'Minni núna';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-mat, upprifjuð spjöld';

  @override
  String flashcardsStatActivity(int count) {
    return 'Upprifjanir á dag · $count samtals';
  }

  @override
  String get flashcardsStatHistory => 'Nýjustu svör';

  @override
  String get flashcardsStatNoHistory =>
      'Engar upprifjanir enn. Lærðu stokkinn til að sjá framvinduna hér.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Lesa $field upphátt';
  }

  @override
  String get speechVoice => 'Rödd';

  @override
  String get speechVoiceDefault => 'Sjálfvirkt';

  @override
  String get speechVoiceOnline => 'þarf internet';

  @override
  String get speechTest => 'Prófa rödd';

  @override
  String get importNext => 'Forskoðun';

  @override
  String get importPreviewTitle => 'Para dálka við reiti';

  @override
  String get importIgnoreColumn => 'Hunsa';

  @override
  String importColumn(int n) {
    return 'Dálkur $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready spjöld tilbúin · $invalid ófullgerðum línum verður sleppt';
  }

  @override
  String get importNeedFrontBack => 'Veldu hvaða dálkar eru framhlið og bakhlið.';

  @override
  String get actionMoveUp => 'Færa upp';

  @override
  String get actionMoveDown => 'Færa niður';

  @override
  String get flashcardsLayoutTitle => 'Útlit spjalds';

  @override
  String get flashcardsLayoutHint =>
      'Endurnefndu, feldu eða endurraðaðu aukareitum þessa stokks. Efni spjaldanna breytist aldrei.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Sýna $field í námi';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Sýna svarið skref fyrir skref';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Bakhliðin birtist fyrst; hver aukareitur opnast með því að ýta á hann.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Sýna $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Þessi skrá er stærri en $mb MB.';
  }

  @override
  String get flashcardsImage => 'Mynd';

  @override
  String get flashcardsAudio => 'Hljóð';

  @override
  String get flashcardsAddImage => 'Bæta við mynd';

  @override
  String get flashcardsAddAudio => 'Bæta við hljóði';

  @override
  String get flashcardsPlayAudio => 'Spila upptöku';

  @override
  String get flashcardsAudioUnavailable => 'Ekki er hægt að spila þessa upptöku á þessu tæki.';

  @override
  String get flashcardsCustomFields => 'Reitirnir þínir';

  @override
  String get flashcardsTemplates => 'Sniðmát';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Reitur $n';
  }

  @override
  String get flashcardsAddField => 'Bæta við reit';

  @override
  String get flashcardsFieldName => 'Heiti reits';

  @override
  String get flashcardsFieldLangDefault => 'Tungumál hliðar';

  @override
  String get flashcardsTemplateConfirm =>
      'Sniðmátið ákveður hvernig reitir birtast og bætir sínum reitum við. Spjöldin þín og núverandi reitir haldast óbreytt.';

  @override
  String get flashcardsApplyTemplate => 'Nota';

  @override
  String get templateVocabulary => 'Orðaforði';

  @override
  String get templateTwoTranslations => 'Orð með tveimur þýðingum';

  @override
  String get templateQuestionAnswer => 'Spurning og svar';

  @override
  String get templateDefinition => 'Hugtak og skilgreining';

  @override
  String get templateGrammar => 'Málfræðiregla';

  @override
  String get templateFieldPlural => 'Fleirtala';

  @override
  String get templateFieldTranslation2 => 'Önnur þýðing';

  @override
  String get templateFieldSynonyms => 'Samheiti';

  @override
  String get templateFieldRule => 'Regla';

  @override
  String get deckCategory => 'Stig eða efni';

  @override
  String get deckCategoryHint => 't.d. A1, Læknisfræði';

  @override
  String get flashcardsSearchAll => 'Leita í öllum spjöldum';

  @override
  String get flashcardsSearchAllHint => 'Orð, þýðing, dæmi, athugasemd, merki…';

  @override
  String get flashcardsAllDecks => 'Allir stokkar';

  @override
  String get flashcardsAllLanguages => 'Öll tungumál';

  @override
  String get flashcardsLangUnset => 'Tungumál ekki valið';

  @override
  String get flashcardsLevelUnset => 'Ekkert stig eða efni';

  @override
  String get flashcardsByLanguage => 'Framvinda eftir tungumáli';

  @override
  String get flashcardsByLevel => 'Framvinda eftir stigi eða efni';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Stokkar: $decks · spjöld: $cards · lærð: $mature · á gjalddaga: $due · rétt: $correct (30 dagar)';
  }

  @override
  String get flashcardsRecord => 'Taka upp';

  @override
  String get flashcardsRecording => 'Tekur upp…';

  @override
  String get flashcardsRecordStop => 'Stöðva og geyma';

  @override
  String get flashcardsMicDenied =>
      'Slökkt er á aðgangi að hljóðnema. Leyfðu hann í kerfisstillingum til að taka upp.';

  @override
  String get flashcardsRecordFailed => 'Upptaka er ekki tiltæk á þessu tæki.';

  @override
  String get soundsTitle => 'Hljóð';

  @override
  String get soundsNature => 'Náttúra';

  @override
  String get soundsNoise => 'Einbeitingarsuð';

  @override
  String get soundRain => 'Rigning';

  @override
  String get soundStorm => 'Þrumuveður';

  @override
  String get soundRiver => 'Á';

  @override
  String get soundOcean => 'Sjávarbylgjur';

  @override
  String get soundFire => 'Varðeldur';

  @override
  String get soundForest => 'Skógarfuglar';

  @override
  String get soundNight => 'Sumarnótt';

  @override
  String get soundWhite => 'Hvítt suð';

  @override
  String get soundPink => 'Bleikt suð';

  @override
  String get soundBrown => 'Brúnt suð';

  @override
  String get soundsPlay => 'Spila';

  @override
  String get soundsSleep => 'Svefntímastillir';

  @override
  String get soundsSleepOff => 'Slökkt';

  @override
  String soundsSleepAt(String time) {
    return 'Stöðvast kl. $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Allt að $count hljóð geta spilast í einu.';
  }

  @override
  String get soundsHint =>
      'Ýttu á hljóð til að byrja. Blandaðu nokkrum saman og stilltu hljóðstyrk hvers þeirra.';

  @override
  String get soundsMixer => 'Blanda';

  @override
  String soundsVolumeOf(String name) {
    return 'Hljóðstyrkur: $name';
  }

  @override
  String get soundsChannel => 'Náttúruhljóð';

  @override
  String get settingsEndTone => 'Lokahljóð tímastillis';

  @override
  String get toneGentle => 'Mjúk píp';

  @override
  String get toneBeeps => 'Píp';

  @override
  String get toneWood => 'Bank í við';

  @override
  String get toneBird => 'Fuglakall';

  @override
  String get toneStream => 'Lækur';

  @override
  String get toneSystem => 'Hljóð símans';

  @override
  String get speechOnPhone => 'Í þessum síma';

  @override
  String get speechAllLanguages => 'Öll tungumál';

  @override
  String get speechSearchLanguage => 'Leita að tungumálum';

  @override
  String get speechGetVoices => 'Sækja fleiri raddir';

  @override
  String get speechGetVoicesHint =>
      'Hægt er að sækja raddir fyrir tungumál án raddar í talstillingum símans.';

  @override
  String get speechSettingsFailed => 'Ekki tókst að opna talstillingar þessa síma.';

  @override
  String get speechVoiceMissing => 'Engin rödd uppsett';

  @override
  String get speechPause => 'Hlé milli endurtekninga';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Lesa dæmið með svarinu';

  @override
  String get flashListen => 'Hlusta';

  @override
  String get flashListenNext => 'Næsta spjald';

  @override
  String get flashListenEmpty => 'Engin spjöld til að hlusta á.';

  @override
  String get flashViewTable => 'Tafla';

  @override
  String get flashViewCards => 'Spjöld';

  @override
  String get flashSwapSides => 'Víxla dálkum';

  @override
  String get flashSort => 'Raða';

  @override
  String get flashSortNewest => 'Nýjast fyrst';

  @override
  String get flashSortAlpha => 'A til Ö';

  @override
  String get flashSortDue => 'Á gjalddaga fyrst';

  @override
  String get flashSortHard => 'Erfiðust fyrst';

  @override
  String get flashPasteCards => 'Líma spjöld';

  @override
  String get flashClipboardEmpty => 'Enginn texti er á klippiborðinu.';

  @override
  String get flashMenuAdd => 'Bæta við spjöldum';

  @override
  String get flashMenuDeck => 'Stokkur';

  @override
  String get flashToday => 'Í dag';

  @override
  String get flashStudyNow => 'Læra';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöldum svarað',
      one: '$count spjaldi svarað',
      zero: 'Engum spjöldum svarað',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Rigning í skóginum';

  @override
  String get autoBackupTitle => 'Sjálfvirk afrit';

  @override
  String get autoBackupDesc => 'Daglega á þessum síma; síðustu 7 eru geymd';

  @override
  String get autoBackupHint =>
      'Þessi afrit haldast á þessum síma og eru fjarlægð ef forritið er fjarlægt. Til að flytja yfir í nýjan síma skaltu nota „Taka afrit“ til að vista skrá.';

  @override
  String get autoBackupNone => 'Ekkert sjálfvirkt afrit enn. Það fyrsta er gert í dag.';

  @override
  String get autoBackupRestore => 'Endurheimta';

  @override
  String autoBackupConfirm(String date) {
    return 'Skipta út öllum núverandi gögnum fyrir afritið frá $date?';
  }

  @override
  String get autoBackupRestored => 'Endurheimt.';

  @override
  String get errorLogTitle => 'Villuskrá';

  @override
  String get errorLogHint =>
      'Ef eitthvað fer úrskeiðis er það skráð hér: aðeins tegund villunnar og hvar í kóðanum, aldrei efnið þitt. Deildu henni til að hjálpa við að laga vandann.';

  @override
  String get errorLogEmpty => 'Engar villur skráðar.';

  @override
  String get errorLogClear => 'Hreinsa';

  @override
  String get soundsWithFocus => 'Spila í einbeitingarlotum';

  @override
  String get soundsWithFocusHint => 'Blandan þín byrjar með einbeitingarlotu og gerir hlé í hléum.';

  @override
  String get soundsSavedMixes => 'Vistaðar blöndur';

  @override
  String get soundsSaveMix => 'Vista þessa blöndu';

  @override
  String get soundsMixNameHint => 'Heiti, t.d. Regnvott bókasafn';

  @override
  String soundsDeleteMix(String name) {
    return 'Eyða blöndunni „$name“?';
  }

  @override
  String get settingsReviewReminderHint => 'Einu sinni á dag, aðeins þegar spjöld bíða upprifjunar';

  @override
  String get settingsReviewTime => 'Tími áminningar';

  @override
  String get shortcutFocus => 'Einbeiting';

  @override
  String get shortcutNewTask => 'Nýtt verkefni';

  @override
  String get shortcutReview => 'Rifja upp spjöld';

  @override
  String get shortcutSounds => 'Náttúruhljóð';

  @override
  String get myDayTitle => 'Hefja daginn';

  @override
  String get myDayHint => 'Dagurinn í hnotskurn og síðan einbeiting með einu snerti';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count verkefni í dag',
      one: '$count verkefni í dag',
      zero: 'Engin verkefni í dag',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Engir fleiri viðburðir í dag';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Næst: $title kl. $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count venjur eftir',
      one: '$count venja eftir',
      zero: 'Allar venjur gerðar',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Byrja á einbeitingarlotu';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-awwal';

  @override
  String get hijriMonth4 => 'Rabi al-thani';

  @override
  String get hijriMonth5 => 'Jumada al-ula';

  @override
  String get hijriMonth6 => 'Jumada al-akhira';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Shaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-qada';

  @override
  String get hijriMonth12 => 'Dhu al-hijja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day. $month $year AH';
  }

  @override
  String get settingsHijri => 'Hijri-dagsetningar';

  @override
  String get settingsHijriHint => 'Sýndar í dagatalinu og á heimaskjánum (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '$count dagur',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done af $goal spjöldum í dag';
  }

  @override
  String get studyGoalReached => 'Daglegu markmiði náð. Vel gert!';

  @override
  String get studyWeekTitle => 'Vikan þín';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöldum svarað á 7 dögum',
      one: '$count spjaldi svarað á 7 dögum',
      zero: 'Engum spjöldum svarað á 7 dögum',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration einbeiting á 7 dögum';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Röð: $current · Lengst: $best';
  }

  @override
  String get studyGoalTitle => 'Daglegt markmið (spjöld)';

  @override
  String get studyGoalOff => 'Slökkt';

  @override
  String get focusDndTitle => 'Ónáðið ekki á meðan einbeitt er';

  @override
  String get focusDndHint => 'Kviknar í hverri einbeitingarlotu og slokknar í hléinu';

  @override
  String get focusDndNeedsAccess => 'Leyfðu aðgang í stillingum símans til að nota þetta';

  @override
  String get voiceInput => 'Tala til að skrifa';

  @override
  String get voiceInputPrompt => 'Talaðu núna';

  @override
  String get voiceInputUnavailable =>
      'Raddinnsláttur er ekki tiltækur í þessum síma. Settu upp eða kveiktu á talþjónustu (til dæmis talgreiningu og talgervli frá Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Sólarupprás';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Heimsbandalag múslima';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egypska ríkisstofnunin';

  @override
  String get prayerMethodJordan => 'Jórdanía, ráðuneyti Awqaf';

  @override
  String get prayerMethodKarachi => 'Háskóli íslamskra vísinda, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Persaflóasvæðið';

  @override
  String get prayerMethodKuwait => 'Kúveit';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Tyrkland, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapúr, Malasía, Indónesía';

  @override
  String get prayerMethodFrance => 'Frakkland (12°)';

  @override
  String get prayerMethodRussia => 'Rússland, andleg stjórnsýsla';

  @override
  String prayerNotifTitle(String name) {
    return 'Tími fyrir $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Bænatími · $time';
  }

  @override
  String get prayerTitle => 'Bænatímar';

  @override
  String get prayerOffHint =>
      'Veldu borgina þína til að sjá bænatíma. Þeir eru reiknaðir í símanum; aðgangur að staðsetningu er óþarfur.';

  @override
  String get prayerChooseCity => 'Velja borg';

  @override
  String get prayerCity => 'Borg';

  @override
  String get prayerCitySearch => 'Leita að borg';

  @override
  String get prayerMethod => 'Reikniaðferð';

  @override
  String get prayerHanafiAsr => 'Hanafi-Asr (seinni tími)';

  @override
  String get prayerReminders => 'Láta vita á hverjum bænatíma';

  @override
  String get prayerPauseFocus => 'Gera hlé á einbeitingu á bænatíma';

  @override
  String get prayerPauseFocusHint => 'Lota í gangi gerir hlé; haltu áfram eftir bænina';

  @override
  String get prayerTurnOff => 'Slökkva á bænatímum';

  @override
  String get prayerAccuracyNote =>
      'Reiknaðir tímar geta vikið nokkrar mínútur frá tímum moskunnar á staðnum.';

  @override
  String prayerNext(String name, String time) {
    return '$name kl. $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Þessi Anki-skrá notar nýjasta sniðið. Flyttu hana aftur út í Anki með kveikt á „Support older Anki versions“ og flyttu síðan þá skrá inn.';

  @override
  String get importTemplate => 'Töflureiknissniðmát';

  @override
  String get importTemplateFront => 'epli';

  @override
  String get importTemplateBack => 'kringlóttur ávöxtur';

  @override
  String get importTemplateExample => 'Ég borða epli á hverjum degi.';

  @override
  String get importTemplateTag => 'matur';

  @override
  String get starterTitle => 'Byrjendastokkar';

  @override
  String get starterHint =>
      'Bættu einum við til að byrja að læra strax. Þú getur breytt honum eða eytt síðar.';

  @override
  String get starterAdd => 'Bæta við';

  @override
  String get starterWords => 'Ensk orð úr daglegu lífi (arabíska)';

  @override
  String get starterCapitals => 'Höfuðborgir heimsins';

  @override
  String get starterElements => 'Frumefni';

  @override
  String get settingsAccent => 'Áherslulitur';

  @override
  String get accentViolet => 'Fjólublár';

  @override
  String get accentBlue => 'Blár';

  @override
  String get accentTeal => 'Blágrænn';

  @override
  String get accentGreen => 'Grænn';

  @override
  String get accentRose => 'Bleikur';

  @override
  String get accentAmber => 'Rafgulur';

  @override
  String get settingsFlashTextSize => 'Textastærð spjalda';

  @override
  String get settingsFlashTextSample => 'Dæmi';

  @override
  String get widgetStartFocus => 'Ýttu til að einbeita þér';

  @override
  String widgetFocusUntil(String time) {
    return 'Einbeiting til $time';
  }

  @override
  String get widgetNoCardsDue => 'Spjöld: allt búið';

  @override
  String get faqMyDayQ => 'Hvað gerir „Hefja daginn“?';

  @override
  String get faqMyDayA =>
      'Einu sinni á dag býður heimaskjárinn upp á það: sjáðu verkefni dagsins, næsta viðburð, venjur sem eftir eru og spjöld til upprifjunar, og hefðu síðan einbeitingarlotu með einu snerti. Haltu inni tákni forritsins fyrir flýtiaðgerðir eða bættu græjunni á heimaskjáinn til að sjá einbeitingartíma og spjöld til upprifjunar.';

  @override
  String get faqTasksQ => 'Hvernig bæti ég við verkefni með áminningu?';

  @override
  String get faqTasksA =>
      'Ýttu á Nýtt verkefni á Heim eða + í Verkefnum. Skrifaðu titilinn eða segðu hann í hljóðnemann og stilltu svo skiladag, tíma og áminningu. Verkefni sem eru komin fram yfir eru efst.';

  @override
  String get faqFocusQ => 'Hvernig virkar einbeitingartímastillirinn?';

  @override
  String get faqFocusA =>
      'Veldu Pomodoro, niðurtalningu eða opinn tíma og ýttu á Byrja; hlé geta fylgt sjálfkrafa. Í Stillingum geturðu valið lokahljóð, kveikt á Ónáðið ekki meðan einbeitt er og spilað náttúruhljóðin með hverri lotu.';

  @override
  String get faqSoundsQ => 'Get ég blandað náttúruhljóðum?';

  @override
  String get faqSoundsA =>
      'Kveiktu á allt að sex raunverulegum upptökum, stilltu hljóðstyrk hverrar og vistaðu blönduna með heiti. Þær spilast áfram í bakgrunni og svefntímastillir getur stöðvað þær. Engin tónlist er notuð.';

  @override
  String get faqCalendarQ => 'Getur dagatalið sýnt Hijri-dagsetningar?';

  @override
  String get faqCalendarA =>
      'Já. Hijri-dagsetningar (Umm al-Qura) birtast sjálfkrafa á arabísku og hægt er að kveikja á þeim í Stillingum fyrir hvaða tungumál sem er. Viðburðir, verkefni með skiladag og áfangar verkefnaflokka birtast saman.';

  @override
  String get faqFlashcardsQ => 'Hvernig ákveður upprifjun hvaða spjöld ég sé?';

  @override
  String get faqFlashcardsA =>
      'Spjöld sem þú kannt vel koma aftur eftir lengri bil og spjöld sem þú klikkar á koma fljótt aftur (dreifð endurtekning). Gefðu hverju svari einkunn: Aftur, Erfitt, Gott eða Auðvelt. Settu daglegt markmið og haltu röðinni á Í dag-spjaldinu. Settu prófdag í stokk til að sjá hve margir dagar eru eftir og hve mörg ný spjöld þarf að læra á dag. Raðaðu eftir „Mín röð“ til að draga spjöld á sinn stað, ýttu á hátalarann á hvorri hlið sem er til að heyra hana og stilltu hraða og endurtekningar í Tal-valmyndinni.';

  @override
  String get faqImportQ => 'Get ég fært spjöld úr Anki eða Excel?';

  @override
  String get faqImportA =>
      'Já. Veldu Flytja inn í stokki og síðan skrá: Anki (.apkg), Excel (.xlsx) eða CSV, og paraðu dálkana. Notaðu „Töflureiknissniðmát“ til að skrifa spjöld í tölvu. Myndir og hljóð í Anki-skrám eru ekki flutt inn.';

  @override
  String get faqNotesQ => 'Hvað geta glósur gert?';

  @override
  String get faqNotesA =>
      'Skrifaðu frjálst með gátlistum og sniði, festu mikilvægar glósur eða merktu þær sem eftirlæti, bættu við merkjum og tengdu glósur við verkefni. Með hljóðnemahnappinum geturðu lesið fyrir. Ný glósa getur byrjað út frá sniðmáti (fyrirlestur, bókarsamantekt, dagbók, vikuáætlun) og myndahnappurinn bætir við myndum.';

  @override
  String get faqHabitsQ => 'Hvernig eru raðir venja taldar?';

  @override
  String get faqHabitsA =>
      'Dagur telst þegar þú nærð marki venjunnar á áætluðum degi. Hlé á venju verndar röðina. Hver venja getur haft sinn eigin áminningartíma.';

  @override
  String get faqGoalsQ => 'Hvernig fylgjast markmið með framvindu?';

  @override
  String get faqGoalsA =>
      'Gefðu markmiði magn og einingu og skráðu síðan framvindu. Spjald þess sýnir hve langt þú ert komin(n) og hve mikið er eftir fram að lokafresti.';

  @override
  String get faqProjectsQ => 'Til hvers eru verkefnaflokkar?';

  @override
  String get faqProjectsA =>
      'Flokkaðu verkefni undir verkefnaflokk, bættu við áföngum með dagsetningum og fylgstu með heildarframvindu. Áfangar birtast líka á dagatalinu.';

  @override
  String get faqInsightsQ => 'Hvað sýnir Innsýn?';

  @override
  String get faqInsightsA =>
      'Einbeitingartímann þinn, lokin verkefni og nám eftir dögum og vikum, með mildum tillögum. Allt er reiknað í símanum þínum.';

  @override
  String get faqSpacesQ => 'Hvar eru allir hlutarnir?';

  @override
  String get faqSpacesA =>
      'Svæði sýnir alla hluta forritsins (glósur, stokka, venjur, markmið, verkefnaflokka, hljóð og fleira) svo aðalstikan haldist einföld.';

  @override
  String get faqBackupQ => 'Hvernig er afrit tekið af gögnunum mínum?';

  @override
  String get faqBackupA =>
      'Á hverjum degi geymir forritið hljóðlega dulkóðað afrit á þessum síma og heldur síðustu 7. Í Stillingum geturðu líka flutt út afritsskrá varða lykilorði og endurheimt hana á öðrum síma.';

  @override
  String get faqPrayerQ => 'Hvernig virka bænatímar?';

  @override
  String get faqPrayerA =>
      'Veldu borgina þína í Stillingar → Bænatímar. Tímarnir eru reiknaðir í símanum með þeirri aðferð sem notuð er þar og þú getur breytt aðferðinni og Asr-skólanum. Þú getur fengið tilkynningu við hverja bæn og einbeitingarlota í gangi gerir hlé.';

  @override
  String get faqPrivacyQ => 'Hvar eru gögnin mín geymd?';

  @override
  String get faqPrivacyA =>
      'Aðeins í símanum þínum, í dulkóðuðum gagnagrunni. Enginn reikningur og engin rakning. Netið er aðeins notað af eiginleikum sem þú kveikir sjálf(ur) á, eins og valfrjálsa aðstoðarmanninum.';

  @override
  String get faqAssistantQ => 'Hvað er aðstoðarmaðurinn?';

  @override
  String get faqAssistantA =>
      'Valfrjáls hjálpari sem þú tengir við þína eigin gervigreindarþjónustu í Stillingum. Sjálfgefið er slökkt á honum og hann spyr áður en hann sendir nokkurn texta úr glósu.';

  @override
  String get tourPlanTitle => 'Skipuleggðu daginn';

  @override
  String get tourPlanBody =>
      'Verkefni, dagatal og venjur á einum rólegum stað. Byrjaðu hvern morgun á „Hefja daginn“.';

  @override
  String get tourFocusTitle => 'Djúp einbeiting';

  @override
  String get tourFocusBody =>
      'Tímasettar lotur með raunverulegum náttúruhljóðum, Ónáðið ekki og mildum lokatónum.';

  @override
  String get tourLearnTitle => 'Lærðu fyrir lífstíð';

  @override
  String get tourLearnBody =>
      'Spjöld með dreifðri endurtekningu, tal á mörgum tungumálum og innflutningur úr Anki eða Excel.';

  @override
  String get helpTitle => 'Hjálp og spurningar';

  @override
  String get helpOpen => 'Opna';

  @override
  String get helpTour => 'Skoða kynninguna';

  @override
  String get tourNext => 'Áfram';

  @override
  String get tourDone => 'Byrjum';

  @override
  String get transferColTitle => 'Titill';

  @override
  String get transferColNotes => 'Athugasemdir';

  @override
  String get transferColBody => 'Texti';

  @override
  String get transferColDue => 'Skiladagur';

  @override
  String get transferColPriority => 'Forgangur (0-3)';

  @override
  String get transferColDone => 'Lokið';

  @override
  String get transferColProject => 'Verkefnaflokkur';

  @override
  String get transferColCategory => 'Flokkur';

  @override
  String get transferTitle => 'Inn- og útflutningur';

  @override
  String get transferSaveAs => 'Vista sem';

  @override
  String get transferImport => 'Flytja inn úr skrá';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV eða tafla í Word. Dálkar: titill, skiladagur (2026-12-31), forgangur 0-3, lokið, verkefnaflokkur, athugasemdir. Verkefnum sem eru þegar í forritinu er sleppt.';

  @override
  String get transferImportNotesHint =>
      'Word-, Markdown- eða textaskrár verða að glósu. Excel eða CSV: ein glósa í hverri línu (titill, texti).';

  @override
  String get transferSaved => 'Skrá vistuð';

  @override
  String get transferFailed => 'Ekki tókst að búa til skrána. Engu var breytt.';

  @override
  String get transferUnsupported =>
      'Ekki er hægt að lesa þessa skrá hér. Notaðu Excel, CSV, Word, Markdown eða texta.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added bætt við',
      one: '$added bætt við',
      zero: 'Ekkert nýtt til að bæta við',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Texti';

  @override
  String get transferAllNotes => 'Allar glósur';

  @override
  String get transferThisNote => 'Þessi glósa';

  @override
  String get transferDeckFormats => 'Vista sem Excel, Word eða PDF';

  @override
  String get faqFilesQ => 'Get ég notað Excel-, Word- eða PDF-skrár?';

  @override
  String get faqFilesA =>
      'Já. Verkefni og Glósur eru með inn- og útflutningshnapp (tvær örvar) efst og hver stokkur er með hann í valmyndinni. Vistaðu sem Excel, CSV, Word eða PDF, eða flyttu inn Excel-, CSV-, Word-, Markdown- eða textaskrár. Dálkaheiti mega vera á hvaða tungumáli forritsins sem er og alltaf er hægt að flytja vistaðar skrár inn aftur.';

  @override
  String get tplLecture => 'Fyrirlestur';

  @override
  String get tplBook => 'Bókarsamantekt';

  @override
  String get tplJournal => 'Dagbók';

  @override
  String get tplWeek => 'Vikuáætlun';

  @override
  String get tplLectureBody => '## Aðalatriði\n- \n\n## Spurningar\n- [ ] \n\n## Samantekt\n';

  @override
  String get tplBookBody =>
      '## Meginhugmynd\n\n## Það sem ég lærði\n- \n\n## Tilvitnanir\n> \n\n## Til að nýta\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Ég er þakklát(ur) fyrir\n- \n\n## Áhersla dagsins\n- [ ] \n\n## Athugasemdir\n';

  @override
  String get tplWeekBody =>
      '## Markmið vikunnar\n- [ ] \n\n### Laugardagur\n- [ ] \n\n### Sunnudagur\n- [ ] \n\n### Mánudagur\n- [ ] \n\n### Þriðjudagur\n- [ ] \n\n### Miðvikudagur\n- [ ] \n\n### Fimmtudagur\n- [ ] \n\n### Föstudagur\n- [ ] \n';

  @override
  String get tplHint => 'Byrja út frá sniðmáti';

  @override
  String get noteImage => 'Mynd';

  @override
  String get noteAddImage => 'Bæta við mynd';

  @override
  String get noteImageUnreadable => 'Þessi skrá er ekki mynd sem forritið getur lesið.';

  @override
  String get noteImageTooLarge => 'Þessi mynd er of stór.';

  @override
  String get examSet => 'Stilla prófdag';

  @override
  String get examDate => 'Prófdagur';

  @override
  String get examToday => 'Próf í dag. Gangi þér vel!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Próf eftir $count daga',
      one: 'Próf eftir $count dag',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lærðu $count ný spjöld á dag',
      one: 'lærðu $count nýtt spjald á dag',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'öll spjöld lærð, haltu áfram að rifja upp';

  @override
  String examRaiseLimit(int count) {
    return 'Sýna $count ný spjöld á dag';
  }

  @override
  String get backupDriveHint =>
      'Til að geyma afrit á netinu skaltu velja Google Drive (eða annað skýjaforrit) á vistunarskjánum sem opnast næst.';

  @override
  String get flashShareDeck => 'Deila stokki með vini';

  @override
  String get flashSortManual => 'Mín röð (draga)';

  @override
  String get flashReorderHint => 'Haltu í handfangið og dragðu spjald til að færa það.';

  @override
  String get flashReorderNeedsAll => 'Hreinsaðu leit og síur til að draga spjöld.';

  @override
  String get flashDragHandle => 'Dragðu til að færa';

  @override
  String get reportTitle => 'Mánaðarskýrsla';

  @override
  String get reportFocus => 'Einbeitingartími';

  @override
  String reportSessions(int count) {
    return 'Lotur: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Besti dagur: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Virkir dagar: $count';
  }

  @override
  String get reportCards => 'Upprifjuð spjöld';

  @override
  String reportCardsKnown(String percent) {
    return '$percent munað';
  }

  @override
  String get reportTasks => 'Lokin verkefni';

  @override
  String get reportHabits => 'Hök við venjur';

  @override
  String get reportEmpty => 'Ekkert skráð í þessum mánuði enn.';

  @override
  String get reportSave => 'Vista sem PDF eða Word';

  @override
  String get reportPrevMonth => 'Fyrri mánuður';

  @override
  String get reportNextMonth => 'Næsti mánuður';

  @override
  String get careTitle => 'Umhirða síma og gagna';

  @override
  String get storageTitle => 'Geymsla';

  @override
  String get storageSubtitle => 'Hvað tekur pláss og hreinsun ónotaðra mynda';

  @override
  String get storagePictures => 'Myndir í glósum';

  @override
  String get storageCardMedia => 'Myndir og hljóð í spjöldum';

  @override
  String get storageText => 'Texti glósa';

  @override
  String get storageFree => 'Laust í símanum';

  @override
  String get storageLow =>
      'Síminn er næstum fullur. Losaðu pláss svo afrit og áminningar haldi áfram að virka.';

  @override
  String storageUnused(int count, String size) {
    return 'Ónotaðar myndir: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Engar ónotaðar myndir. Allt er snyrtilegt.';

  @override
  String get storageClean => 'Fjarlægja ónotaðar myndir';

  @override
  String storageCleaned(int count) {
    return 'Myndir fjarlægðar: $count';
  }

  @override
  String get storageHint =>
      'Mynd telst aðeins ónotuð þegar engin glósa sýnir hana, líka glósur í ruslafötunni.';

  @override
  String get batteryTitle => 'Haltu áminningum virkum';

  @override
  String get batterySubtitle => 'Sumir símar stöðva forrit í bakgrunni. Athugaðu þinn.';

  @override
  String get batteryStatusOk =>
      'Rafhlöðusparnaður takmarkar ekki þetta forrit. Áminningar og hljóð ættu að berast á réttum tíma.';

  @override
  String get batteryStatusLimited =>
      'Rafhlöðusparnaður getur stöðvað þetta forrit í bakgrunni, svo áminningar og hljóð geta borist seint eða alls ekki.';

  @override
  String get batteryOpen => 'Opna rafhlöðustillingar';

  @override
  String get batteryOpenApp => 'Opna stillingar forrits';

  @override
  String get batteryGeneric =>
      'Veldu þetta forrit í rafhlöðustillingum og stilltu það á Ótakmarkað (eða Ekki fínstilla).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: opnaðu líka Öryggi › Heimildir › Sjálfvirk ræsing og kveiktu á þessu forriti, og stilltu rafhlöðusparnað á Engar takmarkanir.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: opnaðu Rafhlaða › þetta forrit og leyfðu virkni í bakgrunni og sjálfvirka ræsingu; læstu forritinu á lista yfir nýleg forrit.';

  @override
  String get batterySamsung =>
      'Samsung: Rafhlaða › Takmarkanir á notkun í bakgrunni: fjarlægðu þetta forrit úr forritum í svefni og djúpsvefni.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Ræsing forrita › þetta forrit › stjórna handvirkt, og leyfðu sjálfvirka ræsingu, aukaræsingu og keyrslu í bakgrunni.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Rafhlaða › Orkunotkun í bakgrunni › leyfðu þetta forrit og kveiktu á sjálfvirkri ræsingu í heimildum.';

  @override
  String get whatsNewTitle => 'Nýjungar';

  @override
  String get whatsNewSubtitle => 'Nýjustu breytingar í fáum línum';

  @override
  String get whatsNewDone => 'Skilið';

  @override
  String get whatsNewOrderTitle => 'Dragðu spjöld í þína eigin röð';

  @override
  String get whatsNewOrderBody =>
      'Veldu Raða › Mín röð í stokki, haltu svo í handfangið og dragðu.';

  @override
  String get whatsNewSpeechTitle => 'Hátalari á hverri hlið spjaldsins';

  @override
  String get whatsNewSpeechBody =>
      'Ýttu á hann til að heyra orðið eða þýðinguna. Hraði, endurtekningar og rödd eru í upprifjunarvalmyndinni. Tungumálið er greint út frá textanum.';

  @override
  String get whatsNewReportTitle => 'Mánaðarskýrsla';

  @override
  String get whatsNewReportBody =>
      'Ýttu á skýrslutáknið í Innsýn til að sjá mánuðinn og vista hann sem PDF eða Word.';

  @override
  String get whatsNewCareTitle => 'Umhirða síma og gagna';

  @override
  String get whatsNewCareBody =>
      'Í Stillingum er nú geymslusíða með myndahreinsun og rafhlöðuleiðbeiningum fyrir símategundina þína.';

  @override
  String get whatsNewSoundTitle => 'Rólegri hljóð';

  @override
  String get whatsNewSoundBody => 'Náttúruhljóðin eru mýkri og lægri og myndaspjöldin fallegri.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Athugað $date: nýjasta afritið opnast rétt.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Athugað $date: skemmt afrit fannst og nýtt kom í staðinn.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Athugað $date: ekki tókst að opna nýjasta afritið. Vistaðu afritsskrá sjálf(ur) í Stillingum.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Þú lærir yfirleitt um kl. $time';
  }

  @override
  String get smartReviewTimeUse => 'Nota';

  @override
  String get widgetNewNote => 'Ný glósa';

  @override
  String get noteConnections => 'Merki, tenglar og verkefni';

  @override
  String get navCards => 'Spjöld';

  @override
  String get studyAnswerWay => 'Hvernig á að svara';

  @override
  String get studyMorePractice => 'Aukaæfing';

  @override
  String get studySessionSettings => 'Stillingar lotu';

  @override
  String get focusAdjustTitle => 'Lotan þín';

  @override
  String get focusPresetsTitle => 'Tilbúið';

  @override
  String get focusPresetStudy => 'Nám';

  @override
  String get focusPresetDeep => 'Djúpvinna';

  @override
  String get focusPresetQuick => 'Stuttur sprettur';

  @override
  String get focusPresetReading => 'Lestur';

  @override
  String get focusPresetWorkout => 'Æfingalotur';

  @override
  String get focusAdjustMinutes => 'Lengd einbeitingar';

  @override
  String get focusAdjustBreak => 'Lengd hlés';

  @override
  String get focusAdjustRounds => 'Lotur';

  @override
  String get focusRoundsOpen => 'Engin takmörk';

  @override
  String focusMinutesShort(String n) {
    return '$n mín.';
  }

  @override
  String get focusTapToAdjust => 'Ýttu til að breyta tímanum';

  @override
  String get flashArrangeDecks => 'Raða stokkum';

  @override
  String get flashDeckActions => 'Valkostir stokks';

  @override
  String get starterBrowse => 'Tilbúnir stokkar';

  @override
  String get starterBrowseHint => 'Bættu einum við með einu snerti og byrjaðu að læra';

  @override
  String get dashOpenDecks => 'Opna spjöldin þín';

  @override
  String speechVoiceNumber(String n) {
    return 'Rödd $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Gott flæði. Hvíla í $m mín.?';
  }

  @override
  String get focusFlowBreakStart => 'Hefja hlé';

  @override
  String tasksFinishAt(String time) {
    return 'Byrjaðu núna og þú klárar allt fyrir $time';
  }

  @override
  String get focusCalmPacing => 'Rólegur taktur';

  @override
  String get focusCalmPacingHint => 'Aðeins heilar mínútur og hringurinn, engar tifandi sekúndur';

  @override
  String get focusFlipHint => 'Snúðu símanum á hvolf til að byrja';

  @override
  String get focusImmersive => 'Niðurdýfingarhamur';

  @override
  String get focusImmersiveBlack => 'Hreint svart (sparar rafhlöðu)';

  @override
  String get focusFlipToFocus => 'Snúa til að einbeita sér';

  @override
  String get focusFlipToFocusHint =>
      'Í niðurdýfingarham: á hvolf byrjar, að taka hann upp gerir hlé';

  @override
  String get guardTitle => 'Truflanavörn';

  @override
  String get guardSubtitle => 'Gerðu hlé á truflandi forritum meðan þú einbeitir þér';

  @override
  String get guardSwitch => 'Gera hlé á truflandi forritum';

  @override
  String get guardSwitchHint => 'Í einbeitingarlotum og á tímum Tímavarnar';

  @override
  String get guardNeedsAccess => 'Þarf aðgengisrofann: ýttu til að kveikja á honum';

  @override
  String get guardDisclosureTitle => 'Hvernig vörnin virkar';

  @override
  String get guardDisclosureBody =>
      'Til að gera hlé á forritunum sem þú velur notar Deep Focus aðgengisþjónustu Android til að sjá hvaða forrit er opið. Þegar kveikt er á „Loka Shorts og Reels“ athugar hún líka hvort spilari fyrir stutt myndskeið sé á skjánum.\n\nHún les engan texta, vistar ekkert sem hún sér og sendir ekkert neitt: allt helst í símanum þínum. Þú getur slökkt á henni hvenær sem er í aðgengisstillingum.';

  @override
  String get guardAgree => 'Samþykkja og opna stillingar';

  @override
  String get guardModeGentle => 'Mildur';

  @override
  String get guardModeStrict => 'Strangur';

  @override
  String get guardGentleHint => '5 sekúndna öndunarhlé, svo velur þú';

  @override
  String get guardStrictHint => 'Valin forrit haldast lokuð þar til einbeitingartíma lýkur';

  @override
  String get guardApps => 'Forrit til að gera hlé á';

  @override
  String get guardAppsAllowed => 'Leyfð forrit';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count forrit',
      one: '$count forrit',
      zero: 'Ekkert valið enn',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Leyfa aðeins valin forrit';

  @override
  String get guardAllowlistHint =>
      'Gert er hlé á öllum öðrum forritum; símtöl, stillingar og lyklaborðið virka alltaf';

  @override
  String get guardShorts => 'Loka Shorts og Reels';

  @override
  String get guardShortsHint =>
      'Alltaf þegar kveikt er á vörninni. Engin trygging: þessi forrit breytast oft';

  @override
  String get guardSchedule => 'Tímavörn';

  @override
  String get guardScheduleHint => 'Verja líka á völdum dögum og tímum, eins og í skóla eða vinnu';

  @override
  String get guardFrom => 'Frá';

  @override
  String get guardTo => 'Til';

  @override
  String get guardSearchApps => 'Leita að forritum';

  @override
  String get guardNoApps => 'Engin forrit fundust';

  @override
  String get guardPrivacy =>
      'Virkar aðeins í símanum þínum: vörnin sér hvaða forrit er opið, aldrei hvað er í því, og sendir ekkert.';

  @override
  String get guardBreathe => 'Andaðu inn… og út';

  @override
  String get guardQuestion => 'Þarftu þetta forrit núna?';

  @override
  String get guardBackToFocus => 'Aftur í einbeitingu';

  @override
  String get guardOpenFive => 'Opna í 5 mínútur';

  @override
  String get guardStrictBody => 'Gert er hlé á þessu forriti þar til einbeitingartímanum lýkur.';

  @override
  String get guardShortsClosed => 'Stuttum myndskeiðum er lokað meðan kveikt er á vörninni';

  @override
  String get faqGuardQ => 'Hvernig stöðva ég truflandi forrit meðan ég einbeiti mér?';

  @override
  String get faqGuardA =>
      'Opnaðu Einbeiting → stillingar tímastillis → Truflanavörn. Veldu forritin og síðan Mildur (5 sekúndna andardráttur og spurningin „Þarftu þetta forrit núna?“) eða Strangur (þau haldast lokuð). Hún virkar í einbeitingarlotum og, með Tímavörn, á þeim dögum og tímum sem þú stillir. „Leyfa aðeins valin forrit“ gerir hlé á öllu öðru; símtöl, stillingar og lyklaborðið virka alltaf. Android biður þig einu sinni um að kveikja á vörninni í aðgengisstillingum. Hún sér aðeins hvaða forrit er opið og sendir ekkert.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Fært í $name';
  }

  @override
  String get notesDragHint => 'Haltu inni glósu og dragðu hana á glósubók';

  @override
  String get guardReviewCards => 'Rifja frekar upp spjöld';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spjöld bíða þín',
      one: '$count spjald bíður þín',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Neyðartilvik: haltu inni í 10 sekúndur';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Haltu áfram… $n';
  }

  @override
  String get guardWeekTitle => 'Þessi vika';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hlé',
      one: '$count hlé',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'aftur í einbeitingu $count sinnum',
      one: 'aftur í einbeitingu $count sinni',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Endurnefna orð';

  @override
  String get wordsSubtitle => 'Notaðu þitt eigið orð fyrir hvaða texta sem er í forritinu';

  @override
  String get wordsHint =>
      'Ýttu á texta til að breyta honum. Orðin þín gilda aðeins fyrir þetta tungumál og eru geymd í afritum.';

  @override
  String get wordsSearch => 'Leita í textum';

  @override
  String get wordsChangedOnly => 'Aðeins breytt';

  @override
  String wordsOriginal(String text) {
    return 'Upprunalegt: $text';
  }

  @override
  String get wordsReset => 'Nota upprunalegt';

  @override
  String get wordsResetAll => 'Endurstilla öll orð';

  @override
  String get wordsResetAllConfirm =>
      'Allir textar á þessu tungumáli fara aftur í upprunalegt horf.';

  @override
  String get wordsNone => 'Enginn texti fannst';

  @override
  String get settingsLanguageSearch => 'Leita að tungumálum';

  @override
  String get settingsLanguageNoMatch => 'Ekkert tungumál passar';

  @override
  String get soundsMyMusic => 'Hljóðið þitt';

  @override
  String get soundsMusicHint => 'Spilaðu hljóðskrá úr símanum. Ekkert er afritað eða hlaðið upp.';

  @override
  String get soundsChooseMusic => 'Veldu hljóð';

  @override
  String get soundsRemoveMusic => 'Fjarlægja hljóð';

  @override
  String get wordPacksTitle => 'Orðapakkar';

  @override
  String get wordPacksHint =>
      'Orðalistar eftir efni. Sæktu aðeins tungumálið sem þú vilt og breyttu eða eyddu spjöldunum að vild.';

  @override
  String get wordPacksFailed => 'Ekki tókst að sækja. Athugaðu tenginguna.';

  @override
  String get wordPacksEmpty => 'Orð fyrir þetta tungumál eru enn í vinnslu.';
}
