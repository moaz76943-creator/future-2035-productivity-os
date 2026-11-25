// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Hjem';

  @override
  String get navTasks => 'Oppgaver';

  @override
  String get navFocus => 'Fokus';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get navSpaces => 'Rom';

  @override
  String get moduleProjects => 'Prosjekter';

  @override
  String get moduleNotes => 'Notater';

  @override
  String get moduleFlashcards => 'Kort';

  @override
  String get moduleGoals => 'Mål';

  @override
  String get moduleHabits => 'Vaner';

  @override
  String get moduleAnalytics => 'Innsikt';

  @override
  String get moduleSearch => 'Søk';

  @override
  String get moduleAssistant => 'Assistent';

  @override
  String get moduleSettings => 'Innstillinger';

  @override
  String get moduleTrash => 'Papirkurv';

  @override
  String get actionSave => 'Lagre';

  @override
  String get actionCancel => 'Avbryt';

  @override
  String get actionDelete => 'Slett';

  @override
  String get actionEdit => 'Rediger';

  @override
  String get actionDone => 'Ferdig';

  @override
  String get actionAdd => 'Legg til';

  @override
  String get actionCreate => 'Opprett';

  @override
  String get actionClose => 'Lukk';

  @override
  String get actionBack => 'Tilbake';

  @override
  String get actionUndo => 'Angre';

  @override
  String get actionRestore => 'Gjenopprett';

  @override
  String get actionRetry => 'Prøv igjen';

  @override
  String get actionContinue => 'Fortsett';

  @override
  String get actionSkip => 'Hopp over';

  @override
  String get actionArchive => 'Arkiver';

  @override
  String get actionUnarchive => 'Ta ut av arkivet';

  @override
  String get actionPin => 'Fest';

  @override
  String get actionUnpin => 'Løsne';

  @override
  String get actionMore => 'Flere valg';

  @override
  String get actionClear => 'Tøm';

  @override
  String get actionSearch => 'Søk';

  @override
  String get actionSort => 'Sorter';

  @override
  String get actionShare => 'Del';

  @override
  String get actionImport => 'Importer';

  @override
  String get actionExport => 'Eksporter';

  @override
  String get actionPause => 'Pause';

  @override
  String get actionResume => 'Gjenoppta';

  @override
  String get actionStart => 'Start';

  @override
  String get actionStop => 'Stopp';

  @override
  String get actionComplete => 'Fullfør';

  @override
  String get actionDeleteForever => 'Slett for godt';

  @override
  String get actionEmptyTrash => 'Tøm papirkurven';

  @override
  String get actionUnlink => 'Koble fra';

  @override
  String get actionCustomize => 'Tilpass';

  @override
  String get actionPreview => 'Forhåndsvisning';

  @override
  String get actionLog => 'Registrer fremgang';

  @override
  String get stateLoading => 'Laster inn…';

  @override
  String get stateSaving => 'Lagrer…';

  @override
  String get stateSaved => 'Lagret';

  @override
  String get stateUnsaved => 'Ulagrede endringer';

  @override
  String get errorGenericTitle => 'Noe gikk galt';

  @override
  String get errorGenericMessage => 'Dataene dine er trygge. Prøv igjen.';

  @override
  String get errorLoadFailed => 'Innholdet kunne ikke lastes inn.';

  @override
  String get errorSaveFailed => 'Kunne ikke lagre. Endringene dine er der fortsatt.';

  @override
  String get validationRequired => 'Feltet må fylles ut';

  @override
  String get validationTitleRequired => 'Skriv inn en tittel';

  @override
  String get validationNameRequired => 'Skriv inn et navn';

  @override
  String get validationTooLong => 'Dette er for langt';

  @override
  String get validationEndBeforeStart => 'Slutten må være etter starten';

  @override
  String get validationStartAfterDue => 'Startdatoen må være før forfallsdatoen';

  @override
  String get validationPositiveNumber => 'Skriv inn et tall større enn null';

  @override
  String get validationDependencyCycle => 'Dette ville gi en sirkulær avhengighet';

  @override
  String get validationInvalidRepeat => 'Gjentakelsesregelen er ugyldig';

  @override
  String get deletedItem => 'Flyttet til papirkurven';

  @override
  String get untitled => 'Uten tittel';

  @override
  String get noProject => 'Uten prosjekt';

  @override
  String get greetingMorning => 'God morgen';

  @override
  String get greetingAfternoon => 'God ettermiddag';

  @override
  String get greetingEvening => 'God kveld';

  @override
  String get dashFocusToday => 'Dagens fokus';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done av $target';
  }

  @override
  String get dashStartFocus => 'Start fokus';

  @override
  String get dashFocusRunning => 'Økt pågår';

  @override
  String get dashTodayTasks => 'Forfaller i dag';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Vaner i dag';

  @override
  String get dashGoals => 'Mål';

  @override
  String get dashReview => 'Repetisjon';

  @override
  String get dashRecentNotes => 'Nylige notater';

  @override
  String get dashInsight => 'Forslag';

  @override
  String get dashSeeAll => 'Se alle';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort å repetere',
      one: '1 kort å repetere',
      zero: 'Ingen kort å repetere',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Repeter nå';

  @override
  String get dashCustomizeTitle => 'Deler av oversikten';

  @override
  String get dashCustomizeHint => 'Velg hva som vises på startskjermen.';

  @override
  String get dashSectionFocus => 'Fokus';

  @override
  String get dashSectionToday => 'Oppgaver i dag';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Vaner';

  @override
  String get dashSectionGoals => 'Mål';

  @override
  String get dashSectionReview => 'Repetisjon av kort';

  @override
  String get dashSectionNotes => 'Nylige notater';

  @override
  String get dashSectionInsight => 'Forslag';

  @override
  String get quickAddTask => 'Ny oppgave';

  @override
  String get quickAddNote => 'Nytt notat';

  @override
  String get quickAddEvent => 'Ny hendelse';

  @override
  String get quickStartFocus => 'Fokus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Du har $count forfalte oppgaver. Begynn med den viktigste.',
      one: 'Du har 1 forfalt oppgave. Flytt den eller gjør den ferdig først.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return '$minutes minutter igjen til det daglige fokusmålet ditt.';
  }

  @override
  String get insightCardsDue => 'Repeter kortene dine nå mens de er ferske.';

  @override
  String get insightAllClear =>
      'Alt går etter planen. Planlegg morgendagen eller ta en rolig pause.';

  @override
  String insightHabitStreak(String habit) {
    return 'Hold rekken: $habit er fortsatt åpen i dag.';
  }

  @override
  String get focusTitle => 'Fokus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Nedtelling';

  @override
  String get focusModeCountUp => 'Stoppeklokke';

  @override
  String get focusModeOpen => 'Fri';

  @override
  String get focusPhaseWork => 'Fokus';

  @override
  String get focusPhaseShortBreak => 'Kort pause';

  @override
  String get focusPhaseLongBreak => 'Lang pause';

  @override
  String get focusReady => 'Klar når du er';

  @override
  String get focusPaused => 'På pause';

  @override
  String get focusRunning => 'Fokusert';

  @override
  String get focusDuration => 'Varighet';

  @override
  String get focusLinkTask => 'Koble til en oppgave';

  @override
  String get focusLinkedTask => 'Jobber med';

  @override
  String get focusNoTask => 'Ingen oppgave koblet til';

  @override
  String focusCycle(int current, int total) {
    return 'Runde $current av $total';
  }

  @override
  String get focusSkipBreak => 'Hopp over pausen';

  @override
  String get focusStartBreak => 'Start pause';

  @override
  String get focusStartNext => 'Start neste fokus';

  @override
  String get focusSessionComplete => 'Økt fullført';

  @override
  String get focusSessionStopped => 'Økt lagret';

  @override
  String focusSessionSummary(String duration) {
    return 'Du var fokusert i $duration.';
  }

  @override
  String get focusAddNote => 'Legg til et notat om økten';

  @override
  String get focusHistory => 'Historikk';

  @override
  String get focusNoHistory => 'Fullførte økter vises her';

  @override
  String get focusTargets => 'Mål';

  @override
  String get focusDailyTarget => 'Dagsmål';

  @override
  String get focusWeeklyTarget => 'Ukemål';

  @override
  String get focusOutcomeCompleted => 'Fullført';

  @override
  String get focusOutcomeInterrupted => 'Stoppet tidlig';

  @override
  String get focusRecovered => 'Økten fortsatte mens appen var lukket.';

  @override
  String get focusCompletedWhileAway =>
      'En økt ble ferdig mens appen var lukket, og den er lagret.';

  @override
  String get focusNotificationsOff =>
      'Varsler er slått av. Du får ikke beskjed når en økt er ferdig.';

  @override
  String get focusBatteryHint =>
      'Noen enheter setter apper på pause i bakgrunnen. Tidtakeren er fortsatt nøyaktig, men varsler kan bli forsinket. Tillat ubegrenset batteribruk for pålitelige varsler.';

  @override
  String get focusOpenSettings => 'Åpne innstillinger';

  @override
  String get focusStopConfirmTitle => 'Stoppe økten?';

  @override
  String get focusStopConfirmMessage => 'Tiden du har vært fokusert hittil, blir lagret.';

  @override
  String get focusDiscard => 'Forkast';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutter',
      one: '1 minutt',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time igjen';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time gått';
  }

  @override
  String get focusDeleteSession => 'Slett økt';

  @override
  String get tasksTitle => 'Oppgaver';

  @override
  String get tasksViewToday => 'I dag';

  @override
  String get tasksViewUpcoming => 'Kommende';

  @override
  String get tasksViewAll => 'Alle';

  @override
  String get tasksViewOverdue => 'Forfalt';

  @override
  String get tasksViewCompleted => 'Fullført';

  @override
  String get tasksQuickAddHint => 'Legg til en oppgave…';

  @override
  String get tasksEmptyTitle => 'Alt er gjort';

  @override
  String get tasksEmptyMessage => 'Legg til en oppgave og gi dagen form.';

  @override
  String get tasksEmptyCompleted => 'Fullførte oppgaver vises her.';

  @override
  String get taskNew => 'Ny oppgave';

  @override
  String get taskEdit => 'Rediger oppgave';

  @override
  String get taskTitleLabel => 'Tittel';

  @override
  String get taskTitleHint => 'Hva må gjøres?';

  @override
  String get taskDescriptionLabel => 'Beskrivelse';

  @override
  String get taskNotesLabel => 'Notater';

  @override
  String get taskPriority => 'Prioritet';

  @override
  String get priorityNone => 'Ingen';

  @override
  String get priorityLow => 'Lav';

  @override
  String get priorityMedium => 'Middels';

  @override
  String get priorityHigh => 'Høy';

  @override
  String get priorityUrgent => 'Haster';

  @override
  String get taskDueDate => 'Forfallsdato';

  @override
  String get taskStartDate => 'Startdato';

  @override
  String get taskReminder => 'Påminnelse';

  @override
  String get taskRepeat => 'Gjenta';

  @override
  String get taskProject => 'Prosjekt';

  @override
  String get taskCategory => 'Kategori';

  @override
  String get taskCategoryHint => 'f.eks. Jobb, Hjem, Studier';

  @override
  String get taskEstimateMinutes => 'Anslag (minutter)';

  @override
  String get taskTracked => 'Målt fokus';

  @override
  String get taskLabels => 'Etiketter';

  @override
  String get taskAddLabel => 'Ny etikett';

  @override
  String get taskChecklist => 'Sjekkliste';

  @override
  String get taskAddChecklistItem => 'Legg til et punkt';

  @override
  String get taskSubtasks => 'Deloppgaver';

  @override
  String get taskAddSubtask => 'Legg til en deloppgave';

  @override
  String get taskDependencies => 'Blokkert av';

  @override
  String get taskAddDependency => 'Legg til en blokkerende oppgave';

  @override
  String get taskLinkedNotes => 'Koblede notater';

  @override
  String get taskSetTime => 'Angi klokkeslett';

  @override
  String get taskNoDate => 'Ingen dato';

  @override
  String get taskCompleted => 'Oppgaven er fullført';

  @override
  String get taskNextOccurrence => 'Neste gang er opprettet';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dager på overtid',
      one: '1 dag på overtid',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Merk «$title» som ferdig';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Merk «$title» som ikke ferdig';
  }

  @override
  String get sortSmart => 'Smart';

  @override
  String get sortDueDate => 'Forfallsdato';

  @override
  String get sortPriority => 'Prioritet';

  @override
  String get sortCreated => 'Nyeste';

  @override
  String get sortTitle => 'Tittel';

  @override
  String get filterAllProjects => 'Alle prosjekter';

  @override
  String get filterAnyPriority => 'Alle prioriteter';

  @override
  String get filterTitle => 'Filtrer og sorter';

  @override
  String get dateToday => 'I dag';

  @override
  String get dateTomorrow => 'I morgen';

  @override
  String get dateYesterday => 'I går';

  @override
  String get repeatNever => 'Gjentas ikke';

  @override
  String get repeatDaily => 'Hver dag';

  @override
  String get repeatWeekdays => 'Hver ukedag';

  @override
  String get repeatWeekly => 'Hver uke';

  @override
  String get repeatMonthly => 'Hver måned';

  @override
  String get repeatYearly => 'Hvert år';

  @override
  String get repeatCustom => 'Egendefinert';

  @override
  String get repeatEvery => 'Gjenta hver';

  @override
  String get repeatOnDays => 'På dagene';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'dager', one: 'dag');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'uker', one: 'uke');
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
      other: '$count ganger',
      one: '1 gang',
    );
    return 'Slutter etter $_temp0';
  }

  @override
  String get repeatEndsNever => 'Slutter aldri';

  @override
  String get reminderAtTime => 'Når det starter';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutter før',
      one: '1 minutt før',
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
  String get projectsTitle => 'Prosjekter';

  @override
  String get projectsEmptyTitle => 'Ingen prosjekter ennå';

  @override
  String get projectsEmptyMessage => 'Samle oppgaver, notater og fokustid som hører sammen.';

  @override
  String get projectNew => 'Nytt prosjekt';

  @override
  String get projectEdit => 'Rediger prosjekt';

  @override
  String get projectName => 'Navn';

  @override
  String get projectDescription => 'Beskrivelse';

  @override
  String get projectGoal => 'Formål';

  @override
  String get projectDeadline => 'Frist';

  @override
  String get projectColor => 'Farge';

  @override
  String get projectIcon => 'Ikon';

  @override
  String get projectProgress => 'Fremgang';

  @override
  String projectTasksDone(int done, int total) {
    return '$done av $total oppgaver ferdige';
  }

  @override
  String get projectFocusTime => 'Fokustid';

  @override
  String get projectArchived => 'Arkiverte prosjekter';

  @override
  String get projectShowArchived => 'Vis arkiverte';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dager igjen',
      one: '1 dag igjen',
      zero: 'Forfaller i dag',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Fristen er passert';

  @override
  String get calendarTitle => 'Kalender';

  @override
  String get calendarMonth => 'Måned';

  @override
  String get calendarWeek => 'Uke';

  @override
  String get calendarDay => 'Dag';

  @override
  String get calendarToday => 'I dag';

  @override
  String get calendarPrevious => 'Forrige';

  @override
  String get calendarNext => 'Neste';

  @override
  String get calendarNoEvents => 'Ingenting planlagt';

  @override
  String get calendarAllDay => 'Hele dagen';

  @override
  String get eventNew => 'Ny hendelse';

  @override
  String get eventEdit => 'Rediger hendelse';

  @override
  String get eventTitleHint => 'Hendelsens tittel';

  @override
  String get eventStarts => 'Starter';

  @override
  String get eventEnds => 'Slutter';

  @override
  String get eventKind => 'Type';

  @override
  String get eventKindEvent => 'Hendelse';

  @override
  String get eventKindTimeBlock => 'Tidsblokk';

  @override
  String get eventKindFocus => 'Fokusøkt';

  @override
  String get eventKindGoal => 'Personlig mål';

  @override
  String get eventDescription => 'Detaljer';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Overlapper med $count hendelser',
      one: 'Overlapper med 1 hendelse',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Planleggingskonflikter denne dagen';

  @override
  String get calendarTaskDue => 'Oppgave forfaller';

  @override
  String get calendarDragHint => 'Hold inne og dra en hendelse for å flytte den';

  @override
  String get calendarRescheduled => 'Hendelsen er flyttet';

  @override
  String get calendarScheduleTask => 'Planlegg som tidsblokk';

  @override
  String get notesTitle => 'Notater';

  @override
  String get notesViewAll => 'Alle';

  @override
  String get notesViewPinned => 'Festet';

  @override
  String get notesViewFavorites => 'Favoritter';

  @override
  String get notesViewArchived => 'Arkivert';

  @override
  String get notesTags => 'Emneknagger';

  @override
  String get notesNewNotebook => 'Ny notatbok';

  @override
  String get notesNoNotebook => 'Ingen notatbok';

  @override
  String get notesEmptyTitle => 'Et blankt ark';

  @override
  String get notesEmptyMessage => 'Ta vare på ideer, møtenotater og kunnskap.';

  @override
  String get noteTitleHint => 'Tittel';

  @override
  String get noteBodyHint =>
      'Begynn å skrive… Bruk # for emneknagger og [[Tittel]] for å lenke notater.';

  @override
  String get noteFavorite => 'Favoritt';

  @override
  String get noteUnfavorite => 'Fjern fra favoritter';

  @override
  String get noteMoveTo => 'Flytt til notatbok';

  @override
  String get noteBacklinks => 'Lenket fra';

  @override
  String get noteLinkedTasks => 'Koblede oppgaver';

  @override
  String get noteLinkTask => 'Koble til en oppgave';

  @override
  String get noteLinkProject => 'Prosjekt';

  @override
  String get noteFormatHeading => 'Overskrift';

  @override
  String get noteFormatBold => 'Fet';

  @override
  String get noteFormatItalic => 'Kursiv';

  @override
  String get noteFormatList => 'Punktliste';

  @override
  String get noteFormatChecklist => 'Sjekkliste';

  @override
  String get noteFormatLink => 'Lenke';

  @override
  String noteEdited(String time) {
    return 'Redigert $time';
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
  String get flashEmptyTitle => 'Lag din første kortstokk';

  @override
  String get flashEmptyMessage =>
      'Repetisjon med mellomrom viser hvert kort rett før du ville glemt det.';

  @override
  String get deckNew => 'Ny kortstokk';

  @override
  String get deckEdit => 'Rediger kortstokk';

  @override
  String get deckName => 'Kortstokkens navn';

  @override
  String get deckDescription => 'Beskrivelse';

  @override
  String get deckDailyNew => 'Nye kort per dag';

  @override
  String get deckDailyReview => 'Daglig repetisjonsmål';

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
  String get deckDue => 'Til repetisjon';

  @override
  String get deckNewCards => 'Nye';

  @override
  String get deckMature => 'Lært';

  @override
  String get deckStudy => 'Øv';

  @override
  String get deckNothingDue => 'Ingenting å repetere nå. Kom tilbake senere.';

  @override
  String get deckEmptyCards => 'Legg til kort for å begynne å lære.';

  @override
  String get cardNew => 'Nytt kort';

  @override
  String get cardEdit => 'Rediger kort';

  @override
  String get cardFront => 'Forside';

  @override
  String get cardBack => 'Bakside';

  @override
  String get cardFrontHint => 'Spørsmål eller begrep';

  @override
  String get cardBackHint => 'Svar eller definisjon';

  @override
  String get cardTags => 'Emneknagger';

  @override
  String get cardAddAnother => 'Lagre og legg til ett til';

  @override
  String get reviewShowAnswer => 'Vis svaret';

  @override
  String get reviewAgain => 'Igjen';

  @override
  String get reviewHard => 'Vanskelig';

  @override
  String get reviewGood => 'Bra';

  @override
  String get reviewEasy => 'Lett';

  @override
  String reviewProgress(int done, int total) {
    return '$done av $total';
  }

  @override
  String get reviewFinishedTitle => 'Økt fullført';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Du repeterte $count kort.',
      one: 'Du repeterte 1 kort.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Trykk for å se svaret';

  @override
  String get importCardsTitle => 'Importer kort';

  @override
  String get importCardsHint =>
      'Lim inn ett kort per linje (forside og bakside skilt med tabulator eller semikolon), eller velg en fil: Excel (.xlsx), CSV, en Anki-kortstokk (.apkg) eller en eksportert kortstokk.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort importert',
      one: '1 kort importert',
      zero: 'Ingen kort importert',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Innholdet kunne ikke importeres.';

  @override
  String get exportCopied => 'Kortstokken er eksportert';

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
      other: '$count dager',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Mål';

  @override
  String get goalsEmptyTitle => 'Sikt mot noe';

  @override
  String get goalsEmptyMessage =>
      'Sett mål for dagen, uken, måneden eller på lang sikt, og følg den faktiske fremgangen.';

  @override
  String get goalNew => 'Nytt mål';

  @override
  String get goalEdit => 'Rediger mål';

  @override
  String get goalTitleHint => 'Hva vil du oppnå?';

  @override
  String get goalPeriod => 'Periode';

  @override
  String get goalPeriodDaily => 'Daglig';

  @override
  String get goalPeriodWeekly => 'Ukentlig';

  @override
  String get goalPeriodMonthly => 'Månedlig';

  @override
  String get goalPeriodLongTerm => 'Langsiktig';

  @override
  String get goalTarget => 'Målverdi';

  @override
  String get goalUnit => 'Enhet';

  @override
  String get goalUnitHint => 'f.eks. sider, km, timer';

  @override
  String get goalStatusActive => 'Aktivt';

  @override
  String get goalStatusPaused => 'På pause';

  @override
  String get goalStatusAchieved => 'Oppnådd';

  @override
  String get goalPause => 'Sett målet på pause';

  @override
  String get goalResume => 'Gjenoppta målet';

  @override
  String get goalMarkAchieved => 'Merk som oppnådd';

  @override
  String goalProgressOf(String current, String target) {
    return '$current av $target';
  }

  @override
  String get goalLogAmount => 'Mengde';

  @override
  String get goalLogNote => 'Notat (valgfritt)';

  @override
  String get goalHistory => 'Historikk';

  @override
  String get goalNoHistory => 'Registrert fremgang vises her';

  @override
  String get goalLinkedTasks => 'Koblede oppgaver';

  @override
  String get goalLinkedTasksHint => 'Hver fullført koblet oppgave teller som 1 mot dette målet.';

  @override
  String get goalThisPeriod => 'Denne perioden';

  @override
  String get habitsTitle => 'Vaner';

  @override
  String get habitsEmptyTitle => 'Små steg, hver dag';

  @override
  String get habitsEmptyMessage => 'Lag en vane og huk den av når du gjør den.';

  @override
  String get habitNew => 'Ny vane';

  @override
  String get habitEdit => 'Rediger vane';

  @override
  String get habitNameHint => 'f.eks. Les 20 sider';

  @override
  String get habitDays => 'Plan';

  @override
  String get habitEveryDay => 'Hver dag';

  @override
  String get habitTargetPerDay => 'Ganger per dag';

  @override
  String get habitReminder => 'Daglig påminnelse';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dager på rad',
      one: '1 dag på rad',
      zero: 'Ingen rekke',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Lengste rekke';

  @override
  String get habitCurrentStreak => 'Nåværende rekke';

  @override
  String get habitConsistency => 'Regelmessighet';

  @override
  String get habitLast90 => 'Siste 90 dager';

  @override
  String get habitPaused => 'På pause';

  @override
  String get habitPause => 'Sett vanen på pause';

  @override
  String get habitResume => 'Gjenoppta vanen';

  @override
  String get habitDoneToday => 'Gjort i dag';

  @override
  String habitCountToday(int count, int target) {
    return '$count av $target i dag';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Huk av «$name»';
  }

  @override
  String get habitNotScheduledToday => 'Ikke planlagt i dag';

  @override
  String get analyticsTitle => 'Innsikt';

  @override
  String get rangeWeek => '7 dager';

  @override
  String get rangeMonth => '30 dager';

  @override
  String get rangeQuarter => '90 dager';

  @override
  String get statFocusTime => 'Fokustid';

  @override
  String get statSessions => 'Økter';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed fullført · $interrupted stoppet tidlig';
  }

  @override
  String get statTasksDone => 'Fullførte oppgaver';

  @override
  String get statCompletionRate => 'Fullført i tide';

  @override
  String get statHabitConsistency => 'Regelmessighet i vaner';

  @override
  String get statRetention => 'Husket kort';

  @override
  String get statReviews => 'Repetisjoner';

  @override
  String get statActiveGoals => 'Aktive mål';

  @override
  String get statEstimated => 'Anslått utført arbeid';

  @override
  String get statEstimatedNote => 'Basert på anslagene dine, ikke målt tid';

  @override
  String get statMeasuredNote => 'Målt fra fokusøkter';

  @override
  String get chartFocusByDay => 'Fokusminutter per dag';

  @override
  String get chartTasksByDay => 'Fullførte oppgaver per dag';

  @override
  String get chartTimeByProject => 'Tid per prosjekt';

  @override
  String get chartProjectProgress => 'Fremgang per prosjekt';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: totalt $total, beste dag $best';
  }

  @override
  String get analyticsNoData => 'Ikke nok data ennå';

  @override
  String get analyticsUnassigned => 'Uten prosjekt';

  @override
  String get searchHint => 'Søk i alt…';

  @override
  String get searchRecent => 'Nylige søk';

  @override
  String get searchClearRecent => 'Tøm nylige søk';

  @override
  String searchNoResults(String query) {
    return 'Ingen treff for «$query»';
  }

  @override
  String get searchStartTyping =>
      'Søk i oppgaver, notater, kort, mål, hendelser og mer. Søket blir på enheten.';

  @override
  String get searchCatTask => 'Oppgaver';

  @override
  String get searchCatProject => 'Prosjekter';

  @override
  String get searchCatNote => 'Notater';

  @override
  String get searchCatFlashcard => 'Kort';

  @override
  String get searchCatDeck => 'Kortstokker';

  @override
  String get searchCatGoal => 'Mål';

  @override
  String get searchCatHabit => 'Vaner';

  @override
  String get searchCatEvent => 'Hendelser';

  @override
  String get searchCatSession => 'Økter';

  @override
  String get searchAll => 'Alle';

  @override
  String get assistantTitle => 'Assistent';

  @override
  String get assistantIntro =>
      'Planleggingshjelp som virker på enheten. Koble eventuelt til en KI-tjeneste du velger selv, for sammendrag og generering.';

  @override
  String get assistantOnDevice => 'På enheten';

  @override
  String get assistantCloud => 'KI-tjeneste';

  @override
  String get assistantPlanDay => 'Planlegg dagen min';

  @override
  String get assistantPlanDayDesc =>
      'Sorterer åpne oppgaver etter hastegrad, prioritet og anslag, og passer dem inn rundt hendelsene dine.';

  @override
  String get assistantExtractTasks => 'Hent oppgaver fra et notat';

  @override
  String get assistantExtractTasksDesc =>
      'Finner sjekklistepunkter og handlingslinjer i et notat og gjør dem om til oppgaver.';

  @override
  String get assistantMakeCards => 'Lag kort fra et notat';

  @override
  String get assistantMakeCardsDesc =>
      'Lager kort av linjer som «begrep: definisjon» og spørsmål-og-svar-linjer.';

  @override
  String get assistantSummarize => 'Oppsummer et notat';

  @override
  String get assistantSummarizeDesc =>
      'Krever en KI-tjeneste. Notatet sendes først når du har bekreftet.';

  @override
  String get assistantWorkload => 'Oversikt over arbeidsmengden';

  @override
  String get assistantWorkloadDesc => 'Sammenligner anslått arbeid med fritiden din denne uken.';

  @override
  String get assistantPlanEmpty => 'Ingen åpne oppgaver å planlegge. Nyt pusterommet.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Ledig fokustid i dag: $time';
  }

  @override
  String get assistantPlanOverflow => 'Dette får du kanskje ikke tid til i dag:';

  @override
  String get assistantChooseNote => 'Velg et notat';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Fant $count oppgaver',
      one: 'Fant 1 oppgave',
      zero: 'Fant ingen oppgaver i notatet',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Fant $count kort',
      one: 'Fant 1 kort',
      zero: 'Fant ingen kort i notatet',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Velg en kortstokk';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Anslått arbeid: $estimated. Ledig tid: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Du har planlagt mer enn det er tid til. Vurder å flytte oppgaver med lavere prioritet.';

  @override
  String get assistantWorkloadOk => 'Planen din får plass i tiden du har.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count åpne oppgaver mangler anslag.',
      one: '1 åpen oppgave mangler anslag.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'KI-tjeneste';

  @override
  String get assistantProviderOff =>
      'Ingen tjeneste tilkoblet. Verktøyene på enheten virker fortsatt.';

  @override
  String assistantProviderOn(String host) {
    return 'Koblet til $host';
  }

  @override
  String get assistantEndpoint => 'API-adresse (HTTPS)';

  @override
  String get assistantModel => 'Modell';

  @override
  String get assistantApiKey => 'API-nøkkel';

  @override
  String get assistantApiKeyStored => 'Lagret trygt på enheten';

  @override
  String get assistantHttpsOnly => 'Bare HTTPS-adresser er tillatt';

  @override
  String get assistantConsentTitle => 'Sende innholdet til KI-tjenesten din?';

  @override
  String assistantConsentBody(String host) {
    return 'Den valgte notatteksten forlater enheten og behandles av $host. Ingenting annet sendes.';
  }

  @override
  String get assistantConsentAlways => 'Ikke spør igjen for denne tjenesten';

  @override
  String get assistantSend => 'Send';

  @override
  String get assistantUnavailable => 'Fikk ikke kontakt med KI-tjenesten. Prøv igjen senere.';

  @override
  String get assistantDisabledTitle => 'Assistenten er slått av';

  @override
  String get assistantDisabledMessage =>
      'Slå den på for å bruke planleggingsverktøyene. Ingen data forlater enheten med mindre du kobler til en tjeneste og bekrefter hver forespørsel.';

  @override
  String get assistantSummaryTitle => 'Sammendrag';

  @override
  String get assistantRemoveProvider => 'Fjern tjenesten';

  @override
  String get settingsTitle => 'Innstillinger';

  @override
  String get settingsGeneral => 'Generelt';

  @override
  String get settingsLanguage => 'Språk';

  @override
  String get settingsLanguageSystem => 'Enhetens språk';

  @override
  String get settingsAppearance => 'Utseende';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Lyst';

  @override
  String get themeDark => 'Mørkt';

  @override
  String get themeSystem => 'System';

  @override
  String get settingsReduceMotion => 'Mindre bevegelse';

  @override
  String get settingsReduceMotionDesc => 'Færre animasjoner og bevegelige bakgrunner';

  @override
  String get settingsFocus => 'Fokustidtaker';

  @override
  String get settingsWorkLength => 'Fokuslengde';

  @override
  String get settingsShortBreak => 'Kort pause';

  @override
  String get settingsLongBreak => 'Lang pause';

  @override
  String get settingsLongBreakEvery => 'Lang pause etter';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count økter',
      one: '1 økt',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Start pauser automatisk';

  @override
  String get settingsSound => 'Lyd når det er ferdig';

  @override
  String get settingsDailyFocusTarget => 'Daglig fokusmål';

  @override
  String get settingsWeeklyFocusTarget => 'Ukentlig fokusmål';

  @override
  String get settingsNotifications => 'Varsler';

  @override
  String get settingsNotificationsEnable => 'Tillat påminnelser';

  @override
  String get settingsQuietHours => 'Stille timer';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Påminnelser om vaner, mål og repetisjon er dempet fra $start til $end';
  }

  @override
  String get settingsReviewReminder => 'Påminnelse om å repetere kort';

  @override
  String get settingsPermissionDenied => 'Varsler er blokkert i systeminnstillingene.';

  @override
  String get settingsPrivacy => 'Personvern og data';

  @override
  String get settingsPrivacyStatement =>
      'Dataene dine lagres bare på denne enheten og er kryptert. Ingen konto, ingen analyse og ingen sporing.';

  @override
  String get settingsBackup => 'Lag kryptert sikkerhetskopi';

  @override
  String get settingsBackupDesc => 'Beskyttet med et passord du velger selv';

  @override
  String get settingsRestore => 'Gjenopprett fra sikkerhetskopi';

  @override
  String get settingsRestoreDesc => 'Erstatter alle data på enheten';

  @override
  String get settingsErase => 'Slett alle data';

  @override
  String get settingsEraseDesc => 'Slett alt på enheten for godt';

  @override
  String get settingsEraseConfirmTitle => 'Slette alle data?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Alle oppgaver, notater, kort, mål, vaner, hendelser og økter slettes for godt. Skriv $word for å bekrefte.';
  }

  @override
  String get settingsEraseWord => 'SLETT';

  @override
  String get settingsErased => 'Alle data er slettet';

  @override
  String get backupPassword => 'Passord for sikkerhetskopien';

  @override
  String get backupPasswordConfirm => 'Bekreft passordet';

  @override
  String backupPasswordHint(int count) {
    return 'Minst $count tegn. Det kan ikke gjenopprettes hvis du mister det.';
  }

  @override
  String get backupPasswordMismatch => 'Passordene er ikke like';

  @override
  String get backupPasswordShort => 'Passordet er for kort';

  @override
  String get backupCreating => 'Krypterer sikkerhetskopien…';

  @override
  String get backupCreated => 'Sikkerhetskopien er klar til å lagres';

  @override
  String get backupRestoring => 'Kontrollerer og gjenoppretter…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementer gjenopprettet',
      one: '1 element gjenopprettet',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Feil passord, eller filen er endret.';

  @override
  String get backupNotABackup => 'Filen er ikke en sikkerhetskopi fra Deep Focus.';

  @override
  String get backupCorrupted => 'Sikkerhetskopifilen er skadet.';

  @override
  String get backupNewer =>
      'Denne sikkerhetskopien er laget med en nyere versjon av appen. Oppdater først.';

  @override
  String get backupRestoreConfirmTitle => 'Erstatte alle data?';

  @override
  String get backupRestoreConfirmBody =>
      'Alt som er på enheten nå, blir erstattet av sikkerhetskopien. Hvis gjenopprettingen mislykkes, endres ingenting.';

  @override
  String get settingsAbout => 'Om';

  @override
  String settingsVersion(String version) {
    return 'Versjon $version';
  }

  @override
  String get settingsLicenses => 'Åpen kildekode-lisenser';

  @override
  String get settingsAssistant => 'Assistent';

  @override
  String get settingsAssistantEnable => 'Slå på assistenten';

  @override
  String get settingsDashboard => 'Deler av startsiden';

  @override
  String get settingsTrash => 'Papirkurv';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Papirkurven er tom';

  @override
  String get trashHint => 'Slettede elementer blir liggende her til du fjerner dem.';

  @override
  String get trashTasks => 'Oppgaver';

  @override
  String get trashNotes => 'Notater';

  @override
  String get onboardWelcomeTitle => 'Velkommen til din nye arbeidsplass';

  @override
  String get onboardWelcomeBody =>
      'Oppgaver, fokus, kalender, notater, kort, mål og vaner – samlet og vakkert enkelt.';

  @override
  String get onboardPrivateTitle => 'Privat fra grunnen av';

  @override
  String get onboardPrivateBody =>
      'Alt blir kryptert på enheten. Ingen konto. Ingen sporing. Du bestemmer.';

  @override
  String get onboardLanguageTitle => 'Velg språket ditt';

  @override
  String get onboardNotifTitle => 'Vennlige påminnelser';

  @override
  String get onboardNotifBody =>
      'Tillat varsler for oppgavepåminnelser og fokusvarsler. Du kan endre dette når som helst.';

  @override
  String get onboardGetStarted => 'Kom i gang';

  @override
  String onboardStep(int current, int total) {
    return 'Trinn $current av $total';
  }

  @override
  String get notifChannelReminders => 'Påminnelser';

  @override
  String get notifChannelRemindersDesc => 'Påminnelser om oppgaver, hendelser, vaner og mål';

  @override
  String get notifChannelFocus => 'Fokustidtaker';

  @override
  String get notifChannelFocusDesc => 'Varsler når en fokusøkt eller pause er ferdig';

  @override
  String get notifTaskTitle => 'Oppgavepåminnelse';

  @override
  String get notifEventTitle => 'Kommende hendelse';

  @override
  String notifEventBody(String title, String time) {
    return '$title kl. $time';
  }

  @override
  String get notifFocusDoneTitle => 'Fokusøkten er fullført';

  @override
  String get notifFocusDoneBody => 'Godt jobbet. Tid for en pause.';

  @override
  String get notifBreakDoneTitle => 'Pausen er over';

  @override
  String get notifBreakDoneBody => 'Klar for neste fokusøkt?';

  @override
  String get notifHabitTitle => 'Påminnelse om vane';

  @override
  String get notifReviewTitle => 'Kortene dine er klare';

  @override
  String get notifReviewBody => 'En kort repetisjon holder hukommelsen sterk.';

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
    return 'Fremgang $value prosent';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritet: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Farge $index';
  }

  @override
  String get analyticsRangeLabel => 'Tidsrom';

  @override
  String get analyticsRefresh => 'Oppdater';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done av $total forfalte oppgaver ble fullført i tide';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done av $total oppgaver ferdige';
  }

  @override
  String get analyticsNoProjects => 'Ingen aktive prosjekter';

  @override
  String get analyticsNoFocus => 'Ingen fokusøkter i dette tidsrommet';

  @override
  String get analyticsHabitsNone => 'Ingen aktive vaner';

  @override
  String get analyticsRetentionNote => 'Andel lærte kort du husket';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Ledig tid telles $start–$end på arbeidsdager ($days), minus hendelser med klokkeslett. Anslått arbeid er summen av anslagene for åpne oppgaver som forfaller i løpet av 7 dager.';
  }

  @override
  String get assistantWorkdaysMonFri => 'mandag–fredag';

  @override
  String get assistantWorkdaysSunThu => 'søndag–torsdag';

  @override
  String get assistantWorkloadDayOff => 'Fridag';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planlagt · $free ledig';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planlagt fra nå til $end, rundt dagens hendelser. Forfalte oppgaver først, deretter prioritet, forfallsdato og anslag.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get assistantScheduleBlocks => 'Planlegg som tidsblokker';

  @override
  String get assistantScheduleConfirmTitle => 'Legge til tidsblokker i kalenderen?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tidsblokker blir lagt til i dagens kalender.',
      one: '1 tidsblokk blir lagt til i dagens kalender.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tidsblokker lagt til',
      one: '1 tidsblokk lagt til',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Allerede i kalenderen';

  @override
  String get assistantPlanTimeline => 'Får plass i dag';

  @override
  String get assistantNoEstimate => 'Legg til et anslag for å planlegge disse';

  @override
  String get assistantNoNotes => 'Ingen notater ennå. Skriv et notat først.';

  @override
  String get assistantNoteEmpty => 'Notatet er tomt.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oppgaver opprettet',
      one: '1 oppgave opprettet',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort opprettet',
      one: '1 kort opprettet',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Opprett $count',
      one: 'Opprett 1',
      zero: 'Ingenting valgt',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Gjenkjennes: tomme avkrysningsbokser «- [ ]» og linjer som begynner med TODO: eller To do:';

  @override
  String get assistantCardsHint =>
      'Gjenkjennes: «begrep: definisjon», «begrep — definisjon» og par av Q:/A:-linjer';

  @override
  String get assistantProviderHint =>
      'Bruk hvilken som helst OpenAI-kompatibel tjeneste. Nøkkelen blir i enhetens sikre lagring og blir aldri med i sikkerhetskopier.';

  @override
  String get assistantEndpointHelp => 'For eksempel https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'La feltet stå tomt for å beholde den lagrede nøkkelen';

  @override
  String get assistantApiKeyRequired => 'Skriv inn en API-nøkkel';

  @override
  String get assistantProviderSaved => 'Tjenesten er lagret';

  @override
  String get assistantProviderRemoved => 'Tjenesten er fjernet og nøkkelen slettet';

  @override
  String get assistantRemoveProviderConfirm =>
      'Fjerne tjenesten og slette den lagrede API-nøkkelen fra enheten?';

  @override
  String get assistantAskEveryTime => 'Spør før hver forespørsel';

  @override
  String get assistantSummarizing => 'Oppsummerer…';

  @override
  String assistantSummaryNote(String host) {
    return 'Laget av $host. Gå gjennom det før du stoler på det.';
  }

  @override
  String get assistantCopy => 'Kopier';

  @override
  String get assistantCopied => 'Kopiert';

  @override
  String get assistantConfigure => 'Konfigurer tjeneste';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get calendarSeriesMoved => 'Alle hendelsene i serien ble flyttet';

  @override
  String get calendarEventReminder => 'Påminnelse';

  @override
  String get calendarEventRepeat => 'Gjenta';

  @override
  String get calendarEventColor => 'Farge';

  @override
  String get calendarDefaultColor => 'Bruk typens farge';

  @override
  String get calendarEventLinkedTask => 'Koblet oppgave';

  @override
  String get calendarEventNoTask => 'Ingen koblet oppgave';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hendelser',
      one: '1 hendelse',
      zero: 'Ingen hendelser',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oppgaver forfaller',
      one: '1 oppgave forfaller',
      zero: 'ingen oppgaver forfaller',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Legg til en hendelse eller en tidsblokk for å planlegge dagen.';

  @override
  String get calendarNow => 'Nåværende tidspunkt';

  @override
  String get calendarRecurring => 'Gjentas';

  @override
  String get calendarEventNotFound => 'Hendelsen finnes ikke lenger';

  @override
  String get calendarEventLocalTime => 'Tider vises i enhetens tidssone';

  @override
  String get calendarEventDeleted => 'Hendelsen er flyttet til papirkurven';

  @override
  String get calendarConflictMarker => 'Overlapper med en annen hendelse';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Endringene gjelder alle hendelsene i serien';

  @override
  String get calendarDragHintSeries => 'Når du drar en gjentakende hendelse, flyttes hele serien';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, oppgave forfaller';
  }

  @override
  String get startupErrorTitle => 'Dataene dine kunne ikke åpnes';

  @override
  String get startupErrorLocked =>
      'Krypteringsnøkkelen for dataene på enheten er ikke tilgjengelig. Ingenting er slettet. Det hjelper ofte å starte enheten på nytt. Hvis du nylig har gjenopprettet enheten, kan du heller gjenopprette dataene fra en kryptert sikkerhetskopi.';

  @override
  String get startupErrorCipher =>
      'Enheten støtter ikke den krypterte lagringen appen trenger. Ingenting er lagret ukryptert.';

  @override
  String get startupErrorRetry => 'Prøv igjen';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort venter på repetisjon',
      one: '1 kort venter på repetisjon',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count til repetisjon';
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
  String get flashcardsValidationNonNegative => 'Skriv inn 0 eller mer';

  @override
  String get flashcardsSearchCards => 'Søk i kort';

  @override
  String get flashcardsSearchEmpty => 'Ingen kort passer til søket';

  @override
  String get flashcardsCardAdded => 'Kortet er lagt til';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Repetisjon $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopier til utklippstavlen';

  @override
  String get flashcardsExportTitle => 'Eksporter kortstokk';

  @override
  String get flashcardsDeleteDeck => 'Slett kortstokk';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, neste repetisjon om $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Spørsmål: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Svar: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Vis spørsmålet';

  @override
  String get flashcardsImportField => 'Kort som skal importeres';

  @override
  String get flashcardsNothingToStudy => 'Ingenting å øve på';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort klare til øving',
      one: '1 kort klart til øving',
      zero: 'Ingen kort klare',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Etter vurdering';

  @override
  String get flashcardsDeckNotFound => 'Kortstokken er ikke lenger tilgjengelig.';

  @override
  String get focusSessionDeleted => 'Økten er slettet';

  @override
  String get focusDeleteConfirm =>
      'Vil du slette økten fra historikken? Tiden teller da ikke lenger mot målene dine.';

  @override
  String get focusUnlinkTask => 'Fjern koblet oppgave';

  @override
  String get focusNoteHint => 'Hva jobbet du med?';

  @override
  String get focusTargetCaption => 'Målt fra lagrede økter';

  @override
  String get focusModeLabel => 'Tidtakermodus';

  @override
  String focusUpNext(String phase) {
    return 'Neste: $phase';
  }

  @override
  String get focusStopwatchHint => 'Teller opp til du stopper.';

  @override
  String get focusOpenHint => 'Ingen tidsgrense. Stopp når du er ferdig.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Påminnelser er slått av i innstillingene. Du får ikke beskjed når en økt er ferdig.';

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
  String get goalsEmptyFiltered => 'Ingen mål passer til filteret';

  @override
  String goalsDueOn(String date) {
    return 'Frist $date';
  }

  @override
  String get goalsDeadline => 'Frist (valgfritt)';

  @override
  String get goalsNoDeadline => 'Ingen frist';

  @override
  String get goalsSetDeadline => 'Angi frist';

  @override
  String get goalsRemoveDeadline => 'Fjern frist';

  @override
  String get goalsDescription => 'Beskrivelse (valgfritt)';

  @override
  String get goalsTitleLabel => 'Tittel';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Målet er nådd';

  @override
  String get goalsLogged => 'Fremgang registrert';

  @override
  String get goalsEntryDeleted => 'Oppføringen er fjernet';

  @override
  String get goalsDeleteEntry => 'Fjern oppføring';

  @override
  String get goalsDeleted => 'Målet er slettet';

  @override
  String get goalsMarkActive => 'Merk som aktivt';

  @override
  String get goalsNotFound => 'Målet er ikke lenger tilgjengelig';

  @override
  String get goalsLinkTask => 'Koble til en oppgave';

  @override
  String get goalsNoLinkedTasks => 'Ingen koblede oppgaver ennå';

  @override
  String get goalsUnlinkTask => 'Koble fra oppgave';

  @override
  String get goalsTaskOpen => 'Ikke fullført ennå';

  @override
  String get goalsTaskLinked => 'Oppgaven er koblet til';

  @override
  String get goalsTaskUnlinked => 'Oppgaven er koblet fra';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fullførte koblede oppgaver',
      one: '1 fullført koblet oppgave',
    );
    return 'Inkluderer $_temp0 i denne perioden';
  }

  @override
  String get goalsHistoryAllTime =>
      'Oppføringer fra tidligere perioder blir liggende her, men teller bare for sin egen periode.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done av $total gjort i dag';
  }

  @override
  String get habitsNothingToday => 'Ingen vaner er planlagt i dag';

  @override
  String get habitsDecrease => 'Fjern én avhuking';

  @override
  String get habitsResetToday => 'Nullstill i dag';

  @override
  String get habitsCheckInHint => 'Trykk lenge for å justere';

  @override
  String get habitsName => 'Navn';

  @override
  String get habitsColor => 'Farge';

  @override
  String get habitsValidationDays => 'Velg minst én dag';

  @override
  String habitsReminderAt(String time) {
    return 'Hver dag kl. $time';
  }

  @override
  String get habitsSetReminder => 'Angi tidspunkt for påminnelse';

  @override
  String get habitsRemoveReminder => 'Fjern påminnelse';

  @override
  String get habitsReminderNote => 'Påminnelser vises på planlagte dager når varsler er tillatt.';

  @override
  String get habitsArchived => 'Vanen er arkivert';

  @override
  String get habitsNotFound => 'Vanen er ikke lenger tilgjengelig';

  @override
  String get habitsLast30 => 'Siste 30 dager';

  @override
  String get habitsConsistencyNone => 'Ikke nok data ennå';

  @override
  String get habitsCalendar => 'Historikk over avhukinger';

  @override
  String get habitsCalendarHint => 'Trykk på en dag for å rette den.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count av $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Avhukinger de siste 90 dagene. Regelmessighet $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Avhukinger de siste 90 dagene. Ikke nok data ennå.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dager',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Dager på pause påvirker ikke rekken din.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arkiver vanen';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ganger om dagen',
      one: 'Én gang om dagen',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Andre notater';

  @override
  String get notesAllNotebooks => 'Alle notatbøker';

  @override
  String get notesNotebookName => 'Notatbokens navn';

  @override
  String get notesNotebookColor => 'Farge';

  @override
  String get notesDeleteNotebook => 'Slett notatbok';

  @override
  String get notesDeleteNotebookMessage =>
      'Notatboken fjernes. Notatene beholdes og vises under Alle notatbøker.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fest viktige notater så de blir liggende øverst.';

  @override
  String get notesEmptyFavorites => 'Notater du merker som favoritt, vises her.';

  @override
  String get notesEmptyArchived => 'Arkiverte notater vises her.';

  @override
  String get notesEmptyFiltered => 'Ingen notater passer til filtrene.';

  @override
  String get notesArchivedSnack => 'Notatet er arkivert';

  @override
  String get notesUnarchivedSnack => 'Notatet er flyttet tilbake til notatene dine';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done av $total ferdige';
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
  String get notesPreviewEmpty => 'Ingenting å forhåndsvise ennå.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Ingen andre notater lenker hit ennå. Lenk til dette notatet med [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle => 'Gi notatet en tittel, så andre notater kan lenke til det.';

  @override
  String get notesLinkedTasksEmpty => 'Ingen oppgaver er koblet til dette notatet.';

  @override
  String notesLinkMissing(String title) {
    return 'Det finnes ikke noe notat med tittelen «$title» ennå.';
  }

  @override
  String get notesNotFound => 'Notatet finnes ikke lenger.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Sjekklistepunkt: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Åpne notatet $title';
  }

  @override
  String get notesTagsHint => 'Legg til emneknagger ved å skrive #emne i notatet.';

  @override
  String get notesTaskDone => 'Fullført';

  @override
  String get notifTimerDoneBody => 'Tiden du stilte inn, har gått.';

  @override
  String get onboardingPrivatePointDevice => 'Lagres kryptert, bare på denne enheten';

  @override
  String get onboardingPrivatePointAccount => 'Ingen konto trengs';

  @override
  String get onboardingPrivatePointTracking => 'Ingen analyse, ingen sporing';

  @override
  String get onboardingLanguageBody => 'Du kan endre dette når som helst i Innstillinger.';

  @override
  String get onboardingNext => 'Neste';

  @override
  String get projectsActive => 'Aktive';

  @override
  String get projectNameHint => 'f.eks. Produktlansering';

  @override
  String get projectGoalHint => 'Hvordan ser ferdig ut?';

  @override
  String get projectNoDeadline => 'Ingen frist';

  @override
  String get projectTasksOpen => 'Åpne oppgaver';

  @override
  String get projectTasksCompleted => 'Fullførte oppgaver';

  @override
  String get projectAddTask => 'Legg oppgave til prosjektet';

  @override
  String get projectAddNote => 'Nytt prosjektnotat';

  @override
  String get projectLinkedNotes => 'Notater';

  @override
  String get projectNoTasks => 'Ingen oppgaver i prosjektet ennå';

  @override
  String get projectArchivedBadge => 'Arkivert';

  @override
  String get projectDeleted => 'Prosjektet er flyttet til papirkurven';

  @override
  String get projectDeleteMessage => 'Oppgavene blir værende i listen din uten prosjekt.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent prosent fullført';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count treff',
      one: '1 treff',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtrer etter type';

  @override
  String searchRecentTap(String query) {
    return 'Søk igjen etter $query';
  }

  @override
  String get settingsLanguageHint => 'Velg språk for hele appen. Navnene vises på sitt eget språk.';

  @override
  String get settingsThemeHint => 'Lyst, mørkt eller som systemet';

  @override
  String settingsDecrease(String setting) {
    return 'Reduser $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Øk $setting';
  }

  @override
  String get settingsQuietStart => 'Starter';

  @override
  String get settingsQuietEnd => 'Slutter';

  @override
  String get settingsNotificationsHint =>
      'Dette lagrer valget ditt i appen. Systemet kan også be om tillatelse.';

  @override
  String get settingsDashboardHint => 'Dra for å endre rekkefølgen. Slå av deler du ikke trenger.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Flytt $section';
  }

  @override
  String get settingsDashboardReset => 'Gjenopprett standardrekkefølge';

  @override
  String get settingsAssistantDesc =>
      'Valgfri planleggingshjelp. Ingenting forlater enheten med mindre du kobler til en tjeneste.';

  @override
  String get settingsAssistantSetup => 'Assistent og tjenesteoppsett';

  @override
  String get settingsTrashDesc => 'Gjenopprett eller slett fjernede elementer for godt';

  @override
  String get settingsEraseFirstBody =>
      'Dette kan ikke angres. Vurder å lage en kryptert sikkerhetskopi først.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Skriv $word';
  }

  @override
  String get settingsEraseFailed => 'Dataene kunne ikke slettes. Ingenting er endret.';

  @override
  String get settingsAboutTagline => 'En privat produktivitetsplass som fungerer lokalt.';

  @override
  String get backupShowPassword => 'Vis passordet';

  @override
  String get backupHidePassword => 'Skjul passordet';

  @override
  String get backupSaved => 'Sikkerhetskopien er lagret';

  @override
  String get backupFailed => 'Sikkerhetskopien kunne ikke lages. Dataene dine er uendret.';

  @override
  String get backupReadFailed => 'Den valgte filen kunne ikke leses.';

  @override
  String get backupRestoreFailed => 'Gjenopprettingen mislyktes. Ingenting er endret.';

  @override
  String get backupShareSubject => 'Kryptert sikkerhetskopi fra Deep Focus';

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
      other: 'Hver $count. uke',
      one: 'Hver uke',
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
    return 'på $days';
  }

  @override
  String get repeatEndsLabel => 'Slutter';

  @override
  String get repeatEndsAfter => 'Etter et antall ganger';

  @override
  String get repeatCountLabel => 'Antall ganger';

  @override
  String get reminderNone => 'Ingen påminnelse';

  @override
  String get reminderCustomTime => 'På et bestemt tidspunkt';

  @override
  String get a11yDecrease => 'Reduser';

  @override
  String get a11yIncrease => 'Øk';

  @override
  String get pickTaskTitle => 'Velg en oppgave';

  @override
  String get pickTaskEmpty => 'Ingen åpne oppgaver';

  @override
  String get tasksSearchTooltip => 'Søk i oppgaver';

  @override
  String get tasksSectionOverdue => 'Forfalt';

  @override
  String get tasksSectionToday => 'I dag';

  @override
  String get tasksRecurringSemantics => 'Gjentas';

  @override
  String get tasksFilterPriorityAtLeast => 'Laveste prioritet';

  @override
  String get tasksFilterCategory => 'Kategori';

  @override
  String get tasksFilterAnyCategory => 'Alle kategorier';

  @override
  String get tasksFilterLabel => 'Etikett';

  @override
  String get tasksFilterAnyLabel => 'Alle etiketter';

  @override
  String get tasksFilterReset => 'Tilbakestill filtre';

  @override
  String get tasksViewByProject => 'Etter prosjekt';

  @override
  String get tasksViewByPriority => 'Etter prioritet';

  @override
  String get tasksViewByCategory => 'Etter kategori';

  @override
  String get tasksGroupNoCategory => 'Ingen kategori';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oppgaver',
      one: '1 oppgave',
    );
    return 'Blokkert av $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Oppgaven er blokkert av uferdige oppgaver. Vil du fullføre den likevel?';

  @override
  String get taskStartFocus => 'Fokuser på denne oppgaven';

  @override
  String get taskRemoveDate => 'Fjern dato';

  @override
  String get taskAllDay => 'Uten klokkeslett';

  @override
  String get taskSaved => 'Oppgaven er lagret';

  @override
  String get taskCreated => 'Oppgaven er opprettet';

  @override
  String get taskReminderNeedsDue => 'Angi en forfallsdato for å bruke relative påminnelser';

  @override
  String get taskSubtaskDetailsHint =>
      'Lagre oppgaven først for å legge til deloppgaver, sjekklistepunkter, etiketter og avhengigheter.';

  @override
  String get taskLabelName => 'Etikettens navn';

  @override
  String get taskMoreDetails => 'Detaljer';

  @override
  String get taskPlanning => 'Planlegging';

  @override
  String get taskOrganize => 'Organiser';

  @override
  String get taskBreakdown => 'Oppdeling';

  @override
  String get trashDeleteTaskTitle => 'Slette oppgaven for godt?';

  @override
  String get trashDeleteNoteTitle => 'Slette notatet for godt?';

  @override
  String get trashDeleteBody => 'Dette kan ikke angres.';

  @override
  String get trashEmptyTitle => 'Tømme papirkurven?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementer slettes for godt.',
      one: '1 element slettes for godt.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Gjenopprettet';

  @override
  String get trashPurged => 'Slettet for godt';

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
  String get flashcardsReadAloud => 'Les opp';

  @override
  String get flashcardsTtsUnavailable => 'Tekst til tale er ikke tilgjengelig på denne enheten.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Ingen stemme er installert for dette språket. Legg til en i Androids innstillinger for tekst til tale.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Gnist',
      'rocket': 'Rakett',
      'book': 'Bok',
      'work': 'Jobb',
      'home': 'Hjem',
      'heart': 'Hjerte',
      'code': 'Kode',
      'palette': 'Palett',
      'fitness': 'Trening',
      'school': 'Skole',
      'travel': 'Reise',
      'money': 'Sparing',
      'other': 'Ikon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Flere felt';

  @override
  String get cardFieldExample => 'Eksempel';

  @override
  String get cardFieldExplanation => 'Forklaring';

  @override
  String get cardFieldPronunciation => 'Uttale';

  @override
  String get cardFieldNotes => 'Flere notater';

  @override
  String get projectMilestones => 'Milepæler';

  @override
  String get milestoneAdd => 'Legg til milepæl';

  @override
  String get milestoneEdit => 'Rediger milepæl';

  @override
  String get milestoneTitleLabel => 'Milepæl';

  @override
  String get milestoneNoDate => 'Ingen dato';

  @override
  String get milestonesEmpty =>
      'Ingen milepæler ennå. Legg til sjekkpunkter med datoer for å følge prosjektet i kalenderen.';

  @override
  String get milestoneDeleted => 'Milepælen er slettet';

  @override
  String milestoneDoneA11y(String title) {
    return 'Merk milepælen «$title» som ferdig';
  }

  @override
  String calendarMilestone(String project) {
    return 'Milepæl · $project';
  }

  @override
  String get tasksViewInbox => 'Innboks';

  @override
  String get tasksViewArchived => 'Arkivert';

  @override
  String get tasksEmptyInbox =>
      'Oppgaver uten prosjekt eller dato havner her. Sorter dem når du har et øyeblikk.';

  @override
  String get tasksEmptyArchived =>
      'Arkiverte oppgaver tas vare på her, utenfor listene og påminnelsene dine.';

  @override
  String get taskArchivedBadge => 'Arkivert';

  @override
  String get taskStatusInProgress => 'Pågår';

  @override
  String get taskArchived => 'Oppgaven er arkivert';

  @override
  String get taskUnarchived => 'Oppgaven er hentet fra arkivet';

  @override
  String get focusPlanTitle => 'Øktplan';

  @override
  String focusPlanTotal(String duration) {
    return 'Totalt $duration';
  }

  @override
  String get focusPlanRounds => 'Fokusøkter';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Lang pause etter';

  @override
  String get focusPlanSkipLastBreak => 'Hopp over siste pause';

  @override
  String get focusPlanAutoBreaks => 'Start pauser automatisk';

  @override
  String get focusPlanAutoFocus => 'Start fokus automatisk etter en pause';

  @override
  String get focusPlanSave => 'Lagre plan';

  @override
  String get focusPlanNameHint => 'f.eks. Eksamensforberedelse';

  @override
  String get focusPlanSaved => 'Planen er lagret';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min fokus, $rest min pause';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Reduser $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Øk $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Økt $current av $total';
  }

  @override
  String get focusSeriesComplete => 'Serien er fullført. Godt jobbet!';

  @override
  String get filterAll => 'Alle';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importert · $duplicates duplikater hoppet over · $invalid ufullstendige rader';
  }

  @override
  String get flashcardsSuspend => 'Sett kortet på pause';

  @override
  String get flashcardsResume => 'Gjenoppta kortet';

  @override
  String get flashcardsSuspended => 'Kortet er satt på pause: det planlegges ikke';

  @override
  String get flashcardsResumed => 'Kortet er gjenopptatt';

  @override
  String get flashcardsSuspendedFilter => 'På pause';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown av $total kort';
  }

  @override
  String get flashcardsImportFile => 'Fra fil';

  @override
  String get speechTitle => 'Tale';

  @override
  String get speechAppLanguage => 'Appens språk';

  @override
  String get speechFrontLanguage => 'Forsidens språk';

  @override
  String get speechBackLanguage => 'Baksidens språk';

  @override
  String get speechRepeat => 'Gjenta hver opplesning';

  @override
  String get speechRate => 'Hastighet';

  @override
  String get speechAutoRead => 'Les opp spørsmålet automatisk';

  @override
  String get speechHint =>
      'Bruker stemmene som er installert på enheten, uten nett. Hvis et språk ikke har noen stemme, får du beskjed, og ingenting annet brukes i stedet.';

  @override
  String get studyHowTitle => 'Hvordan vil du øve?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Repeter $count kort',
      one: 'Repeter 1 kort',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Øv på alle kort (planen endres ikke)';

  @override
  String get studyPracticeMistakes => 'Øv på nylige feil';

  @override
  String get studyPracticeHint =>
      'Øverunder endrer aldri når kortene skal repeteres. Repetisjon oppdaterer planen.';

  @override
  String get studyModeClassic => 'Klassisk';

  @override
  String get studyModeReverse => 'Omvendt';

  @override
  String get studyModeMixed => 'Begge veier';

  @override
  String get studyModeTyped => 'Skriv svaret';

  @override
  String get studyModeChoice => 'Flervalg';

  @override
  String get studyModeListening => 'Lytting';

  @override
  String get studyPractice => 'øving';

  @override
  String get studyNoMistakes => 'Ingen nylige feil i denne kortstokken. Flott!';

  @override
  String get studyTypeAnswer => 'Skriv svaret ditt';

  @override
  String get studyCheck => 'Sjekk';

  @override
  String get studyKnewIt => 'Det kunne jeg';

  @override
  String get studyDidntKnow => 'Kunne det ikke';

  @override
  String studyMistakes(int count) {
    return 'Bommet ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Gjenta kortene du bommet på';

  @override
  String get studyCorrect => 'Riktig';

  @override
  String get studyAlmost => 'Nesten – sjekk stavingen';

  @override
  String get studyWrong => 'Ikke helt';

  @override
  String get studyShowText => 'Vis teksten';

  @override
  String get flashcardsImportFileFailed =>
      'Filen kunne ikke åpnes. Du kan lime inn innholdet i stedet.';

  @override
  String get studyNoMatchingCards => 'Ingen kort passer til dette valget ennå.';

  @override
  String get studyPracticeNew => 'Bare nye';

  @override
  String get studyPracticeHard => 'Vanskelige kort';

  @override
  String get studyPracticeFavorites => 'Favoritter';

  @override
  String get studySessionSize => 'Kort per økt';

  @override
  String get studySessionAll => 'Alle';

  @override
  String get studyOrder => 'Rekkefølge';

  @override
  String get studyOrderDue => 'Mest forfalte først';

  @override
  String get studyOrderRandom => 'Tilfeldig';

  @override
  String get studyOrderHardest => 'Vanskeligste først';

  @override
  String get flashcardsHard => 'Vanskelige';

  @override
  String get flashcardsFavorites => 'Favoritter';

  @override
  String get flashcardsFavorite => 'Legg til i favoritter';

  @override
  String get flashcardsUnfavorite => 'Fjern fra favoritter';

  @override
  String get flashcardsDuplicate => 'Dupliser';

  @override
  String get flashcardsMoveTo => 'Flytt til kortstokk';

  @override
  String get flashcardsNoOtherDeck => 'Lag en annen kortstokk først.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort er flyttet',
      one: 'Kortet er flyttet',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Legg til emneknagg';

  @override
  String get flashcardsTagHint => 'f.eks. verb';

  @override
  String flashcardsSelected(int count) {
    return '$count valgt';
  }

  @override
  String get flashcardsSelectAll => 'Velg alle som vises';

  @override
  String flashcardsSelectCard(String front) {
    return 'Velg $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Husker $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Mulig duplikat';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Kortstokken har allerede «$front» → «$back». Lagre likevel?';
  }

  @override
  String get flashcardsSaveAnyway => 'Lagre likevel';

  @override
  String get flashcardsStats => 'Statistikk';

  @override
  String get flashcardsStatTotal => 'Kort';

  @override
  String get flashcardsStatLearning => 'Under innlæring';

  @override
  String get flashcardsStatMatureCaption => 'Husket i 21+ dager';

  @override
  String get flashcardsStatReviewsToday => 'Repetisjoner i dag';

  @override
  String get flashcardsStatCorrect => 'Riktige svar';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Siste $days dager';
  }

  @override
  String get flashcardsStatForget => 'Glemselsrate';

  @override
  String get flashcardsStatForgetCaption => '«Igjen» på lærte kort';

  @override
  String get flashcardsStatRecall => 'Husker nå';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-anslag, repeterte kort';

  @override
  String flashcardsStatActivity(int count) {
    return 'Repetisjoner per dag · $count totalt';
  }

  @override
  String get flashcardsStatHistory => 'Siste svar';

  @override
  String get flashcardsStatNoHistory =>
      'Ingen repetisjoner ennå. Øv på kortstokken for å se fremgangen din her.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Les opp $field';
  }

  @override
  String get speechVoice => 'Stemme';

  @override
  String get speechVoiceDefault => 'Automatisk';

  @override
  String get speechVoiceOnline => 'trenger internett';

  @override
  String get speechTest => 'Test stemmen';

  @override
  String get importNext => 'Forhåndsvisning';

  @override
  String get importPreviewTitle => 'Koble kolonner til felt';

  @override
  String get importIgnoreColumn => 'Ignorer';

  @override
  String importColumn(int n) {
    return 'Kolonne $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kort klare · $invalid ufullstendige rader hoppes over';
  }

  @override
  String get importNeedFrontBack => 'Velg hvilke kolonner som er forside og bakside.';

  @override
  String get actionMoveUp => 'Flytt opp';

  @override
  String get actionMoveDown => 'Flytt ned';

  @override
  String get flashcardsLayoutTitle => 'Kortoppsett';

  @override
  String get flashcardsLayoutHint =>
      'Gi nytt navn til, skjul eller omorganiser de ekstra feltene i kortstokken. Innholdet i kortene endres aldri.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Vis $field under øving';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Vis svaret trinn for trinn';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Baksiden vises først; hvert ekstra felt åpnes med et trykk.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Vis $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Filen er større enn $mb MB.';
  }

  @override
  String get flashcardsImage => 'Bilde';

  @override
  String get flashcardsAudio => 'Lyd';

  @override
  String get flashcardsAddImage => 'Legg til bilde';

  @override
  String get flashcardsAddAudio => 'Legg til lyd';

  @override
  String get flashcardsPlayAudio => 'Spill av opptaket';

  @override
  String get flashcardsAudioUnavailable => 'Opptaket kan ikke spilles av på denne enheten.';

  @override
  String get flashcardsCustomFields => 'Feltene dine';

  @override
  String get flashcardsTemplates => 'Maler';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Felt $n';
  }

  @override
  String get flashcardsAddField => 'Legg til felt';

  @override
  String get flashcardsFieldName => 'Feltets navn';

  @override
  String get flashcardsFieldLangDefault => 'Sidens språk';

  @override
  String get flashcardsTemplateConfirm =>
      'Malen bestemmer hvordan feltene vises, og legger til sine felt. Kortene og de eksisterende feltene dine forblir som de er.';

  @override
  String get flashcardsApplyTemplate => 'Bruk';

  @override
  String get templateVocabulary => 'Ordforråd';

  @override
  String get templateTwoTranslations => 'Ord med to oversettelser';

  @override
  String get templateQuestionAnswer => 'Spørsmål og svar';

  @override
  String get templateDefinition => 'Begrep og definisjon';

  @override
  String get templateGrammar => 'Grammatikkregel';

  @override
  String get templateFieldPlural => 'Flertall';

  @override
  String get templateFieldTranslation2 => 'Andre oversettelse';

  @override
  String get templateFieldSynonyms => 'Synonymer';

  @override
  String get templateFieldRule => 'Regel';

  @override
  String get deckCategory => 'Nivå eller emne';

  @override
  String get deckCategoryHint => 'f.eks. A1, Medisin';

  @override
  String get flashcardsSearchAll => 'Søk i alle kort';

  @override
  String get flashcardsSearchAllHint => 'Ord, oversettelse, eksempel, notat, emneknagg…';

  @override
  String get flashcardsAllDecks => 'Alle kortstokker';

  @override
  String get flashcardsAllLanguages => 'Alle språk';

  @override
  String get flashcardsLangUnset => 'Språk ikke angitt';

  @override
  String get flashcardsLevelUnset => 'Uten nivå eller emne';

  @override
  String get flashcardsByLanguage => 'Fremgang per språk';

  @override
  String get flashcardsByLevel => 'Fremgang per nivå eller emne';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks kortstokker · $cards kort · $mature lært · $due til repetisjon · $correct riktige (30 dager)';
  }

  @override
  String get flashcardsRecord => 'Ta opp';

  @override
  String get flashcardsRecording => 'Tar opp…';

  @override
  String get flashcardsRecordStop => 'Stopp og behold';

  @override
  String get flashcardsMicDenied =>
      'Tilgang til mikrofonen er slått av. Tillat den i systeminnstillingene for å ta opp.';

  @override
  String get flashcardsRecordFailed => 'Opptak er ikke tilgjengelig på denne enheten.';

  @override
  String get soundsTitle => 'Lyder';

  @override
  String get soundsNature => 'Natur';

  @override
  String get soundsNoise => 'Fokusstøy';

  @override
  String get soundRain => 'Regn';

  @override
  String get soundStorm => 'Tordenvær';

  @override
  String get soundRiver => 'Elv';

  @override
  String get soundOcean => 'Havbølger';

  @override
  String get soundFire => 'Leirbål';

  @override
  String get soundForest => 'Skogsfugler';

  @override
  String get soundNight => 'Sommernatt';

  @override
  String get soundWhite => 'Hvit støy';

  @override
  String get soundPink => 'Rosa støy';

  @override
  String get soundBrown => 'Brun støy';

  @override
  String get soundsPlay => 'Spill av';

  @override
  String get soundsSleep => 'Søvntidtaker';

  @override
  String get soundsSleepOff => 'Av';

  @override
  String soundsSleepAt(String time) {
    return 'Stopper kl. $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Opptil $count lyder kan spilles samtidig.';
  }

  @override
  String get soundsHint =>
      'Trykk på en lyd for å starte. Bland flere og still inn volumet for hver.';

  @override
  String get soundsMixer => 'Miks';

  @override
  String soundsVolumeOf(String name) {
    return 'Volum for $name';
  }

  @override
  String get soundsChannel => 'Naturlyder';

  @override
  String get settingsEndTone => 'Lyd når tidtakeren er ferdig';

  @override
  String get toneGentle => 'Myke pip';

  @override
  String get toneBeeps => 'Pip';

  @override
  String get toneWood => 'Bank i tre';

  @override
  String get toneBird => 'Fuglerop';

  @override
  String get toneStream => 'Bekk';

  @override
  String get toneSystem => 'Telefonens lyd';

  @override
  String get speechOnPhone => 'På denne telefonen';

  @override
  String get speechAllLanguages => 'Alle språk';

  @override
  String get speechSearchLanguage => 'Søk etter språk';

  @override
  String get speechGetVoices => 'Last ned flere stemmer';

  @override
  String get speechGetVoicesHint =>
      'Språk uten stemme kan lastes ned i telefonens taleinnstillinger.';

  @override
  String get speechSettingsFailed => 'Kunne ikke åpne taleinnstillingene på denne telefonen.';

  @override
  String get speechVoiceMissing => 'Ingen stemme installert';

  @override
  String get speechPause => 'Pause mellom gjentakelser';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Les opp eksemplet sammen med svaret';

  @override
  String get flashListen => 'Lytt';

  @override
  String get flashListenNext => 'Neste kort';

  @override
  String get flashListenEmpty => 'Ingen kort å lytte til.';

  @override
  String get flashViewTable => 'Tabell';

  @override
  String get flashViewCards => 'Kort';

  @override
  String get flashSwapSides => 'Bytt kolonner';

  @override
  String get flashSort => 'Sorter';

  @override
  String get flashSortNewest => 'Nyeste først';

  @override
  String get flashSortAlpha => 'A til Å';

  @override
  String get flashSortDue => 'Til repetisjon først';

  @override
  String get flashSortHard => 'Vanskeligste først';

  @override
  String get flashPasteCards => 'Lim inn kort';

  @override
  String get flashClipboardEmpty => 'Utklippstavlen har ingen tekst.';

  @override
  String get flashMenuAdd => 'Legg til kort';

  @override
  String get flashMenuDeck => 'Kortstokk';

  @override
  String get flashToday => 'I dag';

  @override
  String get flashStudyNow => 'Øv';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort besvart',
      one: '1 kort besvart',
      zero: 'Ingen kort besvart',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Regn i skogen';

  @override
  String get autoBackupTitle => 'Automatiske sikkerhetskopier';

  @override
  String get autoBackupDesc => 'Hver dag på denne telefonen; de 7 siste beholdes';

  @override
  String get autoBackupHint =>
      'Kopiene blir liggende på denne telefonen og fjernes hvis appen avinstalleres. Bruk «Ta sikkerhetskopi» for å lagre en fil når du bytter telefon.';

  @override
  String get autoBackupNone => 'Ingen automatisk sikkerhetskopi ennå. Den første lages i dag.';

  @override
  String get autoBackupRestore => 'Gjenopprett';

  @override
  String autoBackupConfirm(String date) {
    return 'Erstatte alle nåværende data med sikkerhetskopien fra $date?';
  }

  @override
  String get autoBackupRestored => 'Gjenopprettet.';

  @override
  String get errorLogTitle => 'Feillogg';

  @override
  String get errorLogHint =>
      'Hvis noe går galt, noteres det her: bare typen feil og hvor i koden, aldri innholdet ditt. Del den for å hjelpe til med å løse problemet.';

  @override
  String get errorLogEmpty => 'Ingen feil registrert.';

  @override
  String get errorLogClear => 'Tøm';

  @override
  String get soundsWithFocus => 'Spill av med fokusøkter';

  @override
  String get soundsWithFocusHint =>
      'Miksen din starter med en fokusøkt og settes på pause i pausene.';

  @override
  String get soundsSavedMixes => 'Lagrede mikser';

  @override
  String get soundsSaveMix => 'Lagre denne miksen';

  @override
  String get soundsMixNameHint => 'Navn, f.eks. Regnfullt bibliotek';

  @override
  String soundsDeleteMix(String name) {
    return 'Slette miksen «$name»?';
  }

  @override
  String get settingsReviewReminderHint => 'Én gang om dagen, bare når det er kort å repetere';

  @override
  String get settingsReviewTime => 'Tidspunkt for påminnelse';

  @override
  String get shortcutFocus => 'Fokus';

  @override
  String get shortcutNewTask => 'Ny oppgave';

  @override
  String get shortcutReview => 'Repeter kort';

  @override
  String get shortcutSounds => 'Naturlyder';

  @override
  String get myDayTitle => 'Start dagen min';

  @override
  String get myDayHint => 'Dagen din på et blunk, så fokus med ett trykk';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oppgaver i dag',
      one: '1 oppgave i dag',
      zero: 'Ingen oppgaver i dag',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Ingen flere hendelser i dag';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Neste: $title kl. $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vaner igjen',
      one: '1 vane igjen',
      zero: 'Alle vaner er gjort',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Begynn med en fokusøkt';

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
  String get settingsHijri => 'Islamske datoer';

  @override
  String get settingsHijriHint => 'Vises i kalenderen og på startskjermen (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dager',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done av $goal kort i dag';
  }

  @override
  String get studyGoalReached => 'Dagsmålet er nådd. Godt jobbet!';

  @override
  String get studyWeekTitle => 'Uken din';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort besvart på 7 dager',
      one: '1 kort besvart på 7 dager',
      zero: 'Ingen kort besvart på 7 dager',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fokus på 7 dager';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Rekke: $current · Beste: $best';
  }

  @override
  String get studyGoalTitle => 'Dagsmål (kort)';

  @override
  String get studyGoalOff => 'Av';

  @override
  String get focusDndTitle => 'Ikke forstyrr under fokus';

  @override
  String get focusDndHint => 'Slås på ved hver fokusøkt og av igjen i pausen';

  @override
  String get focusDndNeedsAccess => 'Tillat tilgang i telefoninnstillingene for å bruke dette';

  @override
  String get voiceInput => 'Snakk for å skrive';

  @override
  String get voiceInputPrompt => 'Snakk nå';

  @override
  String get voiceInputUnavailable =>
      'Taleinntasting er ikke tilgjengelig på denne telefonen. Installer eller slå på en taletjeneste (for eksempel Talegjenkjenning og -syntese fra Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Soloppgang';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Den muslimske verdensligaen';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egypts generelle myndighet';

  @override
  String get prayerMethodJordan => 'Jordan, departementet for awqaf';

  @override
  String get prayerMethodKarachi => 'Universitetet for islamske vitenskaper, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Golfregionen';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Tyrkia, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malaysia, Indonesia';

  @override
  String get prayerMethodFrance => 'Frankrike (12°)';

  @override
  String get prayerMethodRussia => 'Russland, den åndelige forvaltningen';

  @override
  String prayerNotifTitle(String name) {
    return 'Tid for $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Bønnetid · $time';
  }

  @override
  String get prayerTitle => 'Bønnetider';

  @override
  String get prayerOffHint =>
      'Velg byen din for å se bønnetidene. De beregnes på telefonen; ingen posisjonstilgang trengs.';

  @override
  String get prayerChooseCity => 'Velg by';

  @override
  String get prayerCity => 'By';

  @override
  String get prayerCitySearch => 'Søk etter en by';

  @override
  String get prayerMethod => 'Beregningsmetode';

  @override
  String get prayerHanafiAsr => 'Hanafi-asr (senere tidspunkt)';

  @override
  String get prayerReminders => 'Varsle ved hver bønnetid';

  @override
  String get prayerPauseFocus => 'Sett fokus på pause ved bønnetid';

  @override
  String get prayerPauseFocusHint => 'En pågående økt settes på pause; fortsett etter bønnen';

  @override
  String get prayerTurnOff => 'Slå av bønnetider';

  @override
  String get prayerAccuracyNote => 'Beregnede tider kan avvike noen minutter fra din lokale moské.';

  @override
  String prayerNext(String name, String time) {
    return '$name kl. $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Denne Anki-filen bruker det nyeste formatet. Eksporter på nytt i Anki med «Støtt eldre Anki-versjoner» slått på, og importer den filen.';

  @override
  String get importTemplate => 'Regnearkmal';

  @override
  String get importTemplateFront => 'eple';

  @override
  String get importTemplateBack => 'en rund frukt';

  @override
  String get importTemplateExample => 'Jeg spiser et eple hver dag.';

  @override
  String get importTemplateTag => 'mat';

  @override
  String get starterTitle => 'Startkortstokker';

  @override
  String get starterHint =>
      'Legg til en for å begynne å øve med en gang. Du kan redigere eller slette den senere.';

  @override
  String get starterAdd => 'Legg til';

  @override
  String get starterWords => 'Hverdagsord på engelsk (arabisk)';

  @override
  String get starterCapitals => 'Verdens hovedsteder';

  @override
  String get starterElements => 'Grunnstoffer';

  @override
  String get settingsAccent => 'Aksentfarge';

  @override
  String get accentViolet => 'Fiolett';

  @override
  String get accentBlue => 'Blå';

  @override
  String get accentTeal => 'Blågrønn';

  @override
  String get accentGreen => 'Grønn';

  @override
  String get accentRose => 'Rosa';

  @override
  String get accentAmber => 'Rav';

  @override
  String get settingsFlashTextSize => 'Tekststørrelse på kort';

  @override
  String get settingsFlashTextSample => 'Eksempel';

  @override
  String get widgetStartFocus => 'Trykk for å fokusere';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokus til $time';
  }

  @override
  String get widgetNoCardsDue => 'Kort: alt er gjort';

  @override
  String get faqMyDayQ => 'Hva gjør «Start dagen min»?';

  @override
  String get faqMyDayA =>
      'Én gang om dagen tilbyr startskjermen den: se dagens oppgaver, neste hendelse, vanene som gjenstår og kort å repetere, og start så en fokusøkt med ett trykk. Trykk lenge på appikonet for hurtighandlinger, eller legg til moduler på startskjermen for å se fokustid og kort å repetere.';

  @override
  String get faqTasksQ => 'Hvordan legger jeg til en oppgave med påminnelse?';

  @override
  String get faqTasksA =>
      'Trykk på Ny oppgave på Hjem eller + i Oppgaver. Skriv tittelen eller si den med mikrofonen, og angi så forfallsdato, klokkeslett og påminnelse. Forfalte oppgaver vises først.';

  @override
  String get faqFocusQ => 'Hvordan fungerer fokustidtakeren?';

  @override
  String get faqFocusA =>
      'Velg Pomodoro, nedtelling eller fri tid og trykk på Start; pauser kan følge automatisk. I Innstillinger kan du velge sluttlyden, slå på Ikke forstyrr under fokus og spille naturlydene dine ved hver økt.';

  @override
  String get faqSoundsQ => 'Kan jeg blande naturlyder?';

  @override
  String get faqSoundsA =>
      'Slå på opptil seks ekte opptak, still inn volumet for hvert og lagre miksen med et navn. De fortsetter å spille i bakgrunnen, og en søvntidtaker kan stoppe dem. Ingen musikk brukes.';

  @override
  String get faqCalendarQ => 'Kan kalenderen vise islamske datoer?';

  @override
  String get faqCalendarA =>
      'Ja. Islamske datoer (Umm al-Qura) vises automatisk på arabisk og kan slås på i Innstillinger for alle språk. Hendelser, oppgaver med forfallsdato og prosjektenes milepæler vises sammen.';

  @override
  String get faqFlashcardsQ => 'Hvordan bestemmer repetisjonen hvilke kort jeg ser?';

  @override
  String get faqFlashcardsA =>
      'Kort du kan godt, kommer tilbake etter lengre tid, og kort du bommer på, kommer snart tilbake (repetisjon med mellomrom). Vurder hvert svar med Igjen, Vanskelig, Bra eller Lett. Sett et dagsmål og hold rekken din på kortet I dag. Angi en eksamensdato for en kortstokk for å se hvor mange dager som er igjen og hvor mange nye kort du skal lære hver dag. Sorter etter \"Min rekkefølge\" for å dra kortene på plass, trykk på høyttaleren på en av sidene for å høre den, og still inn hastighet og gjentakelser i Tale-menyen.';

  @override
  String get faqImportQ => 'Kan jeg hente kort fra Anki eller Excel?';

  @override
  String get faqImportA =>
      'Ja. Velg Importer i en kortstokk og velg en fil: Anki (.apkg), Excel (.xlsx) eller CSV, og koble kolonnene. Bruk «Regnearkmal» for å skrive kort på en datamaskin. Bilder og lyder i Anki-filer importeres ikke.';

  @override
  String get faqNotesQ => 'Hva kan notater gjøre?';

  @override
  String get faqNotesA =>
      'Skriv fritt med sjekklister og formatering, fest viktige notater eller merk dem som favoritter, legg til emneknagger og koble notater til oppgaver. Med mikrofonknappen kan du diktere. Et nytt notat kan starte fra en mal (forelesning, boksammendrag, dagbok, ukeplan), og bildeknappen legger til bilder.';

  @override
  String get faqHabitsQ => 'Hvordan telles vanerekker?';

  @override
  String get faqHabitsA =>
      'En dag teller når du når målet for vanen på en planlagt dag. Når du setter en vane på pause, er rekken trygg. Hver vane kan ha sitt eget tidspunkt for påminnelse.';

  @override
  String get faqGoalsQ => 'Hvordan følger mål fremgangen?';

  @override
  String get faqGoalsA =>
      'Gi et mål en målverdi og en enhet, og registrer fremgangen. Kortet viser hvor langt du har kommet og hvor mye som gjenstår før fristen.';

  @override
  String get faqProjectsQ => 'Hva er prosjekter til?';

  @override
  String get faqProjectsA =>
      'Samle oppgaver i et prosjekt, legg til milepæler med datoer og følg den samlede fremgangen. Milepælene vises også i kalenderen.';

  @override
  String get faqInsightsQ => 'Hva viser Innsikt?';

  @override
  String get faqInsightsA =>
      'Fokustiden din, fullførte oppgaver og studier over dager og uker, med rolige forslag. Alt beregnes på telefonen din.';

  @override
  String get faqSpacesQ => 'Hvor er alle delene?';

  @override
  String get faqSpacesA =>
      'Rom viser alle delene av appen (notater, kortstokker, vaner, mål, prosjekter, lyder og mer), så hovedlinjen forblir enkel.';

  @override
  String get faqBackupQ => 'Hvordan sikkerhetskopieres dataene mine?';

  @override
  String get faqBackupA =>
      'Hver dag lagrer appen i stillhet en kryptert kopi på denne telefonen og beholder de 7 siste. I Innstillinger kan du også eksportere en passordbeskyttet sikkerhetskopifil og gjenopprette den på en annen telefon.';

  @override
  String get faqPrayerQ => 'Hvordan fungerer bønnetidene?';

  @override
  String get faqPrayerA =>
      'Velg byen din i Innstillinger → Bønnetider. Tidene beregnes på telefonen med metoden som brukes der, og du kan endre metoden og asr-skolen. Du kan få varsel ved hver bønn, og en pågående fokusøkt settes på pause.';

  @override
  String get faqPrivacyQ => 'Hvor lagres dataene mine?';

  @override
  String get faqPrivacyA =>
      'Bare på telefonen din, i en kryptert database. Ingen konto og ingen sporing. Internett brukes bare av funksjoner du slår på selv, som den valgfrie assistenten.';

  @override
  String get faqAssistantQ => 'Hva er assistenten?';

  @override
  String get faqAssistantA =>
      'En valgfri hjelper du kobler til din egen KI-tjeneste i Innstillinger. Den er slått av som standard og spør før den sender tekst fra et notat.';

  @override
  String get tourPlanTitle => 'Planlegg dagen din';

  @override
  String get tourPlanBody =>
      'Oppgaver, kalender og vaner på ett rolig sted. Begynn hver morgen med «Start dagen min».';

  @override
  String get tourFocusTitle => 'Fokuser dypt';

  @override
  String get tourFocusBody =>
      'Tidsbestemte økter med ekte naturlyder, Ikke forstyrr og myke slutttoner.';

  @override
  String get tourLearnTitle => 'Lær for godt';

  @override
  String get tourLearnBody =>
      'Kort med repetisjon med mellomrom, opplesning på mange språk og import fra Anki eller Excel.';

  @override
  String get helpTitle => 'Hjelp og spørsmål';

  @override
  String get helpOpen => 'Åpne';

  @override
  String get helpTour => 'Ta omvisningen';

  @override
  String get tourNext => 'Neste';

  @override
  String get tourDone => 'La oss begynne';

  @override
  String get transferColTitle => 'Tittel';

  @override
  String get transferColNotes => 'Notater';

  @override
  String get transferColBody => 'Tekst';

  @override
  String get transferColDue => 'Forfallsdato';

  @override
  String get transferColPriority => 'Prioritet (0-3)';

  @override
  String get transferColDone => 'Ferdig';

  @override
  String get transferColProject => 'Prosjekt';

  @override
  String get transferColCategory => 'Kategori';

  @override
  String get transferTitle => 'Import og eksport';

  @override
  String get transferSaveAs => 'Lagre som';

  @override
  String get transferImport => 'Importer fra en fil';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV eller en tabell i Word. Kolonner: tittel, forfallsdato (2026-12-31), prioritet 0-3, ferdig, prosjekt, notater. Oppgaver som allerede er i appen, hoppes over.';

  @override
  String get transferImportNotesHint =>
      'Word-, Markdown- eller tekstfiler blir et notat. Excel eller CSV: ett notat per rad (tittel, tekst).';

  @override
  String get transferSaved => 'Filen er lagret';

  @override
  String get transferFailed => 'Filen kunne ikke lages. Ingenting er endret.';

  @override
  String get transferUnsupported =>
      'Filen kan ikke leses her. Bruk Excel, CSV, Word, Markdown eller tekst.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added lagt til',
      one: '1 lagt til',
      zero: 'Ingenting nytt å legge til',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Tekst';

  @override
  String get transferAllNotes => 'Alle notater';

  @override
  String get transferThisNote => 'Dette notatet';

  @override
  String get transferDeckFormats => 'Lagre som Excel, Word eller PDF';

  @override
  String get faqFilesQ => 'Kan jeg bruke Excel-, Word- eller PDF-filer?';

  @override
  String get faqFilesA =>
      'Ja. Oppgaver og Notater har en knapp for import og eksport (to piler) øverst, og hver kortstokk har den i menyen sin. Lagre som Excel, CSV, Word eller PDF, eller hent inn Excel-, CSV-, Word-, Markdown- eller tekstfiler. Kolonnenavnene kan være på hvilket som helst av appens språk, og filer du har lagret, kan alltid importeres på nytt.';

  @override
  String get tplLecture => 'Forelesning';

  @override
  String get tplBook => 'Boksammendrag';

  @override
  String get tplJournal => 'Dagbok';

  @override
  String get tplWeek => 'Ukeplan';

  @override
  String get tplLectureBody => '## Viktige punkter\n- \n\n## Spørsmål\n- [ ] \n\n## Sammendrag\n';

  @override
  String get tplBookBody =>
      '## Hovedidé\n\n## Hva jeg lærte\n- \n\n## Sitater\n> \n\n## Å ta i bruk\n- [ ] \n';

  @override
  String get tplJournalBody => '## Takknemlig for\n- \n\n## Dagens fokus\n- [ ] \n\n## Notater\n';

  @override
  String get tplWeekBody =>
      '## Mål denne uken\n- [ ] \n\n### Lørdag\n- [ ] \n\n### Søndag\n- [ ] \n\n### Mandag\n- [ ] \n\n### Tirsdag\n- [ ] \n\n### Onsdag\n- [ ] \n\n### Torsdag\n- [ ] \n\n### Fredag\n- [ ] \n';

  @override
  String get tplHint => 'Start fra en mal';

  @override
  String get noteImage => 'Bilde';

  @override
  String get noteAddImage => 'Legg til bilde';

  @override
  String get noteImageUnreadable => 'Filen er ikke et bilde appen kan lese.';

  @override
  String get noteImageTooLarge => 'Bildet er for stort.';

  @override
  String get examSet => 'Angi eksamensdato';

  @override
  String get examDate => 'Eksamensdato';

  @override
  String get examToday => 'Eksamen i dag. Lykke til!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Eksamen om $count dager',
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
      one: 'lær 1 nytt kort om dagen',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'alle kortene er lært, fortsett å repetere';

  @override
  String examRaiseLimit(int count) {
    return 'Vis $count nye kort om dagen';
  }

  @override
  String get backupDriveHint =>
      'Vil du ha en kopi på nett, velger du Google Disk (eller en annen skyapp) på lagringsskjermen som åpnes etterpå.';

  @override
  String get flashShareDeck => 'Del kortstokken med en venn';

  @override
  String get flashSortManual => 'Min rekkefølge (dra)';

  @override
  String get flashReorderHint => 'Hold i håndtaket og dra et kort for å flytte det.';

  @override
  String get flashReorderNeedsAll => 'Tøm søket og filtrene for å dra kortene.';

  @override
  String get flashDragHandle => 'Dra for å flytte';

  @override
  String get reportTitle => 'Månedsrapport';

  @override
  String get reportFocus => 'Fokustid';

  @override
  String reportSessions(int count) {
    return '$count økter';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Beste dag: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktive dager';
  }

  @override
  String get reportCards => 'Repeterte kort';

  @override
  String reportCardsKnown(String percent) {
    return '$percent husket';
  }

  @override
  String get reportTasks => 'Fullførte oppgaver';

  @override
  String get reportHabits => 'Avhukede vaner';

  @override
  String get reportEmpty => 'Ingenting registrert denne måneden ennå.';

  @override
  String get reportSave => 'Lagre som PDF eller Word';

  @override
  String get reportPrevMonth => 'Forrige måned';

  @override
  String get reportNextMonth => 'Neste måned';

  @override
  String get careTitle => 'Ta vare på telefonen og dataene';

  @override
  String get storageTitle => 'Lagring';

  @override
  String get storageSubtitle => 'Hva som tar plass, og opprydding i ubrukte bilder';

  @override
  String get storagePictures => 'Bilder i notater';

  @override
  String get storageCardMedia => 'Bilder og lyd i kort';

  @override
  String get storageText => 'Tekst i notater';

  @override
  String get storageFree => 'Ledig på telefonen';

  @override
  String get storageLow =>
      'Telefonen er nesten full. Frigjør litt plass, så sikkerhetskopier og påminnelser fortsetter å virke.';

  @override
  String storageUnused(int count, String size) {
    return '$count ubrukte bilder ($size)';
  }

  @override
  String get storageNoUnused => 'Ingen ubrukte bilder. Alt er ryddig.';

  @override
  String get storageClean => 'Fjern ubrukte bilder';

  @override
  String storageCleaned(int count) {
    return '$count bilder fjernet';
  }

  @override
  String get storageHint =>
      'Bilder regnes bare som ubrukte når ingen notater viser dem, heller ikke notater i papirkurven.';

  @override
  String get batteryTitle => 'Hold påminnelsene i gang';

  @override
  String get batterySubtitle => 'Noen telefoner stopper apper i bakgrunnen. Sjekk din.';

  @override
  String get batteryStatusOk =>
      'Batterisparing begrenser ikke denne appen. Påminnelser og lyder skal komme i tide.';

  @override
  String get batteryStatusLimited =>
      'Batterisparing kan stoppe appen i bakgrunnen, så påminnelser og lyder kan komme sent eller ikke i det hele tatt.';

  @override
  String get batteryOpen => 'Åpne batteriinnstillinger';

  @override
  String get batteryOpenApp => 'Åpne appinnstillinger';

  @override
  String get batteryGeneric =>
      'Velg denne appen i batteriinnstillingene og sett den til Ubegrenset (eller Ikke optimaliser).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: åpne også Sikkerhet › Tillatelser › Autostart og slå på denne appen, og sett Batterisparing til Ingen begrensninger.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: åpne Batteri › denne appen og tillat bakgrunnsaktivitet og autostart; lås appen i listen over nylige apper.';

  @override
  String get batterySamsung =>
      'Samsung: Batteri › Grenser for bakgrunnsbruk: fjern appen fra Apper i hvilemodus og Apper i dyp hvilemodus.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Appstart › denne appen › administrer manuelt, og tillat autostart, sekundær start og kjøring i bakgrunnen.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Batteri › Strømforbruk i bakgrunnen › tillat denne appen, og slå på autostart under tillatelser.';

  @override
  String get whatsNewTitle => 'Nyheter';

  @override
  String get whatsNewSubtitle => 'De siste endringene på noen få linjer';

  @override
  String get whatsNewDone => 'Skjønner';

  @override
  String get whatsNewOrderTitle => 'Dra kortene i din egen rekkefølge';

  @override
  String get whatsNewOrderBody =>
      'Velg Sorter › Min rekkefølge i en kortstokk, hold så i håndtaket og dra.';

  @override
  String get whatsNewSpeechTitle => 'En høyttaler på hver side av kortet';

  @override
  String get whatsNewSpeechBody =>
      'Trykk på den for å høre ordet eller oversettelsen. Hastighet, gjentakelser og stemme finner du i repetisjonsmenyen. Språket gjenkjennes fra teksten.';

  @override
  String get whatsNewReportTitle => 'Månedsrapport';

  @override
  String get whatsNewReportBody =>
      'Trykk på rapportikonet i Innsikt for å se måneden og lagre den som PDF eller Word.';

  @override
  String get whatsNewCareTitle => 'Ta vare på telefonen og dataene';

  @override
  String get whatsNewCareBody =>
      'Innstillinger har nå en lagringsside med bildeopprydding og en batteriguide for telefonmerket ditt.';

  @override
  String get whatsNewSoundTitle => 'Roligere lyder';

  @override
  String get whatsNewSoundBody => 'Naturlydene er mykere og stillere, og bildekortene er finere.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Sjekket $date: den siste sikkerhetskopien åpnes som den skal.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Sjekket $date: en skadet sikkerhetskopi ble funnet og erstattet med en ny.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Sjekket $date: den siste sikkerhetskopien kunne ikke åpnes. Lagre en sikkerhetskopifil selv fra Innstillinger.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Du øver vanligvis rundt kl. $time';
  }

  @override
  String get smartReviewTimeUse => 'Bruk det';

  @override
  String get widgetNewNote => 'Nytt notat';

  @override
  String get noteConnections => 'Emneknagger, lenker og oppgaver';

  @override
  String get navCards => 'Kort';

  @override
  String get studyAnswerWay => 'Hvordan vil du svare?';

  @override
  String get studyMorePractice => 'Ekstra øving';

  @override
  String get studySessionSettings => 'Innstillinger for økten';

  @override
  String get focusAdjustTitle => 'Økten din';

  @override
  String get focusPresetsTitle => 'Ferdige oppsett';

  @override
  String get focusPresetStudy => 'Studier';

  @override
  String get focusPresetDeep => 'Dypt arbeid';

  @override
  String get focusPresetQuick => 'Rask spurt';

  @override
  String get focusPresetReading => 'Lesing';

  @override
  String get focusPresetWorkout => 'Treningsrunder';

  @override
  String get focusAdjustMinutes => 'Fokuslengde';

  @override
  String get focusAdjustBreak => 'Pauselengde';

  @override
  String get focusAdjustRounds => 'Runder';

  @override
  String get focusRoundsOpen => 'Ingen grense';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Trykk for å endre tiden';

  @override
  String get flashArrangeDecks => 'Ordne kortstokker';

  @override
  String get flashDeckActions => 'Valg for kortstokk';

  @override
  String get starterBrowse => 'Ferdige kortstokker';

  @override
  String get starterBrowseHint => 'Legg til en med ett trykk og begynn å lære';

  @override
  String get dashOpenDecks => 'Åpne kortene dine';

  @override
  String speechVoiceNumber(String n) {
    return 'Stemme $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Fin flyt. Hvile $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Start pause';

  @override
  String tasksFinishAt(String time) {
    return 'Begynner du nå, er du ferdig med alt kl. $time';
  }

  @override
  String get focusCalmPacing => 'Rolig tempo';

  @override
  String get focusCalmPacingHint => 'Bare hele minutter og ringen, ingen tikkende sekunder';

  @override
  String get focusFlipHint => 'Legg telefonen med skjermen ned for å starte';

  @override
  String get focusImmersive => 'Fordypningsmodus';

  @override
  String get focusImmersiveBlack => 'Helsvart (sparer batteri)';

  @override
  String get focusFlipToFocus => 'Snu for å fokusere';

  @override
  String get focusFlipToFocusHint =>
      'I fordypningsmodus: skjermen ned starter, å løfte telefonen setter på pause';

  @override
  String get guardTitle => 'Distraksjonsvakt';

  @override
  String get guardSubtitle => 'Sett distraherende apper på pause mens du fokuserer';

  @override
  String get guardSwitch => 'Sett distraherende apper på pause';

  @override
  String get guardSwitchHint => 'Under fokusøkter og Tidsvakt-timene dine';

  @override
  String get guardNeedsAccess => 'Trenger tilgjengelighetsbryteren: trykk for å slå den på';

  @override
  String get guardDisclosureTitle => 'Slik virker vakten';

  @override
  String get guardDisclosureBody =>
      'For å sette appene du velger på pause, bruker Deep Focus Androids tilgjengelighetstjeneste til å se hvilken app som er åpen. Med «Lukk Shorts og Reels» slått på sjekker den også om en avspiller for korte videoer er på skjermen.\n\nDen leser ingen tekst, lagrer ingenting av det den ser og sender ingenting noe sted: alt blir på telefonen din. Du kan slå den av når som helst i tilgjengelighetsinnstillingene.';

  @override
  String get guardAgree => 'Godta og åpne innstillinger';

  @override
  String get guardModeGentle => 'Mild';

  @override
  String get guardModeStrict => 'Streng';

  @override
  String get guardGentleHint => 'En pustepause på 5 sekunder, så velger du';

  @override
  String get guardStrictHint => 'Valgte apper forblir lukket til fokustiden er over';

  @override
  String get guardApps => 'Apper som skal settes på pause';

  @override
  String get guardAppsAllowed => 'Tillatte apper';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apper',
      one: '1 app',
      zero: 'Ingen valgt ennå',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Tillat bare valgte apper';

  @override
  String get guardAllowlistHint =>
      'Alle andre apper settes på pause; samtaler, innstillinger og tastaturet virker alltid';

  @override
  String get guardShorts => 'Lukk Shorts og Reels';

  @override
  String get guardShortsHint =>
      'Så lenge vakten er på. Så godt det lar seg gjøre: disse appene endres ofte';

  @override
  String get guardSchedule => 'Tidsvakt';

  @override
  String get guardScheduleHint => 'Vokt også på faste dager og tider, som skole eller jobb';

  @override
  String get guardFrom => 'Fra';

  @override
  String get guardTo => 'Til';

  @override
  String get guardSearchApps => 'Søk etter apper';

  @override
  String get guardNoApps => 'Fant ingen apper';

  @override
  String get guardPrivacy =>
      'Virker bare på telefonen din: vakten ser hvilken app som er åpen, aldri hva som er i den, og sender ingenting.';

  @override
  String get guardBreathe => 'Pust inn … og ut';

  @override
  String get guardQuestion => 'Trenger du denne appen nå?';

  @override
  String get guardBackToFocus => 'Tilbake til fokus';

  @override
  String get guardOpenFive => 'Åpne i 5 minutter';

  @override
  String get guardStrictBody => 'Denne appen er satt på pause til fokustiden din er over.';

  @override
  String get guardShortsClosed => 'Korte videoer lukkes mens vakten er på';

  @override
  String get faqGuardQ => 'Hvordan stopper jeg distraherende apper mens jeg fokuserer?';

  @override
  String get faqGuardA =>
      'Åpne Fokus → tidtakerinnstillingene → Distraksjonsvakt. Velg appene, og så Mild (5 sekunders pust og spørsmålet «Trenger du denne appen nå?») eller Streng (de forblir lukket). Det virker under fokusøkter og, med Tidsvakt, på dagene og tidene du angir. «Tillat bare valgte apper» setter alt annet på pause; samtaler, innstillinger og tastaturet virker alltid. Android ber deg én gang om å slå på vakten i tilgjengelighetsinnstillingene. Den ser bare hvilken app som er åpen, og sender ingenting.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Flyttet til $name';
  }

  @override
  String get notesDragHint => 'Hold et notat og dra det til en notatbok';

  @override
  String get guardReviewCards => 'Repeter kort i stedet';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kort venter på deg',
      one: '1 kort venter på deg',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Nødstilfelle: hold i 10 sekunder';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Fortsett å holde … $n';
  }

  @override
  String get guardWeekTitle => 'Denne uken';

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
      other: 'tilbake til fokus $count ganger',
      one: 'tilbake til fokus én gang',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Gi ord nye navn';

  @override
  String get wordsSubtitle => 'Bruk ditt eget ord for hvilken som helst tekst i appen';

  @override
  String get wordsHint =>
      'Trykk på en tekst for å endre den. Ordene dine gjelder bare dette språket og tas vare på i sikkerhetskopier.';

  @override
  String get wordsSearch => 'Søk i tekster';

  @override
  String get wordsChangedOnly => 'Bare endrede';

  @override
  String wordsOriginal(String text) {
    return 'Original: $text';
  }

  @override
  String get wordsReset => 'Bruk originalen';

  @override
  String get wordsResetAll => 'Tilbakestill alle ord';

  @override
  String get wordsResetAllConfirm => 'All tekst på dette språket går tilbake til originalen.';

  @override
  String get wordsNone => 'Fant ingen tekst';

  @override
  String get settingsLanguageSearch => 'Søk etter språk';

  @override
  String get settingsLanguageNoMatch => 'Ingen språk passer';
}
