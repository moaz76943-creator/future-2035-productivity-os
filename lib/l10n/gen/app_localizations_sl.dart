// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Domov';

  @override
  String get navTasks => 'Opravila';

  @override
  String get navFocus => 'Zbranost';

  @override
  String get navCalendar => 'Koledar';

  @override
  String get navSpaces => 'Prostori';

  @override
  String get moduleProjects => 'Projekti';

  @override
  String get moduleNotes => 'Zapiski';

  @override
  String get moduleFlashcards => 'Kartice';

  @override
  String get moduleGoals => 'Cilji';

  @override
  String get moduleHabits => 'Navade';

  @override
  String get moduleAnalytics => 'Vpogledi';

  @override
  String get moduleSearch => 'Iskanje';

  @override
  String get moduleAssistant => 'Pomočnik';

  @override
  String get moduleSettings => 'Nastavitve';

  @override
  String get moduleTrash => 'Koš';

  @override
  String get actionSave => 'Shrani';

  @override
  String get actionCancel => 'Prekliči';

  @override
  String get actionDelete => 'Izbriši';

  @override
  String get actionEdit => 'Uredi';

  @override
  String get actionDone => 'Končano';

  @override
  String get actionAdd => 'Dodaj';

  @override
  String get actionCreate => 'Ustvari';

  @override
  String get actionClose => 'Zapri';

  @override
  String get actionBack => 'Nazaj';

  @override
  String get actionUndo => 'Razveljavi';

  @override
  String get actionRestore => 'Obnovi';

  @override
  String get actionRetry => 'Poskusi znova';

  @override
  String get actionContinue => 'Nadaljuj';

  @override
  String get actionSkip => 'Preskoči';

  @override
  String get actionArchive => 'Arhiviraj';

  @override
  String get actionUnarchive => 'Odstrani iz arhiva';

  @override
  String get actionPin => 'Pripni';

  @override
  String get actionUnpin => 'Odpni';

  @override
  String get actionMore => 'Več možnosti';

  @override
  String get actionClear => 'Počisti';

  @override
  String get actionSearch => 'Išči';

  @override
  String get actionSort => 'Razvrsti';

  @override
  String get actionShare => 'Deli';

  @override
  String get actionImport => 'Uvozi';

  @override
  String get actionExport => 'Izvozi';

  @override
  String get actionPause => 'Začasno ustavi';

  @override
  String get actionResume => 'Nadaljuj';

  @override
  String get actionStart => 'Začni';

  @override
  String get actionStop => 'Ustavi';

  @override
  String get actionComplete => 'Dokončaj';

  @override
  String get actionDeleteForever => 'Trajno izbriši';

  @override
  String get actionEmptyTrash => 'Izprazni koš';

  @override
  String get actionUnlink => 'Prekini povezavo';

  @override
  String get actionCustomize => 'Prilagodi';

  @override
  String get actionPreview => 'Predogled';

  @override
  String get actionLog => 'Zabeleži napredek';

  @override
  String get stateLoading => 'Nalaganje …';

  @override
  String get stateSaving => 'Shranjevanje …';

  @override
  String get stateSaved => 'Shranjeno';

  @override
  String get stateUnsaved => 'Neshranjene spremembe';

  @override
  String get errorGenericTitle => 'Nekaj je šlo narobe';

  @override
  String get errorGenericMessage => 'Vaši podatki so varni. Poskusite znova.';

  @override
  String get errorLoadFailed => 'Te vsebine ni bilo mogoče naložiti.';

  @override
  String get errorSaveFailed => 'Shranjevanje ni uspelo. Vaše spremembe so še vedno tu.';

  @override
  String get validationRequired => 'To polje je obvezno';

  @override
  String get validationTitleRequired => 'Vnesite naslov';

  @override
  String get validationNameRequired => 'Vnesite ime';

  @override
  String get validationTooLong => 'To je predolgo';

  @override
  String get validationEndBeforeStart => 'Konec mora biti po začetku';

  @override
  String get validationStartAfterDue => 'Datum začetka mora biti pred rokom';

  @override
  String get validationPositiveNumber => 'Vnesite število, večje od nič';

  @override
  String get validationDependencyCycle => 'Tako bi nastala krožna odvisnost';

  @override
  String get validationInvalidRepeat => 'To pravilo ponavljanja ni veljavno';

  @override
  String get deletedItem => 'Premaknjeno v koš';

  @override
  String get untitled => 'Brez naslova';

  @override
  String get noProject => 'Brez projekta';

  @override
  String get greetingMorning => 'Dobro jutro';

  @override
  String get greetingAfternoon => 'Dober dan';

  @override
  String get greetingEvening => 'Dober večer';

  @override
  String get dashFocusToday => 'Današnja zbranost';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done od $target';
  }

  @override
  String get dashStartFocus => 'Začni zbranost';

  @override
  String get dashFocusRunning => 'Seja poteka';

  @override
  String get dashTodayTasks => 'Rok danes';

  @override
  String get dashAgenda => 'Razpored';

  @override
  String get dashHabits => 'Današnje navade';

  @override
  String get dashGoals => 'Cilji';

  @override
  String get dashReview => 'Ponavljanje';

  @override
  String get dashRecentNotes => 'Nedavni zapiski';

  @override
  String get dashInsight => 'Predlog';

  @override
  String get dashSeeAll => 'Prikaži vse';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartic za ponavljanje',
      few: '$count kartice za ponavljanje',
      two: '$count kartici za ponavljanje',
      one: '$count kartica za ponavljanje',
      zero: 'Ni kartic za ponavljanje',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Ponovi zdaj';

  @override
  String get dashCustomizeTitle => 'Deli domače strani';

  @override
  String get dashCustomizeHint => 'Izberite, kaj je prikazano na začetnem zaslonu.';

  @override
  String get dashSectionFocus => 'Zbranost';

  @override
  String get dashSectionToday => 'Današnja opravila';

  @override
  String get dashSectionAgenda => 'Razpored';

  @override
  String get dashSectionHabits => 'Navade';

  @override
  String get dashSectionGoals => 'Cilji';

  @override
  String get dashSectionReview => 'Ponavljanje kartic';

  @override
  String get dashSectionNotes => 'Nedavni zapiski';

  @override
  String get dashSectionInsight => 'Predlogi';

  @override
  String get quickAddTask => 'Novo opravilo';

  @override
  String get quickAddNote => 'Nov zapisek';

  @override
  String get quickAddEvent => 'Nov dogodek';

  @override
  String get quickStartFocus => 'Zbranost';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Imate $count zamujenih opravil. Začnite z najpomembnejšim.',
      few: 'Imate $count zamujena opravila. Začnite z najpomembnejšim.',
      two: 'Imate $count zamujeni opravili. Začnite z najpomembnejšim.',
      one: 'Imate $count zamujeno opravilo. Začnite z najpomembnejšim.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Do dnevnega cilja zbranosti vam manjka še $minutes min.';
  }

  @override
  String get insightCardsDue => 'Ponovite kartice zdaj, ko so še sveže.';

  @override
  String get insightAllClear =>
      'Vse poteka po načrtu. Načrtujte jutri ali si privoščite miren premor.';

  @override
  String insightHabitStreak(String habit) {
    return 'Ohranite niz: »$habit« danes še čaka.';
  }

  @override
  String get focusTitle => 'Zbranost';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Odštevanje';

  @override
  String get focusModeCountUp => 'Štoparica';

  @override
  String get focusModeOpen => 'Prosto';

  @override
  String get focusPhaseWork => 'Zbranost';

  @override
  String get focusPhaseShortBreak => 'Kratek premor';

  @override
  String get focusPhaseLongBreak => 'Dolg premor';

  @override
  String get focusReady => 'Ko boste pripravljeni';

  @override
  String get focusPaused => 'Začasno ustavljeno';

  @override
  String get focusRunning => 'Zbrano';

  @override
  String get focusDuration => 'Trajanje';

  @override
  String get focusLinkTask => 'Poveži opravilo';

  @override
  String get focusLinkedTask => 'Delam na';

  @override
  String get focusNoTask => 'Ni povezanega opravila';

  @override
  String focusCycle(int current, int total) {
    return 'Krog $current od $total';
  }

  @override
  String get focusSkipBreak => 'Preskoči premor';

  @override
  String get focusStartBreak => 'Začni premor';

  @override
  String get focusStartNext => 'Začni naslednjo zbranost';

  @override
  String get focusSessionComplete => 'Seja je končana';

  @override
  String get focusSessionStopped => 'Seja je shranjena';

  @override
  String focusSessionSummary(String duration) {
    return 'Bili ste zbrani $duration.';
  }

  @override
  String get focusAddNote => 'Dodajte zapisek o tej seji';

  @override
  String get focusHistory => 'Zgodovina';

  @override
  String get focusNoHistory => 'Končane seje bodo prikazane tukaj';

  @override
  String get focusTargets => 'Cilji';

  @override
  String get focusDailyTarget => 'Dnevni cilj';

  @override
  String get focusWeeklyTarget => 'Tedenski cilj';

  @override
  String get focusOutcomeCompleted => 'Končano';

  @override
  String get focusOutcomeInterrupted => 'Prej ustavljeno';

  @override
  String get focusRecovered => 'Seja se je nadaljevala, ko je bila aplikacija zaprta.';

  @override
  String get focusCompletedWhileAway =>
      'Seja se je končala, ko je bila aplikacija zaprta, in je shranjena.';

  @override
  String get focusNotificationsOff => 'Obvestila so izklopljena. Ob koncu seje ne boste obveščeni.';

  @override
  String get focusBatteryHint =>
      'Nekatere naprave v ozadju ustavijo aplikacije. Časovnik ostane natančen, opozorila pa lahko zamujajo. Za zanesljiva opozorila dovolite neomejeno porabo baterije.';

  @override
  String get focusOpenSettings => 'Odpri nastavitve';

  @override
  String get focusStopConfirmTitle => 'Želite ustaviti to sejo?';

  @override
  String get focusStopConfirmMessage => 'Dosedanji čas zbranosti bo shranjen.';

  @override
  String get focusDiscard => 'Zavrzi';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minut',
      few: '$minutes minute',
      two: '$minutes minuti',
      one: '$minutes minuta',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, še $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, minilo $time';
  }

  @override
  String get focusDeleteSession => 'Izbriši sejo';

  @override
  String get tasksTitle => 'Opravila';

  @override
  String get tasksViewToday => 'Danes';

  @override
  String get tasksViewUpcoming => 'Prihajajoča';

  @override
  String get tasksViewAll => 'Vsa';

  @override
  String get tasksViewOverdue => 'Zamujena';

  @override
  String get tasksViewCompleted => 'Končana';

  @override
  String get tasksQuickAddHint => 'Dodaj opravilo …';

  @override
  String get tasksEmptyTitle => 'Vse je opravljeno';

  @override
  String get tasksEmptyMessage => 'Dodajte opravilo in oblikujte svoj dan.';

  @override
  String get tasksEmptyCompleted => 'Končana opravila bodo prikazana tukaj.';

  @override
  String get taskNew => 'Novo opravilo';

  @override
  String get taskEdit => 'Uredi opravilo';

  @override
  String get taskTitleLabel => 'Naslov';

  @override
  String get taskTitleHint => 'Kaj je treba narediti?';

  @override
  String get taskDescriptionLabel => 'Opis';

  @override
  String get taskNotesLabel => 'Zapiski';

  @override
  String get taskPriority => 'Prednost';

  @override
  String get priorityNone => 'Brez';

  @override
  String get priorityLow => 'Nizka';

  @override
  String get priorityMedium => 'Srednja';

  @override
  String get priorityHigh => 'Visoka';

  @override
  String get priorityUrgent => 'Nujna';

  @override
  String get taskDueDate => 'Rok';

  @override
  String get taskStartDate => 'Datum začetka';

  @override
  String get taskReminder => 'Opomnik';

  @override
  String get taskRepeat => 'Ponavljanje';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategorija';

  @override
  String get taskCategoryHint => 'npr. Služba, Dom, Študij';

  @override
  String get taskEstimateMinutes => 'Ocena (minute)';

  @override
  String get taskTracked => 'Izmerjena zbranost';

  @override
  String get taskLabels => 'Oznake';

  @override
  String get taskAddLabel => 'Nova oznaka';

  @override
  String get taskChecklist => 'Kontrolni seznam';

  @override
  String get taskAddChecklistItem => 'Dodaj postavko';

  @override
  String get taskSubtasks => 'Podopravila';

  @override
  String get taskAddSubtask => 'Dodaj podopravilo';

  @override
  String get taskDependencies => 'Blokira ga';

  @override
  String get taskAddDependency => 'Dodaj blokirajoče opravilo';

  @override
  String get taskLinkedNotes => 'Povezani zapiski';

  @override
  String get taskSetTime => 'Nastavi čas';

  @override
  String get taskNoDate => 'Brez datuma';

  @override
  String get taskCompleted => 'Opravilo je končano';

  @override
  String get taskNextOccurrence => 'Naslednja ponovitev je ustvarjena';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dni zamude',
      few: '$days dni zamude',
      two: '$days dneva zamude',
      one: '$days dan zamude',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Označi »$title« kot opravljeno';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Označi »$title« kot neopravljeno';
  }

  @override
  String get sortSmart => 'Pametno';

  @override
  String get sortDueDate => 'Rok';

  @override
  String get sortPriority => 'Prednost';

  @override
  String get sortCreated => 'Najnovejše';

  @override
  String get sortTitle => 'Naslov';

  @override
  String get filterAllProjects => 'Vsi projekti';

  @override
  String get filterAnyPriority => 'Katera koli prednost';

  @override
  String get filterTitle => 'Filtriranje in razvrščanje';

  @override
  String get dateToday => 'Danes';

  @override
  String get dateTomorrow => 'Jutri';

  @override
  String get dateYesterday => 'Včeraj';

  @override
  String get repeatNever => 'Se ne ponavlja';

  @override
  String get repeatDaily => 'Vsak dan';

  @override
  String get repeatWeekdays => 'Vsak delovni dan';

  @override
  String get repeatWeekly => 'Vsak teden';

  @override
  String get repeatMonthly => 'Vsak mesec';

  @override
  String get repeatYearly => 'Vsako leto';

  @override
  String get repeatCustom => 'Po meri';

  @override
  String get repeatEvery => 'Ponavljaj vsakih';

  @override
  String get repeatOnDays => 'Ob dnevih';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dni',
      few: 'dni',
      two: 'dneva',
      one: 'dan',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tednov',
      few: 'tedne',
      two: 'tedna',
      one: 'teden',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mesecev',
      few: 'mesece',
      two: 'meseca',
      one: 'mesec',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'let',
      few: 'leta',
      two: 'leti',
      one: 'leto',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ponovitvah',
      few: '$count ponovitvah',
      two: '$count ponovitvah',
      one: '$count ponovitvi',
    );
    return 'Konča se po $_temp0';
  }

  @override
  String get repeatEndsNever => 'Se nikoli ne konča';

  @override
  String get reminderAtTime => 'Ob času dogodka';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minut prej',
      few: '$minutes minute prej',
      two: '$minutes minuti prej',
      one: '$minutes minuto prej',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours ur prej',
      few: '$hours ure prej',
      two: '$hours uri prej',
      one: '$hours uro prej',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 dan prej';

  @override
  String get projectsTitle => 'Projekti';

  @override
  String get projectsEmptyTitle => 'Še ni projektov';

  @override
  String get projectsEmptyMessage => 'Združite povezana opravila, zapiske in čas zbranosti.';

  @override
  String get projectNew => 'Nov projekt';

  @override
  String get projectEdit => 'Uredi projekt';

  @override
  String get projectName => 'Ime';

  @override
  String get projectDescription => 'Opis';

  @override
  String get projectGoal => 'Cilj';

  @override
  String get projectDeadline => 'Rok';

  @override
  String get projectColor => 'Barva';

  @override
  String get projectIcon => 'Ikona';

  @override
  String get projectProgress => 'Napredek';

  @override
  String projectTasksDone(int done, int total) {
    return 'Opravljeno $done od $total opravil';
  }

  @override
  String get projectFocusTime => 'Čas zbranosti';

  @override
  String get projectArchived => 'Arhivirani projekti';

  @override
  String get projectShowArchived => 'Prikaži arhivirane';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Še $days dni',
      few: 'Še $days dni',
      two: 'Še $days dneva',
      one: 'Še $days dan',
      zero: 'Rok je danes',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Rok je potekel';

  @override
  String get calendarTitle => 'Koledar';

  @override
  String get calendarMonth => 'Mesec';

  @override
  String get calendarWeek => 'Teden';

  @override
  String get calendarDay => 'Dan';

  @override
  String get calendarToday => 'Danes';

  @override
  String get calendarPrevious => 'Prejšnje';

  @override
  String get calendarNext => 'Naslednje';

  @override
  String get calendarNoEvents => 'Nič ni načrtovano';

  @override
  String get calendarAllDay => 'Ves dan';

  @override
  String get eventNew => 'Nov dogodek';

  @override
  String get eventEdit => 'Uredi dogodek';

  @override
  String get eventTitleHint => 'Naslov dogodka';

  @override
  String get eventStarts => 'Začetek';

  @override
  String get eventEnds => 'Konec';

  @override
  String get eventKind => 'Vrsta';

  @override
  String get eventKindEvent => 'Dogodek';

  @override
  String get eventKindTimeBlock => 'Časovni blok';

  @override
  String get eventKindFocus => 'Seja zbranosti';

  @override
  String get eventKindGoal => 'Osebni cilj';

  @override
  String get eventDescription => 'Podrobnosti';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Prekriva se s $count dogodki',
      few: 'Prekriva se s $count dogodki',
      two: 'Prekriva se z $count dogodkoma',
      one: 'Prekriva se z $count dogodkom',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Prekrivanja v urniku ta dan';

  @override
  String get calendarTaskDue => 'Rok opravila';

  @override
  String get calendarDragHint => 'Pridržite in povlecite dogodek, da ga prestavite';

  @override
  String get calendarRescheduled => 'Dogodek je prestavljen';

  @override
  String get calendarScheduleTask => 'Načrtuj kot časovni blok';

  @override
  String get notesTitle => 'Zapiski';

  @override
  String get notesViewAll => 'Vsi';

  @override
  String get notesViewPinned => 'Pripeti';

  @override
  String get notesViewFavorites => 'Priljubljeni';

  @override
  String get notesViewArchived => 'Arhivirani';

  @override
  String get notesTags => 'Oznake';

  @override
  String get notesNewNotebook => 'Nov zvezek';

  @override
  String get notesNoNotebook => 'Brez zvezka';

  @override
  String get notesEmptyTitle => 'Prazen list';

  @override
  String get notesEmptyMessage => 'Zapišite ideje, zapiske s sestankov in znanje.';

  @override
  String get noteTitleHint => 'Naslov';

  @override
  String get noteBodyHint =>
      'Začnite pisati … Uporabite # za oznake in [[Naslov]] za povezovanje zapiskov.';

  @override
  String get noteFavorite => 'Priljubljeno';

  @override
  String get noteUnfavorite => 'Odstrani iz priljubljenih';

  @override
  String get noteMoveTo => 'Premakni v zvezek';

  @override
  String get noteBacklinks => 'Povezave sem';

  @override
  String get noteLinkedTasks => 'Povezana opravila';

  @override
  String get noteLinkTask => 'Poveži opravilo';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Naslov';

  @override
  String get noteFormatBold => 'Krepko';

  @override
  String get noteFormatItalic => 'Ležeče';

  @override
  String get noteFormatList => 'Seznam z oznakami';

  @override
  String get noteFormatChecklist => 'Kontrolni seznam';

  @override
  String get noteFormatLink => 'Povezava';

  @override
  String noteEdited(String time) {
    return 'Urejeno $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count besed',
      few: '$count besede',
      two: '$count besedi',
      one: '$count beseda',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kartice';

  @override
  String get flashEmptyTitle => 'Ustvarite prvi komplet';

  @override
  String get flashEmptyMessage =>
      'Ponavljanje v presledkih vsako kartico pokaže tik preden bi jo pozabili.';

  @override
  String get deckNew => 'Nov komplet';

  @override
  String get deckEdit => 'Uredi komplet';

  @override
  String get deckName => 'Ime kompleta';

  @override
  String get deckDescription => 'Opis';

  @override
  String get deckDailyNew => 'Nove kartice na dan';

  @override
  String get deckDailyReview => 'Dnevni cilj ponavljanja';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartic',
      few: '$count kartice',
      two: '$count kartici',
      one: '$count kartica',
      zero: 'Ni kartic',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Za ponavljanje';

  @override
  String get deckNewCards => 'Nove';

  @override
  String get deckMature => 'Naučene';

  @override
  String get deckStudy => 'Uči se';

  @override
  String get deckNothingDue => 'Trenutno ni ničesar za ponavljanje. Vrnite se pozneje.';

  @override
  String get deckEmptyCards => 'Dodajte kartice in začnite z učenjem.';

  @override
  String get cardNew => 'Nova kartica';

  @override
  String get cardEdit => 'Uredi kartico';

  @override
  String get cardFront => 'Sprednja stran';

  @override
  String get cardBack => 'Zadnja stran';

  @override
  String get cardFrontHint => 'Vprašanje ali pojem';

  @override
  String get cardBackHint => 'Odgovor ali definicija';

  @override
  String get cardTags => 'Oznake';

  @override
  String get cardAddAnother => 'Shrani in dodaj še eno';

  @override
  String get reviewShowAnswer => 'Pokaži odgovor';

  @override
  String get reviewAgain => 'Znova';

  @override
  String get reviewHard => 'Težko';

  @override
  String get reviewGood => 'Dobro';

  @override
  String get reviewEasy => 'Lahko';

  @override
  String reviewProgress(int done, int total) {
    return '$done od $total';
  }

  @override
  String get reviewFinishedTitle => 'Seja je končana';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ponovili ste $count kartic.',
      few: 'Ponovili ste $count kartice.',
      two: 'Ponovili ste $count kartici.',
      one: 'Ponovili ste $count kartico.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Tapnite za odgovor';

  @override
  String get importCardsTitle => 'Uvoz kartic';

  @override
  String get importCardsHint =>
      'Prilepite eno kartico na vrstico (sprednjo in zadnjo stran ločite s tabulatorjem ali podpičjem) ali izberite datoteko: Excel (.xlsx), CSV, komplet Anki (.apkg) ali izvožen komplet.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uvoženih je $count kartic',
      few: 'Uvožene so $count kartice',
      two: 'Uvoženi sta $count kartici',
      one: 'Uvožena je $count kartica',
      zero: 'Uvožena ni bila nobena kartica',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Te vsebine ni bilo mogoče uvoziti.';

  @override
  String get exportCopied => 'Komplet je izvožen';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count min',
      one: '$count min',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dni',
      few: '$count dni',
      two: '$count dneva',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Cilji';

  @override
  String get goalsEmptyTitle => 'Postavite si cilj';

  @override
  String get goalsEmptyMessage =>
      'Postavite dnevne, tedenske, mesečne ali dolgoročne cilje in spremljajte dejanski napredek.';

  @override
  String get goalNew => 'Nov cilj';

  @override
  String get goalEdit => 'Uredi cilj';

  @override
  String get goalTitleHint => 'Kaj želite doseči?';

  @override
  String get goalPeriod => 'Obdobje';

  @override
  String get goalPeriodDaily => 'Dnevni';

  @override
  String get goalPeriodWeekly => 'Tedenski';

  @override
  String get goalPeriodMonthly => 'Mesečni';

  @override
  String get goalPeriodLongTerm => 'Dolgoročni';

  @override
  String get goalTarget => 'Ciljna vrednost';

  @override
  String get goalUnit => 'Enota';

  @override
  String get goalUnitHint => 'npr. strani, km, ure';

  @override
  String get goalStatusActive => 'Aktiven';

  @override
  String get goalStatusPaused => 'Začasno ustavljen';

  @override
  String get goalStatusAchieved => 'Dosežen';

  @override
  String get goalPause => 'Začasno ustavi cilj';

  @override
  String get goalResume => 'Nadaljuj cilj';

  @override
  String get goalMarkAchieved => 'Označi kot dosežen';

  @override
  String goalProgressOf(String current, String target) {
    return '$current od $target';
  }

  @override
  String get goalLogAmount => 'Količina';

  @override
  String get goalLogNote => 'Zapisek (neobvezno)';

  @override
  String get goalHistory => 'Zgodovina';

  @override
  String get goalNoHistory => 'Zabeleženi napredek bo prikazan tukaj';

  @override
  String get goalLinkedTasks => 'Povezana opravila';

  @override
  String get goalLinkedTasksHint => 'Vsako končano povezano opravilo šteje kot 1 za ta cilj.';

  @override
  String get goalThisPeriod => 'To obdobje';

  @override
  String get habitsTitle => 'Navade';

  @override
  String get habitsEmptyTitle => 'Majhni koraki, vsak dan';

  @override
  String get habitsEmptyMessage => 'Ustvarite navado in jo odkljukajte, ko jo opravite.';

  @override
  String get habitNew => 'Nova navada';

  @override
  String get habitEdit => 'Uredi navado';

  @override
  String get habitNameHint => 'npr. Preberi 20 strani';

  @override
  String get habitDays => 'Urnik';

  @override
  String get habitEveryDay => 'Vsak dan';

  @override
  String get habitTargetPerDay => 'Kolikokrat na dan';

  @override
  String get habitReminder => 'Dnevni opomnik';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Niz $count dni',
      few: 'Niz $count dni',
      two: 'Niz $count dneva',
      one: 'Niz $count dan',
      zero: 'Ni niza',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Najdaljši niz';

  @override
  String get habitCurrentStreak => 'Trenutni niz';

  @override
  String get habitConsistency => 'Doslednost';

  @override
  String get habitLast90 => 'Zadnjih 90 dni';

  @override
  String get habitPaused => 'Začasno ustavljeno';

  @override
  String get habitPause => 'Začasno ustavi navado';

  @override
  String get habitResume => 'Nadaljuj navado';

  @override
  String get habitDoneToday => 'Danes opravljeno';

  @override
  String habitCountToday(int count, int target) {
    return 'Danes $count od $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Odkljukaj »$name«';
  }

  @override
  String get habitNotScheduledToday => 'Danes ni na urniku';

  @override
  String get analyticsTitle => 'Vpogledi';

  @override
  String get rangeWeek => '7 dni';

  @override
  String get rangeMonth => '30 dni';

  @override
  String get rangeQuarter => '90 dni';

  @override
  String get statFocusTime => 'Čas zbranosti';

  @override
  String get statSessions => 'Seje';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return 'Končanih $completed · prej ustavljenih $interrupted';
  }

  @override
  String get statTasksDone => 'Končana opravila';

  @override
  String get statCompletionRate => 'Končano pravočasno';

  @override
  String get statHabitConsistency => 'Doslednost navad';

  @override
  String get statRetention => 'Zapomnjene kartice';

  @override
  String get statReviews => 'Ponovitve';

  @override
  String get statActiveGoals => 'Aktivni cilji';

  @override
  String get statEstimated => 'Ocenjeno opravljeno delo';

  @override
  String get statEstimatedNote => 'Po vaših ocenah, ne po izmerjenem času';

  @override
  String get statMeasuredNote => 'Izmerjeno iz sej zbranosti';

  @override
  String get chartFocusByDay => 'Minute zbranosti na dan';

  @override
  String get chartTasksByDay => 'Končana opravila na dan';

  @override
  String get chartTimeByProject => 'Čas po projektih';

  @override
  String get chartProjectProgress => 'Napredek projektov';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: skupaj $total, najboljši dan $best';
  }

  @override
  String get analyticsNoData => 'Še ni dovolj podatkov';

  @override
  String get analyticsUnassigned => 'Nedodeljeno';

  @override
  String get searchHint => 'Išči povsod …';

  @override
  String get searchRecent => 'Nedavna iskanja';

  @override
  String get searchClearRecent => 'Počisti nedavna iskanja';

  @override
  String searchNoResults(String query) {
    return 'Ni rezultatov za »$query«';
  }

  @override
  String get searchStartTyping =>
      'Iščite po opravilih, zapiskih, karticah, ciljih, dogodkih in drugem. Iskanje ostane v tej napravi.';

  @override
  String get searchCatTask => 'Opravila';

  @override
  String get searchCatProject => 'Projekti';

  @override
  String get searchCatNote => 'Zapiski';

  @override
  String get searchCatFlashcard => 'Kartice';

  @override
  String get searchCatDeck => 'Kompleti';

  @override
  String get searchCatGoal => 'Cilji';

  @override
  String get searchCatHabit => 'Navade';

  @override
  String get searchCatEvent => 'Dogodki';

  @override
  String get searchCatSession => 'Seje';

  @override
  String get searchAll => 'Vse';

  @override
  String get assistantTitle => 'Pomočnik';

  @override
  String get assistantIntro =>
      'Pomoč pri načrtovanju, ki deluje v vaši napravi. Po želji povežite storitev UI po lastni izbiri za povzetke in ustvarjanje vsebine.';

  @override
  String get assistantOnDevice => 'V napravi';

  @override
  String get assistantCloud => 'Storitev UI';

  @override
  String get assistantPlanDay => 'Načrtuj moj dan';

  @override
  String get assistantPlanDayDesc =>
      'Razvrsti odprta opravila po nujnosti, prednosti in oceni ter jih umesti med vaše dogodke.';

  @override
  String get assistantExtractTasks => 'Izvleci opravila iz zapiska';

  @override
  String get assistantExtractTasksDesc =>
      'V zapisku poišče postavke kontrolnega seznama in vrstice z dejanji ter jih spremeni v opravila.';

  @override
  String get assistantMakeCards => 'Ustvari kartice iz zapiska';

  @override
  String get assistantMakeCardsDesc =>
      'Vrstice »pojem: definicija« in vrstice z vprašanjem in odgovorom spremeni v kartice.';

  @override
  String get assistantSummarize => 'Povzemi zapisek';

  @override
  String get assistantSummarizeDesc =>
      'Potrebna je storitev UI. Zapisek se pošlje šele, ko potrdite.';

  @override
  String get assistantWorkload => 'Pregled obremenitve';

  @override
  String get assistantWorkloadDesc => 'Primerja ocenjeno delo s prostim časom ta teden.';

  @override
  String get assistantPlanEmpty => 'Ni odprtih opravil za načrtovanje. Uživajte v prostoru.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Prosti čas za zbranost danes: $time';
  }

  @override
  String get assistantPlanOverflow => 'To morda danes ne bo šlo:';

  @override
  String get assistantChooseNote => 'Izberite zapisek';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Najdenih $count opravil',
      few: 'Najdena $count opravila',
      two: 'Najdeni $count opravili',
      one: 'Najdeno $count opravilo',
      zero: 'V zapisku ni opravil',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Najdenih $count kartic',
      few: 'Najdene $count kartice',
      two: 'Najdeni $count kartici',
      one: 'Najdena $count kartica',
      zero: 'V zapisku ni kartic',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Izberite komplet';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Ocenjeno delo: $estimated. Prosti čas: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Načrtovali ste več, kot je časa. Razmislite o premiku opravil z nižjo prednostjo.';

  @override
  String get assistantWorkloadOk => 'Vaš načrt se ujema z razpoložljivim časom.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odprtih opravil nima ocene.',
      few: '$count odprta opravila nimajo ocene.',
      two: '$count odprti opravili nimata ocene.',
      one: '$count odprto opravilo nima ocene.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Storitev UI';

  @override
  String get assistantProviderOff =>
      'Nobena storitev ni povezana. Orodja v napravi še vedno delujejo.';

  @override
  String assistantProviderOn(String host) {
    return 'Povezano s $host';
  }

  @override
  String get assistantEndpoint => 'Končna točka API (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'Ključ API';

  @override
  String get assistantApiKeyStored => 'Varno shranjeno v tej napravi';

  @override
  String get assistantHttpsOnly => 'Dovoljene so samo končne točke HTTPS';

  @override
  String get assistantConsentTitle => 'Želite to vsebino poslati storitvi UI?';

  @override
  String assistantConsentBody(String host) {
    return 'Izbrano besedilo zapiska bo zapustilo to napravo in ga bo obdelal $host. Nič drugega se ne pošlje.';
  }

  @override
  String get assistantConsentAlways => 'Za to storitev ne sprašuj več';

  @override
  String get assistantSend => 'Pošlji';

  @override
  String get assistantUnavailable => 'Storitve UI ni bilo mogoče doseči. Poskusite pozneje.';

  @override
  String get assistantDisabledTitle => 'Pomočnik je izklopljen';

  @override
  String get assistantDisabledMessage =>
      'Vklopite ga za uporabo orodij za načrtovanje. Noben podatek ne zapusti naprave, razen če povežete storitev in potrdite vsako zahtevo.';

  @override
  String get assistantSummaryTitle => 'Povzetek';

  @override
  String get assistantRemoveProvider => 'Odstrani storitev';

  @override
  String get settingsTitle => 'Nastavitve';

  @override
  String get settingsGeneral => 'Splošno';

  @override
  String get settingsLanguage => 'Jezik';

  @override
  String get settingsLanguageSystem => 'Jezik naprave';

  @override
  String get settingsAppearance => 'Videz';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Svetla';

  @override
  String get themeDark => 'Temna';

  @override
  String get themeSystem => 'Sistemska';

  @override
  String get settingsReduceMotion => 'Manj gibanja';

  @override
  String get settingsReduceMotionDesc => 'Manj animacij in premikajočih se ozadij';

  @override
  String get settingsFocus => 'Časovnik zbranosti';

  @override
  String get settingsWorkLength => 'Trajanje zbranosti';

  @override
  String get settingsShortBreak => 'Kratek premor';

  @override
  String get settingsLongBreak => 'Dolg premor';

  @override
  String get settingsLongBreakEvery => 'Dolg premor po';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sejah',
      few: '$count sejah',
      two: '$count sejah',
      one: '$count seji',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Samodejno začni premore';

  @override
  String get settingsSound => 'Zvok ob koncu';

  @override
  String get settingsDailyFocusTarget => 'Dnevni cilj zbranosti';

  @override
  String get settingsWeeklyFocusTarget => 'Tedenski cilj zbranosti';

  @override
  String get settingsNotifications => 'Obvestila';

  @override
  String get settingsNotificationsEnable => 'Dovoli opomnike';

  @override
  String get settingsQuietHours => 'Tihe ure';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Opomniki za navade, cilje in ponavljanje so utišani od $start do $end';
  }

  @override
  String get settingsReviewReminder => 'Opomnik za ponavljanje kartic';

  @override
  String get settingsPermissionDenied => 'Obvestila so blokirana v sistemskih nastavitvah.';

  @override
  String get settingsPrivacy => 'Zasebnost in podatki';

  @override
  String get settingsPrivacyStatement =>
      'Vaši podatki so shranjeni samo v tej napravi in so šifrirani. Brez računa, brez analitike in brez sledenja.';

  @override
  String get settingsBackup => 'Ustvari šifrirano varnostno kopijo';

  @override
  String get settingsBackupDesc => 'Zaščiteno z geslom, ki ga izberete sami';

  @override
  String get settingsRestore => 'Obnovi iz varnostne kopije';

  @override
  String get settingsRestoreDesc => 'Zamenja vse podatke v tej napravi';

  @override
  String get settingsErase => 'Izbriši vse podatke';

  @override
  String get settingsEraseDesc => 'Trajno izbriši vse iz te naprave';

  @override
  String get settingsEraseConfirmTitle => 'Želite izbrisati vse podatke?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Vsa opravila, zapiski, kartice, cilji, navade, dogodki in seje bodo trajno izbrisani. Za potrditev vnesite $word.';
  }

  @override
  String get settingsEraseWord => 'IZBRIŠI';

  @override
  String get settingsErased => 'Vsi podatki so izbrisani';

  @override
  String get backupPassword => 'Geslo varnostne kopije';

  @override
  String get backupPasswordConfirm => 'Potrdite geslo';

  @override
  String backupPasswordHint(int count) {
    return 'Vsaj $count znakov. Če ga izgubite, ga ni mogoče obnoviti.';
  }

  @override
  String get backupPasswordMismatch => 'Gesli se ne ujemata';

  @override
  String get backupPasswordShort => 'Geslo je prekratko';

  @override
  String get backupCreating => 'Šifriranje varnostne kopije …';

  @override
  String get backupCreated => 'Varnostna kopija je pripravljena za shranjevanje';

  @override
  String get backupRestoring => 'Preverjanje in obnavljanje …';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Obnovljenih $count elementov',
      few: 'Obnovljeni $count elementi',
      two: 'Obnovljena $count elementa',
      one: 'Obnovljen $count element',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Napačno geslo ali pa je bila datoteka spremenjena.';

  @override
  String get backupNotABackup => 'Ta datoteka ni varnostna kopija aplikacije Deep Focus.';

  @override
  String get backupCorrupted => 'Datoteka varnostne kopije je poškodovana.';

  @override
  String get backupNewer =>
      'To varnostno kopijo je ustvarila novejša različica aplikacije. Najprej posodobite aplikacijo.';

  @override
  String get backupRestoreConfirmTitle => 'Želite zamenjati vse podatke?';

  @override
  String get backupRestoreConfirmBody =>
      'Vse, kar je zdaj v tej napravi, bo zamenjala varnostna kopija. Če obnovitev ne uspe, se nič ne spremeni.';

  @override
  String get settingsAbout => 'O aplikaciji';

  @override
  String settingsVersion(String version) {
    return 'Različica $version';
  }

  @override
  String get settingsLicenses => 'Licence odprte kode';

  @override
  String get settingsAssistant => 'Pomočnik';

  @override
  String get settingsAssistantEnable => 'Vklopi pomočnika';

  @override
  String get settingsDashboard => 'Deli domače strani';

  @override
  String get settingsTrash => 'Koš';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Koš je prazen';

  @override
  String get trashHint => 'Izbrisani elementi ostanejo tukaj, dokler jih ne odstranite.';

  @override
  String get trashTasks => 'Opravila';

  @override
  String get trashNotes => 'Zapiski';

  @override
  String get onboardWelcomeTitle => 'Dobrodošli v svojem novem delovnem prostoru';

  @override
  String get onboardWelcomeBody =>
      'Opravila, zbranost, koledar, zapiski, kartice, cilji in navade — skupaj in čudovito preprosto.';

  @override
  String get onboardPrivateTitle => 'Zasebnost od začetka';

  @override
  String get onboardPrivateBody =>
      'Vse ostane šifrirano v tej napravi. Brez računa. Brez sledenja. Vi odločate.';

  @override
  String get onboardLanguageTitle => 'Izberite jezik';

  @override
  String get onboardNotifTitle => 'Nežni opomniki';

  @override
  String get onboardNotifBody =>
      'Dovolite obvestila za opomnike opravil in opozorila zbranosti. To lahko kadar koli spremenite.';

  @override
  String get onboardGetStarted => 'Začnimo';

  @override
  String onboardStep(int current, int total) {
    return 'Korak $current od $total';
  }

  @override
  String get notifChannelReminders => 'Opomniki';

  @override
  String get notifChannelRemindersDesc => 'Opomniki za opravila, dogodke, navade in cilje';

  @override
  String get notifChannelFocus => 'Časovnik zbranosti';

  @override
  String get notifChannelFocusDesc => 'Opozorila, ko se seja zbranosti ali premor konča';

  @override
  String get notifTaskTitle => 'Opomnik za opravilo';

  @override
  String get notifEventTitle => 'Prihajajoči dogodek';

  @override
  String notifEventBody(String title, String time) {
    return '$title ob $time';
  }

  @override
  String get notifFocusDoneTitle => 'Seja zbranosti je končana';

  @override
  String get notifFocusDoneBody => 'Odlično. Čas je za premor.';

  @override
  String get notifBreakDoneTitle => 'Premora je konec';

  @override
  String get notifBreakDoneBody => 'Ste pripravljeni na naslednjo sejo zbranosti?';

  @override
  String get notifHabitTitle => 'Opomnik za navado';

  @override
  String get notifReviewTitle => 'Kartice čakajo';

  @override
  String get notifReviewBody => 'Kratko ponavljanje ohranja spomin močan.';

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
  String get weekdaysShort => 'P,T,S,Č,P,S,N';

  @override
  String a11yProgress(int value) {
    return 'Napredek $value odstotkov';
  }

  @override
  String a11yPriority(String level) {
    return 'Prednost: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Barva $index';
  }

  @override
  String get analyticsRangeLabel => 'Časovno obdobje';

  @override
  String get analyticsRefresh => 'Osveži';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done od $total opravil z rokom končanih pravočasno';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Opravljeno $done od $total opravil';
  }

  @override
  String get analyticsNoProjects => 'Ni aktivnih projektov';

  @override
  String get analyticsNoFocus => 'V tem obdobju ni sej zbranosti';

  @override
  String get analyticsHabitsNone => 'Ni aktivnih navad';

  @override
  String get analyticsRetentionNote => 'Delež naučenih kartic, ki ste si jih zapomnili';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Prosti čas se šteje $start–$end ob delovnih dneh ($days), brez dogodkov s časom. Ocenjeno delo je vsota ocen odprtih opravil z rokom v naslednjih 7 dneh.';
  }

  @override
  String get assistantWorkdaysMonFri => 'ponedeljek–petek';

  @override
  String get assistantWorkdaysSunThu => 'nedelja–četrtek';

  @override
  String get assistantWorkloadDayOff => 'Prost dan';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated načrtovano · $free prosto';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Načrtovano od zdaj do $end, okrog današnjih dogodkov. Najprej zamujena opravila, nato prednost, rok in ocena.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Načrtuj kot časovne bloke';

  @override
  String get assistantScheduleConfirmTitle => 'Želite dodati časovne bloke v koledar?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'V današnji koledar bo dodanih $count časovnih blokov.',
      few: 'V današnji koledar bodo dodani $count časovni bloki.',
      two: 'V današnji koledar bosta dodana $count časovna bloka.',
      one: 'V današnji koledar bo dodan $count časovni blok.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodanih $count časovnih blokov',
      few: 'Dodani $count časovni bloki',
      two: 'Dodana $count časovna bloka',
      one: 'Dodan $count časovni blok',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Že v koledarju';

  @override
  String get assistantPlanTimeline => 'Gre danes';

  @override
  String get assistantNoEstimate => 'Dodajte oceno, da jih boste lahko načrtovali';

  @override
  String get assistantNoNotes => 'Še ni zapiskov. Najprej napišite zapisek.';

  @override
  String get assistantNoteEmpty => 'Ta zapisek je prazen.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ustvarjenih $count opravil',
      few: 'Ustvarjena $count opravila',
      two: 'Ustvarjeni $count opravili',
      one: 'Ustvarjeno $count opravilo',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ustvarjenih $count kartic',
      few: 'Ustvarjene $count kartice',
      two: 'Ustvarjeni $count kartici',
      one: 'Ustvarjena $count kartica',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ustvari $count',
      one: 'Ustvari $count',
      zero: 'Nič ni izbrano',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Prepoznano: neodkljukana polja »- [ ]« in vrstice, ki se začnejo s TODO: ali To do:';

  @override
  String get assistantCardsHint =>
      'Prepoznano: »pojem: definicija«, »pojem — definicija« in pari vrstic Q:/A:';

  @override
  String get assistantProviderHint =>
      'Uporabite katero koli storitev, združljivo z OpenAI. Ključ ostane v varni shrambi naprave in nikoli ni vključen v varnostne kopije.';

  @override
  String get assistantEndpointHelp => 'Na primer https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Pustite prazno, da obdržite shranjeni ključ';

  @override
  String get assistantApiKeyRequired => 'Vnesite ključ API';

  @override
  String get assistantProviderSaved => 'Storitev je shranjena';

  @override
  String get assistantProviderRemoved => 'Storitev je odstranjena in ključ izbrisan';

  @override
  String get assistantRemoveProviderConfirm =>
      'Želite odstraniti storitev in izbrisati shranjeni ključ API iz te naprave?';

  @override
  String get assistantAskEveryTime => 'Vprašaj pred vsako zahtevo';

  @override
  String get assistantSummarizing => 'Povzemanje …';

  @override
  String assistantSummaryNote(String host) {
    return 'Ustvaril $host. Preverite, preden se zanesete na to.';
  }

  @override
  String get assistantCopy => 'Kopiraj';

  @override
  String get assistantCopied => 'Kopirano';

  @override
  String get assistantConfigure => 'Nastavi storitev';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Vsi dogodki v tem nizu so prestavljeni';

  @override
  String get calendarEventReminder => 'Opomnik';

  @override
  String get calendarEventRepeat => 'Ponavljanje';

  @override
  String get calendarEventColor => 'Barva';

  @override
  String get calendarDefaultColor => 'Uporabi barvo vrste';

  @override
  String get calendarEventLinkedTask => 'Povezano opravilo';

  @override
  String get calendarEventNoTask => 'Ni povezanega opravila';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dogodkov',
      few: '$count dogodki',
      two: '$count dogodka',
      one: '$count dogodek',
      zero: 'Ni dogodkov',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opravil z rokom',
      few: '$count opravila z rokom',
      two: '$count opravili z rokom',
      one: '$count opravilo z rokom',
      zero: 'ni opravil z rokom',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Dodajte dogodek ali časovni blok, da načrtujete ta dan.';

  @override
  String get calendarNow => 'Trenutni čas';

  @override
  String get calendarRecurring => 'Se ponavlja';

  @override
  String get calendarEventNotFound => 'Ta dogodek ne obstaja več';

  @override
  String get calendarEventLocalTime => 'Časi so prikazani v časovnem pasu naprave';

  @override
  String get calendarEventDeleted => 'Dogodek je premaknjen v koš';

  @override
  String get calendarConflictMarker => 'Prekriva se z drugim dogodkom';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Spremembe veljajo za vse dogodke v tem nizu';

  @override
  String get calendarDragHintSeries => 'Če povlečete ponavljajoči se dogodek, premaknete ves niz';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, rok opravila';
  }

  @override
  String get startupErrorTitle => 'Vaših podatkov ni bilo mogoče odpreti';

  @override
  String get startupErrorLocked =>
      'Šifrirni ključ za podatke te naprave ni na voljo. Nič ni bilo izbrisano. Pogosto pomaga vnovični zagon naprave. Če ste napravo pred kratkim obnovili, raje obnovite podatke iz šifrirane varnostne kopije.';

  @override
  String get startupErrorCipher =>
      'Ta naprava ne podpira šifrirane shrambe, ki jo potrebuje aplikacija. Nič ni bilo shranjeno nešifrirano.';

  @override
  String get startupErrorRetry => 'Poskusi znova';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartic čaka na ponavljanje',
      few: '$count kartice čakajo na ponavljanje',
      two: '$count kartici čakata na ponavljanje',
      one: '$count kartica čaka na ponavljanje',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count za ponavljanje';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count novih';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Naučene kartice: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Vnesite 0 ali več';

  @override
  String get flashcardsSearchCards => 'Išči kartice';

  @override
  String get flashcardsSearchEmpty => 'Nobena kartica se ne ujema z iskanjem';

  @override
  String get flashcardsCardAdded => 'Kartica je dodana';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Ponavljanje $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopiraj v odložišče';

  @override
  String get flashcardsExportTitle => 'Izvozi komplet';

  @override
  String get flashcardsDeleteDeck => 'Izbriši komplet';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, naslednje ponavljanje čez $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Vprašanje: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Odgovor: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Pokaži vprašanje';

  @override
  String get flashcardsImportField => 'Kartice za uvoz';

  @override
  String get flashcardsNothingToStudy => 'Ni česa učiti';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartic pripravljenih za učenje',
      few: '$count kartice pripravljene za učenje',
      two: '$count kartici pripravljeni za učenje',
      one: '$count kartica pripravljena za učenje',
      zero: 'Ni pripravljenih kartic',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Po oceni';

  @override
  String get flashcardsDeckNotFound => 'Ta komplet ni več na voljo.';

  @override
  String get focusSessionDeleted => 'Seja je izbrisana';

  @override
  String get focusDeleteConfirm =>
      'Želite izbrisati to sejo iz zgodovine? Njen čas se ne bo več štel v vaše cilje.';

  @override
  String get focusUnlinkTask => 'Odstrani povezano opravilo';

  @override
  String get focusNoteHint => 'Na čem ste delali?';

  @override
  String get focusTargetCaption => 'Izmerjeno iz shranjenih sej';

  @override
  String get focusModeLabel => 'Način časovnika';

  @override
  String focusUpNext(String phase) {
    return 'Naslednje: $phase';
  }

  @override
  String get focusStopwatchHint => 'Šteje navzgor, dokler ne ustavite.';

  @override
  String get focusOpenHint => 'Brez časovne omejitve. Ustavite, ko končate.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Opomniki so v nastavitvah izklopljeni. Ob koncu seje ne boste obveščeni.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Vsi';

  @override
  String get goalsFilterPeriod => 'Filter obdobja';

  @override
  String get goalsFilterStatus => 'Filter stanja';

  @override
  String get goalsEmptyFiltered => 'Noben cilj se ne ujema s tem filtrom';

  @override
  String goalsDueOn(String date) {
    return 'Rok $date';
  }

  @override
  String get goalsDeadline => 'Rok (neobvezno)';

  @override
  String get goalsNoDeadline => 'Brez roka';

  @override
  String get goalsSetDeadline => 'Nastavi rok';

  @override
  String get goalsRemoveDeadline => 'Odstrani rok';

  @override
  String get goalsDescription => 'Opis (neobvezno)';

  @override
  String get goalsTitleLabel => 'Naslov';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Cilj je dosežen';

  @override
  String get goalsLogged => 'Napredek je zabeležen';

  @override
  String get goalsEntryDeleted => 'Vnos je odstranjen';

  @override
  String get goalsDeleteEntry => 'Odstrani vnos';

  @override
  String get goalsDeleted => 'Cilj je izbrisan';

  @override
  String get goalsMarkActive => 'Označi kot aktiven';

  @override
  String get goalsNotFound => 'Ta cilj ni več na voljo';

  @override
  String get goalsLinkTask => 'Poveži opravilo';

  @override
  String get goalsNoLinkedTasks => 'Še ni povezanih opravil';

  @override
  String get goalsUnlinkTask => 'Prekini povezavo z opravilom';

  @override
  String get goalsTaskOpen => 'Še ni končano';

  @override
  String get goalsTaskLinked => 'Opravilo je povezano';

  @override
  String get goalsTaskUnlinked => 'Povezava z opravilom je prekinjena';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count končanih povezanih opravil',
      few: '$count končana povezana opravila',
      two: '$count končani povezani opravili',
      one: '$count končano povezano opravilo',
    );
    return 'Vključuje $_temp0 v tem obdobju';
  }

  @override
  String get goalsHistoryAllTime =>
      'Vnosi iz prejšnjih obdobij ostanejo tukaj, vendar štejejo samo za svoje obdobje.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Danes opravljeno $done od $total';
  }

  @override
  String get habitsNothingToday => 'Za danes ni načrtovanih navad';

  @override
  String get habitsDecrease => 'Odstrani eno kljukico';

  @override
  String get habitsResetToday => 'Ponastavi današnji dan';

  @override
  String get habitsCheckInHint => 'Pridržite za prilagoditev';

  @override
  String get habitsName => 'Ime';

  @override
  String get habitsColor => 'Barva';

  @override
  String get habitsValidationDays => 'Izberite vsaj en dan';

  @override
  String habitsReminderAt(String time) {
    return 'Vsak dan ob $time';
  }

  @override
  String get habitsSetReminder => 'Nastavi čas opomnika';

  @override
  String get habitsRemoveReminder => 'Odstrani opomnik';

  @override
  String get habitsReminderNote =>
      'Opomniki se prikažejo na načrtovane dni, če so obvestila dovoljena.';

  @override
  String get habitsArchived => 'Navada je arhivirana';

  @override
  String get habitsNotFound => 'Ta navada ni več na voljo';

  @override
  String get habitsLast30 => 'Zadnjih 30 dni';

  @override
  String get habitsConsistencyNone => 'Še ni dovolj podatkov';

  @override
  String get habitsCalendar => 'Zgodovina kljukic';

  @override
  String get habitsCalendarHint => 'Tapnite dan, da ga popravite.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count od $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Kljukice v zadnjih 90 dneh. Doslednost $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Kljukice v zadnjih 90 dneh. Še ni dovolj podatkov.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dni',
      few: '$count dni',
      two: '$count dneva',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Začasno ustavljeni dnevi ne vplivajo na vaš niz.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arhiviraj navado';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-krat na dan',
      few: '$count-krat na dan',
      two: '$count-krat na dan',
      one: '$count-krat na dan',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Drugi zapiski';

  @override
  String get notesAllNotebooks => 'Vsi zvezki';

  @override
  String get notesNotebookName => 'Ime zvezka';

  @override
  String get notesNotebookColor => 'Barva';

  @override
  String get notesDeleteNotebook => 'Izbriši zvezek';

  @override
  String get notesDeleteNotebookMessage =>
      'Zvezek bo odstranjen. Njegovi zapiski ostanejo in so prikazani pod »Vsi zvezki«.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Pripnite pomembne zapiske, da ostanejo na vrhu.';

  @override
  String get notesEmptyFavorites =>
      'Zapiski, ki jih označite kot priljubljene, bodo prikazani tukaj.';

  @override
  String get notesEmptyArchived => 'Arhivirani zapiski bodo prikazani tukaj.';

  @override
  String get notesEmptyFiltered => 'Noben zapisek se ne ujema s temi filtri.';

  @override
  String get notesArchivedSnack => 'Zapisek je arhiviran';

  @override
  String get notesUnarchivedSnack => 'Zapisek je vrnjen med vaše zapiske';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Opravljeno $done od $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Oblikovanje';

  @override
  String get notesWrite => 'Pisanje';

  @override
  String get notesPreviewEmpty => 'Ni še ničesar za predogled.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Na ta zapisek še ne kaže noben drug. Nanj se povežete z [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Zapisku dajte naslov, da se lahko drugi zapiski povežejo nanj.';

  @override
  String get notesLinkedTasksEmpty => 'S tem zapiskom ni povezano nobeno opravilo.';

  @override
  String notesLinkMissing(String title) {
    return 'Zapiska z naslovom »$title« še ni.';
  }

  @override
  String get notesNotFound => 'Ta zapisek ne obstaja več.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Postavka seznama: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Odpri zapisek $title';
  }

  @override
  String get notesTaskDone => 'Končano';

  @override
  String get notifTimerDoneBody => 'Nastavljeni čas je potekel.';

  @override
  String get onboardingPrivatePointDevice => 'Shranjeno samo v tej napravi, šifrirano';

  @override
  String get onboardingPrivatePointAccount => 'Račun ni potreben';

  @override
  String get onboardingPrivatePointTracking => 'Brez analitike, brez sledenja';

  @override
  String get onboardingLanguageBody => 'To lahko kadar koli spremenite v nastavitvah.';

  @override
  String get onboardingNext => 'Naprej';

  @override
  String get projectsActive => 'Aktivni';

  @override
  String get projectNameHint => 'npr. Lansiranje izdelka';

  @override
  String get projectGoalHint => 'Kako je videti »končano«?';

  @override
  String get projectNoDeadline => 'Brez roka';

  @override
  String get projectTasksOpen => 'Odprta opravila';

  @override
  String get projectTasksCompleted => 'Končana opravila';

  @override
  String get projectAddTask => 'Dodaj opravilo v projekt';

  @override
  String get projectAddNote => 'Nov zapisek projekta';

  @override
  String get projectLinkedNotes => 'Zapiski';

  @override
  String get projectNoTasks => 'V tem projektu še ni opravil';

  @override
  String get projectArchivedBadge => 'Arhivirano';

  @override
  String get projectDeleted => 'Projekt je premaknjen v koš';

  @override
  String get projectDeleteMessage => 'Opravila ostanejo na vašem seznamu brez projekta.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, dokončano $percent odstotkov';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultatov',
      few: '$count rezultati',
      two: '$count rezultata',
      one: '$count rezultat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtriraj po vrsti';

  @override
  String searchRecentTap(String query) {
    return 'Znova išči $query';
  }

  @override
  String get settingsLanguageHint =>
      'Izberite jezik celotne aplikacije. Imena so prikazana v lastnem jeziku.';

  @override
  String get settingsThemeHint => 'Svetla, temna ali kot v sistemu';

  @override
  String settingsDecrease(String setting) {
    return 'Zmanjšaj: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Povečaj: $setting';
  }

  @override
  String get settingsQuietStart => 'Začetek';

  @override
  String get settingsQuietEnd => 'Konec';

  @override
  String get settingsNotificationsHint =>
      'S tem se vaša izbira shrani v aplikacijo. Sistem lahko zaprosi tudi za dovoljenje.';

  @override
  String get settingsDashboardHint =>
      'Povlecite za spremembo vrstnega reda. Izklopite dele, ki jih ne potrebujete.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Premakni: $section';
  }

  @override
  String get settingsDashboardReset => 'Obnovi privzeti vrstni red';

  @override
  String get settingsAssistantDesc =>
      'Neobvezna pomoč pri načrtovanju. Nič ne zapusti naprave, razen če povežete storitev.';

  @override
  String get settingsAssistantSetup => 'Pomočnik in nastavitev storitve';

  @override
  String get settingsTrashDesc => 'Obnovite ali trajno izbrišite odstranjene elemente';

  @override
  String get settingsEraseFirstBody =>
      'Tega ni mogoče razveljaviti. Razmislite, ali bi najprej ustvarili šifrirano varnostno kopijo.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Vnesite $word';
  }

  @override
  String get settingsEraseFailed => 'Podatkov ni bilo mogoče izbrisati. Nič ni bilo spremenjeno.';

  @override
  String get settingsAboutTagline => 'Zaseben delovni prostor za produktivnost, ki deluje lokalno.';

  @override
  String get backupShowPassword => 'Pokaži geslo';

  @override
  String get backupHidePassword => 'Skrij geslo';

  @override
  String get backupSaved => 'Varnostna kopija je shranjena';

  @override
  String get backupFailed =>
      'Varnostne kopije ni bilo mogoče ustvariti. Vaši podatki so nespremenjeni.';

  @override
  String get backupReadFailed => 'Izbrane datoteke ni bilo mogoče prebrati.';

  @override
  String get backupRestoreFailed => 'Obnovitev ni uspela. Nič ni bilo spremenjeno.';

  @override
  String get backupShareSubject => 'Šifrirana varnostna kopija Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vsakih $count dni',
      few: 'Vsake $count dni',
      two: 'Vsaka $count dneva',
      one: 'Vsak $count. dan',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vsakih $count tednov',
      few: 'Vsake $count tedne',
      two: 'Vsaka $count tedna',
      one: 'Vsak $count. teden',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vsakih $count mesecev',
      few: 'Vsake $count mesece',
      two: 'Vsaka $count meseca',
      one: 'Vsak $count. mesec',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vsakih $count let',
      few: 'Vsaka $count leta',
      two: 'Vsaki $count leti',
      one: 'Vsako $count. leto',
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
    return 'ob $days';
  }

  @override
  String get repeatEndsLabel => 'Konec';

  @override
  String get repeatEndsAfter => 'Po določenem številu ponovitev';

  @override
  String get repeatCountLabel => 'Število ponovitev';

  @override
  String get reminderNone => 'Brez opomnika';

  @override
  String get reminderCustomTime => 'Ob določenem času';

  @override
  String get a11yDecrease => 'Zmanjšaj';

  @override
  String get a11yIncrease => 'Povečaj';

  @override
  String get pickTaskTitle => 'Izberite opravilo';

  @override
  String get pickTaskEmpty => 'Ni odprtih opravil';

  @override
  String get tasksSearchTooltip => 'Išči opravila';

  @override
  String get tasksSectionOverdue => 'Zamujena';

  @override
  String get tasksSectionToday => 'Danes';

  @override
  String get tasksRecurringSemantics => 'Se ponavlja';

  @override
  String get tasksFilterPriorityAtLeast => 'Najnižja prednost';

  @override
  String get tasksFilterCategory => 'Kategorija';

  @override
  String get tasksFilterAnyCategory => 'Katera koli kategorija';

  @override
  String get tasksFilterLabel => 'Oznaka';

  @override
  String get tasksFilterAnyLabel => 'Katera koli oznaka';

  @override
  String get tasksFilterReset => 'Ponastavi filtre';

  @override
  String get tasksViewByProject => 'Po projektih';

  @override
  String get tasksViewByPriority => 'Po prednosti';

  @override
  String get tasksViewByCategory => 'Po kategorijah';

  @override
  String get tasksGroupNoCategory => 'Brez kategorije';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opravil',
      few: '$count opravila',
      two: '$count opravili',
      one: '$count opravilo',
    );
    return 'Blokira $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'To opravilo blokirajo nedokončana opravila. Ga vseeno dokončam?';

  @override
  String get taskStartFocus => 'Osredotoči se na to opravilo';

  @override
  String get taskRemoveDate => 'Odstrani datum';

  @override
  String get taskAllDay => 'Brez določenega časa';

  @override
  String get taskSaved => 'Opravilo je shranjeno';

  @override
  String get taskCreated => 'Opravilo je ustvarjeno';

  @override
  String get taskReminderNeedsDue => 'Nastavite rok, če želite uporabljati relativne opomnike';

  @override
  String get taskSubtaskDetailsHint =>
      'Najprej shranite opravilo, da boste lahko dodali podopravila, postavke seznama, oznake in odvisnosti.';

  @override
  String get taskLabelName => 'Ime oznake';

  @override
  String get taskMoreDetails => 'Podrobnosti';

  @override
  String get taskPlanning => 'Načrtovanje';

  @override
  String get taskOrganize => 'Organizacija';

  @override
  String get taskBreakdown => 'Razčlenitev';

  @override
  String get trashDeleteTaskTitle => 'Želite trajno izbrisati to opravilo?';

  @override
  String get trashDeleteNoteTitle => 'Želite trajno izbrisati ta zapisek?';

  @override
  String get trashDeleteBody => 'Tega ni mogoče razveljaviti.';

  @override
  String get trashEmptyTitle => 'Želite izprazniti koš?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementov bo trajno izbrisanih.',
      few: '$count elementi bodo trajno izbrisani.',
      two: '$count elementa bosta trajno izbrisana.',
      one: '$count element bo trajno izbrisan.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Obnovljeno';

  @override
  String get trashPurged => 'Trajno izbrisano';

  @override
  String trashDeletedOn(String date) {
    return 'Izbrisano $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementov',
      few: '$count elementi',
      two: '$count elementa',
      one: '$count element',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Preberi na glas';

  @override
  String get flashcardsTtsUnavailable => 'Pretvorba besedila v govor v tej napravi ni na voljo.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Za ta jezik ni nameščen noben glas. Dodajte ga v Androidovih nastavitvah za pretvorbo besedila v govor.';

  @override
  String get calendarAgenda => 'Razpored';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Iskra',
      'rocket': 'Raketa',
      'book': 'Knjiga',
      'work': 'Delo',
      'home': 'Dom',
      'heart': 'Srce',
      'code': 'Koda',
      'palette': 'Paleta',
      'fitness': 'Fitnes',
      'school': 'Šola',
      'travel': 'Potovanja',
      'money': 'Varčevanje',
      'other': 'Ikona',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Več polj';

  @override
  String get cardFieldExample => 'Primer';

  @override
  String get cardFieldExplanation => 'Razlaga';

  @override
  String get cardFieldPronunciation => 'Izgovorjava';

  @override
  String get cardFieldNotes => 'Dodatni zapiski';

  @override
  String get projectMilestones => 'Mejniki';

  @override
  String get milestoneAdd => 'Dodaj mejnik';

  @override
  String get milestoneEdit => 'Uredi mejnik';

  @override
  String get milestoneTitleLabel => 'Mejnik';

  @override
  String get milestoneNoDate => 'Brez datuma';

  @override
  String get milestonesEmpty =>
      'Še ni mejnikov. Dodajte kontrolne točke z datumi, da boste projekt spremljali v koledarju.';

  @override
  String get milestoneDeleted => 'Mejnik je izbrisan';

  @override
  String milestoneDoneA11y(String title) {
    return 'Označi mejnik »$title« kot dosežen';
  }

  @override
  String calendarMilestone(String project) {
    return 'Mejnik · $project';
  }

  @override
  String get tasksViewInbox => 'Prejeto';

  @override
  String get tasksViewArchived => 'Arhivirana';

  @override
  String get tasksEmptyInbox =>
      'Sem pridejo opravila brez projekta ali datuma. Razvrstite jih, ko boste imeli trenutek.';

  @override
  String get tasksEmptyArchived =>
      'Arhivirana opravila so shranjena tukaj, zunaj vaših seznamov in opomnikov.';

  @override
  String get taskArchivedBadge => 'Arhivirano';

  @override
  String get taskStatusInProgress => 'V teku';

  @override
  String get taskArchived => 'Opravilo je arhivirano';

  @override
  String get taskUnarchived => 'Opravilo je obnovljeno iz arhiva';

  @override
  String get focusPlanTitle => 'Načrt sej';

  @override
  String focusPlanTotal(String duration) {
    return 'Skupaj $duration';
  }

  @override
  String get focusPlanRounds => 'Seje zbranosti';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Dolg premor po';

  @override
  String get focusPlanSkipLastBreak => 'Preskoči zadnji premor';

  @override
  String get focusPlanAutoBreaks => 'Samodejno začni premore';

  @override
  String get focusPlanAutoFocus => 'Po premoru samodejno začni zbranost';

  @override
  String get focusPlanSave => 'Shrani načrt';

  @override
  String get focusPlanNameHint => 'npr. Priprava na izpit';

  @override
  String get focusPlanSaved => 'Načrt je shranjen';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min zbranosti, $rest min premora';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Zmanjšaj: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Povečaj: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Seja $current od $total';
  }

  @override
  String get focusSeriesComplete => 'Niz je končan. Bravo!';

  @override
  String get filterAll => 'Vse';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Uvoženo: $added · preskočenih dvojnikov: $duplicates · nepopolnih vrstic: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Začasno izključi kartico';

  @override
  String get flashcardsResume => 'Znova vključi kartico';

  @override
  String get flashcardsSuspended => 'Kartica je izključena: ne bo se načrtovala';

  @override
  String get flashcardsResumed => 'Kartica je znova vključena';

  @override
  String get flashcardsSuspendedFilter => 'Izključene';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown od $total kartic';
  }

  @override
  String get flashcardsImportFile => 'Iz datoteke';

  @override
  String get speechTitle => 'Govor';

  @override
  String get speechAppLanguage => 'Jezik aplikacije';

  @override
  String get speechFrontLanguage => 'Jezik sprednje strani';

  @override
  String get speechBackLanguage => 'Jezik zadnje strani';

  @override
  String get speechRepeat => 'Ponovi vsako branje';

  @override
  String get speechRate => 'Hitrost';

  @override
  String get speechAutoRead => 'Samodejno preberi vprašanje';

  @override
  String get speechHint =>
      'Uporablja glasove, nameščene v tej napravi, brez povezave. Če jezik nima glasu, boste obveščeni in nič drugega se ne uporabi namesto njega.';

  @override
  String get studyHowTitle => 'Kako se želite učiti?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ponovi $count kartic',
      few: 'Ponovi $count kartice',
      two: 'Ponovi $count kartici',
      one: 'Ponovi $count kartico',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Vadi vse kartice (urnik se ne spremeni)';

  @override
  String get studyPracticeMistakes => 'Vadi nedavne napake';

  @override
  String get studyPracticeHint =>
      'Vadbeni krogi nikoli ne spremenijo, kdaj so kartice na vrsti. Ponavljanje posodobi urnik.';

  @override
  String get studyModeClassic => 'Klasično';

  @override
  String get studyModeReverse => 'Obratno';

  @override
  String get studyModeMixed => 'V obe smeri';

  @override
  String get studyModeTyped => 'Vpiši odgovor';

  @override
  String get studyModeChoice => 'Izbira med možnostmi';

  @override
  String get studyModeListening => 'Poslušanje';

  @override
  String get studyPractice => 'vadba';

  @override
  String get studyNoMistakes => 'V tem kompletu ni nedavnih napak. Odlično!';

  @override
  String get studyTypeAnswer => 'Vpišite odgovor';

  @override
  String get studyCheck => 'Preveri';

  @override
  String get studyKnewIt => 'Vedel sem';

  @override
  String get studyDidntKnow => 'Nisem vedel';

  @override
  String studyMistakes(int count) {
    return 'Zgrešeno ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Ponovi zgrešene kartice';

  @override
  String get studyCorrect => 'Pravilno';

  @override
  String get studyAlmost => 'Skoraj — preverite črkovanje';

  @override
  String get studyWrong => 'Ne čisto';

  @override
  String get studyShowText => 'Pokaži besedilo';

  @override
  String get flashcardsImportFileFailed =>
      'Datoteke ni bilo mogoče odpreti. Namesto tega lahko prilepite njeno vsebino.';

  @override
  String get studyNoMatchingCards => 'Tej izbiri še ne ustreza nobena kartica.';

  @override
  String get studyPracticeNew => 'Samo nove';

  @override
  String get studyPracticeHard => 'Težke kartice';

  @override
  String get studyPracticeFavorites => 'Priljubljene';

  @override
  String get studySessionSize => 'Kartic na sejo';

  @override
  String get studySessionAll => 'Vse';

  @override
  String get studyOrder => 'Vrstni red';

  @override
  String get studyOrderDue => 'Najprej najbolj zamujene';

  @override
  String get studyOrderRandom => 'Naključno';

  @override
  String get studyOrderHardest => 'Najprej najtežje';

  @override
  String get flashcardsHard => 'Težke';

  @override
  String get flashcardsFavorites => 'Priljubljene';

  @override
  String get flashcardsFavorite => 'Dodaj med priljubljene';

  @override
  String get flashcardsUnfavorite => 'Odstrani iz priljubljenih';

  @override
  String get flashcardsDuplicate => 'Podvoji';

  @override
  String get flashcardsMoveTo => 'Premakni v komplet';

  @override
  String get flashcardsNoOtherDeck => 'Najprej ustvarite drug komplet.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Premaknjenih je $count kartic',
      few: 'Premaknjene so $count kartice',
      two: 'Premaknjeni sta $count kartici',
      one: 'Premaknjena je $count kartica',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Dodaj oznako';

  @override
  String get flashcardsTagHint => 'npr. glagoli';

  @override
  String flashcardsSelected(int count) {
    return 'Izbrano: $count';
  }

  @override
  String get flashcardsSelectAll => 'Izberi vse prikazano';

  @override
  String flashcardsSelectCard(String front) {
    return 'Izberi $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Priklic $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Morebiten dvojnik';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Ta komplet že ima »$front« → »$back«. Vseeno shranim?';
  }

  @override
  String get flashcardsSaveAnyway => 'Vseeno shrani';

  @override
  String get flashcardsStats => 'Statistika';

  @override
  String get flashcardsStatTotal => 'Kartice';

  @override
  String get flashcardsStatLearning => 'V učenju';

  @override
  String get flashcardsStatMatureCaption => 'Zapomnjene 21+ dni';

  @override
  String get flashcardsStatReviewsToday => 'Današnja ponavljanja';

  @override
  String get flashcardsStatCorrect => 'Pravilni odgovori';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Zadnji dnevi: $days';
  }

  @override
  String get flashcardsStatForget => 'Stopnja pozabljanja';

  @override
  String get flashcardsStatForgetCaption => '»Znova« pri naučenih karticah';

  @override
  String get flashcardsStatRecall => 'Priklic zdaj';

  @override
  String get flashcardsStatRecallCaption => 'Ocena FSRS, ponovljene kartice';

  @override
  String flashcardsStatActivity(int count) {
    return 'Ponavljanja na dan · skupaj $count';
  }

  @override
  String get flashcardsStatHistory => 'Zadnji odgovori';

  @override
  String get flashcardsStatNoHistory =>
      'Ponavljanj še ni. Učite se s kompletom in tukaj boste videli svoj napredek.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Preberi na glas: $field';
  }

  @override
  String get speechVoice => 'Glas';

  @override
  String get speechVoiceDefault => 'Samodejno';

  @override
  String get speechVoiceOnline => 'potreben je internet';

  @override
  String get speechTest => 'Preizkusi glas';

  @override
  String get importNext => 'Predogled';

  @override
  String get importPreviewTitle => 'Poveži stolpce s polji';

  @override
  String get importIgnoreColumn => 'Prezri';

  @override
  String importColumn(int n) {
    return 'Stolpec $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Pripravljenih kartic: $ready · preskočenih nepopolnih vrstic: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Izberite, kateri stolpci so sprednja in zadnja stran.';

  @override
  String get actionMoveUp => 'Premakni gor';

  @override
  String get actionMoveDown => 'Premakni dol';

  @override
  String get flashcardsLayoutTitle => 'Postavitev kartice';

  @override
  String get flashcardsLayoutHint =>
      'Preimenujte, skrijte ali prerazporedite dodatna polja tega kompleta. Vsebina kartic se nikoli ne spremeni.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Med učenjem pokaži $field';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Odgovor odkrivaj postopoma';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Najprej se prikaže zadnja stran; vsako dodatno polje se odpre s tapom.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Pokaži $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Ta datoteka je večja od $mb MB.';
  }

  @override
  String get flashcardsImage => 'Slika';

  @override
  String get flashcardsAudio => 'Zvok';

  @override
  String get flashcardsAddImage => 'Dodaj sliko';

  @override
  String get flashcardsAddAudio => 'Dodaj zvok';

  @override
  String get flashcardsPlayAudio => 'Predvajaj posnetek';

  @override
  String get flashcardsAudioUnavailable => 'Tega posnetka v tej napravi ni mogoče predvajati.';

  @override
  String get flashcardsCustomFields => 'Vaša polja';

  @override
  String get flashcardsTemplates => 'Predloge';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Polje $n';
  }

  @override
  String get flashcardsAddField => 'Dodaj polje';

  @override
  String get flashcardsFieldName => 'Ime polja';

  @override
  String get flashcardsFieldLangDefault => 'Jezik strani';

  @override
  String get flashcardsTemplateConfirm =>
      'Predloga določa, kako so polja prikazana, in doda svoja polja. Vaše kartice in obstoječa polja ostanejo nespremenjena.';

  @override
  String get flashcardsApplyTemplate => 'Uporabi';

  @override
  String get templateVocabulary => 'Besedišče';

  @override
  String get templateTwoTranslations => 'Beseda z dvema prevodoma';

  @override
  String get templateQuestionAnswer => 'Vprašanje in odgovor';

  @override
  String get templateDefinition => 'Pojem in definicija';

  @override
  String get templateGrammar => 'Slovnično pravilo';

  @override
  String get templateFieldPlural => 'Množina';

  @override
  String get templateFieldTranslation2 => 'Drugi prevod';

  @override
  String get templateFieldSynonyms => 'Sopomenke';

  @override
  String get templateFieldRule => 'Pravilo';

  @override
  String get deckCategory => 'Raven ali tema';

  @override
  String get deckCategoryHint => 'npr. A1, Medicina';

  @override
  String get flashcardsSearchAll => 'Išči po vseh karticah';

  @override
  String get flashcardsSearchAllHint => 'Beseda, prevod, primer, zapisek, oznaka …';

  @override
  String get flashcardsAllDecks => 'Vsi kompleti';

  @override
  String get flashcardsAllLanguages => 'Vsi jeziki';

  @override
  String get flashcardsLangUnset => 'Jezik ni nastavljen';

  @override
  String get flashcardsLevelUnset => 'Brez ravni ali teme';

  @override
  String get flashcardsByLanguage => 'Napredek po jezikih';

  @override
  String get flashcardsByLevel => 'Napredek po ravni ali temi';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Kompletov: $decks · kartic: $cards · naučenih: $mature · za ponavljanje: $due · pravilnih: $correct (30 dni)';
  }

  @override
  String get flashcardsRecord => 'Snemaj';

  @override
  String get flashcardsRecording => 'Snemanje …';

  @override
  String get flashcardsRecordStop => 'Ustavi in obdrži';

  @override
  String get flashcardsMicDenied =>
      'Dostop do mikrofona je izklopljen. Za snemanje ga dovolite v sistemskih nastavitvah.';

  @override
  String get flashcardsRecordFailed => 'Snemanje v tej napravi ni na voljo.';

  @override
  String get soundsTitle => 'Zvoki';

  @override
  String get soundsNature => 'Narava';

  @override
  String get soundsNoise => 'Šum za zbranost';

  @override
  String get soundRain => 'Dež';

  @override
  String get soundStorm => 'Nevihta';

  @override
  String get soundRiver => 'Reka';

  @override
  String get soundOcean => 'Morski valovi';

  @override
  String get soundFire => 'Taborni ogenj';

  @override
  String get soundForest => 'Gozdne ptice';

  @override
  String get soundNight => 'Poletna noč';

  @override
  String get soundWhite => 'Beli šum';

  @override
  String get soundPink => 'Rožnati šum';

  @override
  String get soundBrown => 'Rjavi šum';

  @override
  String get soundsPlay => 'Predvajaj';

  @override
  String get soundsSleep => 'Časovnik za spanje';

  @override
  String get soundsSleepOff => 'Izklopljeno';

  @override
  String soundsSleepAt(String time) {
    return 'Ustavi se ob $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Hkrati lahko igra največ $count zvokov.';
  }

  @override
  String get soundsHint =>
      'Tapnite zvok za začetek. Zmešajte več zvokov in vsakemu nastavite glasnost.';

  @override
  String get soundsMixer => 'Mešanica';

  @override
  String soundsVolumeOf(String name) {
    return 'Glasnost: $name';
  }

  @override
  String get soundsChannel => 'Zvoki narave';

  @override
  String get settingsEndTone => 'Zvok ob koncu časovnika';

  @override
  String get toneGentle => 'Nežni piski';

  @override
  String get toneBeeps => 'Piski';

  @override
  String get toneWood => 'Trkanje po lesu';

  @override
  String get toneBird => 'Ptičji klic';

  @override
  String get toneStream => 'Potok';

  @override
  String get toneSystem => 'Zvok telefona';

  @override
  String get speechOnPhone => 'V tem telefonu';

  @override
  String get speechAllLanguages => 'Vsi jeziki';

  @override
  String get speechSearchLanguage => 'Išči jezike';

  @override
  String get speechGetVoices => 'Prenesi več glasov';

  @override
  String get speechGetVoicesHint =>
      'Glasove za druge jezike lahko prenesete v nastavitvah govora v telefonu.';

  @override
  String get speechSettingsFailed => 'Nastavitev govora v tem telefonu ni bilo mogoče odpreti.';

  @override
  String get speechVoiceMissing => 'Glas ni nameščen';

  @override
  String get speechPause => 'Premor med ponovitvami';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Z odgovorom preberi tudi primer';

  @override
  String get flashListen => 'Poslušaj';

  @override
  String get flashListenNext => 'Naslednja kartica';

  @override
  String get flashListenEmpty => 'Ni kartic za poslušanje.';

  @override
  String get flashViewTable => 'Tabela';

  @override
  String get flashViewCards => 'Kartice';

  @override
  String get flashSwapSides => 'Zamenjaj stolpca';

  @override
  String get flashSort => 'Razvrsti';

  @override
  String get flashSortNewest => 'Najprej najnovejše';

  @override
  String get flashSortAlpha => 'Od A do Ž';

  @override
  String get flashSortDue => 'Najprej za ponavljanje';

  @override
  String get flashSortHard => 'Najprej najtežje';

  @override
  String get flashPasteCards => 'Prilepi kartice';

  @override
  String get flashClipboardEmpty => 'V odložišču ni besedila.';

  @override
  String get flashMenuAdd => 'Dodaj kartice';

  @override
  String get flashMenuDeck => 'Komplet';

  @override
  String get flashToday => 'Danes';

  @override
  String get flashStudyNow => 'Uči se';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odgovorjenih kartic',
      few: '$count odgovorjene kartice',
      two: '$count odgovorjeni kartici',
      one: '$count odgovorjena kartica',
      zero: 'Ni odgovorjenih kartic',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Dež v gozdu';

  @override
  String get autoBackupTitle => 'Samodejne varnostne kopije';

  @override
  String get autoBackupDesc => 'Vsak dan v tem telefonu; shranjenih je zadnjih 7';

  @override
  String get autoBackupHint =>
      'Te kopije ostanejo v tem telefonu in se odstranijo, če aplikacijo odstranite. Za prehod na nov telefon shranite datoteko z možnostjo »Varnostno kopiraj«.';

  @override
  String get autoBackupNone => 'Samodejne varnostne kopije še ni. Prva bo ustvarjena danes.';

  @override
  String get autoBackupRestore => 'Obnovi';

  @override
  String autoBackupConfirm(String date) {
    return 'Želite zamenjati vse trenutne podatke z varnostno kopijo z dne $date?';
  }

  @override
  String get autoBackupRestored => 'Obnovljeno.';

  @override
  String get errorLogTitle => 'Dnevnik napak';

  @override
  String get errorLogHint =>
      'Če gre kaj narobe, se tukaj zabeleži: samo vrsta napake in mesto v kodi, nikoli vaša vsebina. Delite ga, da pomagate odpraviti težavo.';

  @override
  String get errorLogEmpty => 'Ni zabeleženih napak.';

  @override
  String get errorLogClear => 'Počisti';

  @override
  String get soundsWithFocus => 'Predvajaj med sejami zbranosti';

  @override
  String get soundsWithFocusHint =>
      'Vaša mešanica se začne s sejo zbranosti in se med premori ustavi.';

  @override
  String get soundsSavedMixes => 'Shranjene mešanice';

  @override
  String get soundsSaveMix => 'Shrani to mešanico';

  @override
  String get soundsMixNameHint => 'Ime, npr. Deževna knjižnica';

  @override
  String soundsDeleteMix(String name) {
    return 'Želite izbrisati mešanico »$name«?';
  }

  @override
  String get settingsReviewReminderHint => 'Enkrat na dan, samo kadar so kartice za ponavljanje';

  @override
  String get settingsReviewTime => 'Čas opomnika';

  @override
  String get shortcutFocus => 'Zbranost';

  @override
  String get shortcutNewTask => 'Novo opravilo';

  @override
  String get shortcutReview => 'Ponovi kartice';

  @override
  String get shortcutSounds => 'Zvoki narave';

  @override
  String get myDayTitle => 'Začni moj dan';

  @override
  String get myDayHint => 'Vaš dan na prvi pogled, nato zbranost z enim tapom';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opravil za danes',
      few: '$count opravila za danes',
      two: '$count opravili za danes',
      one: '$count opravilo za danes',
      zero: 'Za danes ni opravil',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Danes ni več dogodkov';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Naslednje: $title ob $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ostalo je $count navad',
      few: 'Ostale so $count navade',
      two: 'Ostali sta $count navadi',
      one: 'Ostala je $count navada',
      zero: 'Vse navade so opravljene',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Začnite s sejo zbranosti';

  @override
  String get hijriMonth1 => 'Muharam';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-avval';

  @override
  String get hijriMonth4 => 'Rabi as-sani';

  @override
  String get hijriMonth5 => 'Džumada al-ula';

  @override
  String get hijriMonth6 => 'Džumada al-ahira';

  @override
  String get hijriMonth7 => 'Radžab';

  @override
  String get hijriMonth8 => 'Šaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Šaval';

  @override
  String get hijriMonth11 => 'Dul-kada';

  @override
  String get hijriMonth12 => 'Dul-hidža';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day. $month $year po hidžri';
  }

  @override
  String get settingsHijri => 'Datumi po hidžri';

  @override
  String get settingsHijriHint => 'Prikazano v koledarju in na začetnem zaslonu (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dni',
      few: '$count dni',
      two: '$count dneva',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Danes $done od $goal kartic';
  }

  @override
  String get studyGoalReached => 'Dnevni cilj je dosežen. Bravo!';

  @override
  String get studyWeekTitle => 'Vaš teden';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'V 7 dneh $count odgovorjenih kartic',
      few: 'V 7 dneh $count odgovorjene kartice',
      two: 'V 7 dneh $count odgovorjeni kartici',
      one: 'V 7 dneh $count odgovorjena kartica',
      zero: 'V 7 dneh ni odgovorjenih kartic',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration zbranosti v 7 dneh';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Niz: $current · Najboljši: $best';
  }

  @override
  String get studyGoalTitle => 'Dnevni cilj (kartice)';

  @override
  String get studyGoalOff => 'Izklopljeno';

  @override
  String get focusDndTitle => 'Ne moti med zbranostjo';

  @override
  String get focusDndHint => 'Vklopi se ob vsaki seji zbranosti in izklopi med premorom';

  @override
  String get focusDndNeedsAccess => 'Za uporabo dovolite dostop v nastavitvah telefona';

  @override
  String get voiceInput => 'Narekuj';

  @override
  String get voiceInputPrompt => 'Govorite zdaj';

  @override
  String get voiceInputUnavailable =>
      'Glasovni vnos v tem telefonu ni na voljo. Namestite ali vklopite storitev za govor (na primer Googlovo prepoznavanje in sintezo govora).';

  @override
  String get prayerFajr => 'Fadžr';

  @override
  String get prayerSunrise => 'Sončni vzhod';

  @override
  String get prayerDhuhr => 'Duhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Magrib';

  @override
  String get prayerIsha => 'Iša';

  @override
  String get prayerMethodMwl => 'Muslimanska svetovna liga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Meka';

  @override
  String get prayerMethodEgypt => 'Egiptovski splošni urad';

  @override
  String get prayerMethodJordan => 'Jordanija, ministrstvo za vakufe';

  @override
  String get prayerMethodKarachi => 'Univerza islamskih znanosti, Karači';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Regija Zaliva';

  @override
  String get prayerMethodKuwait => 'Kuvajt';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Turčija, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malezija, Indonezija';

  @override
  String get prayerMethodFrance => 'Francija (12°)';

  @override
  String get prayerMethodRussia => 'Rusija, Duhovna uprava';

  @override
  String prayerNotifTitle(String name) {
    return 'Čas za $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Čas molitve · $time';
  }

  @override
  String get prayerTitle => 'Časi molitev';

  @override
  String get prayerOffHint =>
      'Izberite svoje mesto, da vidite čase molitev. Izračunajo se v telefonu; dostop do lokacije ni potreben.';

  @override
  String get prayerChooseCity => 'Izberi mesto';

  @override
  String get prayerCity => 'Mesto';

  @override
  String get prayerCitySearch => 'Poiščite mesto';

  @override
  String get prayerMethod => 'Način izračuna';

  @override
  String get prayerHanafiAsr => 'Hanafitski asr (poznejši čas)';

  @override
  String get prayerReminders => 'Obvesti ob vsakem času molitve';

  @override
  String get prayerPauseFocus => 'Ob času molitve začasno ustavi zbranost';

  @override
  String get prayerPauseFocusHint => 'Seja v teku se začasno ustavi; nadaljujte po molitvi';

  @override
  String get prayerTurnOff => 'Izklopi čase molitev';

  @override
  String get prayerAccuracyNote =>
      'Izračunani časi se lahko za nekaj minut razlikujejo od vaše krajevne mošeje.';

  @override
  String prayerNext(String name, String time) {
    return '$name ob $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Ta datoteka Anki uporablja najnovejšo obliko. V Ankiju jo znova izvozite z vklopljeno možnostjo »Podpora starejšim različicam Ankija« in nato uvozite to datoteko.';

  @override
  String get importTemplate => 'Predloga preglednice';

  @override
  String get importTemplateFront => 'jabolko';

  @override
  String get importTemplateBack => 'okrogel sadež';

  @override
  String get importTemplateExample => 'Vsak dan pojem jabolko.';

  @override
  String get importTemplateTag => 'hrana';

  @override
  String get starterTitle => 'Začetni kompleti';

  @override
  String get starterHint =>
      'Dodajte enega in se takoj začnite učiti. Pozneje ga lahko uredite ali izbrišete.';

  @override
  String get starterAdd => 'Dodaj';

  @override
  String get starterWords => 'Vsakdanje angleške besede (arabščina)';

  @override
  String get starterCapitals => 'Prestolnice sveta';

  @override
  String get starterElements => 'Kemijski elementi';

  @override
  String get settingsAccent => 'Barva poudarka';

  @override
  String get accentViolet => 'Vijolična';

  @override
  String get accentBlue => 'Modra';

  @override
  String get accentTeal => 'Turkizna';

  @override
  String get accentGreen => 'Zelena';

  @override
  String get accentRose => 'Rožnata';

  @override
  String get accentAmber => 'Jantarna';

  @override
  String get settingsFlashTextSize => 'Velikost besedila na karticah';

  @override
  String get settingsFlashTextSample => 'Primer';

  @override
  String get widgetStartFocus => 'Tapnite za zbranost';

  @override
  String widgetFocusUntil(String time) {
    return 'Zbranost do $time';
  }

  @override
  String get widgetNoCardsDue => 'Kartice: vse opravljeno';

  @override
  String get faqMyDayQ => 'Kaj naredi »Začni moj dan«?';

  @override
  String get faqMyDayA =>
      'Enkrat na dan ga ponudi začetni zaslon: vidite današnja opravila, naslednji dogodek, preostale navade in kartice za ponavljanje, nato pa z enim tapom začnete sejo zbranosti. Pridržite ikono aplikacije za hitra dejanja ali dodajte pripomoček na začetni zaslon, da vidite čas zbranosti in kartice za ponavljanje.';

  @override
  String get faqTasksQ => 'Kako dodam opravilo z opomnikom?';

  @override
  String get faqTasksA =>
      'Tapnite »Novo opravilo« na Domov ali »+« v Opravilih. Vpišite naslov ali ga povejte v mikrofon, nato nastavite rok, čas in opomnik. Zamujena opravila so prikazana na vrhu.';

  @override
  String get faqFocusQ => 'Kako deluje časovnik zbranosti?';

  @override
  String get faqFocusA =>
      'Izberite Pomodoro, odštevanje ali prosti čas in pritisnite »Začni«; premori lahko sledijo samodejno. V nastavitvah lahko izberete zvok ob koncu, vklopite »Ne moti« med zbranostjo in ob vsaki seji predvajate zvoke narave.';

  @override
  String get faqSoundsQ => 'Ali lahko mešam zvoke narave?';

  @override
  String get faqSoundsA =>
      'Vklopite do šest pravih posnetkov, vsakemu nastavite glasnost in mešanico shranite pod imenom. Igrajo v ozadju, časovnik za spanje pa jih lahko ustavi. Glasba se ne uporablja.';

  @override
  String get faqCalendarQ => 'Ali lahko koledar prikazuje datume po hidžri?';

  @override
  String get faqCalendarA =>
      'Da. Datumi po hidžri (Umm al-Qura) se v arabščini prikažejo samodejno, v nastavitvah pa jih lahko vklopite za kateri koli jezik. Dogodki, opravila z rokom in mejniki projektov so prikazani skupaj.';

  @override
  String get faqFlashcardsQ => 'Kako ponavljanje odloči, katere kartice vidim?';

  @override
  String get faqFlashcardsA =>
      'Kartice, ki jih dobro znate, se vrnejo po daljših presledkih, tiste, ki jih zgrešite, pa kmalu (ponavljanje v presledkih). Vsak odgovor ocenite z »Znova«, »Težko«, »Dobro« ali »Lahko«. Nastavite dnevni cilj in ohranite niz na kartici »Danes«. V kompletu nastavite datum izpita, da vidite, koliko dni je še ostalo in koliko novih kartic se morate naučiti vsak dan. Razvrstite po »Moj vrstni red«, da kartice povlečete na mesto, tapnite zvočnik na kateri koli strani, da jo slišite, hitrost in ponovitve pa nastavite v meniju »Govor«.';

  @override
  String get faqImportQ => 'Ali lahko prenesem kartice iz Ankija ali Excela?';

  @override
  String get faqImportA =>
      'Da. V kompletu izberite »Uvozi«, nato datoteko: Anki (.apkg), Excel (.xlsx) ali CSV, in povežite stolpce. S »Predlogo preglednice« lahko kartice pišete v računalniku. Slike in zvoki v datotekah Anki se ne uvozijo.';

  @override
  String get faqNotesQ => 'Kaj zmorejo zapiski?';

  @override
  String get faqNotesA =>
      'Pišite prosto s kontrolnimi seznami in oblikovanjem, pripnite pomembne zapiske ali jih označite kot priljubljene, dodajte oznake in povežite zapiske z opravili. Z gumbom za mikrofon lahko narekujete. Nov zapisek se lahko začne iz predloge (predavanje, povzetek knjige, dnevnik, tedenski načrt), gumb za sliko pa doda fotografije.';

  @override
  String get faqHabitsQ => 'Kako se štejejo nizi navad?';

  @override
  String get faqHabitsA =>
      'Dan šteje, ko na načrtovani dan dosežete cilj navade. Začasna ustavitev navade ohrani niz. Vsaka navada ima lahko svoj čas opomnika.';

  @override
  String get faqGoalsQ => 'Kako cilji spremljajo napredek?';

  @override
  String get faqGoalsA =>
      'Cilju določite ciljno vrednost in enoto, nato beležite napredek. Njegova kartica pokaže, kako daleč ste in koliko je še do roka.';

  @override
  String get faqProjectsQ => 'Čemu so namenjeni projekti?';

  @override
  String get faqProjectsA =>
      'Združite opravila v projekt, dodajte mejnike z datumi in spremljajte skupni napredek. Mejniki so prikazani tudi v koledarju.';

  @override
  String get faqInsightsQ => 'Kaj prikazujejo Vpogledi?';

  @override
  String get faqInsightsA =>
      'Vaš čas zbranosti, končana opravila in učenje po dnevih in tednih, z nežnimi predlogi. Vse se izračuna v vašem telefonu.';

  @override
  String get faqSpacesQ => 'Kje so vsi deli?';

  @override
  String get faqSpacesA =>
      'Prostori naštejejo vse dele aplikacije (zapiske, komplete, navade, cilje, projekte, zvoke in drugo), tako da glavna vrstica ostane preprosta.';

  @override
  String get faqBackupQ => 'Kako se varnostno kopirajo moji podatki?';

  @override
  String get faqBackupA =>
      'Aplikacija vsak dan neopazno shrani šifrirano kopijo v ta telefon in obdrži zadnjih 7. V nastavitvah lahko izvozite tudi z geslom zaščiteno datoteko varnostne kopije in jo obnovite v drugem telefonu.';

  @override
  String get faqPrayerQ => 'Kako delujejo časi molitev?';

  @override
  String get faqPrayerA =>
      'Izberite svoje mesto v Nastavitve → Časi molitev. Časi se izračunajo v telefonu po metodi, ki se uporablja tam, metodo in šolo za asr pa lahko spremenite. Za vsako molitev lahko prejmete obvestilo, seja zbranosti v teku pa se začasno ustavi.';

  @override
  String get faqPrivacyQ => 'Kje so shranjeni moji podatki?';

  @override
  String get faqPrivacyA =>
      'Samo v vašem telefonu, v šifrirani zbirki podatkov. Brez računa in brez sledenja. Internet uporabljajo samo funkcije, ki jih vklopite sami, na primer neobvezni pomočnik.';

  @override
  String get faqAssistantQ => 'Kaj je pomočnik?';

  @override
  String get faqAssistantA =>
      'Neobvezen pomočnik, ki ga v nastavitvah povežete s svojo storitvijo UI. Privzeto je izklopljen in vpraša, preden pošlje kakršno koli besedilo zapiska.';

  @override
  String get tourPlanTitle => 'Načrtujte svoj dan';

  @override
  String get tourPlanBody =>
      'Opravila, koledar in navade na enem mirnem mestu. Vsako jutro začnite z »Začni moj dan«.';

  @override
  String get tourFocusTitle => 'Poglobljena zbranost';

  @override
  String get tourFocusBody =>
      'Seje s časovnikom, pravi zvoki narave, »Ne moti« in nežni zvoki ob koncu.';

  @override
  String get tourLearnTitle => 'Naučite se za vedno';

  @override
  String get tourLearnBody =>
      'Kartice s ponavljanjem v presledkih, branje na glas v mnogih jezikih in uvoz iz Ankija ali Excela.';

  @override
  String get helpTitle => 'Pomoč in vprašanja';

  @override
  String get helpOpen => 'Odpri';

  @override
  String get helpTour => 'Oglejte si predstavitev';

  @override
  String get tourNext => 'Naprej';

  @override
  String get tourDone => 'Začnimo';

  @override
  String get transferColTitle => 'Naslov';

  @override
  String get transferColNotes => 'Zapiski';

  @override
  String get transferColBody => 'Besedilo';

  @override
  String get transferColDue => 'Rok';

  @override
  String get transferColPriority => 'Prednost (0-3)';

  @override
  String get transferColDone => 'Končano';

  @override
  String get transferColProject => 'Projekt';

  @override
  String get transferColCategory => 'Kategorija';

  @override
  String get transferTitle => 'Uvoz in izvoz';

  @override
  String get transferSaveAs => 'Shrani kot';

  @override
  String get transferImport => 'Uvozi iz datoteke';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV ali tabela v Wordu. Stolpci: naslov, rok (2026-12-31), prednost 0-3, končano, projekt, zapiski. Opravila, ki so že v aplikaciji, so preskočena.';

  @override
  String get transferImportNotesHint =>
      'Datoteke Word, Markdown ali besedilne datoteke postanejo zapisek. Excel ali CSV: en zapisek na vrstico (naslov, besedilo).';

  @override
  String get transferSaved => 'Datoteka je shranjena';

  @override
  String get transferFailed => 'Datoteke ni bilo mogoče ustvariti. Nič ni bilo spremenjeno.';

  @override
  String get transferUnsupported =>
      'Te datoteke tukaj ni mogoče prebrati. Uporabite Excel, CSV, Word, Markdown ali besedilo.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Dodano: $added',
      few: 'Dodano: $added',
      two: 'Dodano: $added',
      one: 'Dodano: $added',
      zero: 'Nič novega za dodajanje',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Besedilo';

  @override
  String get transferAllNotes => 'Vsi zapiski';

  @override
  String get transferThisNote => 'Ta zapisek';

  @override
  String get transferDeckFormats => 'Shrani kot Excel, Word ali PDF';

  @override
  String get faqFilesQ => 'Ali lahko uporabljam datoteke Excel, Word ali PDF?';

  @override
  String get faqFilesA =>
      'Da. Opravila in Zapiski imajo na vrhu gumb za uvoz in izvoz (dve puščici), vsak komplet pa ga ima v svojem meniju. Shranite kot Excel, CSV, Word ali PDF ali uvozite datoteke Excel, CSV, Word, Markdown ali besedilne datoteke. Imena stolpcev so lahko v katerem koli jeziku aplikacije, shranjene datoteke pa lahko vedno znova uvozite.';

  @override
  String get tplLecture => 'Predavanje';

  @override
  String get tplBook => 'Povzetek knjige';

  @override
  String get tplJournal => 'Dnevnik';

  @override
  String get tplWeek => 'Tedenski načrt';

  @override
  String get tplLectureBody => '## Ključne točke\n- \n\n## Vprašanja\n- [ ] \n\n## Povzetek\n';

  @override
  String get tplBookBody =>
      '## Glavna misel\n\n## Kaj sem se naučil\n- \n\n## Citati\n> \n\n## Za uporabo\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Hvaležen sem za\n- \n\n## Današnji fokus\n- [ ] \n\n## Zapiski\n';

  @override
  String get tplWeekBody =>
      '## Cilji tega tedna\n- [ ] \n\n### Sobota\n- [ ] \n\n### Nedelja\n- [ ] \n\n### Ponedeljek\n- [ ] \n\n### Torek\n- [ ] \n\n### Sreda\n- [ ] \n\n### Četrtek\n- [ ] \n\n### Petek\n- [ ] \n';

  @override
  String get tplHint => 'Začnite iz predloge';

  @override
  String get noteImage => 'Slika';

  @override
  String get noteAddImage => 'Dodaj sliko';

  @override
  String get noteImageUnreadable => 'Ta datoteka ni slika, ki jo aplikacija lahko prebere.';

  @override
  String get noteImageTooLarge => 'Ta slika je prevelika.';

  @override
  String get examSet => 'Nastavi datum izpita';

  @override
  String get examDate => 'Datum izpita';

  @override
  String get examToday => 'Izpit je danes. Srečno!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izpit čez $count dni',
      few: 'Izpit čez $count dni',
      two: 'Izpit čez $count dneva',
      one: 'Izpit čez $count dan',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'naučite se $count novih kartic na dan',
      few: 'naučite se $count nove kartice na dan',
      two: 'naučite se $count novi kartici na dan',
      one: 'naučite se $count novo kartico na dan',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'vse kartice so naučene, nadaljujte s ponavljanjem';

  @override
  String examRaiseLimit(int count) {
    return 'Prikaži nove kartice na dan: $count';
  }

  @override
  String get backupDriveHint =>
      'Če želite kopijo hraniti na spletu, na zaslonu za shranjevanje, ki se odpre, izberite Google Drive (ali drugo aplikacijo v oblaku).';

  @override
  String get flashShareDeck => 'Deli komplet s prijateljem';

  @override
  String get flashSortManual => 'Moj vrstni red (vlečenje)';

  @override
  String get flashReorderHint => 'Pridržite ročico in povlecite kartico, da jo premaknete.';

  @override
  String get flashReorderNeedsAll => 'Počistite iskanje in filtre, da lahko vlečete kartice.';

  @override
  String get flashDragHandle => 'Povlecite za premik';

  @override
  String get reportTitle => 'Mesečno poročilo';

  @override
  String get reportFocus => 'Čas zbranosti';

  @override
  String reportSessions(int count) {
    return 'Seje: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Najboljši dan: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Aktivni dnevi: $count';
  }

  @override
  String get reportCards => 'Ponovljene kartice';

  @override
  String reportCardsKnown(String percent) {
    return 'Zapomnjeno: $percent';
  }

  @override
  String get reportTasks => 'Končana opravila';

  @override
  String get reportHabits => 'Označene navade';

  @override
  String get reportEmpty => 'Ta mesec še ni nič zabeleženo.';

  @override
  String get reportSave => 'Shrani kot PDF ali Word';

  @override
  String get reportPrevMonth => 'Prejšnji mesec';

  @override
  String get reportNextMonth => 'Naslednji mesec';

  @override
  String get careTitle => 'Skrb za telefon in podatke';

  @override
  String get storageTitle => 'Shramba';

  @override
  String get storageSubtitle => 'Kaj zaseda prostor in čiščenje neuporabljenih slik';

  @override
  String get storagePictures => 'Slike v zapiskih';

  @override
  String get storageCardMedia => 'Slike in zvok na karticah';

  @override
  String get storageText => 'Besedilo zapiskov';

  @override
  String get storageFree => 'Prosto v telefonu';

  @override
  String get storageLow =>
      'Telefon je skoraj poln. Sprostite nekaj prostora, da bodo varnostne kopije in opomniki še naprej delovali.';

  @override
  String storageUnused(int count, String size) {
    return 'Neuporabljene slike: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Ni neuporabljenih slik. Vse je urejeno.';

  @override
  String get storageClean => 'Odstrani neuporabljene slike';

  @override
  String storageCleaned(int count) {
    return 'Odstranjene slike: $count';
  }

  @override
  String get storageHint =>
      'Slika velja za neuporabljeno samo, če je ne prikazuje noben zapisek, vključno z zapiski v smeteh.';

  @override
  String get batteryTitle => 'Naj opomniki delujejo';

  @override
  String get batterySubtitle =>
      'Nekateri telefoni ustavijo aplikacije v ozadju. Preverite svojega.';

  @override
  String get batteryStatusOk =>
      'Varčevanje z baterijo ne omejuje te aplikacije. Opomniki in zvoki bi morali prihajati pravočasno.';

  @override
  String get batteryStatusLimited =>
      'Varčevanje z baterijo lahko ustavi to aplikacijo v ozadju, zato lahko opomniki in zvoki zamujajo ali manjkajo.';

  @override
  String get batteryOpen => 'Odpri nastavitve baterije';

  @override
  String get batteryOpenApp => 'Odpri nastavitve aplikacije';

  @override
  String get batteryGeneric =>
      'V nastavitvah baterije izberite to aplikacijo in nastavite »Brez omejitev« (ali »Ne optimiziraj«).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: odprite tudi Varnost › Dovoljenja › Samodejni zagon in vklopite to aplikacijo, varčevanje z baterijo pa nastavite na »Brez omejitev«.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: odprite Baterija › ta aplikacija in dovolite dejavnost v ozadju in samodejni zagon; zaklenite aplikacijo na seznamu nedavnih.';

  @override
  String get batterySamsung =>
      'Samsung: Baterija › Omejitve uporabe v ozadju: odstranite to aplikacijo iz aplikacij v stanju spanja in globokega spanja.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Zagon aplikacij › ta aplikacija › ročno upravljanje in dovolite samodejni zagon, sekundarni zagon in delovanje v ozadju.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Baterija › Poraba energije v ozadju › dovolite to aplikacijo in v dovoljenjih vklopite samodejni zagon.';

  @override
  String get whatsNewTitle => 'Kaj je novega';

  @override
  String get whatsNewSubtitle => 'Zadnje spremembe v nekaj vrsticah';

  @override
  String get whatsNewDone => 'Razumem';

  @override
  String get whatsNewOrderTitle => 'Razvrstite kartice po svoje';

  @override
  String get whatsNewOrderBody =>
      'V kompletu izberite Razvrsti › Moj vrstni red, nato pridržite ročico in povlecite.';

  @override
  String get whatsNewSpeechTitle => 'Zvočnik na vsaki strani kartice';

  @override
  String get whatsNewSpeechBody =>
      'Tapnite ga, da slišite besedo ali prevod. Hitrost, ponovitve in glas so v meniju ponavljanja. Jezik se zazna iz besedila.';

  @override
  String get whatsNewReportTitle => 'Mesečno poročilo';

  @override
  String get whatsNewReportBody =>
      'V Vpogledih tapnite ikono poročila, da vidite mesec in ga shranite kot PDF ali Word.';

  @override
  String get whatsNewCareTitle => 'Skrb za telefon in podatke';

  @override
  String get whatsNewCareBody =>
      'Nastavitve imajo zdaj stran shrambe s čiščenjem slik in vodnikom za baterijo za znamko vašega telefona.';

  @override
  String get whatsNewSoundTitle => 'Mirnejši zvoki';

  @override
  String get whatsNewSoundBody => 'Zvoki narave so mehkejši in tišji, kartice s slikami pa lepše.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Preverjeno $date: zadnja varnostna kopija se pravilno odpre.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Preverjeno $date: najdena je bila poškodovana varnostna kopija in zamenjana z novo.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Preverjeno $date: zadnje varnostne kopije ni bilo mogoče odpreti. V nastavitvah sami shranite datoteko varnostne kopije.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Običajno se učite okoli $time';
  }

  @override
  String get smartReviewTimeUse => 'Uporabi';

  @override
  String get widgetNewNote => 'Nov zapisek';

  @override
  String get noteConnections => 'Oznake, povezave in opravila';

  @override
  String get navCards => 'Kartice';

  @override
  String get studyAnswerWay => 'Kako odgovarjati';

  @override
  String get studyMorePractice => 'Dodatna vaja';

  @override
  String get studySessionSettings => 'Nastavitve seje';

  @override
  String get focusAdjustTitle => 'Vaša seja';

  @override
  String get focusPresetsTitle => 'Pripravljene';

  @override
  String get focusPresetStudy => 'Učenje';

  @override
  String get focusPresetDeep => 'Poglobljeno delo';

  @override
  String get focusPresetQuick => 'Hiter šprint';

  @override
  String get focusPresetReading => 'Branje';

  @override
  String get focusPresetWorkout => 'Krogi vadbe';

  @override
  String get focusAdjustMinutes => 'Dolžina zbranosti';

  @override
  String get focusAdjustBreak => 'Dolžina premora';

  @override
  String get focusAdjustRounds => 'Krogi';

  @override
  String get focusRoundsOpen => 'Brez omejitve';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Tapnite za spremembo časa';

  @override
  String get flashArrangeDecks => 'Uredi komplete';

  @override
  String get flashDeckActions => 'Možnosti kompleta';

  @override
  String get starterBrowse => 'Pripravljeni kompleti';

  @override
  String get starterBrowseHint => 'Dodajte enega z enim tapom in se začnite učiti';

  @override
  String get dashOpenDecks => 'Odprite svoje kartice';

  @override
  String speechVoiceNumber(String n) {
    return 'Glas $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Odličen tok. Počitek $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Začni premor';

  @override
  String tasksFinishAt(String time) {
    return 'Začnite zdaj in vse boste končali do $time';
  }

  @override
  String get focusCalmPacing => 'Miren ritem';

  @override
  String get focusCalmPacingHint => 'Samo cele minute in obroč, brez sekund';

  @override
  String get focusFlipHint => 'Obrnite telefon z zaslonom navzdol za začetek';

  @override
  String get focusImmersive => 'Poglobljeni način';

  @override
  String get focusImmersiveBlack => 'Čisto črna (varčuje z baterijo)';

  @override
  String get focusFlipToFocus => 'Obrni za zbranost';

  @override
  String get focusFlipToFocusHint =>
      'V poglobljenem načinu: z zaslonom navzdol se začne, ko ga dvignete, se začasno ustavi';

  @override
  String get guardTitle => 'Zaščita pred motnjami';

  @override
  String get guardSubtitle => 'Začasno ustavite moteče aplikacije med zbranostjo';

  @override
  String get guardSwitch => 'Začasno ustavi moteče aplikacije';

  @override
  String get guardSwitchHint => 'Med sejami zbranosti in v urah Časovne zaščite';

  @override
  String get guardNeedsAccess => 'Potrebno je stikalo za dostopnost: tapnite, da ga vklopite';

  @override
  String get guardDisclosureTitle => 'Kako deluje zaščita';

  @override
  String get guardDisclosureBody =>
      'Da lahko začasno ustavi aplikacije, ki jih izberete, Deep Focus uporablja Androidovo storitev za dostopnost, da vidi, katera aplikacija je odprta. Ko je vklopljeno »Zapri Shorts in Reels«, preveri tudi, ali je na zaslonu predvajalnik kratkih videoposnetkov.\n\nNe bere nobenega besedila, ne shrani ničesar, kar vidi, in ničesar ne pošilja: vse ostane v vašem telefonu. Kadar koli jo lahko izklopite v nastavitvah dostopnosti.';

  @override
  String get guardAgree => 'Strinjam se, odpri nastavitve';

  @override
  String get guardModeGentle => 'Blagi';

  @override
  String get guardModeStrict => 'Strogi';

  @override
  String get guardGentleHint => '5-sekundni premor za dih, nato se odločite sami';

  @override
  String get guardStrictHint => 'Izbrane aplikacije ostanejo zaprte do konca časa zbranosti';

  @override
  String get guardApps => 'Aplikacije za ustavitev';

  @override
  String get guardAppsAllowed => 'Dovoljene aplikacije';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikacij',
      few: '$count aplikacije',
      two: '$count aplikaciji',
      one: '$count aplikacija',
      zero: 'Še nič izbranega',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Dovoli samo izbrane aplikacije';

  @override
  String get guardAllowlistHint =>
      'Vse druge aplikacije so začasno ustavljene; klici, nastavitve in tipkovnica vedno delujejo';

  @override
  String get guardShorts => 'Zapri Shorts in Reels';

  @override
  String get guardShortsHint =>
      'Kadar koli je zaščita vklopljena. Brez jamstva: te aplikacije se pogosto spreminjajo';

  @override
  String get guardSchedule => 'Časovna zaščita';

  @override
  String get guardScheduleHint => 'Ščiti tudi na izbrane dni in ure, na primer v šoli ali službi';

  @override
  String get guardFrom => 'Od';

  @override
  String get guardTo => 'Do';

  @override
  String get guardSearchApps => 'Poišči aplikacije';

  @override
  String get guardNoApps => 'Ni najdenih aplikacij';

  @override
  String get guardPrivacy =>
      'Deluje samo v vašem telefonu: zaščita vidi, katera aplikacija je odprta, nikoli pa, kaj je v njej, in ničesar ne pošilja.';

  @override
  String get guardBreathe => 'Vdih… in izdih';

  @override
  String get guardQuestion => 'Ali to aplikacijo zdaj potrebujete?';

  @override
  String get guardBackToFocus => 'Nazaj k zbranosti';

  @override
  String get guardOpenFive => 'Odpri za 5 minut';

  @override
  String get guardStrictBody => 'Ta aplikacija je začasno ustavljena do konca časa zbranosti.';

  @override
  String get guardShortsClosed => 'Kratki videoposnetki se zaprejo, dokler je zaščita vklopljena';

  @override
  String get faqGuardQ => 'Kako ustavim moteče aplikacije med zbranostjo?';

  @override
  String get faqGuardA =>
      'Odprite Zbranost → nastavitve časovnika → Zaščita pred motnjami. Izberite aplikacije, nato Blagi (5 sekund dihanja in vprašanje »Ali to aplikacijo zdaj potrebujete?«) ali Strogi (ostanejo zaprte). Deluje med sejami zbranosti in s Časovno zaščito na dneve in ure, ki jih nastavite. »Dovoli samo izbrane aplikacije« začasno ustavi vse drugo; klici, nastavitve in tipkovnica vedno delujejo. Android vas enkrat prosi, da zaščito vklopite v nastavitvah dostopnosti. Vidi samo, katera aplikacija je odprta, in ničesar ne pošilja.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Premaknjeno v »$name«';
  }

  @override
  String get notesDragHint => 'Pridržite zapisek in ga povlecite na zvezek';

  @override
  String get guardReviewCards => 'Raje ponovi kartice';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Čaka vas $count kartic',
      few: 'Čakajo vas $count kartice',
      two: 'Čakata vas $count kartici',
      one: 'Čaka vas $count kartica',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Nujno: pridržite 10 sekund';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Še naprej držite… $n';
  }

  @override
  String get guardWeekTitle => 'Ta teden';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count premorov',
      few: '$count premori',
      two: '$count premora',
      one: '$count premor',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nazaj k zbranosti $count-krat',
      few: 'nazaj k zbranosti $count-krat',
      two: 'nazaj k zbranosti $count-krat',
      one: 'nazaj k zbranosti $count-krat',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Preimenuj besede';

  @override
  String get wordsSubtitle => 'Svoja beseda za katero koli besedilo v aplikaciji';

  @override
  String get wordsHint =>
      'Tapnite besedilo, da ga spremenite. Vaše besede veljajo samo za ta jezik in se ohranijo v varnostnih kopijah.';

  @override
  String get wordsSearch => 'Poišči besedila';

  @override
  String get wordsChangedOnly => 'Samo spremenjena';

  @override
  String wordsOriginal(String text) {
    return 'Izvirnik: $text';
  }

  @override
  String get wordsReset => 'Uporabi izvirnik';

  @override
  String get wordsResetAll => 'Ponastavi vse besede';

  @override
  String get wordsResetAllConfirm => 'Vsa besedila v tem jeziku se vrnejo na izvirnik.';

  @override
  String get wordsNone => 'Besedila ni bilo mogoče najti';

  @override
  String get settingsLanguageSearch => 'Poišči jezike';

  @override
  String get settingsLanguageNoMatch => 'Noben jezik se ne ujema';

  @override
  String get soundsMyMusic => 'Vaša glasba';

  @override
  String get soundsMusicHint =>
      'Predvajajte zvočno datoteko iz telefona. Nič se ne kopira ali naloži.';

  @override
  String get soundsChooseMusic => 'Izberi zvok';

  @override
  String get soundsRemoveMusic => 'Odstrani glasbo';
}
