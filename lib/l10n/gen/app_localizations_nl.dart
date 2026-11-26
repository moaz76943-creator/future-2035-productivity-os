// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Start';

  @override
  String get navTasks => 'Taken';

  @override
  String get navFocus => 'Focus';

  @override
  String get navCalendar => 'Agenda';

  @override
  String get navSpaces => 'Ruimtes';

  @override
  String get moduleProjects => 'Projecten';

  @override
  String get moduleNotes => 'Notities';

  @override
  String get moduleFlashcards => 'Flashcards';

  @override
  String get moduleGoals => 'Doelen';

  @override
  String get moduleHabits => 'Gewoonten';

  @override
  String get moduleAnalytics => 'Inzichten';

  @override
  String get moduleSearch => 'Zoeken';

  @override
  String get moduleAssistant => 'Assistent';

  @override
  String get moduleSettings => 'Instellingen';

  @override
  String get moduleTrash => 'Prullenbak';

  @override
  String get actionSave => 'Opslaan';

  @override
  String get actionCancel => 'Annuleren';

  @override
  String get actionDelete => 'Verwijderen';

  @override
  String get actionEdit => 'Bewerken';

  @override
  String get actionDone => 'Klaar';

  @override
  String get actionAdd => 'Toevoegen';

  @override
  String get actionCreate => 'Maken';

  @override
  String get actionClose => 'Sluiten';

  @override
  String get actionBack => 'Terug';

  @override
  String get actionUndo => 'Ongedaan maken';

  @override
  String get actionRestore => 'Herstellen';

  @override
  String get actionRetry => 'Opnieuw proberen';

  @override
  String get actionContinue => 'Doorgaan';

  @override
  String get actionSkip => 'Overslaan';

  @override
  String get actionArchive => 'Archiveren';

  @override
  String get actionUnarchive => 'Uit archief halen';

  @override
  String get actionPin => 'Vastzetten';

  @override
  String get actionUnpin => 'Losmaken';

  @override
  String get actionMore => 'Meer opties';

  @override
  String get actionClear => 'Wissen';

  @override
  String get actionSearch => 'Zoeken';

  @override
  String get actionSort => 'Sorteren';

  @override
  String get actionShare => 'Delen';

  @override
  String get actionImport => 'Importeren';

  @override
  String get actionExport => 'Exporteren';

  @override
  String get actionPause => 'Pauzeren';

  @override
  String get actionResume => 'Hervatten';

  @override
  String get actionStart => 'Starten';

  @override
  String get actionStop => 'Stoppen';

  @override
  String get actionComplete => 'Voltooien';

  @override
  String get actionDeleteForever => 'Definitief verwijderen';

  @override
  String get actionEmptyTrash => 'Prullenbak legen';

  @override
  String get actionUnlink => 'Ontkoppelen';

  @override
  String get actionCustomize => 'Aanpassen';

  @override
  String get actionPreview => 'Voorbeeld';

  @override
  String get actionLog => 'Voortgang noteren';

  @override
  String get stateLoading => 'Laden…';

  @override
  String get stateSaving => 'Opslaan…';

  @override
  String get stateSaved => 'Opgeslagen';

  @override
  String get stateUnsaved => 'Niet-opgeslagen wijzigingen';

  @override
  String get errorGenericTitle => 'Er ging iets mis';

  @override
  String get errorGenericMessage => 'Je gegevens zijn veilig. Probeer het opnieuw.';

  @override
  String get errorLoadFailed => 'Deze inhoud kon niet worden geladen.';

  @override
  String get errorSaveFailed => 'Opslaan mislukt. Je wijzigingen staan er nog.';

  @override
  String get validationRequired => 'Dit veld is verplicht';

  @override
  String get validationTitleRequired => 'Voer een titel in';

  @override
  String get validationNameRequired => 'Voer een naam in';

  @override
  String get validationTooLong => 'Dit is te lang';

  @override
  String get validationEndBeforeStart => 'Het einde moet na het begin liggen';

  @override
  String get validationStartAfterDue => 'De startdatum moet vóór de vervaldatum liggen';

  @override
  String get validationPositiveNumber => 'Voer een getal groter dan nul in';

  @override
  String get validationDependencyCycle => 'Dit zou een kringverwijzing maken';

  @override
  String get validationInvalidRepeat => 'Deze herhaalregel is ongeldig';

  @override
  String get deletedItem => 'Naar prullenbak verplaatst';

  @override
  String get untitled => 'Zonder titel';

  @override
  String get noProject => 'Geen project';

  @override
  String get greetingMorning => 'Goedemorgen';

  @override
  String get greetingAfternoon => 'Goedemiddag';

  @override
  String get greetingEvening => 'Goedenavond';

  @override
  String get dashFocusToday => 'Focus van vandaag';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done van $target';
  }

  @override
  String get dashStartFocus => 'Focus starten';

  @override
  String get dashFocusRunning => 'Sessie bezig';

  @override
  String get dashTodayTasks => 'Vandaag te doen';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Gewoonten vandaag';

  @override
  String get dashGoals => 'Doelen';

  @override
  String get dashReview => 'Herhalen';

  @override
  String get dashRecentNotes => 'Recente notities';

  @override
  String get dashInsight => 'Tip';

  @override
  String get dashSeeAll => 'Alles bekijken';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten te herhalen',
      one: '1 kaart te herhalen',
      zero: 'Geen kaarten te herhalen',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Nu herhalen';

  @override
  String get dashCustomizeTitle => 'Onderdelen van het overzicht';

  @override
  String get dashCustomizeHint => 'Kies wat er op je startscherm staat.';

  @override
  String get dashSectionFocus => 'Focus';

  @override
  String get dashSectionToday => 'Taken voor vandaag';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Gewoonten';

  @override
  String get dashSectionGoals => 'Doelen';

  @override
  String get dashSectionReview => 'Kaarten herhalen';

  @override
  String get dashSectionNotes => 'Recente notities';

  @override
  String get dashSectionInsight => 'Tips';

  @override
  String get quickAddTask => 'Nieuwe taak';

  @override
  String get quickAddNote => 'Nieuwe notitie';

  @override
  String get quickAddEvent => 'Nieuwe afspraak';

  @override
  String get quickStartFocus => 'Focus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Je hebt $count achterstallige taken. Begin met de belangrijkste.',
      one: 'Je hebt 1 achterstallige taak. Plan hem opnieuw of rond hem eerst af.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Nog $minutes minuten tot je dagelijkse focusdoel.';
  }

  @override
  String get insightCardsDue => 'Herhaal je kaarten nu ze nog vers in je geheugen zitten.';

  @override
  String get insightAllClear => 'Alles loopt op schema. Plan morgen of neem een rustige pauze.';

  @override
  String insightHabitStreak(String habit) {
    return 'Houd je reeks vast: $habit staat vandaag nog open.';
  }

  @override
  String get focusTitle => 'Focus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Timer';

  @override
  String get focusModeCountUp => 'Stopwatch';

  @override
  String get focusModeOpen => 'Vrij';

  @override
  String get focusPhaseWork => 'Focus';

  @override
  String get focusPhaseShortBreak => 'Korte pauze';

  @override
  String get focusPhaseLongBreak => 'Lange pauze';

  @override
  String get focusReady => 'Klaar wanneer jij het bent';

  @override
  String get focusPaused => 'Gepauzeerd';

  @override
  String get focusRunning => 'Gefocust';

  @override
  String get focusDuration => 'Duur';

  @override
  String get focusLinkTask => 'Taak koppelen';

  @override
  String get focusLinkedTask => 'Bezig met';

  @override
  String get focusNoTask => 'Geen taak gekoppeld';

  @override
  String focusCycle(int current, int total) {
    return 'Ronde $current van $total';
  }

  @override
  String get focusSkipBreak => 'Pauze overslaan';

  @override
  String get focusStartBreak => 'Pauze starten';

  @override
  String get focusStartNext => 'Volgende focus starten';

  @override
  String get focusSessionComplete => 'Sessie voltooid';

  @override
  String get focusSessionStopped => 'Sessie opgeslagen';

  @override
  String focusSessionSummary(String duration) {
    return 'Je was $duration gefocust.';
  }

  @override
  String get focusAddNote => 'Voeg een notitie toe over deze sessie';

  @override
  String get focusHistory => 'Geschiedenis';

  @override
  String get focusNoHistory => 'Voltooide sessies verschijnen hier';

  @override
  String get focusOutcomeCompleted => 'Voltooid';

  @override
  String get focusOutcomeInterrupted => 'Vroegtijdig gestopt';

  @override
  String get focusRecovered => 'Je sessie liep door terwijl de app gesloten was.';

  @override
  String get focusCompletedWhileAway =>
      'Er is een sessie afgelopen terwijl de app gesloten was. Hij is opgeslagen.';

  @override
  String get focusNotificationsOff =>
      'Meldingen staan uit. Je krijgt geen melding als een sessie afloopt.';

  @override
  String get focusBatteryHint =>
      'Sommige toestellen pauzeren apps op de achtergrond. De timer blijft nauwkeurig, maar meldingen kunnen later komen. Sta onbeperkt batterijgebruik toe voor betrouwbare meldingen.';

  @override
  String get focusOpenSettings => 'Instellingen openen';

  @override
  String get focusStopConfirmTitle => 'Deze sessie stoppen?';

  @override
  String get focusStopConfirmMessage => 'De tijd die je tot nu toe gefocust was, wordt opgeslagen.';

  @override
  String get focusDiscard => 'Weggooien';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuten',
      one: '1 minuut',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, nog $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time verstreken';
  }

  @override
  String get focusDeleteSession => 'Sessie verwijderen';

  @override
  String get tasksTitle => 'Taken';

  @override
  String get tasksViewToday => 'Vandaag';

  @override
  String get tasksViewUpcoming => 'Gepland';

  @override
  String get tasksViewAll => 'Alle';

  @override
  String get tasksViewOverdue => 'Achterstallig';

  @override
  String get tasksViewCompleted => 'Voltooid';

  @override
  String get tasksQuickAddHint => 'Taak toevoegen…';

  @override
  String get tasksEmptyTitle => 'Alles gedaan';

  @override
  String get tasksEmptyMessage => 'Voeg een taak toe om je dag vorm te geven.';

  @override
  String get tasksEmptyCompleted => 'Voltooide taken verschijnen hier.';

  @override
  String get taskNew => 'Nieuwe taak';

  @override
  String get taskEdit => 'Taak bewerken';

  @override
  String get taskTitleLabel => 'Titel';

  @override
  String get taskTitleHint => 'Wat moet er gebeuren?';

  @override
  String get taskDescriptionLabel => 'Beschrijving';

  @override
  String get taskNotesLabel => 'Notities';

  @override
  String get taskPriority => 'Prioriteit';

  @override
  String get priorityNone => 'Geen';

  @override
  String get priorityLow => 'Laag';

  @override
  String get priorityMedium => 'Gemiddeld';

  @override
  String get priorityHigh => 'Hoog';

  @override
  String get priorityUrgent => 'Dringend';

  @override
  String get taskDueDate => 'Vervaldatum';

  @override
  String get taskStartDate => 'Startdatum';

  @override
  String get taskReminder => 'Herinnering';

  @override
  String get taskRepeat => 'Herhalen';

  @override
  String get taskProject => 'Project';

  @override
  String get taskCategory => 'Categorie';

  @override
  String get taskCategoryHint => 'bijv. Werk, Thuis, Studie';

  @override
  String get taskEstimateMinutes => 'Schatting (minuten)';

  @override
  String get taskTracked => 'Gemeten focus';

  @override
  String get taskLabels => 'Labels';

  @override
  String get taskAddLabel => 'Nieuw label';

  @override
  String get taskChecklist => 'Checklist';

  @override
  String get taskAddChecklistItem => 'Item toevoegen';

  @override
  String get taskSubtasks => 'Subtaken';

  @override
  String get taskAddSubtask => 'Subtaak toevoegen';

  @override
  String get taskDependencies => 'Geblokkeerd door';

  @override
  String get taskAddDependency => 'Blokkerende taak toevoegen';

  @override
  String get taskLinkedNotes => 'Gekoppelde notities';

  @override
  String get taskSetTime => 'Tijd instellen';

  @override
  String get taskNoDate => 'Geen datum';

  @override
  String get taskCompleted => 'Taak voltooid';

  @override
  String get taskNextOccurrence => 'Volgende keer aangemaakt';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dagen te laat',
      one: '1 dag te laat',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '\"$title\" markeren als klaar';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '\"$title\" markeren als niet klaar';
  }

  @override
  String get sortSmart => 'Slim';

  @override
  String get sortDueDate => 'Vervaldatum';

  @override
  String get sortPriority => 'Prioriteit';

  @override
  String get sortCreated => 'Nieuwste';

  @override
  String get sortTitle => 'Titel';

  @override
  String get filterAllProjects => 'Alle projecten';

  @override
  String get filterAnyPriority => 'Elke prioriteit';

  @override
  String get filterTitle => 'Filteren en sorteren';

  @override
  String get dateToday => 'Vandaag';

  @override
  String get dateTomorrow => 'Morgen';

  @override
  String get dateYesterday => 'Gisteren';

  @override
  String get repeatNever => 'Herhaalt niet';

  @override
  String get repeatDaily => 'Elke dag';

  @override
  String get repeatWeekdays => 'Elke werkdag';

  @override
  String get repeatWeekly => 'Elke week';

  @override
  String get repeatMonthly => 'Elke maand';

  @override
  String get repeatYearly => 'Elk jaar';

  @override
  String get repeatCustom => 'Aangepast';

  @override
  String get repeatEvery => 'Herhaal elke';

  @override
  String get repeatOnDays => 'Op dagen';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'dagen', one: 'dag');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'weken', one: 'week');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'maanden',
      one: 'maand',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'jaar', one: 'jaar');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count keer',
      one: '1 keer',
    );
    return 'Stopt na $_temp0';
  }

  @override
  String get repeatEndsNever => 'Stopt nooit';

  @override
  String get reminderAtTime => 'Op het moment zelf';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuten van tevoren',
      one: '1 minuut van tevoren',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours uur van tevoren',
      one: '1 uur van tevoren',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 dag van tevoren';

  @override
  String get projectsTitle => 'Projecten';

  @override
  String get projectsEmptyTitle => 'Nog geen projecten';

  @override
  String get projectsEmptyMessage => 'Groepeer taken, notities en focustijd die bij elkaar horen.';

  @override
  String get projectNew => 'Nieuw project';

  @override
  String get projectEdit => 'Project bewerken';

  @override
  String get projectName => 'Naam';

  @override
  String get projectDescription => 'Beschrijving';

  @override
  String get projectGoal => 'Doel';

  @override
  String get projectDeadline => 'Deadline';

  @override
  String get projectColor => 'Kleur';

  @override
  String get projectIcon => 'Pictogram';

  @override
  String get projectProgress => 'Voortgang';

  @override
  String projectTasksDone(int done, int total) {
    return '$done van $total taken klaar';
  }

  @override
  String get projectFocusTime => 'Focustijd';

  @override
  String get projectArchived => 'Gearchiveerde projecten';

  @override
  String get projectShowArchived => 'Archief tonen';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Nog $days dagen',
      one: 'Nog 1 dag',
      zero: 'Vandaag',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Deadline verstreken';

  @override
  String get calendarTitle => 'Agenda';

  @override
  String get calendarMonth => 'Maand';

  @override
  String get calendarWeek => 'Week';

  @override
  String get calendarDay => 'Dag';

  @override
  String get calendarToday => 'Vandaag';

  @override
  String get calendarPrevious => 'Vorige';

  @override
  String get calendarNext => 'Volgende';

  @override
  String get calendarNoEvents => 'Niets gepland';

  @override
  String get calendarAllDay => 'Hele dag';

  @override
  String get eventNew => 'Nieuwe afspraak';

  @override
  String get eventEdit => 'Afspraak bewerken';

  @override
  String get eventTitleHint => 'Titel van de afspraak';

  @override
  String get eventStarts => 'Begint';

  @override
  String get eventEnds => 'Eindigt';

  @override
  String get eventKind => 'Soort';

  @override
  String get eventKindEvent => 'Afspraak';

  @override
  String get eventKindTimeBlock => 'Tijdblok';

  @override
  String get eventKindFocus => 'Focussessie';

  @override
  String get eventKindGoal => 'Persoonlijk doel';

  @override
  String get eventDescription => 'Details';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Overlapt met $count afspraken',
      one: 'Overlapt met 1 afspraak',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Planningsconflicten op deze dag';

  @override
  String get calendarTaskDue => 'Taak te doen';

  @override
  String get calendarDragHint => 'Houd een afspraak ingedrukt en sleep om hem te verplaatsen';

  @override
  String get calendarRescheduled => 'Afspraak verplaatst';

  @override
  String get calendarScheduleTask => 'Inplannen als tijdblok';

  @override
  String get notesTitle => 'Notities';

  @override
  String get notesViewAll => 'Alle';

  @override
  String get notesViewPinned => 'Vastgezet';

  @override
  String get notesViewFavorites => 'Favorieten';

  @override
  String get notesViewArchived => 'Gearchiveerd';

  @override
  String get notesTags => 'Tags';

  @override
  String get notesNewNotebook => 'Nieuw notitieboek';

  @override
  String get notesNoNotebook => 'Geen notitieboek';

  @override
  String get notesEmptyTitle => 'Een leeg vel';

  @override
  String get notesEmptyMessage => 'Leg ideeën, vergadernotities en kennis vast.';

  @override
  String get noteTitleHint => 'Titel';

  @override
  String get noteBodyHint =>
      'Begin met schrijven… Gebruik # voor tags en [[Titel]] om notities te koppelen.';

  @override
  String get noteFavorite => 'Favoriet';

  @override
  String get noteUnfavorite => 'Uit favorieten verwijderen';

  @override
  String get noteMoveTo => 'Naar notitieboek verplaatsen';

  @override
  String get noteBacklinks => 'Gelinkt vanuit';

  @override
  String get noteLinkedTasks => 'Gekoppelde taken';

  @override
  String get noteLinkTask => 'Taak koppelen';

  @override
  String get noteLinkProject => 'Project';

  @override
  String get noteFormatHeading => 'Kop';

  @override
  String get noteFormatBold => 'Vet';

  @override
  String get noteFormatItalic => 'Cursief';

  @override
  String get noteFormatList => 'Opsomming';

  @override
  String get noteFormatChecklist => 'Checklist';

  @override
  String get noteFormatLink => 'Link';

  @override
  String noteEdited(String time) {
    return 'Bewerkt $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count woorden',
      one: '1 woord',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Flashcards';

  @override
  String get flashEmptyTitle => 'Maak je eerste stapel';

  @override
  String get flashEmptyMessage =>
      'Gespreide herhaling toont elke kaart vlak voordat je hem zou vergeten.';

  @override
  String get deckNew => 'Nieuwe stapel';

  @override
  String get deckEdit => 'Stapel bewerken';

  @override
  String get deckName => 'Naam van de stapel';

  @override
  String get deckDescription => 'Beschrijving';

  @override
  String get deckDailyNew => 'Nieuwe kaarten per dag';

  @override
  String get deckDailyReview => 'Dagelijks herhaaldoel';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten',
      one: '1 kaart',
      zero: 'Geen kaarten',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Te herhalen';

  @override
  String get deckNewCards => 'Nieuw';

  @override
  String get deckMature => 'Gekend';

  @override
  String get deckStudy => 'Leren';

  @override
  String get deckNothingDue => 'Er is nu niets te herhalen. Kom later terug.';

  @override
  String get deckEmptyCards => 'Voeg kaarten toe om te beginnen met leren.';

  @override
  String get cardNew => 'Nieuwe kaart';

  @override
  String get cardEdit => 'Kaart bewerken';

  @override
  String get cardFront => 'Voorkant';

  @override
  String get cardBack => 'Achterkant';

  @override
  String get cardFrontHint => 'Vraag of begrip';

  @override
  String get cardBackHint => 'Antwoord of definitie';

  @override
  String get cardTags => 'Tags';

  @override
  String get cardAddAnother => 'Opslaan en nog een toevoegen';

  @override
  String get reviewShowAnswer => 'Antwoord tonen';

  @override
  String get reviewAgain => 'Opnieuw';

  @override
  String get reviewHard => 'Moeilijk';

  @override
  String get reviewGood => 'Goed';

  @override
  String get reviewEasy => 'Makkelijk';

  @override
  String reviewProgress(int done, int total) {
    return '$done van $total';
  }

  @override
  String get reviewFinishedTitle => 'Sessie voltooid';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Je hebt $count kaarten herhaald.',
      one: 'Je hebt 1 kaart herhaald.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Tik om het antwoord te zien';

  @override
  String get importCardsTitle => 'Kaarten importeren';

  @override
  String get importCardsHint =>
      'Plak één kaart per regel (voor- en achterkant gescheiden door een tab of puntkomma), of kies een bestand: Excel (.xlsx), CSV, een Anki-stapel (.apkg) of een geëxporteerde stapel.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten geïmporteerd',
      one: '1 kaart geïmporteerd',
      zero: 'Geen kaarten geïmporteerd',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Deze inhoud kon niet worden geïmporteerd.';

  @override
  String get exportCopied => 'Stapel geëxporteerd';

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
      other: '$count dagen',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Doelen';

  @override
  String get goalsEmptyTitle => 'Mik ergens op';

  @override
  String get goalsEmptyMessage =>
      'Stel doelen per dag, week, maand of op lange termijn en volg je echte voortgang.';

  @override
  String get goalNew => 'Nieuw doel';

  @override
  String get goalEdit => 'Doel bewerken';

  @override
  String get goalTitleHint => 'Wat wil je bereiken?';

  @override
  String get goalPeriod => 'Periode';

  @override
  String get goalPeriodDaily => 'Dagelijks';

  @override
  String get goalPeriodWeekly => 'Wekelijks';

  @override
  String get goalPeriodMonthly => 'Maandelijks';

  @override
  String get goalPeriodLongTerm => 'Lange termijn';

  @override
  String get goalTarget => 'Streefwaarde';

  @override
  String get goalUnit => 'Eenheid';

  @override
  String get goalUnitHint => 'bijv. bladzijden, km, uren';

  @override
  String get goalStatusActive => 'Actief';

  @override
  String get goalStatusPaused => 'Gepauzeerd';

  @override
  String get goalStatusAchieved => 'Bereikt';

  @override
  String get goalPause => 'Doel pauzeren';

  @override
  String get goalResume => 'Doel hervatten';

  @override
  String get goalMarkAchieved => 'Markeren als bereikt';

  @override
  String goalProgressOf(String current, String target) {
    return '$current van $target';
  }

  @override
  String get goalLogAmount => 'Hoeveelheid';

  @override
  String get goalLogNote => 'Notitie (optioneel)';

  @override
  String get goalHistory => 'Geschiedenis';

  @override
  String get goalNoHistory => 'Genoteerde voortgang verschijnt hier';

  @override
  String get goalLinkedTasks => 'Gekoppelde taken';

  @override
  String get goalLinkedTasksHint => 'Elke voltooide gekoppelde taak telt als 1 voor dit doel.';

  @override
  String get goalThisPeriod => 'Deze periode';

  @override
  String get habitsTitle => 'Gewoonten';

  @override
  String get habitsEmptyTitle => 'Kleine stappen, elke dag';

  @override
  String get habitsEmptyMessage => 'Maak een gewoonte aan en vink hem af als je hem doet.';

  @override
  String get habitNew => 'Nieuwe gewoonte';

  @override
  String get habitEdit => 'Gewoonte bewerken';

  @override
  String get habitNameHint => 'bijv. 20 bladzijden lezen';

  @override
  String get habitDays => 'Planning';

  @override
  String get habitEveryDay => 'Elke dag';

  @override
  String get habitTargetPerDay => 'Keer per dag';

  @override
  String get habitReminder => 'Dagelijkse herinnering';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Reeks van $count dagen',
      one: 'Reeks van 1 dag',
      zero: 'Geen reeks',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Langste reeks';

  @override
  String get habitCurrentStreak => 'Huidige reeks';

  @override
  String get habitConsistency => 'Regelmaat';

  @override
  String get habitLast90 => 'Laatste 90 dagen';

  @override
  String get habitPaused => 'Gepauzeerd';

  @override
  String get habitPause => 'Gewoonte pauzeren';

  @override
  String get habitResume => 'Gewoonte hervatten';

  @override
  String get habitDoneToday => 'Vandaag gedaan';

  @override
  String habitCountToday(int count, int target) {
    return 'Vandaag $count van $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '\"$name\" afvinken';
  }

  @override
  String get habitNotScheduledToday => 'Vandaag niet gepland';

  @override
  String get analyticsTitle => 'Inzichten';

  @override
  String get rangeWeek => '7 dagen';

  @override
  String get rangeMonth => '30 dagen';

  @override
  String get rangeQuarter => '90 dagen';

  @override
  String get statFocusTime => 'Focustijd';

  @override
  String get statSessions => 'Sessies';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed voltooid · $interrupted vroegtijdig gestopt';
  }

  @override
  String get statTasksDone => 'Voltooide taken';

  @override
  String get statCompletionRate => 'Op tijd afgerond';

  @override
  String get statHabitConsistency => 'Regelmaat van gewoonten';

  @override
  String get statRetention => 'Onthouden kaarten';

  @override
  String get statReviews => 'Herhalingen';

  @override
  String get statActiveGoals => 'Actieve doelen';

  @override
  String get statEstimated => 'Geschat voltooid werk';

  @override
  String get statEstimatedNote => 'Gebaseerd op je schattingen, niet op gemeten tijd';

  @override
  String get statMeasuredNote => 'Gemeten uit focussessies';

  @override
  String get chartFocusByDay => 'Focusminuten per dag';

  @override
  String get chartTasksByDay => 'Voltooide taken per dag';

  @override
  String get chartTimeByProject => 'Tijd per project';

  @override
  String get chartProjectProgress => 'Voortgang per project';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: totaal $total, beste dag $best';
  }

  @override
  String get analyticsNoData => 'Nog niet genoeg gegevens';

  @override
  String get analyticsUnassigned => 'Niet toegewezen';

  @override
  String get searchHint => 'Alles doorzoeken…';

  @override
  String get searchRecent => 'Recente zoekopdrachten';

  @override
  String get searchClearRecent => 'Recente zoekopdrachten wissen';

  @override
  String searchNoResults(String query) {
    return 'Geen resultaten voor \"$query\"';
  }

  @override
  String get searchStartTyping =>
      'Zoek in taken, notities, kaarten, doelen, afspraken en meer. Zoeken blijft op dit toestel.';

  @override
  String get searchCatTask => 'Taken';

  @override
  String get searchCatProject => 'Projecten';

  @override
  String get searchCatNote => 'Notities';

  @override
  String get searchCatFlashcard => 'Kaarten';

  @override
  String get searchCatDeck => 'Stapels';

  @override
  String get searchCatGoal => 'Doelen';

  @override
  String get searchCatHabit => 'Gewoonten';

  @override
  String get searchCatEvent => 'Afspraken';

  @override
  String get searchCatSession => 'Sessies';

  @override
  String get searchAll => 'Alle';

  @override
  String get assistantTitle => 'Assistent';

  @override
  String get assistantIntro =>
      'Planningshulp die op je toestel werkt. Koppel desgewenst een AI-dienst naar keuze voor samenvattingen en het maken van inhoud.';

  @override
  String get assistantOnDevice => 'Op het toestel';

  @override
  String get assistantCloud => 'AI-dienst';

  @override
  String get assistantPlanDay => 'Plan mijn dag';

  @override
  String get assistantPlanDayDesc =>
      'Zet open taken op volgorde van urgentie, prioriteit en schatting, en past ze rond je afspraken.';

  @override
  String get assistantExtractTasks => 'Taken uit een notitie halen';

  @override
  String get assistantExtractTasksDesc =>
      'Vindt checklistpunten en actieregels in een notitie en maakt er taken van.';

  @override
  String get assistantMakeCards => 'Flashcards maken van een notitie';

  @override
  String get assistantMakeCardsDesc =>
      'Maakt kaarten van regels als \"begrip: definitie\" en van vraag-en-antwoordregels.';

  @override
  String get assistantSummarize => 'Notitie samenvatten';

  @override
  String get assistantSummarizeDesc =>
      'Vereist een AI-dienst. De notitie wordt pas verstuurd nadat je bevestigt.';

  @override
  String get assistantWorkload => 'Overzicht van de werklast';

  @override
  String get assistantWorkloadDesc => 'Vergelijkt geschat werk met je vrije tijd deze week.';

  @override
  String get assistantPlanEmpty => 'Geen open taken om te plannen. Geniet van de ruimte.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Vrije focustijd vandaag: $time';
  }

  @override
  String get assistantPlanOverflow => 'Dit past vandaag misschien niet:';

  @override
  String get assistantChooseNote => 'Kies een notitie';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count taken gevonden',
      one: '1 taak gevonden',
      zero: 'Geen taken gevonden in deze notitie',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten gevonden',
      one: '1 kaart gevonden',
      zero: 'Geen kaarten gevonden in deze notitie',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Kies een stapel';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Geschat werk: $estimated. Vrije tijd: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Je hebt meer gepland dan er tijd is. Verschuif eventueel taken met een lagere prioriteit.';

  @override
  String get assistantWorkloadOk => 'Je planning past in je beschikbare tijd.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count open taken hebben geen schatting.',
      one: '1 open taak heeft geen schatting.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI-dienst';

  @override
  String get assistantProviderOff =>
      'Geen dienst gekoppeld. De hulpmiddelen op het toestel werken nog steeds.';

  @override
  String assistantProviderOn(String host) {
    return 'Verbonden met $host';
  }

  @override
  String get assistantEndpoint => 'API-endpoint (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'API-sleutel';

  @override
  String get assistantApiKeyStored => 'Veilig opgeslagen op dit toestel';

  @override
  String get assistantHttpsOnly => 'Alleen HTTPS-endpoints zijn toegestaan';

  @override
  String get assistantConsentTitle => 'Deze inhoud naar je AI-dienst sturen?';

  @override
  String assistantConsentBody(String host) {
    return 'De gekozen notitietekst verlaat dit toestel en wordt verwerkt door $host. Verder wordt er niets verstuurd.';
  }

  @override
  String get assistantConsentAlways => 'Niet meer vragen voor deze dienst';

  @override
  String get assistantSend => 'Versturen';

  @override
  String get assistantUnavailable => 'De AI-dienst is niet bereikbaar. Probeer het later opnieuw.';

  @override
  String get assistantDisabledTitle => 'Assistent staat uit';

  @override
  String get assistantDisabledMessage =>
      'Zet hem aan om de planningshulpmiddelen te gebruiken. Er verlaten geen gegevens je toestel, tenzij je een dienst koppelt en elk verzoek bevestigt.';

  @override
  String get assistantSummaryTitle => 'Samenvatting';

  @override
  String get assistantRemoveProvider => 'Dienst verwijderen';

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get settingsGeneral => 'Algemeen';

  @override
  String get settingsLanguage => 'Taal';

  @override
  String get settingsLanguageSystem => 'Taal van het toestel';

  @override
  String get settingsAppearance => 'Weergave';

  @override
  String get settingsTheme => 'Thema';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Donker';

  @override
  String get themeSystem => 'Systeem';

  @override
  String get settingsReduceMotion => 'Minder beweging';

  @override
  String get settingsReduceMotionDesc => 'Beperk animaties en bewegende achtergronden';

  @override
  String get settingsFocus => 'Focustimer';

  @override
  String get settingsWorkLength => 'Duur van de focus';

  @override
  String get settingsShortBreak => 'Korte pauze';

  @override
  String get settingsLongBreak => 'Lange pauze';

  @override
  String get settingsLongBreakEvery => 'Lange pauze na';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessies',
      one: '1 sessie',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Pauzes automatisch starten';

  @override
  String get settingsSound => 'Geluid bij afronden';

  @override
  String get settingsDailyFocusTarget => 'Dagelijks focusdoel';

  @override
  String get settingsWeeklyFocusTarget => 'Wekelijks focusdoel';

  @override
  String get settingsNotifications => 'Meldingen';

  @override
  String get settingsNotificationsEnable => 'Herinneringen toestaan';

  @override
  String get settingsQuietHours => 'Stille uren';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Herinneringen voor gewoonten, doelen en herhalen zijn stil van $start tot $end';
  }

  @override
  String get settingsReviewReminder => 'Herinnering om kaarten te herhalen';

  @override
  String get settingsPermissionDenied => 'Meldingen zijn geblokkeerd in de systeeminstellingen.';

  @override
  String get settingsPrivacy => 'Privacy en gegevens';

  @override
  String get settingsPrivacyStatement =>
      'Je gegevens staan alleen op dit toestel en zijn versleuteld. Er is geen account, geen analyse en geen tracking.';

  @override
  String get settingsBackup => 'Versleutelde back-up maken';

  @override
  String get settingsBackupDesc => 'Beveiligd met een wachtwoord dat je zelf kiest';

  @override
  String get settingsRestore => 'Herstellen uit back-up';

  @override
  String get settingsRestoreDesc => 'Vervangt alle gegevens op dit toestel';

  @override
  String get settingsErase => 'Alle gegevens wissen';

  @override
  String get settingsEraseDesc => 'Alles op dit toestel definitief verwijderen';

  @override
  String get settingsEraseConfirmTitle => 'Alle gegevens wissen?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Elke taak, notitie, kaart, elk doel, elke gewoonte, afspraak en sessie wordt definitief verwijderd. Typ $word om te bevestigen.';
  }

  @override
  String get settingsEraseWord => 'WISSEN';

  @override
  String get settingsErased => 'Alle gegevens gewist';

  @override
  String get backupPassword => 'Wachtwoord van de back-up';

  @override
  String get backupPasswordConfirm => 'Wachtwoord bevestigen';

  @override
  String backupPasswordHint(int count) {
    return 'Minstens $count tekens. Het kan niet worden hersteld als je het kwijtraakt.';
  }

  @override
  String get backupPasswordMismatch => 'De wachtwoorden komen niet overeen';

  @override
  String get backupPasswordShort => 'Het wachtwoord is te kort';

  @override
  String get backupCreating => 'Back-up versleutelen…';

  @override
  String get backupCreated => 'Back-up klaar om op te slaan';

  @override
  String get backupRestoring => 'Controleren en herstellen…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items hersteld',
      one: '1 item hersteld',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Verkeerd wachtwoord, of het bestand is gewijzigd.';

  @override
  String get backupNotABackup => 'Dit bestand is geen back-up van Deep Focus.';

  @override
  String get backupCorrupted => 'Het back-upbestand is beschadigd.';

  @override
  String get backupNewer =>
      'Deze back-up is gemaakt met een nieuwere versie van de app. Werk de app eerst bij.';

  @override
  String get backupRestoreConfirmTitle => 'Alle gegevens vervangen?';

  @override
  String get backupRestoreConfirmBody =>
      'Alles wat nu op dit toestel staat, wordt vervangen door de back-up. Als het herstellen mislukt, verandert er niets.';

  @override
  String get settingsAbout => 'Over';

  @override
  String settingsVersion(String version) {
    return 'Versie $version';
  }

  @override
  String get settingsLicenses => 'Opensourcelicenties';

  @override
  String get settingsAssistant => 'Assistent';

  @override
  String get settingsAssistantEnable => 'Assistent inschakelen';

  @override
  String get settingsDashboard => 'Onderdelen van Start';

  @override
  String get settingsTrash => 'Prullenbak';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'De prullenbak is leeg';

  @override
  String get trashHint => 'Verwijderde items blijven hier tot je ze weghaalt.';

  @override
  String get trashTasks => 'Taken';

  @override
  String get trashNotes => 'Notities';

  @override
  String get onboardWelcomeTitle => 'Welkom in je nieuwe werkplek';

  @override
  String get onboardWelcomeBody =>
      'Taken, focus, agenda, notities, flashcards, doelen en gewoonten: samen, prachtig eenvoudig.';

  @override
  String get onboardPrivateTitle => 'Privacy als uitgangspunt';

  @override
  String get onboardPrivateBody =>
      'Alles blijft versleuteld op dit toestel. Geen account. Geen tracking. Jij houdt de controle.';

  @override
  String get onboardLanguageTitle => 'Kies je taal';

  @override
  String get onboardNotifTitle => 'Rustige herinneringen';

  @override
  String get onboardNotifBody =>
      'Sta meldingen toe voor taakherinneringen en focusmeldingen. Je kunt dit altijd wijzigen.';

  @override
  String get onboardGetStarted => 'Aan de slag';

  @override
  String onboardStep(int current, int total) {
    return 'Stap $current van $total';
  }

  @override
  String get notifChannelReminders => 'Herinneringen';

  @override
  String get notifChannelRemindersDesc =>
      'Herinneringen voor taken, afspraken, gewoonten en doelen';

  @override
  String get notifChannelFocus => 'Focustimer';

  @override
  String get notifChannelFocusDesc => 'Meldingen als een focussessie of pauze afloopt';

  @override
  String get notifTaskTitle => 'Taakherinnering';

  @override
  String get notifEventTitle => 'Komende afspraak';

  @override
  String notifEventBody(String title, String time) {
    return '$title om $time';
  }

  @override
  String get notifFocusDoneTitle => 'Focussessie voltooid';

  @override
  String get notifFocusDoneBody => 'Goed gedaan. Tijd voor een pauze.';

  @override
  String get notifBreakDoneTitle => 'De pauze is voorbij';

  @override
  String get notifBreakDoneBody => 'Klaar voor de volgende focussessie?';

  @override
  String get notifHabitTitle => 'Herinnering voor gewoonte';

  @override
  String get notifReviewTitle => 'Je kaarten staan klaar';

  @override
  String get notifReviewBody => 'Even herhalen houdt je geheugen sterk.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours u $minutes min';
  }

  @override
  String durationHours(int hours) {
    return '$hours u';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'M,D,W,D,V,Z,Z';

  @override
  String a11yProgress(int value) {
    return 'Voortgang $value procent';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioriteit: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Kleur $index';
  }

  @override
  String get analyticsRangeLabel => 'Periode';

  @override
  String get analyticsRefresh => 'Vernieuwen';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done van $total taken op tijd klaar';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done van $total taken klaar';
  }

  @override
  String get analyticsNoProjects => 'Geen actieve projecten';

  @override
  String get analyticsNoFocus => 'Geen focussessies in deze periode';

  @override
  String get analyticsHabitsNone => 'Geen actieve gewoonten';

  @override
  String get analyticsRetentionNote => 'Deel van de gekende kaarten dat je nog wist';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Vrije tijd telt van $start tot $end op werkdagen ($days), min afspraken met een tijd. Geschat werk is de som van de schattingen van open taken die de komende 7 dagen vervallen.';
  }

  @override
  String get assistantWorkdaysMonFri => 'maandag–vrijdag';

  @override
  String get assistantWorkdaysSunThu => 'zondag–donderdag';

  @override
  String get assistantWorkloadDayOff => 'Vrije dag';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated gepland · $free vrij';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Gepland van nu tot $end, rond de afspraken van vandaag. Eerst achterstallige taken, dan prioriteit, vervaldatum en schatting.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Inplannen als tijdblokken';

  @override
  String get assistantScheduleConfirmTitle => 'Tijdblokken aan je agenda toevoegen?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Er worden $count tijdblokken aan de agenda van vandaag toegevoegd.',
      one: 'Er wordt 1 tijdblok aan de agenda van vandaag toegevoegd.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tijdblokken toegevoegd',
      one: '1 tijdblok toegevoegd',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Staat al in je agenda';

  @override
  String get assistantPlanTimeline => 'Past vandaag';

  @override
  String get assistantNoEstimate => 'Voeg een schatting toe om deze te plannen';

  @override
  String get assistantNoNotes => 'Nog geen notities. Schrijf eerst een notitie.';

  @override
  String get assistantNoteEmpty => 'Deze notitie is leeg.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count taken gemaakt',
      one: '1 taak gemaakt',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten gemaakt',
      one: '1 kaart gemaakt',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maken',
      one: '1 maken',
      zero: 'Niets geselecteerd',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Herkend: niet-afgevinkte vakjes \"- [ ]\" en regels die beginnen met TODO: of To do:';

  @override
  String get assistantCardsHint =>
      'Herkend: \"begrip: definitie\", \"begrip — definitie\" en paren van Q:/A:-regels';

  @override
  String get assistantProviderHint =>
      'Gebruik elke dienst die compatibel is met OpenAI. De sleutel blijft in de beveiligde opslag van dit toestel en komt nooit in back-ups.';

  @override
  String get assistantEndpointHelp => 'Bijvoorbeeld https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Laat leeg om de opgeslagen sleutel te houden';

  @override
  String get assistantApiKeyRequired => 'Voer een API-sleutel in';

  @override
  String get assistantProviderSaved => 'Dienst opgeslagen';

  @override
  String get assistantProviderRemoved => 'Dienst verwijderd en sleutel gewist';

  @override
  String get assistantRemoveProviderConfirm =>
      'De dienst verwijderen en de opgeslagen API-sleutel van dit toestel wissen?';

  @override
  String get assistantAskEveryTime => 'Vragen voor elk verzoek';

  @override
  String get assistantSummarizing => 'Samenvatten…';

  @override
  String assistantSummaryNote(String host) {
    return 'Gemaakt door $host. Controleer het voordat je erop vertrouwt.';
  }

  @override
  String get assistantCopy => 'Kopiëren';

  @override
  String get assistantCopied => 'Gekopieerd';

  @override
  String get assistantConfigure => 'Dienst instellen';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Alle afspraken in deze reeks zijn verplaatst';

  @override
  String get calendarEventReminder => 'Herinnering';

  @override
  String get calendarEventRepeat => 'Herhalen';

  @override
  String get calendarEventColor => 'Kleur';

  @override
  String get calendarDefaultColor => 'Kleur van het soort gebruiken';

  @override
  String get calendarEventLinkedTask => 'Gekoppelde taak';

  @override
  String get calendarEventNoTask => 'Geen gekoppelde taak';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count afspraken',
      one: '1 afspraak',
      zero: 'Geen afspraken',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count taken te doen',
      one: '1 taak te doen',
      zero: 'geen taken te doen',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Voeg een afspraak of tijdblok toe om deze dag te plannen.';

  @override
  String get calendarNow => 'Huidige tijd';

  @override
  String get calendarRecurring => 'Herhaalt';

  @override
  String get calendarEventNotFound => 'Deze afspraak bestaat niet meer';

  @override
  String get calendarEventLocalTime => 'Tijden worden getoond in de tijdzone van je toestel';

  @override
  String get calendarEventDeleted => 'Afspraak naar prullenbak verplaatst';

  @override
  String get calendarConflictMarker => 'Overlapt met een andere afspraak';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Wijzigingen gelden voor elke afspraak in deze reeks';

  @override
  String get calendarDragHintSeries =>
      'Als je een herhalende afspraak sleept, verplaats je de hele reeks';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, taak te doen';
  }

  @override
  String get startupErrorTitle => 'Je gegevens konden niet worden geopend';

  @override
  String get startupErrorLocked =>
      'De versleutelingssleutel voor de gegevens op dit toestel is niet beschikbaar. Er is niets verwijderd. Het toestel opnieuw opstarten helpt vaak. Heb je het toestel onlangs hersteld, zet je gegevens dan terug uit een versleutelde back-up.';

  @override
  String get startupErrorCipher =>
      'Dit toestel ondersteunt de versleutelde opslag niet die de app nodig heeft. Er is niets onversleuteld opgeslagen.';

  @override
  String get startupErrorRetry => 'Opnieuw proberen';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten staan klaar om te herhalen',
      one: '1 kaart staat klaar om te herhalen',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count te herhalen';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count nieuw';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Gekende kaarten: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Voer 0 of meer in';

  @override
  String get flashcardsSearchCards => 'Kaarten zoeken';

  @override
  String get flashcardsSearchEmpty => 'Geen kaarten gevonden';

  @override
  String get flashcardsCardAdded => 'Kaart toegevoegd';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Herhalen $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Naar klembord kopiëren';

  @override
  String get flashcardsExportTitle => 'Stapel exporteren';

  @override
  String get flashcardsDeleteDeck => 'Stapel verwijderen';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, volgende herhaling over $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Vraag: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Antwoord: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Vraag tonen';

  @override
  String get flashcardsImportField => 'Te importeren kaarten';

  @override
  String get flashcardsNothingToStudy => 'Niets om te leren';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten klaar om te leren',
      one: '1 kaart klaar om te leren',
      zero: 'Geen kaarten klaar',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Per beoordeling';

  @override
  String get flashcardsDeckNotFound => 'Deze stapel is niet meer beschikbaar.';

  @override
  String get focusSessionDeleted => 'Sessie verwijderd';

  @override
  String get focusDeleteConfirm =>
      'Deze sessie uit je geschiedenis verwijderen? De tijd telt dan niet meer mee voor je doelen.';

  @override
  String get focusUnlinkTask => 'Gekoppelde taak verwijderen';

  @override
  String get focusNoteHint => 'Waar heb je aan gewerkt?';

  @override
  String get focusModeLabel => 'Timermodus';

  @override
  String focusUpNext(String phase) {
    return 'Hierna: $phase';
  }

  @override
  String get focusStopwatchHint => 'Telt op tot je stopt.';

  @override
  String get focusOpenHint => 'Geen tijdslimiet. Stop wanneer je klaar bent.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Herinneringen staan uit in de instellingen. Je krijgt geen melding als een sessie afloopt.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Alle';

  @override
  String get goalsFilterPeriod => 'Filter op periode';

  @override
  String get goalsFilterStatus => 'Filter op status';

  @override
  String get goalsEmptyFiltered => 'Geen doelen voor dit filter';

  @override
  String goalsDueOn(String date) {
    return 'Deadline $date';
  }

  @override
  String get goalsDeadline => 'Deadline (optioneel)';

  @override
  String get goalsNoDeadline => 'Geen deadline';

  @override
  String get goalsSetDeadline => 'Deadline instellen';

  @override
  String get goalsRemoveDeadline => 'Deadline verwijderen';

  @override
  String get goalsDescription => 'Beschrijving (optioneel)';

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
  String get goalsReached => 'Doel bereikt';

  @override
  String get goalsLogged => 'Voortgang genoteerd';

  @override
  String get goalsEntryDeleted => 'Item verwijderd';

  @override
  String get goalsDeleteEntry => 'Item verwijderen';

  @override
  String get goalsDeleted => 'Doel verwijderd';

  @override
  String get goalsMarkActive => 'Markeren als actief';

  @override
  String get goalsNotFound => 'Dit doel is niet meer beschikbaar';

  @override
  String get goalsLinkTask => 'Taak koppelen';

  @override
  String get goalsNoLinkedTasks => 'Nog geen gekoppelde taken';

  @override
  String get goalsUnlinkTask => 'Taak ontkoppelen';

  @override
  String get goalsTaskOpen => 'Nog niet voltooid';

  @override
  String get goalsTaskLinked => 'Taak gekoppeld';

  @override
  String get goalsTaskUnlinked => 'Taak ontkoppeld';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count voltooide gekoppelde taken',
      one: '1 voltooide gekoppelde taak',
    );
    return 'Inclusief $_temp0 in deze periode';
  }

  @override
  String get goalsHistoryAllTime =>
      'Items uit eerdere periodes blijven hier staan, maar tellen alleen mee voor hun eigen periode.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Vandaag $done van $total gedaan';
  }

  @override
  String get habitsNothingToday => 'Er zijn vandaag geen gewoonten gepland';

  @override
  String get habitsDecrease => 'Eén keer afvinken ongedaan maken';

  @override
  String get habitsResetToday => 'Vandaag op nul zetten';

  @override
  String get habitsCheckInHint => 'Lang indrukken om aan te passen';

  @override
  String get habitsName => 'Naam';

  @override
  String get habitsColor => 'Kleur';

  @override
  String get habitsValidationDays => 'Kies minstens één dag';

  @override
  String habitsReminderAt(String time) {
    return 'Elke dag om $time';
  }

  @override
  String get habitsSetReminder => 'Tijd voor herinnering instellen';

  @override
  String get habitsRemoveReminder => 'Herinnering verwijderen';

  @override
  String get habitsReminderNote =>
      'Herinneringen verschijnen op geplande dagen als meldingen zijn toegestaan.';

  @override
  String get habitsArchived => 'Gewoonte gearchiveerd';

  @override
  String get habitsNotFound => 'Deze gewoonte is niet meer beschikbaar';

  @override
  String get habitsLast30 => 'Laatste 30 dagen';

  @override
  String get habitsConsistencyNone => 'Nog niet genoeg gegevens';

  @override
  String get habitsCalendar => 'Afvinkgeschiedenis';

  @override
  String get habitsCalendarHint => 'Tik op een dag om hem te corrigeren.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count van $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Afgevinkt in de laatste 90 dagen. Regelmaat $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Afgevinkt in de laatste 90 dagen. Nog niet genoeg gegevens.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Gepauzeerde dagen tellen niet mee voor je reeks.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Gewoonte archiveren';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count keer per dag',
      one: 'Eén keer per dag',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Overige notities';

  @override
  String get notesAllNotebooks => 'Alle notitieboeken';

  @override
  String get notesNotebookName => 'Naam van het notitieboek';

  @override
  String get notesNotebookColor => 'Kleur';

  @override
  String get notesDeleteNotebook => 'Notitieboek verwijderen';

  @override
  String get notesDeleteNotebookMessage =>
      'Het notitieboek wordt verwijderd. De notities blijven bewaard en staan onder Alle notitieboeken.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Zet belangrijke notities vast om ze bovenaan te houden.';

  @override
  String get notesEmptyFavorites => 'Notities die je als favoriet markeert, verschijnen hier.';

  @override
  String get notesEmptyArchived => 'Gearchiveerde notities verschijnen hier.';

  @override
  String get notesEmptyFiltered => 'Geen notities voor deze filters.';

  @override
  String get notesArchivedSnack => 'Notitie gearchiveerd';

  @override
  String get notesUnarchivedSnack => 'Notitie teruggezet bij je notities';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done van $total klaar';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Opmaak';

  @override
  String get notesWrite => 'Schrijven';

  @override
  String get notesPreviewEmpty => 'Nog niets om te tonen.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Er linken nog geen andere notities hierheen. Link naar deze notitie met [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Geef deze notitie een titel, zodat andere notities ernaar kunnen linken.';

  @override
  String get notesLinkedTasksEmpty => 'Geen taken gekoppeld aan deze notitie.';

  @override
  String notesLinkMissing(String title) {
    return 'Er is nog geen notitie met de titel \"$title\".';
  }

  @override
  String get notesNotFound => 'Deze notitie bestaat niet meer.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Checklistpunt: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Notitie $title openen';
  }

  @override
  String get notesTaskDone => 'Voltooid';

  @override
  String get notifTimerDoneBody => 'De ingestelde tijd is voorbij.';

  @override
  String get onboardingPrivatePointDevice => 'Alleen versleuteld op dit toestel opgeslagen';

  @override
  String get onboardingPrivatePointAccount => 'Geen account nodig';

  @override
  String get onboardingPrivatePointTracking => 'Geen analyse, geen tracking';

  @override
  String get onboardingLanguageBody => 'Je kunt dit altijd wijzigen in Instellingen.';

  @override
  String get onboardingNext => 'Volgende';

  @override
  String get projectsActive => 'Actief';

  @override
  String get projectNameHint => 'bijv. Productlancering';

  @override
  String get projectGoalHint => 'Wanneer is het af?';

  @override
  String get projectNoDeadline => 'Geen deadline';

  @override
  String get projectTasksOpen => 'Open taken';

  @override
  String get projectTasksCompleted => 'Voltooide taken';

  @override
  String get projectAddTask => 'Taak aan project toevoegen';

  @override
  String get projectAddNote => 'Nieuwe projectnotitie';

  @override
  String get projectLinkedNotes => 'Notities';

  @override
  String get projectNoTasks => 'Nog geen taken in dit project';

  @override
  String get projectArchivedBadge => 'Gearchiveerd';

  @override
  String get projectDeleted => 'Project naar prullenbak verplaatst';

  @override
  String get projectDeleteMessage => 'De taken blijven zonder project in je lijst staan.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent procent voltooid';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultaten',
      one: '1 resultaat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filteren op soort';

  @override
  String searchRecentTap(String query) {
    return 'Opnieuw zoeken naar $query';
  }

  @override
  String get settingsLanguageHint =>
      'Kies de taal voor de hele app. De namen staan in hun eigen taal.';

  @override
  String get settingsThemeHint => 'Licht, donker of zoals het systeem';

  @override
  String settingsDecrease(String setting) {
    return '$setting verlagen';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting verhogen';
  }

  @override
  String get settingsQuietStart => 'Begint';

  @override
  String get settingsQuietEnd => 'Eindigt';

  @override
  String get settingsNotificationsHint =>
      'Dit bewaart je voorkeur in de app. Het systeem kan ook om toestemming vragen.';

  @override
  String get settingsDashboardHint =>
      'Sleep om de volgorde te wijzigen. Zet onderdelen uit die je niet nodig hebt.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section verplaatsen';
  }

  @override
  String get settingsDashboardReset => 'Standaardvolgorde herstellen';

  @override
  String get settingsAssistantDesc =>
      'Optionele planningshulp. Er verlaat niets dit toestel, tenzij je een dienst koppelt.';

  @override
  String get settingsAssistantSetup => 'Assistent en dienst instellen';

  @override
  String get settingsTrashDesc => 'Verwijderde items herstellen of definitief wissen';

  @override
  String get settingsEraseFirstBody =>
      'Dit kan niet ongedaan worden gemaakt. Maak eventueel eerst een versleutelde back-up.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Typ $word';
  }

  @override
  String get settingsEraseFailed => 'De gegevens konden niet worden gewist. Er is niets gewijzigd.';

  @override
  String get settingsAboutTagline => 'Een privé productiviteitswerkplek die lokaal werkt.';

  @override
  String get backupShowPassword => 'Wachtwoord tonen';

  @override
  String get backupHidePassword => 'Wachtwoord verbergen';

  @override
  String get backupSaved => 'Back-up opgeslagen';

  @override
  String get backupFailed => 'De back-up kon niet worden gemaakt. Je gegevens zijn ongewijzigd.';

  @override
  String get backupReadFailed => 'Het gekozen bestand kon niet worden gelezen.';

  @override
  String get backupRestoreFailed => 'Herstellen mislukt. Er is niets gewijzigd.';

  @override
  String get backupShareSubject => 'Versleutelde back-up van Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Elke $count dagen',
      one: 'Elke dag',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Elke $count weken',
      one: 'Elke week',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Elke $count maanden',
      one: 'Elke maand',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Elke $count jaar',
      one: 'Elk jaar',
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
    return 'op $days';
  }

  @override
  String get repeatEndsLabel => 'Eindigt';

  @override
  String get repeatEndsAfter => 'Na een aantal keer';

  @override
  String get repeatCountLabel => 'Aantal keer';

  @override
  String get reminderNone => 'Geen herinnering';

  @override
  String get reminderCustomTime => 'Op een bepaald moment';

  @override
  String get a11yDecrease => 'Verlagen';

  @override
  String get a11yIncrease => 'Verhogen';

  @override
  String get pickTaskTitle => 'Kies een taak';

  @override
  String get pickTaskEmpty => 'Geen open taken';

  @override
  String get tasksSearchTooltip => 'Taken zoeken';

  @override
  String get tasksSectionOverdue => 'Achterstallig';

  @override
  String get tasksSectionToday => 'Vandaag';

  @override
  String get tasksRecurringSemantics => 'Herhaalt';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimale prioriteit';

  @override
  String get tasksFilterCategory => 'Categorie';

  @override
  String get tasksFilterAnyCategory => 'Elke categorie';

  @override
  String get tasksFilterLabel => 'Label';

  @override
  String get tasksFilterAnyLabel => 'Elk label';

  @override
  String get tasksFilterReset => 'Filters wissen';

  @override
  String get tasksViewByProject => 'Per project';

  @override
  String get tasksViewByPriority => 'Per prioriteit';

  @override
  String get tasksViewByCategory => 'Per categorie';

  @override
  String get tasksGroupNoCategory => 'Geen categorie';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count taken',
      one: '1 taak',
    );
    return 'Geblokkeerd door $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Deze taak wordt geblokkeerd door onvoltooide taken. Toch voltooien?';

  @override
  String get taskStartFocus => 'Focussen op deze taak';

  @override
  String get taskRemoveDate => 'Datum verwijderen';

  @override
  String get taskAllDay => 'Geen vaste tijd';

  @override
  String get taskSaved => 'Taak opgeslagen';

  @override
  String get taskCreated => 'Taak gemaakt';

  @override
  String get taskReminderNeedsDue =>
      'Stel een vervaldatum in om relatieve herinneringen te gebruiken';

  @override
  String get taskLabelName => 'Naam van het label';

  @override
  String get taskPlanning => 'Planning';

  @override
  String get taskOrganize => 'Ordenen';

  @override
  String get taskBreakdown => 'Opdeling';

  @override
  String get trashDeleteTaskTitle => 'Deze taak definitief verwijderen?';

  @override
  String get trashDeleteNoteTitle => 'Deze notitie definitief verwijderen?';

  @override
  String get trashDeleteBody => 'Dit kan niet ongedaan worden gemaakt.';

  @override
  String get trashEmptyTitle => 'Prullenbak legen?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items worden definitief verwijderd.',
      one: '1 item wordt definitief verwijderd.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Hersteld';

  @override
  String get trashPurged => 'Definitief verwijderd';

  @override
  String trashDeletedOn(String date) {
    return 'Verwijderd $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Voorlezen';

  @override
  String get flashcardsTtsUnavailable => 'Tekst-naar-spraak is niet beschikbaar op dit toestel.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Er is geen stem geïnstalleerd voor deze taal. Voeg er een toe in de Android-instellingen voor tekst-naar-spraak.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Vonk',
      'rocket': 'Raket',
      'book': 'Boek',
      'work': 'Werk',
      'home': 'Thuis',
      'heart': 'Hart',
      'code': 'Code',
      'palette': 'Palet',
      'fitness': 'Fitness',
      'school': 'School',
      'travel': 'Reizen',
      'money': 'Sparen',
      'other': 'Pictogram',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Meer velden';

  @override
  String get cardFieldExample => 'Voorbeeld';

  @override
  String get cardFieldExplanation => 'Uitleg';

  @override
  String get cardFieldPronunciation => 'Uitspraak';

  @override
  String get cardFieldNotes => 'Aanvullende notities';

  @override
  String get projectMilestones => 'Mijlpalen';

  @override
  String get milestoneAdd => 'Mijlpaal toevoegen';

  @override
  String get milestoneEdit => 'Mijlpaal bewerken';

  @override
  String get milestoneTitleLabel => 'Mijlpaal';

  @override
  String get milestoneNoDate => 'Geen datum';

  @override
  String get milestonesEmpty =>
      'Nog geen mijlpalen. Voeg controlepunten met een datum toe om het project in de agenda te volgen.';

  @override
  String get milestoneDeleted => 'Mijlpaal verwijderd';

  @override
  String milestoneDoneA11y(String title) {
    return 'Mijlpaal \"$title\" markeren als klaar';
  }

  @override
  String calendarMilestone(String project) {
    return 'Mijlpaal · $project';
  }

  @override
  String get tasksViewInbox => 'Inbox';

  @override
  String get tasksViewArchived => 'Gearchiveerd';

  @override
  String get tasksEmptyInbox =>
      'Taken zonder project of datum komen hier terecht. Sorteer ze als je even tijd hebt.';

  @override
  String get tasksEmptyArchived =>
      'Gearchiveerde taken worden hier bewaard, buiten je lijsten en herinneringen.';

  @override
  String get taskArchivedBadge => 'Gearchiveerd';

  @override
  String get taskStatusInProgress => 'Bezig';

  @override
  String get taskArchived => 'Taak gearchiveerd';

  @override
  String get taskUnarchived => 'Taak teruggezet uit het archief';

  @override
  String get focusPlanTitle => 'Sessieplan';

  @override
  String focusPlanTotal(String duration) {
    return 'Totaal $duration';
  }

  @override
  String get focusPlanRounds => 'Focussessies';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Lange pauze na';

  @override
  String get focusPlanSkipLastBreak => 'Laatste pauze overslaan';

  @override
  String get focusPlanAutoBreaks => 'Pauzes automatisch starten';

  @override
  String get focusPlanAutoFocus => 'Focus automatisch starten na een pauze';

  @override
  String get focusPlanSave => 'Plan opslaan';

  @override
  String get focusPlanNameHint => 'bijv. Examenvoorbereiding';

  @override
  String get focusPlanSaved => 'Plan opgeslagen';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min focus, $rest min pauze';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label verlagen';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label verhogen';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sessie $current van $total';
  }

  @override
  String get focusSeriesComplete => 'Reeks voltooid. Goed gedaan!';

  @override
  String get filterAll => 'Alle';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added geïmporteerd · $duplicates dubbele overgeslagen · $invalid onvolledige regels';
  }

  @override
  String get flashcardsSuspend => 'Kaart pauzeren';

  @override
  String get flashcardsResume => 'Kaart hervatten';

  @override
  String get flashcardsSuspended => 'Kaart gepauzeerd: hij wordt niet ingepland';

  @override
  String get flashcardsResumed => 'Kaart hervat';

  @override
  String get flashcardsSuspendedFilter => 'Gepauzeerd';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown van $total kaarten';
  }

  @override
  String get flashcardsImportFile => 'Uit bestand';

  @override
  String get speechTitle => 'Spraak';

  @override
  String get speechAppLanguage => 'Taal van de app';

  @override
  String get speechFrontLanguage => 'Taal van de voorkant';

  @override
  String get speechBackLanguage => 'Taal van de achterkant';

  @override
  String get speechRepeat => 'Elke voorlezing herhalen';

  @override
  String get speechRate => 'Snelheid';

  @override
  String get speechAutoRead => 'De vraag automatisch voorlezen';

  @override
  String get speechHint =>
      'Gebruikt de stemmen die op dit toestel staan, offline. Heeft een taal geen stem, dan hoor je dat en wordt er niets anders gebruikt.';

  @override
  String get studyHowTitle => 'Hoe wil je leren?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten herhalen',
      one: '1 kaart herhalen',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Alle kaarten oefenen (planning blijft gelijk)';

  @override
  String get studyPracticeMistakes => 'Recente fouten oefenen';

  @override
  String get studyPracticeHint =>
      'Oefenrondes veranderen nooit wanneer kaarten aan de beurt zijn. Herhalen werkt de planning bij.';

  @override
  String get studyModeClassic => 'Klassiek';

  @override
  String get studyModeReverse => 'Omgekeerd';

  @override
  String get studyModeMixed => 'Beide kanten op';

  @override
  String get studyModeTyped => 'Het antwoord typen';

  @override
  String get studyModeChoice => 'Meerkeuze';

  @override
  String get studyModeListening => 'Luisteren';

  @override
  String get studyPractice => 'oefenen';

  @override
  String get studyNoMistakes => 'Geen recente fouten in deze stapel. Mooi zo!';

  @override
  String get studyTypeAnswer => 'Typ je antwoord';

  @override
  String get studyCheck => 'Controleren';

  @override
  String get studyKnewIt => 'Ik wist het';

  @override
  String get studyDidntKnow => 'Wist ik niet';

  @override
  String studyMistakes(int count) {
    return 'Gemist ($count)';
  }

  @override
  String get studyRepeatMistakes => 'De gemiste kaarten herhalen';

  @override
  String get studyCorrect => 'Goed';

  @override
  String get studyAlmost => 'Bijna — let op de spelling';

  @override
  String get studyWrong => 'Niet helemaal';

  @override
  String get studyShowText => 'Tekst tonen';

  @override
  String get flashcardsImportFileFailed =>
      'Het bestand kon niet worden geopend. Je kunt de inhoud ook plakken.';

  @override
  String get studyNoMatchingCards => 'Nog geen kaarten voor deze keuze.';

  @override
  String get studyPracticeNew => 'Alleen nieuwe';

  @override
  String get studyPracticeHard => 'Moeilijke kaarten';

  @override
  String get studyPracticeFavorites => 'Favorieten';

  @override
  String get studySessionSize => 'Kaarten per sessie';

  @override
  String get studySessionAll => 'Alle';

  @override
  String get studyOrder => 'Volgorde';

  @override
  String get studyOrderDue => 'Langst achterstallig eerst';

  @override
  String get studyOrderRandom => 'Willekeurig';

  @override
  String get studyOrderHardest => 'Moeilijkste eerst';

  @override
  String get flashcardsHard => 'Moeilijk';

  @override
  String get flashcardsFavorites => 'Favorieten';

  @override
  String get flashcardsFavorite => 'Aan favorieten toevoegen';

  @override
  String get flashcardsUnfavorite => 'Uit favorieten verwijderen';

  @override
  String get flashcardsDuplicate => 'Dupliceren';

  @override
  String get flashcardsMoveTo => 'Naar stapel verplaatsen';

  @override
  String get flashcardsNoOtherDeck => 'Maak eerst een andere stapel.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten verplaatst',
      one: 'Kaart verplaatst',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Tag toevoegen';

  @override
  String get flashcardsTagHint => 'bijv. werkwoorden';

  @override
  String flashcardsSelected(int count) {
    return '$count geselecteerd';
  }

  @override
  String get flashcardsSelectAll => 'Alle getoonde selecteren';

  @override
  String flashcardsSelectCard(String front) {
    return '$front selecteren';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Herinnering $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Mogelijk dubbel';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Deze stapel heeft al “$front” → “$back”. Toch opslaan?';
  }

  @override
  String get flashcardsSaveAnyway => 'Toch opslaan';

  @override
  String get flashcardsStats => 'Statistieken';

  @override
  String get flashcardsStatTotal => 'Kaarten';

  @override
  String get flashcardsStatLearning => 'Aan het leren';

  @override
  String get flashcardsStatMatureCaption => '21+ dagen onthouden';

  @override
  String get flashcardsStatReviewsToday => 'Herhalingen vandaag';

  @override
  String get flashcardsStatCorrect => 'Goede antwoorden';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Laatste $days dagen';
  }

  @override
  String get flashcardsStatForget => 'Vergeetpercentage';

  @override
  String get flashcardsStatForgetCaption => '“Opnieuw” bij geleerde kaarten';

  @override
  String get flashcardsStatRecall => 'Kans dat je het nu weet';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-schatting, herhaalde kaarten';

  @override
  String flashcardsStatActivity(int count) {
    return 'Herhalingen per dag · $count in totaal';
  }

  @override
  String get flashcardsStatHistory => 'Laatste antwoorden';

  @override
  String get flashcardsStatNoHistory =>
      'Nog geen herhalingen. Leer met de stapel om hier je voortgang te zien.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field voorlezen';
  }

  @override
  String get speechVoice => 'Stem';

  @override
  String get speechVoiceDefault => 'Automatisch';

  @override
  String get speechVoiceOnline => 'internet nodig';

  @override
  String get speechTest => 'Stem testen';

  @override
  String get importNext => 'Voorbeeld';

  @override
  String get importPreviewTitle => 'Kolommen aan velden koppelen';

  @override
  String get importIgnoreColumn => 'Negeren';

  @override
  String importColumn(int n) {
    return 'Kolom $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kaarten klaar · $invalid onvolledige regels worden overgeslagen';
  }

  @override
  String get importNeedFrontBack => 'Kies welke kolommen de voor- en achterkant zijn.';

  @override
  String get actionMoveUp => 'Omhoog';

  @override
  String get actionMoveDown => 'Omlaag';

  @override
  String get flashcardsLayoutTitle => 'Kaartindeling';

  @override
  String get flashcardsLayoutHint =>
      'Hernoem, verberg of herschik de extra velden van deze stapel. De inhoud van de kaarten verandert nooit.';

  @override
  String flashcardsLayoutShow(String field) {
    return '$field tonen tijdens het leren';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Het antwoord stap voor stap tonen';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'De achterkant verschijnt eerst; elk extra veld opent met een tik.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field tonen';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Dit bestand is groter dan $mb MB.';
  }

  @override
  String get flashcardsImage => 'Afbeelding';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Afbeelding toevoegen';

  @override
  String get flashcardsAddAudio => 'Audio toevoegen';

  @override
  String get flashcardsPlayAudio => 'Opname afspelen';

  @override
  String get flashcardsAudioUnavailable => 'Deze opname kan niet worden afgespeeld op dit toestel.';

  @override
  String get flashcardsCustomFields => 'Je velden';

  @override
  String get flashcardsTemplates => 'Sjablonen';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Veld $n';
  }

  @override
  String get flashcardsAddField => 'Veld toevoegen';

  @override
  String get flashcardsFieldName => 'Naam van het veld';

  @override
  String get flashcardsFieldLangDefault => 'Taal van de kant';

  @override
  String get flashcardsTemplateConfirm =>
      'Het sjabloon bepaalt hoe velden worden getoond en voegt zijn velden toe. Je kaarten en bestaande velden blijven zoals ze zijn.';

  @override
  String get flashcardsApplyTemplate => 'Toepassen';

  @override
  String get templateVocabulary => 'Woordenschat';

  @override
  String get templateTwoTranslations => 'Woord met twee vertalingen';

  @override
  String get templateQuestionAnswer => 'Vraag en antwoord';

  @override
  String get templateDefinition => 'Begrip en definitie';

  @override
  String get templateGrammar => 'Grammaticaregel';

  @override
  String get templateFieldPlural => 'Meervoud';

  @override
  String get templateFieldTranslation2 => 'Tweede vertaling';

  @override
  String get templateFieldSynonyms => 'Synoniemen';

  @override
  String get templateFieldRule => 'Regel';

  @override
  String get deckCategory => 'Niveau of onderwerp';

  @override
  String get deckCategoryHint => 'bijv. A1, Geneeskunde';

  @override
  String get flashcardsSearchAll => 'Alle kaarten doorzoeken';

  @override
  String get flashcardsSearchAllHint => 'Woord, vertaling, voorbeeld, notitie, tag…';

  @override
  String get flashcardsAllDecks => 'Alle stapels';

  @override
  String get flashcardsAllLanguages => 'Alle talen';

  @override
  String get flashcardsLangUnset => 'Taal niet ingesteld';

  @override
  String get flashcardsLevelUnset => 'Geen niveau of onderwerp';

  @override
  String get flashcardsByLanguage => 'Voortgang per taal';

  @override
  String get flashcardsByLevel => 'Voortgang per niveau of onderwerp';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks stapels · $cards kaarten · $mature gekend · $due te herhalen · $correct goed (30 dagen)';
  }

  @override
  String get flashcardsRecord => 'Opnemen';

  @override
  String get flashcardsRecording => 'Opnemen…';

  @override
  String get flashcardsRecordStop => 'Stoppen en bewaren';

  @override
  String get flashcardsMicDenied =>
      'Toegang tot de microfoon staat uit. Sta die toe in de systeeminstellingen om op te nemen.';

  @override
  String get flashcardsRecordFailed => 'Opnemen is niet beschikbaar op dit toestel.';

  @override
  String get soundsTitle => 'Geluiden';

  @override
  String get soundsNature => 'Natuur';

  @override
  String get soundsNoise => 'Focusruis';

  @override
  String get soundRain => 'Regen';

  @override
  String get soundStorm => 'Onweer';

  @override
  String get soundRiver => 'Rivier';

  @override
  String get soundOcean => 'Golven';

  @override
  String get soundFire => 'Kampvuur';

  @override
  String get soundForest => 'Vogels in het bos';

  @override
  String get soundNight => 'Zomernacht';

  @override
  String get soundWhite => 'Witte ruis';

  @override
  String get soundPink => 'Roze ruis';

  @override
  String get soundBrown => 'Bruine ruis';

  @override
  String get soundsPlay => 'Afspelen';

  @override
  String get soundsSleep => 'Slaaptimer';

  @override
  String get soundsSleepOff => 'Uit';

  @override
  String soundsSleepAt(String time) {
    return 'Stopt om $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Er kunnen maximaal $count geluiden tegelijk spelen.';
  }

  @override
  String get soundsHint =>
      'Tik op een geluid om te beginnen. Combineer er meerdere en stel elk volume in.';

  @override
  String get soundsMixer => 'Mix';

  @override
  String soundsVolumeOf(String name) {
    return 'Volume van $name';
  }

  @override
  String get soundsChannel => 'Natuurgeluiden';

  @override
  String get settingsEndTone => 'Geluid aan het einde van de timer';

  @override
  String get toneGentle => 'Zachte piepjes';

  @override
  String get toneBeeps => 'Piepjes';

  @override
  String get toneWood => 'Klop op hout';

  @override
  String get toneBird => 'Vogelroep';

  @override
  String get toneStream => 'Beekje';

  @override
  String get toneSystem => 'Geluid van de telefoon';

  @override
  String get speechOnPhone => 'Op deze telefoon';

  @override
  String get speechAllLanguages => 'Alle talen';

  @override
  String get speechSearchLanguage => 'Talen zoeken';

  @override
  String get speechGetVoices => 'Meer stemmen downloaden';

  @override
  String get speechGetVoicesHint =>
      'Talen zonder stem kun je downloaden in de spraakinstellingen van de telefoon.';

  @override
  String get speechSettingsFailed =>
      'De spraakinstellingen van deze telefoon konden niet worden geopend.';

  @override
  String get speechVoiceMissing => 'Geen stem geïnstalleerd';

  @override
  String get speechPause => 'Pauze tussen herhalingen';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Het voorbeeld voorlezen met het antwoord';

  @override
  String get flashListen => 'Luisteren';

  @override
  String get flashListenNext => 'Volgende kaart';

  @override
  String get flashListenEmpty => 'Geen kaarten om naar te luisteren.';

  @override
  String get flashViewTable => 'Tabel';

  @override
  String get flashViewCards => 'Kaarten';

  @override
  String get flashSwapSides => 'Kolommen omwisselen';

  @override
  String get flashSort => 'Sorteren';

  @override
  String get flashSortNewest => 'Nieuwste eerst';

  @override
  String get flashSortAlpha => 'A tot Z';

  @override
  String get flashSortDue => 'Te herhalen eerst';

  @override
  String get flashSortHard => 'Moeilijkste eerst';

  @override
  String get flashPasteCards => 'Kaarten plakken';

  @override
  String get flashClipboardEmpty => 'Het klembord bevat geen tekst.';

  @override
  String get flashMenuAdd => 'Kaarten toevoegen';

  @override
  String get flashMenuDeck => 'Stapel';

  @override
  String get flashToday => 'Vandaag';

  @override
  String get flashStudyNow => 'Leren';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten beantwoord',
      one: '1 kaart beantwoord',
      zero: 'Geen kaarten beantwoord',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Regen in het bos';

  @override
  String get autoBackupTitle => 'Automatische back-ups';

  @override
  String get autoBackupDesc => 'Elke dag op deze telefoon; de laatste 7 blijven bewaard';

  @override
  String get autoBackupHint =>
      'Deze kopieën blijven op deze telefoon en worden verwijderd als de app wordt verwijderd. Gebruik “Back-up maken” om een bestand op te slaan als je naar een nieuwe telefoon gaat.';

  @override
  String get autoBackupNone => 'Nog geen automatische back-up. De eerste wordt vandaag gemaakt.';

  @override
  String get autoBackupRestore => 'Herstellen';

  @override
  String autoBackupConfirm(String date) {
    return 'Alle huidige gegevens vervangen door de back-up van $date?';
  }

  @override
  String get autoBackupRestored => 'Hersteld.';

  @override
  String get errorLogTitle => 'Foutenlogboek';

  @override
  String get errorLogHint =>
      'Als er iets misgaat, wordt dat hier genoteerd: alleen het soort fout en waar in de code, nooit je inhoud. Deel het om het probleem te helpen oplossen.';

  @override
  String get errorLogEmpty => 'Geen fouten genoteerd.';

  @override
  String get errorLogClear => 'Wissen';

  @override
  String get soundsWithFocus => 'Afspelen bij focussessies';

  @override
  String get soundsWithFocusHint => 'Je mix start met een focussessie en pauzeert tijdens pauzes.';

  @override
  String get soundsSavedMixes => 'Opgeslagen mixen';

  @override
  String get soundsSaveMix => 'Deze mix opslaan';

  @override
  String get soundsMixNameHint => 'Naam, bijv. Regenachtige bibliotheek';

  @override
  String soundsDeleteMix(String name) {
    return 'De mix “$name” verwijderen?';
  }

  @override
  String get settingsReviewReminderHint =>
      'Eén keer per dag, alleen als er kaarten te herhalen zijn';

  @override
  String get settingsReviewTime => 'Tijd van de herinnering';

  @override
  String get shortcutFocus => 'Focus';

  @override
  String get shortcutNewTask => 'Nieuwe taak';

  @override
  String get shortcutReview => 'Kaarten herhalen';

  @override
  String get shortcutSounds => 'Natuurgeluiden';

  @override
  String get myDayTitle => 'Begin mijn dag';

  @override
  String get myDayHint => 'Je dag in één oogopslag, dan met één tik focussen';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count taken voor vandaag',
      one: '1 taak voor vandaag',
      zero: 'Geen taken voor vandaag',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Vandaag geen afspraken meer';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Hierna: $title om $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nog $count gewoonten',
      one: 'Nog 1 gewoonte',
      zero: 'Alle gewoonten gedaan',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Begin met een focussessie';

  @override
  String get hijriMonth1 => 'Moeharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi al-Thani';

  @override
  String get hijriMonth5 => 'Djoemada al-Oela';

  @override
  String get hijriMonth6 => 'Djoemada al-Achira';

  @override
  String get hijriMonth7 => 'Radjab';

  @override
  String get hijriMonth8 => 'Sja\'ban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Sjawwal';

  @override
  String get hijriMonth11 => 'Dhoe al-Qa\'da';

  @override
  String get hijriMonth12 => 'Dhoe al-Hiddja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year AH';
  }

  @override
  String get settingsHijri => 'Islamitische data';

  @override
  String get settingsHijriHint => 'Getoond in de agenda en op het startscherm (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Vandaag $done van $goal kaarten';
  }

  @override
  String get studyGoalReached => 'Dagdoel bereikt. Goed gedaan!';

  @override
  String get studyWeekTitle => 'Jouw week';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarten beantwoord in 7 dagen',
      one: '1 kaart beantwoord in 7 dagen',
      zero: 'Geen kaarten beantwoord in 7 dagen',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration focus in 7 dagen';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Reeks: $current · Langste: $best';
  }

  @override
  String get studyGoalTitle => 'Dagdoel (kaarten)';

  @override
  String get studyGoalOff => 'Uit';

  @override
  String get focusDndTitle => 'Niet storen tijdens het focussen';

  @override
  String get focusDndHint => 'Gaat aan bij elke focussessie en weer uit tijdens de pauze';

  @override
  String get focusDndNeedsAccess =>
      'Sta toegang toe in de telefooninstellingen om dit te gebruiken';

  @override
  String get voiceInput => 'Spreken om te typen';

  @override
  String get voiceInputPrompt => 'Spreek nu';

  @override
  String get voiceInputUnavailable =>
      'Spraakinvoer is niet beschikbaar op deze telefoon. Installeer of activeer een spraakdienst (bijvoorbeeld Spraakherkenning en -synthese van Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Zonsopkomst';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Islamitische Wereldliga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egyptische Algemene Autoriteit';

  @override
  String get prayerMethodJordan => 'Jordanië, ministerie van Awqaf';

  @override
  String get prayerMethodKarachi => 'Universiteit voor Islamitische Wetenschappen, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Golfregio';

  @override
  String get prayerMethodKuwait => 'Koeweit';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turkije, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Maleisië, Indonesië';

  @override
  String get prayerMethodFrance => 'Frankrijk (12°)';

  @override
  String get prayerMethodRussia => 'Rusland, Geestelijk Bestuur';

  @override
  String prayerNotifTitle(String name) {
    return 'Tijd voor $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Gebedstijd · $time';
  }

  @override
  String get prayerTitle => 'Gebedstijden';

  @override
  String get prayerOffHint =>
      'Kies je stad om de gebedstijden te zien. Ze worden op de telefoon berekend; toegang tot je locatie is niet nodig.';

  @override
  String get prayerChooseCity => 'Stad kiezen';

  @override
  String get prayerCity => 'Stad';

  @override
  String get prayerCitySearch => 'Zoek een stad';

  @override
  String get prayerMethod => 'Berekeningsmethode';

  @override
  String get prayerHanafiAsr => 'Hanafitische Asr (later tijdstip)';

  @override
  String get prayerReminders => 'Melding bij elke gebedstijd';

  @override
  String get prayerPauseFocus => 'Focus pauzeren bij gebedstijd';

  @override
  String get prayerPauseFocusHint => 'Een lopende sessie pauzeert; ga na het gebed verder';

  @override
  String get prayerTurnOff => 'Gebedstijden uitzetten';

  @override
  String get prayerAccuracyNote =>
      'Berekende tijden kunnen een paar minuten afwijken van je plaatselijke moskee.';

  @override
  String prayerNext(String name, String time) {
    return '$name om $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Dit Anki-bestand gebruikt het nieuwste formaat. Exporteer in Anki opnieuw met “Oudere Anki-versies ondersteunen” aan en importeer dat bestand.';

  @override
  String get importTemplate => 'Spreadsheetsjabloon';

  @override
  String get importTemplateFront => 'appel';

  @override
  String get importTemplateBack => 'een ronde vrucht';

  @override
  String get importTemplateExample => 'Ik eet elke dag een appel.';

  @override
  String get importTemplateTag => 'eten';

  @override
  String get starterTitle => 'Startstapels';

  @override
  String get starterHint =>
      'Voeg er een toe om meteen te beginnen met leren. Je kunt hem later bewerken of verwijderen.';

  @override
  String get starterAdd => 'Toevoegen';

  @override
  String get starterWords => 'Alledaagse Engelse woorden (Arabisch)';

  @override
  String get starterCapitals => 'Hoofdsteden van de wereld';

  @override
  String get starterElements => 'Scheikundige elementen';

  @override
  String get settingsAccent => 'Accentkleur';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentBlue => 'Blauw';

  @override
  String get accentTeal => 'Blauwgroen';

  @override
  String get accentGreen => 'Groen';

  @override
  String get accentRose => 'Roze';

  @override
  String get accentAmber => 'Amber';

  @override
  String get settingsFlashTextSize => 'Tekstgrootte van flashcards';

  @override
  String get settingsFlashTextSample => 'Voorbeeld';

  @override
  String get widgetStartFocus => 'Tik om te focussen';

  @override
  String widgetFocusUntil(String time) {
    return 'Focus tot $time';
  }

  @override
  String get widgetNoCardsDue => 'Kaarten: alles gedaan';

  @override
  String get faqMyDayQ => 'Wat doet “Begin mijn dag”?';

  @override
  String get faqMyDayA =>
      'Eén keer per dag biedt het startscherm het aan: je ziet de taken van vandaag, de volgende afspraak, de gewoonten die nog openstaan en de kaarten om te herhalen, en start met één tik een focussessie. Houd het app-pictogram ingedrukt voor snelle acties, of voeg de widget toe aan je startscherm om focustijd en kaarten te zien.';

  @override
  String get faqTasksQ => 'Hoe voeg ik een taak met een herinnering toe?';

  @override
  String get faqTasksA =>
      'Tik op Nieuwe taak op Start of op + bij Taken. Typ de titel of spreek hem in met de microfoon, en stel een vervaldatum, tijd en herinnering in. Achterstallige taken staan bovenaan.';

  @override
  String get faqFocusQ => 'Hoe werkt de focustimer?';

  @override
  String get faqFocusA =>
      'Kies Pomodoro, een aftelling of vrije tijd en tik op Starten; pauzes kunnen automatisch volgen. In Instellingen kies je het eindgeluid, zet je Niet storen aan tijdens het focussen en laat je je natuurgeluiden bij elke sessie spelen.';

  @override
  String get faqSoundsQ => 'Kan ik natuurgeluiden combineren?';

  @override
  String get faqSoundsA =>
      'Zet tot zes echte opnames aan, stel elk volume in en sla de mix op met een naam. Ze spelen door op de achtergrond, en een slaaptimer kan ze stoppen. Er wordt geen muziek gebruikt.';

  @override
  String get faqCalendarQ => 'Kan de agenda islamitische data tonen?';

  @override
  String get faqCalendarA =>
      'Ja. Islamitische data (Umm al-Qura) verschijnen automatisch in het Arabisch en kunnen in Instellingen voor elke taal worden aangezet. Afspraken, taken met een vervaldatum en mijlpalen van projecten staan samen.';

  @override
  String get faqFlashcardsQ => 'Hoe bepaalt herhalen welke kaarten ik zie?';

  @override
  String get faqFlashcardsA =>
      'Kaarten die je goed kent komen na langere tijd terug, en kaarten die je mist komen snel terug (gespreide herhaling). Beoordeel elk antwoord met Opnieuw, Moeilijk, Goed of Makkelijk. Stel een dagdoel in en houd je reeks vast op de kaart Vandaag. Stel bij een stapel een examendatum in om te zien hoeveel dagen er nog zijn en hoeveel nieuwe kaarten je per dag moet leren. Sorteer op \"Mijn volgorde\" om kaarten op hun plek te slepen, tik op de luidspreker aan een van beide kanten om hem te horen, en stel snelheid en herhalingen in via het menu Spraak.';

  @override
  String get faqImportQ => 'Kan ik kaarten uit Anki of Excel overnemen?';

  @override
  String get faqImportA =>
      'Ja. Kies Importeren in een stapel en kies een bestand: Anki (.apkg), Excel (.xlsx) of CSV, en koppel de kolommen. Gebruik “Spreadsheetsjabloon” om kaarten op een computer te schrijven. Afbeeldingen en geluiden in Anki-bestanden worden niet geïmporteerd.';

  @override
  String get faqNotesQ => 'Wat kunnen notities?';

  @override
  String get faqNotesA =>
      'Schrijf vrij met checklists en opmaak, zet belangrijke notities vast of markeer ze als favoriet, voeg tags toe en koppel notities aan taken. Met de microfoonknop kun je dicteren. Een nieuwe notitie kan beginnen met een sjabloon (college, boeksamenvatting, dagboek, weekplanning), en met de afbeeldingsknop voeg je foto\'s toe.';

  @override
  String get faqHabitsQ => 'Hoe worden reeksen van gewoonten geteld?';

  @override
  String get faqHabitsA =>
      'Een dag telt als je op een geplande dag het doel van de gewoonte haalt. Een gewoonte pauzeren houdt je reeks veilig. Elke gewoonte kan een eigen herinneringstijd hebben.';

  @override
  String get faqGoalsQ => 'Hoe volgen doelen de voortgang?';

  @override
  String get faqGoalsA =>
      'Geef een doel een streefwaarde en een eenheid, en noteer je voortgang. De kaart laat zien hoe ver je bent en hoeveel er nog over is voor de deadline.';

  @override
  String get faqProjectsQ => 'Waar zijn projecten voor?';

  @override
  String get faqProjectsA =>
      'Groepeer taken onder een project, voeg mijlpalen met een datum toe en volg de totale voortgang. Mijlpalen staan ook in de agenda.';

  @override
  String get faqInsightsQ => 'Wat laat Inzichten zien?';

  @override
  String get faqInsightsA =>
      'Je focustijd, afgeronde taken en studie over dagen en weken, met rustige tips. Alles wordt op je telefoon berekend.';

  @override
  String get faqSpacesQ => 'Waar staan alle onderdelen?';

  @override
  String get faqSpacesA =>
      'Ruimtes toont elk deel van de app (notities, stapels, gewoonten, doelen, projecten, geluiden en meer), zodat de hoofdbalk eenvoudig blijft.';

  @override
  String get faqBackupQ => 'Hoe worden mijn gegevens geback-upt?';

  @override
  String get faqBackupA =>
      'Elke dag bewaart de app stil een versleutelde kopie op deze telefoon en houdt de laatste 7. In Instellingen kun je ook een met een wachtwoord beveiligd back-upbestand exporteren en dat op een andere telefoon terugzetten.';

  @override
  String get faqPrayerQ => 'Hoe werken gebedstijden?';

  @override
  String get faqPrayerA =>
      'Kies je stad in Instellingen → Gebedstijden. De tijden worden op de telefoon berekend met de methode die daar gebruikt wordt, en je kunt de methode en de Asr-school wijzigen. Je kunt bij elk gebed een melding krijgen, en een lopende focussessie pauzeert.';

  @override
  String get faqPrivacyQ => 'Waar worden mijn gegevens bewaard?';

  @override
  String get faqPrivacyA =>
      'Alleen op je telefoon, in een versleutelde database. Er is geen account en geen tracking. Het internet wordt alleen gebruikt door functies die je zelf aanzet, zoals de optionele assistent.';

  @override
  String get faqAssistantQ => 'Wat is de assistent?';

  @override
  String get faqAssistantA =>
      'Een optionele helper die je in Instellingen aan je eigen AI-dienst koppelt. Hij staat standaard uit en vraagt het voordat er notitietekst wordt verstuurd.';

  @override
  String get tourPlanTitle => 'Plan je dag';

  @override
  String get tourPlanBody =>
      'Taken, agenda en gewoonten op één rustige plek. Begin elke ochtend met “Begin mijn dag”.';

  @override
  String get tourFocusTitle => 'Focus diep';

  @override
  String get tourFocusBody =>
      'Sessies met een timer, echte natuurgeluiden, Niet storen en zachte eindtonen.';

  @override
  String get tourLearnTitle => 'Leer voorgoed';

  @override
  String get tourLearnBody =>
      'Flashcards met gespreide herhaling, spraak in veel talen en import uit Anki of Excel.';

  @override
  String get helpTitle => 'Hulp en vragen';

  @override
  String get helpOpen => 'Openen';

  @override
  String get helpTour => 'Rondleiding bekijken';

  @override
  String get tourNext => 'Volgende';

  @override
  String get tourDone => 'Aan de slag';

  @override
  String get transferColTitle => 'Titel';

  @override
  String get transferColNotes => 'Notities';

  @override
  String get transferColBody => 'Tekst';

  @override
  String get transferColDue => 'Vervaldatum';

  @override
  String get transferColPriority => 'Prioriteit (0-3)';

  @override
  String get transferColDone => 'Klaar';

  @override
  String get transferColProject => 'Project';

  @override
  String get transferColCategory => 'Categorie';

  @override
  String get transferTitle => 'Importeren en exporteren';

  @override
  String get transferSaveAs => 'Opslaan als';

  @override
  String get transferImport => 'Importeren uit een bestand';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV of een tabel in Word. Kolommen: titel, vervaldatum (2026-12-31), prioriteit 0-3, klaar, project, notities. Taken die al in de app staan, worden overgeslagen.';

  @override
  String get transferImportNotesHint =>
      'Word-, Markdown- of tekstbestanden worden een notitie. Excel of CSV: één notitie per rij (titel, tekst).';

  @override
  String get transferSaved => 'Bestand opgeslagen';

  @override
  String get transferFailed => 'Het bestand kon niet worden gemaakt. Er is niets gewijzigd.';

  @override
  String get transferUnsupported =>
      'Dit bestand kan hier niet worden gelezen. Gebruik Excel, CSV, Word, Markdown of tekst.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added toegevoegd',
      one: '1 toegevoegd',
      zero: 'Niets nieuws om toe te voegen',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Tekst';

  @override
  String get transferAllNotes => 'Alle notities';

  @override
  String get transferThisNote => 'Deze notitie';

  @override
  String get transferDeckFormats => 'Opslaan als Excel, Word of PDF';

  @override
  String get faqFilesQ => 'Kan ik Excel-, Word- of PDF-bestanden gebruiken?';

  @override
  String get faqFilesA =>
      'Ja. Taken en Notities hebben bovenaan een knop voor importeren en exporteren (twee pijlen), en elke stapel heeft hem in het menu. Sla op als Excel, CSV, Word of PDF, of haal Excel-, CSV-, Word-, Markdown- of tekstbestanden binnen. Kolomnamen mogen in elke taal van de app staan, en bestanden die je hebt opgeslagen, kun je altijd opnieuw importeren.';

  @override
  String get tplLecture => 'College';

  @override
  String get tplBook => 'Boeksamenvatting';

  @override
  String get tplJournal => 'Dagboek';

  @override
  String get tplWeek => 'Weekplanning';

  @override
  String get tplLectureBody =>
      '## Belangrijkste punten\n- \n\n## Vragen\n- [ ] \n\n## Samenvatting\n';

  @override
  String get tplBookBody =>
      '## Hoofdgedachte\n\n## Wat ik heb geleerd\n- \n\n## Citaten\n> \n\n## Toepassen\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Dankbaar voor\n- \n\n## Focus van vandaag\n- [ ] \n\n## Notities\n';

  @override
  String get tplWeekBody =>
      '## Doelen deze week\n- [ ] \n\n### Zaterdag\n- [ ] \n\n### Zondag\n- [ ] \n\n### Maandag\n- [ ] \n\n### Dinsdag\n- [ ] \n\n### Woensdag\n- [ ] \n\n### Donderdag\n- [ ] \n\n### Vrijdag\n- [ ] \n';

  @override
  String get tplHint => 'Begin met een sjabloon';

  @override
  String get noteImage => 'Afbeelding';

  @override
  String get noteAddImage => 'Afbeelding toevoegen';

  @override
  String get noteImageUnreadable => 'Dit bestand is geen afbeelding die de app kan lezen.';

  @override
  String get noteImageTooLarge => 'Deze afbeelding is te groot.';

  @override
  String get examSet => 'Examendatum instellen';

  @override
  String get examDate => 'Examendatum';

  @override
  String get examToday => 'Vandaag examen. Succes!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Examen over $count dagen',
      one: 'Morgen examen',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'leer $count nieuwe kaarten per dag',
      one: 'leer 1 nieuwe kaart per dag',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'alle kaarten geleerd, blijf herhalen';

  @override
  String examRaiseLimit(int count) {
    return '$count nieuwe kaarten per dag tonen';
  }

  @override
  String get backupDriveHint =>
      'Wil je online een kopie bewaren? Kies dan Google Drive (of een andere cloud-app) in het opslagscherm dat hierna opent.';

  @override
  String get flashShareDeck => 'Stapel delen met een vriend';

  @override
  String get flashSortManual => 'Mijn volgorde (slepen)';

  @override
  String get flashReorderHint => 'Houd het handvat vast en sleep een kaart om hem te verplaatsen.';

  @override
  String get flashReorderNeedsAll => 'Wis de zoekopdracht en filters om kaarten te slepen.';

  @override
  String get flashDragHandle => 'Slepen om te verplaatsen';

  @override
  String get reportTitle => 'Maandrapport';

  @override
  String get reportFocus => 'Focustijd';

  @override
  String reportSessions(int count) {
    return '$count sessies';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Beste dag: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count actieve dagen';
  }

  @override
  String get reportCards => 'Herhaalde kaarten';

  @override
  String reportCardsKnown(String percent) {
    return '$percent onthouden';
  }

  @override
  String get reportTasks => 'Voltooide taken';

  @override
  String get reportHabits => 'Afgevinkte gewoonten';

  @override
  String get reportEmpty => 'Deze maand is er nog niets genoteerd.';

  @override
  String get reportSave => 'Opslaan als PDF of Word';

  @override
  String get reportPrevMonth => 'Vorige maand';

  @override
  String get reportNextMonth => 'Volgende maand';

  @override
  String get careTitle => 'Zorg voor je telefoon en gegevens';

  @override
  String get storageTitle => 'Opslag';

  @override
  String get storageSubtitle => 'Wat ruimte inneemt, en ongebruikte afbeeldingen opruimen';

  @override
  String get storagePictures => 'Afbeeldingen in notities';

  @override
  String get storageCardMedia => 'Afbeeldingen en audio in kaarten';

  @override
  String get storageText => 'Tekst van notities';

  @override
  String get storageFree => 'Vrij op je telefoon';

  @override
  String get storageLow =>
      'Je telefoon is bijna vol. Maak wat ruimte vrij, zodat back-ups en herinneringen blijven werken.';

  @override
  String storageUnused(int count, String size) {
    return '$count ongebruikte afbeeldingen ($size)';
  }

  @override
  String get storageNoUnused => 'Geen ongebruikte afbeeldingen. Alles is netjes.';

  @override
  String get storageClean => 'Ongebruikte afbeeldingen verwijderen';

  @override
  String storageCleaned(int count) {
    return '$count afbeeldingen verwijderd';
  }

  @override
  String get storageHint =>
      'Afbeeldingen tellen pas als ongebruikt als geen enkele notitie ze toont, ook niet in de prullenbak.';

  @override
  String get batteryTitle => 'Zorg dat herinneringen blijven werken';

  @override
  String get batterySubtitle =>
      'Sommige telefoons stoppen apps op de achtergrond. Controleer de jouwe.';

  @override
  String get batteryStatusOk =>
      'Batterijbesparing beperkt deze app niet. Herinneringen en geluiden zouden op tijd moeten komen.';

  @override
  String get batteryStatusLimited =>
      'Batterijbesparing kan deze app op de achtergrond stoppen, waardoor herinneringen en geluiden te laat of niet komen.';

  @override
  String get batteryOpen => 'Batterij-instellingen openen';

  @override
  String get batteryOpenApp => 'App-instellingen openen';

  @override
  String get batteryGeneric =>
      'Kies in de batterij-instellingen deze app en zet hem op Onbeperkt (of Niet optimaliseren).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: open ook Beveiliging › Rechten › Automatisch starten en zet deze app aan, en zet Batterijbesparing op Geen beperkingen.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: open Batterij › deze app en sta activiteit op de achtergrond en automatisch starten toe; vergrendel de app in de lijst met recente apps.';

  @override
  String get batterySamsung =>
      'Samsung: Batterij › Limieten voor gebruik op achtergrond: haal deze app uit Apps in slaapstand en Apps in diepe slaapstand.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: App starten › deze app › handmatig beheren, en sta automatisch starten, secundair starten en uitvoeren op de achtergrond toe.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Batterij › Stroomverbruik op achtergrond › sta deze app toe, en schakel automatisch starten in bij de rechten.';

  @override
  String get whatsNewTitle => 'Wat is er nieuw';

  @override
  String get whatsNewSubtitle => 'De laatste wijzigingen in een paar regels';

  @override
  String get whatsNewDone => 'Begrepen';

  @override
  String get whatsNewOrderTitle => 'Sleep kaarten in je eigen volgorde';

  @override
  String get whatsNewOrderBody =>
      'Kies in een stapel Sorteren › Mijn volgorde, houd dan het handvat vast en sleep.';

  @override
  String get whatsNewSpeechTitle => 'Een luidspreker op elke kant van de kaart';

  @override
  String get whatsNewSpeechBody =>
      'Tik erop om het woord of de vertaling te horen. Snelheid, herhalingen en stem staan in het herhaalmenu. De taal wordt herkend uit de tekst.';

  @override
  String get whatsNewReportTitle => 'Maandrapport';

  @override
  String get whatsNewReportBody =>
      'Tik in Inzichten op het rapportpictogram om de maand te zien en op te slaan als PDF of Word.';

  @override
  String get whatsNewCareTitle => 'Zorg voor je telefoon en gegevens';

  @override
  String get whatsNewCareBody =>
      'Instellingen heeft nu een opslagpagina om afbeeldingen op te ruimen en een batterijgids voor het merk van je telefoon.';

  @override
  String get whatsNewSoundTitle => 'Rustigere geluiden';

  @override
  String get whatsNewSoundBody =>
      'Natuurgeluiden zijn zachter en stiller, en de afbeeldingskaarten zijn mooier.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Gecontroleerd $date: de laatste back-up opent goed.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Gecontroleerd $date: er is een beschadigde back-up gevonden en vervangen door een nieuwe.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Gecontroleerd $date: de laatste back-up kon niet worden geopend. Sla zelf een back-upbestand op via Instellingen.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Je leert meestal rond $time';
  }

  @override
  String get smartReviewTimeUse => 'Gebruiken';

  @override
  String get widgetNewNote => 'Nieuwe notitie';

  @override
  String get noteConnections => 'Tags, links en taken';

  @override
  String get navCards => 'Kaarten';

  @override
  String get studyAnswerWay => 'Hoe wil je antwoorden?';

  @override
  String get studyMorePractice => 'Extra oefening';

  @override
  String get studySessionSettings => 'Sessie-instellingen';

  @override
  String get focusAdjustTitle => 'Je sessie';

  @override
  String get focusPresetsTitle => 'Kant-en-klaar';

  @override
  String get focusPresetStudy => 'Studeren';

  @override
  String get focusPresetDeep => 'Diep werk';

  @override
  String get focusPresetQuick => 'Korte sprint';

  @override
  String get focusPresetReading => 'Lezen';

  @override
  String get focusPresetWorkout => 'Trainingsrondes';

  @override
  String get focusAdjustMinutes => 'Duur van de focus';

  @override
  String get focusAdjustBreak => 'Duur van de pauze';

  @override
  String get focusAdjustRounds => 'Rondes';

  @override
  String get focusRoundsOpen => 'Geen limiet';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Tik om de tijd te wijzigen';

  @override
  String get flashArrangeDecks => 'Stapels ordenen';

  @override
  String get flashDeckActions => 'Opties voor stapel';

  @override
  String get starterBrowse => 'Kant-en-klare stapels';

  @override
  String get starterBrowseHint => 'Voeg er met één tik een toe en begin met leren';

  @override
  String get dashOpenDecks => 'Open je kaarten';

  @override
  String speechVoiceNumber(String n) {
    return 'Stem $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Lekker bezig. $m min rusten?';
  }

  @override
  String get focusFlowBreakStart => 'Pauze starten';

  @override
  String tasksFinishAt(String time) {
    return 'Begin nu en je bent om $time met alles klaar';
  }

  @override
  String get focusCalmPacing => 'Rustig tempo';

  @override
  String get focusCalmPacingHint => 'Alleen hele minuten en de ring, geen tikkende seconden';

  @override
  String get focusFlipHint => 'Leg de telefoon met het scherm omlaag om te beginnen';

  @override
  String get focusImmersive => 'Meeslepende modus';

  @override
  String get focusImmersiveBlack => 'Puur zwart (bespaart batterij)';

  @override
  String get focusFlipToFocus => 'Omdraaien om te focussen';

  @override
  String get focusFlipToFocusHint =>
      'In de meeslepende modus: scherm omlaag start, oppakken pauzeert';

  @override
  String get guardTitle => 'Afleidingsbewaker';

  @override
  String get guardSubtitle => 'Pauzeer afleidende apps terwijl je focust';

  @override
  String get guardSwitch => 'Afleidende apps pauzeren';

  @override
  String get guardSwitchHint => 'Tijdens focussessies en je Tijdbewaker-uren';

  @override
  String get guardNeedsAccess =>
      'Heeft de toegankelijkheidsschakelaar nodig: tik om hem aan te zetten';

  @override
  String get guardDisclosureTitle => 'Hoe de bewaker werkt';

  @override
  String get guardDisclosureBody =>
      'Om de apps die je kiest te pauzeren, gebruikt Deep Focus de toegankelijkheidsservice van Android om te zien welke app open is. Met \"Shorts en Reels sluiten\" aan controleert hij ook of er een speler voor korte video\'s op het scherm staat.\n\nHij leest geen tekst, bewaart niets van wat hij ziet en stuurt niets door: alles blijft op je telefoon. Je kunt hem altijd uitzetten in de toegankelijkheidsinstellingen.';

  @override
  String get guardAgree => 'Akkoord en instellingen openen';

  @override
  String get guardModeGentle => 'Mild';

  @override
  String get guardModeStrict => 'Streng';

  @override
  String get guardGentleHint => 'Een ademhalingspauze van 5 seconden, dan kies jij';

  @override
  String get guardStrictHint => 'Gekozen apps blijven dicht tot de focustijd voorbij is';

  @override
  String get guardApps => 'Apps om te pauzeren';

  @override
  String get guardAppsAllowed => 'Toegestane apps';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'Nog niets gekozen',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Alleen gekozen apps toestaan';

  @override
  String get guardAllowlistHint =>
      'Alle andere apps worden gepauzeerd; bellen, instellingen en het toetsenbord werken altijd';

  @override
  String get guardShorts => 'Shorts en Reels sluiten';

  @override
  String get guardShortsHint =>
      'Altijd als de bewaker aan staat. Zo goed mogelijk: deze apps veranderen vaak';

  @override
  String get guardSchedule => 'Tijdbewaker';

  @override
  String get guardScheduleHint => 'Bewaak ook op vaste dagen en uren, zoals school of werk';

  @override
  String get guardFrom => 'Van';

  @override
  String get guardTo => 'Tot';

  @override
  String get guardSearchApps => 'Apps zoeken';

  @override
  String get guardNoApps => 'Geen apps gevonden';

  @override
  String get guardPrivacy =>
      'Werkt alleen op je telefoon: de bewaker ziet welke app open is, nooit wat erin staat, en stuurt niets door.';

  @override
  String get guardBreathe => 'Adem in… en uit';

  @override
  String get guardQuestion => 'Heb je deze app nu nodig?';

  @override
  String get guardBackToFocus => 'Terug naar focus';

  @override
  String get guardOpenFive => '5 minuten openen';

  @override
  String get guardStrictBody => 'Deze app is gepauzeerd tot je focustijd voorbij is.';

  @override
  String get guardShortsClosed => 'Korte video\'s worden gesloten zolang de bewaker aan staat';

  @override
  String get faqGuardQ => 'Hoe stop ik afleidende apps terwijl ik focus?';

  @override
  String get faqGuardA =>
      'Open Focus → de timerinstellingen → Afleidingsbewaker. Kies de apps, en dan Mild (5 seconden ademen en de vraag \"Heb je deze app nu nodig?\") of Streng (ze blijven dicht). Het werkt tijdens focussessies en, met Tijdbewaker, op de dagen en uren die je instelt. \"Alleen gekozen apps toestaan\" pauzeert al het andere; bellen, instellingen en het toetsenbord werken altijd. Android vraagt je één keer om de bewaker aan te zetten in de toegankelijkheidsinstellingen. Hij ziet alleen welke app open is en stuurt niets door.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Verplaatst naar $name';
  }

  @override
  String get notesDragHint => 'Houd een notitie vast en sleep hem naar een notitieboek';

  @override
  String get guardReviewCards => 'Liever kaarten herhalen';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Er wachten $count kaarten op je',
      one: 'Er wacht 1 kaart op je',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Noodgeval: 10 seconden vasthouden';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Blijf vasthouden… $n';
  }

  @override
  String get guardWeekTitle => 'Deze week';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauzes',
      one: '1 pauze',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count keer terug naar focus',
      one: 'één keer terug naar focus',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Woorden hernoemen';

  @override
  String get wordsSubtitle => 'Gebruik je eigen woord voor elke tekst in de app';

  @override
  String get wordsHint =>
      'Tik op een tekst om hem te wijzigen. Je woorden gelden alleen voor deze taal en worden in back-ups bewaard.';

  @override
  String get wordsSearch => 'Teksten zoeken';

  @override
  String get wordsChangedOnly => 'Alleen gewijzigd';

  @override
  String wordsOriginal(String text) {
    return 'Origineel: $text';
  }

  @override
  String get wordsReset => 'Origineel gebruiken';

  @override
  String get wordsResetAll => 'Alle woorden herstellen';

  @override
  String get wordsResetAllConfirm => 'Elke tekst in deze taal gaat terug naar het origineel.';

  @override
  String get wordsNone => 'Geen tekst gevonden';

  @override
  String get settingsLanguageSearch => 'Talen zoeken';

  @override
  String get settingsLanguageNoMatch => 'Geen taal gevonden';

  @override
  String get soundsMyMusic => 'Jouw audio';

  @override
  String get soundsMusicHint =>
      'Speel een audiobestand van je telefoon af. Er wordt niets gekopieerd of geüpload.';

  @override
  String get soundsChooseMusic => 'Audio kiezen';

  @override
  String get soundsRemoveMusic => 'Audio verwijderen';

  @override
  String get wordPacksTitle => 'Woordpakketten';

  @override
  String get wordPacksHint =>
      'Woordenlijsten per onderwerp. Download alleen de taal die je wilt en bewerk of verwijder de kaarten daarna vrij.';

  @override
  String get wordPacksFailed => 'Downloaden mislukt. Controleer de verbinding.';

  @override
  String get wordPacksEmpty => 'De woorden voor deze taal worden nog voorbereid.';
}
