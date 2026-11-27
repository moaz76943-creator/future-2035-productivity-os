// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Hem';

  @override
  String get navTasks => 'Uppgifter';

  @override
  String get navFocus => 'Fokus';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get navSpaces => 'Utrymmen';

  @override
  String get moduleProjects => 'Projekt';

  @override
  String get moduleNotes => 'Anteckningar';

  @override
  String get moduleFlashcards => 'Kort';

  @override
  String get moduleGoals => 'Mål';

  @override
  String get moduleHabits => 'Vanor';

  @override
  String get moduleAnalytics => 'Insikter';

  @override
  String get moduleSearch => 'Sök';

  @override
  String get moduleAssistant => 'Assistent';

  @override
  String get moduleSettings => 'Inställningar';

  @override
  String get moduleTrash => 'Papperskorg';

  @override
  String get actionSave => 'Spara';

  @override
  String get actionCancel => 'Avbryt';

  @override
  String get actionDelete => 'Radera';

  @override
  String get actionEdit => 'Redigera';

  @override
  String get actionDone => 'Klar';

  @override
  String get actionAdd => 'Lägg till';

  @override
  String get actionCreate => 'Skapa';

  @override
  String get actionClose => 'Stäng';

  @override
  String get actionBack => 'Tillbaka';

  @override
  String get actionUndo => 'Ångra';

  @override
  String get actionRestore => 'Återställ';

  @override
  String get actionRetry => 'Försök igen';

  @override
  String get actionContinue => 'Fortsätt';

  @override
  String get actionSkip => 'Hoppa över';

  @override
  String get actionArchive => 'Arkivera';

  @override
  String get actionUnarchive => 'Ta ur arkivet';

  @override
  String get actionPin => 'Fäst';

  @override
  String get actionUnpin => 'Lossa';

  @override
  String get actionMore => 'Fler alternativ';

  @override
  String get actionClear => 'Rensa';

  @override
  String get actionSearch => 'Sök';

  @override
  String get actionSort => 'Sortera';

  @override
  String get actionShare => 'Dela';

  @override
  String get actionImport => 'Importera';

  @override
  String get actionExport => 'Exportera';

  @override
  String get actionPause => 'Pausa';

  @override
  String get actionResume => 'Återuppta';

  @override
  String get actionStart => 'Starta';

  @override
  String get actionStop => 'Stoppa';

  @override
  String get actionComplete => 'Slutför';

  @override
  String get actionDeleteForever => 'Radera för alltid';

  @override
  String get actionEmptyTrash => 'Töm papperskorgen';

  @override
  String get actionUnlink => 'Koppla bort';

  @override
  String get actionCustomize => 'Anpassa';

  @override
  String get actionPreview => 'Förhandsvisning';

  @override
  String get actionLog => 'Logga framsteg';

  @override
  String get stateLoading => 'Läser in…';

  @override
  String get stateSaving => 'Sparar…';

  @override
  String get stateSaved => 'Sparat';

  @override
  String get stateUnsaved => 'Osparade ändringar';

  @override
  String get errorGenericTitle => 'Något gick fel';

  @override
  String get errorGenericMessage => 'Dina data är säkra. Försök igen.';

  @override
  String get errorLoadFailed => 'Innehållet kunde inte läsas in.';

  @override
  String get errorSaveFailed => 'Kunde inte spara. Dina ändringar finns kvar.';

  @override
  String get validationRequired => 'Fältet måste fyllas i';

  @override
  String get validationTitleRequired => 'Ange en rubrik';

  @override
  String get validationNameRequired => 'Ange ett namn';

  @override
  String get validationTooLong => 'Det här är för långt';

  @override
  String get validationEndBeforeStart => 'Slutet måste vara efter starten';

  @override
  String get validationStartAfterDue => 'Startdatumet måste vara före förfallodatumet';

  @override
  String get validationPositiveNumber => 'Ange ett tal större än noll';

  @override
  String get validationDependencyCycle => 'Det här skulle skapa ett cirkelberoende';

  @override
  String get validationInvalidRepeat => 'Upprepningsregeln är ogiltig';

  @override
  String get deletedItem => 'Flyttad till papperskorgen';

  @override
  String get untitled => 'Namnlös';

  @override
  String get noProject => 'Inget projekt';

  @override
  String get greetingMorning => 'God morgon';

  @override
  String get greetingAfternoon => 'God eftermiddag';

  @override
  String get greetingEvening => 'God kväll';

  @override
  String get dashFocusToday => 'Dagens fokus';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done av $target';
  }

  @override
  String get dashStartFocus => 'Starta fokus';

  @override
  String get dashFocusRunning => 'Session pågår';

  @override
  String get dashTodayTasks => 'Ska göras i dag';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Vanor i dag';

  @override
  String get dashGoals => 'Mål';

  @override
  String get dashReview => 'Repetition';

  @override
  String get dashRecentNotes => 'Senaste anteckningar';

  @override
  String get dashInsight => 'Förslag';

  @override
  String get dashSeeAll => 'Visa alla';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort att repetera',
      one: '1 kort att repetera',
      zero: 'Inga kort att repetera',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Repetera nu';

  @override
  String get dashCustomizeTitle => 'Delar av översikten';

  @override
  String get dashCustomizeHint => 'Välj vad som visas på startskärmen.';

  @override
  String get dashSectionFocus => 'Fokus';

  @override
  String get dashSectionToday => 'Uppgifter i dag';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Vanor';

  @override
  String get dashSectionGoals => 'Mål';

  @override
  String get dashSectionReview => 'Repetera kort';

  @override
  String get dashSectionNotes => 'Senaste anteckningar';

  @override
  String get dashSectionInsight => 'Förslag';

  @override
  String get quickAddTask => 'Ny uppgift';

  @override
  String get quickAddNote => 'Ny anteckning';

  @override
  String get quickAddEvent => 'Ny händelse';

  @override
  String get quickStartFocus => 'Fokus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Du har $count försenade uppgifter. Börja med den viktigaste.',
      one: 'Du har 1 försenad uppgift. Planera om den eller gör klart den först.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return '$minutes minuter kvar till ditt dagliga fokusmål.';
  }

  @override
  String get insightCardsDue => 'Repetera dina kort nu medan de är färska i minnet.';

  @override
  String get insightAllClear => 'Allt går enligt plan. Planera morgondagen eller ta en lugn paus.';

  @override
  String insightHabitStreak(String habit) {
    return 'Behåll din svit: $habit är fortfarande öppen i dag.';
  }

  @override
  String get focusTitle => 'Fokus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Timer';

  @override
  String get focusModeCountUp => 'Tidtagarur';

  @override
  String get focusModeOpen => 'Fri';

  @override
  String get focusPhaseWork => 'Fokus';

  @override
  String get focusPhaseShortBreak => 'Kort paus';

  @override
  String get focusPhaseLongBreak => 'Lång paus';

  @override
  String get focusReady => 'Redo när du är det';

  @override
  String get focusPaused => 'Pausad';

  @override
  String get focusRunning => 'Fokuserad';

  @override
  String get focusDuration => 'Längd';

  @override
  String get focusLinkTask => 'Koppla en uppgift';

  @override
  String get focusLinkedTask => 'Arbetar med';

  @override
  String get focusNoTask => 'Ingen uppgift kopplad';

  @override
  String focusCycle(int current, int total) {
    return 'Omgång $current av $total';
  }

  @override
  String get focusSkipBreak => 'Hoppa över pausen';

  @override
  String get focusStartBreak => 'Starta paus';

  @override
  String get focusStartNext => 'Starta nästa fokus';

  @override
  String get focusSessionComplete => 'Session klar';

  @override
  String get focusSessionStopped => 'Session sparad';

  @override
  String focusSessionSummary(String duration) {
    return 'Du fokuserade i $duration.';
  }

  @override
  String get focusAddNote => 'Lägg till en anteckning om sessionen';

  @override
  String get focusHistory => 'Historik';

  @override
  String get focusNoHistory => 'Slutförda sessioner visas här';

  @override
  String get focusOutcomeCompleted => 'Slutförd';

  @override
  String get focusOutcomeInterrupted => 'Avbruten i förtid';

  @override
  String get focusRecovered => 'Din session fortsatte medan appen var stängd.';

  @override
  String get focusCompletedWhileAway =>
      'En session avslutades medan appen var stängd och har sparats.';

  @override
  String get focusNotificationsOff =>
      'Aviseringar är avstängda. Du får ingen avisering när en session tar slut.';

  @override
  String get focusBatteryHint =>
      'Vissa enheter pausar appar i bakgrunden. Timern håller rätt tid, men aviseringar kan dröja. Tillåt obegränsad batterianvändning för pålitliga aviseringar.';

  @override
  String get focusOpenSettings => 'Öppna inställningar';

  @override
  String get focusStopConfirmTitle => 'Stoppa sessionen?';

  @override
  String get focusStopConfirmMessage => 'Tiden du har fokuserat hittills sparas.';

  @override
  String get focusDiscard => 'Släng';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuter',
      one: '1 minut',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time kvar';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time har gått';
  }

  @override
  String get focusDeleteSession => 'Radera session';

  @override
  String get tasksTitle => 'Uppgifter';

  @override
  String get tasksViewToday => 'I dag';

  @override
  String get tasksViewUpcoming => 'Kommande';

  @override
  String get tasksViewAll => 'Alla';

  @override
  String get tasksViewOverdue => 'Försenade';

  @override
  String get tasksViewCompleted => 'Slutförda';

  @override
  String get tasksQuickAddHint => 'Lägg till en uppgift…';

  @override
  String get tasksEmptyTitle => 'Allt klart';

  @override
  String get tasksEmptyMessage => 'Lägg till en uppgift och forma din dag.';

  @override
  String get tasksEmptyCompleted => 'Slutförda uppgifter visas här.';

  @override
  String get taskNew => 'Ny uppgift';

  @override
  String get taskEdit => 'Redigera uppgift';

  @override
  String get taskTitleLabel => 'Rubrik';

  @override
  String get taskTitleHint => 'Vad behöver göras?';

  @override
  String get taskDescriptionLabel => 'Beskrivning';

  @override
  String get taskNotesLabel => 'Anteckningar';

  @override
  String get taskPriority => 'Prioritet';

  @override
  String get priorityNone => 'Ingen';

  @override
  String get priorityLow => 'Låg';

  @override
  String get priorityMedium => 'Medel';

  @override
  String get priorityHigh => 'Hög';

  @override
  String get priorityUrgent => 'Brådskande';

  @override
  String get taskDueDate => 'Förfallodatum';

  @override
  String get taskStartDate => 'Startdatum';

  @override
  String get taskReminder => 'Påminnelse';

  @override
  String get taskRepeat => 'Upprepa';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategori';

  @override
  String get taskCategoryHint => 't.ex. Jobb, Hem, Studier';

  @override
  String get taskEstimateMinutes => 'Uppskattning (minuter)';

  @override
  String get taskTracked => 'Uppmätt fokus';

  @override
  String get taskLabels => 'Etiketter';

  @override
  String get taskAddLabel => 'Ny etikett';

  @override
  String get taskChecklist => 'Checklista';

  @override
  String get taskAddChecklistItem => 'Lägg till en punkt';

  @override
  String get taskSubtasks => 'Deluppgifter';

  @override
  String get taskAddSubtask => 'Lägg till en deluppgift';

  @override
  String get taskDependencies => 'Blockeras av';

  @override
  String get taskAddDependency => 'Lägg till en blockerande uppgift';

  @override
  String get taskLinkedNotes => 'Kopplade anteckningar';

  @override
  String get taskSetTime => 'Ange tid';

  @override
  String get taskNoDate => 'Inget datum';

  @override
  String get taskCompleted => 'Uppgiften slutförd';

  @override
  String get taskNextOccurrence => 'Nästa tillfälle skapat';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dagar försenad',
      one: '1 dag försenad',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Markera ”$title” som klar';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Markera ”$title” som inte klar';
  }

  @override
  String get sortSmart => 'Smart';

  @override
  String get sortDueDate => 'Förfallodatum';

  @override
  String get sortPriority => 'Prioritet';

  @override
  String get sortCreated => 'Nyast';

  @override
  String get sortTitle => 'Rubrik';

  @override
  String get filterAllProjects => 'Alla projekt';

  @override
  String get filterAnyPriority => 'Alla prioriteter';

  @override
  String get filterTitle => 'Filtrera och sortera';

  @override
  String get dateToday => 'I dag';

  @override
  String get dateTomorrow => 'I morgon';

  @override
  String get dateYesterday => 'I går';

  @override
  String get repeatNever => 'Upprepas inte';

  @override
  String get repeatDaily => 'Varje dag';

  @override
  String get repeatWeekdays => 'Varje vardag';

  @override
  String get repeatWeekly => 'Varje vecka';

  @override
  String get repeatMonthly => 'Varje månad';

  @override
  String get repeatYearly => 'Varje år';

  @override
  String get repeatCustom => 'Anpassad';

  @override
  String get repeatEvery => 'Upprepa var';

  @override
  String get repeatOnDays => 'På dagar';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'dagar', one: 'dag');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'veckor', one: 'vecka');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'månader',
      one: 'månad',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'år', one: 'år');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gånger',
      one: '1 gång',
    );
    return 'Slutar efter $_temp0';
  }

  @override
  String get repeatEndsNever => 'Slutar aldrig';

  @override
  String get reminderAtTime => 'När det börjar';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuter innan',
      one: '1 minut innan',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours timmar innan',
      one: '1 timme innan',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 dag innan';

  @override
  String get projectsTitle => 'Projekt';

  @override
  String get projectsEmptyTitle => 'Inga projekt än';

  @override
  String get projectsEmptyMessage => 'Samla uppgifter, anteckningar och fokustid som hör ihop.';

  @override
  String get projectNew => 'Nytt projekt';

  @override
  String get projectEdit => 'Redigera projekt';

  @override
  String get projectName => 'Namn';

  @override
  String get projectDescription => 'Beskrivning';

  @override
  String get projectGoal => 'Syfte';

  @override
  String get projectDeadline => 'Deadline';

  @override
  String get projectColor => 'Färg';

  @override
  String get projectIcon => 'Ikon';

  @override
  String get projectProgress => 'Framsteg';

  @override
  String projectTasksDone(int done, int total) {
    return '$done av $total uppgifter klara';
  }

  @override
  String get projectFocusTime => 'Fokustid';

  @override
  String get projectArchived => 'Arkiverade projekt';

  @override
  String get projectShowArchived => 'Visa arkiverade';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dagar kvar',
      one: '1 dag kvar',
      zero: 'Förfaller i dag',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Deadline har passerat';

  @override
  String get calendarTitle => 'Kalender';

  @override
  String get calendarMonth => 'Månad';

  @override
  String get calendarWeek => 'Vecka';

  @override
  String get calendarDay => 'Dag';

  @override
  String get calendarToday => 'I dag';

  @override
  String get calendarPrevious => 'Föregående';

  @override
  String get calendarNext => 'Nästa';

  @override
  String get calendarNoEvents => 'Inget planerat';

  @override
  String get calendarAllDay => 'Heldag';

  @override
  String get eventNew => 'Ny händelse';

  @override
  String get eventEdit => 'Redigera händelse';

  @override
  String get eventTitleHint => 'Händelsens rubrik';

  @override
  String get eventStarts => 'Börjar';

  @override
  String get eventEnds => 'Slutar';

  @override
  String get eventKind => 'Typ';

  @override
  String get eventKindEvent => 'Händelse';

  @override
  String get eventKindTimeBlock => 'Tidsblock';

  @override
  String get eventKindFocus => 'Fokussession';

  @override
  String get eventKindGoal => 'Personligt mål';

  @override
  String get eventDescription => 'Detaljer';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Krockar med $count händelser',
      one: 'Krockar med 1 händelse',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Schemakrockar den här dagen';

  @override
  String get calendarTaskDue => 'Uppgift förfaller';

  @override
  String get calendarDragHint => 'Håll in och dra en händelse för att flytta den';

  @override
  String get calendarRescheduled => 'Händelsen flyttad';

  @override
  String get calendarScheduleTask => 'Planera som tidsblock';

  @override
  String get notesTitle => 'Anteckningar';

  @override
  String get notesViewAll => 'Alla';

  @override
  String get notesViewPinned => 'Fästa';

  @override
  String get notesViewFavorites => 'Favoriter';

  @override
  String get notesViewArchived => 'Arkiverade';

  @override
  String get notesTags => 'Taggar';

  @override
  String get notesNewNotebook => 'Ny anteckningsbok';

  @override
  String get notesNoNotebook => 'Ingen anteckningsbok';

  @override
  String get notesEmptyTitle => 'Ett tomt blad';

  @override
  String get notesEmptyMessage => 'Fånga idéer, mötesanteckningar och kunskap.';

  @override
  String get noteTitleHint => 'Rubrik';

  @override
  String get noteBodyHint =>
      'Börja skriva…';

  @override
  String get noteFavorite => 'Favorit';

  @override
  String get noteUnfavorite => 'Ta bort från favoriter';

  @override
  String get noteMoveTo => 'Flytta till anteckningsbok';

  @override
  String get noteBacklinks => 'Länkad från';

  @override
  String get noteLinkedTasks => 'Kopplade uppgifter';

  @override
  String get noteLinkTask => 'Koppla en uppgift';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Rubrik';

  @override
  String get noteFormatBold => 'Fet';

  @override
  String get noteFormatItalic => 'Kursiv';

  @override
  String get noteFormatList => 'Punktlista';

  @override
  String get noteFormatChecklist => 'Checklista';

  @override
  String get noteFormatLink => 'Länk';

  @override
  String noteEdited(String time) {
    return 'Redigerad $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ord',
      one: '1 ord',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kort';

  @override
  String get flashEmptyTitle => 'Skapa din första kortlek';

  @override
  String get flashEmptyMessage =>
      'Repetition med mellanrum visar varje kort precis innan du skulle glömma det.';

  @override
  String get deckNew => 'Ny kortlek';

  @override
  String get deckEdit => 'Redigera kortlek';

  @override
  String get deckName => 'Kortlekens namn';

  @override
  String get deckDescription => 'Beskrivning';

  @override
  String get deckDailyNew => 'Nya kort per dag';

  @override
  String get deckDailyReview => 'Dagligt repetitionsmål';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort',
      one: '1 kort',
      zero: 'Inga kort',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Att repetera';

  @override
  String get deckNewCards => 'Nya';

  @override
  String get deckMature => 'Inlärda';

  @override
  String get deckStudy => 'Plugga';

  @override
  String get deckNothingDue => 'Inget att repetera just nu. Kom tillbaka senare.';

  @override
  String get deckEmptyCards => 'Lägg till kort för att börja lära dig.';

  @override
  String get cardNew => 'Nytt kort';

  @override
  String get cardEdit => 'Redigera kort';

  @override
  String get cardFront => 'Framsida';

  @override
  String get cardBack => 'Baksida';

  @override
  String get cardFrontHint => 'Fråga eller begrepp';

  @override
  String get cardBackHint => 'Svar eller definition';

  @override
  String get cardTags => 'Taggar';

  @override
  String get cardAddAnother => 'Spara och lägg till ett till';

  @override
  String get reviewShowAnswer => 'Visa svaret';

  @override
  String get reviewAgain => 'Igen';

  @override
  String get reviewHard => 'Svårt';

  @override
  String get reviewGood => 'Bra';

  @override
  String get reviewEasy => 'Lätt';

  @override
  String reviewProgress(int done, int total) {
    return '$done av $total';
  }

  @override
  String get reviewFinishedTitle => 'Session klar';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Du repeterade $count kort.',
      one: 'Du repeterade 1 kort.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Tryck för att visa svaret';

  @override
  String get importCardsTitle => 'Importera kort';

  @override
  String get importCardsHint =>
      'Klistra in ett kort per rad (fram- och baksida åtskilda med tabb eller semikolon), eller välj en fil: Excel (.xlsx), CSV, en Anki-kortlek (.apkg) eller en exporterad kortlek.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort importerade',
      one: '1 kort importerat',
      zero: 'Inga kort importerade',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Innehållet kunde inte importeras.';

  @override
  String get exportCopied => 'Kortleken exporterad';

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
      other: '$count dagar',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Mål';

  @override
  String get goalsEmptyTitle => 'Sikta på något';

  @override
  String get goalsEmptyMessage =>
      'Sätt upp mål för dagen, veckan, månaden eller på lång sikt och följ dina verkliga framsteg.';

  @override
  String get goalNew => 'Nytt mål';

  @override
  String get goalEdit => 'Redigera mål';

  @override
  String get goalTitleHint => 'Vad vill du uppnå?';

  @override
  String get goalPeriod => 'Period';

  @override
  String get goalPeriodDaily => 'Dagligen';

  @override
  String get goalPeriodWeekly => 'Varje vecka';

  @override
  String get goalPeriodMonthly => 'Varje månad';

  @override
  String get goalPeriodLongTerm => 'Långsiktigt';

  @override
  String get goalTarget => 'Målvärde';

  @override
  String get goalUnit => 'Enhet';

  @override
  String get goalUnitHint => 't.ex. sidor, km, timmar';

  @override
  String get goalStatusActive => 'Aktivt';

  @override
  String get goalStatusPaused => 'Pausat';

  @override
  String get goalStatusAchieved => 'Uppnått';

  @override
  String get goalPause => 'Pausa målet';

  @override
  String get goalResume => 'Återuppta målet';

  @override
  String get goalMarkAchieved => 'Markera som uppnått';

  @override
  String goalProgressOf(String current, String target) {
    return '$current av $target';
  }

  @override
  String get goalLogAmount => 'Mängd';

  @override
  String get goalLogNote => 'Anteckning (valfritt)';

  @override
  String get goalHistory => 'Historik';

  @override
  String get goalNoHistory => 'Loggade framsteg visas här';

  @override
  String get goalLinkedTasks => 'Kopplade uppgifter';

  @override
  String get goalLinkedTasksHint => 'Varje slutförd kopplad uppgift räknas som 1 mot målet.';

  @override
  String get goalThisPeriod => 'Den här perioden';

  @override
  String get habitsTitle => 'Vanor';

  @override
  String get habitsEmptyTitle => 'Små steg, varje dag';

  @override
  String get habitsEmptyMessage => 'Skapa en vana och bocka av den när du gör den.';

  @override
  String get habitNew => 'Ny vana';

  @override
  String get habitEdit => 'Redigera vana';

  @override
  String get habitNameHint => 't.ex. Läs 20 sidor';

  @override
  String get habitDays => 'Schema';

  @override
  String get habitEveryDay => 'Varje dag';

  @override
  String get habitTargetPerDay => 'Gånger per dag';

  @override
  String get habitReminder => 'Daglig påminnelse';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar i rad',
      one: '1 dag i rad',
      zero: 'Ingen svit',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Längsta svit';

  @override
  String get habitCurrentStreak => 'Nuvarande svit';

  @override
  String get habitConsistency => 'Regelbundenhet';

  @override
  String get habitLast90 => 'Senaste 90 dagarna';

  @override
  String get habitPaused => 'Pausad';

  @override
  String get habitPause => 'Pausa vanan';

  @override
  String get habitResume => 'Återuppta vanan';

  @override
  String get habitDoneToday => 'Klar i dag';

  @override
  String habitCountToday(int count, int target) {
    return '$count av $target i dag';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Bocka av ”$name”';
  }

  @override
  String get habitNotScheduledToday => 'Inte schemalagd i dag';

  @override
  String get analyticsTitle => 'Insikter';

  @override
  String get rangeWeek => '7 dagar';

  @override
  String get rangeMonth => '30 dagar';

  @override
  String get rangeQuarter => '90 dagar';

  @override
  String get statFocusTime => 'Fokustid';

  @override
  String get statSessions => 'Sessioner';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed slutförda · $interrupted avbrutna i förtid';
  }

  @override
  String get statTasksDone => 'Slutförda uppgifter';

  @override
  String get statCompletionRate => 'Klara i tid';

  @override
  String get statHabitConsistency => 'Regelbundenhet i vanor';

  @override
  String get statRetention => 'Minns kort';

  @override
  String get statReviews => 'Repetitioner';

  @override
  String get statActiveGoals => 'Aktiva mål';

  @override
  String get statEstimated => 'Uppskattat utfört arbete';

  @override
  String get statEstimatedNote => 'Baserat på dina uppskattningar, inte uppmätt tid';

  @override
  String get statMeasuredNote => 'Uppmätt från fokussessioner';

  @override
  String get chartFocusByDay => 'Fokusminuter per dag';

  @override
  String get chartTasksByDay => 'Slutförda uppgifter per dag';

  @override
  String get chartTimeByProject => 'Tid per projekt';

  @override
  String get chartProjectProgress => 'Framsteg per projekt';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: totalt $total, bästa dag $best';
  }

  @override
  String get analyticsNoData => 'Inte tillräckligt med data än';

  @override
  String get analyticsUnassigned => 'Utan projekt';

  @override
  String get searchHint => 'Sök i allt…';

  @override
  String get searchRecent => 'Senaste sökningar';

  @override
  String get searchClearRecent => 'Rensa senaste sökningar';

  @override
  String searchNoResults(String query) {
    return 'Inga resultat för ”$query”';
  }

  @override
  String get searchStartTyping =>
      'Sök bland uppgifter, anteckningar, kort, mål, händelser och mer. Sökningen stannar på enheten.';

  @override
  String get searchCatTask => 'Uppgifter';

  @override
  String get searchCatProject => 'Projekt';

  @override
  String get searchCatNote => 'Anteckningar';

  @override
  String get searchCatFlashcard => 'Kort';

  @override
  String get searchCatDeck => 'Kortlekar';

  @override
  String get searchCatGoal => 'Mål';

  @override
  String get searchCatHabit => 'Vanor';

  @override
  String get searchCatEvent => 'Händelser';

  @override
  String get searchCatSession => 'Sessioner';

  @override
  String get searchAll => 'Alla';

  @override
  String get assistantTitle => 'Assistent';

  @override
  String get assistantIntro =>
      'Planeringshjälp som fungerar på enheten. Koppla vid behov en AI-tjänst du själv väljer för sammanfattningar och generering.';

  @override
  String get assistantOnDevice => 'På enheten';

  @override
  String get assistantCloud => 'AI-tjänst';

  @override
  String get assistantPlanDay => 'Planera min dag';

  @override
  String get assistantPlanDayDesc =>
      'Ordnar öppna uppgifter efter hur brådskande och viktiga de är och efter uppskattning, och passar in dem kring dina händelser.';

  @override
  String get assistantExtractTasks => 'Hämta uppgifter ur en anteckning';

  @override
  String get assistantExtractTasksDesc =>
      'Hittar checklistpunkter och åtgärdsrader i en anteckning och gör dem till uppgifter.';

  @override
  String get assistantMakeCards => 'Gör kort av en anteckning';

  @override
  String get assistantMakeCardsDesc =>
      'Gör kort av rader som ”begrepp: definition” och av fråga-svar-rader.';

  @override
  String get assistantSummarize => 'Sammanfatta en anteckning';

  @override
  String get assistantSummarizeDesc =>
      'Kräver en AI-tjänst. Anteckningen skickas först när du har bekräftat.';

  @override
  String get assistantWorkload => 'Översikt över arbetsbördan';

  @override
  String get assistantWorkloadDesc => 'Jämför uppskattat arbete med din lediga tid den här veckan.';

  @override
  String get assistantPlanEmpty => 'Inga öppna uppgifter att planera. Njut av utrymmet.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Ledig fokustid i dag: $time';
  }

  @override
  String get assistantPlanOverflow => 'Det här kanske inte hinns med i dag:';

  @override
  String get assistantChooseNote => 'Välj en anteckning';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uppgifter hittades',
      one: '1 uppgift hittades',
      zero: 'Inga uppgifter hittades i anteckningen',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort hittades',
      one: '1 kort hittades',
      zero: 'Inga kort hittades i anteckningen',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Välj en kortlek';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Uppskattat arbete: $estimated. Ledig tid: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Du har planerat mer än tiden räcker till. Överväg att flytta uppgifter med lägre prioritet.';

  @override
  String get assistantWorkloadOk => 'Din plan ryms i den tid du har.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count öppna uppgifter saknar uppskattning.',
      one: '1 öppen uppgift saknar uppskattning.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI-tjänst';

  @override
  String get assistantProviderOff => 'Ingen tjänst kopplad. Verktygen på enheten fungerar ändå.';

  @override
  String assistantProviderOn(String host) {
    return 'Ansluten till $host';
  }

  @override
  String get assistantEndpoint => 'API-adress (HTTPS)';

  @override
  String get assistantModel => 'Modell';

  @override
  String get assistantApiKey => 'API-nyckel';

  @override
  String get assistantApiKeyStored => 'Lagras säkert på enheten';

  @override
  String get assistantHttpsOnly => 'Endast HTTPS-adresser tillåts';

  @override
  String get assistantConsentTitle => 'Skicka innehållet till din AI-tjänst?';

  @override
  String assistantConsentBody(String host) {
    return 'Den valda anteckningstexten lämnar enheten och behandlas av $host. Inget annat skickas.';
  }

  @override
  String get assistantConsentAlways => 'Fråga inte igen för den här tjänsten';

  @override
  String get assistantSend => 'Skicka';

  @override
  String get assistantUnavailable => 'AI-tjänsten kunde inte nås. Försök igen senare.';

  @override
  String get assistantDisabledTitle => 'Assistenten är avstängd';

  @override
  String get assistantDisabledMessage =>
      'Slå på den för att använda planeringsverktygen. Ingen data lämnar enheten om du inte kopplar en tjänst och bekräftar varje förfrågan.';

  @override
  String get assistantSummaryTitle => 'Sammanfattning';

  @override
  String get assistantRemoveProvider => 'Ta bort tjänsten';

  @override
  String get settingsTitle => 'Inställningar';

  @override
  String get settingsGeneral => 'Allmänt';

  @override
  String get settingsLanguage => 'Språk';

  @override
  String get settingsLanguageSystem => 'Enhetens språk';

  @override
  String get settingsAppearance => 'Utseende';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Ljust';

  @override
  String get themeDark => 'Mörkt';

  @override
  String get themeSystem => 'System';

  @override
  String get settingsReduceMotion => 'Minska rörelser';

  @override
  String get settingsReduceMotionDesc => 'Färre animationer och rörliga bakgrunder';

  @override
  String get settingsFocus => 'Fokustimer';

  @override
  String get settingsWorkLength => 'Fokuslängd';

  @override
  String get settingsShortBreak => 'Kort paus';

  @override
  String get settingsLongBreak => 'Lång paus';

  @override
  String get settingsLongBreakEvery => 'Lång paus efter';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessioner',
      one: '1 session',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Starta pauser automatiskt';

  @override
  String get settingsSound => 'Ljud när det är klart';

  @override
  String get settingsDailyFocusTarget => 'Dagligt fokusmål';

  @override
  String get settingsWeeklyFocusTarget => 'Veckovis fokusmål';

  @override
  String get settingsNotifications => 'Aviseringar';

  @override
  String get settingsNotificationsEnable => 'Tillåt påminnelser';

  @override
  String get settingsQuietHours => 'Tysta timmar';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Påminnelser om vanor, mål och repetition är tysta från $start till $end';
  }

  @override
  String get settingsReviewReminder => 'Påminnelse om att repetera kort';

  @override
  String get settingsPermissionDenied => 'Aviseringar är blockerade i systeminställningarna.';

  @override
  String get settingsPrivacy => 'Integritet och data';

  @override
  String get settingsPrivacyStatement =>
      'Dina data lagras bara på den här enheten och är krypterade. Inget konto, ingen analys och ingen spårning.';

  @override
  String get settingsBackup => 'Skapa krypterad säkerhetskopia';

  @override
  String get settingsBackupDesc => 'Skyddad med ett lösenord du själv väljer';

  @override
  String get settingsRestore => 'Återställ från säkerhetskopia';

  @override
  String get settingsRestoreDesc => 'Ersätter all data på enheten';

  @override
  String get settingsErase => 'Radera all data';

  @override
  String get settingsEraseDesc => 'Radera allt på enheten för alltid';

  @override
  String get settingsEraseConfirmTitle => 'Radera all data?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Varje uppgift, anteckning, kort, mål, vana, händelse och session raderas för alltid. Skriv $word för att bekräfta.';
  }

  @override
  String get settingsEraseWord => 'RADERA';

  @override
  String get settingsErased => 'All data raderad';

  @override
  String get backupPassword => 'Lösenord för säkerhetskopian';

  @override
  String get backupPasswordConfirm => 'Bekräfta lösenordet';

  @override
  String backupPasswordHint(int count) {
    return 'Minst $count tecken. Det går inte att återfå om du glömmer det.';
  }

  @override
  String get backupPasswordMismatch => 'Lösenorden matchar inte';

  @override
  String get backupPasswordShort => 'Lösenordet är för kort';

  @override
  String get backupCreating => 'Krypterar säkerhetskopian…';

  @override
  String get backupCreated => 'Säkerhetskopian är redo att sparas';

  @override
  String get backupRestoring => 'Kontrollerar och återställer…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count objekt återställda',
      one: '1 objekt återställt',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Fel lösenord, eller så har filen ändrats.';

  @override
  String get backupNotABackup => 'Filen är ingen säkerhetskopia från Deep Focus.';

  @override
  String get backupCorrupted => 'Säkerhetskopian är skadad.';

  @override
  String get backupNewer =>
      'Säkerhetskopian gjordes med en nyare version av appen. Uppdatera först.';

  @override
  String get backupRestoreConfirmTitle => 'Ersätta all data?';

  @override
  String get backupRestoreConfirmBody =>
      'Allt som finns på enheten nu ersätts av säkerhetskopian. Om återställningen misslyckas ändras ingenting.';

  @override
  String get settingsAbout => 'Om';

  @override
  String settingsVersion(String version) {
    return 'Version $version';
  }

  @override
  String get settingsLicenses => 'Licenser för öppen källkod';

  @override
  String get settingsAssistant => 'Assistent';

  @override
  String get settingsAssistantEnable => 'Aktivera assistenten';

  @override
  String get settingsDashboard => 'Delar på startsidan';

  @override
  String get settingsTrash => 'Papperskorg';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Papperskorgen är tom';

  @override
  String get trashHint => 'Raderade objekt finns kvar här tills du tar bort dem.';

  @override
  String get trashTasks => 'Uppgifter';

  @override
  String get trashNotes => 'Anteckningar';

  @override
  String get onboardWelcomeTitle => 'Välkommen till din nya arbetsplats';

  @override
  String get onboardWelcomeBody =>
      'Uppgifter, fokus, kalender, anteckningar, kort, mål och vanor – samlat och vackert enkelt.';

  @override
  String get onboardPrivateTitle => 'Privat från grunden';

  @override
  String get onboardPrivateBody =>
      'Allt stannar krypterat på enheten. Inget konto. Ingen spårning. Du bestämmer.';

  @override
  String get onboardLanguageTitle => 'Välj ditt språk';

  @override
  String get onboardNotifTitle => 'Milda påminnelser';

  @override
  String get onboardNotifBody =>
      'Tillåt aviseringar för påminnelser om uppgifter och fokus. Du kan ändra det när som helst.';

  @override
  String get onboardGetStarted => 'Kom igång';

  @override
  String onboardStep(int current, int total) {
    return 'Steg $current av $total';
  }

  @override
  String get notifChannelReminders => 'Påminnelser';

  @override
  String get notifChannelRemindersDesc => 'Påminnelser om uppgifter, händelser, vanor och mål';

  @override
  String get notifChannelFocus => 'Fokustimer';

  @override
  String get notifChannelFocusDesc => 'Aviseringar när en fokussession eller paus tar slut';

  @override
  String get notifTaskTitle => 'Påminnelse om uppgift';

  @override
  String get notifEventTitle => 'Kommande händelse';

  @override
  String notifEventBody(String title, String time) {
    return '$title kl. $time';
  }

  @override
  String get notifFocusDoneTitle => 'Fokussessionen är klar';

  @override
  String get notifFocusDoneBody => 'Bra jobbat. Dags för en paus.';

  @override
  String get notifBreakDoneTitle => 'Pausen är slut';

  @override
  String get notifBreakDoneBody => 'Redo för nästa fokussession?';

  @override
  String get notifHabitTitle => 'Påminnelse om vana';

  @override
  String get notifReviewTitle => 'Dina kort väntar';

  @override
  String get notifReviewBody => 'En kort repetition håller minnet starkt.';

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
  String get weekdaysShort => 'M,T,O,T,F,L,S';

  @override
  String a11yProgress(int value) {
    return 'Framsteg $value procent';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritet: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Färg $index';
  }

  @override
  String get analyticsRangeLabel => 'Tidsperiod';

  @override
  String get analyticsRefresh => 'Uppdatera';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done av $total uppgifter klara i tid';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done av $total uppgifter klara';
  }

  @override
  String get analyticsNoProjects => 'Inga aktiva projekt';

  @override
  String get analyticsNoFocus => 'Inga fokussessioner under perioden';

  @override
  String get analyticsHabitsNone => 'Inga aktiva vanor';

  @override
  String get analyticsRetentionNote => 'Andel inlärda kort som du mindes';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Ledig tid räknas $start–$end på arbetsdagar ($days), minus händelser med tid. Uppskattat arbete är summan av uppskattningarna för öppna uppgifter som förfaller inom 7 dagar.';
  }

  @override
  String get assistantWorkdaysMonFri => 'måndag–fredag';

  @override
  String get assistantWorkdaysSunThu => 'söndag–torsdag';

  @override
  String get assistantWorkloadDayOff => 'Ledig dag';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planerat · $free ledigt';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planerat från nu till $end, runt dagens händelser. Försenade uppgifter först, sedan prioritet, förfallodatum och uppskattning.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get assistantScheduleBlocks => 'Planera som tidsblock';

  @override
  String get assistantScheduleConfirmTitle => 'Lägga till tidsblock i kalendern?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tidsblock läggs till i dagens kalender.',
      one: '1 tidsblock läggs till i dagens kalender.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tidsblock tillagda',
      one: '1 tidsblock tillagt',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Redan i kalendern';

  @override
  String get assistantPlanTimeline => 'Ryms i dag';

  @override
  String get assistantNoEstimate => 'Lägg till en uppskattning för att planera dessa';

  @override
  String get assistantNoNotes => 'Inga anteckningar än. Skriv en anteckning först.';

  @override
  String get assistantNoteEmpty => 'Anteckningen är tom.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uppgifter skapade',
      one: '1 uppgift skapad',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort skapade',
      one: '1 kort skapat',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Skapa $count',
      one: 'Skapa 1',
      zero: 'Inget valt',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Känns igen: omarkerade rutor ”- [ ]” och rader som börjar med TODO: eller To do:';

  @override
  String get assistantCardsHint =>
      'Känns igen: ”begrepp: definition”, ”begrepp — definition” och par av Q:/A:-rader';

  @override
  String get assistantProviderHint =>
      'Använd valfri tjänst som är kompatibel med OpenAI. Nyckeln stannar i enhetens säkra lagring och tas aldrig med i säkerhetskopior.';

  @override
  String get assistantEndpointHelp => 'Till exempel https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Lämna tomt för att behålla den sparade nyckeln';

  @override
  String get assistantApiKeyRequired => 'Ange en API-nyckel';

  @override
  String get assistantProviderSaved => 'Tjänsten sparad';

  @override
  String get assistantProviderRemoved => 'Tjänsten borttagen och nyckeln raderad';

  @override
  String get assistantRemoveProviderConfirm =>
      'Ta bort tjänsten och radera den sparade API-nyckeln från enheten?';

  @override
  String get assistantAskEveryTime => 'Fråga före varje förfrågan';

  @override
  String get assistantSummarizing => 'Sammanfattar…';

  @override
  String assistantSummaryNote(String host) {
    return 'Skapat av $host. Granska innan du litar på det.';
  }

  @override
  String get assistantCopy => 'Kopiera';

  @override
  String get assistantCopied => 'Kopierat';

  @override
  String get assistantConfigure => 'Ställ in tjänst';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get calendarSeriesMoved => 'Alla händelser i serien flyttades';

  @override
  String get calendarEventReminder => 'Påminnelse';

  @override
  String get calendarEventRepeat => 'Upprepa';

  @override
  String get calendarEventColor => 'Färg';

  @override
  String get calendarDefaultColor => 'Använd typens färg';

  @override
  String get calendarEventLinkedTask => 'Kopplad uppgift';

  @override
  String get calendarEventNoTask => 'Ingen kopplad uppgift';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count händelser',
      one: '1 händelse',
      zero: 'Inga händelser',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uppgifter förfaller',
      one: '1 uppgift förfaller',
      zero: 'inga uppgifter förfaller',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Lägg till en händelse eller ett tidsblock för att planera dagen.';

  @override
  String get calendarNow => 'Aktuell tid';

  @override
  String get calendarRecurring => 'Upprepas';

  @override
  String get calendarEventNotFound => 'Händelsen finns inte längre';

  @override
  String get calendarEventLocalTime => 'Tider visas i enhetens tidszon';

  @override
  String get calendarEventDeleted => 'Händelsen flyttad till papperskorgen';

  @override
  String get calendarConflictMarker => 'Krockar med en annan händelse';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Ändringarna gäller alla händelser i serien';

  @override
  String get calendarDragHintSeries => 'Om du drar en återkommande händelse flyttas hela serien';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, uppgift förfaller';
  }

  @override
  String get startupErrorTitle => 'Dina data kunde inte öppnas';

  @override
  String get startupErrorLocked =>
      'Krypteringsnyckeln för enhetens data är inte tillgänglig. Inget har raderats. Det hjälper ofta att starta om enheten. Om du nyligen har återställt enheten kan du i stället återställa dina data från en krypterad säkerhetskopia.';

  @override
  String get startupErrorCipher =>
      'Enheten stöder inte den krypterade lagring som appen kräver. Inget har sparats okrypterat.';

  @override
  String get startupErrorRetry => 'Försök igen';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort väntar på repetition',
      one: '1 kort väntar på repetition',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count att repetera';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count nya';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Inlärda kort: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Ange 0 eller mer';

  @override
  String get flashcardsSearchCards => 'Sök kort';

  @override
  String get flashcardsSearchEmpty => 'Inga kort matchar sökningen';

  @override
  String get flashcardsCardAdded => 'Kortet tillagt';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Repeteras $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopiera till urklipp';

  @override
  String get flashcardsExportTitle => 'Exportera kortlek';

  @override
  String get flashcardsDeleteDeck => 'Radera kortlek';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, nästa repetition om $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Fråga: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Svar: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Visa frågan';

  @override
  String get flashcardsImportField => 'Kort att importera';

  @override
  String get flashcardsNothingToStudy => 'Inget att plugga';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort redo att plugga',
      one: '1 kort redo att plugga',
      zero: 'Inga kort redo',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Per bedömning';

  @override
  String get flashcardsDeckNotFound => 'Kortleken är inte längre tillgänglig.';

  @override
  String get focusSessionDeleted => 'Sessionen raderad';

  @override
  String get focusDeleteConfirm =>
      'Radera sessionen från historiken? Tiden räknas då inte längre mot dina mål.';

  @override
  String get focusUnlinkTask => 'Ta bort kopplad uppgift';

  @override
  String get focusNoteHint => 'Vad arbetade du med?';

  @override
  String get focusModeLabel => 'Timerläge';

  @override
  String focusUpNext(String phase) {
    return 'Härnäst: $phase';
  }

  @override
  String get focusStopwatchHint => 'Räknar uppåt tills du stoppar.';

  @override
  String get focusOpenHint => 'Ingen tidsgräns. Sluta när du är klar.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Påminnelser är avstängda i inställningarna. Du får ingen avisering när en session tar slut.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Alla';

  @override
  String get goalsFilterPeriod => 'Filter för period';

  @override
  String get goalsFilterStatus => 'Filter för status';

  @override
  String get goalsEmptyFiltered => 'Inga mål matchar filtret';

  @override
  String goalsDueOn(String date) {
    return 'Senast $date';
  }

  @override
  String get goalsDeadline => 'Deadline (valfritt)';

  @override
  String get goalsNoDeadline => 'Ingen deadline';

  @override
  String get goalsSetDeadline => 'Ange deadline';

  @override
  String get goalsRemoveDeadline => 'Ta bort deadline';

  @override
  String get goalsDescription => 'Beskrivning (valfritt)';

  @override
  String get goalsTitleLabel => 'Rubrik';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Målet nått';

  @override
  String get goalsLogged => 'Framsteg loggat';

  @override
  String get goalsEntryDeleted => 'Posten borttagen';

  @override
  String get goalsDeleteEntry => 'Ta bort post';

  @override
  String get goalsDeleted => 'Målet raderat';

  @override
  String get goalsMarkActive => 'Markera som aktivt';

  @override
  String get goalsNotFound => 'Målet är inte längre tillgängligt';

  @override
  String get goalsLinkTask => 'Koppla en uppgift';

  @override
  String get goalsNoLinkedTasks => 'Inga kopplade uppgifter än';

  @override
  String get goalsUnlinkTask => 'Koppla bort uppgift';

  @override
  String get goalsTaskOpen => 'Inte slutförd än';

  @override
  String get goalsTaskLinked => 'Uppgiften kopplad';

  @override
  String get goalsTaskUnlinked => 'Uppgiften bortkopplad';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count slutförda kopplade uppgifter',
      one: '1 slutförd kopplad uppgift',
    );
    return 'Inklusive $_temp0 den här perioden';
  }

  @override
  String get goalsHistoryAllTime =>
      'Poster från tidigare perioder finns kvar här men räknas bara för sin egen period.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done av $total klara i dag';
  }

  @override
  String get habitsNothingToday => 'Inga vanor är schemalagda i dag';

  @override
  String get habitsDecrease => 'Ta bort en avbockning';

  @override
  String get habitsResetToday => 'Nollställ i dag';

  @override
  String get habitsCheckInHint => 'Håll in för att justera';

  @override
  String get habitsName => 'Namn';

  @override
  String get habitsColor => 'Färg';

  @override
  String get habitsValidationDays => 'Välj minst en dag';

  @override
  String habitsReminderAt(String time) {
    return 'Varje dag kl. $time';
  }

  @override
  String get habitsSetReminder => 'Ange tid för påminnelse';

  @override
  String get habitsRemoveReminder => 'Ta bort påminnelse';

  @override
  String get habitsReminderNote =>
      'Påminnelser visas på schemalagda dagar när aviseringar är tillåtna.';

  @override
  String get habitsArchived => 'Vanan arkiverad';

  @override
  String get habitsNotFound => 'Vanan är inte längre tillgänglig';

  @override
  String get habitsLast30 => 'Senaste 30 dagarna';

  @override
  String get habitsConsistencyNone => 'Inte tillräckligt med data än';

  @override
  String get habitsCalendar => 'Avbockningshistorik';

  @override
  String get habitsCalendarHint => 'Tryck på en dag för att rätta den.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count av $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Avbockningar de senaste 90 dagarna. Regelbundenhet $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Avbockningar de senaste 90 dagarna. Inte tillräckligt med data än.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Pausade dagar påverkar inte din svit.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arkivera vanan';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gånger om dagen',
      one: 'En gång om dagen',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Övriga anteckningar';

  @override
  String get notesAllNotebooks => 'Alla anteckningsböcker';

  @override
  String get notesNotebookName => 'Anteckningsbokens namn';

  @override
  String get notesNotebookColor => 'Färg';

  @override
  String get notesDeleteNotebook => 'Radera anteckningsbok';

  @override
  String get notesDeleteNotebookMessage =>
      'Anteckningsboken tas bort. Anteckningarna finns kvar under Alla anteckningsböcker.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fäst viktiga anteckningar så att de ligger överst.';

  @override
  String get notesEmptyFavorites => 'Anteckningar du markerar som favorit visas här.';

  @override
  String get notesEmptyArchived => 'Arkiverade anteckningar visas här.';

  @override
  String get notesEmptyFiltered => 'Inga anteckningar matchar filtren.';

  @override
  String get notesArchivedSnack => 'Anteckningen arkiverad';

  @override
  String get notesUnarchivedSnack => 'Anteckningen flyttad tillbaka till dina anteckningar';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done av $total klara';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatering';

  @override
  String get notesWrite => 'Skriv';

  @override
  String get notesPreviewEmpty => 'Inget att förhandsvisa än.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Inga andra anteckningar länkar hit än. Länka till anteckningen med [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Ge anteckningen en rubrik så att andra anteckningar kan länka till den.';

  @override
  String get notesLinkedTasksEmpty => 'Inga uppgifter kopplade till anteckningen.';

  @override
  String notesLinkMissing(String title) {
    return 'Det finns ingen anteckning med rubriken ”$title” än.';
  }

  @override
  String get notesNotFound => 'Anteckningen finns inte längre.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Checklistpunkt: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Öppna anteckningen $title';
  }

  @override
  String get notesTaskDone => 'Slutförd';

  @override
  String get notifTimerDoneBody => 'Tiden du ställde in har gått.';

  @override
  String get onboardingPrivatePointDevice => 'Lagras krypterat, bara på enheten';

  @override
  String get onboardingPrivatePointAccount => 'Inget konto behövs';

  @override
  String get onboardingPrivatePointTracking => 'Ingen analys, ingen spårning';

  @override
  String get onboardingLanguageBody => 'Du kan ändra detta när som helst i Inställningar.';

  @override
  String get onboardingNext => 'Nästa';

  @override
  String get projectsActive => 'Aktiva';

  @override
  String get projectNameHint => 't.ex. Produktlansering';

  @override
  String get projectGoalHint => 'Hur ser klart ut?';

  @override
  String get projectNoDeadline => 'Ingen deadline';

  @override
  String get projectTasksOpen => 'Öppna uppgifter';

  @override
  String get projectTasksCompleted => 'Slutförda uppgifter';

  @override
  String get projectAddTask => 'Lägg till uppgift i projektet';

  @override
  String get projectAddNote => 'Ny projektanteckning';

  @override
  String get projectLinkedNotes => 'Anteckningar';

  @override
  String get projectNoTasks => 'Inga uppgifter i projektet än';

  @override
  String get projectArchivedBadge => 'Arkiverat';

  @override
  String get projectDeleted => 'Projektet flyttat till papperskorgen';

  @override
  String get projectDeleteMessage => 'Uppgifterna finns kvar i din lista utan projekt.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent procent klart';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultat',
      one: '1 resultat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtrera efter typ';

  @override
  String searchRecentTap(String query) {
    return 'Sök igen efter $query';
  }

  @override
  String get settingsLanguageHint => 'Välj språk för hela appen. Namnen visas på sitt eget språk.';

  @override
  String get settingsThemeHint => 'Ljust, mörkt eller som systemet';

  @override
  String settingsDecrease(String setting) {
    return 'Minska $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Öka $setting';
  }

  @override
  String get settingsQuietStart => 'Börjar';

  @override
  String get settingsQuietEnd => 'Slutar';

  @override
  String get settingsNotificationsHint =>
      'Det här sparar ditt val i appen. Systemet kan också be om tillstånd.';

  @override
  String get settingsDashboardHint => 'Dra för att ändra ordning. Stäng av delar du inte behöver.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Flytta $section';
  }

  @override
  String get settingsDashboardReset => 'Återställ standardordning';

  @override
  String get settingsAssistantDesc =>
      'Valfri planeringshjälp. Inget lämnar enheten om du inte kopplar en tjänst.';

  @override
  String get settingsAssistantSetup => 'Assistent och tjänst';

  @override
  String get settingsTrashDesc => 'Återställ eller radera borttagna objekt för alltid';

  @override
  String get settingsEraseFirstBody =>
      'Det här går inte att ångra. Skapa gärna en krypterad säkerhetskopia först.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Skriv $word';
  }

  @override
  String get settingsEraseFailed => 'Data kunde inte raderas. Inget har ändrats.';

  @override
  String get settingsAboutTagline => 'En privat produktivitetsplats som fungerar lokalt.';

  @override
  String get backupShowPassword => 'Visa lösenord';

  @override
  String get backupHidePassword => 'Dölj lösenord';

  @override
  String get backupSaved => 'Säkerhetskopian sparad';

  @override
  String get backupFailed => 'Säkerhetskopian kunde inte skapas. Dina data är oförändrade.';

  @override
  String get backupReadFailed => 'Den valda filen kunde inte läsas.';

  @override
  String get backupRestoreFailed => 'Återställningen misslyckades. Inget har ändrats.';

  @override
  String get backupShareSubject => 'Krypterad säkerhetskopia från Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Var $count:e dag',
      one: 'Varje dag',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Var $count:e vecka',
      one: 'Varje vecka',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Var $count:e månad',
      one: 'Varje månad',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vart $count:e år',
      one: 'Varje år',
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
    return 'på $days';
  }

  @override
  String get repeatEndsLabel => 'Slutar';

  @override
  String get repeatEndsAfter => 'Efter ett antal gånger';

  @override
  String get repeatCountLabel => 'Antal gånger';

  @override
  String get reminderNone => 'Ingen påminnelse';

  @override
  String get reminderCustomTime => 'Vid en viss tid';

  @override
  String get a11yDecrease => 'Minska';

  @override
  String get a11yIncrease => 'Öka';

  @override
  String get pickTaskTitle => 'Välj en uppgift';

  @override
  String get pickTaskEmpty => 'Inga öppna uppgifter';

  @override
  String get tasksSearchTooltip => 'Sök uppgifter';

  @override
  String get tasksSectionOverdue => 'Försenade';

  @override
  String get tasksSectionToday => 'I dag';

  @override
  String get tasksRecurringSemantics => 'Upprepas';

  @override
  String get tasksFilterPriorityAtLeast => 'Lägsta prioritet';

  @override
  String get tasksFilterCategory => 'Kategori';

  @override
  String get tasksFilterAnyCategory => 'Alla kategorier';

  @override
  String get tasksFilterLabel => 'Etikett';

  @override
  String get tasksFilterAnyLabel => 'Alla etiketter';

  @override
  String get tasksFilterReset => 'Återställ filter';

  @override
  String get tasksViewByProject => 'Per projekt';

  @override
  String get tasksViewByPriority => 'Per prioritet';

  @override
  String get tasksViewByCategory => 'Per kategori';

  @override
  String get tasksGroupNoCategory => 'Ingen kategori';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uppgifter',
      one: '1 uppgift',
    );
    return 'Blockeras av $_temp0';
  }

  @override
  String get taskBlockedWarning => 'Uppgiften blockeras av ofärdiga uppgifter. Slutföra ändå?';

  @override
  String get taskStartFocus => 'Fokusera på den här uppgiften';

  @override
  String get taskRemoveDate => 'Ta bort datum';

  @override
  String get taskAllDay => 'Ingen bestämd tid';

  @override
  String get taskSaved => 'Uppgiften sparad';

  @override
  String get taskCreated => 'Uppgiften skapad';

  @override
  String get taskReminderNeedsDue => 'Ange ett förfallodatum för att använda relativa påminnelser';

  @override
  String get taskLabelName => 'Etikettens namn';

  @override
  String get taskPlanning => 'Planering';

  @override
  String get taskOrganize => 'Organisera';

  @override
  String get taskBreakdown => 'Uppdelning';

  @override
  String get trashDeleteTaskTitle => 'Radera uppgiften för alltid?';

  @override
  String get trashDeleteNoteTitle => 'Radera anteckningen för alltid?';

  @override
  String get trashDeleteBody => 'Det här går inte att ångra.';

  @override
  String get trashEmptyTitle => 'Tömma papperskorgen?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count objekt raderas för alltid.',
      one: '1 objekt raderas för alltid.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Återställt';

  @override
  String get trashPurged => 'Raderat för alltid';

  @override
  String trashDeletedOn(String date) {
    return 'Raderat $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count objekt',
      one: '1 objekt',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Läs upp';

  @override
  String get flashcardsTtsUnavailable => 'Text till tal är inte tillgängligt på enheten.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Ingen röst är installerad för språket. Lägg till en i Androids inställningar för text till tal.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Gnista',
      'rocket': 'Raket',
      'book': 'Bok',
      'work': 'Arbete',
      'home': 'Hem',
      'heart': 'Hjärta',
      'code': 'Kod',
      'palette': 'Palett',
      'fitness': 'Träning',
      'school': 'Skola',
      'travel': 'Resor',
      'money': 'Sparande',
      'other': 'Ikon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Fler fält';

  @override
  String get cardFieldExample => 'Exempel';

  @override
  String get cardFieldExplanation => 'Förklaring';

  @override
  String get cardFieldPronunciation => 'Uttal';

  @override
  String get cardFieldNotes => 'Ytterligare anteckningar';

  @override
  String get projectMilestones => 'Milstolpar';

  @override
  String get milestoneAdd => 'Lägg till milstolpe';

  @override
  String get milestoneEdit => 'Redigera milstolpe';

  @override
  String get milestoneTitleLabel => 'Milstolpe';

  @override
  String get milestoneNoDate => 'Inget datum';

  @override
  String get milestonesEmpty =>
      'Inga milstolpar än. Lägg till kontrollpunkter med datum för att följa projektet i kalendern.';

  @override
  String get milestoneDeleted => 'Milstolpen raderad';

  @override
  String milestoneDoneA11y(String title) {
    return 'Markera milstolpen ”$title” som klar';
  }

  @override
  String calendarMilestone(String project) {
    return 'Milstolpe · $project';
  }

  @override
  String get tasksViewInbox => 'Inkorg';

  @override
  String get tasksViewArchived => 'Arkiverade';

  @override
  String get tasksEmptyInbox =>
      'Uppgifter utan projekt eller datum hamnar här. Sortera dem när du har en stund över.';

  @override
  String get tasksEmptyArchived =>
      'Arkiverade uppgifter sparas här, utanför dina listor och påminnelser.';

  @override
  String get taskArchivedBadge => 'Arkiverad';

  @override
  String get taskStatusInProgress => 'Pågår';

  @override
  String get taskArchived => 'Uppgiften arkiverad';

  @override
  String get taskUnarchived => 'Uppgiften återställd från arkivet';

  @override
  String get focusPlanTitle => 'Sessionsplan';

  @override
  String focusPlanTotal(String duration) {
    return 'Totalt $duration';
  }

  @override
  String get focusPlanRounds => 'Fokussessioner';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Lång paus efter';

  @override
  String get focusPlanSkipLastBreak => 'Hoppa över sista pausen';

  @override
  String get focusPlanAutoBreaks => 'Starta pauser automatiskt';

  @override
  String get focusPlanAutoFocus => 'Starta fokus automatiskt efter en paus';

  @override
  String get focusPlanSave => 'Spara plan';

  @override
  String get focusPlanNameHint => 't.ex. Tentaplugg';

  @override
  String get focusPlanSaved => 'Planen sparad';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min fokus, $rest min paus';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Minska $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Öka $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Session $current av $total';
  }

  @override
  String get focusSeriesComplete => 'Serien är klar. Bra jobbat!';

  @override
  String get filterAll => 'Alla';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importerade · $duplicates dubbletter hoppades över · $invalid ofullständiga rader';
  }

  @override
  String get flashcardsSuspend => 'Pausa kortet';

  @override
  String get flashcardsResume => 'Återuppta kortet';

  @override
  String get flashcardsSuspended => 'Kortet pausat: det schemaläggs inte';

  @override
  String get flashcardsResumed => 'Kortet återupptaget';

  @override
  String get flashcardsSuspendedFilter => 'Pausade';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown av $total kort';
  }

  @override
  String get flashcardsImportFile => 'Från fil';

  @override
  String get speechTitle => 'Tal';

  @override
  String get speechAppLanguage => 'Appens språk';

  @override
  String get speechFrontLanguage => 'Framsidans språk';

  @override
  String get speechBackLanguage => 'Baksidans språk';

  @override
  String get speechRepeat => 'Upprepa varje uppläsning';

  @override
  String get speechRate => 'Hastighet';

  @override
  String get speechAutoRead => 'Läs upp frågan automatiskt';

  @override
  String get speechHint =>
      'Använder rösterna som finns på enheten, offline. Om ett språk saknar röst får du veta det, och inget annat används i stället.';

  @override
  String get studyHowTitle => 'Hur vill du plugga?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Repetera $count kort',
      one: 'Repetera 1 kort',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Öva på alla kort (schemat ändras inte)';

  @override
  String get studyPracticeMistakes => 'Öva på senaste misstagen';

  @override
  String get studyPracticeHint =>
      'Övningsrundor ändrar aldrig när korten ska repeteras. Repetition uppdaterar schemat.';

  @override
  String get studyModeClassic => 'Klassiskt';

  @override
  String get studyModeReverse => 'Omvänt';

  @override
  String get studyModeMixed => 'Åt båda hållen';

  @override
  String get studyModeTyped => 'Skriv svaret';

  @override
  String get studyModeChoice => 'Flervalsfrågor';

  @override
  String get studyModeListening => 'Lyssna';

  @override
  String get studyPractice => 'övning';

  @override
  String get studyNoMistakes => 'Inga misstag på sistone i kortleken. Snyggt!';

  @override
  String get studyTypeAnswer => 'Skriv ditt svar';

  @override
  String get studyCheck => 'Kontrollera';

  @override
  String get studyKnewIt => 'Jag kunde det';

  @override
  String get studyDidntKnow => 'Kunde inte';

  @override
  String studyMistakes(int count) {
    return 'Missade ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Repetera de missade korten';

  @override
  String get studyCorrect => 'Rätt';

  @override
  String get studyAlmost => 'Nästan – kontrollera stavningen';

  @override
  String get studyWrong => 'Inte riktigt';

  @override
  String get studyShowText => 'Visa texten';

  @override
  String get flashcardsImportFileFailed =>
      'Filen kunde inte öppnas. Du kan klistra in innehållet i stället.';

  @override
  String get studyNoMatchingCards => 'Inga kort matchar valet än.';

  @override
  String get studyPracticeNew => 'Bara nya';

  @override
  String get studyPracticeHard => 'Svåra kort';

  @override
  String get studyPracticeFavorites => 'Favoriter';

  @override
  String get studySessionSize => 'Kort per session';

  @override
  String get studySessionAll => 'Alla';

  @override
  String get studyOrder => 'Ordning';

  @override
  String get studyOrderDue => 'Mest försenade först';

  @override
  String get studyOrderRandom => 'Slumpvis';

  @override
  String get studyOrderHardest => 'Svåraste först';

  @override
  String get flashcardsHard => 'Svåra';

  @override
  String get flashcardsFavorites => 'Favoriter';

  @override
  String get flashcardsFavorite => 'Lägg till i favoriter';

  @override
  String get flashcardsUnfavorite => 'Ta bort från favoriter';

  @override
  String get flashcardsDuplicate => 'Duplicera';

  @override
  String get flashcardsMoveTo => 'Flytta till kortlek';

  @override
  String get flashcardsNoOtherDeck => 'Skapa en annan kortlek först.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort flyttade',
      one: 'Kortet flyttat',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Lägg till tagg';

  @override
  String get flashcardsTagHint => 't.ex. verb';

  @override
  String flashcardsSelected(int count) {
    return '$count valda';
  }

  @override
  String get flashcardsSelectAll => 'Välj alla som visas';

  @override
  String flashcardsSelectCard(String front) {
    return 'Välj $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Minns $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Möjlig dubblett';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Kortleken har redan ”$front” → ”$back”. Spara ändå?';
  }

  @override
  String get flashcardsSaveAnyway => 'Spara ändå';

  @override
  String get flashcardsStats => 'Statistik';

  @override
  String get flashcardsStatTotal => 'Kort';

  @override
  String get flashcardsStatLearning => 'Lär in';

  @override
  String get flashcardsStatMatureCaption => 'Minns i 21+ dagar';

  @override
  String get flashcardsStatReviewsToday => 'Repetitioner i dag';

  @override
  String get flashcardsStatCorrect => 'Rätta svar';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Senaste $days dagarna';
  }

  @override
  String get flashcardsStatForget => 'Glömskegrad';

  @override
  String get flashcardsStatForgetCaption => '”Igen” på inlärda kort';

  @override
  String get flashcardsStatRecall => 'Minns nu';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-uppskattning, repeterade kort';

  @override
  String flashcardsStatActivity(int count) {
    return 'Repetitioner per dag · $count totalt';
  }

  @override
  String get flashcardsStatHistory => 'Senaste svaren';

  @override
  String get flashcardsStatNoHistory =>
      'Inga repetitioner än. Plugga kortleken för att se dina framsteg här.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Läs upp $field';
  }

  @override
  String get speechVoice => 'Röst';

  @override
  String get speechVoiceDefault => 'Automatisk';

  @override
  String get speechVoiceOnline => 'kräver internet';

  @override
  String get speechTest => 'Testa röst';

  @override
  String get importNext => 'Förhandsvisning';

  @override
  String get importPreviewTitle => 'Koppla kolumner till fält';

  @override
  String get importIgnoreColumn => 'Ignorera';

  @override
  String importColumn(int n) {
    return 'Kolumn $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kort redo · $invalid ofullständiga rader hoppas över';
  }

  @override
  String get importNeedFrontBack => 'Välj vilka kolumner som är framsida och baksida.';

  @override
  String get actionMoveUp => 'Flytta upp';

  @override
  String get actionMoveDown => 'Flytta ned';

  @override
  String get flashcardsLayoutTitle => 'Kortlayout';

  @override
  String get flashcardsLayoutHint =>
      'Byt namn på, dölj eller ordna om kortlekens extra fält. Kortens innehåll ändras aldrig.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Visa $field när du pluggar';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Visa svaret steg för steg';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Baksidan visas först; varje extra fält öppnas med ett tryck.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Visa $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Filen är större än $mb MB.';
  }

  @override
  String get flashcardsImage => 'Bild';

  @override
  String get flashcardsAudio => 'Ljud';

  @override
  String get flashcardsAddImage => 'Lägg till bild';

  @override
  String get flashcardsAddAudio => 'Lägg till ljud';

  @override
  String get flashcardsPlayAudio => 'Spela upp inspelningen';

  @override
  String get flashcardsAudioUnavailable => 'Inspelningen kan inte spelas upp på enheten.';

  @override
  String get flashcardsCustomFields => 'Dina fält';

  @override
  String get flashcardsTemplates => 'Mallar';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Fält $n';
  }

  @override
  String get flashcardsAddField => 'Lägg till fält';

  @override
  String get flashcardsFieldName => 'Fältets namn';

  @override
  String get flashcardsFieldLangDefault => 'Sidans språk';

  @override
  String get flashcardsTemplateConfirm =>
      'Mallen bestämmer hur fälten visas och lägger till sina fält. Dina kort och befintliga fält förblir som de är.';

  @override
  String get flashcardsApplyTemplate => 'Använd';

  @override
  String get templateVocabulary => 'Ordförråd';

  @override
  String get templateTwoTranslations => 'Ord med två översättningar';

  @override
  String get templateQuestionAnswer => 'Fråga och svar';

  @override
  String get templateDefinition => 'Begrepp och definition';

  @override
  String get templateGrammar => 'Grammatikregel';

  @override
  String get templateFieldPlural => 'Plural';

  @override
  String get templateFieldTranslation2 => 'Andra översättning';

  @override
  String get templateFieldSynonyms => 'Synonymer';

  @override
  String get templateFieldRule => 'Regel';

  @override
  String get deckCategory => 'Nivå eller ämne';

  @override
  String get deckCategoryHint => 't.ex. A1, Medicin';

  @override
  String get flashcardsSearchAll => 'Sök bland alla kort';

  @override
  String get flashcardsSearchAllHint => 'Ord, översättning, exempel, anteckning, tagg…';

  @override
  String get flashcardsAllDecks => 'Alla kortlekar';

  @override
  String get flashcardsAllLanguages => 'Alla språk';

  @override
  String get flashcardsLangUnset => 'Språk inte angivet';

  @override
  String get flashcardsLevelUnset => 'Ingen nivå eller inget ämne';

  @override
  String get flashcardsByLanguage => 'Framsteg per språk';

  @override
  String get flashcardsByLevel => 'Framsteg per nivå eller ämne';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks kortlekar · $cards kort · $mature inlärda · $due att repetera · $correct rätt (30 dagar)';
  }

  @override
  String get flashcardsRecord => 'Spela in';

  @override
  String get flashcardsRecording => 'Spelar in…';

  @override
  String get flashcardsRecordStop => 'Stoppa och behåll';

  @override
  String get flashcardsMicDenied =>
      'Mikrofonåtkomst är avstängd. Tillåt den i systeminställningarna för att spela in.';

  @override
  String get flashcardsRecordFailed => 'Inspelning är inte tillgänglig på enheten.';

  @override
  String get soundsTitle => 'Ljud';

  @override
  String get soundsNature => 'Natur';

  @override
  String get soundsNoise => 'Fokusbrus';

  @override
  String get soundRain => 'Regn';

  @override
  String get soundStorm => 'Åska';

  @override
  String get soundRiver => 'Flod';

  @override
  String get soundOcean => 'Havsvågor';

  @override
  String get soundFire => 'Lägereld';

  @override
  String get soundForest => 'Fåglar i skogen';

  @override
  String get soundNight => 'Sommarnatt';

  @override
  String get soundWhite => 'Vitt brus';

  @override
  String get soundPink => 'Rosa brus';

  @override
  String get soundBrown => 'Brunt brus';

  @override
  String get soundsPlay => 'Spela';

  @override
  String get soundsSleep => 'Insomningstimer';

  @override
  String get soundsSleepOff => 'Av';

  @override
  String soundsSleepAt(String time) {
    return 'Stannar kl. $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Högst $count ljud kan spelas samtidigt.';
  }

  @override
  String get soundsHint =>
      'Tryck på ett ljud för att börja. Blanda flera och ställ in volymen för vart och ett.';

  @override
  String get soundsMixer => 'Mix';

  @override
  String soundsVolumeOf(String name) {
    return 'Volym för $name';
  }

  @override
  String get soundsChannel => 'Naturljud';

  @override
  String get settingsEndTone => 'Ljud när timern är klar';

  @override
  String get toneGentle => 'Mjuka pip';

  @override
  String get toneBeeps => 'Pip';

  @override
  String get toneWood => 'Knack i trä';

  @override
  String get toneBird => 'Fågelrop';

  @override
  String get toneStream => 'Bäck';

  @override
  String get toneSystem => 'Telefonens ljud';

  @override
  String get speechOnPhone => 'På den här telefonen';

  @override
  String get speechAllLanguages => 'Alla språk';

  @override
  String get speechSearchLanguage => 'Sök språk';

  @override
  String get speechGetVoices => 'Ladda ned fler röster';

  @override
  String get speechGetVoicesHint => 'Språk utan röst kan laddas ned i telefonens talinställningar.';

  @override
  String get speechSettingsFailed => 'Telefonens talinställningar kunde inte öppnas.';

  @override
  String get speechVoiceMissing => 'Ingen röst installerad';

  @override
  String get speechPause => 'Paus mellan upprepningar';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Läs upp exemplet med svaret';

  @override
  String get flashListen => 'Lyssna';

  @override
  String get flashListenNext => 'Nästa kort';

  @override
  String get flashListenEmpty => 'Inga kort att lyssna på.';

  @override
  String get flashViewTable => 'Tabell';

  @override
  String get flashViewCards => 'Kort';

  @override
  String get flashSwapSides => 'Byt plats på kolumnerna';

  @override
  String get flashSort => 'Sortera';

  @override
  String get flashSortNewest => 'Nyast först';

  @override
  String get flashSortAlpha => 'A till Ö';

  @override
  String get flashSortDue => 'Att repetera först';

  @override
  String get flashSortHard => 'Svåraste först';

  @override
  String get flashPasteCards => 'Klistra in kort';

  @override
  String get flashClipboardEmpty => 'Urklipp innehåller ingen text.';

  @override
  String get flashMenuAdd => 'Lägg till kort';

  @override
  String get flashMenuDeck => 'Kortlek';

  @override
  String get flashToday => 'I dag';

  @override
  String get flashStudyNow => 'Plugga';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort besvarade',
      one: '1 kort besvarat',
      zero: 'Inga kort besvarade',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Regn i skogen';

  @override
  String get autoBackupTitle => 'Automatiska säkerhetskopior';

  @override
  String get autoBackupDesc => 'Varje dag på den här telefonen; de senaste 7 sparas';

  @override
  String get autoBackupHint =>
      'Kopiorna stannar på telefonen och tas bort om appen avinstalleras. Använd ”Säkerhetskopiera” för att spara en fil när du byter telefon.';

  @override
  String get autoBackupNone => 'Ingen automatisk säkerhetskopia än. Den första görs i dag.';

  @override
  String get autoBackupRestore => 'Återställ';

  @override
  String autoBackupConfirm(String date) {
    return 'Ersätta all nuvarande data med säkerhetskopian från $date?';
  }

  @override
  String get autoBackupRestored => 'Återställt.';

  @override
  String get errorLogTitle => 'Fellogg';

  @override
  String get errorLogHint =>
      'Om något går fel noteras det här: bara typen av fel och var i koden, aldrig ditt innehåll. Dela det för att hjälpa till att lösa problemet.';

  @override
  String get errorLogEmpty => 'Inga fel har registrerats.';

  @override
  String get errorLogClear => 'Rensa';

  @override
  String get soundsWithFocus => 'Spela med fokussessioner';

  @override
  String get soundsWithFocusHint =>
      'Din mix startar med en fokussession och pausas under pauserna.';

  @override
  String get soundsSavedMixes => 'Sparade mixar';

  @override
  String get soundsSaveMix => 'Spara mixen';

  @override
  String get soundsMixNameHint => 'Namn, t.ex. Regnigt bibliotek';

  @override
  String soundsDeleteMix(String name) {
    return 'Radera mixen ”$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'En gång om dagen, bara när det finns kort att repetera';

  @override
  String get settingsReviewTime => 'Tid för påminnelse';

  @override
  String get shortcutFocus => 'Fokus';

  @override
  String get shortcutNewTask => 'Ny uppgift';

  @override
  String get shortcutReview => 'Repetera kort';

  @override
  String get shortcutSounds => 'Naturljud';

  @override
  String get myDayTitle => 'Starta min dag';

  @override
  String get myDayHint => 'Din dag i en överblick, sedan fokus med ett tryck';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uppgifter i dag',
      one: '1 uppgift i dag',
      zero: 'Inga uppgifter i dag',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Inga fler händelser i dag';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Härnäst: $title kl. $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vanor kvar',
      one: '1 vana kvar',
      zero: 'Alla vanor klara',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Börja med en fokussession';

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
    return '$day $month $year AH';
  }

  @override
  String get settingsHijri => 'Islamiska datum';

  @override
  String get settingsHijriHint => 'Visas i kalendern och på startskärmen (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done av $goal kort i dag';
  }

  @override
  String get studyGoalReached => 'Dagsmålet nått. Bra jobbat!';

  @override
  String get studyWeekTitle => 'Din vecka';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort besvarade på 7 dagar',
      one: '1 kort besvarat på 7 dagar',
      zero: 'Inga kort besvarade på 7 dagar',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fokus på 7 dagar';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Svit: $current · Bästa: $best';
  }

  @override
  String get studyGoalTitle => 'Dagsmål (kort)';

  @override
  String get studyGoalOff => 'Av';

  @override
  String get focusDndTitle => 'Stör ej under fokus';

  @override
  String get focusDndHint => 'Slås på vid varje fokussession och av igen vid pausen';

  @override
  String get focusDndNeedsAccess =>
      'Tillåt åtkomst i telefonens inställningar för att använda detta';

  @override
  String get voiceInput => 'Tala för att skriva';

  @override
  String get voiceInputPrompt => 'Tala nu';

  @override
  String get voiceInputUnavailable =>
      'Röstinmatning är inte tillgänglig på telefonen. Installera eller aktivera en taltjänst (till exempel Taligenkänning och talsyntes från Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Soluppgång';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Muslimska världsligan';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mecka';

  @override
  String get prayerMethodEgypt => 'Egyptens allmänna myndighet';

  @override
  String get prayerMethodJordan => 'Jordanien, ministeriet för awqaf';

  @override
  String get prayerMethodKarachi => 'Universitetet för islamiska vetenskaper, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Gulfregionen';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turkiet, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malaysia, Indonesien';

  @override
  String get prayerMethodFrance => 'Frankrike (12°)';

  @override
  String get prayerMethodRussia => 'Ryssland, andliga förvaltningen';

  @override
  String prayerNotifTitle(String name) {
    return 'Dags för $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Bönetid · $time';
  }

  @override
  String get prayerTitle => 'Bönetider';

  @override
  String get prayerOffHint =>
      'Välj din stad för att se bönetiderna. De beräknas på telefonen; ingen platsåtkomst behövs.';

  @override
  String get prayerChooseCity => 'Välj stad';

  @override
  String get prayerCity => 'Stad';

  @override
  String get prayerCitySearch => 'Sök efter en stad';

  @override
  String get prayerMethod => 'Beräkningsmetod';

  @override
  String get prayerHanafiAsr => 'Hanafitisk asr (senare tid)';

  @override
  String get prayerReminders => 'Avisera vid varje bönetid';

  @override
  String get prayerPauseFocus => 'Pausa fokus vid bönetid';

  @override
  String get prayerPauseFocusHint => 'En pågående session pausas; fortsätt efter bönen';

  @override
  String get prayerTurnOff => 'Stäng av bönetider';

  @override
  String get prayerAccuracyNote =>
      'Beräknade tider kan skilja sig några minuter från din lokala moské.';

  @override
  String prayerNext(String name, String time) {
    return '$name kl. $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Den här Anki-filen använder det nyaste formatet. Exportera igen i Anki med ”Stöd äldre Anki-versioner” påslaget och importera den filen.';

  @override
  String get importTemplate => 'Kalkylarksmall';

  @override
  String get importTemplateFront => 'äpple';

  @override
  String get importTemplateBack => 'en rund frukt';

  @override
  String get importTemplateExample => 'Jag äter ett äpple varje dag.';

  @override
  String get importTemplateTag => 'mat';

  @override
  String get starterTitle => 'Startkortlekar';

  @override
  String get starterHint =>
      'Lägg till en för att börja plugga direkt. Du kan redigera eller radera den senare.';

  @override
  String get starterAdd => 'Lägg till';

  @override
  String get starterWords => 'Vardagliga engelska ord (arabiska)';

  @override
  String get starterCapitals => 'Världens huvudstäder';

  @override
  String get starterElements => 'Grundämnen';

  @override
  String get settingsAccent => 'Accentfärg';

  @override
  String get accentViolet => 'Lila';

  @override
  String get accentBlue => 'Blå';

  @override
  String get accentTeal => 'Blågrön';

  @override
  String get accentGreen => 'Grön';

  @override
  String get accentRose => 'Rosa';

  @override
  String get accentAmber => 'Bärnsten';

  @override
  String get settingsFlashTextSize => 'Textstorlek på kort';

  @override
  String get settingsFlashTextSample => 'Exempel';

  @override
  String get widgetStartFocus => 'Tryck för att fokusera';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokus till $time';
  }

  @override
  String get widgetNoCardsDue => 'Kort: allt klart';

  @override
  String get faqMyDayQ => 'Vad gör ”Starta min dag”?';

  @override
  String get faqMyDayA =>
      'En gång om dagen erbjuder startskärmen den: se dagens uppgifter, nästa händelse, vanor som återstår och kort att repetera, och starta sedan en fokussession med ett tryck. Håll in appikonen för snabbåtgärder, eller lägg till widgeten på startskärmen för att se fokustid och kort att repetera.';

  @override
  String get faqTasksQ => 'Hur lägger jag till en uppgift med påminnelse?';

  @override
  String get faqTasksA =>
      'Tryck på Ny uppgift på Hem eller + i Uppgifter. Skriv rubriken eller säg den med mikrofonen, och ange sedan förfallodatum, tid och påminnelse. Försenade uppgifter visas först.';

  @override
  String get faqFocusQ => 'Hur fungerar fokustimern?';

  @override
  String get faqFocusA =>
      'Välj Pomodoro, nedräkning eller fri tid och tryck på Starta; pauser kan följa automatiskt. I Inställningar kan du välja slutljud, slå på Stör ej under fokus och spela dina naturljud med varje session.';

  @override
  String get faqSoundsQ => 'Kan jag blanda naturljud?';

  @override
  String get faqSoundsA =>
      'Slå på upp till sex riktiga inspelningar, ställ in volymen för var och en och spara mixen med ett namn. De fortsätter spela i bakgrunden, och en insomningstimer kan stänga av dem. Ingen musik används.';

  @override
  String get faqCalendarQ => 'Kan kalendern visa islamiska datum?';

  @override
  String get faqCalendarA =>
      'Ja. Islamiska datum (Umm al-Qura) visas automatiskt på arabiska och kan slås på i Inställningar för alla språk. Händelser, uppgifter med förfallodatum och projektets milstolpar visas tillsammans.';

  @override
  String get faqFlashcardsQ => 'Hur avgör repetitionen vilka kort jag ser?';

  @override
  String get faqFlashcardsA =>
      'Kort du kan bra kommer tillbaka efter längre tid och kort du missar kommer tillbaka snart (repetition med mellanrum). Bedöm varje svar med Igen, Svårt, Bra eller Lätt. Sätt ett dagsmål och håll din svit på kortet I dag. Ange ett provdatum för en kortlek för att se hur många dagar som är kvar och hur många nya kort du ska lära dig per dag. Sortera efter \"Min ordning\" för att dra korten på plats, tryck på högtalaren på valfri sida för att höra den, och ställ in hastighet och upprepningar i menyn Tal.';

  @override
  String get faqImportQ => 'Kan jag ta med kort från Anki eller Excel?';

  @override
  String get faqImportA =>
      'Ja. Välj Importera i en kortlek och välj en fil: Anki (.apkg), Excel (.xlsx) eller CSV, och koppla kolumnerna. Använd ”Kalkylarksmall” för att skriva kort på en dator. Bilder och ljud i Anki-filer importeras inte.';

  @override
  String get faqNotesQ => 'Vad kan anteckningar göra?';

  @override
  String get faqNotesA =>
      'Skriv fritt med checklistor och formatering, fäst eller markera viktiga anteckningar som favoriter, lägg till taggar och koppla anteckningar till uppgifter. Med mikrofonknappen kan du diktera. En ny anteckning kan börja från en mall (föreläsning, bokreferat, dagbok, veckoplan), och bildknappen lägger till foton.';

  @override
  String get faqHabitsQ => 'Hur räknas vanornas sviter?';

  @override
  String get faqHabitsA =>
      'En dag räknas när du når vanans mål på en schemalagd dag. Att pausa en vana skyddar sviten. Varje vana kan ha sin egen tid för påminnelse.';

  @override
  String get faqGoalsQ => 'Hur följer mål framstegen?';

  @override
  String get faqGoalsA =>
      'Ge ett mål ett målvärde och en enhet och logga sedan framsteg. Kortet visar hur långt du har kommit och hur mycket som återstår före deadline.';

  @override
  String get faqProjectsQ => 'Vad är projekt till för?';

  @override
  String get faqProjectsA =>
      'Samla uppgifter i ett projekt, lägg till milstolpar med datum och följ det totala framsteget. Milstolparna visas också i kalendern.';

  @override
  String get faqInsightsQ => 'Vad visar Insikter?';

  @override
  String get faqInsightsA =>
      'Din fokustid, slutförda uppgifter och studier över dagar och veckor, med lugna förslag. Allt beräknas på telefonen.';

  @override
  String get faqSpacesQ => 'Var finns alla delar?';

  @override
  String get faqSpacesA =>
      'Utrymmen listar alla delar av appen (anteckningar, kortlekar, vanor, mål, projekt, ljud och mer) så att huvudfältet förblir enkelt.';

  @override
  String get faqBackupQ => 'Hur säkerhetskopieras mina data?';

  @override
  String get faqBackupA =>
      'Varje dag sparar appen tyst en krypterad kopia på telefonen och behåller de senaste 7. I Inställningar kan du också exportera en lösenordsskyddad säkerhetskopia och återställa den på en annan telefon.';

  @override
  String get faqPrayerQ => 'Hur fungerar bönetiderna?';

  @override
  String get faqPrayerA =>
      'Välj din stad under Inställningar → Bönetider. Tiderna beräknas på telefonen med den metod som används där, och du kan ändra metod och asr-skola. Du kan få en avisering vid varje bön, och en pågående fokussession pausas.';

  @override
  String get faqPrivacyQ => 'Var lagras mina data?';

  @override
  String get faqPrivacyA =>
      'Bara på din telefon, i en krypterad databas. Inget konto och ingen spårning. Internet används bara av funktioner du själv slår på, som den valfria assistenten.';

  @override
  String get faqAssistantQ => 'Vad är assistenten?';

  @override
  String get faqAssistantA =>
      'En valfri hjälpare som du kopplar till din egen AI-tjänst i Inställningar. Den är avstängd som standard och frågar innan den skickar någon anteckningstext.';

  @override
  String get tourPlanTitle => 'Planera din dag';

  @override
  String get tourPlanBody =>
      'Uppgifter, kalender och vanor på ett lugnt ställe. Börja varje morgon med ”Starta min dag”.';

  @override
  String get tourFocusTitle => 'Fokusera på djupet';

  @override
  String get tourFocusBody =>
      'Tidsatta sessioner med riktiga naturljud, Stör ej och mjuka sluttoner.';

  @override
  String get tourLearnTitle => 'Lär dig för gott';

  @override
  String get tourLearnBody =>
      'Kort med repetition med mellanrum, uppläsning på många språk och import från Anki eller Excel.';

  @override
  String get helpTitle => 'Hjälp och frågor';

  @override
  String get helpOpen => 'Öppna';

  @override
  String get helpTour => 'Gå igenom rundturen';

  @override
  String get tourNext => 'Nästa';

  @override
  String get tourDone => 'Nu börjar vi';

  @override
  String get transferColTitle => 'Rubrik';

  @override
  String get transferColNotes => 'Anteckningar';

  @override
  String get transferColBody => 'Text';

  @override
  String get transferColDue => 'Förfallodatum';

  @override
  String get transferColPriority => 'Prioritet (0-3)';

  @override
  String get transferColDone => 'Klar';

  @override
  String get transferColProject => 'Projekt';

  @override
  String get transferColCategory => 'Kategori';

  @override
  String get transferTitle => 'Import och export';

  @override
  String get transferSaveAs => 'Spara som';

  @override
  String get transferImport => 'Importera från en fil';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV eller en tabell i Word. Kolumner: rubrik, förfallodatum (2026-12-31), prioritet 0-3, klar, projekt, anteckningar. Uppgifter som redan finns i appen hoppas över.';

  @override
  String get transferImportNotesHint =>
      'Word-, Markdown- eller textfiler blir en anteckning. Excel eller CSV: en anteckning per rad (rubrik, text).';

  @override
  String get transferSaved => 'Filen sparad';

  @override
  String get transferFailed => 'Filen kunde inte skapas. Inget har ändrats.';

  @override
  String get transferUnsupported =>
      'Filen kan inte läsas här. Använd Excel, CSV, Word, Markdown eller text.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added tillagda',
      one: '1 tillagd',
      zero: 'Inget nytt att lägga till',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Text';

  @override
  String get transferAllNotes => 'Alla anteckningar';

  @override
  String get transferThisNote => 'Den här anteckningen';

  @override
  String get transferDeckFormats => 'Spara som Excel, Word eller PDF';

  @override
  String get faqFilesQ => 'Kan jag använda Excel-, Word- eller PDF-filer?';

  @override
  String get faqFilesA =>
      'Ja. Uppgifter och Anteckningar har en knapp för import och export (två pilar) högst upp, och varje kortlek har den i sin meny. Spara som Excel, CSV, Word eller PDF, eller hämta in Excel-, CSV-, Word-, Markdown- eller textfiler. Kolumnnamnen kan vara på vilket som helst av appens språk, och filer du har sparat kan alltid importeras igen.';

  @override
  String get tplLecture => 'Föreläsning';

  @override
  String get tplBook => 'Bokreferat';

  @override
  String get tplJournal => 'Dagbok';

  @override
  String get tplWeek => 'Veckoplan';

  @override
  String get tplLectureBody => '## Viktiga punkter\n- \n\n## Frågor\n- [ ] \n\n## Sammanfattning\n';

  @override
  String get tplBookBody =>
      '## Huvudtanke\n\n## Vad jag lärde mig\n- \n\n## Citat\n> \n\n## Att tillämpa\n- [ ] \n';

  @override
  String get tplJournalBody => '## Tacksam för\n- \n\n## Dagens fokus\n- [ ] \n\n## Anteckningar\n';

  @override
  String get tplWeekBody =>
      '## Mål den här veckan\n- [ ] \n\n### Lördag\n- [ ] \n\n### Söndag\n- [ ] \n\n### Måndag\n- [ ] \n\n### Tisdag\n- [ ] \n\n### Onsdag\n- [ ] \n\n### Torsdag\n- [ ] \n\n### Fredag\n- [ ] \n';

  @override
  String get tplHint => 'Börja från en mall';

  @override
  String get noteImage => 'Bild';

  @override
  String get noteAddImage => 'Lägg till bild';

  @override
  String get noteImageUnreadable => 'Filen är inte en bild som appen kan läsa.';

  @override
  String get noteImageTooLarge => 'Bilden är för stor.';

  @override
  String get examSet => 'Ange provdatum';

  @override
  String get examDate => 'Provdatum';

  @override
  String get examToday => 'Prov i dag. Lycka till!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Prov om $count dagar',
      one: 'Prov i morgon',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lär dig $count nya kort om dagen',
      one: 'lär dig 1 nytt kort om dagen',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'alla kort inlärda, fortsätt repetera';

  @override
  String examRaiseLimit(int count) {
    return 'Visa $count nya kort om dagen';
  }

  @override
  String get backupDriveHint =>
      'Vill du spara en kopia online? Välj Google Drive (eller en annan molnapp) på sparskärmen som öppnas härnäst.';

  @override
  String get flashShareDeck => 'Dela kortleken med en vän';

  @override
  String get flashSortManual => 'Min ordning (dra)';

  @override
  String get flashReorderHint => 'Håll i handtaget och dra ett kort för att flytta det.';

  @override
  String get flashReorderNeedsAll => 'Rensa sökning och filter för att kunna dra korten.';

  @override
  String get flashDragHandle => 'Dra för att flytta';

  @override
  String get reportTitle => 'Månadsrapport';

  @override
  String get reportFocus => 'Fokustid';

  @override
  String reportSessions(int count) {
    return '$count sessioner';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Bästa dag: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktiva dagar';
  }

  @override
  String get reportCards => 'Repeterade kort';

  @override
  String reportCardsKnown(String percent) {
    return '$percent ihågkomna';
  }

  @override
  String get reportTasks => 'Slutförda uppgifter';

  @override
  String get reportHabits => 'Avbockade vanor';

  @override
  String get reportEmpty => 'Inget har registrerats den här månaden än.';

  @override
  String get reportSave => 'Spara som PDF eller Word';

  @override
  String get reportPrevMonth => 'Föregående månad';

  @override
  String get reportNextMonth => 'Nästa månad';

  @override
  String get careTitle => 'Vård av telefon och data';

  @override
  String get storageTitle => 'Lagring';

  @override
  String get storageSubtitle => 'Vad som tar plats och rensning av oanvända bilder';

  @override
  String get storagePictures => 'Bilder i anteckningar';

  @override
  String get storageCardMedia => 'Bilder och ljud i kort';

  @override
  String get storageText => 'Anteckningarnas text';

  @override
  String get storageFree => 'Ledigt på telefonen';

  @override
  String get storageLow =>
      'Telefonen är nästan full. Frigör lite utrymme så att säkerhetskopior och påminnelser fortsätter att fungera.';

  @override
  String storageUnused(int count, String size) {
    return '$count oanvända bilder ($size)';
  }

  @override
  String get storageNoUnused => 'Inga oanvända bilder. Allt är i ordning.';

  @override
  String get storageClean => 'Ta bort oanvända bilder';

  @override
  String storageCleaned(int count) {
    return '$count bilder borttagna';
  }

  @override
  String get storageHint =>
      'Bilder räknas bara som oanvända när ingen anteckning visar dem, inte heller anteckningar i papperskorgen.';

  @override
  String get batteryTitle => 'Håll påminnelserna igång';

  @override
  String get batterySubtitle => 'Vissa telefoner stoppar appar i bakgrunden. Kontrollera din.';

  @override
  String get batteryStatusOk =>
      'Batterisparläget begränsar inte appen. Påminnelser och ljud bör komma i tid.';

  @override
  String get batteryStatusLimited =>
      'Batterisparläget kan stoppa appen i bakgrunden, så att påminnelser och ljud kommer sent eller inte alls.';

  @override
  String get batteryOpen => 'Öppna batteriinställningar';

  @override
  String get batteryOpenApp => 'Öppna appinställningar';

  @override
  String get batteryGeneric =>
      'Välj appen i batteriinställningarna och ställ in den på Obegränsad (eller Optimera inte).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: öppna även Säkerhet › Behörigheter › Autostart och slå på appen, och ställ in Batterisparläge på Inga begränsningar.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: öppna Batteri › den här appen och tillåt bakgrundsaktivitet och autostart; lås appen i listan över senaste appar.';

  @override
  String get batterySamsung =>
      'Samsung: Batteri › Begränsningar för bakgrundsanvändning: ta bort appen från Appar i viloläge och Appar i djupt viloläge.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Appstart › den här appen › hantera manuellt, och tillåt autostart, sekundär start och körning i bakgrunden.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Batteri › Strömförbrukning i bakgrunden › tillåt appen, och aktivera autostart under behörigheter.';

  @override
  String get whatsNewTitle => 'Nyheter';

  @override
  String get whatsNewSubtitle => 'De senaste ändringarna på några rader';

  @override
  String get whatsNewDone => 'Jag förstår';

  @override
  String get whatsNewOrderTitle => 'Dra korten i din egen ordning';

  @override
  String get whatsNewOrderBody =>
      'Välj Sortera › Min ordning i en kortlek, håll sedan i handtaget och dra.';

  @override
  String get whatsNewSpeechTitle => 'En högtalare på varje sida av kortet';

  @override
  String get whatsNewSpeechBody =>
      'Tryck på den för att höra ordet eller översättningen. Hastighet, upprepningar och röst finns i repetitionsmenyn. Språket känns igen från texten.';

  @override
  String get whatsNewReportTitle => 'Månadsrapport';

  @override
  String get whatsNewReportBody =>
      'Tryck på rapportikonen i Insikter för att se månaden och spara den som PDF eller Word.';

  @override
  String get whatsNewCareTitle => 'Vård av telefon och data';

  @override
  String get whatsNewCareBody =>
      'Inställningar har nu en lagringssida med bildrensning och en batteriguide för ditt telefonmärke.';

  @override
  String get whatsNewSoundTitle => 'Lugnare ljud';

  @override
  String get whatsNewSoundBody => 'Naturljuden är mjukare och tystare, och bildkorten är snyggare.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Kontrollerad $date: den senaste säkerhetskopian öppnas som den ska.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Kontrollerad $date: en skadad säkerhetskopia hittades och ersattes med en ny.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Kontrollerad $date: den senaste säkerhetskopian kunde inte öppnas. Spara en säkerhetskopia själv från Inställningar.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Du pluggar oftast runt $time';
  }

  @override
  String get smartReviewTimeUse => 'Använd den';

  @override
  String get widgetNewNote => 'Ny anteckning';

  @override
  String get noteConnections => 'Taggar, länkar och uppgifter';

  @override
  String get navCards => 'Kort';

  @override
  String get studyAnswerWay => 'Hur vill du svara?';

  @override
  String get studyMorePractice => 'Extra övning';

  @override
  String get studySessionSettings => 'Sessionsinställningar';

  @override
  String get focusAdjustTitle => 'Din session';

  @override
  String get focusPresetsTitle => 'Färdiga';

  @override
  String get focusPresetStudy => 'Plugg';

  @override
  String get focusPresetDeep => 'Djupt arbete';

  @override
  String get focusPresetQuick => 'Snabb sprint';

  @override
  String get focusPresetReading => 'Läsning';

  @override
  String get focusPresetWorkout => 'Träningsomgångar';

  @override
  String get focusAdjustMinutes => 'Fokuslängd';

  @override
  String get focusAdjustBreak => 'Paustid';

  @override
  String get focusAdjustRounds => 'Omgångar';

  @override
  String get focusRoundsOpen => 'Ingen gräns';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Tryck för att ändra tiden';

  @override
  String get flashArrangeDecks => 'Ordna kortlekar';

  @override
  String get flashDeckActions => 'Alternativ för kortlek';

  @override
  String get starterBrowse => 'Färdiga kortlekar';

  @override
  String get starterBrowseHint => 'Lägg till en med ett tryck och börja lära dig';

  @override
  String get dashOpenDecks => 'Öppna dina kort';

  @override
  String speechVoiceNumber(String n) {
    return 'Röst $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Fint flyt. Vila $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Starta paus';

  @override
  String tasksFinishAt(String time) {
    return 'Börjar du nu blir du klar med allt kl. $time';
  }

  @override
  String get focusCalmPacing => 'Lugnt tempo';

  @override
  String get focusCalmPacingHint => 'Bara hela minuter och ringen, inga tickande sekunder';

  @override
  String get focusFlipHint => 'Lägg telefonen med skärmen nedåt för att börja';

  @override
  String get focusImmersive => 'Uppslukande läge';

  @override
  String get focusImmersiveBlack => 'Helsvart (sparar batteri)';

  @override
  String get focusFlipToFocus => 'Vänd för att fokusera';

  @override
  String get focusFlipToFocusHint =>
      'I uppslukande läge: skärmen nedåt startar, att lyfta telefonen pausar';

  @override
  String get guardTitle => 'Distraktionsskydd';

  @override
  String get guardSubtitle => 'Pausa distraherande appar medan du fokuserar';

  @override
  String get guardSwitch => 'Pausa distraherande appar';

  @override
  String get guardSwitchHint => 'Under fokussessioner och dina Tidsskydd-timmar';

  @override
  String get guardNeedsAccess => 'Kräver tillgänglighetsreglaget: tryck för att slå på det';

  @override
  String get guardDisclosureTitle => 'Så fungerar skyddet';

  @override
  String get guardDisclosureBody =>
      'För att pausa apparna du väljer använder Deep Focus Androids tillgänglighetstjänst för att se vilken app som är öppen. Med \"Stäng Shorts och Reels\" påslaget kontrollerar den också om en spelare för korta videor visas på skärmen.\n\nDen läser ingen text, sparar inget av det den ser och skickar ingenting någonstans: allt stannar på telefonen. Du kan stänga av den när som helst i tillgänglighetsinställningarna.';

  @override
  String get guardAgree => 'Godkänn och öppna inställningar';

  @override
  String get guardModeGentle => 'Mild';

  @override
  String get guardModeStrict => 'Strikt';

  @override
  String get guardGentleHint => 'En andningspaus på 5 sekunder, sedan väljer du';

  @override
  String get guardStrictHint => 'Valda appar förblir stängda tills fokustiden är slut';

  @override
  String get guardApps => 'Appar att pausa';

  @override
  String get guardAppsAllowed => 'Tillåtna appar';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count appar',
      one: '1 app',
      zero: 'Inga valda än',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Tillåt bara valda appar';

  @override
  String get guardAllowlistHint =>
      'Alla andra appar pausas; samtal, inställningar och tangentbordet fungerar alltid';

  @override
  String get guardShorts => 'Stäng Shorts och Reels';

  @override
  String get guardShortsHint => 'Så länge skyddet är på. Så gott det går: apparna ändras ofta';

  @override
  String get guardSchedule => 'Tidsskydd';

  @override
  String get guardScheduleHint => 'Skydda också vissa dagar och tider, som skola eller jobb';

  @override
  String get guardFrom => 'Från';

  @override
  String get guardTo => 'Till';

  @override
  String get guardSearchApps => 'Sök appar';

  @override
  String get guardNoApps => 'Inga appar hittades';

  @override
  String get guardPrivacy =>
      'Fungerar bara på telefonen: skyddet ser vilken app som är öppen, aldrig vad den innehåller, och skickar ingenting.';

  @override
  String get guardBreathe => 'Andas in… och ut';

  @override
  String get guardQuestion => 'Behöver du den här appen nu?';

  @override
  String get guardBackToFocus => 'Tillbaka till fokus';

  @override
  String get guardOpenFive => 'Öppna i 5 minuter';

  @override
  String get guardStrictBody => 'Appen är pausad tills din fokustid är slut.';

  @override
  String get guardShortsClosed => 'Korta videor stängs medan skyddet är på';

  @override
  String get faqGuardQ => 'Hur stoppar jag distraherande appar när jag fokuserar?';

  @override
  String get faqGuardA =>
      'Öppna Fokus → timerinställningarna → Distraktionsskydd. Välj apparna och sedan Mild (5 sekunders andning och frågan \"Behöver du den här appen nu?\") eller Strikt (de förblir stängda). Det fungerar under fokussessioner och, med Tidsskydd, på de dagar och tider du anger. \"Tillåt bara valda appar\" pausar allt annat; samtal, inställningar och tangentbordet fungerar alltid. Android ber dig en gång att slå på skyddet i tillgänglighetsinställningarna. Det ser bara vilken app som är öppen och skickar ingenting.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Flyttad till $name';
  }

  @override
  String get notesDragHint => 'Håll i en anteckning och dra den till en anteckningsbok';

  @override
  String get guardReviewCards => 'Repetera kort i stället';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort väntar på dig',
      one: '1 kort väntar på dig',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Nödläge: håll in i 10 sekunder';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Fortsätt hålla… $n';
  }

  @override
  String get guardWeekTitle => 'Den här veckan';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauser',
      one: '1 paus',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tillbaka till fokus $count gånger',
      one: 'tillbaka till fokus en gång',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Byt namn på ord';

  @override
  String get wordsSubtitle => 'Använd ditt eget ord för vilken text som helst i appen';

  @override
  String get wordsHint =>
      'Tryck på en text för att ändra den. Dina ord gäller bara det här språket och sparas i säkerhetskopior.';

  @override
  String get wordsSearch => 'Sök texter';

  @override
  String get wordsChangedOnly => 'Bara ändrade';

  @override
  String wordsOriginal(String text) {
    return 'Original: $text';
  }

  @override
  String get wordsReset => 'Använd originalet';

  @override
  String get wordsResetAll => 'Återställ alla ord';

  @override
  String get wordsResetAllConfirm => 'Alla texter på det här språket går tillbaka till originalet.';

  @override
  String get wordsNone => 'Ingen text hittades';

  @override
  String get settingsLanguageSearch => 'Sök språk';

  @override
  String get settingsLanguageNoMatch => 'Inget språk matchar';

  @override
  String get soundsMyMusic => 'Ditt ljud';

  @override
  String get soundsMusicHint =>
      'Spela upp en ljudfil från telefonen. Inget kopieras eller laddas upp.';

  @override
  String get soundsChooseMusic => 'Välj ljud';

  @override
  String get soundsRemoveMusic => 'Ta bort ljud';

  @override
  String get wordPacksTitle => 'Lär dig språk';

  @override
  String get wordPacksHint =>
      'Ordlistor efter ämne. Ladda bara ned språket du vill ha och redigera eller ta bort korten fritt.';

  @override
  String get wordPacksFailed => 'Det gick inte att ladda ned. Kontrollera anslutningen.';

  @override
  String get wordPacksEmpty => 'Orden för det här språket förbereds fortfarande.';
}
