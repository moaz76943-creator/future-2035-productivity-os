// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

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
  String get moduleSearch => 'Pretraga';

  @override
  String get moduleAssistant => 'Asistent';

  @override
  String get moduleSettings => 'Postavke';

  @override
  String get moduleTrash => 'Otpad';

  @override
  String get actionSave => 'Sačuvaj';

  @override
  String get actionCancel => 'Otkaži';

  @override
  String get actionDelete => 'Izbriši';

  @override
  String get actionEdit => 'Uredi';

  @override
  String get actionDone => 'Gotovo';

  @override
  String get actionAdd => 'Dodaj';

  @override
  String get actionCreate => 'Kreiraj';

  @override
  String get actionClose => 'Zatvori';

  @override
  String get actionBack => 'Nazad';

  @override
  String get actionUndo => 'Poništi';

  @override
  String get actionRestore => 'Vrati';

  @override
  String get actionRetry => 'Pokušaj ponovo';

  @override
  String get actionContinue => 'Nastavi';

  @override
  String get actionSkip => 'Preskoči';

  @override
  String get actionArchive => 'Arhiviraj';

  @override
  String get actionUnarchive => 'Vrati iz arhive';

  @override
  String get actionPin => 'Zakači';

  @override
  String get actionUnpin => 'Otkači';

  @override
  String get actionMore => 'Više opcija';

  @override
  String get actionClear => 'Očisti';

  @override
  String get actionSearch => 'Traži';

  @override
  String get actionSort => 'Sortiraj';

  @override
  String get actionShare => 'Podijeli';

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
  String get actionDeleteForever => 'Trajno izbriši';

  @override
  String get actionEmptyTrash => 'Isprazni otpad';

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
  String get stateSaving => 'Čuvanje…';

  @override
  String get stateSaved => 'Sačuvano';

  @override
  String get stateUnsaved => 'Nesačuvane promjene';

  @override
  String get errorGenericTitle => 'Nešto nije u redu';

  @override
  String get errorGenericMessage => 'Vaši podaci su sigurni. Pokušajte ponovo.';

  @override
  String get errorLoadFailed => 'Ovaj sadržaj nije moguće učitati.';

  @override
  String get errorSaveFailed => 'Čuvanje nije uspjelo. Vaše promjene su još ovdje.';

  @override
  String get validationRequired => 'Ovo polje je obavezno';

  @override
  String get validationTitleRequired => 'Unesite naslov';

  @override
  String get validationNameRequired => 'Unesite naziv';

  @override
  String get validationTooLong => 'Predugo je';

  @override
  String get validationEndBeforeStart => 'Kraj mora biti nakon početka';

  @override
  String get validationStartAfterDue => 'Datum početka mora biti prije roka';

  @override
  String get validationPositiveNumber => 'Unesite broj veći od nule';

  @override
  String get validationDependencyCycle => 'Ovo bi stvorilo kružnu zavisnost';

  @override
  String get validationInvalidRepeat => 'Ovo pravilo ponavljanja nije važeće';

  @override
  String get deletedItem => 'Premješteno u otpad';

  @override
  String get untitled => 'Bez naslova';

  @override
  String get noProject => 'Bez projekta';

  @override
  String get greetingMorning => 'Dobro jutro';

  @override
  String get greetingAfternoon => 'Dobar dan';

  @override
  String get greetingEvening => 'Dobro veče';

  @override
  String get dashFocusToday => 'Današnji fokus';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done od $target';
  }

  @override
  String get dashStartFocus => 'Pokreni fokus';

  @override
  String get dashFocusRunning => 'Sesija u toku';

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
  String get dashCustomizeTitle => 'Dijelovi početnog ekrana';

  @override
  String get dashCustomizeHint => 'Odaberite šta se prikazuje na početnom ekranu.';

  @override
  String get dashSectionFocus => 'Fokus';

  @override
  String get dashSectionToday => 'Zadaci s rokom danas';

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
      other: 'Imate $count zakašnjelih zadataka. Počnite s najvažnijim.',
      few: 'Imate $count zakašnjela zadatka. Počnite s najvažnijim.',
      one: 'Imate $count zakašnjeli zadatak. Počnite s najvažnijim.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Do dnevnog cilja fokusa nedostaje vam još $minutes min.';
  }

  @override
  String get insightCardsDue => 'Ponovite kartice sada dok su još svježe.';

  @override
  String get insightAllClear =>
      'Sve ide po planu. Isplanirajte sutrašnji dan ili napravite svjesnu pauzu.';

  @override
  String insightHabitStreak(String habit) {
    return 'Održite niz: $habit je danas još otvorena.';
  }

  @override
  String get focusTitle => 'Fokus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Tajmer';

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
  String get focusReady => 'Spremni kad i vi';

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
    return 'Ciklus $current od $total';
  }

  @override
  String get focusSkipBreak => 'Preskoči pauzu';

  @override
  String get focusStartBreak => 'Započni pauzu';

  @override
  String get focusStartNext => 'Započni sljedeći fokus';

  @override
  String get focusSessionComplete => 'Sesija završena';

  @override
  String get focusSessionStopped => 'Sesija sačuvana';

  @override
  String focusSessionSummary(String duration) {
    return 'Bili ste fokusirani $duration.';
  }

  @override
  String get focusAddNote => 'Dodajte bilješku o ovoj sesiji';

  @override
  String get focusHistory => 'Historija';

  @override
  String get focusNoHistory => 'Završene sesije će se pojaviti ovdje';

  @override
  String get focusOutcomeCompleted => 'Završeno';

  @override
  String get focusOutcomeInterrupted => 'Zaustavljeno ranije';

  @override
  String get focusRecovered => 'Vaša sesija se nastavila dok je aplikacija bila zatvorena.';

  @override
  String get focusCompletedWhileAway =>
      'Sesija je završila dok je aplikacija bila zatvorena i sačuvana je.';

  @override
  String get focusNotificationsOff =>
      'Obavještenja su isključena. Nećete biti upozoreni kada sesija završi.';

  @override
  String get focusBatteryHint =>
      'Neki uređaji pauziraju aplikacije u pozadini. Tajmer ostaje tačan, ali upozorenja mogu kasniti. Dozvolite neograničenu potrošnju baterije za pouzdana upozorenja.';

  @override
  String get focusOpenSettings => 'Otvori postavke';

  @override
  String get focusStopConfirmTitle => 'Zaustaviti ovu sesiju?';

  @override
  String get focusStopConfirmMessage => 'Dosadašnje vrijeme fokusa bit će sačuvano.';

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
    return '$phase, proteklo $time';
  }

  @override
  String get focusDeleteSession => 'Izbriši sesiju';

  @override
  String get tasksTitle => 'Zadaci';

  @override
  String get tasksViewToday => 'Danas';

  @override
  String get tasksViewUpcoming => 'Predstojeći';

  @override
  String get tasksViewAll => 'Svi';

  @override
  String get tasksViewOverdue => 'Zakašnjeli';

  @override
  String get tasksViewCompleted => 'Završeni';

  @override
  String get tasksQuickAddHint => 'Dodajte zadatak…';

  @override
  String get tasksEmptyTitle => 'Sve je gotovo';

  @override
  String get tasksEmptyMessage => 'Dodajte zadatak i počnite oblikovati svoj dan.';

  @override
  String get tasksEmptyCompleted => 'Završeni zadaci će se pojaviti ovdje.';

  @override
  String get taskNew => 'Novi zadatak';

  @override
  String get taskEdit => 'Uredi zadatak';

  @override
  String get taskTitleLabel => 'Naslov';

  @override
  String get taskTitleHint => 'Šta treba uraditi?';

  @override
  String get taskDescriptionLabel => 'Opis';

  @override
  String get taskNotesLabel => 'Bilješke';

  @override
  String get taskPriority => 'Prioritet';

  @override
  String get priorityNone => 'Bez';

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
  String get taskProject => 'Projekat';

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
  String get taskChecklist => 'Kontrolna lista';

  @override
  String get taskAddChecklistItem => 'Dodaj stavku';

  @override
  String get taskSubtasks => 'Podzadaci';

  @override
  String get taskAddSubtask => 'Dodaj podzadatak';

  @override
  String get taskDependencies => 'Blokiran od';

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
  String get taskNextOccurrence => 'Kreirano sljedeće ponavljanje';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dana kašnjenja',
      few: '$days dana kašnjenja',
      one: '$days dan kašnjenja',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Označi „$title” kao završeno';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Označi „$title” kao nezavršeno';
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
  String get filterTitle => 'Filtriraj i sortiraj';

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
  String get repeatWeekly => 'Svake sedmice';

  @override
  String get repeatMonthly => 'Svakog mjeseca';

  @override
  String get repeatYearly => 'Svake godine';

  @override
  String get repeatCustom => 'Prilagođeno';

  @override
  String get repeatEvery => 'Ponavljaj svakih';

  @override
  String get repeatOnDays => 'Danima';

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
      other: 'sedmica',
      few: 'sedmice',
      one: 'sedmicu',
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
      one: '$count put',
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
  String get projectsEmptyMessage => 'Grupišite povezane zadatke, bilješke i vrijeme fokusa.';

  @override
  String get projectNew => 'Novi projekat';

  @override
  String get projectEdit => 'Uredi projekat';

  @override
  String get projectName => 'Naziv';

  @override
  String get projectDescription => 'Opis';

  @override
  String get projectGoal => 'Cilj';

  @override
  String get projectDeadline => 'Krajnji rok';

  @override
  String get projectColor => 'Boja';

  @override
  String get projectIcon => 'Ikona';

  @override
  String get projectProgress => 'Napredak';

  @override
  String projectTasksDone(int done, int total) {
    return 'Završeno $done od $total zadataka';
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
      other: 'Preostalo $days dana',
      few: 'Preostala $days dana',
      one: 'Preostao $days dan',
      zero: 'Rok danas',
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
  String get calendarWeek => 'Sedmica';

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
  String get eventTitleHint => 'Naziv događaja';

  @override
  String get eventStarts => 'Počinje';

  @override
  String get eventEnds => 'Završava';

  @override
  String get eventKind => 'Vrsta';

  @override
  String get eventKindEvent => 'Događaj';

  @override
  String get eventKindTimeBlock => 'Vremenski blok';

  @override
  String get eventKindFocus => 'Sesija fokusa';

  @override
  String get eventKindGoal => 'Lični cilj';

  @override
  String get eventDescription => 'Detalji';

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
  String get eventConflictsToday => 'Sukobi u rasporedu na ovaj dan';

  @override
  String get calendarTaskDue => 'Rok zadatka';

  @override
  String get calendarDragHint => 'Dugo pritisnite i povucite događaj da ga premjestite';

  @override
  String get calendarRescheduled => 'Događaj premješten';

  @override
  String get calendarScheduleTask => 'Zakaži kao vremenski blok';

  @override
  String get notesTitle => 'Bilješke';

  @override
  String get notesViewAll => 'Sve';

  @override
  String get notesViewPinned => 'Zakačene';

  @override
  String get notesViewFavorites => 'Omiljene';

  @override
  String get notesViewArchived => 'Arhivirane';

  @override
  String get notesTags => 'Oznake';

  @override
  String get notesNewNotebook => 'Nova sveska';

  @override
  String get notesNoNotebook => 'Bez sveske';

  @override
  String get notesEmptyTitle => 'Prazan list';

  @override
  String get notesEmptyMessage => 'Zapišite ideje, bilješke sa sastanaka i znanje.';

  @override
  String get noteTitleHint => 'Naslov';

  @override
  String get noteBodyHint => 'Počnite pisati…';

  @override
  String get noteFavorite => 'Omiljeno';

  @override
  String get noteUnfavorite => 'Ukloni iz omiljenih';

  @override
  String get noteMoveTo => 'Premjesti u svesku';

  @override
  String get noteBacklinks => 'Povezano iz';

  @override
  String get noteLinkedTasks => 'Povezani zadaci';

  @override
  String get noteLinkTask => 'Poveži zadatak';

  @override
  String get noteLinkProject => 'Projekat';

  @override
  String get noteFormatHeading => 'Naslov';

  @override
  String get noteFormatBold => 'Podebljano';

  @override
  String get noteFormatItalic => 'Kurziv';

  @override
  String get noteFormatList => 'Lista s tačkama';

  @override
  String get noteFormatChecklist => 'Kontrolna lista';

  @override
  String get noteFormatLink => 'Link';

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
  String get flashEmptyTitle => 'Napravite svoj prvi špil';

  @override
  String get flashEmptyMessage =>
      'Ponavljanje u razmacima prikazuje svaku karticu baš prije nego što biste je zaboravili.';

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
  String get deckNothingDue => 'Trenutno nema ništa za ponavljanje. Vratite se kasnije.';

  @override
  String get deckEmptyCards => 'Dodajte kartice da počnete učiti.';

  @override
  String get cardNew => 'Nova kartica';

  @override
  String get cardEdit => 'Uredi karticu';

  @override
  String get cardFront => 'Prednja strana';

  @override
  String get cardBack => 'Zadnja strana';

  @override
  String get cardFrontHint => 'Pitanje ili pojam';

  @override
  String get cardBackHint => 'Odgovor ili definicija';

  @override
  String get cardTags => 'Oznake';

  @override
  String get cardAddAnother => 'Sačuvaj i dodaj još';

  @override
  String get reviewShowAnswer => 'Prikaži odgovor';

  @override
  String get reviewAgain => 'Ponovo';

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
      other: 'Ponovili ste $count kartica.',
      few: 'Ponovili ste $count kartice.',
      one: 'Ponovili ste $count karticu.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Dodirnite da vidite odgovor';

  @override
  String get importCardsTitle => 'Uvezi kartice';

  @override
  String get importCardsHint =>
      'Zalijepite jednu karticu po redu (prednja i zadnja strana odvojene tabulatorom ili tačkom-zarezom) ili odaberite datoteku: Excel (.xlsx), CSV, Anki špil (.apkg) ili izvezeni špil.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uvezeno $count kartica',
      few: 'Uvezene $count kartice',
      one: 'Uvezena $count kartica',
      zero: 'Nijedna kartica nije uvezena',
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
      few: '$count min',
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
  String get goalsEmptyTitle => 'Težite nečemu';

  @override
  String get goalsEmptyMessage =>
      'Postavite dnevne, sedmične, mjesečne ili dugoročne ciljeve i pratite stvarni napredak.';

  @override
  String get goalNew => 'Novi cilj';

  @override
  String get goalEdit => 'Uredi cilj';

  @override
  String get goalTitleHint => 'Šta želite postići?';

  @override
  String get goalPeriod => 'Period';

  @override
  String get goalPeriodDaily => 'Dnevno';

  @override
  String get goalPeriodWeekly => 'Sedmično';

  @override
  String get goalPeriodMonthly => 'Mjesečno';

  @override
  String get goalPeriodLongTerm => 'Dugoročno';

  @override
  String get goalTarget => 'Cilj';

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
  String get goalHistory => 'Historija';

  @override
  String get goalNoHistory => 'Zabilježeni napredak će se pojaviti ovdje';

  @override
  String get goalLinkedTasks => 'Povezani zadaci';

  @override
  String get goalLinkedTasksHint => 'Svaki završeni povezani zadatak broji se kao 1 za ovaj cilj.';

  @override
  String get goalThisPeriod => 'Ovaj period';

  @override
  String get habitsTitle => 'Navike';

  @override
  String get habitsEmptyTitle => 'Mali koraci, svaki dan';

  @override
  String get habitsEmptyMessage => 'Napravite naviku i označite je kada je obavite.';

  @override
  String get habitNew => 'Nova navika';

  @override
  String get habitEdit => 'Uredi naviku';

  @override
  String get habitNameHint => 'npr. Pročitati 20 stranica';

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
  String get habitBestStreak => 'Najbolji niz';

  @override
  String get habitCurrentStreak => 'Trenutni niz';

  @override
  String get habitConsistency => 'Dosljednost';

  @override
  String get habitLast90 => 'Posljednjih 90 dana';

  @override
  String get habitPaused => 'Pauzirano';

  @override
  String get habitPause => 'Pauziraj naviku';

  @override
  String get habitResume => 'Nastavi naviku';

  @override
  String get habitDoneToday => 'Danas obavljeno';

  @override
  String habitCountToday(int count, int target) {
    return 'Danas $count od $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Označi „$name”';
  }

  @override
  String get habitNotScheduledToday => 'Danas nije zakazano';

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
    return 'Završeno: $completed · Zaustavljeno ranije: $interrupted';
  }

  @override
  String get statTasksDone => 'Završeni zadaci';

  @override
  String get statCompletionRate => 'Završeno na vrijeme';

  @override
  String get statHabitConsistency => 'Dosljednost navika';

  @override
  String get statRetention => 'Pamćenje kartica';

  @override
  String get statReviews => 'Ponavljanja';

  @override
  String get statActiveGoals => 'Aktivni ciljevi';

  @override
  String get statEstimated => 'Procijenjeni obavljeni rad';

  @override
  String get statEstimatedNote => 'Na osnovu vaših procjena, ne izmjerenog vremena';

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
  String get searchRecent => 'Nedavne pretrage';

  @override
  String get searchClearRecent => 'Očisti nedavne pretrage';

  @override
  String searchNoResults(String query) {
    return 'Nema rezultata za „$query”';
  }

  @override
  String get searchStartTyping =>
      'Pretražujte zadatke, bilješke, kartice, ciljeve, događaje i drugo. Pretraga ostaje na ovom uređaju.';

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
      'Pomoć pri planiranju koja radi na vašem uređaju. Po želji povežite odabranog AI pružaoca usluga za sažetke i generisanje.';

  @override
  String get assistantOnDevice => 'Na uređaju';

  @override
  String get assistantCloud => 'AI pružalac';

  @override
  String get assistantPlanDay => 'Isplaniraj moj dan';

  @override
  String get assistantPlanDayDesc =>
      'Sortira otvorene zadatke po hitnosti, prioritetu i procjeni te ih uklapa oko vaših događaja.';

  @override
  String get assistantExtractTasks => 'Izdvoji zadatke iz bilješke';

  @override
  String get assistantExtractTasksDesc =>
      'Pronalazi stavke kontrolne liste i redove s radnjama u bilješci i pretvara ih u zadatke.';

  @override
  String get assistantMakeCards => 'Napravi kartice iz bilješke';

  @override
  String get assistantMakeCardsDesc =>
      'Pretvara redove „pojam: definicija” i pitanje/odgovor u kartice.';

  @override
  String get assistantSummarize => 'Sažmi bilješku';

  @override
  String get assistantSummarizeDesc =>
      'Potreban je AI pružalac. Bilješka se šalje tek nakon vaše potvrde.';

  @override
  String get assistantWorkload => 'Pregled opterećenja';

  @override
  String get assistantWorkloadDesc =>
      'Upoređuje procijenjeni rad s vašim slobodnim vremenom ove sedmice.';

  @override
  String get assistantPlanEmpty => 'Nema otvorenih zadataka za planiranje. Uživajte u slobodi.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Slobodno vrijeme za fokus danas: $time';
  }

  @override
  String get assistantPlanOverflow => 'Ovo možda neće stati danas:';

  @override
  String get assistantChooseNote => 'Odaberite bilješku';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pronađeno $count zadataka',
      few: 'Pronađena $count zadatka',
      one: 'Pronađen $count zadatak',
      zero: 'U ovoj bilješci nisu pronađeni zadaci',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pronađeno $count kartica',
      few: 'Pronađene $count kartice',
      one: 'Pronađena $count kartica',
      zero: 'U ovoj bilješci nisu pronađene kartice',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Odaberite špil';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Procijenjeni rad: $estimated. Slobodno vrijeme: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Isplanirali ste više nego što imate vremena. Razmislite o premještanju zadataka nižeg prioriteta.';

  @override
  String get assistantWorkloadOk => 'Vaš plan staje u raspoloživo vrijeme.';

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
  String get assistantProviderTitle => 'AI pružalac';

  @override
  String get assistantProviderOff =>
      'Nijedan pružalac nije povezan. Alati na uređaju i dalje rade.';

  @override
  String assistantProviderOn(String host) {
    return 'Povezano s $host';
  }

  @override
  String get assistantEndpoint => 'API krajnja tačka (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'API ključ';

  @override
  String get assistantApiKeyStored => 'Sigurno pohranjen na ovom uređaju';

  @override
  String get assistantHttpsOnly => 'Dozvoljene su samo HTTPS krajnje tačke';

  @override
  String get assistantConsentTitle => 'Poslati ovaj sadržaj vašem AI pružaocu?';

  @override
  String assistantConsentBody(String host) {
    return 'Odabrani tekst bilješke napustit će ovaj uređaj i obradit će ga $host. Ništa drugo se ne šalje.';
  }

  @override
  String get assistantConsentAlways => 'Ne pitaj ponovo za ovog pružaoca';

  @override
  String get assistantSend => 'Pošalji';

  @override
  String get assistantUnavailable => 'AI pružalac nije dostupan. Pokušajte ponovo kasnije.';

  @override
  String get assistantDisabledTitle => 'Asistent je isključen';

  @override
  String get assistantDisabledMessage =>
      'Uključite ga da biste koristili alate za planiranje. Podaci ne napuštaju uređaj osim ako povežete pružaoca i potvrdite svaki zahtjev.';

  @override
  String get assistantSummaryTitle => 'Sažetak';

  @override
  String get assistantRemoveProvider => 'Ukloni pružaoca';

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
  String get themeSystem => 'Sistemska';

  @override
  String get settingsReduceMotion => 'Smanji pokrete';

  @override
  String get settingsReduceMotionDesc => 'Smanji animacije i pokretne pozadine';

  @override
  String get settingsFocus => 'Tajmer fokusa';

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
  String get settingsSound => 'Zvuk završetka';

  @override
  String get settingsDailyFocusTarget => 'Dnevni cilj fokusa';

  @override
  String get settingsWeeklyFocusTarget => 'Sedmični cilj fokusa';

  @override
  String get settingsNotifications => 'Obavještenja';

  @override
  String get settingsNotificationsEnable => 'Dozvoli podsjetnike';

  @override
  String get settingsQuietHours => 'Tihi sati';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Podsjetnici za navike, ciljeve i ponavljanje utišani su od $start do $end';
  }

  @override
  String get settingsReviewReminder => 'Podsjetnik za ponavljanje kartica';

  @override
  String get settingsPermissionDenied => 'Obavještenja su blokirana u sistemskim postavkama.';

  @override
  String get settingsPrivacy => 'Privatnost i podaci';

  @override
  String get settingsPrivacyStatement =>
      'Vaši podaci se čuvaju samo na ovom uređaju i šifrirani su. Nema računa, analitike ni praćenja.';

  @override
  String get settingsBackup => 'Napravi šifriranu rezervnu kopiju';

  @override
  String get settingsBackupDesc => 'Zaštićeno lozinkom koju odaberete';

  @override
  String get settingsRestore => 'Vrati iz rezervne kopije';

  @override
  String get settingsRestoreDesc => 'Zamjenjuje sve podatke na ovom uređaju';

  @override
  String get settingsErase => 'Izbriši sve podatke';

  @override
  String get settingsEraseDesc => 'Trajno izbriši sve na ovom uređaju';

  @override
  String get settingsEraseConfirmTitle => 'Izbrisati sve podatke?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Svi zadaci, bilješke, kartice, ciljevi, navike, događaji i sesije bit će trajno izbrisani. Upišite $word za potvrdu.';
  }

  @override
  String get settingsEraseWord => 'IZBRIŠI';

  @override
  String get settingsErased => 'Svi podaci su izbrisani';

  @override
  String get backupPassword => 'Lozinka rezervne kopije';

  @override
  String get backupPasswordConfirm => 'Potvrdite lozinku';

  @override
  String backupPasswordHint(int count) {
    return 'Najmanje $count znakova. Ako je izgubite, ne može se vratiti.';
  }

  @override
  String get backupPasswordMismatch => 'Lozinke se ne podudaraju';

  @override
  String get backupPasswordShort => 'Lozinka je prekratka';

  @override
  String get backupCreating => 'Šifriranje rezervne kopije…';

  @override
  String get backupCreated => 'Rezervna kopija je spremna za čuvanje';

  @override
  String get backupRestoring => 'Provjera i vraćanje…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vraćeno $count stavki',
      few: 'Vraćene $count stavke',
      one: 'Vraćena $count stavka',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Pogrešna lozinka ili je datoteka izmijenjena.';

  @override
  String get backupNotABackup => 'Ova datoteka nije Deep Focus rezervna kopija.';

  @override
  String get backupCorrupted => 'Datoteka rezervne kopije je oštećena.';

  @override
  String get backupNewer =>
      'Ovu rezervnu kopiju napravila je novija verzija aplikacije. Prvo ažurirajte aplikaciju.';

  @override
  String get backupRestoreConfirmTitle => 'Zamijeniti sve podatke?';

  @override
  String get backupRestoreConfirmBody =>
      'Sve što je trenutno na ovom uređaju bit će zamijenjeno rezervnom kopijom. Ako vraćanje ne uspije, ništa se ne mijenja.';

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
  String get settingsAssistantEnable => 'Omogući asistenta';

  @override
  String get settingsDashboard => 'Dijelovi početnog ekrana';

  @override
  String get settingsTrash => 'Otpad';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Otpad je prazan';

  @override
  String get trashHint => 'Izbrisane stavke ostaju ovdje dok ih ne uklonite.';

  @override
  String get trashTasks => 'Zadaci';

  @override
  String get trashNotes => 'Bilješke';

  @override
  String get onboardWelcomeTitle => 'Dobro došli u svoj radni prostor budućnosti';

  @override
  String get onboardWelcomeBody =>
      'Zadaci, fokus, kalendar, bilješke, kartice, ciljevi i navike — zajedno, jednostavno i lijepo.';

  @override
  String get onboardPrivateTitle => 'Privatno po dizajnu';

  @override
  String get onboardPrivateBody =>
      'Sve ostaje na ovom uređaju, šifrirano. Bez računa. Bez praćenja. Vi imate kontrolu.';

  @override
  String get onboardLanguageTitle => 'Odaberite jezik';

  @override
  String get onboardNotifTitle => 'Blagi podsjetnici';

  @override
  String get onboardNotifBody =>
      'Dozvolite obavještenja za podsjetnike na zadatke i upozorenja fokusa. Ovo možete promijeniti bilo kada.';

  @override
  String get onboardGetStarted => 'Počnimo';

  @override
  String onboardStep(int current, int total) {
    return 'Korak $current od $total';
  }

  @override
  String get notifChannelReminders => 'Podsjetnici';

  @override
  String get notifChannelRemindersDesc => 'Podsjetnici za zadatke, događaje, navike i ciljeve';

  @override
  String get notifChannelFocus => 'Tajmer fokusa';

  @override
  String get notifChannelFocusDesc => 'Upozorenja kada sesija fokusa ili pauza završi';

  @override
  String get notifTaskTitle => 'Podsjetnik za zadatak';

  @override
  String get notifEventTitle => 'Predstojeći događaj';

  @override
  String notifEventBody(String title, String time) {
    return '$title u $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sesija fokusa završena';

  @override
  String get notifFocusDoneBody => 'Odličan posao. Vrijeme je za pauzu.';

  @override
  String get notifBreakDoneTitle => 'Pauza je završena';

  @override
  String get notifBreakDoneBody => 'Spremni za sljedeću sesiju fokusa?';

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
    return 'Na vrijeme završeno $done od $total zadataka s rokom';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Završeno $done od $total zadataka';
  }

  @override
  String get analyticsNoProjects => 'Nema aktivnih projekata';

  @override
  String get analyticsNoFocus => 'Nema sesija fokusa u ovom rasponu';

  @override
  String get analyticsHabitsNone => 'Nema aktivnih navika';

  @override
  String get analyticsRetentionNote => 'Udio naučenih kartica koje ste zapamtili';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Slobodno vrijeme računa se od $start do $end radnim danima ($days), umanjeno za događaje s vremenom. Procijenjeni rad je zbir procjena otvorenih zadataka s rokom u narednih 7 dana.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Ponedjeljak–petak';

  @override
  String get assistantWorkdaysSunThu => 'Nedjelja–četvrtak';

  @override
  String get assistantWorkloadDayOff => 'Slobodan dan';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return 'Planirano $estimated · slobodno $free';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planirano od sada do $end, oko današnjih događaja. Prvo zakašnjeli zadaci, zatim prioritet, rok i procjena.';
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
      other: 'U današnji kalendar bit će dodano $count vremenskih blokova.',
      few: 'U današnji kalendar bit će dodana $count vremenska bloka.',
      one: 'U današnji kalendar bit će dodan $count vremenski blok.',
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
  String get assistantAlreadyScheduled => 'Već je u vašem kalendaru';

  @override
  String get assistantPlanTimeline => 'Stane danas';

  @override
  String get assistantNoEstimate => 'Dodajte procjenu da ih isplanirate';

  @override
  String get assistantNoNotes => 'Još nema bilješki. Prvo napišite bilješku.';

  @override
  String get assistantNoteEmpty => 'Ova bilješka je prazna.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kreirano $count zadataka',
      few: 'Kreirana $count zadatka',
      one: 'Kreiran $count zadatak',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kreirano $count kartica',
      few: 'Kreirane $count kartice',
      one: 'Kreirana $count kartica',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kreiraj $count',
      few: 'Kreiraj $count',
      one: 'Kreiraj $count',
      zero: 'Ništa nije odabrano',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Prepoznaje se: neoznačena polja „- [ ]” i redovi koji počinju s TODO: ili To do:';

  @override
  String get assistantCardsHint =>
      'Prepoznaje se: „pojam: definicija”, „pojam — definicija” i parovi redova Q:/A:';

  @override
  String get assistantProviderHint =>
      'Koristite bilo koju uslugu kompatibilnu s OpenAI. Ključ ostaje u sigurnoj pohrani ovog uređaja i nikada se ne uključuje u rezervne kopije.';

  @override
  String get assistantEndpointHelp => 'Na primjer https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Ostavite prazno da zadržite sačuvani ključ';

  @override
  String get assistantApiKeyRequired => 'Unesite API ključ';

  @override
  String get assistantProviderSaved => 'Pružalac sačuvan';

  @override
  String get assistantProviderRemoved => 'Pružalac uklonjen i ključ izbrisan';

  @override
  String get assistantRemoveProviderConfirm =>
      'Ukloniti pružaoca i izbrisati sačuvani API ključ s ovog uređaja?';

  @override
  String get assistantAskEveryTime => 'Pitaj prije svakog zahtjeva';

  @override
  String get assistantSummarizing => 'Sažimanje…';

  @override
  String assistantSummaryNote(String host) {
    return 'Generisao $host. Provjerite prije nego što se oslonite na to.';
  }

  @override
  String get assistantCopy => 'Kopiraj';

  @override
  String get assistantCopied => 'Kopirano';

  @override
  String get assistantConfigure => 'Postavi pružaoca';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Svi događaji u ovoj seriji su premješteni';

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
  String get calendarNoEventsHint => 'Dodajte događaj ili vremenski blok da isplanirate ovaj dan.';

  @override
  String get calendarNow => 'Trenutno vrijeme';

  @override
  String get calendarRecurring => 'Ponavlja se';

  @override
  String get calendarEventNotFound => 'Ovaj događaj više ne postoji';

  @override
  String get calendarEventLocalTime => 'Vremena su prikazana u vremenskoj zoni vašeg uređaja';

  @override
  String get calendarEventDeleted => 'Događaj premješten u otpad';

  @override
  String get calendarConflictMarker => 'Preklapa se s drugim događajem';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Promjene se primjenjuju na sve događaje u ovoj seriji';

  @override
  String get calendarDragHintSeries =>
      'Povlačenjem događaja koji se ponavlja premješta se cijela serija';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, rok zadatka';
  }

  @override
  String get startupErrorTitle => 'Vaše podatke nije moguće otvoriti';

  @override
  String get startupErrorLocked =>
      'Ključ za šifriranje podataka ovog uređaja nije dostupan. Ništa nije izbrisano. Ponovno pokretanje uređaja često pomaže. Ako ste nedavno vratili uređaj, umjesto toga vratite podatke iz šifrirane rezervne kopije.';

  @override
  String get startupErrorCipher =>
      'Ovaj uređaj ne podržava šifriranu pohranu koja je potrebna aplikaciji. Ništa nije sačuvano bez šifriranja.';

  @override
  String get startupErrorRetry => 'Pokušaj ponovo';

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
    return 'Za ponavljanje: $count';
  }

  @override
  String flashcardsNewCount(int count) {
    return 'Novih: $count';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Naučene kartice: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Unesite 0 ili više';

  @override
  String get flashcardsSearchCards => 'Pretraži kartice';

  @override
  String get flashcardsSearchEmpty => 'Nijedna kartica ne odgovara pretrazi';

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
      other: '$count kartica spremno za učenje',
      few: '$count kartice spremne za učenje',
      one: '$count kartica spremna za učenje',
      zero: 'Nema spremnih kartica',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Po ocjeni';

  @override
  String get flashcardsDeckNotFound => 'Ovaj špil više nije dostupan.';

  @override
  String get focusSessionDeleted => 'Sesija izbrisana';

  @override
  String get focusDeleteConfirm =>
      'Izbrisati ovu sesiju iz historije? Njeno vrijeme se više neće računati u vaše ciljeve.';

  @override
  String get focusUnlinkTask => 'Ukloni povezani zadatak';

  @override
  String get focusNoteHint => 'Na čemu ste radili?';

  @override
  String get focusModeLabel => 'Način tajmera';

  @override
  String focusUpNext(String phase) {
    return 'Slijedi: $phase';
  }

  @override
  String get focusStopwatchHint => 'Broji unaprijed dok ne zaustavite.';

  @override
  String get focusOpenHint => 'Bez vremenskog ograničenja. Zaustavite kad završite.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Podsjetnici su isključeni u postavkama. Nećete biti upozoreni kada sesija završi.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Svi';

  @override
  String get goalsFilterPeriod => 'Filter perioda';

  @override
  String get goalsFilterStatus => 'Filter statusa';

  @override
  String get goalsEmptyFiltered => 'Nijedan cilj ne odgovara ovom filteru';

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
  String get goalsReached => 'Cilj dostignut';

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
    return 'Uključuje $_temp0 u ovom periodu';
  }

  @override
  String get goalsHistoryAllTime =>
      'Unosi iz ranijih perioda čuvaju se ovdje, ali se računaju samo za svoj period.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Danas obavljeno $done od $total';
  }

  @override
  String get habitsNothingToday => 'Za danas nije zakazana nijedna navika';

  @override
  String get habitsDecrease => 'Ukloni jedno označavanje';

  @override
  String get habitsResetToday => 'Poništi današnje';

  @override
  String get habitsCheckInHint => 'Dugo pritisnite za podešavanje';

  @override
  String get habitsName => 'Naziv';

  @override
  String get habitsColor => 'Boja';

  @override
  String get habitsValidationDays => 'Odaberite barem jedan dan';

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
      'Podsjetnici se pojavljuju u zakazane dane kada su obavještenja dozvoljena.';

  @override
  String get habitsArchived => 'Navika arhivirana';

  @override
  String get habitsNotFound => 'Ova navika više nije dostupna';

  @override
  String get habitsLast30 => 'Posljednjih 30 dana';

  @override
  String get habitsConsistencyNone => 'Još nema dovoljno podataka';

  @override
  String get habitsCalendar => 'Historija označavanja';

  @override
  String get habitsCalendarHint => 'Dodirnite dan da ga ispravite.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count od $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Označavanja u posljednjih 90 dana. Dosljednost $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Označavanja u posljednjih 90 dana. Još nema dovoljno podataka.';

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
  String get habitsPausedNote => 'Pauzirani dani ne utiču na vaš niz.';

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
  String get notesAllNotebooks => 'Sve sveske';

  @override
  String get notesNotebookName => 'Naziv sveske';

  @override
  String get notesNotebookColor => 'Boja';

  @override
  String get notesDeleteNotebook => 'Izbriši svesku';

  @override
  String get notesDeleteNotebookMessage =>
      'Sveska se uklanja. Njene bilješke se čuvaju i prikazuju pod Sve sveske.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Zakačite važne bilješke da ostanu na vrhu.';

  @override
  String get notesEmptyFavorites => 'Bilješke koje označite kao omiljene pojavljuju se ovdje.';

  @override
  String get notesEmptyArchived => 'Arhivirane bilješke pojavljuju se ovdje.';

  @override
  String get notesEmptyFiltered => 'Nijedna bilješka ne odgovara ovim filterima.';

  @override
  String get notesArchivedSnack => 'Bilješka arhivirana';

  @override
  String get notesUnarchivedSnack => 'Bilješka vraćena među vaše bilješke';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Završeno $done od $total';
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
  String get notesPreviewEmpty => 'Još nema ništa za pregled.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Još nijedna druga bilješka ne vodi ovdje. Povežite ovu bilješku s [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Dajte ovoj bilješci naslov da bi je druge bilješke mogle povezati.';

  @override
  String get notesLinkedTasksEmpty => 'Nema zadataka povezanih s ovom bilješkom.';

  @override
  String notesLinkMissing(String title) {
    return 'Još ne postoji bilješka s naslovom „$title”.';
  }

  @override
  String get notesNotFound => 'Ova bilješka više ne postoji.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Stavka kontrolne liste: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Otvori bilješku $title';
  }

  @override
  String get notesTaskDone => 'Završeno';

  @override
  String get notifTimerDoneBody => 'Vrijeme koje ste postavili je isteklo.';

  @override
  String get onboardingPrivatePointDevice => 'Čuva se samo na ovom uređaju, šifrirano';

  @override
  String get onboardingPrivatePointAccount => 'Nije potreban račun';

  @override
  String get onboardingPrivatePointTracking => 'Bez analitike, bez praćenja';

  @override
  String get onboardingLanguageBody => 'Ovo možete promijeniti bilo kada u Postavkama.';

  @override
  String get onboardingNext => 'Dalje';

  @override
  String get projectsActive => 'Aktivni';

  @override
  String get projectNameHint => 'npr. Lansiranje proizvoda';

  @override
  String get projectGoalHint => 'Kako izgleda završeno?';

  @override
  String get projectNoDeadline => 'Bez roka';

  @override
  String get projectTasksOpen => 'Otvoreni zadaci';

  @override
  String get projectTasksCompleted => 'Završeni zadaci';

  @override
  String get projectAddTask => 'Dodaj zadatak u projekat';

  @override
  String get projectAddNote => 'Nova bilješka projekta';

  @override
  String get projectLinkedNotes => 'Bilješke';

  @override
  String get projectNoTasks => 'U ovom projektu još nema zadataka';

  @override
  String get projectArchivedBadge => 'Arhivirano';

  @override
  String get projectDeleted => 'Projekat premješten u otpad';

  @override
  String get projectDeleteMessage => 'Zadaci ostaju na vašoj listi bez projekta.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, završeno $percent posto';
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
    return 'Ponovo traži $query';
  }

  @override
  String get settingsLanguageHint =>
      'Odaberite jezik za cijelu aplikaciju. Nazivi su prikazani na svom jeziku.';

  @override
  String get settingsThemeHint => 'Svijetla, tamna ili prema sistemu';

  @override
  String settingsDecrease(String setting) {
    return 'Smanji: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Povećaj: $setting';
  }

  @override
  String get settingsQuietStart => 'Počinje';

  @override
  String get settingsQuietEnd => 'Završava';

  @override
  String get settingsNotificationsHint =>
      'Ovo čuva vaš izbor u aplikaciji. Sistem također može tražiti dozvolu.';

  @override
  String get settingsDashboardHint =>
      'Povucite za promjenu redoslijeda. Isključite dijelove koji vam ne trebaju.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Premjesti $section';
  }

  @override
  String get settingsDashboardReset => 'Vrati zadani redoslijed';

  @override
  String get settingsAssistantDesc =>
      'Neobavezna pomoć pri planiranju. Ništa ne napušta ovaj uređaj osim ako povežete pružaoca.';

  @override
  String get settingsAssistantSetup => 'Asistent i postavljanje pružaoca';

  @override
  String get settingsTrashDesc => 'Vratite ili trajno izbrišite uklonjene stavke';

  @override
  String get settingsEraseFirstBody =>
      'Ovo se ne može poništiti. Razmislite da prvo napravite šifriranu rezervnu kopiju.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Upišite $word';
  }

  @override
  String get settingsEraseFailed => 'Podatke nije moguće izbrisati. Ništa nije promijenjeno.';

  @override
  String get settingsAboutTagline =>
      'Privatni radni prostor za produktivnost koji prvenstveno radi lokalno.';

  @override
  String get backupShowPassword => 'Prikaži lozinku';

  @override
  String get backupHidePassword => 'Sakrij lozinku';

  @override
  String get backupSaved => 'Rezervna kopija sačuvana';

  @override
  String get backupFailed =>
      'Rezervnu kopiju nije moguće napraviti. Vaši podaci su nepromijenjeni.';

  @override
  String get backupReadFailed => 'Odabranu datoteku nije moguće pročitati.';

  @override
  String get backupRestoreFailed => 'Vraćanje nije uspjelo. Ništa nije promijenjeno.';

  @override
  String get backupShareSubject => 'Šifrirana rezervna kopija Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Svakih $count dana',
      few: 'Svakih $count dana',
      one: 'Svakih $count dan',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Svakih $count sedmica',
      few: 'Svakih $count sedmice',
      one: 'Svakih $count sedmicu',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Svakih $count mjeseci',
      few: 'Svakih $count mjeseca',
      one: 'Svakih $count mjesec',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Svakih $count godina',
      few: 'Svakih $count godine',
      one: 'Svakih $count godinu',
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
    return 'u: $days';
  }

  @override
  String get repeatEndsLabel => 'Završava';

  @override
  String get repeatEndsAfter => 'Nakon određenog broja puta';

  @override
  String get repeatCountLabel => 'Ponavljanja';

  @override
  String get reminderNone => 'Bez podsjetnika';

  @override
  String get reminderCustomTime => 'U određeno vrijeme';

  @override
  String get a11yDecrease => 'Smanji';

  @override
  String get a11yIncrease => 'Povećaj';

  @override
  String get pickTaskTitle => 'Odaberite zadatak';

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
  String get tasksFilterPriorityAtLeast => 'Najmanji prioritet';

  @override
  String get tasksFilterCategory => 'Kategorija';

  @override
  String get tasksFilterAnyCategory => 'Bilo koja kategorija';

  @override
  String get tasksFilterLabel => 'Oznaka';

  @override
  String get tasksFilterAnyLabel => 'Bilo koja oznaka';

  @override
  String get tasksFilterReset => 'Poništi filtere';

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
    return 'Blokiraju $_temp0';
  }

  @override
  String get taskBlockedWarning => 'Ovaj zadatak blokiraju nezavršeni zadaci. Ipak ga završiti?';

  @override
  String get taskStartFocus => 'Fokusiraj se na ovaj zadatak';

  @override
  String get taskRemoveDate => 'Ukloni datum';

  @override
  String get taskAllDay => 'Bez određenog vremena';

  @override
  String get taskSaved => 'Zadatak sačuvan';

  @override
  String get taskCreated => 'Zadatak kreiran';

  @override
  String get taskReminderNeedsDue => 'Postavite rok da biste koristili relativne podsjetnike';

  @override
  String get taskLabelName => 'Naziv oznake';

  @override
  String get taskPlanning => 'Planiranje';

  @override
  String get taskOrganize => 'Organizacija';

  @override
  String get taskBreakdown => 'Raščlanjivanje';

  @override
  String get trashDeleteTaskTitle => 'Trajno izbrisati ovaj zadatak?';

  @override
  String get trashDeleteNoteTitle => 'Trajno izbrisati ovu bilješku?';

  @override
  String get trashDeleteBody => 'Ovo se ne može poništiti.';

  @override
  String get trashEmptyTitle => 'Isprazniti otpad?';

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
  String get flashcardsReadAloud => 'Čitaj naglas';

  @override
  String get flashcardsTtsUnavailable =>
      'Pretvaranje teksta u govor nije dostupno na ovom uređaju.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Za ovaj jezik nije instaliran nijedan glas. Dodajte ga u Android postavkama pretvaranja teksta u govor.';

  @override
  String get calendarAgenda => 'Raspored';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Iskra',
      'rocket': 'Raketa',
      'book': 'Knjiga',
      'work': 'Posao',
      'home': 'Kuća',
      'heart': 'Srce',
      'code': 'Kôd',
      'palette': 'Paleta',
      'fitness': 'Fitnes',
      'school': 'Škola',
      'travel': 'Putovanja',
      'money': 'Ušteđevina',
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
      'Još nema prekretnica. Dodajte kontrolne tačke s datumima da pratite projekat u kalendaru.';

  @override
  String get milestoneDeleted => 'Prekretnica izbrisana';

  @override
  String milestoneDoneA11y(String title) {
    return 'Označi prekretnicu „$title” kao završenu';
  }

  @override
  String calendarMilestone(String project) {
    return 'Prekretnica · $project';
  }

  @override
  String get tasksViewInbox => 'Prijemno sanduče';

  @override
  String get tasksViewArchived => 'Arhivirano';

  @override
  String get tasksEmptyInbox =>
      'Zadaci bez projekta ili datuma dolaze ovdje. Razvrstajte ih kad imate minutu.';

  @override
  String get tasksEmptyArchived =>
      'Arhivirani zadaci čuvaju se ovdje, izvan vaših listi i podsjetnika.';

  @override
  String get taskArchivedBadge => 'Arhiviran';

  @override
  String get taskStatusInProgress => 'U toku';

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
  String get focusPlanSave => 'Sačuvaj plan';

  @override
  String get focusPlanNameHint => 'npr. Priprema za ispit';

  @override
  String get focusPlanSaved => 'Plan sačuvan';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min fokusa, $rest min pauze';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Smanji: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Povećaj: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sesija $current od $total';
  }

  @override
  String get focusSeriesComplete => 'Serija završena. Bravo!';

  @override
  String get filterAll => 'Svi';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Uvezeno: $added · preskočeno duplikata: $duplicates · nepotpunih redova: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Suspenduj karticu';

  @override
  String get flashcardsResume => 'Nastavi karticu';

  @override
  String get flashcardsSuspended => 'Kartica suspendovana: neće biti zakazana';

  @override
  String get flashcardsResumed => 'Kartica ponovo aktivna';

  @override
  String get flashcardsSuspendedFilter => 'Suspendovano';

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
  String get speechBackLanguage => 'Jezik zadnje strane';

  @override
  String get speechRepeat => 'Ponovi svako čitanje';

  @override
  String get speechRate => 'Brzina';

  @override
  String get speechAutoRead => 'Automatski pročitaj pitanje';

  @override
  String get speechHint =>
      'Koristi glasove instalirane na ovom uređaju, bez interneta. Ako jezik nema glas, bit ćete obaviješteni i ništa drugo se neće koristiti umjesto njega.';

  @override
  String get studyHowTitle => 'Kako želite učiti?';

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
  String get studyPracticeMistakes => 'Vježbaj nedavne greške';

  @override
  String get studyPracticeHint =>
      'Krugovi vježbanja nikada ne mijenjaju kada su kartice na redu. Ponavljanje ažurira raspored.';

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
  String get studyPractice => 'vježba';

  @override
  String get studyNoMistakes => 'U ovom špilu nema nedavnih grešaka. Odlično!';

  @override
  String get studyTypeAnswer => 'Upišite odgovor';

  @override
  String get studyCheck => 'Provjeri';

  @override
  String get studyKnewIt => 'Znao/la sam';

  @override
  String get studyDidntKnow => 'Nisam znao/la';

  @override
  String studyMistakes(int count) {
    return 'Promašeno ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Ponovi promašene kartice';

  @override
  String get studyCorrect => 'Tačno';

  @override
  String get studyAlmost => 'Skoro — provjerite pravopis';

  @override
  String get studyWrong => 'Ne baš';

  @override
  String get studyShowText => 'Prikaži tekst';

  @override
  String get flashcardsImportFileFailed =>
      'Datoteku nije moguće otvoriti. Umjesto toga možete zalijepiti njen sadržaj.';

  @override
  String get studyNoMatchingCards => 'Još nema kartica za ovaj izbor.';

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
  String get studyOrderDue => 'Prvo najviše zakašnjele';

  @override
  String get studyOrderRandom => 'Nasumično';

  @override
  String get studyOrderHardest => 'Prvo najteže';

  @override
  String get flashcardsHard => 'Teško';

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
  String get flashcardsNoOtherDeck => 'Prvo napravite drugi špil.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Premješteno $count kartica',
      few: 'Premještene $count kartice',
      one: 'Premještena $count kartica',
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
  String get flashcardsSelectAll => 'Odaberi sve prikazane';

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
    return 'Ovaj špil već ima „$front” → „$back”. Ipak sačuvati?';
  }

  @override
  String get flashcardsSaveAnyway => 'Ipak sačuvaj';

  @override
  String get flashcardsStats => 'Statistika';

  @override
  String get flashcardsStatTotal => 'Kartice';

  @override
  String get flashcardsStatLearning => 'U učenju';

  @override
  String get flashcardsStatMatureCaption => 'Zapamćeno 21+ dan';

  @override
  String get flashcardsStatReviewsToday => 'Ponavljanja danas';

  @override
  String get flashcardsStatCorrect => 'Tačni odgovori';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Posljednjih dana: $days';
  }

  @override
  String get flashcardsStatForget => 'Stopa zaboravljanja';

  @override
  String get flashcardsStatForgetCaption => '„Ponovo” na naučenim karticama';

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
      'Još nema ponavljanja. Učite špil da biste ovdje vidjeli napredak.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Pročitaj naglas: $field';
  }

  @override
  String get speechVoice => 'Glas';

  @override
  String get speechVoiceDefault => 'Automatski';

  @override
  String get speechVoiceOnline => 'potreban internet';

  @override
  String get speechTest => 'Testiraj glas';

  @override
  String get importNext => 'Pregled';

  @override
  String get importPreviewTitle => 'Poveži kolone s poljima';

  @override
  String get importIgnoreColumn => 'Zanemari';

  @override
  String importColumn(int n) {
    return 'Kolona $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Spremno kartica: $ready · bit će preskočeno nepotpunih redova: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Odaberite koje kolone su prednja i zadnja strana.';

  @override
  String get actionMoveUp => 'Pomjeri gore';

  @override
  String get actionMoveDown => 'Pomjeri dolje';

  @override
  String get flashcardsLayoutTitle => 'Izgled kartice';

  @override
  String get flashcardsLayoutHint =>
      'Preimenujte, sakrijte ili presložite dodatna polja ovog špila. Sadržaj kartica se nikada ne mijenja.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Prikaži $field tokom učenja';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Otkrivaj odgovor korak po korak';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Prvo se prikazuje zadnja strana; svako dodatno polje otvara se dodirom.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Prikaži $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Ova datoteka je veća od $mb MB.';
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
  String get flashcardsPlayAudio => 'Reprodukuj snimak';

  @override
  String get flashcardsAudioUnavailable => 'Ovaj snimak se ne može reprodukovati na ovom uređaju.';

  @override
  String get flashcardsCustomFields => 'Vaša polja';

  @override
  String get flashcardsTemplates => 'Šabloni';

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
      'Šablon određuje kako se polja prikazuju i dodaje svoja polja. Vaše kartice i postojeća polja ostaju kakvi jesu.';

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
  String get deckCategory => 'Nivo ili tema';

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
  String get flashcardsLevelUnset => 'Bez nivoa ili teme';

  @override
  String get flashcardsByLanguage => 'Napredak po jeziku';

  @override
  String get flashcardsByLevel => 'Napredak po nivou ili temi';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Špilovi: $decks · kartice: $cards · naučene: $mature · za ponavljanje: $due · tačno: $correct (30 dana)';
  }

  @override
  String get flashcardsRecord => 'Snimi';

  @override
  String get flashcardsRecording => 'Snimanje…';

  @override
  String get flashcardsRecordStop => 'Zaustavi i zadrži';

  @override
  String get flashcardsMicDenied =>
      'Pristup mikrofonu je isključen. Dozvolite ga u sistemskim postavkama da biste snimali.';

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
  String get soundOcean => 'Morski talasi';

  @override
  String get soundFire => 'Logorska vatra';

  @override
  String get soundForest => 'Šumske ptice';

  @override
  String get soundNight => 'Ljetna noć';

  @override
  String get soundWhite => 'Bijeli šum';

  @override
  String get soundPink => 'Ružičasti šum';

  @override
  String get soundBrown => 'Smeđi šum';

  @override
  String get soundsPlay => 'Pusti';

  @override
  String get soundsSleep => 'Tajmer za spavanje';

  @override
  String get soundsSleepOff => 'Isključeno';

  @override
  String soundsSleepAt(String time) {
    return 'Zaustavlja se u $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Najviše $count zvukova može svirati istovremeno.';
  }

  @override
  String get soundsHint =>
      'Dodirnite zvuk da počnete. Kombinujte nekoliko i podesite jačinu svakog.';

  @override
  String get soundsMixer => 'Mješavina';

  @override
  String soundsVolumeOf(String name) {
    return 'Jačina: $name';
  }

  @override
  String get soundsChannel => 'Zvukovi prirode';

  @override
  String get settingsEndTone => 'Zvuk kraja tajmera';

  @override
  String get toneGentle => 'Blagi zvučni signali';

  @override
  String get toneBeeps => 'Zvučni signali';

  @override
  String get toneWood => 'Kucanje po drvetu';

  @override
  String get toneBird => 'Ptičji zov';

  @override
  String get toneStream => 'Potok';

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
      'Glasovi za jezike bez glasa mogu se preuzeti u postavkama govora telefona.';

  @override
  String get speechSettingsFailed => 'Postavke govora na ovom telefonu nije moguće otvoriti.';

  @override
  String get speechVoiceMissing => 'Nema instaliranog glasa';

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
  String get flashViewTable => 'Tabela';

  @override
  String get flashViewCards => 'Kartice';

  @override
  String get flashSwapSides => 'Zamijeni kolone';

  @override
  String get flashSort => 'Sortiraj';

  @override
  String get flashSortNewest => 'Prvo najnovije';

  @override
  String get flashSortAlpha => 'Od A do Ž';

  @override
  String get flashSortDue => 'Prvo za ponavljanje';

  @override
  String get flashSortHard => 'Prvo najteže';

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
  String get autoBackupTitle => 'Automatske rezervne kopije';

  @override
  String get autoBackupDesc => 'Svaki dan na ovom telefonu; čuva se posljednjih 7';

  @override
  String get autoBackupHint =>
      'Ove kopije ostaju na ovom telefonu i brišu se ako deinstalirate aplikaciju. Za prelazak na novi telefon koristite „Rezervna kopija” da sačuvate datoteku.';

  @override
  String get autoBackupNone => 'Još nema automatske rezervne kopije. Prva se pravi danas.';

  @override
  String get autoBackupRestore => 'Vrati';

  @override
  String autoBackupConfirm(String date) {
    return 'Zamijeniti sve trenutne podatke rezervnom kopijom od $date?';
  }

  @override
  String get autoBackupRestored => 'Vraćeno.';

  @override
  String get errorLogTitle => 'Zapisnik grešaka';

  @override
  String get errorLogHint =>
      'Ako nešto pođe po zlu, bilježi se ovdje: samo vrsta greške i mjesto u kodu, nikada vaš sadržaj. Podijelite ga da pomognete u rješavanju problema.';

  @override
  String get errorLogEmpty => 'Nema zabilježenih grešaka.';

  @override
  String get errorLogClear => 'Očisti';

  @override
  String get soundsWithFocus => 'Pusti uz sesije fokusa';

  @override
  String get soundsWithFocusHint =>
      'Vaša mješavina počinje sa sesijom fokusa i pauzira se tokom pauza.';

  @override
  String get soundsSavedMixes => 'Sačuvane mješavine';

  @override
  String get soundsSaveMix => 'Sačuvaj ovu mješavinu';

  @override
  String get soundsMixNameHint => 'Naziv, npr. Kišna biblioteka';

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
  String get myDayHint => 'Vaš dan na prvi pogled, zatim fokus jednim dodirom';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zadataka za danas',
      few: '$count zadatka za danas',
      one: '$count zadatak za danas',
      zero: 'Nema zadataka za danas',
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
      zero: 'Sve navike su obavljene',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Počnite sesijom fokusa';

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
  String get hijriMonth12 => 'Zul-hidždže';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day. $month $year. po Hidžri';
  }

  @override
  String get settingsHijri => 'Datumi po Hidžri';

  @override
  String get settingsHijriHint => 'Prikazuju se u kalendaru i na početnom ekranu (Umm al-Qura)';

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
  String get studyGoalReached => 'Dnevni cilj je postignut. Bravo!';

  @override
  String get studyWeekTitle => 'Vaša sedmica';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Za 7 dana $count odgovorenih kartica',
      few: 'Za 7 dana $count odgovorene kartice',
      one: 'Za 7 dana $count odgovorena kartica',
      zero: 'Nema odgovorenih kartica za 7 dana',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fokusa za 7 dana';
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
  String get focusDndTitle => 'Ne ometaj tokom fokusa';

  @override
  String get focusDndHint => 'Uključuje se za svaku sesiju fokusa i isključuje tokom pauze';

  @override
  String get focusDndNeedsAccess =>
      'Da biste ovo koristili, dozvolite pristup u postavkama telefona';

  @override
  String get voiceInput => 'Govorite da biste kucali';

  @override
  String get voiceInputPrompt => 'Govorite sada';

  @override
  String get voiceInputUnavailable =>
      'Glasovni unos nije dostupan na ovom telefonu. Instalirajte ili uključite uslugu za govor (na primjer Googleovo prepoznavanje i sintezu govora).';

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
  String get prayerMethodEgypt => 'Egipatska generalna uprava';

  @override
  String get prayerMethodJordan => 'Jordan, Ministarstvo vakufa';

  @override
  String get prayerMethodKarachi => 'Univerzitet islamskih nauka, Karači';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Regija Zaljeva';

  @override
  String get prayerMethodKuwait => 'Kuvajt';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Turska, Dijanet';

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
      'Odaberite svoj grad da vidite vremena namaza. Računaju se na telefonu; pristup lokaciji nije potreban.';

  @override
  String get prayerChooseCity => 'Odaberi grad';

  @override
  String get prayerCity => 'Grad';

  @override
  String get prayerCitySearch => 'Potraži grad';

  @override
  String get prayerMethod => 'Metoda izračuna';

  @override
  String get prayerHanafiAsr => 'Hanefijska ikindija (kasnije vrijeme)';

  @override
  String get prayerReminders => 'Obavijesti u svako vrijeme namaza';

  @override
  String get prayerPauseFocus => 'Pauziraj fokus u vrijeme namaza';

  @override
  String get prayerPauseFocusHint => 'Sesija u toku se pauzira; nastavite nakon namaza';

  @override
  String get prayerTurnOff => 'Isključi vremena namaza';

  @override
  String get prayerAccuracyNote =>
      'Izračunata vremena mogu se za nekoliko minuta razlikovati od vaše lokalne džamije.';

  @override
  String prayerNext(String name, String time) {
    return '$name u $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Ova Anki datoteka koristi najnoviji format. U Ankiju je ponovo izvezite s uključenom opcijom „Support older Anki versions”, a zatim uvezite tu datoteku.';

  @override
  String get importTemplate => 'Šablon tabele';

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
      'Dodajte jedan da odmah počnete učiti. Kasnije ga možete urediti ili izbrisati.';

  @override
  String get starterAdd => 'Dodaj';

  @override
  String get starterWords => 'Svakodnevne engleske riječi (arapski)';

  @override
  String get starterCapitals => 'Glavni gradovi svijeta';

  @override
  String get starterElements => 'Hemijski elementi';

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
  String get settingsFlashTextSize => 'Veličina teksta kartica';

  @override
  String get settingsFlashTextSample => 'Primjer';

  @override
  String get widgetStartFocus => 'Dodirnite za fokus';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokus do $time';
  }

  @override
  String get widgetNoCardsDue => 'Kartice: sve je gotovo';

  @override
  String get faqMyDayQ => 'Šta radi „Započni moj dan”?';

  @override
  String get faqMyDayA =>
      'Jednom dnevno ga nudi početni ekran: vidite današnje zadatke, sljedeći događaj, preostale navike i kartice za ponavljanje, a zatim jednim dodirom pokrećete sesiju fokusa. Dugo pritisnite ikonu aplikacije za brze radnje ili dodajte vidžet na početni ekran da vidite vrijeme fokusa i kartice za ponavljanje.';

  @override
  String get faqTasksQ => 'Kako da dodam zadatak s podsjetnikom?';

  @override
  String get faqTasksA =>
      'Dodirnite Novi zadatak na Početnoj ili + u Zadacima. Upišite naslov ili ga izgovorite u mikrofon, zatim postavite rok, vrijeme i podsjetnik. Zakašnjeli zadaci prikazuju se prvi.';

  @override
  String get faqFocusQ => 'Kako radi tajmer fokusa?';

  @override
  String get faqFocusA =>
      'Odaberite Pomodoro, odbrojavanje ili slobodno vrijeme i pritisnite Pokreni; pauze mogu uslijediti automatski. U Postavkama možete odabrati završni zvuk, uključiti Ne ometaj tokom fokusa i puštati zvukove prirode uz svaku sesiju.';

  @override
  String get faqSoundsQ => 'Mogu li miješati zvukove prirode?';

  @override
  String get faqSoundsA =>
      'Uključite do šest pravih snimaka, podesite jačinu svakog i sačuvajte mješavinu pod nazivom. Sviraju u pozadini, a tajmer za spavanje ih može zaustaviti. Muzika se ne koristi.';

  @override
  String get faqCalendarQ => 'Može li kalendar prikazivati datume po Hidžri?';

  @override
  String get faqCalendarA =>
      'Da. Datumi po Hidžri (Umm al-Qura) prikazuju se automatski na arapskom, a u Postavkama ih možete uključiti za bilo koji jezik. Događaji, zadaci s rokom i prekretnice projekata prikazuju se zajedno.';

  @override
  String get faqFlashcardsQ => 'Kako ponavljanje odlučuje koje kartice vidim?';

  @override
  String get faqFlashcardsA =>
      'Kartice koje dobro znate vraćaju se nakon dužih razmaka, a one koje promašite vraćaju se uskoro (ponavljanje u razmacima). Ocijenite svaki odgovor: Ponovo, Teško, Dobro ili Lako. Postavite dnevni cilj i održite niz na kartici Danas. Postavite datum ispita u špilu da vidite koliko je dana ostalo i koliko novih kartica dnevno treba naučiti. Sortirajte po „Moj redoslijed” da prevučete kartice na mjesto, dodirnite zvučnik na bilo kojoj strani da je čujete, a brzinu i ponavljanja podesite u meniju Govor.';

  @override
  String get faqImportQ => 'Mogu li prenijeti kartice iz Ankija ili Excela?';

  @override
  String get faqImportA =>
      'Da. U špilu odaberite Uvezi, zatim datoteku: Anki (.apkg), Excel (.xlsx) ili CSV, i povežite kolone. Koristite „Šablon tabele” da pišete kartice na računaru. Slike i zvukovi unutar Anki datoteka se ne uvoze.';

  @override
  String get faqNotesQ => 'Šta mogu bilješke?';

  @override
  String get faqNotesA =>
      'Pišite slobodno s kontrolnim listama i oblikovanjem, zakačite ili označite važne bilješke kao omiljene, dodajte oznake i povežite bilješke sa zadacima. Dugme mikrofona vam omogućava diktiranje. Nova bilješka može početi od šablona (predavanje, sažetak knjige, dnevnik, sedmični plan), a dugme za sliku dodaje fotografije.';

  @override
  String get faqHabitsQ => 'Kako se broje nizovi navika?';

  @override
  String get faqHabitsA =>
      'Dan se računa kada zakazanog dana dostignete cilj navike. Pauziranje navike čuva niz. Svaka navika može imati svoje vrijeme podsjetnika.';

  @override
  String get faqGoalsQ => 'Kako ciljevi prate napredak?';

  @override
  String get faqGoalsA =>
      'Dajte cilju ciljanu količinu i jedinicu, a zatim bilježite napredak. Njegova kartica pokazuje dokle ste stigli i koliko je ostalo do roka.';

  @override
  String get faqProjectsQ => 'Čemu služe projekti?';

  @override
  String get faqProjectsA =>
      'Grupišite zadatke u projekat, dodajte prekretnice s datumima i pratite ukupan napredak. Prekretnice se prikazuju i u kalendaru.';

  @override
  String get faqInsightsQ => 'Šta prikazuju Uvidi?';

  @override
  String get faqInsightsA =>
      'Vaše vrijeme fokusa, završene zadatke i učenje po danima i sedmicama, uz blage prijedloge. Sve se računa na vašem telefonu.';

  @override
  String get faqSpacesQ => 'Gdje su svi dijelovi?';

  @override
  String get faqSpacesA =>
      'Prostori navode sve dijelove aplikacije (bilješke, špilove, navike, ciljeve, projekte, zvukove i drugo) kako bi glavna traka ostala jednostavna.';

  @override
  String get faqBackupQ => 'Kako se prave rezervne kopije mojih podataka?';

  @override
  String get faqBackupA =>
      'Aplikacija svakog dana tiho čuva šifriranu kopiju na ovom telefonu i zadržava posljednjih 7. U Postavkama možete i izvesti rezervnu kopiju zaštićenu lozinkom i vratiti je na drugom telefonu.';

  @override
  String get faqPrayerQ => 'Kako rade vremena namaza?';

  @override
  String get faqPrayerA =>
      'Odaberite svoj grad u Postavke → Vremena namaza. Vremena se računaju na telefonu metodom koja se tamo koristi, a metodu i mezheb za ikindiju možete promijeniti. Možete dobiti obavještenje za svaki namaz, a sesija fokusa u toku se pauzira.';

  @override
  String get faqPrivacyQ => 'Gdje se čuvaju moji podaci?';

  @override
  String get faqPrivacyA =>
      'Samo na vašem telefonu, u šifriranoj bazi podataka. Nema računa ni praćenja. Internet koriste samo funkcije koje sami uključite, poput neobaveznog asistenta.';

  @override
  String get faqAssistantQ => 'Šta je asistent?';

  @override
  String get faqAssistantA =>
      'Neobavezni pomoćnik koji u Postavkama povezujete s vlastitom AI uslugom. Zadano je isključen i pita prije slanja bilo kakvog teksta bilješke.';

  @override
  String get tourPlanTitle => 'Isplanirajte svoj dan';

  @override
  String get tourPlanBody =>
      'Zadaci, kalendar i navike na jednom mirnom mjestu. Započnite svako jutro sa „Započni moj dan”.';

  @override
  String get tourFocusTitle => 'Duboko se fokusirajte';

  @override
  String get tourFocusBody =>
      'Sesije s tajmerom, pravi zvukovi prirode, Ne ometaj i blagi završni tonovi.';

  @override
  String get tourLearnTitle => 'Učite zauvijek';

  @override
  String get tourLearnBody =>
      'Kartice s ponavljanjem u razmacima, govor na mnogo jezika i uvoz iz Ankija ili Excela.';

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
  String get transferColProject => 'Projekat';

  @override
  String get transferColCategory => 'Kategorija';

  @override
  String get transferTitle => 'Uvoz i izvoz';

  @override
  String get transferSaveAs => 'Sačuvaj kao';

  @override
  String get transferImport => 'Uvezi iz datoteke';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV ili tabela u Wordu. Kolone: naslov, rok (2026-12-31), prioritet 0-3, završeno, projekat, bilješke. Zadaci koji već postoje u aplikaciji se preskaču.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown ili tekstualne datoteke postaju bilješka. Excel ili CSV: jedna bilješka po redu (naslov, tekst).';

  @override
  String get transferSaved => 'Datoteka sačuvana';

  @override
  String get transferFailed => 'Datoteku nije moguće napraviti. Ništa nije promijenjeno.';

  @override
  String get transferUnsupported =>
      'Ova datoteka se ovdje ne može pročitati. Koristite Excel, CSV, Word, Markdown ili tekst.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Dodano $added',
      few: 'Dodane $added',
      one: 'Dodana $added',
      zero: 'Nema ništa novo za dodavanje',
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
  String get transferDeckFormats => 'Sačuvaj kao Excel, Word ili PDF';

  @override
  String get faqFilesQ => 'Mogu li koristiti Excel, Word ili PDF datoteke?';

  @override
  String get faqFilesA =>
      'Da. Zadaci i Bilješke imaju dugme za uvoz i izvoz (dvije strelice) na vrhu, a svaki špil ga ima u svom meniju. Sačuvajte kao Excel, CSV, Word ili PDF ili uvezite Excel, CSV, Word, Markdown ili tekstualne datoteke. Nazivi kolona mogu biti na bilo kojem jeziku aplikacije, a sačuvane datoteke uvijek se mogu ponovo uvesti.';

  @override
  String get tplLecture => 'Predavanje';

  @override
  String get tplBook => 'Sažetak knjige';

  @override
  String get tplJournal => 'Dnevnik';

  @override
  String get tplWeek => 'Sedmični plan';

  @override
  String get tplLectureBody => '## Ključne tačke\n- \n\n## Pitanja\n- [ ] \n\n## Sažetak\n';

  @override
  String get tplBookBody =>
      '## Glavna ideja\n\n## Šta sam naučio\n- \n\n## Citati\n> \n\n## Za primjenu\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Zahvalan sam za\n- \n\n## Današnji fokus\n- [ ] \n\n## Bilješke\n';

  @override
  String get tplWeekBody =>
      '## Ciljevi ove sedmice\n- [ ] \n\n### Subota\n- [ ] \n\n### Nedjelja\n- [ ] \n\n### Ponedjeljak\n- [ ] \n\n### Utorak\n- [ ] \n\n### Srijeda\n- [ ] \n\n### Četvrtak\n- [ ] \n\n### Petak\n- [ ] \n';

  @override
  String get tplHint => 'Počni od šablona';

  @override
  String get noteImage => 'Slika';

  @override
  String get noteAddImage => 'Dodaj sliku';

  @override
  String get noteImageUnreadable => 'Ova datoteka nije slika koju aplikacija može pročitati.';

  @override
  String get noteImageTooLarge => 'Ova slika je prevelika.';

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
      other: 'učite $count novih kartica dnevno',
      few: 'učite $count nove kartice dnevno',
      one: 'učite $count novu karticu dnevno',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'sve kartice su naučene, nastavite ponavljati';

  @override
  String examRaiseLimit(int count) {
    return 'Prikaži novih kartica dnevno: $count';
  }

  @override
  String get backupDriveHint =>
      'Da čuvate kopiju na mreži, odaberite Google Drive (ili drugu aplikaciju u oblaku) na ekranu za čuvanje koji se otvara sljedeći.';

  @override
  String get flashShareDeck => 'Podijeli špil s prijateljem';

  @override
  String get flashSortManual => 'Moj redoslijed (povlačenje)';

  @override
  String get flashReorderHint => 'Držite ručicu i povucite karticu da je premjestite.';

  @override
  String get flashReorderNeedsAll => 'Očistite pretragu i filtere da biste povlačili kartice.';

  @override
  String get flashDragHandle => 'Povucite za premještanje';

  @override
  String get reportTitle => 'Mjesečni izvještaj';

  @override
  String get reportFocus => 'Vrijeme fokusa';

  @override
  String reportSessions(int count) {
    return 'Sesije: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Najbolji dan: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Aktivni dani: $count';
  }

  @override
  String get reportCards => 'Ponovljene kartice';

  @override
  String reportCardsKnown(String percent) {
    return 'Zapamćeno: $percent';
  }

  @override
  String get reportTasks => 'Završeni zadaci';

  @override
  String get reportHabits => 'Označene navike';

  @override
  String get reportEmpty => 'Ovog mjeseca još ništa nije zabilježeno.';

  @override
  String get reportSave => 'Sačuvaj kao PDF ili Word';

  @override
  String get reportPrevMonth => 'Prethodni mjesec';

  @override
  String get reportNextMonth => 'Sljedeći mjesec';

  @override
  String get careTitle => 'Briga o telefonu i podacima';

  @override
  String get storageTitle => 'Pohrana';

  @override
  String get storageSubtitle => 'Šta zauzima prostor i čišćenje nekorištenih slika';

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
      'Vaš telefon je skoro pun. Oslobodite prostor da rezervne kopije i podsjetnici nastave raditi.';

  @override
  String storageUnused(int count, String size) {
    return 'Nekorištene slike: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Nema nekorištenih slika. Sve je uredno.';

  @override
  String get storageClean => 'Ukloni nekorištene slike';

  @override
  String storageCleaned(int count) {
    return 'Uklonjene slike: $count';
  }

  @override
  String get storageHint =>
      'Slika se smatra nekorištenom samo kada je nijedna bilješka ne prikazuje, uključujući bilješke u otpadu.';

  @override
  String get batteryTitle => 'Neka podsjetnici rade';

  @override
  String get batterySubtitle =>
      'Neki telefoni zaustavljaju aplikacije u pozadini. Provjerite svoj.';

  @override
  String get batteryStatusOk =>
      'Ušteda baterije ne ograničava ovu aplikaciju. Podsjetnici i zvukovi trebali bi stizati na vrijeme.';

  @override
  String get batteryStatusLimited =>
      'Ušteda baterije može zaustaviti ovu aplikaciju u pozadini, pa podsjetnici i zvukovi mogu kasniti ili izostati.';

  @override
  String get batteryOpen => 'Otvori postavke baterije';

  @override
  String get batteryOpenApp => 'Otvori postavke aplikacije';

  @override
  String get batteryGeneric =>
      'U postavkama baterije odaberite ovu aplikaciju i postavite „Bez ograničenja” (ili „Ne optimiziraj”).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: otvorite i Sigurnost › Dozvole › Automatsko pokretanje i uključite ovu aplikaciju, a uštedu baterije postavite na „Bez ograničenja”.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: otvorite Baterija › ova aplikacija i dozvolite aktivnost u pozadini i automatsko pokretanje; zaključajte aplikaciju na listi nedavnih.';

  @override
  String get batterySamsung =>
      'Samsung: Baterija › Ograničenja korištenja u pozadini: uklonite ovu aplikaciju iz aplikacija u mirovanju i dubokom mirovanju.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Pokretanje aplikacija › ova aplikacija › ručno upravljanje i dozvolite automatsko pokretanje, sekundarno pokretanje i rad u pozadini.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Baterija › Potrošnja energije u pozadini › dozvolite ovu aplikaciju i uključite automatsko pokretanje u dozvolama.';

  @override
  String get whatsNewTitle => 'Šta je novo';

  @override
  String get whatsNewSubtitle => 'Najnovije promjene u nekoliko redova';

  @override
  String get whatsNewDone => 'Razumijem';

  @override
  String get whatsNewOrderTitle => 'Povucite kartice svojim redoslijedom';

  @override
  String get whatsNewOrderBody =>
      'U špilu odaberite Sortiraj › Moj redoslijed, zatim držite ručicu i povucite.';

  @override
  String get whatsNewSpeechTitle => 'Zvučnik na svakoj strani kartice';

  @override
  String get whatsNewSpeechBody =>
      'Dodirnite ga da čujete riječ ili prijevod. Brzina, ponavljanja i glas su u meniju ponavljanja. Jezik se prepoznaje iz teksta.';

  @override
  String get whatsNewReportTitle => 'Mjesečni izvještaj';

  @override
  String get whatsNewReportBody =>
      'U Uvidima dodirnite ikonu izvještaja da vidite mjesec i sačuvate ga kao PDF ili Word.';

  @override
  String get whatsNewCareTitle => 'Briga o telefonu i podacima';

  @override
  String get whatsNewCareBody =>
      'Postavke sada imaju stranicu pohrane s čišćenjem slika i vodičem za bateriju za marku vašeg telefona.';

  @override
  String get whatsNewSoundTitle => 'Mirniji zvukovi';

  @override
  String get whatsNewSoundBody => 'Zvukovi prirode su mekši i tiši, a kartice sa slikama ljepše.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Provjereno $date: najnovija rezervna kopija se ispravno otvara.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Provjereno $date: pronađena je oštećena rezervna kopija i zamijenjena novom.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Provjereno $date: najnoviju rezervnu kopiju nije moguće otvoriti. Sami sačuvajte datoteku rezervne kopije iz Postavki.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Obično učite oko $time';
  }

  @override
  String get smartReviewTimeUse => 'Koristi';

  @override
  String get widgetNewNote => 'Nova bilješka';

  @override
  String get noteConnections => 'Oznake, linkovi i zadaci';

  @override
  String get navCards => 'Kartice';

  @override
  String get studyAnswerWay => 'Kako odgovarati';

  @override
  String get studyMorePractice => 'Dodatna vježba';

  @override
  String get studySessionSettings => 'Postavke sesije';

  @override
  String get focusAdjustTitle => 'Vaša sesija';

  @override
  String get focusPresetsTitle => 'Gotove';

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
  String get focusTapToAdjust => 'Dodirnite da promijenite vrijeme';

  @override
  String get flashArrangeDecks => 'Rasporedi špilove';

  @override
  String get flashDeckActions => 'Opcije špila';

  @override
  String get starterBrowse => 'Gotovi špilovi';

  @override
  String get starterBrowseHint => 'Dodajte jedan dodirom i počnite učiti';

  @override
  String get dashOpenDecks => 'Otvorite svoje kartice';

  @override
  String speechVoiceNumber(String n) {
    return 'Glas $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Odličan tok. Odmor od $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Započni pauzu';

  @override
  String tasksFinishAt(String time) {
    return 'Počnite sada i sve ćete završiti do $time';
  }

  @override
  String get focusCalmPacing => 'Miran ritam';

  @override
  String get focusCalmPacingHint => 'Samo cijele minute i prsten, bez sekundi koje otkucavaju';

  @override
  String get focusFlipHint => 'Okrenite telefon ekranom prema dolje da počnete';

  @override
  String get focusImmersive => 'Način uranjanja';

  @override
  String get focusImmersiveBlack => 'Potpuno crna (štedi bateriju)';

  @override
  String get focusFlipToFocus => 'Okreni za fokus';

  @override
  String get focusFlipToFocusHint =>
      'U načinu uranjanja: ekranom prema dolje počinje, podizanje pauzira';

  @override
  String get guardTitle => 'Zaštita od ometanja';

  @override
  String get guardSubtitle => 'Pauzirajte aplikacije koje ometaju dok ste fokusirani';

  @override
  String get guardSwitch => 'Pauziraj aplikacije koje ometaju';

  @override
  String get guardSwitchHint => 'Tokom sesija fokusa i u satima Vremenske zaštite';

  @override
  String get guardNeedsAccess => 'Potreban je prekidač pristupačnosti: dodirnite da ga uključite';

  @override
  String get guardDisclosureTitle => 'Kako radi zaštita';

  @override
  String get guardDisclosureBody =>
      'Da bi pauzirao aplikacije koje odaberete, Deep Focus koristi Android uslugu pristupačnosti da vidi koja je aplikacija otvorena. Kada je uključeno „Zatvori Shorts i Reels”, provjerava i je li na ekranu plejer kratkih videa.\n\nNe čita nikakav tekst, ne čuva ništa što vidi i ništa nikamo ne šalje: sve ostaje na vašem telefonu. Možete je isključiti bilo kada u postavkama pristupačnosti.';

  @override
  String get guardAgree => 'Prihvati i otvori postavke';

  @override
  String get guardModeGentle => 'Blagi';

  @override
  String get guardModeStrict => 'Strogi';

  @override
  String get guardGentleHint => 'Pauza od 5 sekundi za disanje, zatim vi birate';

  @override
  String get guardStrictHint => 'Odabrane aplikacije ostaju zatvorene do kraja fokusa';

  @override
  String get guardApps => 'Aplikacije za pauziranje';

  @override
  String get guardAppsAllowed => 'Dozvoljene aplikacije';

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
  String get guardAllowlist => 'Dozvoli samo odabrane aplikacije';

  @override
  String get guardAllowlistHint =>
      'Sve ostale aplikacije se pauziraju; pozivi, postavke i tastatura uvijek rade';

  @override
  String get guardShorts => 'Zatvori Shorts i Reels';

  @override
  String get guardShortsHint =>
      'Kad god je zaštita uključena. Bez garancije: ove aplikacije se često mijenjaju';

  @override
  String get guardSchedule => 'Vremenska zaštita';

  @override
  String get guardScheduleHint => 'Štiti i u određene dane i sate, npr. u školi ili na poslu';

  @override
  String get guardFrom => 'Od';

  @override
  String get guardTo => 'Do';

  @override
  String get guardSearchApps => 'Pretraži aplikacije';

  @override
  String get guardNoApps => 'Nema pronađenih aplikacija';

  @override
  String get guardPrivacy =>
      'Radi samo na vašem telefonu: zaštita vidi koja je aplikacija otvorena, nikada šta je u njoj, i ništa ne šalje.';

  @override
  String get guardBreathe => 'Udahnite… i izdahnite';

  @override
  String get guardQuestion => 'Da li vam ova aplikacija treba sada?';

  @override
  String get guardBackToFocus => 'Nazad na fokus';

  @override
  String get guardOpenFive => 'Otvori na 5 minuta';

  @override
  String get guardStrictBody => 'Ova aplikacija je pauzirana do kraja vremena fokusa.';

  @override
  String get guardShortsClosed => 'Kratki videi se zatvaraju dok je zaštita uključena';

  @override
  String get faqGuardQ => 'Kako da zaustavim aplikacije koje ometaju dok sam fokusiran?';

  @override
  String get faqGuardA =>
      'Otvorite Fokus → postavke tajmera → Zaštita od ometanja. Odaberite aplikacije, a zatim Blagi (5 sekundi disanja i pitanje „Da li vam ova aplikacija treba sada?”) ili Strogi (ostaju zatvorene). Radi tokom sesija fokusa i, uz Vremensku zaštitu, u dane i sate koje postavite. „Dozvoli samo odabrane aplikacije” pauzira sve ostalo; pozivi, postavke i tastatura uvijek rade. Android vas jednom traži da uključite zaštitu u postavkama pristupačnosti. Vidi samo koja je aplikacija otvorena i ništa ne šalje.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Premješteno u „$name”';
  }

  @override
  String get notesDragHint => 'Držite bilješku i prevucite je na svesku';

  @override
  String get guardReviewCards => 'Radije ponovi kartice';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Čeka vas $count kartica',
      few: 'Čekaju vas $count kartice',
      one: 'Čeka vas $count kartica',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Hitno: držite 10 sekundi';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Nastavite držati… $n';
  }

  @override
  String get guardWeekTitle => 'Ove sedmice';

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
      other: 'povratak na fokus $count puta',
      few: 'povratak na fokus $count puta',
      one: 'povratak na fokus $count put',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Preimenuj riječi';

  @override
  String get wordsSubtitle => 'Vaša riječ za bilo koji tekst u aplikaciji';

  @override
  String get wordsHint =>
      'Dodirnite tekst da ga promijenite. Vaše riječi važe samo za ovaj jezik i čuvaju se u rezervnim kopijama.';

  @override
  String get wordsSearch => 'Pretraži tekstove';

  @override
  String get wordsChangedOnly => 'Samo promijenjeni';

  @override
  String wordsOriginal(String text) {
    return 'Original: $text';
  }

  @override
  String get wordsReset => 'Koristi original';

  @override
  String get wordsResetAll => 'Poništi sve riječi';

  @override
  String get wordsResetAllConfirm => 'Svi tekstovi na ovom jeziku vraćaju se na original.';

  @override
  String get wordsNone => 'Tekst nije pronađen';

  @override
  String get settingsLanguageSearch => 'Pretraži jezike';

  @override
  String get settingsLanguageNoMatch => 'Nijedan jezik ne odgovara';

  @override
  String get soundsMyMusic => 'Vaš audio';

  @override
  String get soundsMusicHint =>
      'Pustite audio datoteku s telefona. Ništa se ne kopira niti otprema.';

  @override
  String get soundsChooseMusic => 'Odaberite audio';

  @override
  String get soundsRemoveMusic => 'Ukloni audio';

  @override
  String get wordPacksTitle => 'Učenje jezika';

  @override
  String get wordPacksHint =>
      'Liste riječi po temama. Preuzmite samo jezik koji želite, a zatim slobodno uređujte ili brišite kartice.';

  @override
  String get wordPacksFailed => 'Preuzimanje nije uspjelo. Provjerite vezu.';

  @override
  String get wordPacksEmpty => 'Riječi za ovaj jezik se još pripremaju.';
}
