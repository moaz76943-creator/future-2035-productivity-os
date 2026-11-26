// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Hjem';

  @override
  String get navTasks => 'Opgaver';

  @override
  String get navFocus => 'Fokus';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get navSpaces => 'Rum';

  @override
  String get moduleProjects => 'Projekter';

  @override
  String get moduleNotes => 'Noter';

  @override
  String get moduleFlashcards => 'Kort';

  @override
  String get moduleGoals => 'Mål';

  @override
  String get moduleHabits => 'Vaner';

  @override
  String get moduleAnalytics => 'Indsigt';

  @override
  String get moduleSearch => 'Søg';

  @override
  String get moduleAssistant => 'Assistent';

  @override
  String get moduleSettings => 'Indstillinger';

  @override
  String get moduleTrash => 'Papirkurv';

  @override
  String get actionSave => 'Gem';

  @override
  String get actionCancel => 'Annuller';

  @override
  String get actionDelete => 'Slet';

  @override
  String get actionEdit => 'Rediger';

  @override
  String get actionDone => 'Færdig';

  @override
  String get actionAdd => 'Tilføj';

  @override
  String get actionCreate => 'Opret';

  @override
  String get actionClose => 'Luk';

  @override
  String get actionBack => 'Tilbage';

  @override
  String get actionUndo => 'Fortryd';

  @override
  String get actionRestore => 'Gendan';

  @override
  String get actionRetry => 'Prøv igen';

  @override
  String get actionContinue => 'Fortsæt';

  @override
  String get actionSkip => 'Spring over';

  @override
  String get actionArchive => 'Arkivér';

  @override
  String get actionUnarchive => 'Tag ud af arkivet';

  @override
  String get actionPin => 'Fastgør';

  @override
  String get actionUnpin => 'Frigør';

  @override
  String get actionMore => 'Flere muligheder';

  @override
  String get actionClear => 'Ryd';

  @override
  String get actionSearch => 'Søg';

  @override
  String get actionSort => 'Sortér';

  @override
  String get actionShare => 'Del';

  @override
  String get actionImport => 'Importér';

  @override
  String get actionExport => 'Eksportér';

  @override
  String get actionPause => 'Pause';

  @override
  String get actionResume => 'Genoptag';

  @override
  String get actionStart => 'Start';

  @override
  String get actionStop => 'Stop';

  @override
  String get actionComplete => 'Fuldfør';

  @override
  String get actionDeleteForever => 'Slet permanent';

  @override
  String get actionEmptyTrash => 'Tøm papirkurven';

  @override
  String get actionUnlink => 'Fjern tilknytning';

  @override
  String get actionCustomize => 'Tilpas';

  @override
  String get actionPreview => 'Forhåndsvisning';

  @override
  String get actionLog => 'Registrér fremskridt';

  @override
  String get stateLoading => 'Indlæser…';

  @override
  String get stateSaving => 'Gemmer…';

  @override
  String get stateSaved => 'Gemt';

  @override
  String get stateUnsaved => 'Ændringer ikke gemt';

  @override
  String get errorGenericTitle => 'Noget gik galt';

  @override
  String get errorGenericMessage => 'Dine data er i sikkerhed. Prøv igen.';

  @override
  String get errorLoadFailed => 'Indholdet kunne ikke indlæses.';

  @override
  String get errorSaveFailed => 'Kunne ikke gemme. Dine ændringer er der stadig.';

  @override
  String get validationRequired => 'Feltet skal udfyldes';

  @override
  String get validationTitleRequired => 'Skriv en titel';

  @override
  String get validationNameRequired => 'Skriv et navn';

  @override
  String get validationTooLong => 'Det er for langt';

  @override
  String get validationEndBeforeStart => 'Slutningen skal ligge efter starten';

  @override
  String get validationStartAfterDue => 'Startdatoen skal ligge før forfaldsdatoen';

  @override
  String get validationPositiveNumber => 'Skriv et tal større end nul';

  @override
  String get validationDependencyCycle => 'Det ville skabe en cirkulær afhængighed';

  @override
  String get validationInvalidRepeat => 'Gentagelsesreglen er ugyldig';

  @override
  String get deletedItem => 'Flyttet til papirkurven';

  @override
  String get untitled => 'Uden titel';

  @override
  String get noProject => 'Intet projekt';

  @override
  String get greetingMorning => 'Godmorgen';

  @override
  String get greetingAfternoon => 'God eftermiddag';

  @override
  String get greetingEvening => 'Godaften';

  @override
  String get dashFocusToday => 'Dagens fokus';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done af $target';
  }

  @override
  String get dashStartFocus => 'Start fokus';

  @override
  String get dashFocusRunning => 'Session i gang';

  @override
  String get dashTodayTasks => 'Forfalder i dag';

  @override
  String get dashAgenda => 'Program';

  @override
  String get dashHabits => 'Vaner i dag';

  @override
  String get dashGoals => 'Mål';

  @override
  String get dashReview => 'Repetition';

  @override
  String get dashRecentNotes => 'Seneste noter';

  @override
  String get dashInsight => 'Forslag';

  @override
  String get dashSeeAll => 'Se alle';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort at repetere',
      one: '1 kort at repetere',
      zero: 'Ingen kort at repetere',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Repetér nu';

  @override
  String get dashCustomizeTitle => 'Dele af oversigten';

  @override
  String get dashCustomizeHint => 'Vælg, hvad der vises på din startskærm.';

  @override
  String get dashSectionFocus => 'Fokus';

  @override
  String get dashSectionToday => 'Opgaver i dag';

  @override
  String get dashSectionAgenda => 'Program';

  @override
  String get dashSectionHabits => 'Vaner';

  @override
  String get dashSectionGoals => 'Mål';

  @override
  String get dashSectionReview => 'Repetition af kort';

  @override
  String get dashSectionNotes => 'Seneste noter';

  @override
  String get dashSectionInsight => 'Forslag';

  @override
  String get quickAddTask => 'Ny opgave';

  @override
  String get quickAddNote => 'Ny note';

  @override
  String get quickAddEvent => 'Ny begivenhed';

  @override
  String get quickStartFocus => 'Fokus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Du har $count overskredne opgaver. Begynd med den vigtigste.',
      one: 'Du har 1 overskredet opgave. Flyt den, eller gør den færdig først.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Du mangler $minutes minutter i dit daglige fokusmål.';
  }

  @override
  String get insightCardsDue => 'Repetér dine kort nu, mens de stadig er friske.';

  @override
  String get insightAllClear =>
      'Alt kører efter planen. Planlæg i morgen, eller tag en rolig pause.';

  @override
  String insightHabitStreak(String habit) {
    return 'Hold din stime: $habit er stadig åben i dag.';
  }

  @override
  String get focusTitle => 'Fokus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Nedtælling';

  @override
  String get focusModeCountUp => 'Stopur';

  @override
  String get focusModeOpen => 'Fri';

  @override
  String get focusPhaseWork => 'Fokus';

  @override
  String get focusPhaseShortBreak => 'Kort pause';

  @override
  String get focusPhaseLongBreak => 'Lang pause';

  @override
  String get focusReady => 'Klar, når du er';

  @override
  String get focusPaused => 'På pause';

  @override
  String get focusRunning => 'Fokuseret';

  @override
  String get focusDuration => 'Varighed';

  @override
  String get focusLinkTask => 'Tilknyt en opgave';

  @override
  String get focusLinkedTask => 'Arbejder på';

  @override
  String get focusNoTask => 'Ingen opgave tilknyttet';

  @override
  String focusCycle(int current, int total) {
    return 'Runde $current af $total';
  }

  @override
  String get focusSkipBreak => 'Spring pausen over';

  @override
  String get focusStartBreak => 'Start pause';

  @override
  String get focusStartNext => 'Start næste fokus';

  @override
  String get focusSessionComplete => 'Session fuldført';

  @override
  String get focusSessionStopped => 'Session gemt';

  @override
  String focusSessionSummary(String duration) {
    return 'Du var fokuseret i $duration.';
  }

  @override
  String get focusAddNote => 'Tilføj en note om sessionen';

  @override
  String get focusHistory => 'Historik';

  @override
  String get focusNoHistory => 'Fuldførte sessioner vises her';

  @override
  String get focusTargets => 'Mål';

  @override
  String get focusDailyTarget => 'Dagligt mål';

  @override
  String get focusWeeklyTarget => 'Ugentligt mål';

  @override
  String get focusOutcomeCompleted => 'Fuldført';

  @override
  String get focusOutcomeInterrupted => 'Stoppet før tid';

  @override
  String get focusRecovered => 'Din session fortsatte, mens appen var lukket.';

  @override
  String get focusCompletedWhileAway =>
      'En session sluttede, mens appen var lukket, og er blevet gemt.';

  @override
  String get focusNotificationsOff =>
      'Notifikationer er slået fra. Du får ingen besked, når en session slutter.';

  @override
  String get focusBatteryHint =>
      'Nogle enheder sætter apps på pause i baggrunden. Timeren er stadig præcis, men beskeder kan blive forsinket. Tillad ubegrænset batteriforbrug for pålidelige beskeder.';

  @override
  String get focusOpenSettings => 'Åbn indstillinger';

  @override
  String get focusStopConfirmTitle => 'Stop sessionen?';

  @override
  String get focusStopConfirmMessage => 'Den tid, du har været fokuseret indtil nu, bliver gemt.';

  @override
  String get focusDiscard => 'Kassér';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutter',
      one: '1 minut',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time tilbage';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time gået';
  }

  @override
  String get focusDeleteSession => 'Slet session';

  @override
  String get tasksTitle => 'Opgaver';

  @override
  String get tasksViewToday => 'I dag';

  @override
  String get tasksViewUpcoming => 'Kommende';

  @override
  String get tasksViewAll => 'Alle';

  @override
  String get tasksViewOverdue => 'Overskredne';

  @override
  String get tasksViewCompleted => 'Fuldførte';

  @override
  String get tasksQuickAddHint => 'Tilføj en opgave…';

  @override
  String get tasksEmptyTitle => 'Alt er klaret';

  @override
  String get tasksEmptyMessage => 'Tilføj en opgave, og giv din dag form.';

  @override
  String get tasksEmptyCompleted => 'Fuldførte opgaver vises her.';

  @override
  String get taskNew => 'Ny opgave';

  @override
  String get taskEdit => 'Rediger opgave';

  @override
  String get taskTitleLabel => 'Titel';

  @override
  String get taskTitleHint => 'Hvad skal gøres?';

  @override
  String get taskDescriptionLabel => 'Beskrivelse';

  @override
  String get taskNotesLabel => 'Noter';

  @override
  String get taskPriority => 'Prioritet';

  @override
  String get priorityNone => 'Ingen';

  @override
  String get priorityLow => 'Lav';

  @override
  String get priorityMedium => 'Mellem';

  @override
  String get priorityHigh => 'Høj';

  @override
  String get priorityUrgent => 'Haster';

  @override
  String get taskDueDate => 'Forfaldsdato';

  @override
  String get taskStartDate => 'Startdato';

  @override
  String get taskReminder => 'Påmindelse';

  @override
  String get taskRepeat => 'Gentag';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategori';

  @override
  String get taskCategoryHint => 'fx Arbejde, Hjem, Studie';

  @override
  String get taskEstimateMinutes => 'Estimat (minutter)';

  @override
  String get taskTracked => 'Målt fokus';

  @override
  String get taskLabels => 'Etiketter';

  @override
  String get taskAddLabel => 'Ny etiket';

  @override
  String get taskChecklist => 'Tjekliste';

  @override
  String get taskAddChecklistItem => 'Tilføj et punkt';

  @override
  String get taskSubtasks => 'Delopgaver';

  @override
  String get taskAddSubtask => 'Tilføj en delopgave';

  @override
  String get taskDependencies => 'Blokeret af';

  @override
  String get taskAddDependency => 'Tilføj en blokerende opgave';

  @override
  String get taskLinkedNotes => 'Tilknyttede noter';

  @override
  String get taskSetTime => 'Angiv tidspunkt';

  @override
  String get taskNoDate => 'Ingen dato';

  @override
  String get taskCompleted => 'Opgave fuldført';

  @override
  String get taskNextOccurrence => 'Næste gang er oprettet';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dage over tiden',
      one: '1 dag over tiden',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Markér \"$title\" som færdig';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Markér \"$title\" som ikke færdig';
  }

  @override
  String get sortSmart => 'Smart';

  @override
  String get sortDueDate => 'Forfaldsdato';

  @override
  String get sortPriority => 'Prioritet';

  @override
  String get sortCreated => 'Nyeste';

  @override
  String get sortTitle => 'Titel';

  @override
  String get filterAllProjects => 'Alle projekter';

  @override
  String get filterAnyPriority => 'Alle prioriteter';

  @override
  String get filterTitle => 'Filtrér og sortér';

  @override
  String get dateToday => 'I dag';

  @override
  String get dateTomorrow => 'I morgen';

  @override
  String get dateYesterday => 'I går';

  @override
  String get repeatNever => 'Gentages ikke';

  @override
  String get repeatDaily => 'Hver dag';

  @override
  String get repeatWeekdays => 'Hver hverdag';

  @override
  String get repeatWeekly => 'Hver uge';

  @override
  String get repeatMonthly => 'Hver måned';

  @override
  String get repeatYearly => 'Hvert år';

  @override
  String get repeatCustom => 'Tilpasset';

  @override
  String get repeatEvery => 'Gentag hver';

  @override
  String get repeatOnDays => 'På dagene';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'dage', one: 'dag');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'uger', one: 'uge');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'måneder',
      one: 'måned',
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
      other: '$count gange',
      one: '1 gang',
    );
    return 'Slutter efter $_temp0';
  }

  @override
  String get repeatEndsNever => 'Slutter aldrig';

  @override
  String get reminderAtTime => 'På tidspunktet';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutter før',
      one: '1 minut før',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours timer før',
      one: '1 time før',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 dag før';

  @override
  String get projectsTitle => 'Projekter';

  @override
  String get projectsEmptyTitle => 'Ingen projekter endnu';

  @override
  String get projectsEmptyMessage => 'Saml opgaver, noter og fokustid, der hører sammen.';

  @override
  String get projectNew => 'Nyt projekt';

  @override
  String get projectEdit => 'Rediger projekt';

  @override
  String get projectName => 'Navn';

  @override
  String get projectDescription => 'Beskrivelse';

  @override
  String get projectGoal => 'Formål';

  @override
  String get projectDeadline => 'Deadline';

  @override
  String get projectColor => 'Farve';

  @override
  String get projectIcon => 'Ikon';

  @override
  String get projectProgress => 'Fremskridt';

  @override
  String projectTasksDone(int done, int total) {
    return '$done af $total opgaver færdige';
  }

  @override
  String get projectFocusTime => 'Fokustid';

  @override
  String get projectArchived => 'Arkiverede projekter';

  @override
  String get projectShowArchived => 'Vis arkiverede';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dage tilbage',
      one: '1 dag tilbage',
      zero: 'Forfalder i dag',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Deadline overskredet';

  @override
  String get calendarTitle => 'Kalender';

  @override
  String get calendarMonth => 'Måned';

  @override
  String get calendarWeek => 'Uge';

  @override
  String get calendarDay => 'Dag';

  @override
  String get calendarToday => 'I dag';

  @override
  String get calendarPrevious => 'Forrige';

  @override
  String get calendarNext => 'Næste';

  @override
  String get calendarNoEvents => 'Intet planlagt';

  @override
  String get calendarAllDay => 'Hele dagen';

  @override
  String get eventNew => 'Ny begivenhed';

  @override
  String get eventEdit => 'Rediger begivenhed';

  @override
  String get eventTitleHint => 'Begivenhedens titel';

  @override
  String get eventStarts => 'Starter';

  @override
  String get eventEnds => 'Slutter';

  @override
  String get eventKind => 'Type';

  @override
  String get eventKindEvent => 'Begivenhed';

  @override
  String get eventKindTimeBlock => 'Tidsblok';

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
      other: 'Overlapper med $count begivenheder',
      one: 'Overlapper med 1 begivenhed',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Planlægningskonflikter denne dag';

  @override
  String get calendarTaskDue => 'Opgave forfalder';

  @override
  String get calendarDragHint => 'Hold en begivenhed nede, og træk den for at flytte den';

  @override
  String get calendarRescheduled => 'Begivenhed flyttet';

  @override
  String get calendarScheduleTask => 'Planlæg som tidsblok';

  @override
  String get notesTitle => 'Noter';

  @override
  String get notesViewAll => 'Alle';

  @override
  String get notesViewPinned => 'Fastgjorte';

  @override
  String get notesViewFavorites => 'Favoritter';

  @override
  String get notesViewArchived => 'Arkiverede';

  @override
  String get notesTags => 'Tags';

  @override
  String get notesNewNotebook => 'Ny notesbog';

  @override
  String get notesNoNotebook => 'Ingen notesbog';

  @override
  String get notesEmptyTitle => 'Et blankt ark';

  @override
  String get notesEmptyMessage => 'Gem idéer, mødenoter og viden.';

  @override
  String get noteTitleHint => 'Titel';

  @override
  String get noteBodyHint => 'Begynd at skrive… Brug # til tags og [[Titel]] til at linke noter.';

  @override
  String get noteFavorite => 'Favorit';

  @override
  String get noteUnfavorite => 'Fjern fra favoritter';

  @override
  String get noteMoveTo => 'Flyt til notesbog';

  @override
  String get noteBacklinks => 'Linket fra';

  @override
  String get noteLinkedTasks => 'Tilknyttede opgaver';

  @override
  String get noteLinkTask => 'Tilknyt en opgave';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Overskrift';

  @override
  String get noteFormatBold => 'Fed';

  @override
  String get noteFormatItalic => 'Kursiv';

  @override
  String get noteFormatList => 'Punktopstilling';

  @override
  String get noteFormatChecklist => 'Tjekliste';

  @override
  String get noteFormatLink => 'Link';

  @override
  String noteEdited(String time) {
    return 'Redigeret $time';
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
  String get flashEmptyTitle => 'Lav dit første kortsæt';

  @override
  String get flashEmptyMessage =>
      'Spaced repetition viser hvert kort, lige før du ville glemme det.';

  @override
  String get deckNew => 'Nyt kortsæt';

  @override
  String get deckEdit => 'Rediger kortsæt';

  @override
  String get deckName => 'Kortsættets navn';

  @override
  String get deckDescription => 'Beskrivelse';

  @override
  String get deckDailyNew => 'Nye kort pr. dag';

  @override
  String get deckDailyReview => 'Dagligt repetitionsmål';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort',
      one: '1 kort',
      zero: 'Ingen kort',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Til repetition';

  @override
  String get deckNewCards => 'Nye';

  @override
  String get deckMature => 'Lærte';

  @override
  String get deckStudy => 'Studér';

  @override
  String get deckNothingDue => 'Intet at repetere lige nu. Kom tilbage senere.';

  @override
  String get deckEmptyCards => 'Tilføj kort for at begynde at lære.';

  @override
  String get cardNew => 'Nyt kort';

  @override
  String get cardEdit => 'Rediger kort';

  @override
  String get cardFront => 'Forside';

  @override
  String get cardBack => 'Bagside';

  @override
  String get cardFrontHint => 'Spørgsmål eller begreb';

  @override
  String get cardBackHint => 'Svar eller definition';

  @override
  String get cardTags => 'Tags';

  @override
  String get cardAddAnother => 'Gem, og tilføj et til';

  @override
  String get reviewShowAnswer => 'Vis svar';

  @override
  String get reviewAgain => 'Igen';

  @override
  String get reviewHard => 'Svært';

  @override
  String get reviewGood => 'Godt';

  @override
  String get reviewEasy => 'Let';

  @override
  String reviewProgress(int done, int total) {
    return '$done af $total';
  }

  @override
  String get reviewFinishedTitle => 'Session fuldført';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Du repeterede $count kort.',
      one: 'Du repeterede 1 kort.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Tryk for at se svaret';

  @override
  String get importCardsTitle => 'Importér kort';

  @override
  String get importCardsHint =>
      'Indsæt ét kort pr. linje (forside og bagside adskilt af tabulator eller semikolon), eller vælg en fil: Excel (.xlsx), CSV, et Anki-kortsæt (.apkg) eller et eksporteret kortsæt.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort importeret',
      one: '1 kort importeret',
      zero: 'Ingen kort importeret',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Indholdet kunne ikke importeres.';

  @override
  String get exportCopied => 'Kortsæt eksporteret';

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
      other: '$count dage',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Mål';

  @override
  String get goalsEmptyTitle => 'Sigt efter noget';

  @override
  String get goalsEmptyMessage =>
      'Sæt mål for dagen, ugen, måneden eller på lang sigt, og følg dine reelle fremskridt.';

  @override
  String get goalNew => 'Nyt mål';

  @override
  String get goalEdit => 'Rediger mål';

  @override
  String get goalTitleHint => 'Hvad vil du opnå?';

  @override
  String get goalPeriod => 'Periode';

  @override
  String get goalPeriodDaily => 'Dagligt';

  @override
  String get goalPeriodWeekly => 'Ugentligt';

  @override
  String get goalPeriodMonthly => 'Månedligt';

  @override
  String get goalPeriodLongTerm => 'Langsigtet';

  @override
  String get goalTarget => 'Målværdi';

  @override
  String get goalUnit => 'Enhed';

  @override
  String get goalUnitHint => 'fx sider, km, timer';

  @override
  String get goalStatusActive => 'Aktivt';

  @override
  String get goalStatusPaused => 'På pause';

  @override
  String get goalStatusAchieved => 'Opnået';

  @override
  String get goalPause => 'Sæt målet på pause';

  @override
  String get goalResume => 'Genoptag målet';

  @override
  String get goalMarkAchieved => 'Markér som opnået';

  @override
  String goalProgressOf(String current, String target) {
    return '$current af $target';
  }

  @override
  String get goalLogAmount => 'Mængde';

  @override
  String get goalLogNote => 'Note (valgfri)';

  @override
  String get goalHistory => 'Historik';

  @override
  String get goalNoHistory => 'Registrerede fremskridt vises her';

  @override
  String get goalLinkedTasks => 'Tilknyttede opgaver';

  @override
  String get goalLinkedTasksHint => 'Hver fuldført tilknyttet opgave tæller som 1 mod dette mål.';

  @override
  String get goalThisPeriod => 'Denne periode';

  @override
  String get habitsTitle => 'Vaner';

  @override
  String get habitsEmptyTitle => 'Små skridt hver dag';

  @override
  String get habitsEmptyMessage => 'Opret en vane, og sæt flueben, når du gør den.';

  @override
  String get habitNew => 'Ny vane';

  @override
  String get habitEdit => 'Rediger vane';

  @override
  String get habitNameHint => 'fx Læs 20 sider';

  @override
  String get habitDays => 'Plan';

  @override
  String get habitEveryDay => 'Hver dag';

  @override
  String get habitTargetPerDay => 'Gange om dagen';

  @override
  String get habitReminder => 'Daglig påmindelse';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage i træk',
      one: '1 dag i træk',
      zero: 'Ingen stime',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Længste stime';

  @override
  String get habitCurrentStreak => 'Nuværende stime';

  @override
  String get habitConsistency => 'Regelmæssighed';

  @override
  String get habitLast90 => 'Seneste 90 dage';

  @override
  String get habitPaused => 'På pause';

  @override
  String get habitPause => 'Sæt vanen på pause';

  @override
  String get habitResume => 'Genoptag vanen';

  @override
  String get habitDoneToday => 'Udført i dag';

  @override
  String habitCountToday(int count, int target) {
    return '$count af $target i dag';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Sæt flueben ved \"$name\"';
  }

  @override
  String get habitNotScheduledToday => 'Ikke planlagt i dag';

  @override
  String get analyticsTitle => 'Indsigt';

  @override
  String get rangeWeek => '7 dage';

  @override
  String get rangeMonth => '30 dage';

  @override
  String get rangeQuarter => '90 dage';

  @override
  String get statFocusTime => 'Fokustid';

  @override
  String get statSessions => 'Sessioner';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed fuldført · $interrupted stoppet før tid';
  }

  @override
  String get statTasksDone => 'Fuldførte opgaver';

  @override
  String get statCompletionRate => 'Fuldført til tiden';

  @override
  String get statHabitConsistency => 'Regelmæssighed i vaner';

  @override
  String get statRetention => 'Huskede kort';

  @override
  String get statReviews => 'Repetitioner';

  @override
  String get statActiveGoals => 'Aktive mål';

  @override
  String get statEstimated => 'Anslået udført arbejde';

  @override
  String get statEstimatedNote => 'Baseret på dine estimater, ikke målt tid';

  @override
  String get statMeasuredNote => 'Målt ud fra fokussessioner';

  @override
  String get chartFocusByDay => 'Fokusminutter pr. dag';

  @override
  String get chartTasksByDay => 'Fuldførte opgaver pr. dag';

  @override
  String get chartTimeByProject => 'Tid pr. projekt';

  @override
  String get chartProjectProgress => 'Fremskridt pr. projekt';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: i alt $total, bedste dag $best';
  }

  @override
  String get analyticsNoData => 'Ikke nok data endnu';

  @override
  String get analyticsUnassigned => 'Uden projekt';

  @override
  String get searchHint => 'Søg i alt…';

  @override
  String get searchRecent => 'Seneste søgninger';

  @override
  String get searchClearRecent => 'Ryd seneste søgninger';

  @override
  String searchNoResults(String query) {
    return 'Ingen resultater for \"$query\"';
  }

  @override
  String get searchStartTyping =>
      'Søg i opgaver, noter, kort, mål, begivenheder og mere. Søgningen bliver på enheden.';

  @override
  String get searchCatTask => 'Opgaver';

  @override
  String get searchCatProject => 'Projekter';

  @override
  String get searchCatNote => 'Noter';

  @override
  String get searchCatFlashcard => 'Kort';

  @override
  String get searchCatDeck => 'Kortsæt';

  @override
  String get searchCatGoal => 'Mål';

  @override
  String get searchCatHabit => 'Vaner';

  @override
  String get searchCatEvent => 'Begivenheder';

  @override
  String get searchCatSession => 'Sessioner';

  @override
  String get searchAll => 'Alle';

  @override
  String get assistantTitle => 'Assistent';

  @override
  String get assistantIntro =>
      'Planlægningshjælp, der kører på din enhed. Tilknyt eventuelt en AI-tjeneste efter eget valg til resuméer og generering.';

  @override
  String get assistantOnDevice => 'På enheden';

  @override
  String get assistantCloud => 'AI-tjeneste';

  @override
  String get assistantPlanDay => 'Planlæg min dag';

  @override
  String get assistantPlanDayDesc =>
      'Sorterer åbne opgaver efter hast, prioritet og estimat og passer dem ind omkring dine begivenheder.';

  @override
  String get assistantExtractTasks => 'Hent opgaver fra en note';

  @override
  String get assistantExtractTasksDesc =>
      'Finder tjeklistepunkter og handlingslinjer i en note og laver dem om til opgaver.';

  @override
  String get assistantMakeCards => 'Lav kort ud fra en note';

  @override
  String get assistantMakeCardsDesc =>
      'Laver kort ud af linjer som \"begreb: definition\" og spørgsmål/svar-linjer.';

  @override
  String get assistantSummarize => 'Lav et resumé af en note';

  @override
  String get assistantSummarizeDesc =>
      'Kræver en AI-tjeneste. Noten sendes først, når du har bekræftet.';

  @override
  String get assistantWorkload => 'Overblik over arbejdsmængden';

  @override
  String get assistantWorkloadDesc => 'Sammenligner anslået arbejde med din fritid denne uge.';

  @override
  String get assistantPlanEmpty => 'Ingen åbne opgaver at planlægge. Nyd luften.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Fri fokustid i dag: $time';
  }

  @override
  String get assistantPlanOverflow => 'Det her når du måske ikke i dag:';

  @override
  String get assistantChooseNote => 'Vælg en note';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opgaver fundet',
      one: '1 opgave fundet',
      zero: 'Ingen opgaver fundet i noten',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort fundet',
      one: '1 kort fundet',
      zero: 'Ingen kort fundet i noten',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Vælg et kortsæt';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Anslået arbejde: $estimated. Fri tid: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Du har planlagt mere, end der er tid til. Overvej at flytte opgaver med lavere prioritet.';

  @override
  String get assistantWorkloadOk => 'Din plan passer ind i den tid, du har.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count åbne opgaver har intet estimat.',
      one: '1 åben opgave har intet estimat.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI-tjeneste';

  @override
  String get assistantProviderOff =>
      'Ingen tjeneste tilknyttet. Værktøjerne på enheden virker stadig.';

  @override
  String assistantProviderOn(String host) {
    return 'Forbundet til $host';
  }

  @override
  String get assistantEndpoint => 'API-adresse (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'API-nøgle';

  @override
  String get assistantApiKeyStored => 'Gemt sikkert på enheden';

  @override
  String get assistantHttpsOnly => 'Kun HTTPS-adresser er tilladt';

  @override
  String get assistantConsentTitle => 'Send indholdet til din AI-tjeneste?';

  @override
  String assistantConsentBody(String host) {
    return 'Den valgte notetekst forlader enheden og behandles af $host. Intet andet sendes.';
  }

  @override
  String get assistantConsentAlways => 'Spørg ikke igen for denne tjeneste';

  @override
  String get assistantSend => 'Send';

  @override
  String get assistantUnavailable => 'AI-tjenesten kunne ikke nås. Prøv igen senere.';

  @override
  String get assistantDisabledTitle => 'Assistenten er slået fra';

  @override
  String get assistantDisabledMessage =>
      'Slå den til for at bruge planlægningsværktøjerne. Ingen data forlader din enhed, medmindre du tilknytter en tjeneste og bekræfter hver forespørgsel.';

  @override
  String get assistantSummaryTitle => 'Resumé';

  @override
  String get assistantRemoveProvider => 'Fjern tjenesten';

  @override
  String get settingsTitle => 'Indstillinger';

  @override
  String get settingsGeneral => 'Generelt';

  @override
  String get settingsLanguage => 'Sprog';

  @override
  String get settingsLanguageSystem => 'Enhedens sprog';

  @override
  String get settingsAppearance => 'Udseende';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Lyst';

  @override
  String get themeDark => 'Mørkt';

  @override
  String get themeSystem => 'System';

  @override
  String get settingsReduceMotion => 'Reducer bevægelse';

  @override
  String get settingsReduceMotionDesc => 'Færre animationer og bevægelige baggrunde';

  @override
  String get settingsFocus => 'Fokustimer';

  @override
  String get settingsWorkLength => 'Fokuslængde';

  @override
  String get settingsShortBreak => 'Kort pause';

  @override
  String get settingsLongBreak => 'Lang pause';

  @override
  String get settingsLongBreakEvery => 'Lang pause efter';

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
  String get settingsAutoBreaks => 'Start pauser automatisk';

  @override
  String get settingsSound => 'Lyd ved afslutning';

  @override
  String get settingsDailyFocusTarget => 'Dagligt fokusmål';

  @override
  String get settingsWeeklyFocusTarget => 'Ugentligt fokusmål';

  @override
  String get settingsNotifications => 'Notifikationer';

  @override
  String get settingsNotificationsEnable => 'Tillad påmindelser';

  @override
  String get settingsQuietHours => 'Stille timer';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Påmindelser om vaner, mål og repetition er slået fra fra $start til $end';
  }

  @override
  String get settingsReviewReminder => 'Påmindelse om repetition af kort';

  @override
  String get settingsPermissionDenied => 'Notifikationer er blokeret i systemindstillingerne.';

  @override
  String get settingsPrivacy => 'Privatliv og data';

  @override
  String get settingsPrivacyStatement =>
      'Dine data gemmes kun på denne enhed og er krypterede. Ingen konto, ingen analyse og ingen sporing.';

  @override
  String get settingsBackup => 'Lav krypteret backup';

  @override
  String get settingsBackupDesc => 'Beskyttet med en adgangskode, du selv vælger';

  @override
  String get settingsRestore => 'Gendan fra backup';

  @override
  String get settingsRestoreDesc => 'Erstatter alle data på enheden';

  @override
  String get settingsErase => 'Slet alle data';

  @override
  String get settingsEraseDesc => 'Slet alt på enheden permanent';

  @override
  String get settingsEraseConfirmTitle => 'Slet alle data?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Alle opgaver, noter, kort, mål, vaner, begivenheder og sessioner slettes permanent. Skriv $word for at bekræfte.';
  }

  @override
  String get settingsEraseWord => 'SLET';

  @override
  String get settingsErased => 'Alle data er slettet';

  @override
  String get backupPassword => 'Adgangskode til backup';

  @override
  String get backupPasswordConfirm => 'Bekræft adgangskoden';

  @override
  String backupPasswordHint(int count) {
    return 'Mindst $count tegn. Den kan ikke gendannes, hvis du mister den.';
  }

  @override
  String get backupPasswordMismatch => 'Adgangskoderne er ikke ens';

  @override
  String get backupPasswordShort => 'Adgangskoden er for kort';

  @override
  String get backupCreating => 'Krypterer backup…';

  @override
  String get backupCreated => 'Backup klar til at blive gemt';

  @override
  String get backupRestoring => 'Kontrollerer og gendanner…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementer gendannet',
      one: '1 element gendannet',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Forkert adgangskode, eller filen er blevet ændret.';

  @override
  String get backupNotABackup => 'Filen er ikke en backup fra Deep Focus.';

  @override
  String get backupCorrupted => 'Backupfilen er beskadiget.';

  @override
  String get backupNewer => 'Denne backup er lavet med en nyere version af appen. Opdater først.';

  @override
  String get backupRestoreConfirmTitle => 'Erstat alle data?';

  @override
  String get backupRestoreConfirmBody =>
      'Alt, der er på enheden nu, bliver erstattet af backuppen. Hvis gendannelsen mislykkes, ændres intet.';

  @override
  String get settingsAbout => 'Om';

  @override
  String settingsVersion(String version) {
    return 'Version $version';
  }

  @override
  String get settingsLicenses => 'Open source-licenser';

  @override
  String get settingsAssistant => 'Assistent';

  @override
  String get settingsAssistantEnable => 'Slå assistenten til';

  @override
  String get settingsDashboard => 'Dele af startsiden';

  @override
  String get settingsTrash => 'Papirkurv';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Papirkurven er tom';

  @override
  String get trashHint => 'Slettede elementer bliver her, indtil du fjerner dem.';

  @override
  String get trashTasks => 'Opgaver';

  @override
  String get trashNotes => 'Noter';

  @override
  String get onboardWelcomeTitle => 'Velkommen til dit nye arbejdsrum';

  @override
  String get onboardWelcomeBody =>
      'Opgaver, fokus, kalender, noter, kort, mål og vaner – samlet og smukt enkelt.';

  @override
  String get onboardPrivateTitle => 'Privat fra starten';

  @override
  String get onboardPrivateBody =>
      'Alt bliver krypteret på enheden. Ingen konto. Ingen sporing. Du bestemmer.';

  @override
  String get onboardLanguageTitle => 'Vælg dit sprog';

  @override
  String get onboardNotifTitle => 'Venlige påmindelser';

  @override
  String get onboardNotifBody =>
      'Tillad notifikationer til opgavepåmindelser og fokusbeskeder. Du kan altid ændre det.';

  @override
  String get onboardGetStarted => 'Kom i gang';

  @override
  String onboardStep(int current, int total) {
    return 'Trin $current af $total';
  }

  @override
  String get notifChannelReminders => 'Påmindelser';

  @override
  String get notifChannelRemindersDesc => 'Påmindelser om opgaver, begivenheder, vaner og mål';

  @override
  String get notifChannelFocus => 'Fokustimer';

  @override
  String get notifChannelFocusDesc => 'Beskeder, når en fokussession eller pause slutter';

  @override
  String get notifTaskTitle => 'Opgavepåmindelse';

  @override
  String get notifEventTitle => 'Kommende begivenhed';

  @override
  String notifEventBody(String title, String time) {
    return '$title kl. $time';
  }

  @override
  String get notifFocusDoneTitle => 'Fokussession fuldført';

  @override
  String get notifFocusDoneBody => 'Godt arbejde. Tid til en pause.';

  @override
  String get notifBreakDoneTitle => 'Pausen er slut';

  @override
  String get notifBreakDoneBody => 'Klar til næste fokussession?';

  @override
  String get notifHabitTitle => 'Påmindelse om vane';

  @override
  String get notifReviewTitle => 'Dine kort er klar';

  @override
  String get notifReviewBody => 'En kort repetition holder hukommelsen stærk.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours t $minutes min';
  }

  @override
  String durationHours(int hours) {
    return '$hours t';
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
    return 'Fremskridt $value procent';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritet: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Farve $index';
  }

  @override
  String get analyticsRangeLabel => 'Tidsperiode';

  @override
  String get analyticsRefresh => 'Opdater';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done af $total forfaldne opgaver blev fuldført til tiden';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done af $total opgaver færdige';
  }

  @override
  String get analyticsNoProjects => 'Ingen aktive projekter';

  @override
  String get analyticsNoFocus => 'Ingen fokussessioner i perioden';

  @override
  String get analyticsHabitsNone => 'Ingen aktive vaner';

  @override
  String get analyticsRetentionNote => 'Andel af lærte kort, du kunne huske';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Fri tid tælles $start–$end på arbejdsdage ($days), fratrukket begivenheder med tidspunkt. Anslået arbejde er summen af estimaterne for åbne opgaver, der forfalder inden for 7 dage.';
  }

  @override
  String get assistantWorkdaysMonFri => 'mandag–fredag';

  @override
  String get assistantWorkdaysSunThu => 'søndag–torsdag';

  @override
  String get assistantWorkloadDayOff => 'Fridag';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planlagt · $free fri';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planlagt fra nu til $end, omkring dagens begivenheder. Overskredne opgaver først, derefter prioritet, forfaldsdato og estimat.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get assistantScheduleBlocks => 'Planlæg som tidsblokke';

  @override
  String get assistantScheduleConfirmTitle => 'Føj tidsblokke til din kalender?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tidsblokke bliver føjet til dagens kalender.',
      one: '1 tidsblok bliver føjet til dagens kalender.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tidsblokke tilføjet',
      one: '1 tidsblok tilføjet',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Allerede i din kalender';

  @override
  String get assistantPlanTimeline => 'Passer i dag';

  @override
  String get assistantNoEstimate => 'Tilføj et estimat for at planlægge disse';

  @override
  String get assistantNoNotes => 'Ingen noter endnu. Skriv først en note.';

  @override
  String get assistantNoteEmpty => 'Noten er tom.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opgaver oprettet',
      one: '1 opgave oprettet',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort oprettet',
      one: '1 kort oprettet',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Opret $count',
      one: 'Opret 1',
      zero: 'Intet valgt',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Genkendes: tomme afkrydsningsfelter \"- [ ]\" og linjer, der begynder med TODO: eller To do:';

  @override
  String get assistantCardsHint =>
      'Genkendes: \"begreb: definition\", \"begreb — definition\" og par af Q:/A:-linjer';

  @override
  String get assistantProviderHint =>
      'Brug en hvilken som helst OpenAI-kompatibel tjeneste. Nøglen bliver i enhedens sikre lager og kommer aldrig med i backups.';

  @override
  String get assistantEndpointHelp => 'For eksempel https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Lad feltet være tomt for at beholde den gemte nøgle';

  @override
  String get assistantApiKeyRequired => 'Skriv en API-nøgle';

  @override
  String get assistantProviderSaved => 'Tjenesten er gemt';

  @override
  String get assistantProviderRemoved => 'Tjenesten er fjernet, og nøglen er slettet';

  @override
  String get assistantRemoveProviderConfirm =>
      'Fjern tjenesten, og slet den gemte API-nøgle fra enheden?';

  @override
  String get assistantAskEveryTime => 'Spørg før hver forespørgsel';

  @override
  String get assistantSummarizing => 'Laver resumé…';

  @override
  String assistantSummaryNote(String host) {
    return 'Lavet af $host. Gennemgå det, før du stoler på det.';
  }

  @override
  String get assistantCopy => 'Kopiér';

  @override
  String get assistantCopied => 'Kopieret';

  @override
  String get assistantConfigure => 'Opsæt tjeneste';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get calendarSeriesMoved => 'Alle begivenheder i serien blev flyttet';

  @override
  String get calendarEventReminder => 'Påmindelse';

  @override
  String get calendarEventRepeat => 'Gentag';

  @override
  String get calendarEventColor => 'Farve';

  @override
  String get calendarDefaultColor => 'Brug typens farve';

  @override
  String get calendarEventLinkedTask => 'Tilknyttet opgave';

  @override
  String get calendarEventNoTask => 'Ingen tilknyttet opgave';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count begivenheder',
      one: '1 begivenhed',
      zero: 'Ingen begivenheder',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opgaver forfalder',
      one: '1 opgave forfalder',
      zero: 'ingen opgaver forfalder',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Tilføj en begivenhed eller en tidsblok for at planlægge dagen.';

  @override
  String get calendarNow => 'Nuværende tidspunkt';

  @override
  String get calendarRecurring => 'Gentages';

  @override
  String get calendarEventNotFound => 'Begivenheden findes ikke længere';

  @override
  String get calendarEventLocalTime => 'Tidspunkter vises i enhedens tidszone';

  @override
  String get calendarEventDeleted => 'Begivenhed flyttet til papirkurven';

  @override
  String get calendarConflictMarker => 'Overlapper med en anden begivenhed';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Ændringerne gælder alle begivenheder i serien';

  @override
  String get calendarDragHintSeries =>
      'Når du trækker i en gentagen begivenhed, flyttes hele serien';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, opgave forfalder';
  }

  @override
  String get startupErrorTitle => 'Dine data kunne ikke åbnes';

  @override
  String get startupErrorLocked =>
      'Krypteringsnøglen til enhedens data er ikke tilgængelig. Intet er slettet. Det hjælper ofte at genstarte enheden. Hvis du for nylig har gendannet enheden, så gendan i stedet dine data fra en krypteret backup.';

  @override
  String get startupErrorCipher =>
      'Enheden understøtter ikke det krypterede lager, som appen kræver. Intet er gemt ukrypteret.';

  @override
  String get startupErrorRetry => 'Prøv igen';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort venter på repetition',
      one: '1 kort venter på repetition',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count til repetition';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count nye';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Lærte kort: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Skriv 0 eller mere';

  @override
  String get flashcardsSearchCards => 'Søg i kort';

  @override
  String get flashcardsSearchEmpty => 'Ingen kort matcher søgningen';

  @override
  String get flashcardsCardAdded => 'Kort tilføjet';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Repetition $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopiér til udklipsholder';

  @override
  String get flashcardsExportTitle => 'Eksportér kortsæt';

  @override
  String get flashcardsDeleteDeck => 'Slet kortsæt';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, næste repetition om $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Spørgsmål: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Svar: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Vis spørgsmålet';

  @override
  String get flashcardsImportField => 'Kort til import';

  @override
  String get flashcardsNothingToStudy => 'Intet at studere';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort klar til at studere',
      one: '1 kort klar til at studere',
      zero: 'Ingen kort klar',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Efter bedømmelse';

  @override
  String get flashcardsDeckNotFound => 'Kortsættet findes ikke længere.';

  @override
  String get focusSessionDeleted => 'Session slettet';

  @override
  String get focusDeleteConfirm =>
      'Vil du slette sessionen fra din historik? Tiden tæller så ikke længere med i dine mål.';

  @override
  String get focusUnlinkTask => 'Fjern tilknyttet opgave';

  @override
  String get focusNoteHint => 'Hvad arbejdede du på?';

  @override
  String get focusTargetCaption => 'Målt ud fra gemte sessioner';

  @override
  String get focusModeLabel => 'Timertilstand';

  @override
  String focusUpNext(String phase) {
    return 'Næste: $phase';
  }

  @override
  String get focusStopwatchHint => 'Tæller op, indtil du stopper.';

  @override
  String get focusOpenHint => 'Ingen tidsgrænse. Stop, når du er færdig.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Påmindelser er slået fra i indstillingerne. Du får ingen besked, når en session slutter.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Alle';

  @override
  String get goalsFilterPeriod => 'Filter for periode';

  @override
  String get goalsFilterStatus => 'Filter for status';

  @override
  String get goalsEmptyFiltered => 'Ingen mål matcher filteret';

  @override
  String goalsDueOn(String date) {
    return 'Senest $date';
  }

  @override
  String get goalsDeadline => 'Deadline (valgfri)';

  @override
  String get goalsNoDeadline => 'Ingen deadline';

  @override
  String get goalsSetDeadline => 'Angiv deadline';

  @override
  String get goalsRemoveDeadline => 'Fjern deadline';

  @override
  String get goalsDescription => 'Beskrivelse (valgfri)';

  @override
  String get goalsTitleLabel => 'Titel';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Målet er nået';

  @override
  String get goalsLogged => 'Fremskridt registreret';

  @override
  String get goalsEntryDeleted => 'Post fjernet';

  @override
  String get goalsDeleteEntry => 'Fjern post';

  @override
  String get goalsDeleted => 'Mål slettet';

  @override
  String get goalsMarkActive => 'Markér som aktivt';

  @override
  String get goalsNotFound => 'Målet findes ikke længere';

  @override
  String get goalsLinkTask => 'Tilknyt en opgave';

  @override
  String get goalsNoLinkedTasks => 'Ingen tilknyttede opgaver endnu';

  @override
  String get goalsUnlinkTask => 'Fjern tilknytning til opgave';

  @override
  String get goalsTaskOpen => 'Ikke fuldført endnu';

  @override
  String get goalsTaskLinked => 'Opgave tilknyttet';

  @override
  String get goalsTaskUnlinked => 'Opgavens tilknytning fjernet';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fuldførte tilknyttede opgaver',
      one: '1 fuldført tilknyttet opgave',
    );
    return 'Inklusive $_temp0 i denne periode';
  }

  @override
  String get goalsHistoryAllTime =>
      'Poster fra tidligere perioder bliver her, men tæller kun med i deres egen periode.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done af $total udført i dag';
  }

  @override
  String get habitsNothingToday => 'Ingen vaner er planlagt i dag';

  @override
  String get habitsDecrease => 'Fjern ét flueben';

  @override
  String get habitsResetToday => 'Nulstil i dag';

  @override
  String get habitsCheckInHint => 'Hold nede for at justere';

  @override
  String get habitsName => 'Navn';

  @override
  String get habitsColor => 'Farve';

  @override
  String get habitsValidationDays => 'Vælg mindst én dag';

  @override
  String habitsReminderAt(String time) {
    return 'Hver dag kl. $time';
  }

  @override
  String get habitsSetReminder => 'Angiv tidspunkt for påmindelse';

  @override
  String get habitsRemoveReminder => 'Fjern påmindelse';

  @override
  String get habitsReminderNote =>
      'Påmindelser vises på planlagte dage, når notifikationer er tilladt.';

  @override
  String get habitsArchived => 'Vane arkiveret';

  @override
  String get habitsNotFound => 'Vanen findes ikke længere';

  @override
  String get habitsLast30 => 'Seneste 30 dage';

  @override
  String get habitsConsistencyNone => 'Ikke nok data endnu';

  @override
  String get habitsCalendar => 'Historik over flueben';

  @override
  String get habitsCalendarHint => 'Tryk på en dag for at rette den.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count af $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Flueben de seneste 90 dage. Regelmæssighed $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Flueben de seneste 90 dage. Ikke nok data endnu.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Dage på pause påvirker ikke din stime.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arkivér vanen';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gange om dagen',
      one: 'Én gang om dagen',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Andre noter';

  @override
  String get notesAllNotebooks => 'Alle notesbøger';

  @override
  String get notesNotebookName => 'Notesbogens navn';

  @override
  String get notesNotebookColor => 'Farve';

  @override
  String get notesDeleteNotebook => 'Slet notesbog';

  @override
  String get notesDeleteNotebookMessage =>
      'Notesbogen fjernes. Noterne bevares og vises under Alle notesbøger.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fastgør vigtige noter, så de bliver øverst.';

  @override
  String get notesEmptyFavorites => 'Noter, du markerer som favorit, vises her.';

  @override
  String get notesEmptyArchived => 'Arkiverede noter vises her.';

  @override
  String get notesEmptyFiltered => 'Ingen noter matcher filtrene.';

  @override
  String get notesArchivedSnack => 'Note arkiveret';

  @override
  String get notesUnarchivedSnack => 'Noten er flyttet tilbage til dine noter';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done af $total færdige';
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
  String get notesPreviewEmpty => 'Intet at forhåndsvise endnu.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Ingen andre noter linker hertil endnu. Link til noten med [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle => 'Giv noten en titel, så andre noter kan linke til den.';

  @override
  String get notesLinkedTasksEmpty => 'Ingen opgaver er tilknyttet noten.';

  @override
  String notesLinkMissing(String title) {
    return 'Der er endnu ingen note med titlen \"$title\".';
  }

  @override
  String get notesNotFound => 'Noten findes ikke længere.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Tjeklistepunkt: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Åbn noten $title';
  }

  @override
  String get notesTaskDone => 'Fuldført';

  @override
  String get notifTimerDoneBody => 'Den tid, du har indstillet, er gået.';

  @override
  String get onboardingPrivatePointDevice => 'Gemmes krypteret og kun på denne enhed';

  @override
  String get onboardingPrivatePointAccount => 'Ingen konto nødvendig';

  @override
  String get onboardingPrivatePointTracking => 'Ingen analyse, ingen sporing';

  @override
  String get onboardingLanguageBody => 'Du kan altid ændre det under Indstillinger.';

  @override
  String get onboardingNext => 'Næste';

  @override
  String get projectsActive => 'Aktive';

  @override
  String get projectNameHint => 'fx Produktlancering';

  @override
  String get projectGoalHint => 'Hvordan ser færdig ud?';

  @override
  String get projectNoDeadline => 'Ingen deadline';

  @override
  String get projectTasksOpen => 'Åbne opgaver';

  @override
  String get projectTasksCompleted => 'Fuldførte opgaver';

  @override
  String get projectAddTask => 'Føj opgave til projektet';

  @override
  String get projectAddNote => 'Ny projektnote';

  @override
  String get projectLinkedNotes => 'Noter';

  @override
  String get projectNoTasks => 'Ingen opgaver i projektet endnu';

  @override
  String get projectArchivedBadge => 'Arkiveret';

  @override
  String get projectDeleted => 'Projekt flyttet til papirkurven';

  @override
  String get projectDeleteMessage => 'Opgaverne bliver i din liste uden projekt.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent procent færdigt';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultater',
      one: '1 resultat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtrér efter type';

  @override
  String searchRecentTap(String query) {
    return 'Søg igen efter $query';
  }

  @override
  String get settingsLanguageHint =>
      'Vælg sproget for hele appen. Navnene vises på deres eget sprog.';

  @override
  String get settingsThemeHint => 'Lyst, mørkt eller som systemet';

  @override
  String settingsDecrease(String setting) {
    return 'Formindsk $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Forøg $setting';
  }

  @override
  String get settingsQuietStart => 'Starter';

  @override
  String get settingsQuietEnd => 'Slutter';

  @override
  String get settingsNotificationsHint =>
      'Dette gemmer dit valg i appen. Systemet kan også bede om tilladelse.';

  @override
  String get settingsDashboardHint =>
      'Træk for at ændre rækkefølgen. Slå dele fra, som du ikke har brug for.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Flyt $section';
  }

  @override
  String get settingsDashboardReset => 'Gendan standardrækkefølge';

  @override
  String get settingsAssistantDesc =>
      'Valgfri planlægningshjælp. Intet forlader enheden, medmindre du tilknytter en tjeneste.';

  @override
  String get settingsAssistantSetup => 'Assistent og opsætning af tjeneste';

  @override
  String get settingsTrashDesc => 'Gendan eller slet fjernede elementer permanent';

  @override
  String get settingsEraseFirstBody =>
      'Det kan ikke fortrydes. Overvej at lave en krypteret backup først.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Skriv $word';
  }

  @override
  String get settingsEraseFailed => 'Dataene kunne ikke slettes. Intet er ændret.';

  @override
  String get settingsAboutTagline => 'Et privat produktivitetsrum, der arbejder lokalt.';

  @override
  String get backupShowPassword => 'Vis adgangskode';

  @override
  String get backupHidePassword => 'Skjul adgangskode';

  @override
  String get backupSaved => 'Backup gemt';

  @override
  String get backupFailed => 'Backuppen kunne ikke oprettes. Dine data er uændrede.';

  @override
  String get backupReadFailed => 'Den valgte fil kunne ikke læses.';

  @override
  String get backupRestoreFailed => 'Gendannelsen mislykkedes. Intet er ændret.';

  @override
  String get backupShareSubject => 'Krypteret backup fra Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hver $count. dag',
      one: 'Hver dag',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hver $count. uge',
      one: 'Hver uge',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hver $count. måned',
      one: 'Hver måned',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hvert $count. år',
      one: 'Hvert år',
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
    return 'om $days';
  }

  @override
  String get repeatEndsLabel => 'Slutter';

  @override
  String get repeatEndsAfter => 'Efter et antal gange';

  @override
  String get repeatCountLabel => 'Antal gange';

  @override
  String get reminderNone => 'Ingen påmindelse';

  @override
  String get reminderCustomTime => 'På et bestemt tidspunkt';

  @override
  String get a11yDecrease => 'Formindsk';

  @override
  String get a11yIncrease => 'Forøg';

  @override
  String get pickTaskTitle => 'Vælg en opgave';

  @override
  String get pickTaskEmpty => 'Ingen åbne opgaver';

  @override
  String get tasksSearchTooltip => 'Søg i opgaver';

  @override
  String get tasksSectionOverdue => 'Overskredne';

  @override
  String get tasksSectionToday => 'I dag';

  @override
  String get tasksRecurringSemantics => 'Gentages';

  @override
  String get tasksFilterPriorityAtLeast => 'Mindste prioritet';

  @override
  String get tasksFilterCategory => 'Kategori';

  @override
  String get tasksFilterAnyCategory => 'Alle kategorier';

  @override
  String get tasksFilterLabel => 'Etiket';

  @override
  String get tasksFilterAnyLabel => 'Alle etiketter';

  @override
  String get tasksFilterReset => 'Nulstil filtre';

  @override
  String get tasksViewByProject => 'Efter projekt';

  @override
  String get tasksViewByPriority => 'Efter prioritet';

  @override
  String get tasksViewByCategory => 'Efter kategori';

  @override
  String get tasksGroupNoCategory => 'Ingen kategori';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opgaver',
      one: '1 opgave',
    );
    return 'Blokeret af $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Opgaven er blokeret af ufærdige opgaver. Vil du fuldføre den alligevel?';

  @override
  String get taskStartFocus => 'Fokusér på denne opgave';

  @override
  String get taskRemoveDate => 'Fjern dato';

  @override
  String get taskAllDay => 'Intet bestemt tidspunkt';

  @override
  String get taskSaved => 'Opgave gemt';

  @override
  String get taskCreated => 'Opgave oprettet';

  @override
  String get taskReminderNeedsDue => 'Angiv en forfaldsdato for at bruge relative påmindelser';

  @override
  String get taskSubtaskDetailsHint =>
      'Gem først opgaven for at tilføje delopgaver, tjeklistepunkter, etiketter og afhængigheder.';

  @override
  String get taskLabelName => 'Etikettens navn';

  @override
  String get taskMoreDetails => 'Detaljer';

  @override
  String get taskPlanning => 'Planlægning';

  @override
  String get taskOrganize => 'Organisér';

  @override
  String get taskBreakdown => 'Opdeling';

  @override
  String get trashDeleteTaskTitle => 'Slet opgaven permanent?';

  @override
  String get trashDeleteNoteTitle => 'Slet noten permanent?';

  @override
  String get trashDeleteBody => 'Det kan ikke fortrydes.';

  @override
  String get trashEmptyTitle => 'Tøm papirkurven?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementer slettes permanent.',
      one: '1 element slettes permanent.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Gendannet';

  @override
  String get trashPurged => 'Slettet permanent';

  @override
  String trashDeletedOn(String date) {
    return 'Slettet $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementer',
      one: '1 element',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Læs højt';

  @override
  String get flashcardsTtsUnavailable => 'Tekst til tale er ikke tilgængelig på denne enhed.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Der er ingen stemme installeret til sproget. Tilføj en i Androids indstillinger for tekst til tale.';

  @override
  String get calendarAgenda => 'Program';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Gnist',
      'rocket': 'Raket',
      'book': 'Bog',
      'work': 'Arbejde',
      'home': 'Hjem',
      'heart': 'Hjerte',
      'code': 'Kode',
      'palette': 'Palet',
      'fitness': 'Træning',
      'school': 'Skole',
      'travel': 'Rejser',
      'money': 'Opsparing',
      'other': 'Ikon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Flere felter';

  @override
  String get cardFieldExample => 'Eksempel';

  @override
  String get cardFieldExplanation => 'Forklaring';

  @override
  String get cardFieldPronunciation => 'Udtale';

  @override
  String get cardFieldNotes => 'Yderligere noter';

  @override
  String get projectMilestones => 'Milepæle';

  @override
  String get milestoneAdd => 'Tilføj milepæl';

  @override
  String get milestoneEdit => 'Rediger milepæl';

  @override
  String get milestoneTitleLabel => 'Milepæl';

  @override
  String get milestoneNoDate => 'Ingen dato';

  @override
  String get milestonesEmpty =>
      'Ingen milepæle endnu. Tilføj kontrolpunkter med datoer for at følge projektet i kalenderen.';

  @override
  String get milestoneDeleted => 'Milepæl slettet';

  @override
  String milestoneDoneA11y(String title) {
    return 'Markér milepælen \"$title\" som færdig';
  }

  @override
  String calendarMilestone(String project) {
    return 'Milepæl · $project';
  }

  @override
  String get tasksViewInbox => 'Indbakke';

  @override
  String get tasksViewArchived => 'Arkiverede';

  @override
  String get tasksEmptyInbox =>
      'Opgaver uden projekt eller dato havner her. Sortér dem, når du har et øjeblik.';

  @override
  String get tasksEmptyArchived =>
      'Arkiverede opgaver gemmes her, uden for dine lister og påmindelser.';

  @override
  String get taskArchivedBadge => 'Arkiveret';

  @override
  String get taskStatusInProgress => 'I gang';

  @override
  String get taskArchived => 'Opgave arkiveret';

  @override
  String get taskUnarchived => 'Opgave gendannet fra arkivet';

  @override
  String get focusPlanTitle => 'Sessionsplan';

  @override
  String focusPlanTotal(String duration) {
    return 'I alt $duration';
  }

  @override
  String get focusPlanRounds => 'Fokussessioner';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Lang pause efter';

  @override
  String get focusPlanSkipLastBreak => 'Spring sidste pause over';

  @override
  String get focusPlanAutoBreaks => 'Start pauser automatisk';

  @override
  String get focusPlanAutoFocus => 'Start fokus automatisk efter en pause';

  @override
  String get focusPlanSave => 'Gem plan';

  @override
  String get focusPlanNameHint => 'fx Eksamenslæsning';

  @override
  String get focusPlanSaved => 'Plan gemt';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min fokus, $rest min pause';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Formindsk $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Forøg $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Session $current af $total';
  }

  @override
  String get focusSeriesComplete => 'Serien er fuldført. Godt gået!';

  @override
  String get filterAll => 'Alle';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importeret · $duplicates dubletter sprunget over · $invalid ufuldstændige rækker';
  }

  @override
  String get flashcardsSuspend => 'Sæt kort på pause';

  @override
  String get flashcardsResume => 'Genoptag kort';

  @override
  String get flashcardsSuspended => 'Kortet er sat på pause: det bliver ikke planlagt';

  @override
  String get flashcardsResumed => 'Kortet er genoptaget';

  @override
  String get flashcardsSuspendedFilter => 'På pause';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown af $total kort';
  }

  @override
  String get flashcardsImportFile => 'Fra fil';

  @override
  String get speechTitle => 'Tale';

  @override
  String get speechAppLanguage => 'Appens sprog';

  @override
  String get speechFrontLanguage => 'Forsidens sprog';

  @override
  String get speechBackLanguage => 'Bagsidens sprog';

  @override
  String get speechRepeat => 'Gentag hver oplæsning';

  @override
  String get speechRate => 'Hastighed';

  @override
  String get speechAutoRead => 'Læs spørgsmålet op automatisk';

  @override
  String get speechHint =>
      'Bruger stemmerne, der er installeret på enheden, offline. Hvis et sprog ikke har en stemme, får du besked, og der bruges ikke noget andet i stedet.';

  @override
  String get studyHowTitle => 'Hvordan vil du studere?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Repetér $count kort',
      one: 'Repetér 1 kort',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Øv alle kort (planen ændres ikke)';

  @override
  String get studyPracticeMistakes => 'Øv de seneste fejl';

  @override
  String get studyPracticeHint =>
      'Øverunder ændrer aldrig, hvornår kortene skal repeteres. Repetition opdaterer planen.';

  @override
  String get studyModeClassic => 'Klassisk';

  @override
  String get studyModeReverse => 'Omvendt';

  @override
  String get studyModeMixed => 'Begge veje';

  @override
  String get studyModeTyped => 'Skriv svaret';

  @override
  String get studyModeChoice => 'Multiple choice';

  @override
  String get studyModeListening => 'Lytning';

  @override
  String get studyPractice => 'øvning';

  @override
  String get studyNoMistakes => 'Ingen fejl for nylig i dette kortsæt. Flot!';

  @override
  String get studyTypeAnswer => 'Skriv dit svar';

  @override
  String get studyCheck => 'Tjek';

  @override
  String get studyKnewIt => 'Det vidste jeg';

  @override
  String get studyDidntKnow => 'Vidste det ikke';

  @override
  String studyMistakes(int count) {
    return 'Missede ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Gentag de missede kort';

  @override
  String get studyCorrect => 'Rigtigt';

  @override
  String get studyAlmost => 'Næsten – tjek stavningen';

  @override
  String get studyWrong => 'Ikke helt';

  @override
  String get studyShowText => 'Vis teksten';

  @override
  String get flashcardsImportFileFailed =>
      'Filen kunne ikke åbnes. Du kan indsætte indholdet i stedet.';

  @override
  String get studyNoMatchingCards => 'Ingen kort passer til dette valg endnu.';

  @override
  String get studyPracticeNew => 'Kun nye';

  @override
  String get studyPracticeHard => 'Svære kort';

  @override
  String get studyPracticeFavorites => 'Favoritter';

  @override
  String get studySessionSize => 'Kort pr. session';

  @override
  String get studySessionAll => 'Alle';

  @override
  String get studyOrder => 'Rækkefølge';

  @override
  String get studyOrderDue => 'Mest overskredne først';

  @override
  String get studyOrderRandom => 'Tilfældig';

  @override
  String get studyOrderHardest => 'Sværeste først';

  @override
  String get flashcardsHard => 'Svære';

  @override
  String get flashcardsFavorites => 'Favoritter';

  @override
  String get flashcardsFavorite => 'Føj til favoritter';

  @override
  String get flashcardsUnfavorite => 'Fjern fra favoritter';

  @override
  String get flashcardsDuplicate => 'Duplikér';

  @override
  String get flashcardsMoveTo => 'Flyt til kortsæt';

  @override
  String get flashcardsNoOtherDeck => 'Opret først et andet kortsæt.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort flyttet',
      one: 'Kort flyttet',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Tilføj tag';

  @override
  String get flashcardsTagHint => 'fx verber';

  @override
  String flashcardsSelected(int count) {
    return '$count valgt';
  }

  @override
  String get flashcardsSelectAll => 'Vælg alle viste';

  @override
  String flashcardsSelectCard(String front) {
    return 'Vælg $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Husker $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Mulig dublet';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Kortsættet har allerede “$front” → “$back”. Gem alligevel?';
  }

  @override
  String get flashcardsSaveAnyway => 'Gem alligevel';

  @override
  String get flashcardsStats => 'Statistik';

  @override
  String get flashcardsStatTotal => 'Kort';

  @override
  String get flashcardsStatLearning => 'Under indlæring';

  @override
  String get flashcardsStatMatureCaption => 'Husket i 21+ dage';

  @override
  String get flashcardsStatReviewsToday => 'Repetitioner i dag';

  @override
  String get flashcardsStatCorrect => 'Rigtige svar';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Seneste $days dage';
  }

  @override
  String get flashcardsStatForget => 'Glemmerate';

  @override
  String get flashcardsStatForgetCaption => '“Igen” på lærte kort';

  @override
  String get flashcardsStatRecall => 'Husker nu';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-skøn, repeterede kort';

  @override
  String flashcardsStatActivity(int count) {
    return 'Repetitioner pr. dag · $count i alt';
  }

  @override
  String get flashcardsStatHistory => 'Seneste svar';

  @override
  String get flashcardsStatNoHistory =>
      'Ingen repetitioner endnu. Studér kortsættet for at se dine fremskridt her.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Læs $field op';
  }

  @override
  String get speechVoice => 'Stemme';

  @override
  String get speechVoiceDefault => 'Automatisk';

  @override
  String get speechVoiceOnline => 'kræver internet';

  @override
  String get speechTest => 'Test stemme';

  @override
  String get importNext => 'Forhåndsvisning';

  @override
  String get importPreviewTitle => 'Knyt kolonner til felter';

  @override
  String get importIgnoreColumn => 'Ignorer';

  @override
  String importColumn(int n) {
    return 'Kolonne $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kort klar · $invalid ufuldstændige rækker springes over';
  }

  @override
  String get importNeedFrontBack => 'Vælg, hvilke kolonner der er forside og bagside.';

  @override
  String get actionMoveUp => 'Flyt op';

  @override
  String get actionMoveDown => 'Flyt ned';

  @override
  String get flashcardsLayoutTitle => 'Kortlayout';

  @override
  String get flashcardsLayoutHint =>
      'Omdøb, skjul eller omarranger kortsættets ekstra felter. Kortenes indhold ændres aldrig.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Vis $field under studiet';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Vis svaret trin for trin';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Bagsiden vises først; hvert ekstra felt åbnes med et tryk.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Vis $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Filen er større end $mb MB.';
  }

  @override
  String get flashcardsImage => 'Billede';

  @override
  String get flashcardsAudio => 'Lyd';

  @override
  String get flashcardsAddImage => 'Tilføj billede';

  @override
  String get flashcardsAddAudio => 'Tilføj lyd';

  @override
  String get flashcardsPlayAudio => 'Afspil optagelse';

  @override
  String get flashcardsAudioUnavailable => 'Optagelsen kan ikke afspilles på denne enhed.';

  @override
  String get flashcardsCustomFields => 'Dine felter';

  @override
  String get flashcardsTemplates => 'Skabeloner';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Felt $n';
  }

  @override
  String get flashcardsAddField => 'Tilføj felt';

  @override
  String get flashcardsFieldName => 'Feltets navn';

  @override
  String get flashcardsFieldLangDefault => 'Sidens sprog';

  @override
  String get flashcardsTemplateConfirm =>
      'Skabelonen bestemmer, hvordan felterne vises, og tilføjer sine felter. Dine kort og eksisterende felter forbliver, som de er.';

  @override
  String get flashcardsApplyTemplate => 'Anvend';

  @override
  String get templateVocabulary => 'Ordforråd';

  @override
  String get templateTwoTranslations => 'Ord med to oversættelser';

  @override
  String get templateQuestionAnswer => 'Spørgsmål og svar';

  @override
  String get templateDefinition => 'Begreb og definition';

  @override
  String get templateGrammar => 'Grammatikregel';

  @override
  String get templateFieldPlural => 'Flertal';

  @override
  String get templateFieldTranslation2 => 'Anden oversættelse';

  @override
  String get templateFieldSynonyms => 'Synonymer';

  @override
  String get templateFieldRule => 'Regel';

  @override
  String get deckCategory => 'Niveau eller emne';

  @override
  String get deckCategoryHint => 'fx A1, Medicin';

  @override
  String get flashcardsSearchAll => 'Søg i alle kort';

  @override
  String get flashcardsSearchAllHint => 'Ord, oversættelse, eksempel, note, tag…';

  @override
  String get flashcardsAllDecks => 'Alle kortsæt';

  @override
  String get flashcardsAllLanguages => 'Alle sprog';

  @override
  String get flashcardsLangUnset => 'Sprog ikke angivet';

  @override
  String get flashcardsLevelUnset => 'Intet niveau eller emne';

  @override
  String get flashcardsByLanguage => 'Fremskridt pr. sprog';

  @override
  String get flashcardsByLevel => 'Fremskridt pr. niveau eller emne';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks kortsæt · $cards kort · $mature lærte · $due til repetition · $correct rigtige (30 dage)';
  }

  @override
  String get flashcardsRecord => 'Optag';

  @override
  String get flashcardsRecording => 'Optager…';

  @override
  String get flashcardsRecordStop => 'Stop og behold';

  @override
  String get flashcardsMicDenied =>
      'Adgang til mikrofonen er slået fra. Tillad den i systemindstillingerne for at optage.';

  @override
  String get flashcardsRecordFailed => 'Optagelse er ikke tilgængelig på denne enhed.';

  @override
  String get soundsTitle => 'Lyde';

  @override
  String get soundsNature => 'Natur';

  @override
  String get soundsNoise => 'Fokusstøj';

  @override
  String get soundRain => 'Regn';

  @override
  String get soundStorm => 'Tordenvejr';

  @override
  String get soundRiver => 'Å';

  @override
  String get soundOcean => 'Havbølger';

  @override
  String get soundFire => 'Lejrbål';

  @override
  String get soundForest => 'Skovens fugle';

  @override
  String get soundNight => 'Sommernat';

  @override
  String get soundWhite => 'Hvid støj';

  @override
  String get soundPink => 'Lyserød støj';

  @override
  String get soundBrown => 'Brun støj';

  @override
  String get soundsPlay => 'Afspil';

  @override
  String get soundsSleep => 'Sovetimer';

  @override
  String get soundsSleepOff => 'Fra';

  @override
  String soundsSleepAt(String time) {
    return 'Stopper kl. $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Der kan højst afspilles $count lyde på én gang.';
  }

  @override
  String get soundsHint =>
      'Tryk på en lyd for at starte. Bland flere, og indstil lydstyrken for hver.';

  @override
  String get soundsMixer => 'Mix';

  @override
  String soundsVolumeOf(String name) {
    return 'Lydstyrke for $name';
  }

  @override
  String get soundsChannel => 'Naturlyde';

  @override
  String get settingsEndTone => 'Lyd ved timerens afslutning';

  @override
  String get toneGentle => 'Bløde bip';

  @override
  String get toneBeeps => 'Bip';

  @override
  String get toneWood => 'Bank på træ';

  @override
  String get toneBird => 'Fuglekald';

  @override
  String get toneStream => 'Bæk';

  @override
  String get toneSystem => 'Telefonens lyd';

  @override
  String get speechOnPhone => 'På denne telefon';

  @override
  String get speechAllLanguages => 'Alle sprog';

  @override
  String get speechSearchLanguage => 'Søg efter sprog';

  @override
  String get speechGetVoices => 'Hent flere stemmer';

  @override
  String get speechGetVoicesHint => 'Sprog uden stemme kan hentes i telefonens taleindstillinger.';

  @override
  String get speechSettingsFailed => 'Telefonens taleindstillinger kunne ikke åbnes.';

  @override
  String get speechVoiceMissing => 'Ingen stemme installeret';

  @override
  String get speechPause => 'Pause mellem gentagelser';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Læs eksemplet op sammen med svaret';

  @override
  String get flashListen => 'Lyt';

  @override
  String get flashListenNext => 'Næste kort';

  @override
  String get flashListenEmpty => 'Ingen kort at lytte til.';

  @override
  String get flashViewTable => 'Tabel';

  @override
  String get flashViewCards => 'Kort';

  @override
  String get flashSwapSides => 'Byt kolonner';

  @override
  String get flashSort => 'Sortér';

  @override
  String get flashSortNewest => 'Nyeste først';

  @override
  String get flashSortAlpha => 'A til Å';

  @override
  String get flashSortDue => 'Til repetition først';

  @override
  String get flashSortHard => 'Sværeste først';

  @override
  String get flashPasteCards => 'Indsæt kort';

  @override
  String get flashClipboardEmpty => 'Udklipsholderen indeholder ingen tekst.';

  @override
  String get flashMenuAdd => 'Tilføj kort';

  @override
  String get flashMenuDeck => 'Kortsæt';

  @override
  String get flashToday => 'I dag';

  @override
  String get flashStudyNow => 'Studér';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort besvaret',
      one: '1 kort besvaret',
      zero: 'Ingen kort besvaret',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Regn i skoven';

  @override
  String get autoBackupTitle => 'Automatiske backups';

  @override
  String get autoBackupDesc => 'Hver dag på denne telefon; de seneste 7 gemmes';

  @override
  String get autoBackupHint =>
      'Kopierne bliver på denne telefon og fjernes, hvis appen afinstalleres. Brug “Tag backup” til at gemme en fil, når du skifter telefon.';

  @override
  String get autoBackupNone => 'Ingen automatisk backup endnu. Den første laves i dag.';

  @override
  String get autoBackupRestore => 'Gendan';

  @override
  String autoBackupConfirm(String date) {
    return 'Erstat alle nuværende data med backuppen fra $date?';
  }

  @override
  String get autoBackupRestored => 'Gendannet.';

  @override
  String get errorLogTitle => 'Fejllog';

  @override
  String get errorLogHint =>
      'Hvis noget går galt, noteres det her: kun fejltypen og hvor i koden, aldrig dit indhold. Del den for at hjælpe med at løse problemet.';

  @override
  String get errorLogEmpty => 'Ingen fejl registreret.';

  @override
  String get errorLogClear => 'Ryd';

  @override
  String get soundsWithFocus => 'Afspil med fokussessioner';

  @override
  String get soundsWithFocusHint =>
      'Dit mix starter med en fokussession og holder pause i pauserne.';

  @override
  String get soundsSavedMixes => 'Gemte mix';

  @override
  String get soundsSaveMix => 'Gem dette mix';

  @override
  String get soundsMixNameHint => 'Navn, fx Regnfuldt bibliotek';

  @override
  String soundsDeleteMix(String name) {
    return 'Slet mixet “$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Én gang om dagen, kun når der er kort til repetition';

  @override
  String get settingsReviewTime => 'Tidspunkt for påmindelse';

  @override
  String get shortcutFocus => 'Fokus';

  @override
  String get shortcutNewTask => 'Ny opgave';

  @override
  String get shortcutReview => 'Repetér kort';

  @override
  String get shortcutSounds => 'Naturlyde';

  @override
  String get myDayTitle => 'Start min dag';

  @override
  String get myDayHint => 'Din dag i et overblik, derefter fokus med ét tryk';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opgaver i dag',
      one: '1 opgave i dag',
      zero: 'Ingen opgaver i dag',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Ikke flere begivenheder i dag';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Næste: $title kl. $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vaner tilbage',
      one: '1 vane tilbage',
      zero: 'Alle vaner er udført',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Begynd med en fokussession';

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
  String get settingsHijri => 'Islamiske datoer';

  @override
  String get settingsHijriHint => 'Vises i kalenderen og på startskærmen (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done af $goal kort i dag';
  }

  @override
  String get studyGoalReached => 'Dagens mål er nået. Godt gået!';

  @override
  String get studyWeekTitle => 'Din uge';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort besvaret på 7 dage',
      one: '1 kort besvaret på 7 dage',
      zero: 'Ingen kort besvaret på 7 dage',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fokus på 7 dage';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Stime: $current · Bedste: $best';
  }

  @override
  String get studyGoalTitle => 'Dagligt mål (kort)';

  @override
  String get studyGoalOff => 'Fra';

  @override
  String get focusDndTitle => 'Forstyr ikke under fokus';

  @override
  String get focusDndHint => 'Slås til ved hver fokussession og fra igen ved pausen';

  @override
  String get focusDndNeedsAccess => 'Tillad adgang i telefonens indstillinger for at bruge dette';

  @override
  String get voiceInput => 'Tal for at skrive';

  @override
  String get voiceInputPrompt => 'Tal nu';

  @override
  String get voiceInputUnavailable =>
      'Stemmeindtastning er ikke tilgængelig på denne telefon. Installér eller aktivér en taletjeneste (fx Talegenkendelse og -syntese fra Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Solopgang';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Den Muslimske Verdensliga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egyptens generelle myndighed';

  @override
  String get prayerMethodJordan => 'Jordan, ministeriet for awqaf';

  @override
  String get prayerMethodKarachi => 'Universitetet for islamiske videnskaber, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Golfregionen';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Tyrkiet, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malaysia, Indonesien';

  @override
  String get prayerMethodFrance => 'Frankrig (12°)';

  @override
  String get prayerMethodRussia => 'Rusland, den åndelige forvaltning';

  @override
  String prayerNotifTitle(String name) {
    return 'Tid til $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Bedetid · $time';
  }

  @override
  String get prayerTitle => 'Bedetider';

  @override
  String get prayerOffHint =>
      'Vælg din by for at se bedetiderne. De beregnes på telefonen; der kræves ingen adgang til din placering.';

  @override
  String get prayerChooseCity => 'Vælg by';

  @override
  String get prayerCity => 'By';

  @override
  String get prayerCitySearch => 'Søg efter en by';

  @override
  String get prayerMethod => 'Beregningsmetode';

  @override
  String get prayerHanafiAsr => 'Hanafi-asr (senere tidspunkt)';

  @override
  String get prayerReminders => 'Giv besked ved hver bedetid';

  @override
  String get prayerPauseFocus => 'Sæt fokus på pause ved bedetid';

  @override
  String get prayerPauseFocusHint =>
      'En igangværende session sættes på pause; fortsæt efter bønnen';

  @override
  String get prayerTurnOff => 'Slå bedetider fra';

  @override
  String get prayerAccuracyNote =>
      'Beregnede tider kan afvige nogle minutter fra din lokale moské.';

  @override
  String prayerNext(String name, String time) {
    return '$name kl. $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Denne Anki-fil bruger det nyeste format. Eksportér igen i Anki med “Understøt ældre Anki-versioner” slået til, og importér så den fil.';

  @override
  String get importTemplate => 'Regnearksskabelon';

  @override
  String get importTemplateFront => 'æble';

  @override
  String get importTemplateBack => 'en rund frugt';

  @override
  String get importTemplateExample => 'Jeg spiser et æble hver dag.';

  @override
  String get importTemplateTag => 'mad';

  @override
  String get starterTitle => 'Startkortsæt';

  @override
  String get starterHint =>
      'Tilføj et for at begynde at studere med det samme. Du kan redigere eller slette det senere.';

  @override
  String get starterAdd => 'Tilføj';

  @override
  String get starterWords => 'Hverdagsord på engelsk (arabisk)';

  @override
  String get starterCapitals => 'Verdens hovedstæder';

  @override
  String get starterElements => 'Grundstoffer';

  @override
  String get settingsAccent => 'Accentfarve';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentBlue => 'Blå';

  @override
  String get accentTeal => 'Blågrøn';

  @override
  String get accentGreen => 'Grøn';

  @override
  String get accentRose => 'Rosa';

  @override
  String get accentAmber => 'Rav';

  @override
  String get settingsFlashTextSize => 'Tekststørrelse på kort';

  @override
  String get settingsFlashTextSample => 'Eksempel';

  @override
  String get widgetStartFocus => 'Tryk for at fokusere';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokus til $time';
  }

  @override
  String get widgetNoCardsDue => 'Kort: alt klaret';

  @override
  String get faqMyDayQ => 'Hvad gør “Start min dag”?';

  @override
  String get faqMyDayA =>
      'Én gang om dagen tilbyder startskærmen den: se dagens opgaver, næste begivenhed, vaner, der mangler, og kort til repetition, og start derefter en fokussession med ét tryk. Hold appikonet nede for hurtige handlinger, eller tilføj widgetten på startskærmen for at se fokustid og kort til repetition.';

  @override
  String get faqTasksQ => 'Hvordan tilføjer jeg en opgave med påmindelse?';

  @override
  String get faqTasksA =>
      'Tryk på Ny opgave på Hjem eller + i Opgaver. Skriv titlen, eller sig den med mikrofonen, og angiv så forfaldsdato, tidspunkt og påmindelse. Overskredne opgaver vises først.';

  @override
  String get faqFocusQ => 'Hvordan virker fokustimeren?';

  @override
  String get faqFocusA =>
      'Vælg Pomodoro, nedtælling eller fri tid, og tryk på Start; pauser kan følge automatisk. Under Indstillinger kan du vælge slutlyden, slå Forstyr ikke til under fokus og afspille dine naturlyde ved hver session.';

  @override
  String get faqSoundsQ => 'Kan jeg blande naturlyde?';

  @override
  String get faqSoundsA =>
      'Slå op til seks ægte optagelser til, indstil lydstyrken for hver, og gem mixet med et navn. De fortsætter i baggrunden, og en sovetimer kan stoppe dem. Der bruges ingen musik.';

  @override
  String get faqCalendarQ => 'Kan kalenderen vise islamiske datoer?';

  @override
  String get faqCalendarA =>
      'Ja. Islamiske datoer (Umm al-Qura) vises automatisk på arabisk og kan slås til under Indstillinger for alle sprog. Begivenheder, opgaver med forfaldsdato og projekternes milepæle vises samlet.';

  @override
  String get faqFlashcardsQ => 'Hvordan bestemmer repetitionen, hvilke kort jeg ser?';

  @override
  String get faqFlashcardsA =>
      'Kort, du kan godt, kommer igen efter længere tid, og kort, du misser, kommer snart igen (spaced repetition). Bedøm hvert svar med Igen, Svært, Godt eller Let. Sæt et dagligt mål, og hold din stime på kortet I dag. Angiv en eksamensdato for et kortsæt for at se, hvor mange dage der er tilbage, og hvor mange nye kort du skal lære hver dag. Sortér efter \"Min rækkefølge\" for at trække kortene på plads, tryk på højttaleren på en af siderne for at høre den, og indstil hastighed og gentagelser i menuen Tale.';

  @override
  String get faqImportQ => 'Kan jeg hente kort fra Anki eller Excel?';

  @override
  String get faqImportA =>
      'Ja. Vælg Importér i et kortsæt, vælg en fil: Anki (.apkg), Excel (.xlsx) eller CSV, og knyt kolonnerne. Brug “Regnearksskabelon” til at skrive kort på en computer. Billeder og lyde i Anki-filer importeres ikke.';

  @override
  String get faqNotesQ => 'Hvad kan noter?';

  @override
  String get faqNotesA =>
      'Skriv frit med tjeklister og formatering, fastgør vigtige noter eller markér dem som favoritter, tilføj tags, og knyt noter til opgaver. Med mikrofonknappen kan du diktere. En ny note kan starte fra en skabelon (forelæsning, bogresumé, dagbog, ugeplan), og billedknappen tilføjer fotos.';

  @override
  String get faqHabitsQ => 'Hvordan tælles vanernes stimer?';

  @override
  String get faqHabitsA =>
      'En dag tæller, når du når vanens mål på en planlagt dag. Når du sætter en vane på pause, er stimen sikret. Hver vane kan have sit eget tidspunkt for påmindelse.';

  @override
  String get faqGoalsQ => 'Hvordan følger mål fremskridt?';

  @override
  String get faqGoalsA =>
      'Giv et mål en målværdi og en enhed, og registrér så fremskridt. Kortet viser, hvor langt du er nået, og hvor meget der mangler før deadline.';

  @override
  String get faqProjectsQ => 'Hvad bruges projekter til?';

  @override
  String get faqProjectsA =>
      'Saml opgaver i et projekt, tilføj milepæle med datoer, og følg det samlede fremskridt. Milepælene vises også i kalenderen.';

  @override
  String get faqInsightsQ => 'Hvad viser Indsigt?';

  @override
  String get faqInsightsA =>
      'Din fokustid, fuldførte opgaver og studier over dage og uger med rolige forslag. Alt beregnes på din telefon.';

  @override
  String get faqSpacesQ => 'Hvor er alle delene?';

  @override
  String get faqSpacesA =>
      'Rum viser alle dele af appen (noter, kortsæt, vaner, mål, projekter, lyde og mere), så hovedlinjen forbliver enkel.';

  @override
  String get faqBackupQ => 'Hvordan tages der backup af mine data?';

  @override
  String get faqBackupA =>
      'Hver dag gemmer appen stille en krypteret kopi på denne telefon og beholder de seneste 7. Under Indstillinger kan du også eksportere en adgangskodebeskyttet backupfil og gendanne den på en anden telefon.';

  @override
  String get faqPrayerQ => 'Hvordan virker bedetiderne?';

  @override
  String get faqPrayerA =>
      'Vælg din by under Indstillinger → Bedetider. Tiderne beregnes på telefonen med den metode, der bruges der, og du kan ændre metoden og asr-skolen. Du kan få besked ved hver bøn, og en igangværende fokussession sættes på pause.';

  @override
  String get faqPrivacyQ => 'Hvor gemmes mine data?';

  @override
  String get faqPrivacyA =>
      'Kun på din telefon, i en krypteret database. Ingen konto og ingen sporing. Internettet bruges kun af funktioner, du selv slår til, som den valgfrie assistent.';

  @override
  String get faqAssistantQ => 'Hvad er assistenten?';

  @override
  String get faqAssistantA =>
      'En valgfri hjælper, som du knytter til din egen AI-tjeneste under Indstillinger. Den er slået fra som standard og spørger, før den sender tekst fra en note.';

  @override
  String get tourPlanTitle => 'Planlæg din dag';

  @override
  String get tourPlanBody =>
      'Opgaver, kalender og vaner samlet ét roligt sted. Begynd hver morgen med “Start min dag”.';

  @override
  String get tourFocusTitle => 'Fokusér i dybden';

  @override
  String get tourFocusBody =>
      'Tidsbestemte sessioner med ægte naturlyde, Forstyr ikke og bløde sluttoner.';

  @override
  String get tourLearnTitle => 'Lær for altid';

  @override
  String get tourLearnBody =>
      'Kort med spaced repetition, oplæsning på mange sprog og import fra Anki eller Excel.';

  @override
  String get helpTitle => 'Hjælp og spørgsmål';

  @override
  String get helpOpen => 'Åbn';

  @override
  String get helpTour => 'Se rundvisningen';

  @override
  String get tourNext => 'Næste';

  @override
  String get tourDone => 'Lad os begynde';

  @override
  String get transferColTitle => 'Titel';

  @override
  String get transferColNotes => 'Noter';

  @override
  String get transferColBody => 'Tekst';

  @override
  String get transferColDue => 'Forfaldsdato';

  @override
  String get transferColPriority => 'Prioritet (0-3)';

  @override
  String get transferColDone => 'Færdig';

  @override
  String get transferColProject => 'Projekt';

  @override
  String get transferColCategory => 'Kategori';

  @override
  String get transferTitle => 'Import og eksport';

  @override
  String get transferSaveAs => 'Gem som';

  @override
  String get transferImport => 'Importér fra en fil';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV eller en tabel i Word. Kolonner: titel, forfaldsdato (2026-12-31), prioritet 0-3, færdig, projekt, noter. Opgaver, der allerede er i appen, springes over.';

  @override
  String get transferImportNotesHint =>
      'Word-, Markdown- eller tekstfiler bliver til en note. Excel eller CSV: én note pr. række (titel, tekst).';

  @override
  String get transferSaved => 'Filen er gemt';

  @override
  String get transferFailed => 'Filen kunne ikke laves. Intet er ændret.';

  @override
  String get transferUnsupported =>
      'Filen kan ikke læses her. Brug Excel, CSV, Word, Markdown eller tekst.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added tilføjet',
      one: '1 tilføjet',
      zero: 'Intet nyt at tilføje',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Tekst';

  @override
  String get transferAllNotes => 'Alle noter';

  @override
  String get transferThisNote => 'Denne note';

  @override
  String get transferDeckFormats => 'Gem som Excel, Word eller PDF';

  @override
  String get faqFilesQ => 'Kan jeg bruge Excel-, Word- eller PDF-filer?';

  @override
  String get faqFilesA =>
      'Ja. Opgaver og Noter har en knap til import og eksport (to pile) øverst, og hvert kortsæt har den i sin menu. Gem som Excel, CSV, Word eller PDF, eller hent Excel-, CSV-, Word-, Markdown- eller tekstfiler ind. Kolonnenavne kan være på et hvilket som helst af appens sprog, og filer, du har gemt, kan altid importeres igen.';

  @override
  String get tplLecture => 'Forelæsning';

  @override
  String get tplBook => 'Bogresumé';

  @override
  String get tplJournal => 'Dagbog';

  @override
  String get tplWeek => 'Ugeplan';

  @override
  String get tplLectureBody => '## Vigtige punkter\n- \n\n## Spørgsmål\n- [ ] \n\n## Resumé\n';

  @override
  String get tplBookBody =>
      '## Hovedidé\n\n## Hvad jeg lærte\n- \n\n## Citater\n> \n\n## Skal bruges\n- [ ] \n';

  @override
  String get tplJournalBody => '## Taknemmelig for\n- \n\n## Dagens fokus\n- [ ] \n\n## Noter\n';

  @override
  String get tplWeekBody =>
      '## Mål for ugen\n- [ ] \n\n### Lørdag\n- [ ] \n\n### Søndag\n- [ ] \n\n### Mandag\n- [ ] \n\n### Tirsdag\n- [ ] \n\n### Onsdag\n- [ ] \n\n### Torsdag\n- [ ] \n\n### Fredag\n- [ ] \n';

  @override
  String get tplHint => 'Start fra en skabelon';

  @override
  String get noteImage => 'Billede';

  @override
  String get noteAddImage => 'Tilføj billede';

  @override
  String get noteImageUnreadable => 'Filen er ikke et billede, appen kan læse.';

  @override
  String get noteImageTooLarge => 'Billedet er for stort.';

  @override
  String get examSet => 'Angiv eksamensdato';

  @override
  String get examDate => 'Eksamensdato';

  @override
  String get examToday => 'Eksamen i dag. Held og lykke!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Eksamen om $count dage',
      one: 'Eksamen i morgen',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lær $count nye kort om dagen',
      one: 'lær 1 nyt kort om dagen',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'alle kort er lært, bliv ved med at repetere';

  @override
  String examRaiseLimit(int count) {
    return 'Vis $count nye kort om dagen';
  }

  @override
  String get backupDriveHint =>
      'Vil du gemme en kopi online, så vælg Google Drev (eller en anden cloudapp) på den skærm, der åbner bagefter.';

  @override
  String get flashShareDeck => 'Del kortsættet med en ven';

  @override
  String get flashSortManual => 'Min rækkefølge (træk)';

  @override
  String get flashReorderHint => 'Hold i håndtaget, og træk et kort for at flytte det.';

  @override
  String get flashReorderNeedsAll => 'Ryd søgning og filtre for at trække i kortene.';

  @override
  String get flashDragHandle => 'Træk for at flytte';

  @override
  String get reportTitle => 'Månedsrapport';

  @override
  String get reportFocus => 'Fokustid';

  @override
  String reportSessions(int count) {
    return '$count sessioner';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Bedste dag: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktive dage';
  }

  @override
  String get reportCards => 'Repeterede kort';

  @override
  String reportCardsKnown(String percent) {
    return '$percent husket';
  }

  @override
  String get reportTasks => 'Fuldførte opgaver';

  @override
  String get reportHabits => 'Flueben ved vaner';

  @override
  String get reportEmpty => 'Intet registreret denne måned endnu.';

  @override
  String get reportSave => 'Gem som PDF eller Word';

  @override
  String get reportPrevMonth => 'Forrige måned';

  @override
  String get reportNextMonth => 'Næste måned';

  @override
  String get careTitle => 'Pleje af telefon og data';

  @override
  String get storageTitle => 'Lagerplads';

  @override
  String get storageSubtitle => 'Hvad der fylder, og oprydning i ubrugte billeder';

  @override
  String get storagePictures => 'Billeder i noter';

  @override
  String get storageCardMedia => 'Billeder og lyd i kort';

  @override
  String get storageText => 'Notetekst';

  @override
  String get storageFree => 'Ledigt på din telefon';

  @override
  String get storageLow =>
      'Din telefon er næsten fuld. Frigør lidt plads, så backups og påmindelser bliver ved med at virke.';

  @override
  String storageUnused(int count, String size) {
    return '$count ubrugte billeder ($size)';
  }

  @override
  String get storageNoUnused => 'Ingen ubrugte billeder. Alt er ryddeligt.';

  @override
  String get storageClean => 'Fjern ubrugte billeder';

  @override
  String storageCleaned(int count) {
    return '$count billeder fjernet';
  }

  @override
  String get storageHint =>
      'Billeder tæller kun som ubrugte, når ingen note viser dem, heller ikke noter i papirkurven.';

  @override
  String get batteryTitle => 'Hold påmindelserne i gang';

  @override
  String get batterySubtitle => 'Nogle telefoner stopper apps i baggrunden. Tjek din.';

  @override
  String get batteryStatusOk =>
      'Batterisparing begrænser ikke denne app. Påmindelser og lyde bør komme til tiden.';

  @override
  String get batteryStatusLimited =>
      'Batterisparing kan stoppe appen i baggrunden, så påmindelser og lyde kommer for sent eller slet ikke.';

  @override
  String get batteryOpen => 'Åbn batteriindstillinger';

  @override
  String get batteryOpenApp => 'Åbn appindstillinger';

  @override
  String get batteryGeneric =>
      'Vælg appen i batteriindstillingerne, og sæt den til Ubegrænset (eller Optimer ikke).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: åbn også Sikkerhed › Tilladelser › Autostart, og slå appen til, og sæt Batterisparer til Ingen begrænsninger.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: åbn Batteri › denne app, og tillad baggrundsaktivitet og automatisk start; lås appen i listen over seneste apps.';

  @override
  String get batterySamsung =>
      'Samsung: Batteri › Grænser for baggrundsbrug: fjern appen fra Apps i dvale og Apps i dyb dvale.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Appstart › denne app › administrér manuelt, og tillad automatisk start, sekundær start og kørsel i baggrunden.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Batteri › Strømforbrug i baggrunden › tillad appen, og slå automatisk start til under tilladelser.';

  @override
  String get whatsNewTitle => 'Nyheder';

  @override
  String get whatsNewSubtitle => 'De seneste ændringer på få linjer';

  @override
  String get whatsNewDone => 'Forstået';

  @override
  String get whatsNewOrderTitle => 'Træk kort i din egen rækkefølge';

  @override
  String get whatsNewOrderBody =>
      'Vælg Sortér › Min rækkefølge i et kortsæt, hold så i håndtaget, og træk.';

  @override
  String get whatsNewSpeechTitle => 'En højttaler på hver side af kortet';

  @override
  String get whatsNewSpeechBody =>
      'Tryk på den for at høre ordet eller oversættelsen. Hastighed, gentagelser og stemme findes i repetitionsmenuen. Sproget genkendes ud fra teksten.';

  @override
  String get whatsNewReportTitle => 'Månedsrapport';

  @override
  String get whatsNewReportBody =>
      'Tryk på rapportikonet i Indsigt for at se måneden og gemme den som PDF eller Word.';

  @override
  String get whatsNewCareTitle => 'Pleje af telefon og data';

  @override
  String get whatsNewCareBody =>
      'Indstillinger har nu en side om lagerplads med oprydning i billeder og en batteriguide til dit telefonmærke.';

  @override
  String get whatsNewSoundTitle => 'Roligere lyde';

  @override
  String get whatsNewSoundBody => 'Naturlydene er blødere og stillere, og billedkortene er pænere.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Tjekket $date: den seneste backup åbner korrekt.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Tjekket $date: en beskadiget backup blev fundet og erstattet med en ny.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Tjekket $date: den seneste backup kunne ikke åbnes. Gem selv en backupfil under Indstillinger.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Du studerer som regel omkring kl. $time';
  }

  @override
  String get smartReviewTimeUse => 'Brug det';

  @override
  String get widgetNewNote => 'Ny note';

  @override
  String get noteConnections => 'Tags, links og opgaver';

  @override
  String get navCards => 'Kort';

  @override
  String get studyAnswerWay => 'Hvordan vil du svare?';

  @override
  String get studyMorePractice => 'Ekstra øvelse';

  @override
  String get studySessionSettings => 'Indstillinger for session';

  @override
  String get focusAdjustTitle => 'Din session';

  @override
  String get focusPresetsTitle => 'Færdige forslag';

  @override
  String get focusPresetStudy => 'Studie';

  @override
  String get focusPresetDeep => 'Dybt arbejde';

  @override
  String get focusPresetQuick => 'Hurtig spurt';

  @override
  String get focusPresetReading => 'Læsning';

  @override
  String get focusPresetWorkout => 'Træningsrunder';

  @override
  String get focusAdjustMinutes => 'Fokuslængde';

  @override
  String get focusAdjustBreak => 'Pauselængde';

  @override
  String get focusAdjustRounds => 'Runder';

  @override
  String get focusRoundsOpen => 'Ingen grænse';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Tryk for at ændre tiden';

  @override
  String get flashArrangeDecks => 'Arrangér kortsæt';

  @override
  String get flashDeckActions => 'Muligheder for kortsæt';

  @override
  String get starterBrowse => 'Færdige kortsæt';

  @override
  String get starterBrowseHint => 'Tilføj et med ét tryk, og begynd at lære';

  @override
  String get dashOpenDecks => 'Åbn dine kort';

  @override
  String speechVoiceNumber(String n) {
    return 'Stemme $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Godt flow. Hvil $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Start pause';

  @override
  String tasksFinishAt(String time) {
    return 'Starter du nu, er du færdig med det hele kl. $time';
  }

  @override
  String get focusCalmPacing => 'Roligt tempo';

  @override
  String get focusCalmPacingHint => 'Kun hele minutter og ringen, ingen tikkende sekunder';

  @override
  String get focusFlipHint => 'Læg telefonen med skærmen nedad for at starte';

  @override
  String get focusImmersive => 'Fordybelsestilstand';

  @override
  String get focusImmersiveBlack => 'Helt sort (sparer batteri)';

  @override
  String get focusFlipToFocus => 'Vend for at fokusere';

  @override
  String get focusFlipToFocusHint =>
      'I fordybelsestilstand: skærmen nedad starter, og når du løfter telefonen, holdes der pause';

  @override
  String get guardTitle => 'Distraktionsværn';

  @override
  String get guardSubtitle => 'Sæt distraherende apps på pause, mens du fokuserer';

  @override
  String get guardSwitch => 'Sæt distraherende apps på pause';

  @override
  String get guardSwitchHint => 'Under fokussessioner og dine Tidsværn-timer';

  @override
  String get guardNeedsAccess => 'Kræver kontakten til hjælpefunktioner: tryk for at slå den til';

  @override
  String get guardDisclosureTitle => 'Sådan virker værnet';

  @override
  String get guardDisclosureBody =>
      'For at sætte de apps, du vælger, på pause bruger Deep Focus Androids hjælpefunktionstjeneste til at se, hvilken app der er åben. Med \"Luk Shorts og Reels\" slået til tjekker den også, om en afspiller til korte videoer er på skærmen.\n\nDen læser ingen tekst, gemmer intet af det, den ser, og sender intet nogen steder hen: alt bliver på din telefon. Du kan altid slå den fra under indstillingerne for hjælpefunktioner.';

  @override
  String get guardAgree => 'Accepter og åbn indstillinger';

  @override
  String get guardModeGentle => 'Mild';

  @override
  String get guardModeStrict => 'Streng';

  @override
  String get guardGentleHint => 'En vejrtrækningspause på 5 sekunder, og så vælger du';

  @override
  String get guardStrictHint => 'De valgte apps forbliver lukkede, indtil fokustiden er slut';

  @override
  String get guardApps => 'Apps, der skal på pause';

  @override
  String get guardAppsAllowed => 'Tilladte apps';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'Ingen valgt endnu',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Tillad kun valgte apps';

  @override
  String get guardAllowlistHint =>
      'Alle andre apps sættes på pause; opkald, indstillinger og tastaturet virker altid';

  @override
  String get guardShorts => 'Luk Shorts og Reels';

  @override
  String get guardShortsHint =>
      'Når værnet er slået til. Så godt det kan lade sig gøre: disse apps ændrer sig tit';

  @override
  String get guardSchedule => 'Tidsværn';

  @override
  String get guardScheduleHint =>
      'Beskyt også på bestemte dage og tidspunkter, fx skole eller arbejde';

  @override
  String get guardFrom => 'Fra';

  @override
  String get guardTo => 'Til';

  @override
  String get guardSearchApps => 'Søg efter apps';

  @override
  String get guardNoApps => 'Ingen apps fundet';

  @override
  String get guardPrivacy =>
      'Virker kun på din telefon: værnet ser, hvilken app der er åben, aldrig hvad der er i den, og sender intet.';

  @override
  String get guardBreathe => 'Træk vejret ind… og ud';

  @override
  String get guardQuestion => 'Har du brug for denne app nu?';

  @override
  String get guardBackToFocus => 'Tilbage til fokus';

  @override
  String get guardOpenFive => 'Åbn i 5 minutter';

  @override
  String get guardStrictBody => 'Appen er sat på pause, indtil din fokustid er slut.';

  @override
  String get guardShortsClosed => 'Korte videoer lukkes, mens værnet er slået til';

  @override
  String get faqGuardQ => 'Hvordan stopper jeg distraherende apps, mens jeg fokuserer?';

  @override
  String get faqGuardA =>
      'Åbn Fokus → timerindstillingerne → Distraktionsværn. Vælg apps, og vælg så Mild (5 sekunders vejrtrækning og spørgsmålet \"Har du brug for denne app nu?\") eller Streng (de forbliver lukkede). Det virker under fokussessioner og, med Tidsværn, på de dage og tidspunkter, du vælger. \"Tillad kun valgte apps\" sætter alt andet på pause; opkald, indstillinger og tastaturet virker altid. Android beder dig én gang om at slå værnet til under hjælpefunktioner. Det ser kun, hvilken app der er åben, og sender intet.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Flyttet til $name';
  }

  @override
  String get notesDragHint => 'Hold en note, og træk den hen på en notesbog';

  @override
  String get guardReviewCards => 'Repetér kort i stedet';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort venter på dig',
      one: '1 kort venter på dig',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Nødsituation: hold i 10 sekunder';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Bliv ved med at holde… $n';
  }

  @override
  String get guardWeekTitle => 'Denne uge';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauser',
      one: '1 pause',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tilbage til fokus $count gange',
      one: 'tilbage til fokus én gang',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Omdøb ord';

  @override
  String get wordsSubtitle => 'Brug dit eget ord for enhver tekst i appen';

  @override
  String get wordsHint =>
      'Tryk på en tekst for at ændre den. Dine ord gælder kun dette sprog og gemmes i backups.';

  @override
  String get wordsSearch => 'Søg i tekster';

  @override
  String get wordsChangedOnly => 'Kun ændrede';

  @override
  String wordsOriginal(String text) {
    return 'Original: $text';
  }

  @override
  String get wordsReset => 'Brug originalen';

  @override
  String get wordsResetAll => 'Nulstil alle ord';

  @override
  String get wordsResetAllConfirm => 'Alle tekster på dette sprog går tilbage til originalen.';

  @override
  String get wordsNone => 'Ingen tekst fundet';

  @override
  String get settingsLanguageSearch => 'Søg efter sprog';

  @override
  String get settingsLanguageNoMatch => 'Intet sprog passer';
}
