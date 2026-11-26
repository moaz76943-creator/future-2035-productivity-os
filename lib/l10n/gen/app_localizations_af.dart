// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Tuis';

  @override
  String get navTasks => 'Take';

  @override
  String get navFocus => 'Fokus';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get navSpaces => 'Ruimtes';

  @override
  String get moduleProjects => 'Projekte';

  @override
  String get moduleNotes => 'Notas';

  @override
  String get moduleFlashcards => 'Flitskaarte';

  @override
  String get moduleGoals => 'Doelwitte';

  @override
  String get moduleHabits => 'Gewoontes';

  @override
  String get moduleAnalytics => 'Insigte';

  @override
  String get moduleSearch => 'Soek';

  @override
  String get moduleAssistant => 'Assistent';

  @override
  String get moduleSettings => 'Instellings';

  @override
  String get moduleTrash => 'Asblik';

  @override
  String get actionSave => 'Stoor';

  @override
  String get actionCancel => 'Kanselleer';

  @override
  String get actionDelete => 'Vee uit';

  @override
  String get actionEdit => 'Wysig';

  @override
  String get actionDone => 'Klaar';

  @override
  String get actionAdd => 'Voeg by';

  @override
  String get actionCreate => 'Skep';

  @override
  String get actionClose => 'Maak toe';

  @override
  String get actionBack => 'Terug';

  @override
  String get actionUndo => 'Ontdoen';

  @override
  String get actionRestore => 'Stel terug';

  @override
  String get actionRetry => 'Probeer weer';

  @override
  String get actionContinue => 'Gaan voort';

  @override
  String get actionSkip => 'Slaan oor';

  @override
  String get actionArchive => 'Argiveer';

  @override
  String get actionUnarchive => 'Haal uit argief';

  @override
  String get actionPin => 'Speld vas';

  @override
  String get actionUnpin => 'Ontspeld';

  @override
  String get actionMore => 'Meer opsies';

  @override
  String get actionClear => 'Maak skoon';

  @override
  String get actionSearch => 'Soek';

  @override
  String get actionSort => 'Sorteer';

  @override
  String get actionShare => 'Deel';

  @override
  String get actionImport => 'Voer in';

  @override
  String get actionExport => 'Voer uit';

  @override
  String get actionPause => 'Onderbreek';

  @override
  String get actionResume => 'Hervat';

  @override
  String get actionStart => 'Begin';

  @override
  String get actionStop => 'Stop';

  @override
  String get actionComplete => 'Voltooi';

  @override
  String get actionDeleteForever => 'Vee permanent uit';

  @override
  String get actionEmptyTrash => 'Maak asblik leeg';

  @override
  String get actionUnlink => 'Ontkoppel';

  @override
  String get actionCustomize => 'Pas aan';

  @override
  String get actionPreview => 'Voorskou';

  @override
  String get actionLog => 'Teken vordering aan';

  @override
  String get stateLoading => 'Laai tans…';

  @override
  String get stateSaving => 'Stoor tans…';

  @override
  String get stateSaved => 'Gestoor';

  @override
  String get stateUnsaved => 'Ongestoorde veranderinge';

  @override
  String get errorGenericTitle => 'Iets het skeefgeloop';

  @override
  String get errorGenericMessage => 'Jou data is veilig. Probeer asseblief weer.';

  @override
  String get errorLoadFailed => 'Hierdie inhoud kon nie gelaai word nie.';

  @override
  String get errorSaveFailed => 'Kon nie stoor nie. Jou veranderinge is steeds hier.';

  @override
  String get validationRequired => 'Hierdie veld is verpligtend';

  @override
  String get validationTitleRequired => 'Voer asseblief ’n titel in';

  @override
  String get validationNameRequired => 'Voer asseblief ’n naam in';

  @override
  String get validationTooLong => 'Dit is te lank';

  @override
  String get validationEndBeforeStart => 'Die einde moet ná die begin wees';

  @override
  String get validationStartAfterDue => 'Die begindatum moet voor die sperdatum wees';

  @override
  String get validationPositiveNumber => 'Voer ’n getal groter as nul in';

  @override
  String get validationDependencyCycle => 'Dit sou ’n sirkelafhanklikheid skep';

  @override
  String get validationInvalidRepeat => 'Hierdie herhaalreël is nie geldig nie';

  @override
  String get deletedItem => 'Na asblik geskuif';

  @override
  String get untitled => 'Sonder titel';

  @override
  String get noProject => 'Geen projek nie';

  @override
  String get greetingMorning => 'Goeiemôre';

  @override
  String get greetingAfternoon => 'Goeiemiddag';

  @override
  String get greetingEvening => 'Goeienaand';

  @override
  String get dashFocusToday => 'Vandag se fokus';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done van $target';
  }

  @override
  String get dashStartFocus => 'Begin fokus';

  @override
  String get dashFocusRunning => 'Sessie aan die gang';

  @override
  String get dashTodayTasks => 'Sperdatum vandag';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Gewoontes vandag';

  @override
  String get dashGoals => 'Doelwitte';

  @override
  String get dashReview => 'Hersiening';

  @override
  String get dashRecentNotes => 'Onlangse notas';

  @override
  String get dashInsight => 'Voorstel';

  @override
  String get dashSeeAll => 'Sien alles';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte om te hersien',
      one: '1 kaart om te hersien',
      zero: 'Geen kaarte om te hersien nie',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Hersien nou';

  @override
  String get dashCustomizeTitle => 'Tuisskermafdelings';

  @override
  String get dashCustomizeHint => 'Kies wat op jou tuisskerm verskyn.';

  @override
  String get dashSectionFocus => 'Fokus';

  @override
  String get dashSectionToday => 'Take wat vandag verval';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Gewoontes';

  @override
  String get dashSectionGoals => 'Doelwitte';

  @override
  String get dashSectionReview => 'Flitskaarthersiening';

  @override
  String get dashSectionNotes => 'Onlangse notas';

  @override
  String get dashSectionInsight => 'Voorstelle';

  @override
  String get quickAddTask => 'Nuwe taak';

  @override
  String get quickAddNote => 'Nuwe nota';

  @override
  String get quickAddEvent => 'Nuwe gebeurtenis';

  @override
  String get quickStartFocus => 'Fokus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jy het $count agterstallige take. Begin met die belangrikste een.',
      one: 'Jy het 1 agterstallige taak. Herskeduleer dit of voltooi dit eerste.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Jy is $minutes minute weg van jou daaglikse fokusdoelwit.';
  }

  @override
  String get insightCardsDue => 'Hersien jou flitskaarte nou terwyl hulle nog vars is.';

  @override
  String get insightAllClear => 'Alles is op koers. Beplan môre of neem ’n bewuste blaaskans.';

  @override
  String insightHabitStreak(String habit) {
    return 'Hou jou reeks: $habit is vandag nog oop.';
  }

  @override
  String get focusTitle => 'Fokus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Tydhouer';

  @override
  String get focusModeCountUp => 'Stophorlosie';

  @override
  String get focusModeOpen => 'Oop';

  @override
  String get focusPhaseWork => 'Fokus';

  @override
  String get focusPhaseShortBreak => 'Kort pouse';

  @override
  String get focusPhaseLongBreak => 'Lang pouse';

  @override
  String get focusReady => 'Gereed wanneer jy is';

  @override
  String get focusPaused => 'Onderbreek';

  @override
  String get focusRunning => 'In fokus';

  @override
  String get focusDuration => 'Duur';

  @override
  String get focusLinkTask => 'Koppel ’n taak';

  @override
  String get focusLinkedTask => 'Werk aan';

  @override
  String get focusNoTask => 'Geen taak gekoppel nie';

  @override
  String focusCycle(int current, int total) {
    return 'Siklus $current van $total';
  }

  @override
  String get focusSkipBreak => 'Slaan pouse oor';

  @override
  String get focusStartBreak => 'Begin pouse';

  @override
  String get focusStartNext => 'Begin volgende fokus';

  @override
  String get focusSessionComplete => 'Sessie voltooi';

  @override
  String get focusSessionStopped => 'Sessie gestoor';

  @override
  String focusSessionSummary(String duration) {
    return 'Jy het vir $duration gefokus.';
  }

  @override
  String get focusAddNote => 'Voeg ’n nota oor hierdie sessie by';

  @override
  String get focusHistory => 'Geskiedenis';

  @override
  String get focusNoHistory => 'Voltooide sessies sal hier verskyn';

  @override
  String get focusTargets => 'Teikens';

  @override
  String get focusDailyTarget => 'Daaglikse teiken';

  @override
  String get focusWeeklyTarget => 'Weeklikse teiken';

  @override
  String get focusOutcomeCompleted => 'Voltooi';

  @override
  String get focusOutcomeInterrupted => 'Vroeg gestop';

  @override
  String get focusRecovered => 'Jou sessie het voortgegaan terwyl die app toe was.';

  @override
  String get focusCompletedWhileAway =>
      '’n Sessie het geëindig terwyl die app toe was en is gestoor.';

  @override
  String get focusNotificationsOff =>
      'Kennisgewings is af. Jy sal nie gewaarsku word wanneer ’n sessie eindig nie.';

  @override
  String get focusBatteryHint =>
      'Sommige toestelle onderbreek apps in die agtergrond. Die tydhouer bly akkuraat, maar waarskuwings kan vertraag word. Laat onbeperkte batterygebruik toe vir betroubare waarskuwings.';

  @override
  String get focusOpenSettings => 'Maak instellings oop';

  @override
  String get focusStopConfirmTitle => 'Stop hierdie sessie?';

  @override
  String get focusStopConfirmMessage => 'Die fokustyd tot dusver sal gestoor word.';

  @override
  String get focusDiscard => 'Gooi weg';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minute',
      one: '1 minuut',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time oor';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time verstreke';
  }

  @override
  String get focusDeleteSession => 'Vee sessie uit';

  @override
  String get tasksTitle => 'Take';

  @override
  String get tasksViewToday => 'Vandag';

  @override
  String get tasksViewUpcoming => 'Komende';

  @override
  String get tasksViewAll => 'Alles';

  @override
  String get tasksViewOverdue => 'Agterstallig';

  @override
  String get tasksViewCompleted => 'Voltooi';

  @override
  String get tasksQuickAddHint => 'Voeg ’n taak by…';

  @override
  String get tasksEmptyTitle => 'Alles klaar';

  @override
  String get tasksEmptyMessage => 'Voeg ’n taak by om jou dag te begin vorm.';

  @override
  String get tasksEmptyCompleted => 'Voltooide take sal hier verskyn.';

  @override
  String get taskNew => 'Nuwe taak';

  @override
  String get taskEdit => 'Wysig taak';

  @override
  String get taskTitleLabel => 'Titel';

  @override
  String get taskTitleHint => 'Wat moet gedoen word?';

  @override
  String get taskDescriptionLabel => 'Beskrywing';

  @override
  String get taskNotesLabel => 'Notas';

  @override
  String get taskPriority => 'Prioriteit';

  @override
  String get priorityNone => 'Geen';

  @override
  String get priorityLow => 'Laag';

  @override
  String get priorityMedium => 'Medium';

  @override
  String get priorityHigh => 'Hoog';

  @override
  String get priorityUrgent => 'Dringend';

  @override
  String get taskDueDate => 'Sperdatum';

  @override
  String get taskStartDate => 'Begindatum';

  @override
  String get taskReminder => 'Herinnering';

  @override
  String get taskRepeat => 'Herhaal';

  @override
  String get taskProject => 'Projek';

  @override
  String get taskCategory => 'Kategorie';

  @override
  String get taskCategoryHint => 'bv. Werk, Huis, Studie';

  @override
  String get taskEstimateMinutes => 'Skatting (minute)';

  @override
  String get taskTracked => 'Gemete fokus';

  @override
  String get taskLabels => 'Etikette';

  @override
  String get taskAddLabel => 'Nuwe etiket';

  @override
  String get taskChecklist => 'Kontrolelys';

  @override
  String get taskAddChecklistItem => 'Voeg ’n item by';

  @override
  String get taskSubtasks => 'Subtake';

  @override
  String get taskAddSubtask => 'Voeg ’n subtaak by';

  @override
  String get taskDependencies => 'Geblokkeer deur';

  @override
  String get taskAddDependency => 'Voeg ’n blokkerende taak by';

  @override
  String get taskLinkedNotes => 'Gekoppelde notas';

  @override
  String get taskSetTime => 'Stel tyd';

  @override
  String get taskNoDate => 'Geen datum nie';

  @override
  String get taskCompleted => 'Taak voltooi';

  @override
  String get taskNextOccurrence => 'Volgende herhaling geskep';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dae agterstallig',
      one: '1 dag agterstallig',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Merk “$title” as klaar';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Merk “$title” as nie klaar nie';
  }

  @override
  String get sortSmart => 'Slim';

  @override
  String get sortDueDate => 'Sperdatum';

  @override
  String get sortPriority => 'Prioriteit';

  @override
  String get sortCreated => 'Nuutste';

  @override
  String get sortTitle => 'Titel';

  @override
  String get filterAllProjects => 'Alle projekte';

  @override
  String get filterAnyPriority => 'Enige prioriteit';

  @override
  String get filterTitle => 'Filtreer en sorteer';

  @override
  String get dateToday => 'Vandag';

  @override
  String get dateTomorrow => 'Môre';

  @override
  String get dateYesterday => 'Gister';

  @override
  String get repeatNever => 'Herhaal nie';

  @override
  String get repeatDaily => 'Elke dag';

  @override
  String get repeatWeekdays => 'Elke weeksdag';

  @override
  String get repeatWeekly => 'Elke week';

  @override
  String get repeatMonthly => 'Elke maand';

  @override
  String get repeatYearly => 'Elke jaar';

  @override
  String get repeatCustom => 'Pasgemaak';

  @override
  String get repeatEvery => 'Herhaal elke';

  @override
  String get repeatOnDays => 'Op dae';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'dae', one: 'dag');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'weke', one: 'week');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'maande', one: 'maand');
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
    return 'Eindig ná $_temp0';
  }

  @override
  String get repeatEndsNever => 'Eindig nooit';

  @override
  String get reminderAtTime => 'Op die tyd van die gebeurtenis';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minute vooraf',
      one: '1 minuut vooraf',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours uur vooraf',
      one: '1 uur vooraf',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 dag vooraf';

  @override
  String get projectsTitle => 'Projekte';

  @override
  String get projectsEmptyTitle => 'Nog geen projekte nie';

  @override
  String get projectsEmptyMessage => 'Groepeer verwante take, notas en fokustyd.';

  @override
  String get projectNew => 'Nuwe projek';

  @override
  String get projectEdit => 'Wysig projek';

  @override
  String get projectName => 'Naam';

  @override
  String get projectDescription => 'Beskrywing';

  @override
  String get projectGoal => 'Doel';

  @override
  String get projectDeadline => 'Sperdatum';

  @override
  String get projectColor => 'Kleur';

  @override
  String get projectIcon => 'Ikoon';

  @override
  String get projectProgress => 'Vordering';

  @override
  String projectTasksDone(int done, int total) {
    return '$done van $total take klaar';
  }

  @override
  String get projectFocusTime => 'Fokustyd';

  @override
  String get projectArchived => 'Geargiveerde projekte';

  @override
  String get projectShowArchived => 'Wys geargiveerdes';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dae oor',
      one: '1 dag oor',
      zero: 'Verval vandag',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Sperdatum verby';

  @override
  String get calendarTitle => 'Kalender';

  @override
  String get calendarMonth => 'Maand';

  @override
  String get calendarWeek => 'Week';

  @override
  String get calendarDay => 'Dag';

  @override
  String get calendarToday => 'Vandag';

  @override
  String get calendarPrevious => 'Vorige';

  @override
  String get calendarNext => 'Volgende';

  @override
  String get calendarNoEvents => 'Niks geskeduleer nie';

  @override
  String get calendarAllDay => 'Heeldag';

  @override
  String get eventNew => 'Nuwe gebeurtenis';

  @override
  String get eventEdit => 'Wysig gebeurtenis';

  @override
  String get eventTitleHint => 'Titel van gebeurtenis';

  @override
  String get eventStarts => 'Begin';

  @override
  String get eventEnds => 'Eindig';

  @override
  String get eventKind => 'Tipe';

  @override
  String get eventKindEvent => 'Gebeurtenis';

  @override
  String get eventKindTimeBlock => 'Tydblok';

  @override
  String get eventKindFocus => 'Fokussessie';

  @override
  String get eventKindGoal => 'Persoonlike doelwit';

  @override
  String get eventDescription => 'Besonderhede';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Oorvleuel met $count gebeurtenisse',
      one: 'Oorvleuel met 1 gebeurtenis',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Skeduleringskonflikte op hierdie dag';

  @override
  String get calendarTaskDue => 'Taak verval';

  @override
  String get calendarDragHint => 'Druk lank en sleep ’n gebeurtenis om dit te herskeduleer';

  @override
  String get calendarRescheduled => 'Gebeurtenis geskuif';

  @override
  String get calendarScheduleTask => 'Skeduleer as tydblok';

  @override
  String get notesTitle => 'Notas';

  @override
  String get notesViewAll => 'Alles';

  @override
  String get notesViewPinned => 'Vasgespeld';

  @override
  String get notesViewFavorites => 'Gunstelinge';

  @override
  String get notesViewArchived => 'Geargiveer';

  @override
  String get notesTags => 'Etikette';

  @override
  String get notesNewNotebook => 'Nuwe notaboek';

  @override
  String get notesNoNotebook => 'Geen notaboek nie';

  @override
  String get notesEmptyTitle => '’n Skoon blad';

  @override
  String get notesEmptyMessage => 'Teken idees, vergadernotas en kennis aan.';

  @override
  String get noteTitleHint => 'Titel';

  @override
  String get noteBodyHint => 'Begin skryf… Gebruik # vir etikette en [[Titel]] om notas te koppel.';

  @override
  String get noteFavorite => 'Gunsteling';

  @override
  String get noteUnfavorite => 'Verwyder uit gunstelinge';

  @override
  String get noteMoveTo => 'Skuif na notaboek';

  @override
  String get noteBacklinks => 'Gekoppel vanaf';

  @override
  String get noteLinkedTasks => 'Gekoppelde take';

  @override
  String get noteLinkTask => 'Koppel ’n taak';

  @override
  String get noteLinkProject => 'Projek';

  @override
  String get noteFormatHeading => 'Opskrif';

  @override
  String get noteFormatBold => 'Vetdruk';

  @override
  String get noteFormatItalic => 'Kursief';

  @override
  String get noteFormatList => 'Kolpuntlys';

  @override
  String get noteFormatChecklist => 'Kontrolelys';

  @override
  String get noteFormatLink => 'Skakel';

  @override
  String noteEdited(String time) {
    return 'Gewysig $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count woorde',
      one: '1 woord',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Flitskaarte';

  @override
  String get flashEmptyTitle => 'Bou jou eerste stapel';

  @override
  String get flashEmptyMessage =>
      'Gespasieerde herhaling wys elke kaart net voordat jy dit sou vergeet.';

  @override
  String get deckNew => 'Nuwe stapel';

  @override
  String get deckEdit => 'Wysig stapel';

  @override
  String get deckName => 'Naam van stapel';

  @override
  String get deckDescription => 'Beskrywing';

  @override
  String get deckDailyNew => 'Nuwe kaarte per dag';

  @override
  String get deckDailyReview => 'Daaglikse hersieningsteiken';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte',
      one: '1 kaart',
      zero: 'Geen kaarte nie',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Verval';

  @override
  String get deckNewCards => 'Nuut';

  @override
  String get deckMature => 'Gevestig';

  @override
  String get deckStudy => 'Studeer';

  @override
  String get deckNothingDue => 'Niks om nou te hersien nie. Kom later terug.';

  @override
  String get deckEmptyCards => 'Voeg kaarte by om te begin leer.';

  @override
  String get cardNew => 'Nuwe kaart';

  @override
  String get cardEdit => 'Wysig kaart';

  @override
  String get cardFront => 'Voorkant';

  @override
  String get cardBack => 'Agterkant';

  @override
  String get cardFrontHint => 'Vraag of term';

  @override
  String get cardBackHint => 'Antwoord of definisie';

  @override
  String get cardTags => 'Etikette';

  @override
  String get cardAddAnother => 'Stoor en voeg nog een by';

  @override
  String get reviewShowAnswer => 'Wys antwoord';

  @override
  String get reviewAgain => 'Weer';

  @override
  String get reviewHard => 'Moeilik';

  @override
  String get reviewGood => 'Goed';

  @override
  String get reviewEasy => 'Maklik';

  @override
  String reviewProgress(int done, int total) {
    return '$done van $total';
  }

  @override
  String get reviewFinishedTitle => 'Sessie voltooi';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jy het $count kaarte hersien.',
      one: 'Jy het 1 kaart hersien.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Tik om die antwoord te sien';

  @override
  String get importCardsTitle => 'Voer kaarte in';

  @override
  String get importCardsHint =>
      'Plak een kaart per reël (voor- en agterkant geskei deur ’n tab of kommapunt), of kies ’n lêer: Excel (.xlsx), CSV, ’n Anki-stapel (.apkg) of ’n uitgevoerde stapel.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte ingevoer',
      one: '1 kaart ingevoer',
      zero: 'Geen kaarte ingevoer nie',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Hierdie inhoud kon nie ingevoer word nie.';

  @override
  String get exportCopied => 'Stapel uitgevoer';

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
      other: '$count dae',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Doelwitte';

  @override
  String get goalsEmptyTitle => 'Mik na iets';

  @override
  String get goalsEmptyMessage =>
      'Stel daaglikse, weeklikse, maandelikse of langtermyndoelwitte en volg werklike vordering.';

  @override
  String get goalNew => 'Nuwe doelwit';

  @override
  String get goalEdit => 'Wysig doelwit';

  @override
  String get goalTitleHint => 'Wat wil jy bereik?';

  @override
  String get goalPeriod => 'Tydperk';

  @override
  String get goalPeriodDaily => 'Daagliks';

  @override
  String get goalPeriodWeekly => 'Weekliks';

  @override
  String get goalPeriodMonthly => 'Maandeliks';

  @override
  String get goalPeriodLongTerm => 'Langtermyn';

  @override
  String get goalTarget => 'Teiken';

  @override
  String get goalUnit => 'Eenheid';

  @override
  String get goalUnitHint => 'bv. bladsye, km, ure';

  @override
  String get goalStatusActive => 'Aktief';

  @override
  String get goalStatusPaused => 'Onderbreek';

  @override
  String get goalStatusAchieved => 'Bereik';

  @override
  String get goalPause => 'Onderbreek doelwit';

  @override
  String get goalResume => 'Hervat doelwit';

  @override
  String get goalMarkAchieved => 'Merk as bereik';

  @override
  String goalProgressOf(String current, String target) {
    return '$current van $target';
  }

  @override
  String get goalLogAmount => 'Hoeveelheid';

  @override
  String get goalLogNote => 'Nota (opsioneel)';

  @override
  String get goalHistory => 'Geskiedenis';

  @override
  String get goalNoHistory => 'Aangetekende vordering sal hier verskyn';

  @override
  String get goalLinkedTasks => 'Gekoppelde take';

  @override
  String get goalLinkedTasksHint => 'Elke voltooide gekoppelde taak tel as 1 vir hierdie doelwit.';

  @override
  String get goalThisPeriod => 'Hierdie tydperk';

  @override
  String get habitsTitle => 'Gewoontes';

  @override
  String get habitsEmptyTitle => 'Klein treë, elke dag';

  @override
  String get habitsEmptyMessage => 'Skep ’n gewoonte en merk dit af wanneer jy dit doen.';

  @override
  String get habitNew => 'Nuwe gewoonte';

  @override
  String get habitEdit => 'Wysig gewoonte';

  @override
  String get habitNameHint => 'bv. Lees 20 bladsye';

  @override
  String get habitDays => 'Skedule';

  @override
  String get habitEveryDay => 'Elke dag';

  @override
  String get habitTargetPerDay => 'Kere per dag';

  @override
  String get habitReminder => 'Daaglikse herinnering';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Reeks van $count dae',
      one: 'Reeks van 1 dag',
      zero: 'Geen reeks nie',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Beste reeks';

  @override
  String get habitCurrentStreak => 'Huidige reeks';

  @override
  String get habitConsistency => 'Konsekwentheid';

  @override
  String get habitLast90 => 'Laaste 90 dae';

  @override
  String get habitPaused => 'Onderbreek';

  @override
  String get habitPause => 'Onderbreek gewoonte';

  @override
  String get habitResume => 'Hervat gewoonte';

  @override
  String get habitDoneToday => 'Vandag gedoen';

  @override
  String habitCountToday(int count, int target) {
    return '$count van $target vandag';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Merk “$name” af';
  }

  @override
  String get habitNotScheduledToday => 'Nie vandag geskeduleer nie';

  @override
  String get analyticsTitle => 'Insigte';

  @override
  String get rangeWeek => '7 dae';

  @override
  String get rangeMonth => '30 dae';

  @override
  String get rangeQuarter => '90 dae';

  @override
  String get statFocusTime => 'Fokustyd';

  @override
  String get statSessions => 'Sessies';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed voltooi · $interrupted vroeg gestop';
  }

  @override
  String get statTasksDone => 'Take voltooi';

  @override
  String get statCompletionRate => 'Betyds voltooi';

  @override
  String get statHabitConsistency => 'Gewoontekonsekwentheid';

  @override
  String get statRetention => 'Kaartretensie';

  @override
  String get statReviews => 'Hersienings';

  @override
  String get statActiveGoals => 'Aktiewe doelwitte';

  @override
  String get statEstimated => 'Geskatte werk voltooi';

  @override
  String get statEstimatedNote => 'Gebaseer op jou skattings, nie gemete tyd nie';

  @override
  String get statMeasuredNote => 'Gemeet uit fokussessies';

  @override
  String get chartFocusByDay => 'Fokusminute per dag';

  @override
  String get chartTasksByDay => 'Take voltooi per dag';

  @override
  String get chartTimeByProject => 'Tyd per projek';

  @override
  String get chartProjectProgress => 'Projekvordering';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: totaal $total, beste dag $best';
  }

  @override
  String get analyticsNoData => 'Nog nie genoeg data nie';

  @override
  String get analyticsUnassigned => 'Nie toegeken nie';

  @override
  String get searchHint => 'Soek alles…';

  @override
  String get searchRecent => 'Onlangse soektogte';

  @override
  String get searchClearRecent => 'Vee onlangse soektogte uit';

  @override
  String searchNoResults(String query) {
    return 'Geen resultate vir “$query” nie';
  }

  @override
  String get searchStartTyping =>
      'Soek deur take, notas, kaarte, doelwitte, gebeurtenisse en meer. Soektogte bly op hierdie toestel.';

  @override
  String get searchCatTask => 'Take';

  @override
  String get searchCatProject => 'Projekte';

  @override
  String get searchCatNote => 'Notas';

  @override
  String get searchCatFlashcard => 'Kaarte';

  @override
  String get searchCatDeck => 'Stapels';

  @override
  String get searchCatGoal => 'Doelwitte';

  @override
  String get searchCatHabit => 'Gewoontes';

  @override
  String get searchCatEvent => 'Gebeurtenisse';

  @override
  String get searchCatSession => 'Sessies';

  @override
  String get searchAll => 'Alles';

  @override
  String get assistantTitle => 'Assistent';

  @override
  String get assistantIntro =>
      'Beplanningshulp wat op jou toestel werk. Koppel opsioneel ’n KI-verskaffer van jou keuse vir opsommings en generering.';

  @override
  String get assistantOnDevice => 'Op toestel';

  @override
  String get assistantCloud => 'KI-verskaffer';

  @override
  String get assistantPlanDay => 'Beplan my dag';

  @override
  String get assistantPlanDayDesc =>
      'Rangskik oop take volgens dringendheid, prioriteit en skatting, en pas hulle om jou gebeurtenisse in.';

  @override
  String get assistantExtractTasks => 'Haal take uit ’n nota';

  @override
  String get assistantExtractTasksDesc =>
      'Vind kontrolelysitems en aksiereëls in ’n nota en verander hulle in take.';

  @override
  String get assistantMakeCards => 'Maak flitskaarte uit ’n nota';

  @override
  String get assistantMakeCardsDesc =>
      'Verander “term: definisie”- en vraag/antwoord-reëls in kaarte.';

  @override
  String get assistantSummarize => 'Som ’n nota op';

  @override
  String get assistantSummarizeDesc =>
      'Vereis ’n KI-verskaffer. Die nota word eers gestuur nadat jy bevestig.';

  @override
  String get assistantWorkload => 'Werkladingoorsig';

  @override
  String get assistantWorkloadDesc => 'Vergelyk geskatte werk met jou vrye tyd hierdie week.';

  @override
  String get assistantPlanEmpty => 'Geen oop take om te beplan nie. Geniet die ruimte.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Vrye fokustyd vandag: $time';
  }

  @override
  String get assistantPlanOverflow => 'Hierdie pas dalk nie vandag in nie:';

  @override
  String get assistantChooseNote => 'Kies ’n nota';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count take gevind',
      one: '1 taak gevind',
      zero: 'Geen take in hierdie nota gevind nie',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte gevind',
      one: '1 kaart gevind',
      zero: 'Geen kaarte in hierdie nota gevind nie',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Kies ’n stapel';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Geskatte werk: $estimated. Vrye tyd: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Jy het meer beplan as wat jy tyd het. Oorweeg om take met laer prioriteit te skuif.';

  @override
  String get assistantWorkloadOk => 'Jou plan pas in jou beskikbare tyd.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oop take het geen skatting nie.',
      one: '1 oop taak het geen skatting nie.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'KI-verskaffer';

  @override
  String get assistantProviderOff =>
      'Geen verskaffer gekoppel nie. Gereedskap op die toestel werk steeds.';

  @override
  String assistantProviderOn(String host) {
    return 'Gekoppel aan $host';
  }

  @override
  String get assistantEndpoint => 'API-eindpunt (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'API-sleutel';

  @override
  String get assistantApiKeyStored => 'Veilig op hierdie toestel gestoor';

  @override
  String get assistantHttpsOnly => 'Slegs HTTPS-eindpunte word toegelaat';

  @override
  String get assistantConsentTitle => 'Stuur hierdie inhoud na jou KI-verskaffer?';

  @override
  String assistantConsentBody(String host) {
    return 'Die gekose notateks sal hierdie toestel verlaat en deur $host verwerk word. Niks anders word gestuur nie.';
  }

  @override
  String get assistantConsentAlways => 'Moenie weer vir hierdie verskaffer vra nie';

  @override
  String get assistantSend => 'Stuur';

  @override
  String get assistantUnavailable =>
      'Die KI-verskaffer kon nie bereik word nie. Probeer later weer.';

  @override
  String get assistantDisabledTitle => 'Assistent is af';

  @override
  String get assistantDisabledMessage =>
      'Skakel dit aan om beplanningsgereedskap te gebruik. Geen data verlaat jou toestel tensy jy ’n verskaffer koppel en elke versoek bevestig nie.';

  @override
  String get assistantSummaryTitle => 'Opsomming';

  @override
  String get assistantRemoveProvider => 'Verwyder verskaffer';

  @override
  String get settingsTitle => 'Instellings';

  @override
  String get settingsGeneral => 'Algemeen';

  @override
  String get settingsLanguage => 'Taal';

  @override
  String get settingsLanguageSystem => 'Toesteltaal';

  @override
  String get settingsAppearance => 'Voorkoms';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Lig';

  @override
  String get themeDark => 'Donker';

  @override
  String get themeSystem => 'Stelsel';

  @override
  String get settingsReduceMotion => 'Verminder beweging';

  @override
  String get settingsReduceMotionDesc => 'Minimaliseer animasies en bewegende agtergronde';

  @override
  String get settingsFocus => 'Fokustydhouer';

  @override
  String get settingsWorkLength => 'Fokuslengte';

  @override
  String get settingsShortBreak => 'Kort pouse';

  @override
  String get settingsLongBreak => 'Lang pouse';

  @override
  String get settingsLongBreakEvery => 'Lang pouse ná';

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
  String get settingsAutoBreaks => 'Begin pouses outomaties';

  @override
  String get settingsSound => 'Voltooiingsklank';

  @override
  String get settingsDailyFocusTarget => 'Daaglikse fokusteiken';

  @override
  String get settingsWeeklyFocusTarget => 'Weeklikse fokusteiken';

  @override
  String get settingsNotifications => 'Kennisgewings';

  @override
  String get settingsNotificationsEnable => 'Laat herinneringe toe';

  @override
  String get settingsQuietHours => 'Stil ure';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Gewoonte-, doelwit- en hersieningsherinneringe word stilgemaak van $start tot $end';
  }

  @override
  String get settingsReviewReminder => 'Flitskaarthersieningsherinnering';

  @override
  String get settingsPermissionDenied => 'Kennisgewings is in stelselinstellings geblokkeer.';

  @override
  String get settingsPrivacy => 'Privaatheid en data';

  @override
  String get settingsPrivacyStatement =>
      'Jou data word slegs op hierdie toestel gestoor en is geënkripteer. Daar is geen rekening, geen analise en geen dop nie.';

  @override
  String get settingsBackup => 'Skep geënkripteerde rugsteun';

  @override
  String get settingsBackupDesc => 'Beskerm met ’n wagwoord wat jy kies';

  @override
  String get settingsRestore => 'Stel terug uit rugsteun';

  @override
  String get settingsRestoreDesc => 'Vervang alle data op hierdie toestel';

  @override
  String get settingsErase => 'Vee alle data uit';

  @override
  String get settingsEraseDesc => 'Vee alles op hierdie toestel permanent uit';

  @override
  String get settingsEraseConfirmTitle => 'Vee alle data uit?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Elke taak, nota, kaart, doelwit, gewoonte, gebeurtenis en sessie sal permanent uitgevee word. Tik $word om te bevestig.';
  }

  @override
  String get settingsEraseWord => 'UITVEE';

  @override
  String get settingsErased => 'Alle data uitgevee';

  @override
  String get backupPassword => 'Rugsteunwagwoord';

  @override
  String get backupPasswordConfirm => 'Bevestig wagwoord';

  @override
  String backupPasswordHint(int count) {
    return 'Minstens $count karakters. Dit kan nie herwin word as dit verlore raak nie.';
  }

  @override
  String get backupPasswordMismatch => 'Wagwoorde stem nie ooreen nie';

  @override
  String get backupPasswordShort => 'Wagwoord is te kort';

  @override
  String get backupCreating => 'Enkripteer rugsteun…';

  @override
  String get backupCreated => 'Rugsteun gereed om te stoor';

  @override
  String get backupRestoring => 'Verifieer en stel terug…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items teruggestel',
      one: '1 item teruggestel',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Verkeerde wagwoord, of die lêer is gewysig.';

  @override
  String get backupNotABackup => 'Hierdie lêer is nie ’n Deep Focus-rugsteun nie.';

  @override
  String get backupCorrupted => 'Die rugsteunlêer is beskadig.';

  @override
  String get backupNewer =>
      'Hierdie rugsteun is deur ’n nuwer weergawe van die app gemaak. Dateer asseblief eers op.';

  @override
  String get backupRestoreConfirmTitle => 'Vervang alle data?';

  @override
  String get backupRestoreConfirmBody =>
      'Alles wat tans op hierdie toestel is, sal deur die rugsteun vervang word. As terugstelling misluk, verander niks nie.';

  @override
  String get settingsAbout => 'Meer oor';

  @override
  String settingsVersion(String version) {
    return 'Weergawe $version';
  }

  @override
  String get settingsLicenses => 'Oopbronlisensies';

  @override
  String get settingsAssistant => 'Assistent';

  @override
  String get settingsAssistantEnable => 'Aktiveer assistent';

  @override
  String get settingsDashboard => 'Tuisafdelings';

  @override
  String get settingsTrash => 'Asblik';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Asblik is leeg';

  @override
  String get trashHint => 'Uitgeveede items bly hier totdat jy hulle verwyder.';

  @override
  String get trashTasks => 'Take';

  @override
  String get trashNotes => 'Notas';

  @override
  String get onboardWelcomeTitle => 'Welkom by jou werkruimte van die toekoms';

  @override
  String get onboardWelcomeBody =>
      'Take, fokus, kalender, notas, flitskaarte, doelwitte en gewoontes — saam, pragtig eenvoudig.';

  @override
  String get onboardPrivateTitle => 'Privaat van nature';

  @override
  String get onboardPrivateBody =>
      'Alles bly op hierdie toestel, geënkripteer. Geen rekening. Geen dop. Jy is in beheer.';

  @override
  String get onboardLanguageTitle => 'Kies jou taal';

  @override
  String get onboardNotifTitle => 'Sagte herinneringe';

  @override
  String get onboardNotifBody =>
      'Laat kennisgewings toe vir taakherinneringe en fokuswaarskuwings. Jy kan dit enige tyd verander.';

  @override
  String get onboardGetStarted => 'Begin';

  @override
  String onboardStep(int current, int total) {
    return 'Stap $current van $total';
  }

  @override
  String get notifChannelReminders => 'Herinneringe';

  @override
  String get notifChannelRemindersDesc =>
      'Herinneringe vir take, gebeurtenisse, gewoontes en doelwitte';

  @override
  String get notifChannelFocus => 'Fokustydhouer';

  @override
  String get notifChannelFocusDesc => 'Waarskuwings wanneer ’n fokussessie of pouse eindig';

  @override
  String get notifTaskTitle => 'Taakherinnering';

  @override
  String get notifEventTitle => 'Komende gebeurtenis';

  @override
  String notifEventBody(String title, String time) {
    return '$title om $time';
  }

  @override
  String get notifFocusDoneTitle => 'Fokussessie voltooi';

  @override
  String get notifFocusDoneBody => 'Uitstekende werk. Tyd vir ’n pouse.';

  @override
  String get notifBreakDoneTitle => 'Pouse is verby';

  @override
  String get notifBreakDoneBody => 'Gereed vir die volgende fokussessie?';

  @override
  String get notifHabitTitle => 'Gewoonteherinnering';

  @override
  String get notifReviewTitle => 'Flitskaarte is gereed';

  @override
  String get notifReviewBody => '’n Kort hersiening hou jou geheue sterk.';

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
    return '$value%';
  }

  @override
  String get weekdaysShort => 'M,D,W,D,V,S,S';

  @override
  String a11yProgress(int value) {
    return 'Vordering $value persent';
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
  String get analyticsRangeLabel => 'Tydperk';

  @override
  String get analyticsRefresh => 'Verfris';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done van $total take met sperdatums betyds voltooi';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done van $total take klaar';
  }

  @override
  String get analyticsNoProjects => 'Geen aktiewe projekte nie';

  @override
  String get analyticsNoFocus => 'Geen fokussessies in hierdie tydperk nie';

  @override
  String get analyticsHabitsNone => 'Geen aktiewe gewoontes nie';

  @override
  String get analyticsRetentionNote => 'Deel van gevestigde kaarte wat jy onthou het';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Vrye tyd tel $start–$end op werksdae ($days), minus gebeurtenisse met ’n tyd. Geskatte werk is die som van skattings van oop take wat in die volgende 7 dae verval.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Maandag–Vrydag';

  @override
  String get assistantWorkdaysSunThu => 'Sondag–Donderdag';

  @override
  String get assistantWorkloadDayOff => 'Vry dag';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated beplan · $free vry';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Beplan van nou af tot $end, rondom vandag se gebeurtenisse. Agterstallige take eerste, dan prioriteit, sperdatum en skatting.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Skeduleer as tydblokke';

  @override
  String get assistantScheduleConfirmTitle => 'Voeg tydblokke by jou kalender?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tydblokke sal by vandag se kalender gevoeg word.',
      one: '1 tydblok sal by vandag se kalender gevoeg word.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tydblokke bygevoeg',
      one: '1 tydblok bygevoeg',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Reeds op jou kalender';

  @override
  String get assistantPlanTimeline => 'Pas vandag in';

  @override
  String get assistantNoEstimate => 'Voeg ’n skatting by om dit te beplan';

  @override
  String get assistantNoNotes => 'Nog geen notas nie. Skryf eers ’n nota.';

  @override
  String get assistantNoteEmpty => 'Hierdie nota is leeg.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count take geskep',
      one: '1 taak geskep',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte geskep',
      one: '1 kaart geskep',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Skep $count',
      one: 'Skep 1',
      zero: 'Niks gekies nie',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Herken: ongemerkte merkblokkies “- [ ]” en reëls wat met TODO: of To do: begin';

  @override
  String get assistantCardsHint =>
      'Herken: “term: definisie”, “term — definisie” en Q:/A:-reëlpare';

  @override
  String get assistantProviderHint =>
      'Gebruik enige OpenAI-versoenbare diens. Die sleutel bly in hierdie toestel se veilige berging en word nooit by rugsteune ingesluit nie.';

  @override
  String get assistantEndpointHelp => 'Byvoorbeeld https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Laat leeg om die gestoorde sleutel te behou';

  @override
  String get assistantApiKeyRequired => 'Voer ’n API-sleutel in';

  @override
  String get assistantProviderSaved => 'Verskaffer gestoor';

  @override
  String get assistantProviderRemoved => 'Verskaffer verwyder en sleutel uitgevee';

  @override
  String get assistantRemoveProviderConfirm =>
      'Verwyder die verskaffer en vee die gestoorde API-sleutel van hierdie toestel uit?';

  @override
  String get assistantAskEveryTime => 'Vra voor elke versoek';

  @override
  String get assistantSummarizing => 'Som tans op…';

  @override
  String assistantSummaryNote(String host) {
    return 'Gegenereer deur $host. Hersien voordat jy daarop staatmaak.';
  }

  @override
  String get assistantCopy => 'Kopieer';

  @override
  String get assistantCopied => 'Gekopieer';

  @override
  String get assistantConfigure => 'Stel verskaffer op';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Alle gebeurtenisse in hierdie reeks is geskuif';

  @override
  String get calendarEventReminder => 'Herinnering';

  @override
  String get calendarEventRepeat => 'Herhaal';

  @override
  String get calendarEventColor => 'Kleur';

  @override
  String get calendarDefaultColor => 'Gebruik tipekleur';

  @override
  String get calendarEventLinkedTask => 'Gekoppelde taak';

  @override
  String get calendarEventNoTask => 'Geen gekoppelde taak nie';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gebeurtenisse',
      one: '1 gebeurtenis',
      zero: 'Geen gebeurtenisse nie',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count take verval',
      one: '1 taak verval',
      zero: 'geen take verval nie',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Voeg ’n gebeurtenis of tydblok by om hierdie dag te beplan.';

  @override
  String get calendarNow => 'Huidige tyd';

  @override
  String get calendarRecurring => 'Herhaal';

  @override
  String get calendarEventNotFound => 'Hierdie gebeurtenis bestaan nie meer nie';

  @override
  String get calendarEventLocalTime => 'Tye word in jou toestel se tydsone gewys';

  @override
  String get calendarEventDeleted => 'Gebeurtenis na asblik geskuif';

  @override
  String get calendarConflictMarker => 'Oorvleuel met ’n ander gebeurtenis';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Veranderinge geld vir elke gebeurtenis in hierdie reeks';

  @override
  String get calendarDragHintSeries =>
      'As jy ’n herhalende gebeurtenis sleep, skuif die hele reeks';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, taak verval';
  }

  @override
  String get startupErrorTitle => 'Jou data kon nie oopgemaak word nie';

  @override
  String get startupErrorLocked =>
      'Die enkripsiesleutel vir hierdie toestel se data is nie beskikbaar nie. Niks is uitgevee nie. Om die toestel te herbegin help dikwels. As jy die toestel onlangs teruggestel het, stel eerder jou data terug uit ’n geënkripteerde rugsteun.';

  @override
  String get startupErrorCipher =>
      'Hierdie toestel ondersteun nie die geënkripteerde berging wat die app nodig het nie. Niks is ongeënkripteer gestoor nie.';

  @override
  String get startupErrorRetry => 'Probeer weer';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte moet hersien word',
      one: '1 kaart moet hersien word',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count verval';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count nuut';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Gevestigde kaarte: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Voer 0 of meer in';

  @override
  String get flashcardsSearchCards => 'Soek kaarte';

  @override
  String get flashcardsSearchEmpty => 'Geen kaarte pas by jou soektog nie';

  @override
  String get flashcardsCardAdded => 'Kaart bygevoeg';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Verval $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopieer na knipbord';

  @override
  String get flashcardsExportTitle => 'Voer stapel uit';

  @override
  String get flashcardsDeleteDeck => 'Vee stapel uit';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, volgende hersiening oor $interval';
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
  String get flashcardsShowQuestion => 'Wys vraag';

  @override
  String get flashcardsImportField => 'Kaarte om in te voer';

  @override
  String get flashcardsNothingToStudy => 'Niks om te studeer nie';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte gereed om te studeer',
      one: '1 kaart gereed om te studeer',
      zero: 'Geen kaarte gereed nie',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Volgens gradering';

  @override
  String get flashcardsDeckNotFound => 'Hierdie stapel is nie meer beskikbaar nie.';

  @override
  String get focusSessionDeleted => 'Sessie uitgevee';

  @override
  String get focusDeleteConfirm =>
      'Vee hierdie sessie uit jou geskiedenis uit? Die tyd daarvan sal nie meer by jou teikens tel nie.';

  @override
  String get focusUnlinkTask => 'Verwyder gekoppelde taak';

  @override
  String get focusNoteHint => 'Waaraan het jy gewerk?';

  @override
  String get focusTargetCaption => 'Gemeet uit gestoorde sessies';

  @override
  String get focusModeLabel => 'Tydhouermodus';

  @override
  String focusUpNext(String phase) {
    return 'Volgende: $phase';
  }

  @override
  String get focusStopwatchHint => 'Tel op totdat jy stop.';

  @override
  String get focusOpenHint => 'Geen tydsbeperking nie. Stop wanneer jy klaar is.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Herinneringe is in instellings afgeskakel. Jy sal nie gewaarsku word wanneer ’n sessie eindig nie.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Alles';

  @override
  String get goalsFilterPeriod => 'Tydperkfilter';

  @override
  String get goalsFilterStatus => 'Statusfilter';

  @override
  String get goalsEmptyFiltered => 'Geen doelwitte pas by hierdie filter nie';

  @override
  String goalsDueOn(String date) {
    return 'Verval $date';
  }

  @override
  String get goalsDeadline => 'Sperdatum (opsioneel)';

  @override
  String get goalsNoDeadline => 'Geen sperdatum nie';

  @override
  String get goalsSetDeadline => 'Stel sperdatum';

  @override
  String get goalsRemoveDeadline => 'Verwyder sperdatum';

  @override
  String get goalsDescription => 'Beskrywing (opsioneel)';

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
  String get goalsReached => 'Teiken bereik';

  @override
  String get goalsLogged => 'Vordering aangeteken';

  @override
  String get goalsEntryDeleted => 'Inskrywing verwyder';

  @override
  String get goalsDeleteEntry => 'Verwyder inskrywing';

  @override
  String get goalsDeleted => 'Doelwit uitgevee';

  @override
  String get goalsMarkActive => 'Merk as aktief';

  @override
  String get goalsNotFound => 'Hierdie doelwit is nie meer beskikbaar nie';

  @override
  String get goalsLinkTask => 'Koppel ’n taak';

  @override
  String get goalsNoLinkedTasks => 'Nog geen gekoppelde take nie';

  @override
  String get goalsUnlinkTask => 'Ontkoppel taak';

  @override
  String get goalsTaskOpen => 'Nog nie voltooi nie';

  @override
  String get goalsTaskLinked => 'Taak gekoppel';

  @override
  String get goalsTaskUnlinked => 'Taak ontkoppel';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count voltooide gekoppelde take',
      one: '1 voltooide gekoppelde taak',
    );
    return 'Sluit $_temp0 in hierdie tydperk in';
  }

  @override
  String get goalsHistoryAllTime =>
      'Inskrywings uit vroeëre tydperke word hier gehou, maar tel net vir hul eie tydperk.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done van $total vandag gedoen';
  }

  @override
  String get habitsNothingToday => 'Geen gewoontes is vir vandag geskeduleer nie';

  @override
  String get habitsDecrease => 'Verwyder een afmerking';

  @override
  String get habitsResetToday => 'Stel vandag terug';

  @override
  String get habitsCheckInHint => 'Druk lank om aan te pas';

  @override
  String get habitsName => 'Naam';

  @override
  String get habitsColor => 'Kleur';

  @override
  String get habitsValidationDays => 'Kies minstens een dag';

  @override
  String habitsReminderAt(String time) {
    return 'Elke dag om $time';
  }

  @override
  String get habitsSetReminder => 'Stel ’n herinneringstyd';

  @override
  String get habitsRemoveReminder => 'Verwyder herinnering';

  @override
  String get habitsReminderNote =>
      'Herinneringe verskyn op geskeduleerde dae wanneer kennisgewings toegelaat word.';

  @override
  String get habitsArchived => 'Gewoonte geargiveer';

  @override
  String get habitsNotFound => 'Hierdie gewoonte is nie meer beskikbaar nie';

  @override
  String get habitsLast30 => 'Laaste 30 dae';

  @override
  String get habitsConsistencyNone => 'Nog nie genoeg data nie';

  @override
  String get habitsCalendar => 'Afmerkgeskiedenis';

  @override
  String get habitsCalendarHint => 'Tik op ’n dag om dit reg te stel.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count van $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Afmerkings oor die laaste 90 dae. Konsekwentheid $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Afmerkings oor die laaste 90 dae. Nog nie genoeg data nie.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dae',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Onderbreekte dae beïnvloed nie jou reeks nie.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Argiveer gewoonte';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count keer per dag',
      one: 'Een keer per dag',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Ander notas';

  @override
  String get notesAllNotebooks => 'Alle notaboeke';

  @override
  String get notesNotebookName => 'Naam van notaboek';

  @override
  String get notesNotebookColor => 'Kleur';

  @override
  String get notesDeleteNotebook => 'Vee notaboek uit';

  @override
  String get notesDeleteNotebookMessage =>
      'Die notaboek word verwyder. Sy notas word behou en verskyn onder Alle notaboeke.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Speld belangrike notas vas om hulle bo te hou.';

  @override
  String get notesEmptyFavorites => 'Notas wat jy as gunsteling merk, verskyn hier.';

  @override
  String get notesEmptyArchived => 'Geargiveerde notas verskyn hier.';

  @override
  String get notesEmptyFiltered => 'Geen notas pas by hierdie filters nie.';

  @override
  String get notesArchivedSnack => 'Nota geargiveer';

  @override
  String get notesUnarchivedSnack => 'Nota terug na jou notas geskuif';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done van $total klaar';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatering';

  @override
  String get notesWrite => 'Skryf';

  @override
  String get notesPreviewEmpty => 'Nog niks om voor te skou nie.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Geen ander notas skakel nog hierheen nie. Skakel na hierdie nota met [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Gee hierdie nota ’n titel sodat ander notas daarna kan skakel.';

  @override
  String get notesLinkedTasksEmpty => 'Geen take aan hierdie nota gekoppel nie.';

  @override
  String notesLinkMissing(String title) {
    return 'Daar is nog geen nota met die titel “$title” nie.';
  }

  @override
  String get notesNotFound => 'Hierdie nota bestaan nie meer nie.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Kontrolelysitem: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Maak nota $title oop';
  }

  @override
  String get notesTaskDone => 'Voltooi';

  @override
  String get notifTimerDoneBody => 'Die tyd wat jy gestel het, is verby.';

  @override
  String get onboardingPrivatePointDevice => 'Slegs op hierdie toestel gestoor, geënkripteer';

  @override
  String get onboardingPrivatePointAccount => 'Geen rekening nodig nie';

  @override
  String get onboardingPrivatePointTracking => 'Geen analise, geen dop nie';

  @override
  String get onboardingLanguageBody => 'Jy kan dit enige tyd in Instellings verander.';

  @override
  String get onboardingNext => 'Volgende';

  @override
  String get projectsActive => 'Aktief';

  @override
  String get projectNameHint => 'bv. Produkbekendstelling';

  @override
  String get projectGoalHint => 'Hoe lyk klaar?';

  @override
  String get projectNoDeadline => 'Geen sperdatum nie';

  @override
  String get projectTasksOpen => 'Oop take';

  @override
  String get projectTasksCompleted => 'Voltooide take';

  @override
  String get projectAddTask => 'Voeg taak by projek';

  @override
  String get projectAddNote => 'Nuwe projeknota';

  @override
  String get projectLinkedNotes => 'Notas';

  @override
  String get projectNoTasks => 'Nog geen take in hierdie projek nie';

  @override
  String get projectArchivedBadge => 'Geargiveer';

  @override
  String get projectDeleted => 'Projek na asblik geskuif';

  @override
  String get projectDeleteMessage => 'Take bly in jou lys sonder ’n projek.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent persent voltooi';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultate',
      one: '1 resultaat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtreer volgens tipe';

  @override
  String searchRecentTap(String query) {
    return 'Soek weer vir $query';
  }

  @override
  String get settingsLanguageHint =>
      'Kies die taal vir die hele app. Name word in hul eie taal gewys.';

  @override
  String get settingsThemeHint => 'Lig, donker of volg die stelsel';

  @override
  String settingsDecrease(String setting) {
    return 'Verlaag $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Verhoog $setting';
  }

  @override
  String get settingsQuietStart => 'Begin';

  @override
  String get settingsQuietEnd => 'Eindig';

  @override
  String get settingsNotificationsHint =>
      'Dit stoor jou voorkeur in die app. Die stelsel kan ook toestemming vra.';

  @override
  String get settingsDashboardHint =>
      'Sleep om te herrangskik. Skakel afdelings af wat jy nie nodig het nie.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Herrangskik $section';
  }

  @override
  String get settingsDashboardReset => 'Stel verstekvolgorde terug';

  @override
  String get settingsAssistantDesc =>
      'Opsionele beplanningshulp. Niks verlaat hierdie toestel tensy jy ’n verskaffer koppel nie.';

  @override
  String get settingsAssistantSetup => 'Assistent en verskafferopstelling';

  @override
  String get settingsTrashDesc => 'Stel verwyderde items terug of vee hulle permanent uit';

  @override
  String get settingsEraseFirstBody =>
      'Dit kan nie ontdoen word nie. Oorweeg om eers ’n geënkripteerde rugsteun te skep.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Tik $word';
  }

  @override
  String get settingsEraseFailed => 'Data kon nie uitgevee word nie. Niks is verander nie.';

  @override
  String get settingsAboutTagline => '’n Privaat, plaaslik-eerste produktiwiteitswerkruimte.';

  @override
  String get backupShowPassword => 'Wys wagwoord';

  @override
  String get backupHidePassword => 'Versteek wagwoord';

  @override
  String get backupSaved => 'Rugsteun gestoor';

  @override
  String get backupFailed => 'Die rugsteun kon nie geskep word nie. Jou data is onveranderd.';

  @override
  String get backupReadFailed => 'Die gekose lêer kon nie gelees word nie.';

  @override
  String get backupRestoreFailed => 'Terugstelling het misluk. Niks is verander nie.';

  @override
  String get backupShareSubject => 'Deep Focus geënkripteerde rugsteun';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Elke $count dae',
      one: 'Elke dag',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Elke $count weke',
      one: 'Elke week',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Elke $count maande',
      one: 'Elke maand',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Elke $count jaar',
      one: 'Elke jaar',
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
  String get repeatEndsLabel => 'Eindig';

  @override
  String get repeatEndsAfter => 'Ná ’n aantal kere';

  @override
  String get repeatCountLabel => 'Herhalings';

  @override
  String get reminderNone => 'Geen herinnering nie';

  @override
  String get reminderCustomTime => 'Op ’n spesifieke tyd';

  @override
  String get a11yDecrease => 'Verlaag';

  @override
  String get a11yIncrease => 'Verhoog';

  @override
  String get pickTaskTitle => 'Kies ’n taak';

  @override
  String get pickTaskEmpty => 'Geen oop take nie';

  @override
  String get tasksSearchTooltip => 'Soek take';

  @override
  String get tasksSectionOverdue => 'Agterstallig';

  @override
  String get tasksSectionToday => 'Vandag';

  @override
  String get tasksRecurringSemantics => 'Herhaal';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimum prioriteit';

  @override
  String get tasksFilterCategory => 'Kategorie';

  @override
  String get tasksFilterAnyCategory => 'Enige kategorie';

  @override
  String get tasksFilterLabel => 'Etiket';

  @override
  String get tasksFilterAnyLabel => 'Enige etiket';

  @override
  String get tasksFilterReset => 'Stel filters terug';

  @override
  String get tasksViewByProject => 'Volgens projek';

  @override
  String get tasksViewByPriority => 'Volgens prioriteit';

  @override
  String get tasksViewByCategory => 'Volgens kategorie';

  @override
  String get tasksGroupNoCategory => 'Geen kategorie nie';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count take',
      one: '1 taak',
    );
    return 'Geblokkeer deur $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Hierdie taak word deur onvoltooide take geblokkeer. Voltooi dit tog?';

  @override
  String get taskStartFocus => 'Fokus op hierdie taak';

  @override
  String get taskRemoveDate => 'Verwyder datum';

  @override
  String get taskAllDay => 'Geen spesifieke tyd nie';

  @override
  String get taskSaved => 'Taak gestoor';

  @override
  String get taskCreated => 'Taak geskep';

  @override
  String get taskReminderNeedsDue => 'Stel ’n sperdatum om relatiewe herinneringe te gebruik';

  @override
  String get taskLabelName => 'Naam van etiket';

  @override
  String get taskPlanning => 'Beplanning';

  @override
  String get taskOrganize => 'Organiseer';

  @override
  String get taskBreakdown => 'Uiteensetting';

  @override
  String get trashDeleteTaskTitle => 'Vee hierdie taak permanent uit?';

  @override
  String get trashDeleteNoteTitle => 'Vee hierdie nota permanent uit?';

  @override
  String get trashDeleteBody => 'Dit kan nie ontdoen word nie.';

  @override
  String get trashEmptyTitle => 'Maak asblik leeg?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items sal permanent uitgevee word.',
      one: '1 item sal permanent uitgevee word.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Teruggestel';

  @override
  String get trashPurged => 'Permanent uitgevee';

  @override
  String trashDeletedOn(String date) {
    return 'Uitgevee $date';
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
  String get flashcardsReadAloud => 'Lees hardop';

  @override
  String get flashcardsTtsUnavailable => 'Teks-na-spraak is nie op hierdie toestel beskikbaar nie.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Geen stem is vir hierdie taal geïnstalleer nie. Voeg een by in Android se teks-na-spraak-instellings.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Vonk',
      'rocket': 'Vuurpyl',
      'book': 'Boek',
      'work': 'Werk',
      'home': 'Huis',
      'heart': 'Hart',
      'code': 'Kode',
      'palette': 'Palet',
      'fitness': 'Fiksheid',
      'school': 'Skool',
      'travel': 'Reis',
      'money': 'Spaargeld',
      'other': 'Ikoon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Meer velde';

  @override
  String get cardFieldExample => 'Voorbeeld';

  @override
  String get cardFieldExplanation => 'Verduideliking';

  @override
  String get cardFieldPronunciation => 'Uitspraak';

  @override
  String get cardFieldNotes => 'Bykomende notas';

  @override
  String get projectMilestones => 'Mylpale';

  @override
  String get milestoneAdd => 'Voeg mylpaal by';

  @override
  String get milestoneEdit => 'Wysig mylpaal';

  @override
  String get milestoneTitleLabel => 'Mylpaal';

  @override
  String get milestoneNoDate => 'Geen datum nie';

  @override
  String get milestonesEmpty =>
      'Nog geen mylpale nie. Voeg kontrolepunte met datums by om die projek op die kalender te volg.';

  @override
  String get milestoneDeleted => 'Mylpaal uitgevee';

  @override
  String milestoneDoneA11y(String title) {
    return 'Merk mylpaal “$title” as klaar';
  }

  @override
  String calendarMilestone(String project) {
    return 'Mylpaal · $project';
  }

  @override
  String get tasksViewInbox => 'Inkassie';

  @override
  String get tasksViewArchived => 'Geargiveer';

  @override
  String get tasksEmptyInbox =>
      'Take sonder ’n projek of datum land hier. Sorteer hulle wanneer jy ’n minuut het.';

  @override
  String get tasksEmptyArchived =>
      'Geargiveerde take word hier gehou, weg van jou lyste en herinneringe.';

  @override
  String get taskArchivedBadge => 'Geargiveer';

  @override
  String get taskStatusInProgress => 'Aan die gang';

  @override
  String get taskArchived => 'Taak geargiveer';

  @override
  String get taskUnarchived => 'Taak uit argief teruggestel';

  @override
  String get focusPlanTitle => 'Sessieplan';

  @override
  String focusPlanTotal(String duration) {
    return 'Totaal $duration';
  }

  @override
  String get focusPlanRounds => 'Fokussessies';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Lang pouse ná';

  @override
  String get focusPlanSkipLastBreak => 'Slaan die laaste pouse oor';

  @override
  String get focusPlanAutoBreaks => 'Begin pouses outomaties';

  @override
  String get focusPlanAutoFocus => 'Begin fokus outomaties ná ’n pouse';

  @override
  String get focusPlanSave => 'Stoor plan';

  @override
  String get focusPlanNameHint => 'bv. Eksamenvoorbereiding';

  @override
  String get focusPlanSaved => 'Plan gestoor';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min fokus, $rest min pouse';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Verlaag $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Verhoog $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sessie $current van $total';
  }

  @override
  String get focusSeriesComplete => 'Reeks voltooi. Mooi so!';

  @override
  String get filterAll => 'Alles';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added ingevoer · $duplicates duplikate oorgeslaan · $invalid onvolledige rye';
  }

  @override
  String get flashcardsSuspend => 'Skort kaart op';

  @override
  String get flashcardsResume => 'Hervat kaart';

  @override
  String get flashcardsSuspended => 'Kaart opgeskort: dit sal nie geskeduleer word nie';

  @override
  String get flashcardsResumed => 'Kaart hervat';

  @override
  String get flashcardsSuspendedFilter => 'Opgeskort';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown van $total kaarte';
  }

  @override
  String get flashcardsImportFile => 'Uit lêer';

  @override
  String get speechTitle => 'Spraak';

  @override
  String get speechAppLanguage => 'Apptaal';

  @override
  String get speechFrontLanguage => 'Taal van voorkant';

  @override
  String get speechBackLanguage => 'Taal van agterkant';

  @override
  String get speechRepeat => 'Herhaal elke lesing';

  @override
  String get speechRate => 'Spoed';

  @override
  String get speechAutoRead => 'Lees die vraag outomaties';

  @override
  String get speechHint =>
      'Gebruik die stemme wat op hierdie toestel geïnstalleer is, vanlyn. As ’n taal geen stem het nie, sal jy ingelig word en niks anders word in die plek daarvan gebruik nie.';

  @override
  String get studyHowTitle => 'Hoe wil jy studeer?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hersien $count kaarte',
      one: 'Hersien 1 kaart',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Oefen alle kaarte (skedule onveranderd)';

  @override
  String get studyPracticeMistakes => 'Oefen onlangse foute';

  @override
  String get studyPracticeHint =>
      'Oefenrondes verander nooit wanneer kaarte verval nie. Hersiening werk die skedule by.';

  @override
  String get studyModeClassic => 'Klassiek';

  @override
  String get studyModeReverse => 'Omgekeerd';

  @override
  String get studyModeMixed => 'Albei rigtings';

  @override
  String get studyModeTyped => 'Tik die antwoord';

  @override
  String get studyModeChoice => 'Meerkeuse';

  @override
  String get studyModeListening => 'Luister';

  @override
  String get studyPractice => 'oefening';

  @override
  String get studyNoMistakes => 'Geen onlangse foute in hierdie stapel nie. Mooi!';

  @override
  String get studyTypeAnswer => 'Tik jou antwoord';

  @override
  String get studyCheck => 'Kontroleer';

  @override
  String get studyKnewIt => 'Ek het dit geweet';

  @override
  String get studyDidntKnow => 'Het nie geweet nie';

  @override
  String studyMistakes(int count) {
    return 'Gemis ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Herhaal die gemiste kaarte';

  @override
  String get studyCorrect => 'Korrek';

  @override
  String get studyAlmost => 'Amper — kontroleer die spelling';

  @override
  String get studyWrong => 'Nie heeltemal nie';

  @override
  String get studyShowText => 'Wys die teks';

  @override
  String get flashcardsImportFileFailed =>
      'Die lêer kon nie oopgemaak word nie. Jy kan eerder die inhoud daarvan plak.';

  @override
  String get studyNoMatchingCards => 'Nog geen kaarte pas by hierdie keuse nie.';

  @override
  String get studyPracticeNew => 'Slegs nuwes';

  @override
  String get studyPracticeHard => 'Moeilike kaarte';

  @override
  String get studyPracticeFavorites => 'Gunstelinge';

  @override
  String get studySessionSize => 'Kaarte per sessie';

  @override
  String get studySessionAll => 'Alles';

  @override
  String get studyOrder => 'Volgorde';

  @override
  String get studyOrderDue => 'Mees agterstallige eerste';

  @override
  String get studyOrderRandom => 'Willekeurig';

  @override
  String get studyOrderHardest => 'Moeilikste eerste';

  @override
  String get flashcardsHard => 'Moeilik';

  @override
  String get flashcardsFavorites => 'Gunstelinge';

  @override
  String get flashcardsFavorite => 'Voeg by gunstelinge';

  @override
  String get flashcardsUnfavorite => 'Verwyder uit gunstelinge';

  @override
  String get flashcardsDuplicate => 'Dupliseer';

  @override
  String get flashcardsMoveTo => 'Skuif na stapel';

  @override
  String get flashcardsNoOtherDeck => 'Skep eers ’n ander stapel.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte geskuif',
      one: 'Kaart geskuif',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Voeg etiket by';

  @override
  String get flashcardsTagHint => 'bv. werkwoorde';

  @override
  String flashcardsSelected(int count) {
    return '$count gekies';
  }

  @override
  String get flashcardsSelectAll => 'Kies alles wat gewys word';

  @override
  String flashcardsSelectCard(String front) {
    return 'Kies $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Herroeping $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Moontlike duplikaat';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Hierdie stapel het reeds “$front” → “$back”. Stoor in elk geval?';
  }

  @override
  String get flashcardsSaveAnyway => 'Stoor in elk geval';

  @override
  String get flashcardsStats => 'Statistieke';

  @override
  String get flashcardsStatTotal => 'Kaarte';

  @override
  String get flashcardsStatLearning => 'Leer tans';

  @override
  String get flashcardsStatMatureCaption => '21+ dae onthou';

  @override
  String get flashcardsStatReviewsToday => 'Hersienings vandag';

  @override
  String get flashcardsStatCorrect => 'Korrekte antwoorde';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Laaste $days dae';
  }

  @override
  String get flashcardsStatForget => 'Vergeettempo';

  @override
  String get flashcardsStatForgetCaption => '“Weer” op geleerde kaarte';

  @override
  String get flashcardsStatRecall => 'Herroeping nou';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-skatting, hersiene kaarte';

  @override
  String flashcardsStatActivity(int count) {
    return 'Hersienings per dag · $count altesaam';
  }

  @override
  String get flashcardsStatHistory => 'Jongste antwoorde';

  @override
  String get flashcardsStatNoHistory =>
      'Nog geen hersienings nie. Studeer die stapel om jou vordering hier te sien.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Lees $field hardop';
  }

  @override
  String get speechVoice => 'Stem';

  @override
  String get speechVoiceDefault => 'Outomaties';

  @override
  String get speechVoiceOnline => 'benodig internet';

  @override
  String get speechTest => 'Toets stem';

  @override
  String get importNext => 'Voorskou';

  @override
  String get importPreviewTitle => 'Pas kolomme by velde';

  @override
  String get importIgnoreColumn => 'Ignoreer';

  @override
  String importColumn(int n) {
    return 'Kolom $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kaarte gereed · $invalid onvolledige rye sal oorgeslaan word';
  }

  @override
  String get importNeedFrontBack => 'Kies watter kolomme die voorkant en die agterkant is.';

  @override
  String get actionMoveUp => 'Skuif op';

  @override
  String get actionMoveDown => 'Skuif af';

  @override
  String get flashcardsLayoutTitle => 'Kaartuitleg';

  @override
  String get flashcardsLayoutHint =>
      'Hernoem, versteek of herrangskik die ekstra velde vir hierdie stapel. Kaartinhoud word nooit verander nie.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Wys $field tydens studie';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Onthul die antwoord stap vir stap';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Die agterkant verskyn eerste; elke ekstra veld gaan oop met ’n tik.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Wys $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Hierdie lêer is groter as $mb MB.';
  }

  @override
  String get flashcardsImage => 'Prent';

  @override
  String get flashcardsAudio => 'Klank';

  @override
  String get flashcardsAddImage => 'Voeg prent by';

  @override
  String get flashcardsAddAudio => 'Voeg klank by';

  @override
  String get flashcardsPlayAudio => 'Speel opname';

  @override
  String get flashcardsAudioUnavailable =>
      'Hierdie opname kan nie op hierdie toestel gespeel word nie.';

  @override
  String get flashcardsCustomFields => 'Jou velde';

  @override
  String get flashcardsTemplates => 'Sjablone';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Veld $n';
  }

  @override
  String get flashcardsAddField => 'Voeg veld by';

  @override
  String get flashcardsFieldName => 'Veldnaam';

  @override
  String get flashcardsFieldLangDefault => 'Taal van kant';

  @override
  String get flashcardsTemplateConfirm =>
      'Die sjabloon bepaal hoe velde gewys word en voeg sy velde by. Jou kaarte en bestaande velde bly soos hulle is.';

  @override
  String get flashcardsApplyTemplate => 'Pas toe';

  @override
  String get templateVocabulary => 'Woordeskat';

  @override
  String get templateTwoTranslations => 'Woord met twee vertalings';

  @override
  String get templateQuestionAnswer => 'Vraag en antwoord';

  @override
  String get templateDefinition => 'Term en definisie';

  @override
  String get templateGrammar => 'Grammatikareël';

  @override
  String get templateFieldPlural => 'Meervoud';

  @override
  String get templateFieldTranslation2 => 'Tweede vertaling';

  @override
  String get templateFieldSynonyms => 'Sinonieme';

  @override
  String get templateFieldRule => 'Reël';

  @override
  String get deckCategory => 'Vlak of onderwerp';

  @override
  String get deckCategoryHint => 'bv. A1, Geneeskunde';

  @override
  String get flashcardsSearchAll => 'Soek alle kaarte';

  @override
  String get flashcardsSearchAllHint => 'Woord, vertaling, voorbeeld, nota, etiket…';

  @override
  String get flashcardsAllDecks => 'Alle stapels';

  @override
  String get flashcardsAllLanguages => 'Alle tale';

  @override
  String get flashcardsLangUnset => 'Taal nie gestel nie';

  @override
  String get flashcardsLevelUnset => 'Geen vlak of onderwerp nie';

  @override
  String get flashcardsByLanguage => 'Vordering volgens taal';

  @override
  String get flashcardsByLevel => 'Vordering volgens vlak of onderwerp';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks stapels · $cards kaarte · $mature gevestig · $due verval · $correct korrek (30 dae)';
  }

  @override
  String get flashcardsRecord => 'Neem op';

  @override
  String get flashcardsRecording => 'Neem tans op…';

  @override
  String get flashcardsRecordStop => 'Stop en hou';

  @override
  String get flashcardsMicDenied =>
      'Mikrofoontoegang is af. Laat dit in die stelselinstellings toe om op te neem.';

  @override
  String get flashcardsRecordFailed => 'Opname is nie op hierdie toestel beskikbaar nie.';

  @override
  String get soundsTitle => 'Klanke';

  @override
  String get soundsNature => 'Natuur';

  @override
  String get soundsNoise => 'Fokusgeraas';

  @override
  String get soundRain => 'Reën';

  @override
  String get soundStorm => 'Donderstorm';

  @override
  String get soundRiver => 'Rivier';

  @override
  String get soundOcean => 'Seegolwe';

  @override
  String get soundFire => 'Kampvuur';

  @override
  String get soundForest => 'Woudvoëls';

  @override
  String get soundNight => 'Somernag';

  @override
  String get soundWhite => 'Witgeraas';

  @override
  String get soundPink => 'Pienkgeraas';

  @override
  String get soundBrown => 'Bruingeraas';

  @override
  String get soundsPlay => 'Speel';

  @override
  String get soundsSleep => 'Slaaptydhouer';

  @override
  String get soundsSleepOff => 'Af';

  @override
  String soundsSleepAt(String time) {
    return 'Stop om $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Tot $count klanke kan gelyktydig speel.';
  }

  @override
  String get soundsHint => 'Tik op ’n klank om te begin. Meng ’n paar en stel elkeen se volume.';

  @override
  String get soundsMixer => 'Mengsel';

  @override
  String soundsVolumeOf(String name) {
    return '$name-volume';
  }

  @override
  String get soundsChannel => 'Natuurklanke';

  @override
  String get settingsEndTone => 'Tydhouer-eindklank';

  @override
  String get toneGentle => 'Sagte piepies';

  @override
  String get toneBeeps => 'Piepies';

  @override
  String get toneWood => 'Klop op hout';

  @override
  String get toneBird => 'Voëlroep';

  @override
  String get toneStream => 'Stroompie';

  @override
  String get toneSystem => 'Foon se klank';

  @override
  String get speechOnPhone => 'Op hierdie foon';

  @override
  String get speechAllLanguages => 'Alle tale';

  @override
  String get speechSearchLanguage => 'Soek tale';

  @override
  String get speechGetVoices => 'Laai meer stemme af';

  @override
  String get speechGetVoicesHint =>
      'Stemme vir tale sonder ’n stem kan in die foon se spraakinstellings afgelaai word.';

  @override
  String get speechSettingsFailed => 'Kon nie die spraakinstellings op hierdie foon oopmaak nie.';

  @override
  String get speechVoiceMissing => 'Geen stem geïnstalleer nie';

  @override
  String get speechPause => 'Pouse tussen herhalings';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Lees die voorbeeld saam met die antwoord';

  @override
  String get flashListen => 'Luister';

  @override
  String get flashListenNext => 'Volgende kaart';

  @override
  String get flashListenEmpty => 'Geen kaarte om na te luister nie.';

  @override
  String get flashViewTable => 'Tabel';

  @override
  String get flashViewCards => 'Kaarte';

  @override
  String get flashSwapSides => 'Ruil kolomme om';

  @override
  String get flashSort => 'Sorteer';

  @override
  String get flashSortNewest => 'Nuutste eerste';

  @override
  String get flashSortAlpha => 'A tot Z';

  @override
  String get flashSortDue => 'Verval eerste';

  @override
  String get flashSortHard => 'Moeilikste eerste';

  @override
  String get flashPasteCards => 'Plak kaarte';

  @override
  String get flashClipboardEmpty => 'Die knipbord het geen teks nie.';

  @override
  String get flashMenuAdd => 'Voeg kaarte by';

  @override
  String get flashMenuDeck => 'Stapel';

  @override
  String get flashToday => 'Vandag';

  @override
  String get flashStudyNow => 'Studeer';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte beantwoord',
      one: '1 kaart beantwoord',
      zero: 'Geen kaarte beantwoord nie',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Reën in die woud';

  @override
  String get autoBackupTitle => 'Outomatiese rugsteune';

  @override
  String get autoBackupDesc => 'Elke dag op hierdie foon; die laaste 7 word gehou';

  @override
  String get autoBackupHint =>
      'Hierdie kopieë bly op hierdie foon en word verwyder as die app gedeïnstalleer word. Om na ’n nuwe foon oor te skuif, gebruik “Rugsteun” om ’n lêer te stoor.';

  @override
  String get autoBackupNone =>
      'Nog geen outomatiese rugsteun nie. Die eerste een word vandag gemaak.';

  @override
  String get autoBackupRestore => 'Stel terug';

  @override
  String autoBackupConfirm(String date) {
    return 'Vervang alle huidige data met die rugsteun van $date?';
  }

  @override
  String get autoBackupRestored => 'Teruggestel.';

  @override
  String get errorLogTitle => 'Foutlogboek';

  @override
  String get errorLogHint =>
      'As iets skeefloop, word dit hier aangeteken: net die soort fout en waar in die kode, nooit jou inhoud nie. Deel dit om te help om die probleem op te los.';

  @override
  String get errorLogEmpty => 'Geen foute aangeteken nie.';

  @override
  String get errorLogClear => 'Maak skoon';

  @override
  String get soundsWithFocus => 'Speel saam met fokussessies';

  @override
  String get soundsWithFocusHint =>
      'Jou mengsel begin saam met ’n fokussessie en word tydens pouses onderbreek.';

  @override
  String get soundsSavedMixes => 'Gestoorde mengsels';

  @override
  String get soundsSaveMix => 'Stoor hierdie mengsel';

  @override
  String get soundsMixNameHint => 'Naam, bv. Reënerige biblioteek';

  @override
  String soundsDeleteMix(String name) {
    return 'Vee die mengsel “$name” uit?';
  }

  @override
  String get settingsReviewReminderHint => 'Een keer per dag, net wanneer kaarte hersien moet word';

  @override
  String get settingsReviewTime => 'Herinneringstyd';

  @override
  String get shortcutFocus => 'Fokus';

  @override
  String get shortcutNewTask => 'Nuwe taak';

  @override
  String get shortcutReview => 'Hersien kaarte';

  @override
  String get shortcutSounds => 'Natuurklanke';

  @override
  String get myDayTitle => 'Begin my dag';

  @override
  String get myDayHint => 'Jou dag in ’n oogopslag, dan een tik om te fokus';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count take vir vandag',
      one: '1 taak vir vandag',
      zero: 'Geen take vir vandag nie',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Geen verdere gebeurtenisse vandag nie';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Volgende: $title om $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gewoontes oor',
      one: '1 gewoonte oor',
      zero: 'Alle gewoontes gedoen',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Begin met ’n fokussessie';

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
  String get hijriMonth6 => 'Djoemada al-Akhirah';

  @override
  String get hijriMonth7 => 'Radjab';

  @override
  String get hijriMonth8 => 'Sja’baan';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Sjawwal';

  @override
  String get hijriMonth11 => 'Dhoe al-Qa’dah';

  @override
  String get hijriMonth12 => 'Dhoe al-Hiddjah';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year AH';
  }

  @override
  String get settingsHijri => 'Hidjri-datums';

  @override
  String get settingsHijriHint => 'Gewys in die kalender en op die tuisskerm (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dae',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done van $goal kaarte vandag';
  }

  @override
  String get studyGoalReached => 'Daaglikse doelwit bereik. Mooi so!';

  @override
  String get studyWeekTitle => 'Jou week';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte in 7 dae beantwoord',
      one: '1 kaart in 7 dae beantwoord',
      zero: 'Geen kaarte in 7 dae beantwoord nie',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fokus in 7 dae';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Reeks: $current · Beste: $best';
  }

  @override
  String get studyGoalTitle => 'Daaglikse doelwit (kaarte)';

  @override
  String get studyGoalOff => 'Af';

  @override
  String get focusDndTitle => 'Moenie steur nie tydens fokus';

  @override
  String get focusDndHint => 'Skakel aan vir elke fokussessie en weer af tydens die pouse';

  @override
  String get focusDndNeedsAccess => 'Laat toegang in die foon se instellings toe om dit te gebruik';

  @override
  String get voiceInput => 'Praat om te tik';

  @override
  String get voiceInputPrompt => 'Praat nou';

  @override
  String get voiceInputUnavailable =>
      'Steminvoer is nie op hierdie foon beskikbaar nie. Installeer of skakel ’n spraakdiens aan (byvoorbeeld Spraakherkenning en -sintese deur Google).';

  @override
  String get prayerFajr => 'Fadjr';

  @override
  String get prayerSunrise => 'Sonsopkoms';

  @override
  String get prayerDhuhr => 'Dhoehr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isja';

  @override
  String get prayerMethodMwl => 'Moslem-Wêreldliga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egiptiese Algemene Owerheid';

  @override
  String get prayerMethodJordan => 'Jordanië, Ministerie van Awqaf';

  @override
  String get prayerMethodKarachi => 'Universiteit van Islamitiese Wetenskappe, Karatsji';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Golfstreek';

  @override
  String get prayerMethodKuwait => 'Koeweit';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Türkiye, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapoer, Maleisië, Indonesië';

  @override
  String get prayerMethodFrance => 'Frankryk (12°)';

  @override
  String get prayerMethodRussia => 'Rusland, Geestelike Administrasie';

  @override
  String prayerNotifTitle(String name) {
    return 'Tyd vir $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Gebedstyd · $time';
  }

  @override
  String get prayerTitle => 'Gebedstye';

  @override
  String get prayerOffHint =>
      'Kies jou stad om gebedstye te sien. Hulle word op die foon bereken; geen liggingtoegang is nodig nie.';

  @override
  String get prayerChooseCity => 'Kies stad';

  @override
  String get prayerCity => 'Stad';

  @override
  String get prayerCitySearch => 'Soek ’n stad';

  @override
  String get prayerMethod => 'Berekeningsmetode';

  @override
  String get prayerHanafiAsr => 'Hanafi-Asr (later tyd)';

  @override
  String get prayerReminders => 'Stel in kennis by elke gebedstyd';

  @override
  String get prayerPauseFocus => 'Onderbreek fokus tydens gebedstyd';

  @override
  String get prayerPauseFocusHint => '’n Lopende sessie word onderbreek; gaan ná die gebed voort';

  @override
  String get prayerTurnOff => 'Skakel gebedstye af';

  @override
  String get prayerAccuracyNote =>
      'Berekende tye kan ’n paar minute van jou plaaslike moskee verskil.';

  @override
  String prayerNext(String name, String time) {
    return '$name om $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Hierdie Anki-lêer gebruik die nuutste formaat. Voer dit in Anki weer uit met “Support older Anki versions” aangeskakel, en voer dan daardie lêer in.';

  @override
  String get importTemplate => 'Sigbladsjabloon';

  @override
  String get importTemplateFront => 'appel';

  @override
  String get importTemplateBack => '’n ronde vrug';

  @override
  String get importTemplateExample => 'Ek eet elke dag ’n appel.';

  @override
  String get importTemplateTag => 'kos';

  @override
  String get starterTitle => 'Beginstapels';

  @override
  String get starterHint =>
      'Voeg een by om dadelik te begin studeer. Jy kan dit later wysig of uitvee.';

  @override
  String get starterAdd => 'Voeg by';

  @override
  String get starterWords => 'Alledaagse Engelse woorde (Arabies)';

  @override
  String get starterCapitals => 'Wêreldhoofstede';

  @override
  String get starterElements => 'Chemiese elemente';

  @override
  String get settingsAccent => 'Aksentkleur';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentBlue => 'Blou';

  @override
  String get accentTeal => 'Blougroen';

  @override
  String get accentGreen => 'Groen';

  @override
  String get accentRose => 'Roos';

  @override
  String get accentAmber => 'Amber';

  @override
  String get settingsFlashTextSize => 'Teksgrootte van flitskaarte';

  @override
  String get settingsFlashTextSample => 'Voorbeeld';

  @override
  String get widgetStartFocus => 'Tik om te fokus';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokus tot $time';
  }

  @override
  String get widgetNoCardsDue => 'Kaarte: alles klaar';

  @override
  String get faqMyDayQ => 'Wat doen “Begin my dag”?';

  @override
  String get faqMyDayA =>
      'Een keer per dag bied die tuisskerm dit aan: sien vandag se take, die volgende gebeurtenis, oorblywende gewoontes en kaarte wat verval, en begin dan ’n fokussessie met een tik. Druk lank op die app-ikoon vir vinnige aksies, of voeg die tuisskermwidget by om fokustyd en kaarte wat verval te sien.';

  @override
  String get faqTasksQ => 'Hoe voeg ek ’n taak met ’n herinnering by?';

  @override
  String get faqTasksA =>
      'Tik op Nuwe taak op Tuis of + in Take. Tik die titel of sê dit met die mikrofoon, en stel dan ’n sperdatum, ’n tyd en ’n herinnering. Agterstallige take word eerste gelys.';

  @override
  String get faqFocusQ => 'Hoe werk die fokustydhouer?';

  @override
  String get faqFocusA =>
      'Kies Pomodoro, ’n aftelling of oop tyd en druk Begin; pouses kan outomaties volg. In Instellings kan jy die eindklank kies, Moenie steur nie tydens fokus aanskakel en jou natuurklanke met elke sessie speel.';

  @override
  String get faqSoundsQ => 'Kan ek natuurklanke meng?';

  @override
  String get faqSoundsA =>
      'Skakel tot ses egte opnames aan, stel elkeen se volume en stoor die mengsel met ’n naam. Hulle speel aan in die agtergrond, en ’n slaaptydhouer kan hulle stop. Geen musiek word gebruik nie.';

  @override
  String get faqCalendarQ => 'Kan die kalender Hidjri-datums wys?';

  @override
  String get faqCalendarA =>
      'Ja. Hidjri-datums (Umm al-Qura) word outomaties in Arabies gewys en kan in Instellings vir enige taal aangeskakel word. Gebeurtenisse, take met sperdatums en projekmylpale verskyn saam.';

  @override
  String get faqFlashcardsQ => 'Hoe besluit hersiening watter kaarte ek sien?';

  @override
  String get faqFlashcardsA =>
      'Kaarte wat jy goed ken, kom ná langer tussenposes terug en kaarte wat jy mis, kom gou terug (gespasieerde herhaling). Gradeer elke antwoord: Weer, Moeilik, Goed of Maklik. Stel ’n daaglikse doelwit en hou jou reeks op die Vandag-kaart. Stel ’n eksamendatum in ’n stapel om die oorblywende dae te sien en hoeveel nuwe kaarte jy elke dag moet leer. Sorteer volgens “My volgorde” om kaarte in plek te sleep, tik op die luidspreker aan enige kant om dit te hoor, en stel spoed en herhalings in die Spraak-kieslys.';

  @override
  String get faqImportQ => 'Kan ek kaarte uit Anki of Excel bring?';

  @override
  String get faqImportA =>
      'Ja. Kies Voer in in ’n stapel en kies dan ’n lêer: Anki (.apkg), Excel (.xlsx) of CSV, en pas die kolomme. Gebruik “Sigbladsjabloon” om kaarte op ’n rekenaar te skryf. Prente en klanke binne Anki-lêers word nie ingevoer nie.';

  @override
  String get faqNotesQ => 'Wat kan notas doen?';

  @override
  String get faqNotesA =>
      'Skryf vrylik met kontrolelyste en formatering, speld belangrike notas vas of maak hulle gunstelinge, voeg etikette by en koppel notas aan take. Met die mikrofoonknoppie kan jy dikteer. ’n Nuwe nota kan uit ’n sjabloon begin (lesing, boekopsomming, joernaal, weekplan), en die prentknoppie voeg foto’s by.';

  @override
  String get faqHabitsQ => 'Hoe word gewoontereekse getel?';

  @override
  String get faqHabitsA =>
      '’n Dag tel wanneer jy die gewoonte se teiken op ’n geskeduleerde dag bereik. As jy ’n gewoonte onderbreek, bly die reeks veilig. Elke gewoonte kan sy eie herinneringstyd hê.';

  @override
  String get faqGoalsQ => 'Hoe volg doelwitte vordering?';

  @override
  String get faqGoalsA =>
      'Gee ’n doelwit ’n teikenhoeveelheid en eenheid, en teken dan vordering aan. Sy kaart wys hoe ver jy is en hoeveel oor is voor die sperdatum.';

  @override
  String get faqProjectsQ => 'Waarvoor is projekte?';

  @override
  String get faqProjectsA =>
      'Groepeer take onder ’n projek, voeg mylpale met datums by en volg die algehele vordering. Mylpale verskyn ook in die kalender.';

  @override
  String get faqInsightsQ => 'Wat wys Insigte?';

  @override
  String get faqInsightsA =>
      'Jou fokustyd, voltooide take en studie oor dae en weke, met sagte voorstelle. Alles word op jou foon bereken.';

  @override
  String get faqSpacesQ => 'Waar is al die afdelings?';

  @override
  String get faqSpacesA =>
      'Ruimtes lys elke deel van die app (notas, stapels, gewoontes, doelwitte, projekte, klanke en meer) sodat die hoofbalk eenvoudig bly.';

  @override
  String get faqBackupQ => 'Hoe word my data gerugsteun?';

  @override
  String get faqBackupA =>
      'Elke dag hou die app stilweg ’n geënkripteerde kopie op hierdie foon en behou die laaste 7. In Instellings kan jy ook ’n wagwoordbeskermde rugsteunlêer uitvoer en dit op ’n ander foon terugstel.';

  @override
  String get faqPrayerQ => 'Hoe werk gebedstye?';

  @override
  String get faqPrayerA =>
      'Kies jou stad in Instellings → Gebedstye. Tye word op die foon bereken met die metode wat daar gebruik word, en jy kan die metode en die Asr-skool verander. Jy kan by elke gebed in kennis gestel word, en ’n lopende fokussessie word onderbreek.';

  @override
  String get faqPrivacyQ => 'Waar word my data gestoor?';

  @override
  String get faqPrivacyA =>
      'Slegs op jou foon, in ’n geënkripteerde databasis. Daar is geen rekening en geen dop nie. Die internet word net gebruik deur funksies wat jy self aanskakel, soos die opsionele assistent.';

  @override
  String get faqAssistantQ => 'Wat is die assistent?';

  @override
  String get faqAssistantA =>
      '’n Opsionele helper wat jy in Instellings aan jou eie KI-diens koppel. Dit is by verstek af en vra voordat dit enige notateks stuur.';

  @override
  String get tourPlanTitle => 'Beplan jou dag';

  @override
  String get tourPlanBody =>
      'Take, kalender en gewoontes op een kalm plek. Begin elke oggend met “Begin my dag”.';

  @override
  String get tourFocusTitle => 'Fokus diep';

  @override
  String get tourFocusBody =>
      'Getimede sessies met egte natuurklanke, Moenie steur nie en sagte eindtone.';

  @override
  String get tourLearnTitle => 'Leer vir altyd';

  @override
  String get tourLearnBody =>
      'Flitskaarte met gespasieerde herhaling, spraak in baie tale, en invoer uit Anki of Excel.';

  @override
  String get helpTitle => 'Hulp en vrae';

  @override
  String get helpOpen => 'Maak oop';

  @override
  String get helpTour => 'Neem die toer';

  @override
  String get tourNext => 'Volgende';

  @override
  String get tourDone => 'Kom ons begin';

  @override
  String get transferColTitle => 'Titel';

  @override
  String get transferColNotes => 'Notas';

  @override
  String get transferColBody => 'Teks';

  @override
  String get transferColDue => 'Sperdatum';

  @override
  String get transferColPriority => 'Prioriteit (0-3)';

  @override
  String get transferColDone => 'Klaar';

  @override
  String get transferColProject => 'Projek';

  @override
  String get transferColCategory => 'Kategorie';

  @override
  String get transferTitle => 'Invoer en uitvoer';

  @override
  String get transferSaveAs => 'Stoor as';

  @override
  String get transferImport => 'Voer in uit ’n lêer';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV of ’n tabel in Word. Kolomme: titel, sperdatum (2026-12-31), prioriteit 0-3, klaar, projek, notas. Take wat reeds in die app is, word oorgeslaan.';

  @override
  String get transferImportNotesHint =>
      'Word-, Markdown- of tekslêers word ’n nota. Excel of CSV: een nota per ry (titel, teks).';

  @override
  String get transferSaved => 'Lêer gestoor';

  @override
  String get transferFailed => 'Die lêer kon nie gemaak word nie. Niks is verander nie.';

  @override
  String get transferUnsupported =>
      'Hierdie lêer kan nie hier gelees word nie. Gebruik Excel, CSV, Word, Markdown of teks.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added bygevoeg',
      one: '1 bygevoeg',
      zero: 'Niks nuuts om by te voeg nie',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Teks';

  @override
  String get transferAllNotes => 'Alle notas';

  @override
  String get transferThisNote => 'Hierdie nota';

  @override
  String get transferDeckFormats => 'Stoor as Excel, Word of PDF';

  @override
  String get faqFilesQ => 'Kan ek Excel-, Word- of PDF-lêers gebruik?';

  @override
  String get faqFilesA =>
      'Ja. Take en Notas het bo ’n invoer-en-uitvoer-knoppie (twee pyle), en elke stapel het dit in sy kieslys. Stoor as Excel, CSV, Word of PDF, of bring Excel-, CSV-, Word-, Markdown- of tekslêers in. Kolomname kan in enige van die app se tale wees, en lêers wat jy gestoor het, kan altyd weer ingevoer word.';

  @override
  String get tplLecture => 'Lesing';

  @override
  String get tplBook => 'Boekopsomming';

  @override
  String get tplJournal => 'Joernaal';

  @override
  String get tplWeek => 'Weekplan';

  @override
  String get tplLectureBody => '## Kernpunte\n- \n\n## Vrae\n- [ ] \n\n## Opsomming\n';

  @override
  String get tplBookBody =>
      '## Hoofgedagte\n\n## Wat ek geleer het\n- \n\n## Aanhalings\n> \n\n## Om toe te pas\n- [ ] \n';

  @override
  String get tplJournalBody => '## Dankbaar vir\n- \n\n## Vandag se fokus\n- [ ] \n\n## Notas\n';

  @override
  String get tplWeekBody =>
      '## Doelwitte hierdie week\n- [ ] \n\n### Saterdag\n- [ ] \n\n### Sondag\n- [ ] \n\n### Maandag\n- [ ] \n\n### Dinsdag\n- [ ] \n\n### Woensdag\n- [ ] \n\n### Donderdag\n- [ ] \n\n### Vrydag\n- [ ] \n';

  @override
  String get tplHint => 'Begin uit ’n sjabloon';

  @override
  String get noteImage => 'Prent';

  @override
  String get noteAddImage => 'Voeg prent by';

  @override
  String get noteImageUnreadable => 'Hierdie lêer is nie ’n prent wat die app kan lees nie.';

  @override
  String get noteImageTooLarge => 'Hierdie prent is te groot.';

  @override
  String get examSet => 'Stel eksamendatum';

  @override
  String get examDate => 'Eksamendatum';

  @override
  String get examToday => 'Eksamen vandag. Sterkte!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Eksamen oor $count dae',
      one: 'Eksamen môre',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'leer $count nuwe kaarte per dag',
      one: 'leer 1 nuwe kaart per dag',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'alle kaarte geleer, hou aan hersien';

  @override
  String examRaiseLimit(int count) {
    return 'Wys $count nuwe kaarte per dag';
  }

  @override
  String get backupDriveHint =>
      'Om ’n kopie aanlyn te hou, kies Google Drive (of ’n ander wolk-app) op die stoorskerm wat volgende oopmaak.';

  @override
  String get flashShareDeck => 'Deel stapel met ’n vriend';

  @override
  String get flashSortManual => 'My volgorde (sleep)';

  @override
  String get flashReorderHint => 'Hou die handvatsel vas en sleep ’n kaart om dit te skuif.';

  @override
  String get flashReorderNeedsAll => 'Maak die soektog en filters skoon om kaarte te sleep.';

  @override
  String get flashDragHandle => 'Sleep om te skuif';

  @override
  String get reportTitle => 'Maandverslag';

  @override
  String get reportFocus => 'Fokustyd';

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
    return '$count aktiewe dae';
  }

  @override
  String get reportCards => 'Kaarte hersien';

  @override
  String reportCardsKnown(String percent) {
    return '$percent onthou';
  }

  @override
  String get reportTasks => 'Take voltooi';

  @override
  String get reportHabits => 'Gewoonte-afmerkings';

  @override
  String get reportEmpty => 'Nog niks hierdie maand aangeteken nie.';

  @override
  String get reportSave => 'Stoor as PDF of Word';

  @override
  String get reportPrevMonth => 'Vorige maand';

  @override
  String get reportNextMonth => 'Volgende maand';

  @override
  String get careTitle => 'Sorg vir jou foon en data';

  @override
  String get storageTitle => 'Berging';

  @override
  String get storageSubtitle => 'Wat spasie opneem en ’n skoonmaak van ongebruikte prente';

  @override
  String get storagePictures => 'Prente in notas';

  @override
  String get storageCardMedia => 'Prente en klank in kaarte';

  @override
  String get storageText => 'Notateks';

  @override
  String get storageFree => 'Vry op jou foon';

  @override
  String get storageLow =>
      'Jou foon is amper vol. Maak spasie vry sodat rugsteune en herinneringe aanhou werk.';

  @override
  String storageUnused(int count, String size) {
    return '$count ongebruikte prente ($size)';
  }

  @override
  String get storageNoUnused => 'Geen ongebruikte prente nie. Alles is netjies.';

  @override
  String get storageClean => 'Verwyder ongebruikte prente';

  @override
  String storageCleaned(int count) {
    return '$count prente verwyder';
  }

  @override
  String get storageHint =>
      'Prente tel net as ongebruik wanneer geen nota hulle wys nie, insluitend notas in die asblik.';

  @override
  String get batteryTitle => 'Hou herinneringe aan die gang';

  @override
  String get batterySubtitle => 'Sommige fone stop apps in die agtergrond. Kontroleer joune.';

  @override
  String get batteryStatusOk =>
      'Batterybesparing beperk nie hierdie app nie. Herinneringe en klanke behoort betyds te kom.';

  @override
  String get batteryStatusLimited =>
      'Batterybesparing kan hierdie app in die agtergrond stop, so herinneringe en klanke kan laat wees of ontbreek.';

  @override
  String get batteryOpen => 'Maak batteryinstellings oop';

  @override
  String get batteryOpenApp => 'Maak appinstellings oop';

  @override
  String get batteryGeneric =>
      'Kies hierdie app in die batteryinstellings en stel dit op Onbeperk (of Moenie optimeer nie).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: maak ook Sekuriteit › Toestemmings › Outobegin oop en skakel hierdie app aan, en stel Batterybespaarder op Geen beperkings nie.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: maak Battery › hierdie app oop en laat agtergrondaktiwiteit en outobegin toe; sluit die app in die lys van onlangse apps.';

  @override
  String get batterySamsung =>
      'Samsung: Battery › Agtergrondgebruikperke: verwyder hierdie app uit Slapende apps en Diepslapende apps.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: App-begin › hierdie app › bestuur handmatig, en laat outobegin, sekondêre begin en loop in die agtergrond toe.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Battery › Agtergrondkragverbruik › laat hierdie app toe, en aktiveer outobegin in die toestemmings.';

  @override
  String get whatsNewTitle => 'Wat’s nuut';

  @override
  String get whatsNewSubtitle => 'Die jongste veranderinge in ’n paar reëls';

  @override
  String get whatsNewDone => 'Verstaan';

  @override
  String get whatsNewOrderTitle => 'Sleep kaarte in jou eie volgorde';

  @override
  String get whatsNewOrderBody =>
      'Kies in ’n stapel Sorteer › My volgorde, hou dan die handvatsel vas en sleep.';

  @override
  String get whatsNewSpeechTitle => '’n Luidspreker aan elke kant van die kaart';

  @override
  String get whatsNewSpeechBody =>
      'Tik daarop om die woord of die vertaling te hoor. Spoed, herhalings en stem is in die hersieningskieslys. Die taal word uit die teks bepaal.';

  @override
  String get whatsNewReportTitle => 'Maandverslag';

  @override
  String get whatsNewReportBody =>
      'Tik in Insigte op die verslagikoon om die maand te sien en dit as PDF of Word te stoor.';

  @override
  String get whatsNewCareTitle => 'Sorg vir jou foon en data';

  @override
  String get whatsNewCareBody =>
      'Instellings het nou ’n bergingsbladsy met prentskoonmaak en ’n batterygids vir jou foon se handelsmerk.';

  @override
  String get whatsNewSoundTitle => 'Kalmer klanke';

  @override
  String get whatsNewSoundBody =>
      'Natuurklanke is sagter en stiller, en die prentkaarte is mooier.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Gekontroleer $date: die jongste rugsteun maak korrek oop.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Gekontroleer $date: ’n beskadigde rugsteun is gevind en met ’n nuwe een vervang.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Gekontroleer $date: die jongste rugsteun kon nie oopgemaak word nie. Stoor self ’n rugsteunlêer in Instellings.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Jy studeer gewoonlik omstreeks $time';
  }

  @override
  String get smartReviewTimeUse => 'Gebruik dit';

  @override
  String get widgetNewNote => 'Nuwe nota';

  @override
  String get noteConnections => 'Etikette, skakels en take';

  @override
  String get navCards => 'Kaarte';

  @override
  String get studyAnswerWay => 'Hoe om te antwoord';

  @override
  String get studyMorePractice => 'Ekstra oefening';

  @override
  String get studySessionSettings => 'Sessie-instellings';

  @override
  String get focusAdjustTitle => 'Jou sessie';

  @override
  String get focusPresetsTitle => 'Gereedgemaak';

  @override
  String get focusPresetStudy => 'Studie';

  @override
  String get focusPresetDeep => 'Diep werk';

  @override
  String get focusPresetQuick => 'Vinnige naelloop';

  @override
  String get focusPresetReading => 'Lees';

  @override
  String get focusPresetWorkout => 'Oefenrondes';

  @override
  String get focusAdjustMinutes => 'Fokuslengte';

  @override
  String get focusAdjustBreak => 'Pouselengte';

  @override
  String get focusAdjustRounds => 'Rondes';

  @override
  String get focusRoundsOpen => 'Geen limiet nie';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Tik om die tyd te verander';

  @override
  String get flashArrangeDecks => 'Rangskik stapels';

  @override
  String get flashDeckActions => 'Stapelopsies';

  @override
  String get starterBrowse => 'Gereedgemaakte stapels';

  @override
  String get starterBrowseHint => 'Voeg een met ’n tik by en begin leer';

  @override
  String get dashOpenDecks => 'Maak jou kaarte oop';

  @override
  String speechVoiceNumber(String n) {
    return 'Stem $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Goeie vloei. Rus $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Begin pouse';

  @override
  String tasksFinishAt(String time) {
    return 'Begin nou en jy is teen $time met alles klaar';
  }

  @override
  String get focusCalmPacing => 'Kalm tempo';

  @override
  String get focusCalmPacingHint => 'Net hele minute en die ring, geen tikkende sekondes nie';

  @override
  String get focusFlipHint => 'Draai die foon onderstebo om te begin';

  @override
  String get focusImmersive => 'Onderdompelingsmodus';

  @override
  String get focusImmersiveBlack => 'Suiwer swart (spaar battery)';

  @override
  String get focusFlipToFocus => 'Draai om te fokus';

  @override
  String get focusFlipToFocusHint => 'In onderdompelingsmodus: onderstebo begin, optel onderbreek';

  @override
  String get guardTitle => 'Afleidingswag';

  @override
  String get guardSubtitle => 'Onderbreek apps wat aflei terwyl jy fokus';

  @override
  String get guardSwitch => 'Onderbreek apps wat aflei';

  @override
  String get guardSwitchHint => 'Tydens fokussessies en jou Tydwag-ure';

  @override
  String get guardNeedsAccess => 'Benodig die toeganklikheidskakelaar: tik om dit aan te skakel';

  @override
  String get guardDisclosureTitle => 'Hoe die wag werk';

  @override
  String get guardDisclosureBody =>
      'Om die apps wat jy kies te onderbreek, gebruik Deep Focus Android se toeganklikheidsdiens om te sien watter app oop is. Met “Maak Shorts en Reels toe” aan, kyk dit ook of ’n kortvideospeler op die skerm is.\n\nDit lees geen teks nie, stoor niks wat dit sien nie en stuur niks êrens heen nie: alles bly op jou foon. Jy kan dit enige tyd in Toeganklikheidsinstellings afskakel.';

  @override
  String get guardAgree => 'Stem in en maak instellings oop';

  @override
  String get guardModeGentle => 'Sag';

  @override
  String get guardModeStrict => 'Streng';

  @override
  String get guardGentleHint => '’n Asemhalingspouse van 5 sekondes, dan kies jy';

  @override
  String get guardStrictHint => 'Gekose apps bly toe totdat fokustyd eindig';

  @override
  String get guardApps => 'Apps om te onderbreek';

  @override
  String get guardAppsAllowed => 'Toegelate apps';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'Nog niks gekies nie',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Laat slegs gekose apps toe';

  @override
  String get guardAllowlistHint =>
      'Elke ander app word onderbreek; oproepe, instellings en die sleutelbord werk altyd';

  @override
  String get guardShorts => 'Maak Shorts en Reels toe';

  @override
  String get guardShortsHint =>
      'Enige tyd wanneer die wag aan is. Beste poging: hierdie apps verander dikwels';

  @override
  String get guardSchedule => 'Tydwag';

  @override
  String get guardScheduleHint => 'Waak ook op gekose dae en ure, soos skool of werk';

  @override
  String get guardFrom => 'Van';

  @override
  String get guardTo => 'Tot';

  @override
  String get guardSearchApps => 'Soek apps';

  @override
  String get guardNoApps => 'Geen apps gevind nie';

  @override
  String get guardPrivacy =>
      'Werk net op jou foon: die wag sien watter app oop is, nooit wat daarin is nie, en stuur niks nie.';

  @override
  String get guardBreathe => 'Asem in… en uit';

  @override
  String get guardQuestion => 'Het jy hierdie app nou nodig?';

  @override
  String get guardBackToFocus => 'Terug na fokus';

  @override
  String get guardOpenFive => 'Maak oop vir 5 minute';

  @override
  String get guardStrictBody => 'Hierdie app is onderbreek totdat jou fokustyd eindig.';

  @override
  String get guardShortsClosed => 'Kort video’s word toegemaak terwyl die wag aan is';

  @override
  String get faqGuardQ => 'Hoe stop ek apps wat aflei terwyl ek fokus?';

  @override
  String get faqGuardA =>
      'Maak Fokus → die tydhouerinstellings → Afleidingswag oop. Kies die apps, dan Sag (’n asemteug van 5 sekondes en die vraag “Het jy hierdie app nou nodig?”) of Streng (hulle bly toe). Dit werk tydens fokussessies en, met Tydwag, op die dae en ure wat jy stel. “Laat slegs gekose apps toe” onderbreek alles anders; oproepe, instellings en die sleutelbord werk altyd. Android vra jou een keer om die wag in Toeganklikheidsinstellings aan te skakel. Dit sien net watter app oop is en stuur niks nie.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Geskuif na $name';
  }

  @override
  String get notesDragHint => 'Hou ’n nota vas en sleep dit na ’n notaboek';

  @override
  String get guardReviewCards => 'Hersien eerder kaarte';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarte wag vir jou',
      one: '1 kaart wag vir jou',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Noodgeval: hou 10 sekondes';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Hou aan… $n';
  }

  @override
  String get guardWeekTitle => 'Hierdie week';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count onderbrekings',
      one: '1 onderbreking',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count keer terug na fokus',
      one: 'een keer terug na fokus',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Hernoem woorde';

  @override
  String get wordsSubtitle => 'Gebruik jou eie woord vir enige teks in die app';

  @override
  String get wordsHint =>
      'Tik op ’n teks om dit te verander. Jou woorde geld net vir hierdie taal en word in rugsteune gehou.';

  @override
  String get wordsSearch => 'Soek tekste';

  @override
  String get wordsChangedOnly => 'Slegs verander';

  @override
  String wordsOriginal(String text) {
    return 'Oorspronklik: $text';
  }

  @override
  String get wordsReset => 'Gebruik oorspronklike';

  @override
  String get wordsResetAll => 'Stel alle woorde terug';

  @override
  String get wordsResetAllConfirm => 'Elke teks in hierdie taal gaan terug na die oorspronklike.';

  @override
  String get wordsNone => 'Geen teks gevind nie';

  @override
  String get settingsLanguageSearch => 'Soek tale';

  @override
  String get settingsLanguageNoMatch => 'Geen taal pas nie';

  @override
  String get soundsMyMusic => 'Jou oudio';

  @override
  String get soundsMusicHint =>
      'Speel \'n oudiolêer van jou foon. Niks word gekopieer of opgelaai nie.';

  @override
  String get soundsChooseMusic => 'Kies oudio';

  @override
  String get soundsRemoveMusic => 'Verwyder oudio';

  @override
  String get wordPacksTitle => 'Woordpakke';

  @override
  String get wordPacksHint =>
      'Woordlyste volgens onderwerp. Laai net die taal af wat jy wil hê en wysig of skrap die kaarte vrylik.';

  @override
  String get wordPacksFailed => 'Kon nie aflaai nie. Kontroleer die verbinding.';

  @override
  String get wordPacksEmpty => 'Woorde vir hierdie taal word nog voorberei.';
}
