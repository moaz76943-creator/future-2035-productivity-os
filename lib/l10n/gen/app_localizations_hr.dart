// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Početna';

  @override
  String get navTasks => 'Zadaci';

  @override
  String get navFocus => 'Fokus';

  @override
  String get navCalendar => 'Kalendar';

  @override
  String get navSpaces => 'Prostori';

  @override
  String get moduleProjects => 'Projekti';

  @override
  String get moduleNotes => 'Bilješke';

  @override
  String get moduleFlashcards => 'Kartice';

  @override
  String get moduleGoals => 'Ciljevi';

  @override
  String get moduleHabits => 'Navike';

  @override
  String get moduleAnalytics => 'Uvidi';

  @override
  String get moduleSearch => 'Pretraživanje';

  @override
  String get moduleAssistant => 'Asistent';

  @override
  String get moduleSettings => 'Postavke';

  @override
  String get moduleTrash => 'Smeće';

  @override
  String get actionSave => 'Spremi';

  @override
  String get actionCancel => 'Odustani';

  @override
  String get actionDelete => 'Izbriši';

  @override
  String get actionEdit => 'Uredi';

  @override
  String get actionDone => 'Gotovo';

  @override
  String get actionAdd => 'Dodaj';

  @override
  String get actionCreate => 'Izradi';

  @override
  String get actionClose => 'Zatvori';

  @override
  String get actionBack => 'Natrag';

  @override
  String get actionUndo => 'Poništi';

  @override
  String get actionRestore => 'Vrati';

  @override
  String get actionRetry => 'Pokušaj ponovno';

  @override
  String get actionContinue => 'Nastavi';

  @override
  String get actionSkip => 'Preskoči';

  @override
  String get actionArchive => 'Arhiviraj';

  @override
  String get actionUnarchive => 'Vrati iz arhive';

  @override
  String get actionPin => 'Prikvači';

  @override
  String get actionUnpin => 'Otkvači';

  @override
  String get actionMore => 'Više mogućnosti';

  @override
  String get actionClear => 'Očisti';

  @override
  String get actionSearch => 'Traži';

  @override
  String get actionSort => 'Poredaj';

  @override
  String get actionShare => 'Dijeli';

  @override
  String get actionImport => 'Uvezi';

  @override
  String get actionExport => 'Izvezi';

  @override
  String get actionPause => 'Pauziraj';

  @override
  String get actionResume => 'Nastavi';

  @override
  String get actionStart => 'Pokreni';

  @override
  String get actionStop => 'Zaustavi';

  @override
  String get actionComplete => 'Završi';

  @override
  String get actionDeleteForever => 'Izbriši zauvijek';

  @override
  String get actionEmptyTrash => 'Isprazni smeće';

  @override
  String get actionUnlink => 'Odspoji';

  @override
  String get actionCustomize => 'Prilagodi';

  @override
  String get actionPreview => 'Pregled';

  @override
  String get actionLog => 'Zabilježi napredak';

  @override
  String get stateLoading => 'Učitavanje…';

  @override
  String get stateSaving => 'Spremanje…';

  @override
  String get stateSaved => 'Spremljeno';

  @override
  String get stateUnsaved => 'Nespremljene promjene';

  @override
  String get errorGenericTitle => 'Nešto nije u redu';

  @override
  String get errorGenericMessage => 'Tvoji su podaci sigurni. Pokušaj ponovno.';

  @override
  String get errorLoadFailed => 'Ovaj sadržaj nije moguće učitati.';

  @override
  String get errorSaveFailed => 'Spremanje nije uspjelo. Tvoje promjene su još tu.';

  @override
  String get validationRequired => 'Ovo polje je obavezno';

  @override
  String get validationTitleRequired => 'Unesi naslov';

  @override
  String get validationNameRequired => 'Unesi naziv';

  @override
  String get validationTooLong => 'Ovo je predugo';

  @override
  String get validationEndBeforeStart => 'Kraj mora biti nakon početka';

  @override
  String get validationStartAfterDue => 'Datum početka mora biti prije roka';

  @override
  String get validationPositiveNumber => 'Unesi broj veći od nule';

  @override
  String get validationDependencyCycle => 'Tako bi nastala kružna ovisnost';

  @override
  String get validationInvalidRepeat => 'Ovo pravilo ponavljanja nije valjano';

  @override
  String get deletedItem => 'Premješteno u smeće';

  @override
  String get untitled => 'Bez naslova';

  @override
  String get noProject => 'Bez projekta';

  @override
  String get greetingMorning => 'Dobro jutro';

  @override
  String get greetingAfternoon => 'Dobar dan';

  @override
  String get greetingEvening => 'Dobra večer';

  @override
  String get dashFocusToday => 'Današnji fokus';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done od $target';
  }

  @override
  String get dashStartFocus => 'Pokreni fokus';

  @override
  String get dashFocusRunning => 'Sesija u tijeku';

  @override
  String get dashTodayTasks => 'Rok danas';

  @override
  String get dashAgenda => 'Raspored';

  @override
  String get dashHabits => 'Današnje navike';

  @override
  String get dashGoals => 'Ciljevi';

  @override
  String get dashReview => 'Ponavljanje';

  @override
  String get dashRecentNotes => 'Nedavne bilješke';

  @override
  String get dashInsight => 'Prijedlog';

  @override
  String get dashSeeAll => 'Prikaži sve';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartica za ponavljanje',
      few: '$count kartice za ponavljanje',
      one: '$count kartica za ponavljanje',
      zero: 'Nema kartica za ponavljanje',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Ponovi sada';

  @override
  String get dashCustomizeTitle => 'Dijelovi početne stranice';

  @override
  String get dashCustomizeHint => 'Odaberi što se prikazuje na početnom zaslonu.';

  @override
  String get dashSectionFocus => 'Fokus';

  @override
  String get dashSectionToday => 'Današnji zadaci';

  @override
  String get dashSectionAgenda => 'Raspored';

  @override
  String get dashSectionHabits => 'Navike';

  @override
  String get dashSectionGoals => 'Ciljevi';

  @override
  String get dashSectionReview => 'Ponavljanje kartica';

  @override
  String get dashSectionNotes => 'Nedavne bilješke';

  @override
  String get dashSectionInsight => 'Prijedlozi';

  @override
  String get quickAddTask => 'Novi zadatak';

  @override
  String get quickAddNote => 'Nova bilješka';

  @override
  String get quickAddEvent => 'Novi događaj';

  @override
  String get quickStartFocus => 'Fokus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Imaš $count zakašnjelih zadataka. Počni s najvažnijim.',
      few: 'Imaš $count zakašnjela zadatka. Počni s najvažnijim.',
      one: 'Imaš $count zakašnjeli zadatak. Počni s najvažnijim.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Do dnevnog cilja fokusa nedostaje ti još $minutes min.';
  }

  @override
  String get insightCardsDue => 'Ponovi kartice sada, dok su ti još svježe.';

  @override
  String get insightAllClear => 'Sve ide po planu. Isplaniraj sutrašnji dan ili uzmi mirnu pauzu.';

  @override
  String insightHabitStreak(String habit) {
    return 'Zadrži niz: $habit danas još čeka.';
  }

  @override
  String get focusTitle => 'Fokus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Odbrojavanje';

  @override
  String get focusModeCountUp => 'Štoperica';

  @override
  String get focusModeOpen => 'Slobodno';

  @override
  String get focusPhaseWork => 'Fokus';

  @override
  String get focusPhaseShortBreak => 'Kratka pauza';

  @override
  String get focusPhaseLongBreak => 'Duga pauza';

  @override
  String get focusReady => 'Spremno kad i ti';

  @override
  String get focusPaused => 'Pauzirano';

  @override
  String get focusRunning => 'U fokusu';

  @override
  String get focusDuration => 'Trajanje';

  @override
  String get focusLinkTask => 'Poveži zadatak';

  @override
  String get focusLinkedTask => 'Radim na';

  @override
  String get focusNoTask => 'Nema povezanog zadatka';

  @override
  String focusCycle(int current, int total) {
    return 'Krug $current od $total';
  }

  @override
  String get focusSkipBreak => 'Preskoči pauzu';

  @override
  String get focusStartBreak => 'Pokreni pauzu';

  @override
  String get focusStartNext => 'Pokreni sljedeći fokus';

  @override
  String get focusSessionComplete => 'Sesija završena';

  @override
  String get focusSessionStopped => 'Sesija spremljena';

  @override
  String focusSessionSummary(String duration) {
    return 'Bio si u fokusu $duration.';
  }

  @override
  String get focusAddNote => 'Dodaj bilješku o ovoj sesiji';

  @override
  String get focusHistory => 'Povijest';

  @override
  String get focusNoHistory => 'Završene sesije pojavit će se ovdje';

  @override
  String get focusOutcomeCompleted => 'Završeno';

  @override
  String get focusOutcomeInterrupted => 'Prekinuto ranije';

  @override
  String get focusRecovered => 'Sesija se nastavila dok je aplikacija bila zatvorena.';

  @override
  String get focusCompletedWhileAway =>
      'Sesija je završila dok je aplikacija bila zatvorena i spremljena je.';

  @override
  String get focusNotificationsOff =>
      'Obavijesti su isključene. Nećeš biti upozoren kad sesija završi.';

  @override
  String get focusBatteryHint =>
      'Neki uređaji pauziraju aplikacije u pozadini. Mjerač vremena ostaje točan, ali upozorenja mogu kasniti. Za pouzdana upozorenja dopusti neograničenu potrošnju baterije.';

  @override
  String get focusOpenSettings => 'Otvori postavke';

  @override
  String get focusStopConfirmTitle => 'Zaustaviti ovu sesiju?';

  @override
  String get focusStopConfirmMessage => 'Dosadašnje vrijeme fokusa bit će spremljeno.';

  @override
  String get focusDiscard => 'Odbaci';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuta',
      few: '$minutes minute',
      one: '$minutes minuta',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, preostalo $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, prošlo $time';
  }

  @override
  String get focusDeleteSession => 'Izbriši sesiju';

  @override
  String get tasksTitle => 'Zadaci';

  @override
  String get tasksViewToday => 'Danas';

  @override
  String get tasksViewUpcoming => 'Nadolazeći';

  @override
  String get tasksViewAll => 'Svi';

  @override
  String get tasksViewOverdue => 'Zakašnjeli';

  @override
  String get tasksViewCompleted => 'Završeni';

  @override
  String get tasksQuickAddHint => 'Dodaj zadatak…';

  @override
  String get tasksEmptyTitle => 'Sve je gotovo';

  @override
  String get tasksEmptyMessage => 'Dodaj zadatak i oblikuj svoj dan.';

  @override
  String get tasksEmptyCompleted => 'Završeni zadaci pojavit će se ovdje.';

  @override
  String get taskNew => 'Novi zadatak';

  @override
  String get taskEdit => 'Uredi zadatak';

  @override
  String get taskTitleLabel => 'Naslov';

  @override
  String get taskTitleHint => 'Što treba učiniti?';

  @override
  String get taskDescriptionLabel => 'Opis';

  @override
  String get taskNotesLabel => 'Bilješke';

  @override
  String get taskPriority => 'Prioritet';

  @override
  String get priorityNone => 'Nema';

  @override
  String get priorityLow => 'Nizak';

  @override
  String get priorityMedium => 'Srednji';

  @override
  String get priorityHigh => 'Visok';

  @override
  String get priorityUrgent => 'Hitno';

  @override
  String get taskDueDate => 'Rok';

  @override
  String get taskStartDate => 'Datum početka';

  @override
  String get taskReminder => 'Podsjetnik';

  @override
  String get taskRepeat => 'Ponavljanje';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategorija';

  @override
  String get taskCategoryHint => 'npr. Posao, Kuća, Učenje';

  @override
  String get taskEstimateMinutes => 'Procjena (minute)';

  @override
  String get taskTracked => 'Izmjereni fokus';

  @override
  String get taskLabels => 'Oznake';

  @override
  String get taskAddLabel => 'Nova oznaka';

  @override
  String get taskChecklist => 'Popis provjere';

  @override
  String get taskAddChecklistItem => 'Dodaj stavku';

  @override
  String get taskSubtasks => 'Podzadaci';

  @override
  String get taskAddSubtask => 'Dodaj podzadatak';

  @override
  String get taskDependencies => 'Blokira ga';

  @override
  String get taskAddDependency => 'Dodaj zadatak koji blokira';

  @override
  String get taskLinkedNotes => 'Povezane bilješke';

  @override
  String get taskSetTime => 'Postavi vrijeme';

  @override
  String get taskNoDate => 'Bez datuma';

  @override
  String get taskCompleted => 'Zadatak završen';

  @override
  String get taskNextOccurrence => 'Sljedeće ponavljanje izrađeno';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Kasni $days dana',
      few: 'Kasni $days dana',
      one: 'Kasni $days dan',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Označi „$title” kao gotovo';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Označi „$title” kao nedovršeno';
  }

  @override
  String get sortSmart => 'Pametno';

  @override
  String get sortDueDate => 'Rok';

  @override
  String get sortPriority => 'Prioritet';

  @override
  String get sortCreated => 'Najnovije';

  @override
  String get sortTitle => 'Naslov';

  @override
  String get filterAllProjects => 'Svi projekti';

  @override
  String get filterAnyPriority => 'Bilo koji prioritet';

  @override
  String get filterTitle => 'Filtriranje i poredak';

  @override
  String get dateToday => 'Danas';

  @override
  String get dateTomorrow => 'Sutra';

  @override
  String get dateYesterday => 'Jučer';

  @override
  String get repeatNever => 'Ne ponavlja se';

  @override
  String get repeatDaily => 'Svaki dan';

  @override
  String get repeatWeekdays => 'Svaki radni dan';

  @override
  String get repeatWeekly => 'Svaki tjedan';

  @override
  String get repeatMonthly => 'Svaki mjesec';

  @override
  String get repeatYearly => 'Svake godine';

  @override
  String get repeatCustom => 'Prilagođeno';

  @override
  String get repeatEvery => 'Ponavljaj svakih';

  @override
  String get repeatOnDays => 'Na dane';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dana',
      few: 'dana',
      one: 'dan',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tjedana',
      few: 'tjedna',
      one: 'tjedan',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mjeseci',
      few: 'mjeseca',
      one: 'mjesec',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'godina',
      few: 'godine',
      one: 'godinu',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count puta',
      few: '$count puta',
      one: '$count puta',
    );
    return 'Završava nakon $_temp0';
  }

  @override
  String get repeatEndsNever => 'Nikad ne završava';

  @override
  String get reminderAtTime => 'U vrijeme događaja';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuta prije',
      few: '$minutes minute prije',
      one: '$minutes minutu prije',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours sati prije',
      few: '$hours sata prije',
      one: '$hours sat prije',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 dan prije';

  @override
  String get projectsTitle => 'Projekti';

  @override
  String get projectsEmptyTitle => 'Još nema projekata';

  @override
  String get projectsEmptyMessage => 'Grupiraj povezane zadatke, bilješke i vrijeme fokusa.';

  @override
  String get projectNew => 'Novi projekt';

  @override
  String get projectEdit => 'Uredi projekt';

  @override
  String get projectName => 'Naziv';

  @override
  String get projectDescription => 'Opis';

  @override
  String get projectGoal => 'Cilj';

  @override
  String get projectDeadline => 'Rok';

  @override
  String get projectColor => 'Boja';

  @override
  String get projectIcon => 'Ikona';

  @override
  String get projectProgress => 'Napredak';

  @override
  String projectTasksDone(int done, int total) {
    return 'Gotovo $done od $total zadataka';
  }

  @override
  String get projectFocusTime => 'Vrijeme fokusa';

  @override
  String get projectArchived => 'Arhivirani projekti';

  @override
  String get projectShowArchived => 'Prikaži arhivirane';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Još $days dana',
      few: 'Još $days dana',
      one: 'Još $days dan',
      zero: 'Rok je danas',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Rok je prošao';

  @override
  String get calendarTitle => 'Kalendar';

  @override
  String get calendarMonth => 'Mjesec';

  @override
  String get calendarWeek => 'Tjedan';

  @override
  String get calendarDay => 'Dan';

  @override
  String get calendarToday => 'Danas';

  @override
  String get calendarPrevious => 'Prethodno';

  @override
  String get calendarNext => 'Sljedeće';

  @override
  String get calendarNoEvents => 'Ništa nije zakazano';

  @override
  String get calendarAllDay => 'Cijeli dan';

  @override
  String get eventNew => 'Novi događaj';

  @override
  String get eventEdit => 'Uredi događaj';

  @override
  String get eventTitleHint => 'Naslov događaja';

  @override
  String get eventStarts => 'Početak';

  @override
  String get eventEnds => 'Kraj';

  @override
  String get eventKind => 'Vrsta';

  @override
  String get eventKindEvent => 'Događaj';

  @override
  String get eventKindTimeBlock => 'Vremenski blok';

  @override
  String get eventKindFocus => 'Sesija fokusa';

  @override
  String get eventKindGoal => 'Osobni cilj';

  @override
  String get eventDescription => 'Pojedinosti';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Preklapa se s $count događaja',
      few: 'Preklapa se s $count događaja',
      one: 'Preklapa se s $count događajem',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Preklapanja u rasporedu ovaj dan';

  @override
  String get calendarTaskDue => 'Rok zadatka';

  @override
  String get calendarDragHint => 'Dugo pritisni i povuci događaj da ga premjestiš';

  @override
  String get calendarRescheduled => 'Događaj premješten';

  @override
  String get calendarScheduleTask => 'Zakaži kao vremenski blok';

  @override
  String get notesTitle => 'Bilješke';

  @override
  String get notesViewAll => 'Sve';

  @override
  String get notesViewPinned => 'Prikvačene';

  @override
  String get notesViewFavorites => 'Omiljene';

  @override
  String get notesViewArchived => 'Arhivirane';

  @override
  String get notesTags => 'Oznake';

  @override
  String get notesNewNotebook => 'Nova bilježnica';

  @override
  String get notesNoNotebook => 'Bez bilježnice';

  @override
  String get notesEmptyTitle => 'Prazan list';

  @override
  String get notesEmptyMessage => 'Zabilježi ideje, bilješke sa sastanaka i znanje.';

  @override
  String get noteTitleHint => 'Naslov';

  @override
  String get noteBodyHint =>
      'Počni pisati… Koristi # za oznake i [[Naslov]] za povezivanje bilješki.';

  @override
  String get noteFavorite => 'Omiljeno';

  @override
  String get noteUnfavorite => 'Ukloni iz omiljenih';

  @override
  String get noteMoveTo => 'Premjesti u bilježnicu';

  @override
  String get noteBacklinks => 'Poveznice odavde';

  @override
  String get noteLinkedTasks => 'Povezani zadaci';

  @override
  String get noteLinkTask => 'Poveži zadatak';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Naslov';

  @override
  String get noteFormatBold => 'Podebljano';

  @override
  String get noteFormatItalic => 'Kurziv';

  @override
  String get noteFormatList => 'Popis s grafičkim oznakama';

  @override
  String get noteFormatChecklist => 'Popis provjere';

  @override
  String get noteFormatLink => 'Poveznica';

  @override
  String noteEdited(String time) {
    return 'Uređeno $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count riječi',
      few: '$count riječi',
      one: '$count riječ',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kartice';

  @override
  String get flashEmptyTitle => 'Izradi svoj prvi špil';

  @override
  String get flashEmptyMessage =>
      'Ponavljanje u razmacima pokazuje svaku karticu baš prije nego što bi je zaboravio.';

  @override
  String get deckNew => 'Novi špil';

  @override
  String get deckEdit => 'Uredi špil';

  @override
  String get deckName => 'Naziv špila';

  @override
  String get deckDescription => 'Opis';

  @override
  String get deckDailyNew => 'Novih kartica dnevno';

  @override
  String get deckDailyReview => 'Dnevni cilj ponavljanja';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartica',
      few: '$count kartice',
      one: '$count kartica',
      zero: 'Nema kartica',
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
  String get deckStudy => 'Uči';

  @override
  String get deckNothingDue => 'Trenutačno nema ništa za ponavljanje. Vrati se kasnije.';

  @override
  String get deckEmptyCards => 'Dodaj kartice da počneš učiti.';

  @override
  String get cardNew => 'Nova kartica';

  @override
  String get cardEdit => 'Uredi karticu';

  @override
  String get cardFront => 'Prednja strana';

  @override
  String get cardBack => 'Stražnja strana';

  @override
  String get cardFrontHint => 'Pitanje ili pojam';

  @override
  String get cardBackHint => 'Odgovor ili definicija';

  @override
  String get cardTags => 'Oznake';

  @override
  String get cardAddAnother => 'Spremi i dodaj još jednu';

  @override
  String get reviewShowAnswer => 'Prikaži odgovor';

  @override
  String get reviewAgain => 'Ponovno';

  @override
  String get reviewHard => 'Teško';

  @override
  String get reviewGood => 'Dobro';

  @override
  String get reviewEasy => 'Lako';

  @override
  String reviewProgress(int done, int total) {
    return '$done od $total';
  }

  @override
  String get reviewFinishedTitle => 'Sesija završena';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ponovio si $count kartica.',
      few: 'Ponovio si $count kartice.',
      one: 'Ponovio si $count karticu.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Dodirni za prikaz odgovora';

  @override
  String get importCardsTitle => 'Uvoz kartica';

  @override
  String get importCardsHint =>
      'Zalijepi jednu karticu po retku (prednja i stražnja strana odvojene tabulatorom ili točkom sa zarezom) ili odaberi datoteku: Excel (.xlsx), CSV, Anki špil (.apkg) ili izvezeni špil.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uvezeno je $count kartica',
      few: 'Uvezene su $count kartice',
      one: 'Uvezena je $count kartica',
      zero: 'Nije uvezena nijedna kartica',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Ovaj sadržaj nije moguće uvesti.';

  @override
  String get exportCopied => 'Špil izvezen';

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
      other: '$count dana',
      few: '$count dana',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Ciljevi';

  @override
  String get goalsEmptyTitle => 'Ciljaj nešto';

  @override
  String get goalsEmptyMessage =>
      'Postavi dnevne, tjedne, mjesečne ili dugoročne ciljeve i prati stvarni napredak.';

  @override
  String get goalNew => 'Novi cilj';

  @override
  String get goalEdit => 'Uredi cilj';

  @override
  String get goalTitleHint => 'Što želiš postići?';

  @override
  String get goalPeriod => 'Razdoblje';

  @override
  String get goalPeriodDaily => 'Dnevni';

  @override
  String get goalPeriodWeekly => 'Tjedni';

  @override
  String get goalPeriodMonthly => 'Mjesečni';

  @override
  String get goalPeriodLongTerm => 'Dugoročni';

  @override
  String get goalTarget => 'Ciljana vrijednost';

  @override
  String get goalUnit => 'Jedinica';

  @override
  String get goalUnitHint => 'npr. stranice, km, sati';

  @override
  String get goalStatusActive => 'Aktivan';

  @override
  String get goalStatusPaused => 'Pauziran';

  @override
  String get goalStatusAchieved => 'Postignut';

  @override
  String get goalPause => 'Pauziraj cilj';

  @override
  String get goalResume => 'Nastavi cilj';

  @override
  String get goalMarkAchieved => 'Označi kao postignut';

  @override
  String goalProgressOf(String current, String target) {
    return '$current od $target';
  }

  @override
  String get goalLogAmount => 'Količina';

  @override
  String get goalLogNote => 'Bilješka (neobavezno)';

  @override
  String get goalHistory => 'Povijest';

  @override
  String get goalNoHistory => 'Zabilježeni napredak pojavit će se ovdje';

  @override
  String get goalLinkedTasks => 'Povezani zadaci';

  @override
  String get goalLinkedTasksHint => 'Svaki završeni povezani zadatak računa se kao 1 za ovaj cilj.';

  @override
  String get goalThisPeriod => 'Ovo razdoblje';

  @override
  String get habitsTitle => 'Navike';

  @override
  String get habitsEmptyTitle => 'Mali koraci, svaki dan';

  @override
  String get habitsEmptyMessage => 'Izradi naviku i označi je kad je obaviš.';

  @override
  String get habitNew => 'Nova navika';

  @override
  String get habitEdit => 'Uredi naviku';

  @override
  String get habitNameHint => 'npr. Pročitaj 20 stranica';

  @override
  String get habitDays => 'Raspored';

  @override
  String get habitEveryDay => 'Svaki dan';

  @override
  String get habitTargetPerDay => 'Puta dnevno';

  @override
  String get habitReminder => 'Dnevni podsjetnik';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Niz od $count dana',
      few: 'Niz od $count dana',
      one: 'Niz od $count dana',
      zero: 'Nema niza',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Najduži niz';

  @override
  String get habitCurrentStreak => 'Trenutačni niz';

  @override
  String get habitConsistency => 'Dosljednost';

  @override
  String get habitLast90 => 'Zadnjih 90 dana';

  @override
  String get habitPaused => 'Pauzirano';

  @override
  String get habitPause => 'Pauziraj naviku';

  @override
  String get habitResume => 'Nastavi naviku';

  @override
  String get habitDoneToday => 'Obavljeno danas';

  @override
  String habitCountToday(int count, int target) {
    return 'Danas $count od $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Označi „$name”';
  }

  @override
  String get habitNotScheduledToday => 'Danas nije u rasporedu';

  @override
  String get analyticsTitle => 'Uvidi';

  @override
  String get rangeWeek => '7 dana';

  @override
  String get rangeMonth => '30 dana';

  @override
  String get rangeQuarter => '90 dana';

  @override
  String get statFocusTime => 'Vrijeme fokusa';

  @override
  String get statSessions => 'Sesije';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return 'Završeno $completed · prekinuto ranije $interrupted';
  }

  @override
  String get statTasksDone => 'Završeni zadaci';

  @override
  String get statCompletionRate => 'Završeno na vrijeme';

  @override
  String get statHabitConsistency => 'Dosljednost navika';

  @override
  String get statRetention => 'Zapamćene kartice';

  @override
  String get statReviews => 'Ponavljanja';

  @override
  String get statActiveGoals => 'Aktivni ciljevi';

  @override
  String get statEstimated => 'Procijenjeni obavljeni rad';

  @override
  String get statEstimatedNote => 'Prema tvojim procjenama, ne prema izmjerenom vremenu';

  @override
  String get statMeasuredNote => 'Izmjereno iz sesija fokusa';

  @override
  String get chartFocusByDay => 'Minute fokusa po danu';

  @override
  String get chartTasksByDay => 'Završeni zadaci po danu';

  @override
  String get chartTimeByProject => 'Vrijeme po projektu';

  @override
  String get chartProjectProgress => 'Napredak projekata';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: ukupno $total, najbolji dan $best';
  }

  @override
  String get analyticsNoData => 'Još nema dovoljno podataka';

  @override
  String get analyticsUnassigned => 'Nedodijeljeno';

  @override
  String get searchHint => 'Pretraži sve…';

  @override
  String get searchRecent => 'Nedavna pretraživanja';

  @override
  String get searchClearRecent => 'Očisti nedavna pretraživanja';

  @override
  String searchNoResults(String query) {
    return 'Nema rezultata za „$query”';
  }

  @override
  String get searchStartTyping =>
      'Pretražuj zadatke, bilješke, kartice, ciljeve, događaje i još mnogo toga. Pretraživanje ostaje na ovom uređaju.';

  @override
  String get searchCatTask => 'Zadaci';

  @override
  String get searchCatProject => 'Projekti';

  @override
  String get searchCatNote => 'Bilješke';

  @override
  String get searchCatFlashcard => 'Kartice';

  @override
  String get searchCatDeck => 'Špilovi';

  @override
  String get searchCatGoal => 'Ciljevi';

  @override
  String get searchCatHabit => 'Navike';

  @override
  String get searchCatEvent => 'Događaji';

  @override
  String get searchCatSession => 'Sesije';

  @override
  String get searchAll => 'Sve';

  @override
  String get assistantTitle => 'Asistent';

  @override
  String get assistantIntro =>
      'Pomoć pri planiranju koja radi na tvom uređaju. Po želji poveži uslugu umjetne inteligencije po svom izboru za sažetke i izradu sadržaja.';

  @override
  String get assistantOnDevice => 'Na uređaju';

  @override
  String get assistantCloud => 'Usluga umjetne inteligencije';

  @override
  String get assistantPlanDay => 'Isplaniraj moj dan';

  @override
  String get assistantPlanDayDesc =>
      'Slaže otvorene zadatke prema hitnosti, prioritetu i procjeni te ih uklapa oko tvojih događaja.';

  @override
  String get assistantExtractTasks => 'Izvuci zadatke iz bilješke';

  @override
  String get assistantExtractTasksDesc =>
      'Pronalazi stavke popisa i retke s radnjama u bilješci i pretvara ih u zadatke.';

  @override
  String get assistantMakeCards => 'Izradi kartice iz bilješke';

  @override
  String get assistantMakeCardsDesc =>
      'Pretvara retke „pojam: definicija” i retke s pitanjem i odgovorom u kartice.';

  @override
  String get assistantSummarize => 'Sažmi bilješku';

  @override
  String get assistantSummarizeDesc =>
      'Potrebna je usluga umjetne inteligencije. Bilješka se šalje tek nakon što potvrdiš.';

  @override
  String get assistantWorkload => 'Pregled opterećenja';

  @override
  String get assistantWorkloadDesc =>
      'Uspoređuje procijenjeni rad sa slobodnim vremenom ovaj tjedan.';

  @override
  String get assistantPlanEmpty => 'Nema otvorenih zadataka za planiranje. Uživaj u prostoru.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Slobodno vrijeme za fokus danas: $time';
  }

  @override
  String get assistantPlanOverflow => 'Ovo možda neće stati u današnji dan:';

  @override
  String get assistantChooseNote => 'Odaberi bilješku';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pronađeno je $count zadataka',
      few: 'Pronađena su $count zadatka',
      one: 'Pronađen je $count zadatak',
      zero: 'U bilješci nema zadataka',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pronađeno je $count kartica',
      few: 'Pronađene su $count kartice',
      one: 'Pronađena je $count kartica',
      zero: 'U bilješci nema kartica',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Odaberi špil';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Procijenjeni rad: $estimated. Slobodno vrijeme: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Isplanirao si više nego što ima vremena. Razmisli o premještanju zadataka nižeg prioriteta.';

  @override
  String get assistantWorkloadOk => 'Tvoj plan stane u raspoloživo vrijeme.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count otvorenih zadataka nema procjenu.',
      few: '$count otvorena zadatka nemaju procjenu.',
      one: '$count otvoreni zadatak nema procjenu.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Usluga umjetne inteligencije';

  @override
  String get assistantProviderOff => 'Nijedna usluga nije povezana. Alati na uređaju i dalje rade.';

  @override
  String assistantProviderOn(String host) {
    return 'Povezano s $host';
  }

  @override
  String get assistantEndpoint => 'API krajnja točka (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'API ključ';

  @override
  String get assistantApiKeyStored => 'Sigurno spremljeno na ovom uređaju';

  @override
  String get assistantHttpsOnly => 'Dopuštene su samo HTTPS krajnje točke';

  @override
  String get assistantConsentTitle => 'Poslati ovaj sadržaj tvojoj usluzi umjetne inteligencije?';

  @override
  String assistantConsentBody(String host) {
    return 'Odabrani tekst bilješke napustit će ovaj uređaj i obradit će ga $host. Ništa drugo se ne šalje.';
  }

  @override
  String get assistantConsentAlways => 'Ne pitaj ponovno za ovu uslugu';

  @override
  String get assistantSend => 'Pošalji';

  @override
  String get assistantUnavailable => 'Usluga umjetne inteligencije nije dostupna. Pokušaj kasnije.';

  @override
  String get assistantDisabledTitle => 'Asistent je isključen';

  @override
  String get assistantDisabledMessage =>
      'Uključi ga da bi koristio alate za planiranje. Nikakvi podaci ne napuštaju tvoj uređaj osim ako ne povežeš uslugu i potvrdiš svaki zahtjev.';

  @override
  String get assistantSummaryTitle => 'Sažetak';

  @override
  String get assistantRemoveProvider => 'Ukloni uslugu';

  @override
  String get settingsTitle => 'Postavke';

  @override
  String get settingsGeneral => 'Općenito';

  @override
  String get settingsLanguage => 'Jezik';

  @override
  String get settingsLanguageSystem => 'Jezik uređaja';

  @override
  String get settingsAppearance => 'Izgled';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Svijetla';

  @override
  String get themeDark => 'Tamna';

  @override
  String get themeSystem => 'Prema sustavu';

  @override
  String get settingsReduceMotion => 'Smanji pokrete';

  @override
  String get settingsReduceMotionDesc => 'Manje animacija i pokretnih pozadina';

  @override
  String get settingsFocus => 'Mjerač fokusa';

  @override
  String get settingsWorkLength => 'Trajanje fokusa';

  @override
  String get settingsShortBreak => 'Kratka pauza';

  @override
  String get settingsLongBreak => 'Duga pauza';

  @override
  String get settingsLongBreakEvery => 'Duga pauza nakon';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesija',
      few: '$count sesije',
      one: '$count sesije',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Automatski pokreni pauze';

  @override
  String get settingsSound => 'Zvuk po završetku';

  @override
  String get settingsDailyFocusTarget => 'Dnevni cilj fokusa';

  @override
  String get settingsWeeklyFocusTarget => 'Tjedni cilj fokusa';

  @override
  String get settingsNotifications => 'Obavijesti';

  @override
  String get settingsNotificationsEnable => 'Dopusti podsjetnike';

  @override
  String get settingsQuietHours => 'Tihi sati';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Podsjetnici za navike, ciljeve i ponavljanje utišani su od $start do $end';
  }

  @override
  String get settingsReviewReminder => 'Podsjetnik za ponavljanje kartica';

  @override
  String get settingsPermissionDenied => 'Obavijesti su blokirane u postavkama sustava.';

  @override
  String get settingsPrivacy => 'Privatnost i podaci';

  @override
  String get settingsPrivacyStatement =>
      'Tvoji podaci spremaju se samo na ovom uređaju i šifrirani su. Nema računa, analitike ni praćenja.';

  @override
  String get settingsBackup => 'Izradi šifriranu sigurnosnu kopiju';

  @override
  String get settingsBackupDesc => 'Zaštićena lozinkom koju sam odabereš';

  @override
  String get settingsRestore => 'Vrati iz sigurnosne kopije';

  @override
  String get settingsRestoreDesc => 'Zamjenjuje sve podatke na ovom uređaju';

  @override
  String get settingsErase => 'Izbriši sve podatke';

  @override
  String get settingsEraseDesc => 'Trajno izbriši sve s ovog uređaja';

  @override
  String get settingsEraseConfirmTitle => 'Izbrisati sve podatke?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Svi zadaci, bilješke, kartice, ciljevi, navike, događaji i sesije bit će trajno izbrisani. Upiši $word za potvrdu.';
  }

  @override
  String get settingsEraseWord => 'IZBRIŠI';

  @override
  String get settingsErased => 'Svi su podaci izbrisani';

  @override
  String get backupPassword => 'Lozinka sigurnosne kopije';

  @override
  String get backupPasswordConfirm => 'Potvrdi lozinku';

  @override
  String backupPasswordHint(int count) {
    return 'Najmanje $count znakova. Ako je izgubiš, ne može se vratiti.';
  }

  @override
  String get backupPasswordMismatch => 'Lozinke se ne podudaraju';

  @override
  String get backupPasswordShort => 'Lozinka je prekratka';

  @override
  String get backupCreating => 'Šifriranje sigurnosne kopije…';

  @override
  String get backupCreated => 'Sigurnosna kopija spremna je za spremanje';

  @override
  String get backupRestoring => 'Provjera i vraćanje…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vraćeno je $count stavki',
      few: 'Vraćene su $count stavke',
      one: 'Vraćena je $count stavka',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Pogrešna lozinka ili je datoteka izmijenjena.';

  @override
  String get backupNotABackup => 'Ova datoteka nije sigurnosna kopija aplikacije Deep Focus.';

  @override
  String get backupCorrupted => 'Datoteka sigurnosne kopije je oštećena.';

  @override
  String get backupNewer =>
      'Ovu je sigurnosnu kopiju izradila novija verzija aplikacije. Najprije ažuriraj aplikaciju.';

  @override
  String get backupRestoreConfirmTitle => 'Zamijeniti sve podatke?';

  @override
  String get backupRestoreConfirmBody =>
      'Sve što je sada na ovom uređaju zamijenit će sigurnosna kopija. Ako vraćanje ne uspije, ništa se ne mijenja.';

  @override
  String get settingsAbout => 'O aplikaciji';

  @override
  String settingsVersion(String version) {
    return 'Verzija $version';
  }

  @override
  String get settingsLicenses => 'Licence otvorenog koda';

  @override
  String get settingsAssistant => 'Asistent';

  @override
  String get settingsAssistantEnable => 'Uključi asistenta';

  @override
  String get settingsDashboard => 'Dijelovi početne stranice';

  @override
  String get settingsTrash => 'Smeće';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Smeće je prazno';

  @override
  String get trashHint => 'Izbrisane stavke ostaju ovdje dok ih ne ukloniš.';

  @override
  String get trashTasks => 'Zadaci';

  @override
  String get trashNotes => 'Bilješke';

  @override
  String get onboardWelcomeTitle => 'Dobro došao u svoj novi radni prostor';

  @override
  String get onboardWelcomeBody =>
      'Zadaci, fokus, kalendar, bilješke, kartice, ciljevi i navike — zajedno i lijepo jednostavno.';

  @override
  String get onboardPrivateTitle => 'Privatnost u temelju';

  @override
  String get onboardPrivateBody =>
      'Sve ostaje šifrirano na ovom uređaju. Bez računa. Bez praćenja. Ti odlučuješ.';

  @override
  String get onboardLanguageTitle => 'Odaberi jezik';

  @override
  String get onboardNotifTitle => 'Nježni podsjetnici';

  @override
  String get onboardNotifBody =>
      'Dopusti obavijesti za podsjetnike zadataka i upozorenja fokusa. To možeš promijeniti bilo kada.';

  @override
  String get onboardGetStarted => 'Započni';

  @override
  String onboardStep(int current, int total) {
    return 'Korak $current od $total';
  }

  @override
  String get notifChannelReminders => 'Podsjetnici';

  @override
  String get notifChannelRemindersDesc => 'Podsjetnici za zadatke, događaje, navike i ciljeve';

  @override
  String get notifChannelFocus => 'Mjerač fokusa';

  @override
  String get notifChannelFocusDesc => 'Upozorenja kad sesija fokusa ili pauza završi';

  @override
  String get notifTaskTitle => 'Podsjetnik za zadatak';

  @override
  String get notifEventTitle => 'Nadolazeći događaj';

  @override
  String notifEventBody(String title, String time) {
    return '$title u $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sesija fokusa završena';

  @override
  String get notifFocusDoneBody => 'Odlično. Vrijeme je za pauzu.';

  @override
  String get notifBreakDoneTitle => 'Pauza je gotova';

  @override
  String get notifBreakDoneBody => 'Spreman za sljedeću sesiju fokusa?';

  @override
  String get notifHabitTitle => 'Podsjetnik za naviku';

  @override
  String get notifReviewTitle => 'Kartice su spremne';

  @override
  String get notifReviewBody => 'Kratko ponavljanje održava pamćenje snažnim.';

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
  String get weekdaysShort => 'P,U,S,Č,P,S,N';

  @override
  String a11yProgress(int value) {
    return 'Napredak $value posto';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritet: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Boja $index';
  }

  @override
  String get analyticsRangeLabel => 'Vremenski raspon';

  @override
  String get analyticsRefresh => 'Osvježi';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done od $total zadataka s rokom završeno na vrijeme';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Gotovo $done od $total zadataka';
  }

  @override
  String get analyticsNoProjects => 'Nema aktivnih projekata';

  @override
  String get analyticsNoFocus => 'U ovom razdoblju nema sesija fokusa';

  @override
  String get analyticsHabitsNone => 'Nema aktivnih navika';

  @override
  String get analyticsRetentionNote => 'Udio naučenih kartica koje si zapamtio';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Slobodno vrijeme računa se $start–$end radnim danima ($days), bez događaja s vremenom. Procijenjeni rad zbroj je procjena otvorenih zadataka s rokom u sljedećih 7 dana.';
  }

  @override
  String get assistantWorkdaysMonFri => 'ponedjeljak–petak';

  @override
  String get assistantWorkdaysSunThu => 'nedjelja–četvrtak';

  @override
  String get assistantWorkloadDayOff => 'Slobodan dan';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planirano · $free slobodno';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planirano od sada do $end, oko današnjih događaja. Najprije zakašnjeli zadaci, zatim prioritet, rok i procjena.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Zakaži kao vremenske blokove';

  @override
  String get assistantScheduleConfirmTitle => 'Dodati vremenske blokove u kalendar?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U današnji kalendar dodat će se $count vremenskih blokova.',
      few: 'U današnji kalendar dodat će se $count vremenska bloka.',
      one: 'U današnji kalendar dodat će se $count vremenski blok.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano $count vremenskih blokova',
      few: 'Dodana $count vremenska bloka',
      one: 'Dodan $count vremenski blok',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Već u kalendaru';

  @override
  String get assistantPlanTimeline => 'Stane danas';

  @override
  String get assistantNoEstimate => 'Dodaj procjenu da bi ih mogao planirati';

  @override
  String get assistantNoNotes => 'Još nema bilješki. Najprije napiši bilješku.';

  @override
  String get assistantNoteEmpty => 'Ova je bilješka prazna.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izrađeno $count zadataka',
      few: 'Izrađena $count zadatka',
      one: 'Izrađen $count zadatak',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izrađeno $count kartica',
      few: 'Izrađene $count kartice',
      one: 'Izrađena $count kartica',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izradi $count',
      one: 'Izradi $count',
      zero: 'Ništa nije odabrano',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Prepoznato: neoznačeni okviri „- [ ]” i retci koji počinju s TODO: ili To do:';

  @override
  String get assistantCardsHint =>
      'Prepoznato: „pojam: definicija”, „pojam — definicija” i parovi redaka Q:/A:';

  @override
  String get assistantProviderHint =>
      'Koristi bilo koju uslugu kompatibilnu s OpenAI-jem. Ključ ostaje u sigurnoj pohrani uređaja i nikad nije dio sigurnosnih kopija.';

  @override
  String get assistantEndpointHelp => 'Na primjer https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Ostavi prazno da zadržiš spremljeni ključ';

  @override
  String get assistantApiKeyRequired => 'Unesi API ključ';

  @override
  String get assistantProviderSaved => 'Usluga spremljena';

  @override
  String get assistantProviderRemoved => 'Usluga uklonjena i ključ izbrisan';

  @override
  String get assistantRemoveProviderConfirm =>
      'Ukloniti uslugu i izbrisati spremljeni API ključ s ovog uređaja?';

  @override
  String get assistantAskEveryTime => 'Pitaj prije svakog zahtjeva';

  @override
  String get assistantSummarizing => 'Sažimanje…';

  @override
  String assistantSummaryNote(String host) {
    return 'Izradio $host. Provjeri prije nego što se osloniš na to.';
  }

  @override
  String get assistantCopy => 'Kopiraj';

  @override
  String get assistantCopied => 'Kopirano';

  @override
  String get assistantConfigure => 'Postavi uslugu';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Svi događaji u ovom nizu premješteni su';

  @override
  String get calendarEventReminder => 'Podsjetnik';

  @override
  String get calendarEventRepeat => 'Ponavljanje';

  @override
  String get calendarEventColor => 'Boja';

  @override
  String get calendarDefaultColor => 'Koristi boju vrste';

  @override
  String get calendarEventLinkedTask => 'Povezani zadatak';

  @override
  String get calendarEventNoTask => 'Nema povezanog zadatka';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count događaja',
      few: '$count događaja',
      one: '$count događaj',
      zero: 'Nema događaja',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zadataka s rokom',
      few: '$count zadatka s rokom',
      one: '$count zadatak s rokom',
      zero: 'nema zadataka s rokom',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Dodaj događaj ili vremenski blok da isplaniraš ovaj dan.';

  @override
  String get calendarNow => 'Trenutačno vrijeme';

  @override
  String get calendarRecurring => 'Ponavlja se';

  @override
  String get calendarEventNotFound => 'Ovaj događaj više ne postoji';

  @override
  String get calendarEventLocalTime => 'Vremena se prikazuju u vremenskoj zoni uređaja';

  @override
  String get calendarEventDeleted => 'Događaj premješten u smeće';

  @override
  String get calendarConflictMarker => 'Preklapa se s drugim događajem';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Promjene vrijede za sve događaje u ovom nizu';

  @override
  String get calendarDragHintSeries =>
      'Povlačenjem događaja koji se ponavlja premješta se cijeli niz';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, rok zadatka';
  }

  @override
  String get startupErrorTitle => 'Tvoje podatke nije moguće otvoriti';

  @override
  String get startupErrorLocked =>
      'Ključ za šifriranje podataka ovog uređaja nije dostupan. Ništa nije izbrisano. Često pomaže ponovno pokretanje uređaja. Ako si nedavno vraćao uređaj, radije vrati podatke iz šifrirane sigurnosne kopije.';

  @override
  String get startupErrorCipher =>
      'Ovaj uređaj ne podržava šifriranu pohranu koja je potrebna aplikaciji. Ništa nije spremljeno nešifrirano.';

  @override
  String get startupErrorRetry => 'Pokušaj ponovno';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartica čeka ponavljanje',
      few: '$count kartice čekaju ponavljanje',
      one: '$count kartica čeka ponavljanje',
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
  String get flashcardsValidationNonNegative => 'Unesi 0 ili više';

  @override
  String get flashcardsSearchCards => 'Pretraži kartice';

  @override
  String get flashcardsSearchEmpty => 'Nijedna kartica ne odgovara pretraživanju';

  @override
  String get flashcardsCardAdded => 'Kartica dodana';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Ponavljanje $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopiraj u međuspremnik';

  @override
  String get flashcardsExportTitle => 'Izvezi špil';

  @override
  String get flashcardsDeleteDeck => 'Izbriši špil';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, sljedeće ponavljanje za $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Pitanje: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Odgovor: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Prikaži pitanje';

  @override
  String get flashcardsImportField => 'Kartice za uvoz';

  @override
  String get flashcardsNothingToStudy => 'Nema ništa za učenje';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartica spremnih za učenje',
      few: '$count kartice spremne za učenje',
      one: '$count kartica spremna za učenje',
      zero: 'Nema spremnih kartica',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Prema ocjeni';

  @override
  String get flashcardsDeckNotFound => 'Ovaj špil više nije dostupan.';

  @override
  String get focusSessionDeleted => 'Sesija izbrisana';

  @override
  String get focusDeleteConfirm =>
      'Izbrisati ovu sesiju iz povijesti? Njezino se vrijeme više neće računati u tvoje ciljeve.';

  @override
  String get focusUnlinkTask => 'Ukloni povezani zadatak';

  @override
  String get focusNoteHint => 'Na čemu si radio?';

  @override
  String get focusModeLabel => 'Način mjerača';

  @override
  String focusUpNext(String phase) {
    return 'Sljedeće: $phase';
  }

  @override
  String get focusStopwatchHint => 'Broji prema gore dok ne zaustaviš.';

  @override
  String get focusOpenHint => 'Bez vremenskog ograničenja. Zaustavi kad završiš.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Podsjetnici su isključeni u postavkama. Nećeš biti upozoren kad sesija završi.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Sve';

  @override
  String get goalsFilterPeriod => 'Filtar razdoblja';

  @override
  String get goalsFilterStatus => 'Filtar statusa';

  @override
  String get goalsEmptyFiltered => 'Nijedan cilj ne odgovara ovom filtru';

  @override
  String goalsDueOn(String date) {
    return 'Rok $date';
  }

  @override
  String get goalsDeadline => 'Rok (neobavezno)';

  @override
  String get goalsNoDeadline => 'Bez roka';

  @override
  String get goalsSetDeadline => 'Postavi rok';

  @override
  String get goalsRemoveDeadline => 'Ukloni rok';

  @override
  String get goalsDescription => 'Opis (neobavezno)';

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
  String get goalsReached => 'Cilj dosegnut';

  @override
  String get goalsLogged => 'Napredak zabilježen';

  @override
  String get goalsEntryDeleted => 'Unos uklonjen';

  @override
  String get goalsDeleteEntry => 'Ukloni unos';

  @override
  String get goalsDeleted => 'Cilj izbrisan';

  @override
  String get goalsMarkActive => 'Označi kao aktivan';

  @override
  String get goalsNotFound => 'Ovaj cilj više nije dostupan';

  @override
  String get goalsLinkTask => 'Poveži zadatak';

  @override
  String get goalsNoLinkedTasks => 'Još nema povezanih zadataka';

  @override
  String get goalsUnlinkTask => 'Odspoji zadatak';

  @override
  String get goalsTaskOpen => 'Još nije završeno';

  @override
  String get goalsTaskLinked => 'Zadatak povezan';

  @override
  String get goalsTaskUnlinked => 'Zadatak odspojen';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count završenih povezanih zadataka',
      few: '$count završena povezana zadatka',
      one: '$count završeni povezani zadatak',
    );
    return 'Uključuje $_temp0 u ovom razdoblju';
  }

  @override
  String get goalsHistoryAllTime =>
      'Unosi iz ranijih razdoblja ostaju ovdje, ali se računaju samo za svoje razdoblje.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Danas obavljeno $done od $total';
  }

  @override
  String get habitsNothingToday => 'Za danas nema zakazanih navika';

  @override
  String get habitsDecrease => 'Ukloni jednu oznaku';

  @override
  String get habitsResetToday => 'Poništi današnji dan';

  @override
  String get habitsCheckInHint => 'Dugo pritisni za prilagodbu';

  @override
  String get habitsName => 'Naziv';

  @override
  String get habitsColor => 'Boja';

  @override
  String get habitsValidationDays => 'Odaberi barem jedan dan';

  @override
  String habitsReminderAt(String time) {
    return 'Svaki dan u $time';
  }

  @override
  String get habitsSetReminder => 'Postavi vrijeme podsjetnika';

  @override
  String get habitsRemoveReminder => 'Ukloni podsjetnik';

  @override
  String get habitsReminderNote =>
      'Podsjetnici se pojavljuju na zakazane dane ako su obavijesti dopuštene.';

  @override
  String get habitsArchived => 'Navika arhivirana';

  @override
  String get habitsNotFound => 'Ova navika više nije dostupna';

  @override
  String get habitsLast30 => 'Zadnjih 30 dana';

  @override
  String get habitsConsistencyNone => 'Još nema dovoljno podataka';

  @override
  String get habitsCalendar => 'Povijest oznaka';

  @override
  String get habitsCalendarHint => 'Dodirni dan da ga ispraviš.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count od $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Oznake u zadnjih 90 dana. Dosljednost $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Oznake u zadnjih 90 dana. Još nema dovoljno podataka.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dana',
      few: '$count dana',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Pauzirani dani ne utječu na tvoj niz.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arhiviraj naviku';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count puta dnevno',
      few: '$count puta dnevno',
      one: '$count put dnevno',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Ostale bilješke';

  @override
  String get notesAllNotebooks => 'Sve bilježnice';

  @override
  String get notesNotebookName => 'Naziv bilježnice';

  @override
  String get notesNotebookColor => 'Boja';

  @override
  String get notesDeleteNotebook => 'Izbriši bilježnicu';

  @override
  String get notesDeleteNotebookMessage =>
      'Bilježnica se uklanja. Njezine bilješke ostaju i prikazuju se pod Sve bilježnice.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Prikvači važne bilješke da ostanu na vrhu.';

  @override
  String get notesEmptyFavorites => 'Bilješke koje označiš kao omiljene pojavit će se ovdje.';

  @override
  String get notesEmptyArchived => 'Arhivirane bilješke pojavit će se ovdje.';

  @override
  String get notesEmptyFiltered => 'Nijedna bilješka ne odgovara ovim filtrima.';

  @override
  String get notesArchivedSnack => 'Bilješka arhivirana';

  @override
  String get notesUnarchivedSnack => 'Bilješka vraćena među tvoje bilješke';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Gotovo $done od $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Oblikovanje';

  @override
  String get notesWrite => 'Piši';

  @override
  String get notesPreviewEmpty => 'Još nema ničega za pregled.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Na ovu bilješku još ne upućuje nijedna druga. Uputi na nju s [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Daj bilješci naslov da bi druge bilješke mogle upućivati na nju.';

  @override
  String get notesLinkedTasksEmpty => 'S ovom bilješkom nisu povezani zadaci.';

  @override
  String notesLinkMissing(String title) {
    return 'Još ne postoji bilješka s naslovom „$title”.';
  }

  @override
  String get notesNotFound => 'Ova bilješka više ne postoji.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Stavka popisa: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Otvori bilješku $title';
  }

  @override
  String get notesTaskDone => 'Završeno';

  @override
  String get notifTimerDoneBody => 'Vrijeme koje si postavio je isteklo.';

  @override
  String get onboardingPrivatePointDevice => 'Spremljeno samo na ovom uređaju, šifrirano';

  @override
  String get onboardingPrivatePointAccount => 'Nije potreban račun';

  @override
  String get onboardingPrivatePointTracking => 'Bez analitike, bez praćenja';

  @override
  String get onboardingLanguageBody => 'To možeš bilo kada promijeniti u Postavkama.';

  @override
  String get onboardingNext => 'Dalje';

  @override
  String get projectsActive => 'Aktivni';

  @override
  String get projectNameHint => 'npr. Lansiranje proizvoda';

  @override
  String get projectGoalHint => 'Kako izgleda „gotovo”?';

  @override
  String get projectNoDeadline => 'Bez roka';

  @override
  String get projectTasksOpen => 'Otvoreni zadaci';

  @override
  String get projectTasksCompleted => 'Završeni zadaci';

  @override
  String get projectAddTask => 'Dodaj zadatak u projekt';

  @override
  String get projectAddNote => 'Nova bilješka projekta';

  @override
  String get projectLinkedNotes => 'Bilješke';

  @override
  String get projectNoTasks => 'U ovom projektu još nema zadataka';

  @override
  String get projectArchivedBadge => 'Arhivirano';

  @override
  String get projectDeleted => 'Projekt premješten u smeće';

  @override
  String get projectDeleteMessage => 'Zadaci ostaju na tvom popisu bez projekta.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, dovršeno $percent posto';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultata',
      few: '$count rezultata',
      one: '$count rezultat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtriraj po vrsti';

  @override
  String searchRecentTap(String query) {
    return 'Ponovno traži $query';
  }

  @override
  String get settingsLanguageHint =>
      'Odaberi jezik cijele aplikacije. Nazivi su prikazani na vlastitom jeziku.';

  @override
  String get settingsThemeHint => 'Svijetla, tamna ili prema sustavu';

  @override
  String settingsDecrease(String setting) {
    return 'Smanji $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Povećaj $setting';
  }

  @override
  String get settingsQuietStart => 'Početak';

  @override
  String get settingsQuietEnd => 'Kraj';

  @override
  String get settingsNotificationsHint =>
      'Ovo sprema tvoj odabir u aplikaciji. Sustav može tražiti i dopuštenje.';

  @override
  String get settingsDashboardHint =>
      'Povuci za promjenu redoslijeda. Isključi dijelove koji ti ne trebaju.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Premjesti $section';
  }

  @override
  String get settingsDashboardReset => 'Vrati zadani redoslijed';

  @override
  String get settingsAssistantDesc =>
      'Neobavezna pomoć pri planiranju. Ništa ne napušta ovaj uređaj osim ako ne povežeš uslugu.';

  @override
  String get settingsAssistantSetup => 'Asistent i postavljanje usluge';

  @override
  String get settingsTrashDesc => 'Vrati ili trajno izbriši uklonjene stavke';

  @override
  String get settingsEraseFirstBody =>
      'To se ne može poništiti. Razmisli o tome da najprije izradiš šifriranu sigurnosnu kopiju.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Upiši $word';
  }

  @override
  String get settingsEraseFailed => 'Podatke nije moguće izbrisati. Ništa nije promijenjeno.';

  @override
  String get settingsAboutTagline => 'Privatan radni prostor za produktivnost koji radi lokalno.';

  @override
  String get backupShowPassword => 'Prikaži lozinku';

  @override
  String get backupHidePassword => 'Sakrij lozinku';

  @override
  String get backupSaved => 'Sigurnosna kopija spremljena';

  @override
  String get backupFailed =>
      'Sigurnosnu kopiju nije moguće izraditi. Tvoji su podaci nepromijenjeni.';

  @override
  String get backupReadFailed => 'Odabranu datoteku nije moguće pročitati.';

  @override
  String get backupRestoreFailed => 'Vraćanje nije uspjelo. Ništa nije promijenjeno.';

  @override
  String get backupShareSubject => 'Šifrirana sigurnosna kopija Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Svakih $count dana',
      few: 'Svaka $count dana',
      one: 'Svaki $count. dan',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Svakih $count tjedana',
      few: 'Svaka $count tjedna',
      one: 'Svaki $count. tjedan',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Svakih $count mjeseci',
      few: 'Svaka $count mjeseca',
      one: 'Svaki $count. mjesec',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Svakih $count godina',
      few: 'Svake $count godine',
      one: 'Svake $count. godine',
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
    return 'u $days';
  }

  @override
  String get repeatEndsLabel => 'Završava';

  @override
  String get repeatEndsAfter => 'Nakon određenog broja puta';

  @override
  String get repeatCountLabel => 'Broj ponavljanja';

  @override
  String get reminderNone => 'Bez podsjetnika';

  @override
  String get reminderCustomTime => 'U određeno vrijeme';

  @override
  String get a11yDecrease => 'Smanji';

  @override
  String get a11yIncrease => 'Povećaj';

  @override
  String get pickTaskTitle => 'Odaberi zadatak';

  @override
  String get pickTaskEmpty => 'Nema otvorenih zadataka';

  @override
  String get tasksSearchTooltip => 'Pretraži zadatke';

  @override
  String get tasksSectionOverdue => 'Zakašnjeli';

  @override
  String get tasksSectionToday => 'Danas';

  @override
  String get tasksRecurringSemantics => 'Ponavlja se';

  @override
  String get tasksFilterPriorityAtLeast => 'Najniži prioritet';

  @override
  String get tasksFilterCategory => 'Kategorija';

  @override
  String get tasksFilterAnyCategory => 'Bilo koja kategorija';

  @override
  String get tasksFilterLabel => 'Oznaka';

  @override
  String get tasksFilterAnyLabel => 'Bilo koja oznaka';

  @override
  String get tasksFilterReset => 'Poništi filtre';

  @override
  String get tasksViewByProject => 'Po projektu';

  @override
  String get tasksViewByPriority => 'Po prioritetu';

  @override
  String get tasksViewByCategory => 'Po kategoriji';

  @override
  String get tasksGroupNoCategory => 'Bez kategorije';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zadataka',
      few: '$count zadatka',
      one: '$count zadatak',
    );
    return 'Blokira $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Ovaj zadatak blokiraju nedovršeni zadaci. Svejedno ga završiti?';

  @override
  String get taskStartFocus => 'Fokusiraj se na ovaj zadatak';

  @override
  String get taskRemoveDate => 'Ukloni datum';

  @override
  String get taskAllDay => 'Bez određenog vremena';

  @override
  String get taskSaved => 'Zadatak spremljen';

  @override
  String get taskCreated => 'Zadatak izrađen';

  @override
  String get taskReminderNeedsDue => 'Postavi rok da bi koristio relativne podsjetnike';

  @override
  String get taskLabelName => 'Naziv oznake';

  @override
  String get taskPlanning => 'Planiranje';

  @override
  String get taskOrganize => 'Organizacija';

  @override
  String get taskBreakdown => 'Raščlamba';

  @override
  String get trashDeleteTaskTitle => 'Trajno izbrisati ovaj zadatak?';

  @override
  String get trashDeleteNoteTitle => 'Trajno izbrisati ovu bilješku?';

  @override
  String get trashDeleteBody => 'To se ne može poništiti.';

  @override
  String get trashEmptyTitle => 'Isprazniti smeće?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stavki bit će trajno izbrisano.',
      few: '$count stavke bit će trajno izbrisane.',
      one: '$count stavka bit će trajno izbrisana.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Vraćeno';

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
      other: '$count stavki',
      few: '$count stavke',
      one: '$count stavka',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Pročitaj naglas';

  @override
  String get flashcardsTtsUnavailable =>
      'Pretvaranje teksta u govor nije dostupno na ovom uređaju.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Za ovaj jezik nije instaliran nijedan glas. Dodaj ga u Androidovim postavkama za pretvaranje teksta u govor.';

  @override
  String get calendarAgenda => 'Raspored';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Iskra',
      'rocket': 'Raketa',
      'book': 'Knjiga',
      'work': 'Posao',
      'home': 'Dom',
      'heart': 'Srce',
      'code': 'Kod',
      'palette': 'Paleta',
      'fitness': 'Fitness',
      'school': 'Škola',
      'travel': 'Putovanja',
      'money': 'Štednja',
      'other': 'Ikona',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Više polja';

  @override
  String get cardFieldExample => 'Primjer';

  @override
  String get cardFieldExplanation => 'Objašnjenje';

  @override
  String get cardFieldPronunciation => 'Izgovor';

  @override
  String get cardFieldNotes => 'Dodatne bilješke';

  @override
  String get projectMilestones => 'Prekretnice';

  @override
  String get milestoneAdd => 'Dodaj prekretnicu';

  @override
  String get milestoneEdit => 'Uredi prekretnicu';

  @override
  String get milestoneTitleLabel => 'Prekretnica';

  @override
  String get milestoneNoDate => 'Bez datuma';

  @override
  String get milestonesEmpty =>
      'Još nema prekretnica. Dodaj kontrolne točke s datumima da pratiš projekt u kalendaru.';

  @override
  String get milestoneDeleted => 'Prekretnica izbrisana';

  @override
  String milestoneDoneA11y(String title) {
    return 'Označi prekretnicu „$title” kao gotovu';
  }

  @override
  String calendarMilestone(String project) {
    return 'Prekretnica · $project';
  }

  @override
  String get tasksViewInbox => 'Pristigli';

  @override
  String get tasksViewArchived => 'Arhivirani';

  @override
  String get tasksEmptyInbox =>
      'Ovdje stižu zadaci bez projekta ili datuma. Razvrstaj ih kad uhvatiš minutu.';

  @override
  String get tasksEmptyArchived =>
      'Arhivirani zadaci čuvaju se ovdje, izvan tvojih popisa i podsjetnika.';

  @override
  String get taskArchivedBadge => 'Arhiviran';

  @override
  String get taskStatusInProgress => 'U tijeku';

  @override
  String get taskArchived => 'Zadatak arhiviran';

  @override
  String get taskUnarchived => 'Zadatak vraćen iz arhive';

  @override
  String get focusPlanTitle => 'Plan sesija';

  @override
  String focusPlanTotal(String duration) {
    return 'Ukupno $duration';
  }

  @override
  String get focusPlanRounds => 'Sesije fokusa';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Duga pauza nakon';

  @override
  String get focusPlanSkipLastBreak => 'Preskoči posljednju pauzu';

  @override
  String get focusPlanAutoBreaks => 'Automatski pokreni pauze';

  @override
  String get focusPlanAutoFocus => 'Automatski pokreni fokus nakon pauze';

  @override
  String get focusPlanSave => 'Spremi plan';

  @override
  String get focusPlanNameHint => 'npr. Priprema za ispit';

  @override
  String get focusPlanSaved => 'Plan spremljen';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min fokusa, $rest min pauze';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Smanji $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Povećaj $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sesija $current od $total';
  }

  @override
  String get focusSeriesComplete => 'Niz završen. Bravo!';

  @override
  String get filterAll => 'Sve';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Uvezeno $added · preskočeno duplikata $duplicates · nepotpunih redaka $invalid';
  }

  @override
  String get flashcardsSuspend => 'Obustavi karticu';

  @override
  String get flashcardsResume => 'Nastavi karticu';

  @override
  String get flashcardsSuspended => 'Kartica obustavljena: neće se zakazivati';

  @override
  String get flashcardsResumed => 'Kartica nastavljena';

  @override
  String get flashcardsSuspendedFilter => 'Obustavljene';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown od $total kartica';
  }

  @override
  String get flashcardsImportFile => 'Iz datoteke';

  @override
  String get speechTitle => 'Govor';

  @override
  String get speechAppLanguage => 'Jezik aplikacije';

  @override
  String get speechFrontLanguage => 'Jezik prednje strane';

  @override
  String get speechBackLanguage => 'Jezik stražnje strane';

  @override
  String get speechRepeat => 'Ponovi svako čitanje';

  @override
  String get speechRate => 'Brzina';

  @override
  String get speechAutoRead => 'Automatski pročitaj pitanje';

  @override
  String get speechHint =>
      'Koristi glasove instalirane na ovom uređaju, izvanmrežno. Ako jezik nema glas, dobit ćeš obavijest i ništa drugo neće se koristiti umjesto njega.';

  @override
  String get studyHowTitle => 'Kako želiš učiti?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ponovi $count kartica',
      few: 'Ponovi $count kartice',
      one: 'Ponovi $count karticu',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Vježbaj sve kartice (raspored se ne mijenja)';

  @override
  String get studyPracticeMistakes => 'Vježbaj nedavne pogreške';

  @override
  String get studyPracticeHint =>
      'Krugovi vježbanja nikad ne mijenjaju kada su kartice na redu. Ponavljanje ažurira raspored.';

  @override
  String get studyModeClassic => 'Klasično';

  @override
  String get studyModeReverse => 'Obrnuto';

  @override
  String get studyModeMixed => 'U oba smjera';

  @override
  String get studyModeTyped => 'Upiši odgovor';

  @override
  String get studyModeChoice => 'Višestruki izbor';

  @override
  String get studyModeListening => 'Slušanje';

  @override
  String get studyPractice => 'vježbanje';

  @override
  String get studyNoMistakes => 'U ovom špilu nema nedavnih pogrešaka. Odlično!';

  @override
  String get studyTypeAnswer => 'Upiši svoj odgovor';

  @override
  String get studyCheck => 'Provjeri';

  @override
  String get studyKnewIt => 'Znao sam';

  @override
  String get studyDidntKnow => 'Nisam znao';

  @override
  String studyMistakes(int count) {
    return 'Promašeno ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Ponovi promašene kartice';

  @override
  String get studyCorrect => 'Točno';

  @override
  String get studyAlmost => 'Gotovo — provjeri pravopis';

  @override
  String get studyWrong => 'Ne baš';

  @override
  String get studyShowText => 'Prikaži tekst';

  @override
  String get flashcardsImportFileFailed =>
      'Datoteku nije moguće otvoriti. Umjesto toga možeš zalijepiti njezin sadržaj.';

  @override
  String get studyNoMatchingCards => 'Ovom izboru zasad ne odgovara nijedna kartica.';

  @override
  String get studyPracticeNew => 'Samo nove';

  @override
  String get studyPracticeHard => 'Teške kartice';

  @override
  String get studyPracticeFavorites => 'Omiljene';

  @override
  String get studySessionSize => 'Kartica po sesiji';

  @override
  String get studySessionAll => 'Sve';

  @override
  String get studyOrder => 'Redoslijed';

  @override
  String get studyOrderDue => 'Najviše zakašnjele prve';

  @override
  String get studyOrderRandom => 'Nasumično';

  @override
  String get studyOrderHardest => 'Najteže prve';

  @override
  String get flashcardsHard => 'Teške';

  @override
  String get flashcardsFavorites => 'Omiljene';

  @override
  String get flashcardsFavorite => 'Dodaj u omiljene';

  @override
  String get flashcardsUnfavorite => 'Ukloni iz omiljenih';

  @override
  String get flashcardsDuplicate => 'Dupliciraj';

  @override
  String get flashcardsMoveTo => 'Premjesti u špil';

  @override
  String get flashcardsNoOtherDeck => 'Najprije izradi drugi špil.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartica premješteno',
      few: '$count kartice premještene',
      one: '$count kartica premještena',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Dodaj oznaku';

  @override
  String get flashcardsTagHint => 'npr. glagoli';

  @override
  String flashcardsSelected(int count) {
    return 'Odabrano: $count';
  }

  @override
  String get flashcardsSelectAll => 'Odaberi sve prikazano';

  @override
  String flashcardsSelectCard(String front) {
    return 'Odaberi $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Prisjećanje $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Mogući duplikat';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Ovaj špil već ima „$front” → „$back”. Svejedno spremiti?';
  }

  @override
  String get flashcardsSaveAnyway => 'Svejedno spremi';

  @override
  String get flashcardsStats => 'Statistika';

  @override
  String get flashcardsStatTotal => 'Kartice';

  @override
  String get flashcardsStatLearning => 'U učenju';

  @override
  String get flashcardsStatMatureCaption => 'Zapamćeno 21+ dana';

  @override
  String get flashcardsStatReviewsToday => 'Današnja ponavljanja';

  @override
  String get flashcardsStatCorrect => 'Točni odgovori';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Zadnjih $days dana';
  }

  @override
  String get flashcardsStatForget => 'Stopa zaboravljanja';

  @override
  String get flashcardsStatForgetCaption => '„Ponovno” kod naučenih kartica';

  @override
  String get flashcardsStatRecall => 'Prisjećanje sada';

  @override
  String get flashcardsStatRecallCaption => 'FSRS procjena, ponovljene kartice';

  @override
  String flashcardsStatActivity(int count) {
    return 'Ponavljanja po danu · ukupno $count';
  }

  @override
  String get flashcardsStatHistory => 'Najnoviji odgovori';

  @override
  String get flashcardsStatNoHistory =>
      'Još nema ponavljanja. Uči iz špila da bi ovdje vidio svoj napredak.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Pročitaj $field naglas';
  }

  @override
  String get speechVoice => 'Glas';

  @override
  String get speechVoiceDefault => 'Automatski';

  @override
  String get speechVoiceOnline => 'potreban internet';

  @override
  String get speechTest => 'Isprobaj glas';

  @override
  String get importNext => 'Pregled';

  @override
  String get importPreviewTitle => 'Poveži stupce s poljima';

  @override
  String get importIgnoreColumn => 'Zanemari';

  @override
  String importColumn(int n) {
    return 'Stupac $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Spremno kartica: $ready · preskočit će se nepotpunih redaka: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Odaberi koji su stupci prednja, a koji stražnja strana.';

  @override
  String get actionMoveUp => 'Pomakni gore';

  @override
  String get actionMoveDown => 'Pomakni dolje';

  @override
  String get flashcardsLayoutTitle => 'Izgled kartice';

  @override
  String get flashcardsLayoutHint =>
      'Preimenuj, sakrij ili presloži dodatna polja ovog špila. Sadržaj kartica nikad se ne mijenja.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Prikaži $field tijekom učenja';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Otkrivaj odgovor korak po korak';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Najprije se prikazuje stražnja strana; svako dodatno polje otvara se dodirom.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Prikaži $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Ova je datoteka veća od $mb MB.';
  }

  @override
  String get flashcardsImage => 'Slika';

  @override
  String get flashcardsAudio => 'Zvuk';

  @override
  String get flashcardsAddImage => 'Dodaj sliku';

  @override
  String get flashcardsAddAudio => 'Dodaj zvuk';

  @override
  String get flashcardsPlayAudio => 'Reproduciraj snimku';

  @override
  String get flashcardsAudioUnavailable => 'Ova se snimka ne može reproducirati na ovom uređaju.';

  @override
  String get flashcardsCustomFields => 'Tvoja polja';

  @override
  String get flashcardsTemplates => 'Predlošci';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Polje $n';
  }

  @override
  String get flashcardsAddField => 'Dodaj polje';

  @override
  String get flashcardsFieldName => 'Naziv polja';

  @override
  String get flashcardsFieldLangDefault => 'Jezik strane';

  @override
  String get flashcardsTemplateConfirm =>
      'Predložak određuje kako se polja prikazuju i dodaje svoja polja. Tvoje kartice i postojeća polja ostaju kakva jesu.';

  @override
  String get flashcardsApplyTemplate => 'Primijeni';

  @override
  String get templateVocabulary => 'Vokabular';

  @override
  String get templateTwoTranslations => 'Riječ s dva prijevoda';

  @override
  String get templateQuestionAnswer => 'Pitanje i odgovor';

  @override
  String get templateDefinition => 'Pojam i definicija';

  @override
  String get templateGrammar => 'Gramatičko pravilo';

  @override
  String get templateFieldPlural => 'Množina';

  @override
  String get templateFieldTranslation2 => 'Drugi prijevod';

  @override
  String get templateFieldSynonyms => 'Sinonimi';

  @override
  String get templateFieldRule => 'Pravilo';

  @override
  String get deckCategory => 'Razina ili tema';

  @override
  String get deckCategoryHint => 'npr. A1, Medicina';

  @override
  String get flashcardsSearchAll => 'Pretraži sve kartice';

  @override
  String get flashcardsSearchAllHint => 'Riječ, prijevod, primjer, bilješka, oznaka…';

  @override
  String get flashcardsAllDecks => 'Svi špilovi';

  @override
  String get flashcardsAllLanguages => 'Svi jezici';

  @override
  String get flashcardsLangUnset => 'Jezik nije postavljen';

  @override
  String get flashcardsLevelUnset => 'Bez razine ili teme';

  @override
  String get flashcardsByLanguage => 'Napredak po jeziku';

  @override
  String get flashcardsByLevel => 'Napredak po razini ili temi';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Špilova: $decks · kartica: $cards · naučenih: $mature · za ponavljanje: $due · točno: $correct (30 dana)';
  }

  @override
  String get flashcardsRecord => 'Snimi';

  @override
  String get flashcardsRecording => 'Snimanje…';

  @override
  String get flashcardsRecordStop => 'Zaustavi i zadrži';

  @override
  String get flashcardsMicDenied =>
      'Pristup mikrofonu je isključen. Za snimanje ga dopusti u postavkama sustava.';

  @override
  String get flashcardsRecordFailed => 'Snimanje nije dostupno na ovom uređaju.';

  @override
  String get soundsTitle => 'Zvukovi';

  @override
  String get soundsNature => 'Priroda';

  @override
  String get soundsNoise => 'Šum za fokus';

  @override
  String get soundRain => 'Kiša';

  @override
  String get soundStorm => 'Grmljavina';

  @override
  String get soundRiver => 'Rijeka';

  @override
  String get soundOcean => 'Morski valovi';

  @override
  String get soundFire => 'Logorska vatra';

  @override
  String get soundForest => 'Ptice u šumi';

  @override
  String get soundNight => 'Ljetna noć';

  @override
  String get soundWhite => 'Bijeli šum';

  @override
  String get soundPink => 'Ružičasti šum';

  @override
  String get soundBrown => 'Smeđi šum';

  @override
  String get soundsPlay => 'Reproduciraj';

  @override
  String get soundsSleep => 'Mjerač za spavanje';

  @override
  String get soundsSleepOff => 'Isključeno';

  @override
  String soundsSleepAt(String time) {
    return 'Zaustavlja se u $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Najviše $count zvukova može svirati odjednom.';
  }

  @override
  String get soundsHint =>
      'Dodirni zvuk za početak. Pomiješaj ih nekoliko i svakom postavi glasnoću.';

  @override
  String get soundsMixer => 'Mješavina';

  @override
  String soundsVolumeOf(String name) {
    return 'Glasnoća: $name';
  }

  @override
  String get soundsChannel => 'Zvukovi prirode';

  @override
  String get settingsEndTone => 'Zvuk na kraju mjerača';

  @override
  String get toneGentle => 'Nježni zvučni signali';

  @override
  String get toneBeeps => 'Zvučni signali';

  @override
  String get toneWood => 'Kucanje po drvu';

  @override
  String get toneBird => 'Zov ptice';

  @override
  String get toneStream => 'Potočić';

  @override
  String get toneSystem => 'Zvuk telefona';

  @override
  String get speechOnPhone => 'Na ovom telefonu';

  @override
  String get speechAllLanguages => 'Svi jezici';

  @override
  String get speechSearchLanguage => 'Pretraži jezike';

  @override
  String get speechGetVoices => 'Preuzmi još glasova';

  @override
  String get speechGetVoicesHint =>
      'Jezike bez glasa možeš preuzeti u postavkama govora na telefonu.';

  @override
  String get speechSettingsFailed => 'Postavke govora na ovom telefonu nije moguće otvoriti.';

  @override
  String get speechVoiceMissing => 'Glas nije instaliran';

  @override
  String get speechPause => 'Pauza između ponavljanja';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Pročitaj primjer uz odgovor';

  @override
  String get flashListen => 'Slušaj';

  @override
  String get flashListenNext => 'Sljedeća kartica';

  @override
  String get flashListenEmpty => 'Nema kartica za slušanje.';

  @override
  String get flashViewTable => 'Tablica';

  @override
  String get flashViewCards => 'Kartice';

  @override
  String get flashSwapSides => 'Zamijeni stupce';

  @override
  String get flashSort => 'Poredaj';

  @override
  String get flashSortNewest => 'Najnovije prve';

  @override
  String get flashSortAlpha => 'Od A do Ž';

  @override
  String get flashSortDue => 'Za ponavljanje prve';

  @override
  String get flashSortHard => 'Najteže prve';

  @override
  String get flashPasteCards => 'Zalijepi kartice';

  @override
  String get flashClipboardEmpty => 'U međuspremniku nema teksta.';

  @override
  String get flashMenuAdd => 'Dodaj kartice';

  @override
  String get flashMenuDeck => 'Špil';

  @override
  String get flashToday => 'Danas';

  @override
  String get flashStudyNow => 'Uči';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odgovorenih kartica',
      few: '$count odgovorene kartice',
      one: '$count odgovorena kartica',
      zero: 'Nema odgovorenih kartica',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Kiša u šumi';

  @override
  String get autoBackupTitle => 'Automatske sigurnosne kopije';

  @override
  String get autoBackupDesc => 'Svaki dan na ovom telefonu; čuva se zadnjih 7';

  @override
  String get autoBackupHint =>
      'Ove kopije ostaju na ovom telefonu i brišu se ako deinstaliraš aplikaciju. Za prelazak na novi telefon spremi datoteku pomoću „Sigurnosna kopija”.';

  @override
  String get autoBackupNone => 'Još nema automatske sigurnosne kopije. Prva se izrađuje danas.';

  @override
  String get autoBackupRestore => 'Vrati';

  @override
  String autoBackupConfirm(String date) {
    return 'Zamijeniti sve trenutačne podatke sigurnosnom kopijom od $date?';
  }

  @override
  String get autoBackupRestored => 'Vraćeno.';

  @override
  String get errorLogTitle => 'Zapisnik pogrešaka';

  @override
  String get errorLogHint =>
      'Ako nešto pođe po zlu, zabilježi se ovdje: samo vrsta pogreške i mjesto u kodu, nikad tvoj sadržaj. Podijeli ga da pomogneš riješiti problem.';

  @override
  String get errorLogEmpty => 'Nema zabilježenih pogrešaka.';

  @override
  String get errorLogClear => 'Očisti';

  @override
  String get soundsWithFocus => 'Reproduciraj tijekom sesija fokusa';

  @override
  String get soundsWithFocusHint =>
      'Tvoja mješavina počinje sa sesijom fokusa i pauzira se tijekom pauza.';

  @override
  String get soundsSavedMixes => 'Spremljene mješavine';

  @override
  String get soundsSaveMix => 'Spremi ovu mješavinu';

  @override
  String get soundsMixNameHint => 'Naziv, npr. Kišna knjižnica';

  @override
  String soundsDeleteMix(String name) {
    return 'Izbrisati mješavinu „$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Jednom dnevno, samo kad ima kartica za ponavljanje';

  @override
  String get settingsReviewTime => 'Vrijeme podsjetnika';

  @override
  String get shortcutFocus => 'Fokus';

  @override
  String get shortcutNewTask => 'Novi zadatak';

  @override
  String get shortcutReview => 'Ponovi kartice';

  @override
  String get shortcutSounds => 'Zvukovi prirode';

  @override
  String get myDayTitle => 'Započni moj dan';

  @override
  String get myDayHint => 'Tvoj dan na prvi pogled, zatim fokus jednim dodirom';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zadataka za danas',
      few: '$count zadatka za danas',
      one: '$count zadatak za danas',
      zero: 'Danas nema zadataka',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Danas više nema događaja';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Sljedeće: $title u $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Preostalo je $count navika',
      few: 'Preostale su $count navike',
      one: 'Preostala je $count navika',
      zero: 'Sve su navike obavljene',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Započni sesijom fokusa';

  @override
  String get hijriMonth1 => 'Muharem';

  @override
  String get hijriMonth2 => 'Safer';

  @override
  String get hijriMonth3 => 'Rebiul-evel';

  @override
  String get hijriMonth4 => 'Rebiul-ahir';

  @override
  String get hijriMonth5 => 'Džumadel-ula';

  @override
  String get hijriMonth6 => 'Džumadel-uhra';

  @override
  String get hijriMonth7 => 'Redžeb';

  @override
  String get hijriMonth8 => 'Šaban';

  @override
  String get hijriMonth9 => 'Ramazan';

  @override
  String get hijriMonth10 => 'Ševal';

  @override
  String get hijriMonth11 => 'Zul-kade';

  @override
  String get hijriMonth12 => 'Zul-hidže';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day. $month $year. h.';
  }

  @override
  String get settingsHijri => 'Hidžretski datumi';

  @override
  String get settingsHijriHint => 'Prikazuju se u kalendaru i na početnom zaslonu (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dana',
      few: '$count dana',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Danas $done od $goal kartica';
  }

  @override
  String get studyGoalReached => 'Dnevni cilj je dosegnut. Bravo!';

  @override
  String get studyWeekTitle => 'Tvoj tjedan';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U 7 dana $count odgovorenih kartica',
      few: 'U 7 dana $count odgovorene kartice',
      one: 'U 7 dana $count odgovorena kartica',
      zero: 'U 7 dana nema odgovorenih kartica',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fokusa u 7 dana';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Niz: $current · Najbolji: $best';
  }

  @override
  String get studyGoalTitle => 'Dnevni cilj (kartice)';

  @override
  String get studyGoalOff => 'Isključeno';

  @override
  String get focusDndTitle => 'Ne ometaj tijekom fokusa';

  @override
  String get focusDndHint => 'Uključuje se za svaku sesiju fokusa i isključuje se tijekom pauze';

  @override
  String get focusDndNeedsAccess => 'Za korištenje dopusti pristup u postavkama telefona';

  @override
  String get voiceInput => 'Govori za pisanje';

  @override
  String get voiceInputPrompt => 'Govori sada';

  @override
  String get voiceInputUnavailable =>
      'Glasovni unos nije dostupan na ovom telefonu. Instaliraj ili uključi uslugu govora (na primjer Googleovo prepoznavanje i sintezu govora).';

  @override
  String get prayerFajr => 'Sabah';

  @override
  String get prayerSunrise => 'Izlazak sunca';

  @override
  String get prayerDhuhr => 'Podne';

  @override
  String get prayerAsr => 'Ikindija';

  @override
  String get prayerMaghrib => 'Akšam';

  @override
  String get prayerIsha => 'Jacija';

  @override
  String get prayerMethodMwl => 'Muslimanska svjetska liga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Meka';

  @override
  String get prayerMethodEgypt => 'Egipatsko opće tijelo';

  @override
  String get prayerMethodJordan => 'Jordan, Ministarstvo vakufa';

  @override
  String get prayerMethodKarachi => 'Sveučilište islamskih znanosti, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Regija Zaljeva';

  @override
  String get prayerMethodKuwait => 'Kuvajt';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Turska, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malezija, Indonezija';

  @override
  String get prayerMethodFrance => 'Francuska (12°)';

  @override
  String get prayerMethodRussia => 'Rusija, Duhovna uprava';

  @override
  String prayerNotifTitle(String name) {
    return 'Vrijeme je za $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Vrijeme namaza · $time';
  }

  @override
  String get prayerTitle => 'Vremena namaza';

  @override
  String get prayerOffHint =>
      'Odaberi svoj grad da vidiš vremena namaza. Izračunavaju se na telefonu; pristup lokaciji nije potreban.';

  @override
  String get prayerChooseCity => 'Odaberi grad';

  @override
  String get prayerCity => 'Grad';

  @override
  String get prayerCitySearch => 'Traži grad';

  @override
  String get prayerMethod => 'Metoda izračuna';

  @override
  String get prayerHanafiAsr => 'Hanefijska ikindija (kasnije vrijeme)';

  @override
  String get prayerReminders => 'Obavijesti u svako vrijeme namaza';

  @override
  String get prayerPauseFocus => 'Pauziraj fokus u vrijeme namaza';

  @override
  String get prayerPauseFocusHint => 'Sesija u tijeku se pauzira; nastavi nakon namaza';

  @override
  String get prayerTurnOff => 'Isključi vremena namaza';

  @override
  String get prayerAccuracyNote =>
      'Izračunata vremena mogu se za nekoliko minuta razlikovati od tvoje lokalne džamije.';

  @override
  String prayerNext(String name, String time) {
    return '$name u $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Ova Anki datoteka koristi najnoviji format. U Ankiju je ponovno izvezi s uključenom opcijom „Podrži starije verzije Ankija”, a zatim uvezi tu datoteku.';

  @override
  String get importTemplate => 'Predložak proračunske tablice';

  @override
  String get importTemplateFront => 'jabuka';

  @override
  String get importTemplateBack => 'okruglo voće';

  @override
  String get importTemplateExample => 'Svaki dan pojedem jabuku.';

  @override
  String get importTemplateTag => 'hrana';

  @override
  String get starterTitle => 'Početni špilovi';

  @override
  String get starterHint =>
      'Dodaj jedan da odmah počneš učiti. Kasnije ga možeš urediti ili izbrisati.';

  @override
  String get starterAdd => 'Dodaj';

  @override
  String get starterWords => 'Svakodnevne engleske riječi (arapski)';

  @override
  String get starterCapitals => 'Glavni gradovi svijeta';

  @override
  String get starterElements => 'Kemijski elementi';

  @override
  String get settingsAccent => 'Boja naglaska';

  @override
  String get accentViolet => 'Ljubičasta';

  @override
  String get accentBlue => 'Plava';

  @override
  String get accentTeal => 'Tirkizna';

  @override
  String get accentGreen => 'Zelena';

  @override
  String get accentRose => 'Ružičasta';

  @override
  String get accentAmber => 'Jantarna';

  @override
  String get settingsFlashTextSize => 'Veličina teksta na karticama';

  @override
  String get settingsFlashTextSample => 'Primjer';

  @override
  String get widgetStartFocus => 'Dodirni za fokus';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokus do $time';
  }

  @override
  String get widgetNoCardsDue => 'Kartice: sve je gotovo';

  @override
  String get faqMyDayQ => 'Što radi „Započni moj dan”?';

  @override
  String get faqMyDayA =>
      'Jednom dnevno nudi ga početni zaslon: vidiš današnje zadatke, sljedeći događaj, preostale navike i kartice za ponavljanje, a zatim jednim dodirom pokrećeš sesiju fokusa. Dugo pritisni ikonu aplikacije za brze radnje ili dodaj widget na početni zaslon da vidiš vrijeme fokusa i kartice za ponavljanje.';

  @override
  String get faqTasksQ => 'Kako dodati zadatak s podsjetnikom?';

  @override
  String get faqTasksA =>
      'Dodirni Novi zadatak na Početnoj ili + u Zadacima. Upiši naslov ili ga izgovori u mikrofon, a zatim postavi rok, vrijeme i podsjetnik. Zakašnjeli zadaci prikazuju se prvi.';

  @override
  String get faqFocusQ => 'Kako radi mjerač fokusa?';

  @override
  String get faqFocusA =>
      'Odaberi Pomodoro, odbrojavanje ili slobodno vrijeme i pritisni Pokreni; pauze mogu slijediti automatski. U Postavkama možeš odabrati završni zvuk, uključiti Ne ometaj tijekom fokusa i puštati zvukove prirode uz svaku sesiju.';

  @override
  String get faqSoundsQ => 'Mogu li miješati zvukove prirode?';

  @override
  String get faqSoundsA =>
      'Uključi do šest stvarnih snimaka, svakoj postavi glasnoću i spremi mješavinu pod nazivom. Sviraju u pozadini, a mjerač za spavanje može ih zaustaviti. Glazba se ne koristi.';

  @override
  String get faqCalendarQ => 'Može li kalendar prikazati hidžretske datume?';

  @override
  String get faqCalendarA =>
      'Da. Hidžretski datumi (Umm al-Qura) automatski se prikazuju na arapskom, a u Postavkama ih možeš uključiti za bilo koji jezik. Događaji, zadaci s rokom i prekretnice projekata prikazuju se zajedno.';

  @override
  String get faqFlashcardsQ => 'Kako ponavljanje odlučuje koje ću kartice vidjeti?';

  @override
  String get faqFlashcardsA =>
      'Kartice koje dobro znaš vraćaju se nakon duljih razmaka, a one koje promašiš vraćaju se uskoro (ponavljanje u razmacima). Ocijeni svaki odgovor s Ponovno, Teško, Dobro ili Lako. Postavi dnevni cilj i održi niz na kartici Danas. Postavi datum ispita u špilu da vidiš koliko je dana ostalo i koliko novih kartica dnevno treba naučiti. Poredaj po „Moj redoslijed” da povučeš kartice na mjesto, dodirni zvučnik na bilo kojoj strani da je čuješ, a brzinu i ponavljanja postavi u izborniku Govor.';

  @override
  String get faqImportQ => 'Mogu li prenijeti kartice iz Ankija ili Excela?';

  @override
  String get faqImportA =>
      'Da. U špilu odaberi Uvezi, zatim datoteku: Anki (.apkg), Excel (.xlsx) ili CSV, i poveži stupce. Pomoću „Predložak proračunske tablice” možeš pisati kartice na računalu. Slike i zvukovi u Anki datotekama ne uvoze se.';

  @override
  String get faqNotesQ => 'Što mogu bilješke?';

  @override
  String get faqNotesA =>
      'Piši slobodno s popisima provjere i oblikovanjem, prikvači ili označi važne bilješke kao omiljene, dodaj oznake i poveži bilješke sa zadacima. Gumbom mikrofona možeš diktirati. Nova bilješka može početi od predloška (predavanje, sažetak knjige, dnevnik, tjedni plan), a gumb za sliku dodaje fotografije.';

  @override
  String get faqHabitsQ => 'Kako se broje nizovi navika?';

  @override
  String get faqHabitsA =>
      'Dan se računa kad na zakazani dan dosegneš cilj navike. Pauziranje navike čuva niz. Svaka navika može imati svoje vrijeme podsjetnika.';

  @override
  String get faqGoalsQ => 'Kako ciljevi prate napredak?';

  @override
  String get faqGoalsA =>
      'Zadaj cilju ciljanu vrijednost i jedinicu, a zatim bilježi napredak. Njegova kartica pokazuje koliko si daleko i koliko je ostalo do roka.';

  @override
  String get faqProjectsQ => 'Čemu služe projekti?';

  @override
  String get faqProjectsA =>
      'Grupiraj zadatke u projekt, dodaj prekretnice s datumima i prati ukupni napredak. Prekretnice se prikazuju i u kalendaru.';

  @override
  String get faqInsightsQ => 'Što prikazuju Uvidi?';

  @override
  String get faqInsightsA =>
      'Tvoje vrijeme fokusa, završene zadatke i učenje po danima i tjednima, uz nježne prijedloge. Sve se izračunava na tvom telefonu.';

  @override
  String get faqSpacesQ => 'Gdje su svi dijelovi?';

  @override
  String get faqSpacesA =>
      'Prostori navode sve dijelove aplikacije (bilješke, špilove, navike, ciljeve, projekte, zvukove i još toga) kako bi glavna traka ostala jednostavna.';

  @override
  String get faqBackupQ => 'Kako se rade sigurnosne kopije mojih podataka?';

  @override
  String get faqBackupA =>
      'Aplikacija svaki dan tiho sprema šifriranu kopiju na ovaj telefon i čuva zadnjih 7. U Postavkama možeš i izvesti sigurnosnu kopiju zaštićenu lozinkom i vratiti je na drugom telefonu.';

  @override
  String get faqPrayerQ => 'Kako rade vremena namaza?';

  @override
  String get faqPrayerA =>
      'Odaberi svoj grad u Postavke → Vremena namaza. Vremena se izračunavaju na telefonu metodom koja se ondje koristi, a metodu i mezheb za ikindiju možeš promijeniti. Možeš dobiti obavijest za svaki namaz, a sesija fokusa u tijeku se pauzira.';

  @override
  String get faqPrivacyQ => 'Gdje se spremaju moji podaci?';

  @override
  String get faqPrivacyA =>
      'Samo na tvom telefonu, u šifriranoj bazi podataka. Bez računa i bez praćenja. Internet koriste samo značajke koje sam uključiš, poput neobaveznog asistenta.';

  @override
  String get faqAssistantQ => 'Što je asistent?';

  @override
  String get faqAssistantA =>
      'Neobavezni pomoćnik koji u Postavkama povezuješ sa svojom uslugom umjetne inteligencije. Zadano je isključen i pita prije slanja bilo kakvog teksta bilješke.';

  @override
  String get tourPlanTitle => 'Isplaniraj svoj dan';

  @override
  String get tourPlanBody =>
      'Zadaci, kalendar i navike na jednom mirnom mjestu. Započni svako jutro s „Započni moj dan”.';

  @override
  String get tourFocusTitle => 'Duboko se fokusiraj';

  @override
  String get tourFocusBody =>
      'Sesije s mjeračem, stvarnim zvukovima prirode, Ne ometaj i nježnim završnim tonovima.';

  @override
  String get tourLearnTitle => 'Uči zauvijek';

  @override
  String get tourLearnBody =>
      'Kartice s ponavljanjem u razmacima, čitanje naglas na mnogo jezika i uvoz iz Ankija ili Excela.';

  @override
  String get helpTitle => 'Pomoć i pitanja';

  @override
  String get helpOpen => 'Otvori';

  @override
  String get helpTour => 'Pogledaj obilazak';

  @override
  String get tourNext => 'Dalje';

  @override
  String get tourDone => 'Krenimo';

  @override
  String get transferColTitle => 'Naslov';

  @override
  String get transferColNotes => 'Bilješke';

  @override
  String get transferColBody => 'Tekst';

  @override
  String get transferColDue => 'Rok';

  @override
  String get transferColPriority => 'Prioritet (0-3)';

  @override
  String get transferColDone => 'Gotovo';

  @override
  String get transferColProject => 'Projekt';

  @override
  String get transferColCategory => 'Kategorija';

  @override
  String get transferTitle => 'Uvoz i izvoz';

  @override
  String get transferSaveAs => 'Spremi kao';

  @override
  String get transferImport => 'Uvezi iz datoteke';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV ili tablica u Wordu. Stupci: naslov, rok (2026-12-31), prioritet 0-3, gotovo, projekt, bilješke. Zadaci koji su već u aplikaciji preskaču se.';

  @override
  String get transferImportNotesHint =>
      'Datoteke iz Worda, Markdowna ili tekstne datoteke postaju bilješka. Excel ili CSV: jedna bilješka po retku (naslov, tekst).';

  @override
  String get transferSaved => 'Datoteka spremljena';

  @override
  String get transferFailed => 'Datoteku nije moguće izraditi. Ništa nije promijenjeno.';

  @override
  String get transferUnsupported =>
      'Ova se datoteka ne može ovdje pročitati. Koristi Excel, CSV, Word, Markdown ili tekst.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Dodano $added stavki',
      few: 'Dodane $added stavke',
      one: 'Dodana $added stavka',
      zero: 'Nema ničeg novog za dodati',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Tekst';

  @override
  String get transferAllNotes => 'Sve bilješke';

  @override
  String get transferThisNote => 'Ova bilješka';

  @override
  String get transferDeckFormats => 'Spremi kao Excel, Word ili PDF';

  @override
  String get faqFilesQ => 'Mogu li koristiti datoteke Excel, Word ili PDF?';

  @override
  String get faqFilesA =>
      'Da. Zadaci i Bilješke imaju gumb za uvoz i izvoz (dvije strelice) na vrhu, a svaki ga špil ima u izborniku. Spremi kao Excel, CSV, Word ili PDF ili donesi datoteke Excel, CSV, Word, Markdown ili tekst. Nazivi stupaca mogu biti na bilo kojem jeziku aplikacije, a spremljene datoteke uvijek se mogu ponovno uvesti.';

  @override
  String get tplLecture => 'Predavanje';

  @override
  String get tplBook => 'Sažetak knjige';

  @override
  String get tplJournal => 'Dnevnik';

  @override
  String get tplWeek => 'Tjedni plan';

  @override
  String get tplLectureBody => '## Ključne točke\n- \n\n## Pitanja\n- [ ] \n\n## Sažetak\n';

  @override
  String get tplBookBody =>
      '## Glavna ideja\n\n## Što sam naučio\n- \n\n## Citati\n> \n\n## Za primjenu\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Zahvalan sam na\n- \n\n## Današnji fokus\n- [ ] \n\n## Bilješke\n';

  @override
  String get tplWeekBody =>
      '## Ciljevi ovog tjedna\n- [ ] \n\n### Subota\n- [ ] \n\n### Nedjelja\n- [ ] \n\n### Ponedjeljak\n- [ ] \n\n### Utorak\n- [ ] \n\n### Srijeda\n- [ ] \n\n### Četvrtak\n- [ ] \n\n### Petak\n- [ ] \n';

  @override
  String get tplHint => 'Započni od predloška';

  @override
  String get noteImage => 'Slika';

  @override
  String get noteAddImage => 'Dodaj sliku';

  @override
  String get noteImageUnreadable => 'Ova datoteka nije slika koju aplikacija može pročitati.';

  @override
  String get noteImageTooLarge => 'Ova je slika prevelika.';

  @override
  String get examSet => 'Postavi datum ispita';

  @override
  String get examDate => 'Datum ispita';

  @override
  String get examToday => 'Ispit je danas. Sretno!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ispit za $count dana',
      few: 'Ispit za $count dana',
      one: 'Ispit za $count dan',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'uči $count novih kartica dnevno',
      few: 'uči $count nove kartice dnevno',
      one: 'uči $count novu karticu dnevno',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'sve su kartice naučene, nastavi ponavljati';

  @override
  String examRaiseLimit(int count) {
    return 'Prikaži $count novih kartica dnevno';
  }

  @override
  String get backupDriveHint =>
      'Za kopiju na internetu odaberi Google disk (ili drugu aplikaciju u oblaku) na zaslonu za spremanje koji se otvori.';

  @override
  String get flashShareDeck => 'Podijeli špil s prijateljem';

  @override
  String get flashSortManual => 'Moj redoslijed (povlačenje)';

  @override
  String get flashReorderHint => 'Drži hvatište i povuci karticu da je premjestiš.';

  @override
  String get flashReorderNeedsAll => 'Očisti pretraživanje i filtre da bi povlačio kartice.';

  @override
  String get flashDragHandle => 'Povuci za premještanje';

  @override
  String get reportTitle => 'Mjesečno izvješće';

  @override
  String get reportFocus => 'Vrijeme fokusa';

  @override
  String reportSessions(int count) {
    return 'Sesija: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Najbolji dan: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Aktivnih dana: $count';
  }

  @override
  String get reportCards => 'Ponovljene kartice';

  @override
  String reportCardsKnown(String percent) {
    return 'Zapamćeno $percent';
  }

  @override
  String get reportTasks => 'Završeni zadaci';

  @override
  String get reportHabits => 'Oznake navika';

  @override
  String get reportEmpty => 'Ovaj mjesec još ništa nije zabilježeno.';

  @override
  String get reportSave => 'Spremi kao PDF ili Word';

  @override
  String get reportPrevMonth => 'Prethodni mjesec';

  @override
  String get reportNextMonth => 'Sljedeći mjesec';

  @override
  String get careTitle => 'Briga o telefonu i podacima';

  @override
  String get storageTitle => 'Pohrana';

  @override
  String get storageSubtitle => 'Što zauzima prostor i čišćenje nekorištenih slika';

  @override
  String get storagePictures => 'Slike u bilješkama';

  @override
  String get storageCardMedia => 'Slike i zvuk u karticama';

  @override
  String get storageText => 'Tekst bilješki';

  @override
  String get storageFree => 'Slobodno na telefonu';

  @override
  String get storageLow =>
      'Telefon je gotovo pun. Oslobodi malo prostora da sigurnosne kopije i podsjetnici nastave raditi.';

  @override
  String storageUnused(int count, String size) {
    return 'Nekorištenih slika: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Nema nekorištenih slika. Sve je uredno.';

  @override
  String get storageClean => 'Ukloni nekorištene slike';

  @override
  String storageCleaned(int count) {
    return 'Uklonjeno slika: $count';
  }

  @override
  String get storageHint =>
      'Slika se smatra nekorištenom samo kad je ne prikazuje nijedna bilješka, uključujući bilješke u smeću.';

  @override
  String get batteryTitle => 'Neka podsjetnici rade';

  @override
  String get batterySubtitle => 'Neki telefoni zaustavljaju aplikacije u pozadini. Provjeri svoj.';

  @override
  String get batteryStatusOk =>
      'Ušteda baterije ne ograničava ovu aplikaciju. Podsjetnici i zvukovi trebali bi stizati na vrijeme.';

  @override
  String get batteryStatusLimited =>
      'Ušteda baterije može zaustaviti ovu aplikaciju u pozadini pa podsjetnici i zvukovi mogu kasniti ili izostati.';

  @override
  String get batteryOpen => 'Otvori postavke baterije';

  @override
  String get batteryOpenApp => 'Otvori postavke aplikacije';

  @override
  String get batteryGeneric =>
      'U postavkama baterije odaberi ovu aplikaciju i postavi je na Neograničeno (ili Ne optimiziraj).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: otvori i Sigurnost › Dopuštenja › Automatsko pokretanje, uključi ovu aplikaciju i postavi uštedu baterije na Bez ograničenja.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: otvori Baterija › ova aplikacija i dopusti aktivnost u pozadini i automatsko pokretanje; zaključaj aplikaciju na popisu nedavnih aplikacija.';

  @override
  String get batterySamsung =>
      'Samsung: Baterija › Ograničenja upotrebe u pozadini: ukloni ovu aplikaciju iz Uspavanih aplikacija i Duboko uspavanih aplikacija.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Pokretanje aplikacija › ova aplikacija › upravljaj ručno i dopusti automatsko pokretanje, sekundarno pokretanje i rad u pozadini.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Baterija › Potrošnja energije u pozadini › dopusti ovu aplikaciju i u dopuštenjima uključi automatsko pokretanje.';

  @override
  String get whatsNewTitle => 'Što je novo';

  @override
  String get whatsNewSubtitle => 'Najnovije promjene u nekoliko redaka';

  @override
  String get whatsNewDone => 'Razumijem';

  @override
  String get whatsNewOrderTitle => 'Povuci kartice u vlastiti redoslijed';

  @override
  String get whatsNewOrderBody =>
      'U špilu odaberi Poredaj › Moj redoslijed, zatim drži hvatište i povuci.';

  @override
  String get whatsNewSpeechTitle => 'Zvučnik na svakoj strani kartice';

  @override
  String get whatsNewSpeechBody =>
      'Dodirni ga da čuješ riječ ili prijevod. Brzina, ponavljanja i glas nalaze se u izborniku ponavljanja. Jezik se prepoznaje iz teksta.';

  @override
  String get whatsNewReportTitle => 'Mjesečno izvješće';

  @override
  String get whatsNewReportBody =>
      'U Uvidima dodirni ikonu izvješća da vidiš mjesec i spremiš ga kao PDF ili Word.';

  @override
  String get whatsNewCareTitle => 'Briga o telefonu i podacima';

  @override
  String get whatsNewCareBody =>
      'Postavke sada imaju stranicu pohrane s čišćenjem slika i vodič za bateriju za marku tvog telefona.';

  @override
  String get whatsNewSoundTitle => 'Mirniji zvukovi';

  @override
  String get whatsNewSoundBody => 'Zvukovi prirode su mekši i tiši, a kartice sa slikama ljepše.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Provjereno $date: najnovija sigurnosna kopija ispravno se otvara.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Provjereno $date: pronađena je oštećena sigurnosna kopija i zamijenjena novom.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Provjereno $date: najnoviju sigurnosnu kopiju nije moguće otvoriti. Sam spremi datoteku sigurnosne kopije u Postavkama.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Obično učiš oko $time';
  }

  @override
  String get smartReviewTimeUse => 'Koristi';

  @override
  String get widgetNewNote => 'Nova bilješka';

  @override
  String get noteConnections => 'Oznake, poveznice i zadaci';

  @override
  String get navCards => 'Kartice';

  @override
  String get studyAnswerWay => 'Kako odgovarati';

  @override
  String get studyMorePractice => 'Dodatno vježbanje';

  @override
  String get studySessionSettings => 'Postavke sesije';

  @override
  String get focusAdjustTitle => 'Tvoja sesija';

  @override
  String get focusPresetsTitle => 'Gotove postavke';

  @override
  String get focusPresetStudy => 'Učenje';

  @override
  String get focusPresetDeep => 'Duboki rad';

  @override
  String get focusPresetQuick => 'Brzi sprint';

  @override
  String get focusPresetReading => 'Čitanje';

  @override
  String get focusPresetWorkout => 'Krugovi vježbanja';

  @override
  String get focusAdjustMinutes => 'Trajanje fokusa';

  @override
  String get focusAdjustBreak => 'Trajanje pauze';

  @override
  String get focusAdjustRounds => 'Krugovi';

  @override
  String get focusRoundsOpen => 'Bez ograničenja';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Dodirni za promjenu vremena';

  @override
  String get flashArrangeDecks => 'Presloži špilove';

  @override
  String get flashDeckActions => 'Mogućnosti špila';

  @override
  String get starterBrowse => 'Gotovi špilovi';

  @override
  String get starterBrowseHint => 'Dodaj jedan jednim dodirom i počni učiti';

  @override
  String get dashOpenDecks => 'Otvori svoje kartice';

  @override
  String speechVoiceNumber(String n) {
    return 'Glas $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Lijep ritam. Odmor od $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Pokreni pauzu';

  @override
  String tasksFinishAt(String time) {
    return 'Ako počneš sada, sve ćeš završiti do $time';
  }

  @override
  String get focusCalmPacing => 'Miran tempo';

  @override
  String get focusCalmPacingHint => 'Samo cijele minute i prsten, bez sekundi koje otkucavaju';

  @override
  String get focusFlipHint => 'Okreni telefon zaslonom prema dolje za početak';

  @override
  String get focusImmersive => 'Uronjeni način';

  @override
  String get focusImmersiveBlack => 'Potpuno crna (štedi bateriju)';

  @override
  String get focusFlipToFocus => 'Okreni za fokus';

  @override
  String get focusFlipToFocusHint =>
      'U uronjenom načinu: zaslon prema dolje pokreće, podizanje pauzira';

  @override
  String get guardTitle => 'Čuvar od ometanja';

  @override
  String get guardSubtitle => 'Pauziraj aplikacije koje ometaju dok se fokusiraš';

  @override
  String get guardSwitch => 'Pauziraj aplikacije koje ometaju';

  @override
  String get guardSwitchHint => 'Tijekom sesija fokusa i tvojih sati Vremenskog čuvara';

  @override
  String get guardNeedsAccess => 'Treba prekidač pristupačnosti: dodirni da ga uključiš';

  @override
  String get guardDisclosureTitle => 'Kako čuvar radi';

  @override
  String get guardDisclosureBody =>
      'Kako bi pauzirao aplikacije koje odabereš, Deep Focus koristi Androidovu uslugu pristupačnosti da vidi koja je aplikacija otvorena. Uz uključeno „Zatvori Shorts i Reels” provjerava i je li na zaslonu reproduktor kratkih videozapisa.\n\nNe čita tekst, ne sprema ništa od onoga što vidi i ništa nikamo ne šalje: sve ostaje na tvom telefonu. Možeš ga bilo kada isključiti u postavkama pristupačnosti.';

  @override
  String get guardAgree => 'Slažem se i otvori postavke';

  @override
  String get guardModeGentle => 'Blago';

  @override
  String get guardModeStrict => 'Strogo';

  @override
  String get guardGentleHint => 'Pauza za disanje od 5 sekundi, a zatim ti biraš';

  @override
  String get guardStrictHint => 'Odabrane aplikacije ostaju zatvorene do kraja vremena fokusa';

  @override
  String get guardApps => 'Aplikacije za pauziranje';

  @override
  String get guardAppsAllowed => 'Dopuštene aplikacije';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikacija',
      few: '$count aplikacije',
      one: '$count aplikacija',
      zero: 'Još ništa nije odabrano',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Dopusti samo odabrane aplikacije';

  @override
  String get guardAllowlistHint =>
      'Sve ostale aplikacije se pauziraju; pozivi, postavke i tipkovnica uvijek rade';

  @override
  String get guardShorts => 'Zatvori Shorts i Reels';

  @override
  String get guardShortsHint =>
      'Kad god je čuvar uključen. Koliko je moguće: ove se aplikacije često mijenjaju';

  @override
  String get guardSchedule => 'Vremenski čuvar';

  @override
  String get guardScheduleHint => 'Čuvaj i u određene dane i sate, npr. u školi ili na poslu';

  @override
  String get guardFrom => 'Od';

  @override
  String get guardTo => 'Do';

  @override
  String get guardSearchApps => 'Pretraži aplikacije';

  @override
  String get guardNoApps => 'Nije pronađena nijedna aplikacija';

  @override
  String get guardPrivacy =>
      'Radi samo na tvom telefonu: čuvar vidi koja je aplikacija otvorena, nikad što je u njoj, i ništa ne šalje.';

  @override
  String get guardBreathe => 'Udahni… i izdahni';

  @override
  String get guardQuestion => 'Treba li ti ova aplikacija sada?';

  @override
  String get guardBackToFocus => 'Natrag na fokus';

  @override
  String get guardOpenFive => 'Otvori na 5 minuta';

  @override
  String get guardStrictBody => 'Ova je aplikacija pauzirana do kraja tvog vremena fokusa.';

  @override
  String get guardShortsClosed => 'Kratki videozapisi zatvaraju se dok je čuvar uključen';

  @override
  String get faqGuardQ => 'Kako zaustaviti aplikacije koje me ometaju dok se fokusiram?';

  @override
  String get faqGuardA =>
      'Otvori Fokus → postavke mjerača → Čuvar od ometanja. Odaberi aplikacije, zatim Blago (5 sekundi disanja i pitanje „Treba li ti ova aplikacija sada?”) ili Strogo (ostaju zatvorene). Radi tijekom sesija fokusa i, uz Vremenskog čuvara, u dane i sate koje postaviš. „Dopusti samo odabrane aplikacije” pauzira sve ostalo; pozivi, postavke i tipkovnica uvijek rade. Android te jednom zatraži da uključiš čuvara u postavkama pristupačnosti. Vidi samo koja je aplikacija otvorena i ništa ne šalje.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Premješteno u $name';
  }

  @override
  String get notesDragHint => 'Drži bilješku i povuci je na bilježnicu';

  @override
  String get guardReviewCards => 'Radije ponovi kartice';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Čeka te $count kartica',
      few: 'Čekaju te $count kartice',
      one: 'Čeka te $count kartica',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Hitno: drži 10 sekundi';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Nastavi držati… $n';
  }

  @override
  String get guardWeekTitle => 'Ovaj tjedan';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauza',
      few: '$count pauze',
      one: '$count pauza',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count puta natrag na fokus',
      few: '$count puta natrag na fokus',
      one: '$count put natrag na fokus',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Preimenuj riječi';

  @override
  String get wordsSubtitle => 'Koristi vlastitu riječ za bilo koji tekst u aplikaciji';

  @override
  String get wordsHint =>
      'Dodirni tekst da ga promijeniš. Tvoje riječi vrijede samo za ovaj jezik i čuvaju se u sigurnosnim kopijama.';

  @override
  String get wordsSearch => 'Pretraži tekstove';

  @override
  String get wordsChangedOnly => 'Samo promijenjeni';

  @override
  String wordsOriginal(String text) {
    return 'Izvornik: $text';
  }

  @override
  String get wordsReset => 'Koristi izvornik';

  @override
  String get wordsResetAll => 'Vrati sve riječi';

  @override
  String get wordsResetAllConfirm => 'Svi tekstovi na ovom jeziku vraćaju se na izvornik.';

  @override
  String get wordsNone => 'Nije pronađen nijedan tekst';

  @override
  String get settingsLanguageSearch => 'Pretraži jezike';

  @override
  String get settingsLanguageNoMatch => 'Nijedan jezik ne odgovara';

  @override
  String get soundsMyMusic => 'Vaš zvuk';

  @override
  String get soundsMusicHint =>
      'Reproducirajte audiodatoteku s telefona. Ništa se ne kopira ni ne prenosi.';

  @override
  String get soundsChooseMusic => 'Odaberite zvuk';

  @override
  String get soundsRemoveMusic => 'Ukloni zvuk';

  @override
  String get wordPacksTitle => 'Učenje jezika';

  @override
  String get wordPacksHint =>
      'Popisi riječi po temama. Preuzmite samo jezik koji želite, a zatim slobodno uređujte ili brišite kartice.';

  @override
  String get wordPacksFailed => 'Preuzimanje nije uspjelo. Provjerite vezu.';

  @override
  String get wordPacksEmpty => 'Riječi za ovaj jezik još se pripremaju.';
}
