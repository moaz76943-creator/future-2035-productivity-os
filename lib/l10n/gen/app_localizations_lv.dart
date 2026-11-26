// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Sākums';

  @override
  String get navTasks => 'Uzdevumi';

  @override
  String get navFocus => 'Fokuss';

  @override
  String get navCalendar => 'Kalendārs';

  @override
  String get navSpaces => 'Telpas';

  @override
  String get moduleProjects => 'Projekti';

  @override
  String get moduleNotes => 'Piezīmes';

  @override
  String get moduleFlashcards => 'Kartītes';

  @override
  String get moduleGoals => 'Mērķi';

  @override
  String get moduleHabits => 'Ieradumi';

  @override
  String get moduleAnalytics => 'Ieskati';

  @override
  String get moduleSearch => 'Meklēšana';

  @override
  String get moduleAssistant => 'Asistents';

  @override
  String get moduleSettings => 'Iestatījumi';

  @override
  String get moduleTrash => 'Miskaste';

  @override
  String get actionSave => 'Saglabāt';

  @override
  String get actionCancel => 'Atcelt';

  @override
  String get actionDelete => 'Dzēst';

  @override
  String get actionEdit => 'Rediģēt';

  @override
  String get actionDone => 'Gatavs';

  @override
  String get actionAdd => 'Pievienot';

  @override
  String get actionCreate => 'Izveidot';

  @override
  String get actionClose => 'Aizvērt';

  @override
  String get actionBack => 'Atpakaļ';

  @override
  String get actionUndo => 'Atsaukt';

  @override
  String get actionRestore => 'Atjaunot';

  @override
  String get actionRetry => 'Mēģināt vēlreiz';

  @override
  String get actionContinue => 'Turpināt';

  @override
  String get actionSkip => 'Izlaist';

  @override
  String get actionArchive => 'Arhivēt';

  @override
  String get actionUnarchive => 'Atarhivēt';

  @override
  String get actionPin => 'Piespraust';

  @override
  String get actionUnpin => 'Atspraust';

  @override
  String get actionMore => 'Citas iespējas';

  @override
  String get actionClear => 'Notīrīt';

  @override
  String get actionSearch => 'Meklēt';

  @override
  String get actionSort => 'Kārtot';

  @override
  String get actionShare => 'Kopīgot';

  @override
  String get actionImport => 'Importēt';

  @override
  String get actionExport => 'Eksportēt';

  @override
  String get actionPause => 'Pauze';

  @override
  String get actionResume => 'Turpināt';

  @override
  String get actionStart => 'Sākt';

  @override
  String get actionStop => 'Apturēt';

  @override
  String get actionComplete => 'Pabeigt';

  @override
  String get actionDeleteForever => 'Dzēst neatgriezeniski';

  @override
  String get actionEmptyTrash => 'Iztukšot miskasti';

  @override
  String get actionUnlink => 'Atsaistīt';

  @override
  String get actionCustomize => 'Pielāgot';

  @override
  String get actionPreview => 'Priekšskatījums';

  @override
  String get actionLog => 'Reģistrēt progresu';

  @override
  String get stateLoading => 'Notiek ielāde…';

  @override
  String get stateSaving => 'Saglabā…';

  @override
  String get stateSaved => 'Saglabāts';

  @override
  String get stateUnsaved => 'Nesaglabātas izmaiņas';

  @override
  String get errorGenericTitle => 'Kaut kas nogāja greizi';

  @override
  String get errorGenericMessage => 'Jūsu dati ir drošībā. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get errorLoadFailed => 'Šo saturu nevarēja ielādēt.';

  @override
  String get errorSaveFailed => 'Neizdevās saglabāt. Jūsu izmaiņas joprojām ir šeit.';

  @override
  String get validationRequired => 'Šis lauks ir obligāts';

  @override
  String get validationTitleRequired => 'Lūdzu, ievadiet nosaukumu';

  @override
  String get validationNameRequired => 'Lūdzu, ievadiet vārdu';

  @override
  String get validationTooLong => 'Tas ir pārāk garš';

  @override
  String get validationEndBeforeStart => 'Beigām jābūt pēc sākuma';

  @override
  String get validationStartAfterDue => 'Sākuma datumam jābūt pirms termiņa';

  @override
  String get validationPositiveNumber => 'Ievadiet skaitli, kas lielāks par nulli';

  @override
  String get validationDependencyCycle => 'Tas radītu ciklisku atkarību';

  @override
  String get validationInvalidRepeat => 'Šis atkārtošanas noteikums nav derīgs';

  @override
  String get deletedItem => 'Pārvietots uz miskasti';

  @override
  String get untitled => 'Bez nosaukuma';

  @override
  String get noProject => 'Bez projekta';

  @override
  String get greetingMorning => 'Labrīt';

  @override
  String get greetingAfternoon => 'Labdien';

  @override
  String get greetingEvening => 'Labvakar';

  @override
  String get dashFocusToday => 'Šodienas fokuss';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done no $target';
  }

  @override
  String get dashStartFocus => 'Sākt fokusu';

  @override
  String get dashFocusRunning => 'Notiek sesija';

  @override
  String get dashTodayTasks => 'Termiņš šodien';

  @override
  String get dashAgenda => 'Darba kārtība';

  @override
  String get dashHabits => 'Šodienas ieradumi';

  @override
  String get dashGoals => 'Mērķi';

  @override
  String get dashReview => 'Atkārtošana';

  @override
  String get dashRecentNotes => 'Jaunākās piezīmes';

  @override
  String get dashInsight => 'Ieteikums';

  @override
  String get dashSeeAll => 'Skatīt visu';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atkārtojamas $count kartītes',
      one: 'Atkārtojama $count kartīte',
      zero: 'Atkārtojamas $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Atkārtot tagad';

  @override
  String get dashCustomizeTitle => 'Sākuma ekrāna sadaļas';

  @override
  String get dashCustomizeHint => 'Izvēlieties, kas tiek rādīts sākuma ekrānā.';

  @override
  String get dashSectionFocus => 'Fokuss';

  @override
  String get dashSectionToday => 'Šodienas uzdevumi';

  @override
  String get dashSectionAgenda => 'Darba kārtība';

  @override
  String get dashSectionHabits => 'Ieradumi';

  @override
  String get dashSectionGoals => 'Mērķi';

  @override
  String get dashSectionReview => 'Kartīšu atkārtošana';

  @override
  String get dashSectionNotes => 'Jaunākās piezīmes';

  @override
  String get dashSectionInsight => 'Ieteikumi';

  @override
  String get quickAddTask => 'Jauns uzdevums';

  @override
  String get quickAddNote => 'Jauna piezīme';

  @override
  String get quickAddEvent => 'Jauns notikums';

  @override
  String get quickStartFocus => 'Fokuss';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jums ir $count nokavēti uzdevumi. Sāciet ar svarīgāko.',
      one: 'Jums ir $count nokavēts uzdevums. Pārplānojiet vai pabeidziet to vispirms.',
      zero: 'Jums ir $count nokavēti uzdevumi. Sāciet ar svarīgāko.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Līdz dienas fokusa mērķim atlikušas $minutes minūtes.';
  }

  @override
  String get insightCardsDue => 'Atkārtojiet kartītes tagad, kamēr tās ir svaigas atmiņā.';

  @override
  String get insightAllClear =>
      'Viss notiek pēc plāna. Ieplānojiet rītdienu vai paņemiet apzinātu pauzi.';

  @override
  String insightHabitStreak(String habit) {
    return 'Saglabājiet sēriju: $habit šodien vēl nav izpildīts.';
  }

  @override
  String get focusTitle => 'Fokuss';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Taimeris';

  @override
  String get focusModeCountUp => 'Hronometrs';

  @override
  String get focusModeOpen => 'Brīvs';

  @override
  String get focusPhaseWork => 'Fokuss';

  @override
  String get focusPhaseShortBreak => 'Īsa pauze';

  @override
  String get focusPhaseLongBreak => 'Gara pauze';

  @override
  String get focusReady => 'Sāciet, kad esat gatavi';

  @override
  String get focusPaused => 'Pauzēts';

  @override
  String get focusRunning => 'Fokusā';

  @override
  String get focusDuration => 'Ilgums';

  @override
  String get focusLinkTask => 'Saistīt uzdevumu';

  @override
  String get focusLinkedTask => 'Darbs pie';

  @override
  String get focusNoTask => 'Nav saistīta uzdevuma';

  @override
  String focusCycle(int current, int total) {
    return 'Cikls $current no $total';
  }

  @override
  String get focusSkipBreak => 'Izlaist pauzi';

  @override
  String get focusStartBreak => 'Sākt pauzi';

  @override
  String get focusStartNext => 'Sākt nākamo fokusu';

  @override
  String get focusSessionComplete => 'Sesija pabeigta';

  @override
  String get focusSessionStopped => 'Sesija saglabāta';

  @override
  String focusSessionSummary(String duration) {
    return 'Jūs fokusējāties $duration.';
  }

  @override
  String get focusAddNote => 'Pievienojiet piezīmi par šo sesiju';

  @override
  String get focusHistory => 'Vēsture';

  @override
  String get focusNoHistory => 'Pabeigtās sesijas būs redzamas šeit';

  @override
  String get focusTargets => 'Mērķi';

  @override
  String get focusDailyTarget => 'Dienas mērķis';

  @override
  String get focusWeeklyTarget => 'Nedēļas mērķis';

  @override
  String get focusOutcomeCompleted => 'Pabeigta';

  @override
  String get focusOutcomeInterrupted => 'Apturēta agrāk';

  @override
  String get focusRecovered => 'Jūsu sesija turpinājās, kamēr lietotne bija aizvērta.';

  @override
  String get focusCompletedWhileAway =>
      'Kamēr lietotne bija aizvērta, sesija beidzās un tika saglabāta.';

  @override
  String get focusNotificationsOff =>
      'Paziņojumi ir izslēgti. Jūs nesaņemsiet brīdinājumu, kad sesija beigsies.';

  @override
  String get focusBatteryHint =>
      'Dažas ierīces fonā aptur lietotnes. Taimeris paliek precīzs, bet brīdinājumi var kavēties. Lai brīdinājumi būtu uzticami, atļaujiet neierobežotu akumulatora lietojumu.';

  @override
  String get focusOpenSettings => 'Atvērt iestatījumus';

  @override
  String get focusStopConfirmTitle => 'Apturēt šo sesiju?';

  @override
  String get focusStopConfirmMessage => 'Līdz šim fokusā pavadītais laiks tiks saglabāts.';

  @override
  String get focusDiscard => 'Atmest';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minūtes',
      one: '$minutes minūte',
      zero: '$minutes minūtes',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, atlicis $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, pagājis $time';
  }

  @override
  String get focusDeleteSession => 'Dzēst sesiju';

  @override
  String get tasksTitle => 'Uzdevumi';

  @override
  String get tasksViewToday => 'Šodien';

  @override
  String get tasksViewUpcoming => 'Gaidāmie';

  @override
  String get tasksViewAll => 'Visi';

  @override
  String get tasksViewOverdue => 'Nokavētie';

  @override
  String get tasksViewCompleted => 'Pabeigtie';

  @override
  String get tasksQuickAddHint => 'Pievienot uzdevumu…';

  @override
  String get tasksEmptyTitle => 'Viss izdarīts';

  @override
  String get tasksEmptyMessage => 'Pievienojiet uzdevumu, lai sāktu veidot savu dienu.';

  @override
  String get tasksEmptyCompleted => 'Pabeigtie uzdevumi būs redzami šeit.';

  @override
  String get taskNew => 'Jauns uzdevums';

  @override
  String get taskEdit => 'Rediģēt uzdevumu';

  @override
  String get taskTitleLabel => 'Nosaukums';

  @override
  String get taskTitleHint => 'Kas jāizdara?';

  @override
  String get taskDescriptionLabel => 'Apraksts';

  @override
  String get taskNotesLabel => 'Piezīmes';

  @override
  String get taskPriority => 'Prioritāte';

  @override
  String get priorityNone => 'Nav';

  @override
  String get priorityLow => 'Zema';

  @override
  String get priorityMedium => 'Vidēja';

  @override
  String get priorityHigh => 'Augsta';

  @override
  String get priorityUrgent => 'Steidzama';

  @override
  String get taskDueDate => 'Termiņš';

  @override
  String get taskStartDate => 'Sākuma datums';

  @override
  String get taskReminder => 'Atgādinājums';

  @override
  String get taskRepeat => 'Atkārtot';

  @override
  String get taskProject => 'Projekts';

  @override
  String get taskCategory => 'Kategorija';

  @override
  String get taskCategoryHint => 'piem., Darbs, Mājas, Mācības';

  @override
  String get taskEstimateMinutes => 'Novērtējums (minūtēs)';

  @override
  String get taskTracked => 'Fokusa laiks';

  @override
  String get taskLabels => 'Birkas';

  @override
  String get taskAddLabel => 'Jauna birka';

  @override
  String get taskChecklist => 'Kontrolsaraksts';

  @override
  String get taskAddChecklistItem => 'Pievienot punktu';

  @override
  String get taskSubtasks => 'Apakšuzdevumi';

  @override
  String get taskAddSubtask => 'Pievienot apakšuzdevumu';

  @override
  String get taskDependencies => 'Bloķē';

  @override
  String get taskAddDependency => 'Pievienot bloķējošu uzdevumu';

  @override
  String get taskLinkedNotes => 'Saistītās piezīmes';

  @override
  String get taskSetTime => 'Iestatīt laiku';

  @override
  String get taskNoDate => 'Bez datuma';

  @override
  String get taskCompleted => 'Uzdevums pabeigts';

  @override
  String get taskNextOccurrence => 'Izveidots nākamais atkārtojums';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Nokavēts $days dienas',
      one: 'Nokavēts $days dienu',
      zero: 'Nokavēts $days dienas',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Atzīmēt “$title” kā izpildītu';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Atzīmēt “$title” kā neizpildītu';
  }

  @override
  String get sortSmart => 'Gudri';

  @override
  String get sortDueDate => 'Termiņš';

  @override
  String get sortPriority => 'Prioritāte';

  @override
  String get sortCreated => 'Jaunākie';

  @override
  String get sortTitle => 'Nosaukums';

  @override
  String get filterAllProjects => 'Visi projekti';

  @override
  String get filterAnyPriority => 'Jebkura prioritāte';

  @override
  String get filterTitle => 'Filtrēt un kārtot';

  @override
  String get dateToday => 'Šodien';

  @override
  String get dateTomorrow => 'Rīt';

  @override
  String get dateYesterday => 'Vakar';

  @override
  String get repeatNever => 'Neatkārtojas';

  @override
  String get repeatDaily => 'Katru dienu';

  @override
  String get repeatWeekdays => 'Katru darbdienu';

  @override
  String get repeatWeekly => 'Katru nedēļu';

  @override
  String get repeatMonthly => 'Katru mēnesi';

  @override
  String get repeatYearly => 'Katru gadu';

  @override
  String get repeatCustom => 'Pielāgots';

  @override
  String get repeatEvery => 'Atkārtot ik pēc';

  @override
  String get repeatOnDays => 'Dienās';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dienām',
      one: 'dienas',
      zero: 'dienām',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nedēļām',
      one: 'nedēļas',
      zero: 'nedēļām',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mēnešiem',
      one: 'mēneša',
      zero: 'mēnešiem',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gadiem',
      one: 'gada',
      zero: 'gadiem',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count reizēm',
      one: '$count reizes',
      zero: '$count reizēm',
    );
    return 'Beidzas pēc $_temp0';
  }

  @override
  String get repeatEndsNever => 'Nekad nebeidzas';

  @override
  String get reminderAtTime => 'Notikuma laikā';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minūtes iepriekš',
      one: '$minutes minūti iepriekš',
      zero: '$minutes minūtes iepriekš',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours stundas iepriekš',
      one: '$hours stundu iepriekš',
      zero: '$hours stundas iepriekš',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 dienu iepriekš';

  @override
  String get projectsTitle => 'Projekti';

  @override
  String get projectsEmptyTitle => 'Vēl nav projektu';

  @override
  String get projectsEmptyMessage => 'Grupējiet saistītus uzdevumus, piezīmes un fokusa laiku.';

  @override
  String get projectNew => 'Jauns projekts';

  @override
  String get projectEdit => 'Rediģēt projektu';

  @override
  String get projectName => 'Nosaukums';

  @override
  String get projectDescription => 'Apraksts';

  @override
  String get projectGoal => 'Mērķis';

  @override
  String get projectDeadline => 'Termiņš';

  @override
  String get projectColor => 'Krāsa';

  @override
  String get projectIcon => 'Ikona';

  @override
  String get projectProgress => 'Progress';

  @override
  String projectTasksDone(int done, int total) {
    return 'Izpildīti $done no $total uzdevumiem';
  }

  @override
  String get projectFocusTime => 'Fokusa laiks';

  @override
  String get projectArchived => 'Arhivētie projekti';

  @override
  String get projectShowArchived => 'Rādīt arhivētos';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Atlikušas $days dienas',
      one: 'Atlikusi $days diena',
      zero: 'Atlikušas $days dienas',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Termiņš pagājis';

  @override
  String get calendarTitle => 'Kalendārs';

  @override
  String get calendarMonth => 'Mēnesis';

  @override
  String get calendarWeek => 'Nedēļa';

  @override
  String get calendarDay => 'Diena';

  @override
  String get calendarToday => 'Šodien';

  @override
  String get calendarPrevious => 'Iepriekšējais';

  @override
  String get calendarNext => 'Nākamais';

  @override
  String get calendarNoEvents => 'Nekas nav ieplānots';

  @override
  String get calendarAllDay => 'Visu dienu';

  @override
  String get eventNew => 'Jauns notikums';

  @override
  String get eventEdit => 'Rediģēt notikumu';

  @override
  String get eventTitleHint => 'Notikuma nosaukums';

  @override
  String get eventStarts => 'Sākas';

  @override
  String get eventEnds => 'Beidzas';

  @override
  String get eventKind => 'Veids';

  @override
  String get eventKindEvent => 'Notikums';

  @override
  String get eventKindTimeBlock => 'Laika bloks';

  @override
  String get eventKindFocus => 'Fokusa sesija';

  @override
  String get eventKindGoal => 'Personīgs mērķis';

  @override
  String get eventDescription => 'Sīkāka informācija';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pārklājas ar $count notikumiem',
      one: 'Pārklājas ar $count notikumu',
      zero: 'Pārklājas ar $count notikumiem',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Šajā dienā ir plānošanas konflikti';

  @override
  String get calendarTaskDue => 'Uzdevuma termiņš';

  @override
  String get calendarDragHint => 'Nospiediet un turiet notikumu un velciet, lai to pārplānotu';

  @override
  String get calendarRescheduled => 'Notikums pārvietots';

  @override
  String get calendarScheduleTask => 'Ieplānot kā laika bloku';

  @override
  String get notesTitle => 'Piezīmes';

  @override
  String get notesViewAll => 'Visas';

  @override
  String get notesViewPinned => 'Piespraustās';

  @override
  String get notesViewFavorites => 'Izlase';

  @override
  String get notesViewArchived => 'Arhivētās';

  @override
  String get notesTags => 'Birkas';

  @override
  String get notesNewNotebook => 'Jauna klade';

  @override
  String get notesNoNotebook => 'Bez klades';

  @override
  String get notesEmptyTitle => 'Tukša lapa';

  @override
  String get notesEmptyMessage => 'Pierakstiet idejas, sapulču piezīmes un zināšanas.';

  @override
  String get noteTitleHint => 'Nosaukums';

  @override
  String get noteBodyHint =>
      'Sāciet rakstīt… Izmantojiet # birkām un [[Nosaukums]], lai saistītu piezīmes.';

  @override
  String get noteFavorite => 'Pievienot izlasei';

  @override
  String get noteUnfavorite => 'Noņemt no izlases';

  @override
  String get noteMoveTo => 'Pārvietot uz kladi';

  @override
  String get noteBacklinks => 'Saites no';

  @override
  String get noteLinkedTasks => 'Saistītie uzdevumi';

  @override
  String get noteLinkTask => 'Saistīt uzdevumu';

  @override
  String get noteLinkProject => 'Projekts';

  @override
  String get noteFormatHeading => 'Virsraksts';

  @override
  String get noteFormatBold => 'Treknraksts';

  @override
  String get noteFormatItalic => 'Slīpraksts';

  @override
  String get noteFormatList => 'Aizzīmju saraksts';

  @override
  String get noteFormatChecklist => 'Kontrolsaraksts';

  @override
  String get noteFormatLink => 'Saite';

  @override
  String noteEdited(String time) {
    return 'Rediģēts $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vārdi',
      one: '$count vārds',
      zero: '$count vārdi',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kartītes';

  @override
  String get flashEmptyTitle => 'Izveidojiet savu pirmo komplektu';

  @override
  String get flashEmptyMessage =>
      'Intervālu atkārtošana parāda katru kartīti tieši pirms brīža, kad jūs to aizmirstu.';

  @override
  String get deckNew => 'Jauns komplekts';

  @override
  String get deckEdit => 'Rediģēt komplektu';

  @override
  String get deckName => 'Komplekta nosaukums';

  @override
  String get deckDescription => 'Apraksts';

  @override
  String get deckDailyNew => 'Jaunas kartītes dienā';

  @override
  String get deckDailyReview => 'Dienas atkārtošanas mērķis';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartītes',
      one: '$count kartīte',
      zero: '$count kartītes',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Jāatkārto';

  @override
  String get deckNewCards => 'Jaunas';

  @override
  String get deckMature => 'Apgūtas';

  @override
  String get deckStudy => 'Mācīties';

  @override
  String get deckNothingDue => 'Pašlaik nekas nav jāatkārto. Atgriezieties vēlāk.';

  @override
  String get deckEmptyCards => 'Pievienojiet kartītes, lai sāktu mācīties.';

  @override
  String get cardNew => 'Jauna kartīte';

  @override
  String get cardEdit => 'Rediģēt kartīti';

  @override
  String get cardFront => 'Priekšpuse';

  @override
  String get cardBack => 'Aizmugure';

  @override
  String get cardFrontHint => 'Jautājums vai termins';

  @override
  String get cardBackHint => 'Atbilde vai definīcija';

  @override
  String get cardTags => 'Birkas';

  @override
  String get cardAddAnother => 'Saglabāt un pievienot vēl';

  @override
  String get reviewShowAnswer => 'Rādīt atbildi';

  @override
  String get reviewAgain => 'Vēlreiz';

  @override
  String get reviewHard => 'Grūti';

  @override
  String get reviewGood => 'Labi';

  @override
  String get reviewEasy => 'Viegli';

  @override
  String reviewProgress(int done, int total) {
    return '$done no $total';
  }

  @override
  String get reviewFinishedTitle => 'Sesija pabeigta';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jūs atkārtojāt $count kartītes.',
      one: 'Jūs atkārtojāt $count kartīti.',
      zero: 'Jūs atkārtojāt $count kartītes.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Pieskarieties, lai redzētu atbildi';

  @override
  String get importCardsTitle => 'Importēt kartītes';

  @override
  String get importCardsHint =>
      'Ielīmējiet vienu kartīti katrā rindā (priekšpusi un aizmuguri atdaliet ar tabulēšanas zīmi vai semikolu) vai izvēlieties failu: Excel (.xlsx), CSV, Anki komplektu (.apkg) vai eksportētu komplektu.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Importētas $count kartītes',
      one: 'Importēta $count kartīte',
      zero: 'Importētas $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Šo saturu nevarēja importēt.';

  @override
  String get exportCopied => 'Komplekts eksportēts';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count min',
      one: '$count min',
      zero: '$count min',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienas',
      one: '$count diena',
      zero: '$count dienas',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Mērķi';

  @override
  String get goalsEmptyTitle => 'Tiecieties pēc kaut kā';

  @override
  String get goalsEmptyMessage =>
      'Nosakiet dienas, nedēļas, mēneša vai ilgtermiņa mērķus un sekojiet reālam progresam.';

  @override
  String get goalNew => 'Jauns mērķis';

  @override
  String get goalEdit => 'Rediģēt mērķi';

  @override
  String get goalTitleHint => 'Ko vēlaties sasniegt?';

  @override
  String get goalPeriod => 'Periods';

  @override
  String get goalPeriodDaily => 'Dienas';

  @override
  String get goalPeriodWeekly => 'Nedēļas';

  @override
  String get goalPeriodMonthly => 'Mēneša';

  @override
  String get goalPeriodLongTerm => 'Ilgtermiņa';

  @override
  String get goalTarget => 'Mērķis';

  @override
  String get goalUnit => 'Mērvienība';

  @override
  String get goalUnitHint => 'piem., lappuses, km, stundas';

  @override
  String get goalStatusActive => 'Aktīvs';

  @override
  String get goalStatusPaused => 'Pauzēts';

  @override
  String get goalStatusAchieved => 'Sasniegts';

  @override
  String get goalPause => 'Pauzēt mērķi';

  @override
  String get goalResume => 'Atsākt mērķi';

  @override
  String get goalMarkAchieved => 'Atzīmēt kā sasniegtu';

  @override
  String goalProgressOf(String current, String target) {
    return '$current no $target';
  }

  @override
  String get goalLogAmount => 'Daudzums';

  @override
  String get goalLogNote => 'Piezīme (neobligāti)';

  @override
  String get goalHistory => 'Vēsture';

  @override
  String get goalNoHistory => 'Reģistrētais progress būs redzams šeit';

  @override
  String get goalLinkedTasks => 'Saistītie uzdevumi';

  @override
  String get goalLinkedTasksHint =>
      'Katrs pabeigts saistītais uzdevums šim mērķim tiek skaitīts kā 1.';

  @override
  String get goalThisPeriod => 'Šis periods';

  @override
  String get habitsTitle => 'Ieradumi';

  @override
  String get habitsEmptyTitle => 'Mazi soļi katru dienu';

  @override
  String get habitsEmptyMessage =>
      'Izveidojiet ieradumu un atzīmējiet to, kad esat to izpildījuši.';

  @override
  String get habitNew => 'Jauns ieradums';

  @override
  String get habitEdit => 'Rediģēt ieradumu';

  @override
  String get habitNameHint => 'piem., Izlasīt 20 lappuses';

  @override
  String get habitDays => 'Grafiks';

  @override
  String get habitEveryDay => 'Katru dienu';

  @override
  String get habitTargetPerDay => 'Reizes dienā';

  @override
  String get habitReminder => 'Dienas atgādinājums';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sērija: $count dienas',
      one: 'Sērija: $count diena',
      zero: 'Sērija: $count dienas',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Labākā sērija';

  @override
  String get habitCurrentStreak => 'Pašreizējā sērija';

  @override
  String get habitConsistency => 'Regularitāte';

  @override
  String get habitLast90 => 'Pēdējās 90 dienas';

  @override
  String get habitPaused => 'Pauzēts';

  @override
  String get habitPause => 'Pauzēt ieradumu';

  @override
  String get habitResume => 'Atsākt ieradumu';

  @override
  String get habitDoneToday => 'Šodien izpildīts';

  @override
  String habitCountToday(int count, int target) {
    return 'Šodien $count no $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Atzīmēt “$name”';
  }

  @override
  String get habitNotScheduledToday => 'Šodien nav ieplānots';

  @override
  String get analyticsTitle => 'Ieskati';

  @override
  String get rangeWeek => '7 dienas';

  @override
  String get rangeMonth => '30 dienas';

  @override
  String get rangeQuarter => '90 dienas';

  @override
  String get statFocusTime => 'Fokusa laiks';

  @override
  String get statSessions => 'Sesijas';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return 'Pabeigtas: $completed · Apturētas agrāk: $interrupted';
  }

  @override
  String get statTasksDone => 'Pabeigtie uzdevumi';

  @override
  String get statCompletionRate => 'Izpildīts laikā';

  @override
  String get statHabitConsistency => 'Ieradumu regularitāte';

  @override
  String get statRetention => 'Kartīšu atcerēšanās';

  @override
  String get statReviews => 'Atkārtojumi';

  @override
  String get statActiveGoals => 'Aktīvie mērķi';

  @override
  String get statEstimated => 'Paveiktais darbs pēc novērtējuma';

  @override
  String get statEstimatedNote => 'Pēc jūsu novērtējumiem, nevis izmērītā laika';

  @override
  String get statMeasuredNote => 'Izmērīts no fokusa sesijām';

  @override
  String get chartFocusByDay => 'Fokusa minūtes dienā';

  @override
  String get chartTasksByDay => 'Pabeigtie uzdevumi dienā';

  @override
  String get chartTimeByProject => 'Laiks pa projektiem';

  @override
  String get chartProjectProgress => 'Projektu progress';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: kopā $total, labākā diena $best';
  }

  @override
  String get analyticsNoData => 'Vēl nepietiek datu';

  @override
  String get analyticsUnassigned => 'Nepiešķirts';

  @override
  String get searchHint => 'Meklēt visur…';

  @override
  String get searchRecent => 'Nesenie meklējumi';

  @override
  String get searchClearRecent => 'Notīrīt nesenos meklējumus';

  @override
  String searchNoResults(String query) {
    return 'Nav rezultātu vaicājumam “$query”';
  }

  @override
  String get searchStartTyping =>
      'Meklējiet uzdevumos, piezīmēs, kartītēs, mērķos, notikumos un citur. Meklēšana notiek tikai šajā ierīcē.';

  @override
  String get searchCatTask => 'Uzdevumi';

  @override
  String get searchCatProject => 'Projekti';

  @override
  String get searchCatNote => 'Piezīmes';

  @override
  String get searchCatFlashcard => 'Kartītes';

  @override
  String get searchCatDeck => 'Komplekti';

  @override
  String get searchCatGoal => 'Mērķi';

  @override
  String get searchCatHabit => 'Ieradumi';

  @override
  String get searchCatEvent => 'Notikumi';

  @override
  String get searchCatSession => 'Sesijas';

  @override
  String get searchAll => 'Visi';

  @override
  String get assistantTitle => 'Asistents';

  @override
  String get assistantIntro =>
      'Plānošanas palīdzība, kas darbojas jūsu ierīcē. Kopsavilkumiem un ģenerēšanai pēc izvēles varat pievienot paša izvēlētu MI pakalpojumu sniedzēju.';

  @override
  String get assistantOnDevice => 'Ierīcē';

  @override
  String get assistantCloud => 'MI sniedzējs';

  @override
  String get assistantPlanDay => 'Plānot manu dienu';

  @override
  String get assistantPlanDayDesc =>
      'Sakārto atvērtos uzdevumus pēc steidzamības, prioritātes un novērtējuma un iekļauj tos starp jūsu notikumiem.';

  @override
  String get assistantExtractTasks => 'Izvilkt uzdevumus no piezīmes';

  @override
  String get assistantExtractTasksDesc =>
      'Atrod piezīmē kontrolsaraksta punktus un darbību rindas un pārvērš tos uzdevumos.';

  @override
  String get assistantMakeCards => 'Izveidot kartītes no piezīmes';

  @override
  String get assistantMakeCardsDesc =>
      'Pārvērš rindas “termins: definīcija” un jautājums/atbilde kartītēs.';

  @override
  String get assistantSummarize => 'Apkopot piezīmi';

  @override
  String get assistantSummarizeDesc =>
      'Nepieciešams MI sniedzējs. Piezīme tiek nosūtīta tikai pēc jūsu apstiprinājuma.';

  @override
  String get assistantWorkload => 'Slodzes pārskats';

  @override
  String get assistantWorkloadDesc => 'Salīdzina novērtēto darbu ar jūsu brīvo laiku šonedēļ.';

  @override
  String get assistantPlanEmpty => 'Nav atvērtu uzdevumu, ko plānot. Baudiet brīvo laiku.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Brīvais fokusa laiks šodien: $time';
  }

  @override
  String get assistantPlanOverflow => 'Šie šodien var neiekļauties:';

  @override
  String get assistantChooseNote => 'Izvēlieties piezīmi';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atrasti $count uzdevumi',
      one: 'Atrasts $count uzdevums',
      zero: 'Atrasti $count uzdevumi',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atrastas $count kartītes',
      one: 'Atrasta $count kartīte',
      zero: 'Atrastas $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Izvēlieties komplektu';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Novērtētais darbs: $estimated. Brīvais laiks: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Jūs esat ieplānojis vairāk, nekā ir laika. Apsveriet iespēju pārcelt mazāk svarīgus uzdevumus.';

  @override
  String get assistantWorkloadOk => 'Jūsu plāns iekļaujas pieejamajā laikā.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count atvērtiem uzdevumiem nav novērtējuma.',
      one: '$count atvērtam uzdevumam nav novērtējuma.',
      zero: '$count atvērtiem uzdevumiem nav novērtējuma.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'MI sniedzējs';

  @override
  String get assistantProviderOff => 'Nav pievienots sniedzējs. Ierīces rīki joprojām darbojas.';

  @override
  String assistantProviderOn(String host) {
    return 'Savienots ar $host';
  }

  @override
  String get assistantEndpoint => 'API galapunkts (HTTPS)';

  @override
  String get assistantModel => 'Modelis';

  @override
  String get assistantApiKey => 'API atslēga';

  @override
  String get assistantApiKeyStored => 'Droši glabāta šajā ierīcē';

  @override
  String get assistantHttpsOnly => 'Atļauti tikai HTTPS galapunkti';

  @override
  String get assistantConsentTitle => 'Nosūtīt šo saturu jūsu MI sniedzējam?';

  @override
  String assistantConsentBody(String host) {
    return 'Atlasītais piezīmes teksts atstās šo ierīci, un to apstrādās $host. Nekas cits netiek sūtīts.';
  }

  @override
  String get assistantConsentAlways => 'Vairs nejautāt par šo sniedzēju';

  @override
  String get assistantSend => 'Sūtīt';

  @override
  String get assistantUnavailable => 'Neizdevās sazināties ar MI sniedzēju. Mēģiniet vēlāk.';

  @override
  String get assistantDisabledTitle => 'Asistents ir izslēgts';

  @override
  String get assistantDisabledMessage =>
      'Ieslēdziet to, lai izmantotu plānošanas rīkus. Nekādi dati neatstāj ierīci, ja vien nepievienojat sniedzēju un neapstiprināt katru pieprasījumu.';

  @override
  String get assistantSummaryTitle => 'Kopsavilkums';

  @override
  String get assistantRemoveProvider => 'Noņemt sniedzēju';

  @override
  String get settingsTitle => 'Iestatījumi';

  @override
  String get settingsGeneral => 'Vispārīgi';

  @override
  String get settingsLanguage => 'Valoda';

  @override
  String get settingsLanguageSystem => 'Ierīces valoda';

  @override
  String get settingsAppearance => 'Izskats';

  @override
  String get settingsTheme => 'Motīvs';

  @override
  String get themeLight => 'Gaišs';

  @override
  String get themeDark => 'Tumšs';

  @override
  String get themeSystem => 'Sistēmas';

  @override
  String get settingsReduceMotion => 'Samazināt kustību';

  @override
  String get settingsReduceMotionDesc => 'Samazināt animācijas un kustīgus fonus';

  @override
  String get settingsFocus => 'Fokusa taimeris';

  @override
  String get settingsWorkLength => 'Fokusa ilgums';

  @override
  String get settingsShortBreak => 'Īsa pauze';

  @override
  String get settingsLongBreak => 'Gara pauze';

  @override
  String get settingsLongBreakEvery => 'Gara pauze pēc';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesijām',
      one: '$count sesijas',
      zero: '$count sesijām',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Sākt pauzes automātiski';

  @override
  String get settingsSound => 'Beigu skaņa';

  @override
  String get settingsDailyFocusTarget => 'Dienas fokusa mērķis';

  @override
  String get settingsWeeklyFocusTarget => 'Nedēļas fokusa mērķis';

  @override
  String get settingsNotifications => 'Paziņojumi';

  @override
  String get settingsNotificationsEnable => 'Atļaut atgādinājumus';

  @override
  String get settingsQuietHours => 'Klusuma stundas';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Ieradumu, mērķu un atkārtošanas atgādinājumi ir izslēgti no $start līdz $end';
  }

  @override
  String get settingsReviewReminder => 'Kartīšu atkārtošanas atgādinājums';

  @override
  String get settingsPermissionDenied => 'Paziņojumi ir bloķēti sistēmas iestatījumos.';

  @override
  String get settingsPrivacy => 'Privātums un dati';

  @override
  String get settingsPrivacyStatement =>
      'Jūsu dati tiek glabāti tikai šajā ierīcē un ir šifrēti. Nav konta, analītikas un izsekošanas.';

  @override
  String get settingsBackup => 'Izveidot šifrētu dublējumu';

  @override
  String get settingsBackupDesc => 'Aizsargāts ar jūsu izvēlētu paroli';

  @override
  String get settingsRestore => 'Atjaunot no dublējuma';

  @override
  String get settingsRestoreDesc => 'Aizstāj visus datus šajā ierīcē';

  @override
  String get settingsErase => 'Dzēst visus datus';

  @override
  String get settingsEraseDesc => 'Neatgriezeniski dzēst visu šajā ierīcē';

  @override
  String get settingsEraseConfirmTitle => 'Dzēst visus datus?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Visi uzdevumi, piezīmes, kartītes, mērķi, ieradumi, notikumi un sesijas tiks neatgriezeniski dzēsti. Lai apstiprinātu, ierakstiet $word.';
  }

  @override
  String get settingsEraseWord => 'DZĒST';

  @override
  String get settingsErased => 'Visi dati dzēsti';

  @override
  String get backupPassword => 'Dublējuma parole';

  @override
  String get backupPasswordConfirm => 'Apstipriniet paroli';

  @override
  String backupPasswordHint(int count) {
    return 'Vismaz $count rakstzīmes. Ja to aizmirsīsiet, to nevarēs atjaunot.';
  }

  @override
  String get backupPasswordMismatch => 'Paroles nesakrīt';

  @override
  String get backupPasswordShort => 'Parole ir pārāk īsa';

  @override
  String get backupCreating => 'Šifrē dublējumu…';

  @override
  String get backupCreated => 'Dublējums gatavs saglabāšanai';

  @override
  String get backupRestoring => 'Pārbauda un atjauno…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atjaunoti $count vienumi',
      one: 'Atjaunots $count vienums',
      zero: 'Atjaunoti $count vienumi',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Nepareiza parole, vai fails ir mainīts.';

  @override
  String get backupNotABackup => 'Šis fails nav Deep Focus dublējums.';

  @override
  String get backupCorrupted => 'Dublējuma fails ir bojāts.';

  @override
  String get backupNewer =>
      'Šo dublējumu izveidoja jaunāka lietotnes versija. Vispirms atjauniniet lietotni.';

  @override
  String get backupRestoreConfirmTitle => 'Aizstāt visus datus?';

  @override
  String get backupRestoreConfirmBody =>
      'Viss, kas pašlaik ir šajā ierīcē, tiks aizstāts ar dublējumu. Ja atjaunošana neizdosies, nekas nemainīsies.';

  @override
  String get settingsAbout => 'Par lietotni';

  @override
  String settingsVersion(String version) {
    return 'Versija $version';
  }

  @override
  String get settingsLicenses => 'Atvērtā pirmkoda licences';

  @override
  String get settingsAssistant => 'Asistents';

  @override
  String get settingsAssistantEnable => 'Ieslēgt asistentu';

  @override
  String get settingsDashboard => 'Sākuma ekrāna sadaļas';

  @override
  String get settingsTrash => 'Miskaste';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Miskaste ir tukša';

  @override
  String get trashHint => 'Dzēstie vienumi paliek šeit, līdz jūs tos noņemat.';

  @override
  String get trashTasks => 'Uzdevumi';

  @override
  String get trashNotes => 'Piezīmes';

  @override
  String get onboardWelcomeTitle => 'Laipni lūdzam jūsu nākotnes darbvietā';

  @override
  String get onboardWelcomeBody =>
      'Uzdevumi, fokuss, kalendārs, piezīmes, kartītes, mērķi un ieradumi — kopā un skaisti vienkārši.';

  @override
  String get onboardPrivateTitle => 'Privāts pēc būtības';

  @override
  String get onboardPrivateBody =>
      'Viss paliek šajā ierīcē, šifrēts. Bez konta. Bez izsekošanas. Jūs visu kontrolējat.';

  @override
  String get onboardLanguageTitle => 'Izvēlieties valodu';

  @override
  String get onboardNotifTitle => 'Saudzīgi atgādinājumi';

  @override
  String get onboardNotifBody =>
      'Atļaujiet paziņojumus uzdevumu atgādinājumiem un fokusa brīdinājumiem. To var mainīt jebkurā laikā.';

  @override
  String get onboardGetStarted => 'Sākt';

  @override
  String onboardStep(int current, int total) {
    return '$current. solis no $total';
  }

  @override
  String get notifChannelReminders => 'Atgādinājumi';

  @override
  String get notifChannelRemindersDesc => 'Uzdevumu, notikumu, ieradumu un mērķu atgādinājumi';

  @override
  String get notifChannelFocus => 'Fokusa taimeris';

  @override
  String get notifChannelFocusDesc => 'Brīdinājumi, kad beidzas fokusa sesija vai pauze';

  @override
  String get notifTaskTitle => 'Uzdevuma atgādinājums';

  @override
  String get notifEventTitle => 'Gaidāms notikums';

  @override
  String notifEventBody(String title, String time) {
    return '$title plkst. $time';
  }

  @override
  String get notifFocusDoneTitle => 'Fokusa sesija pabeigta';

  @override
  String get notifFocusDoneBody => 'Lielisks darbs. Laiks pauzei.';

  @override
  String get notifBreakDoneTitle => 'Pauze beigusies';

  @override
  String get notifBreakDoneBody => 'Gatavi nākamajai fokusa sesijai?';

  @override
  String get notifHabitTitle => 'Ieraduma atgādinājums';

  @override
  String get notifReviewTitle => 'Kartītes ir gatavas';

  @override
  String get notifReviewBody => 'Īsa atkārtošana uztur atmiņu stipru.';

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
  String get weekdaysShort => 'P,O,T,C,P,S,S';

  @override
  String a11yProgress(int value) {
    return 'Progress $value procenti';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritāte: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Krāsa $index';
  }

  @override
  String get analyticsRangeLabel => 'Laika posms';

  @override
  String get analyticsRefresh => 'Atsvaidzināt';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Laikā izpildīti $done no $total uzdevumiem ar termiņu';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Izpildīti $done no $total uzdevumiem';
  }

  @override
  String get analyticsNoProjects => 'Nav aktīvu projektu';

  @override
  String get analyticsNoFocus => 'Šajā periodā nav fokusa sesiju';

  @override
  String get analyticsHabitsNone => 'Nav aktīvu ieradumu';

  @override
  String get analyticsRetentionNote => 'Apgūto kartīšu daļa, ko atcerējāties';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Brīvais laiks tiek skaitīts $start–$end darbdienās ($days), atņemot notikumus ar laiku. Novērtētais darbs ir to atvērto uzdevumu novērtējumu summa, kuru termiņš ir nākamajās 7 dienās.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Pirmdiena–piektdiena';

  @override
  String get assistantWorkdaysSunThu => 'Svētdiena–ceturtdiena';

  @override
  String get assistantWorkloadDayOff => 'Brīvdiena';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return 'Ieplānots $estimated · brīvs $free';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Ieplānots no šī brīža līdz $end, ap šodienas notikumiem. Vispirms nokavētie uzdevumi, tad prioritāte, termiņš un novērtējums.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Ieplānot kā laika blokus';

  @override
  String get assistantScheduleConfirmTitle => 'Pievienot laika blokus kalendāram?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Šodienas kalendāram tiks pievienoti $count laika bloki.',
      one: 'Šodienas kalendāram tiks pievienots $count laika bloks.',
      zero: 'Šodienas kalendāram tiks pievienoti $count laika bloki.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pievienoti $count laika bloki',
      one: 'Pievienots $count laika bloks',
      zero: 'Pievienoti $count laika bloki',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Jau ir jūsu kalendārā';

  @override
  String get assistantPlanTimeline => 'Iekļaujas šodien';

  @override
  String get assistantNoEstimate => 'Pievienojiet novērtējumu, lai tos ieplānotu';

  @override
  String get assistantNoNotes => 'Vēl nav piezīmju. Vispirms uzrakstiet piezīmi.';

  @override
  String get assistantNoteEmpty => 'Šī piezīme ir tukša.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izveidoti $count uzdevumi',
      one: 'Izveidots $count uzdevums',
      zero: 'Izveidoti $count uzdevumi',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izveidotas $count kartītes',
      one: 'Izveidota $count kartīte',
      zero: 'Izveidotas $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izveidot $count',
      one: 'Izveidot $count',
      zero: 'Izveidot $count',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Tiek atpazītas: neatzīmētas izvēles rūtiņas “- [ ]” un rindas, kas sākas ar TODO: vai To do:';

  @override
  String get assistantCardsHint =>
      'Tiek atpazīti: “termins: definīcija”, “termins — definīcija” un Q:/A: rindu pāri';

  @override
  String get assistantProviderHint =>
      'Izmantojiet jebkuru ar OpenAI saderīgu pakalpojumu. Atslēga paliek šīs ierīces drošajā krātuvē un nekad netiek iekļauta dublējumos.';

  @override
  String get assistantEndpointHelp => 'Piemēram, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Atstājiet tukšu, lai paturētu saglabāto atslēgu';

  @override
  String get assistantApiKeyRequired => 'Ievadiet API atslēgu';

  @override
  String get assistantProviderSaved => 'Sniedzējs saglabāts';

  @override
  String get assistantProviderRemoved => 'Sniedzējs noņemts un atslēga dzēsta';

  @override
  String get assistantRemoveProviderConfirm =>
      'Noņemt sniedzēju un dzēst saglabāto API atslēgu no šīs ierīces?';

  @override
  String get assistantAskEveryTime => 'Jautāt pirms katra pieprasījuma';

  @override
  String get assistantSummarizing => 'Apkopo…';

  @override
  String assistantSummaryNote(String host) {
    return 'Ģenerējis $host. Pārskatiet, pirms paļaujaties.';
  }

  @override
  String get assistantCopy => 'Kopēt';

  @override
  String get assistantCopied => 'Nokopēts';

  @override
  String get assistantConfigure => 'Iestatīt sniedzēju';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Visi šīs sērijas notikumi tika pārvietoti';

  @override
  String get calendarEventReminder => 'Atgādinājums';

  @override
  String get calendarEventRepeat => 'Atkārtot';

  @override
  String get calendarEventColor => 'Krāsa';

  @override
  String get calendarDefaultColor => 'Izmantot veida krāsu';

  @override
  String get calendarEventLinkedTask => 'Saistītais uzdevums';

  @override
  String get calendarEventNoTask => 'Nav saistīta uzdevuma';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count notikumi',
      one: '$count notikums',
      zero: '$count notikumi',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uzdevumi ar termiņu',
      one: '$count uzdevums ar termiņu',
      zero: '$count uzdevumi ar termiņu',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Pievienojiet notikumu vai laika bloku, lai ieplānotu šo dienu.';

  @override
  String get calendarNow => 'Pašreizējais laiks';

  @override
  String get calendarRecurring => 'Atkārtojas';

  @override
  String get calendarEventNotFound => 'Šis notikums vairs nepastāv';

  @override
  String get calendarEventLocalTime => 'Laiki tiek rādīti jūsu ierīces laika joslā';

  @override
  String get calendarEventDeleted => 'Notikums pārvietots uz miskasti';

  @override
  String get calendarConflictMarker => 'Pārklājas ar citu notikumu';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Izmaiņas attiecas uz visiem šīs sērijas notikumiem';

  @override
  String get calendarDragHintSeries => 'Velkot atkārtotu notikumu, tiek pārvietota visa sērija';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, uzdevuma termiņš';
  }

  @override
  String get startupErrorTitle => 'Jūsu datus nevarēja atvērt';

  @override
  String get startupErrorLocked =>
      'Šīs ierīces datu šifrēšanas atslēga nav pieejama. Nekas nav dzēsts. Bieži palīdz ierīces restartēšana. Ja nesen atjaunojāt ierīci, tā vietā atjaunojiet datus no šifrēta dublējuma.';

  @override
  String get startupErrorCipher =>
      'Šī ierīce neatbalsta lietotnei nepieciešamo šifrēto krātuvi. Nekas nav saglabāts nešifrētā veidā.';

  @override
  String get startupErrorRetry => 'Mēģināt vēlreiz';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jāatkārto $count kartītes',
      one: 'Jāatkārto $count kartīte',
      zero: 'Jāatkārto $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return 'Jāatkārto: $count';
  }

  @override
  String flashcardsNewCount(int count) {
    return 'Jaunas: $count';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Apgūtās kartītes: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Ievadiet 0 vai vairāk';

  @override
  String get flashcardsSearchCards => 'Meklēt kartītes';

  @override
  String get flashcardsSearchEmpty => 'Neviena kartīte neatbilst meklējumam';

  @override
  String get flashcardsCardAdded => 'Kartīte pievienota';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Jāatkārto $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopēt starpliktuvē';

  @override
  String get flashcardsExportTitle => 'Eksportēt komplektu';

  @override
  String get flashcardsDeleteDeck => 'Dzēst komplektu';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, nākamā atkārtošana pēc $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Jautājums: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Atbilde: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Rādīt jautājumu';

  @override
  String get flashcardsImportField => 'Importējamās kartītes';

  @override
  String get flashcardsNothingToStudy => 'Nav ko mācīties';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mācībām gatavas $count kartītes',
      one: 'Mācībām gatava $count kartīte',
      zero: 'Mācībām gatavas $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Pēc vērtējuma';

  @override
  String get flashcardsDeckNotFound => 'Šis komplekts vairs nav pieejams.';

  @override
  String get focusSessionDeleted => 'Sesija dzēsta';

  @override
  String get focusDeleteConfirm =>
      'Dzēst šo sesiju no vēstures? Tās laiks vairs netiks ieskaitīts jūsu mērķos.';

  @override
  String get focusUnlinkTask => 'Noņemt saistīto uzdevumu';

  @override
  String get focusNoteHint => 'Pie kā strādājāt?';

  @override
  String get focusTargetCaption => 'Izmērīts no saglabātajām sesijām';

  @override
  String get focusModeLabel => 'Taimera režīms';

  @override
  String focusUpNext(String phase) {
    return 'Tālāk: $phase';
  }

  @override
  String get focusStopwatchHint => 'Skaita uz augšu, līdz apturat.';

  @override
  String get focusOpenHint => 'Bez laika ierobežojuma. Apturiet, kad esat gatavi.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Atgādinājumi ir izslēgti iestatījumos. Jūs nesaņemsiet brīdinājumu, kad sesija beigsies.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Visi';

  @override
  String get goalsFilterPeriod => 'Perioda filtrs';

  @override
  String get goalsFilterStatus => 'Statusa filtrs';

  @override
  String get goalsEmptyFiltered => 'Neviens mērķis neatbilst šim filtram';

  @override
  String goalsDueOn(String date) {
    return 'Termiņš $date';
  }

  @override
  String get goalsDeadline => 'Termiņš (neobligāti)';

  @override
  String get goalsNoDeadline => 'Bez termiņa';

  @override
  String get goalsSetDeadline => 'Iestatīt termiņu';

  @override
  String get goalsRemoveDeadline => 'Noņemt termiņu';

  @override
  String get goalsDescription => 'Apraksts (neobligāti)';

  @override
  String get goalsTitleLabel => 'Nosaukums';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Mērķis sasniegts';

  @override
  String get goalsLogged => 'Progress reģistrēts';

  @override
  String get goalsEntryDeleted => 'Ieraksts noņemts';

  @override
  String get goalsDeleteEntry => 'Noņemt ierakstu';

  @override
  String get goalsDeleted => 'Mērķis dzēsts';

  @override
  String get goalsMarkActive => 'Atzīmēt kā aktīvu';

  @override
  String get goalsNotFound => 'Šis mērķis vairs nav pieejams';

  @override
  String get goalsLinkTask => 'Saistīt uzdevumu';

  @override
  String get goalsNoLinkedTasks => 'Vēl nav saistītu uzdevumu';

  @override
  String get goalsUnlinkTask => 'Atsaistīt uzdevumu';

  @override
  String get goalsTaskOpen => 'Vēl nav izpildīts';

  @override
  String get goalsTaskLinked => 'Uzdevums saistīts';

  @override
  String get goalsTaskUnlinked => 'Uzdevums atsaistīts';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pabeigtus saistītos uzdevumus',
      one: '$count pabeigtu saistīto uzdevumu',
      zero: '$count pabeigtus saistītos uzdevumus',
    );
    return 'Ieskaitot $_temp0 šajā periodā';
  }

  @override
  String get goalsHistoryAllTime =>
      'Iepriekšējo periodu ieraksti paliek šeit, bet tiek ieskaitīti tikai savā periodā.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Šodien izpildīti $done no $total';
  }

  @override
  String get habitsNothingToday => 'Šodien nav ieplānotu ieradumu';

  @override
  String get habitsDecrease => 'Noņemt vienu atzīmi';

  @override
  String get habitsResetToday => 'Atiestatīt šodienu';

  @override
  String get habitsCheckInHint => 'Nospiediet un turiet, lai pielāgotu';

  @override
  String get habitsName => 'Nosaukums';

  @override
  String get habitsColor => 'Krāsa';

  @override
  String get habitsValidationDays => 'Izvēlieties vismaz vienu dienu';

  @override
  String habitsReminderAt(String time) {
    return 'Katru dienu plkst. $time';
  }

  @override
  String get habitsSetReminder => 'Iestatīt atgādinājuma laiku';

  @override
  String get habitsRemoveReminder => 'Noņemt atgādinājumu';

  @override
  String get habitsReminderNote =>
      'Atgādinājumi tiek rādīti ieplānotajās dienās, ja paziņojumi ir atļauti.';

  @override
  String get habitsArchived => 'Ieradums arhivēts';

  @override
  String get habitsNotFound => 'Šis ieradums vairs nav pieejams';

  @override
  String get habitsLast30 => 'Pēdējās 30 dienas';

  @override
  String get habitsConsistencyNone => 'Vēl nepietiek datu';

  @override
  String get habitsCalendar => 'Atzīmju vēsture';

  @override
  String get habitsCalendarHint => 'Pieskarieties dienai, lai to labotu.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count no $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Atzīmes pēdējās 90 dienās. Regularitāte $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Atzīmes pēdējās 90 dienās. Vēl nepietiek datu.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienas',
      one: '$count diena',
      zero: '$count dienas',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Pauzētās dienas neietekmē jūsu sēriju.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arhivēt ieradumu';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count reizes dienā',
      one: '$count reizi dienā',
      zero: '$count reizes dienā',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Citas piezīmes';

  @override
  String get notesAllNotebooks => 'Visas klades';

  @override
  String get notesNotebookName => 'Klades nosaukums';

  @override
  String get notesNotebookColor => 'Krāsa';

  @override
  String get notesDeleteNotebook => 'Dzēst kladi';

  @override
  String get notesDeleteNotebookMessage =>
      'Klade tiek noņemta. Tās piezīmes tiek saglabātas un redzamas sadaļā “Visas klades”.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Piespraudiet svarīgas piezīmes, lai tās paliktu augšā.';

  @override
  String get notesEmptyFavorites => 'Šeit redzamas piezīmes, kuras atzīmējat kā izlasi.';

  @override
  String get notesEmptyArchived => 'Šeit redzamas arhivētās piezīmes.';

  @override
  String get notesEmptyFiltered => 'Neviena piezīme neatbilst šiem filtriem.';

  @override
  String get notesArchivedSnack => 'Piezīme arhivēta';

  @override
  String get notesUnarchivedSnack => 'Piezīme atgriezta jūsu piezīmēs';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Izpildīti $done no $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatēšana';

  @override
  String get notesWrite => 'Rakstīt';

  @override
  String get notesPreviewEmpty => 'Vēl nav ko priekšskatīt.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Uz šo piezīmi vēl neveda neviena cita piezīme. Izveidojiet saiti uz to ar [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Piešķiriet šai piezīmei nosaukumu, lai citas piezīmes varētu uz to atsaukties.';

  @override
  String get notesLinkedTasksEmpty => 'Ar šo piezīmi nav saistīts neviens uzdevums.';

  @override
  String notesLinkMissing(String title) {
    return 'Piezīmes ar nosaukumu “$title” vēl nav.';
  }

  @override
  String get notesNotFound => 'Šī piezīme vairs nepastāv.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Kontrolsaraksta punkts: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Atvērt piezīmi $title';
  }

  @override
  String get notesTagsHint => 'Pievienojiet birkas, piezīmē rakstot #birka.';

  @override
  String get notesTaskDone => 'Pabeigts';

  @override
  String get notifTimerDoneBody => 'Jūsu iestatītais laiks ir pagājis.';

  @override
  String get onboardingPrivatePointDevice => 'Glabāts tikai šajā ierīcē, šifrēts';

  @override
  String get onboardingPrivatePointAccount => 'Konts nav vajadzīgs';

  @override
  String get onboardingPrivatePointTracking => 'Bez analītikas, bez izsekošanas';

  @override
  String get onboardingLanguageBody => 'To var jebkurā laikā mainīt iestatījumos.';

  @override
  String get onboardingNext => 'Tālāk';

  @override
  String get projectsActive => 'Aktīvie';

  @override
  String get projectNameHint => 'piem., Produkta palaišana';

  @override
  String get projectGoalHint => 'Kā izskatās paveikts darbs?';

  @override
  String get projectNoDeadline => 'Bez termiņa';

  @override
  String get projectTasksOpen => 'Atvērtie uzdevumi';

  @override
  String get projectTasksCompleted => 'Pabeigtie uzdevumi';

  @override
  String get projectAddTask => 'Pievienot uzdevumu projektam';

  @override
  String get projectAddNote => 'Jauna projekta piezīme';

  @override
  String get projectLinkedNotes => 'Piezīmes';

  @override
  String get projectNoTasks => 'Šajā projektā vēl nav uzdevumu';

  @override
  String get projectArchivedBadge => 'Arhivēts';

  @override
  String get projectDeleted => 'Projekts pārvietots uz miskasti';

  @override
  String get projectDeleteMessage => 'Uzdevumi paliek jūsu sarakstā bez projekta.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, pabeigts par $percent procentiem';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultāti',
      one: '$count rezultāts',
      zero: '$count rezultāti',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtrēt pēc veida';

  @override
  String searchRecentTap(String query) {
    return 'Meklēt vēlreiz “$query”';
  }

  @override
  String get settingsLanguageHint =>
      'Izvēlieties visas lietotnes valodu. Nosaukumi tiek rādīti to valodā.';

  @override
  String get settingsThemeHint => 'Gaišs, tumšs vai atbilstoši sistēmai';

  @override
  String settingsDecrease(String setting) {
    return 'Samazināt: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Palielināt: $setting';
  }

  @override
  String get settingsQuietStart => 'Sākas';

  @override
  String get settingsQuietEnd => 'Beidzas';

  @override
  String get settingsNotificationsHint =>
      'Tas saglabā jūsu izvēli lietotnē. Sistēma var arī lūgt atļauju.';

  @override
  String get settingsDashboardHint =>
      'Velciet, lai mainītu secību. Izslēdziet sadaļas, kas nav vajadzīgas.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Pārkārtot sadaļu “$section”';
  }

  @override
  String get settingsDashboardReset => 'Atjaunot noklusējuma secību';

  @override
  String get settingsAssistantDesc =>
      'Neobligāta plānošanas palīdzība. Nekas neatstāj šo ierīci, ja vien nepievienojat sniedzēju.';

  @override
  String get settingsAssistantSetup => 'Asistents un sniedzēja iestatīšana';

  @override
  String get settingsTrashDesc => 'Atjaunojiet vai neatgriezeniski dzēsiet noņemtos vienumus';

  @override
  String get settingsEraseFirstBody =>
      'To nevar atsaukt. Vispirms apsveriet iespēju izveidot šifrētu dublējumu.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Ierakstiet $word';
  }

  @override
  String get settingsEraseFailed => 'Datus nevarēja dzēst. Nekas netika mainīts.';

  @override
  String get settingsAboutTagline => 'Privāta produktivitātes darbvieta, kas darbojas lokāli.';

  @override
  String get backupShowPassword => 'Rādīt paroli';

  @override
  String get backupHidePassword => 'Slēpt paroli';

  @override
  String get backupSaved => 'Dublējums saglabāts';

  @override
  String get backupFailed => 'Dublējumu nevarēja izveidot. Jūsu dati nav mainīti.';

  @override
  String get backupReadFailed => 'Atlasīto failu nevarēja nolasīt.';

  @override
  String get backupRestoreFailed => 'Atjaunošana neizdevās. Nekas netika mainīts.';

  @override
  String get backupShareSubject => 'Deep Focus šifrēts dublējums';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ik pēc $count dienām',
      one: 'Ik pēc $count dienas',
      zero: 'Ik pēc $count dienām',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ik pēc $count nedēļām',
      one: 'Ik pēc $count nedēļas',
      zero: 'Ik pēc $count nedēļām',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ik pēc $count mēnešiem',
      one: 'Ik pēc $count mēneša',
      zero: 'Ik pēc $count mēnešiem',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ik pēc $count gadiem',
      one: 'Ik pēc $count gada',
      zero: 'Ik pēc $count gadiem',
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
    return 'dienās: $days';
  }

  @override
  String get repeatEndsLabel => 'Beidzas';

  @override
  String get repeatEndsAfter => 'Pēc noteikta reižu skaita';

  @override
  String get repeatCountLabel => 'Atkārtojumi';

  @override
  String get reminderNone => 'Bez atgādinājuma';

  @override
  String get reminderCustomTime => 'Noteiktā laikā';

  @override
  String get a11yDecrease => 'Samazināt';

  @override
  String get a11yIncrease => 'Palielināt';

  @override
  String get pickTaskTitle => 'Izvēlieties uzdevumu';

  @override
  String get pickTaskEmpty => 'Nav atvērtu uzdevumu';

  @override
  String get tasksSearchTooltip => 'Meklēt uzdevumus';

  @override
  String get tasksSectionOverdue => 'Nokavētie';

  @override
  String get tasksSectionToday => 'Šodien';

  @override
  String get tasksRecurringSemantics => 'Atkārtojas';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimālā prioritāte';

  @override
  String get tasksFilterCategory => 'Kategorija';

  @override
  String get tasksFilterAnyCategory => 'Jebkura kategorija';

  @override
  String get tasksFilterLabel => 'Birka';

  @override
  String get tasksFilterAnyLabel => 'Jebkura birka';

  @override
  String get tasksFilterReset => 'Atiestatīt filtrus';

  @override
  String get tasksViewByProject => 'Pēc projekta';

  @override
  String get tasksViewByPriority => 'Pēc prioritātes';

  @override
  String get tasksViewByCategory => 'Pēc kategorijas';

  @override
  String get tasksGroupNoCategory => 'Bez kategorijas';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uzdevumi',
      one: '$count uzdevums',
      zero: '$count uzdevumi',
    );
    return 'Bloķē $_temp0';
  }

  @override
  String get taskBlockedWarning => 'Šo uzdevumu bloķē nepabeigti uzdevumi. Vai tomēr pabeigt?';

  @override
  String get taskStartFocus => 'Fokusēties uz šo uzdevumu';

  @override
  String get taskRemoveDate => 'Noņemt datumu';

  @override
  String get taskAllDay => 'Bez konkrēta laika';

  @override
  String get taskSaved => 'Uzdevums saglabāts';

  @override
  String get taskCreated => 'Uzdevums izveidots';

  @override
  String get taskReminderNeedsDue => 'Iestatiet termiņu, lai izmantotu relatīvus atgādinājumus';

  @override
  String get taskSubtaskDetailsHint =>
      'Vispirms saglabājiet uzdevumu, lai pievienotu apakšuzdevumus, kontrolsaraksta punktus, birkas un atkarības.';

  @override
  String get taskLabelName => 'Birkas nosaukums';

  @override
  String get taskMoreDetails => 'Sīkāka informācija';

  @override
  String get taskPlanning => 'Plānošana';

  @override
  String get taskOrganize => 'Kārtošana';

  @override
  String get taskBreakdown => 'Sadalījums';

  @override
  String get trashDeleteTaskTitle => 'Dzēst šo uzdevumu neatgriezeniski?';

  @override
  String get trashDeleteNoteTitle => 'Dzēst šo piezīmi neatgriezeniski?';

  @override
  String get trashDeleteBody => 'To nevar atsaukt.';

  @override
  String get trashEmptyTitle => 'Iztukšot miskasti?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vienumi tiks neatgriezeniski dzēsti.',
      one: '$count vienums tiks neatgriezeniski dzēsts.',
      zero: '$count vienumi tiks neatgriezeniski dzēsti.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Atjaunots';

  @override
  String get trashPurged => 'Neatgriezeniski dzēsts';

  @override
  String trashDeletedOn(String date) {
    return 'Dzēsts $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vienumi',
      one: '$count vienums',
      zero: '$count vienumi',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Lasīt skaļi';

  @override
  String get flashcardsTtsUnavailable => 'Teksta pārveide runā šajā ierīcē nav pieejama.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Šai valodai nav instalēta neviena balss. Pievienojiet to Android teksta pārveides runā iestatījumos.';

  @override
  String get calendarAgenda => 'Darba kārtība';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Dzirkstele',
      'rocket': 'Raķete',
      'book': 'Grāmata',
      'work': 'Darbs',
      'home': 'Mājas',
      'heart': 'Sirds',
      'code': 'Kods',
      'palette': 'Palete',
      'fitness': 'Fitness',
      'school': 'Skola',
      'travel': 'Ceļojumi',
      'money': 'Uzkrājumi',
      'other': 'Ikona',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Vairāk lauku';

  @override
  String get cardFieldExample => 'Piemērs';

  @override
  String get cardFieldExplanation => 'Skaidrojums';

  @override
  String get cardFieldPronunciation => 'Izruna';

  @override
  String get cardFieldNotes => 'Papildu piezīmes';

  @override
  String get projectMilestones => 'Atskaites punkti';

  @override
  String get milestoneAdd => 'Pievienot atskaites punktu';

  @override
  String get milestoneEdit => 'Rediģēt atskaites punktu';

  @override
  String get milestoneTitleLabel => 'Atskaites punkts';

  @override
  String get milestoneNoDate => 'Bez datuma';

  @override
  String get milestonesEmpty =>
      'Vēl nav atskaites punktu. Pievienojiet kontrolpunktus ar datumiem, lai sekotu projektam kalendārā.';

  @override
  String get milestoneDeleted => 'Atskaites punkts dzēsts';

  @override
  String milestoneDoneA11y(String title) {
    return 'Atzīmēt atskaites punktu “$title” kā izpildītu';
  }

  @override
  String calendarMilestone(String project) {
    return 'Atskaites punkts · $project';
  }

  @override
  String get tasksViewInbox => 'Iesūtne';

  @override
  String get tasksViewArchived => 'Arhivētie';

  @override
  String get tasksEmptyInbox =>
      'Šeit nonāk uzdevumi bez projekta vai datuma. Sakārtojiet tos, kad ir brīva minūte.';

  @override
  String get tasksEmptyArchived =>
      'Arhivētie uzdevumi tiek glabāti šeit, ārpus jūsu sarakstiem un atgādinājumiem.';

  @override
  String get taskArchivedBadge => 'Arhivēts';

  @override
  String get taskStatusInProgress => 'Procesā';

  @override
  String get taskArchived => 'Uzdevums arhivēts';

  @override
  String get taskUnarchived => 'Uzdevums atjaunots no arhīva';

  @override
  String get focusPlanTitle => 'Sesiju plāns';

  @override
  String focusPlanTotal(String duration) {
    return 'Kopā $duration';
  }

  @override
  String get focusPlanRounds => 'Fokusa sesijas';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Gara pauze pēc';

  @override
  String get focusPlanSkipLastBreak => 'Izlaist pēdējo pauzi';

  @override
  String get focusPlanAutoBreaks => 'Sākt pauzes automātiski';

  @override
  String get focusPlanAutoFocus => 'Pēc pauzes automātiski sākt fokusu';

  @override
  String get focusPlanSave => 'Saglabāt plānu';

  @override
  String get focusPlanNameHint => 'piem., Gatavošanās eksāmenam';

  @override
  String get focusPlanSaved => 'Plāns saglabāts';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min fokuss, $rest min pauze';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Samazināt: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Palielināt: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '$current. sesija no $total';
  }

  @override
  String get focusSeriesComplete => 'Sērija pabeigta. Lieliski!';

  @override
  String get filterAll => 'Visas';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Importēti: $added · izlaisti dublikāti: $duplicates · nepilnīgas rindas: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Apturēt kartīti';

  @override
  String get flashcardsResume => 'Atsākt kartīti';

  @override
  String get flashcardsSuspended => 'Kartīte apturēta: tā netiks ieplānota';

  @override
  String get flashcardsResumed => 'Kartīte atsākta';

  @override
  String get flashcardsSuspendedFilter => 'Apturēta';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown no $total kartītēm';
  }

  @override
  String get flashcardsImportFile => 'No faila';

  @override
  String get speechTitle => 'Runa';

  @override
  String get speechAppLanguage => 'Lietotnes valoda';

  @override
  String get speechFrontLanguage => 'Priekšpuses valoda';

  @override
  String get speechBackLanguage => 'Aizmugures valoda';

  @override
  String get speechRepeat => 'Atkārtot katru nolasīšanu';

  @override
  String get speechRate => 'Ātrums';

  @override
  String get speechAutoRead => 'Automātiski nolasīt jautājumu';

  @override
  String get speechHint =>
      'Izmanto šajā ierīcē instalētās balsis bezsaistē. Ja valodai nav balss, jums par to paziņos, un nekas cits netiks izmantots.';

  @override
  String get studyHowTitle => 'Kā vēlaties mācīties?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atkārtot $count kartītes',
      one: 'Atkārtot $count kartīti',
      zero: 'Atkārtot $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Vingrināties ar visām kartītēm (grafiks nemainās)';

  @override
  String get studyPracticeMistakes => 'Vingrināties ar nesenajām kļūdām';

  @override
  String get studyPracticeHint =>
      'Vingrināšanās kārtas nekad nemaina, kad kartītes jāatkārto. Atkārtošana atjaunina grafiku.';

  @override
  String get studyModeClassic => 'Klasiski';

  @override
  String get studyModeReverse => 'Pretēji';

  @override
  String get studyModeMixed => 'Abos virzienos';

  @override
  String get studyModeTyped => 'Ierakstīt atbildi';

  @override
  String get studyModeChoice => 'Atbilžu varianti';

  @override
  String get studyModeListening => 'Klausīšanās';

  @override
  String get studyPractice => 'vingrināšanās';

  @override
  String get studyNoMistakes => 'Šajā komplektā nav neseno kļūdu. Lieliski!';

  @override
  String get studyTypeAnswer => 'Ierakstiet atbildi';

  @override
  String get studyCheck => 'Pārbaudīt';

  @override
  String get studyKnewIt => 'Zināju';

  @override
  String get studyDidntKnow => 'Nezināju';

  @override
  String studyMistakes(int count) {
    return 'Kļūdas ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Atkārtot kļūdainās kartītes';

  @override
  String get studyCorrect => 'Pareizi';

  @override
  String get studyAlmost => 'Gandrīz — pārbaudiet pareizrakstību';

  @override
  String get studyWrong => 'Ne gluži';

  @override
  String get studyShowText => 'Rādīt tekstu';

  @override
  String get flashcardsImportFileFailed =>
      'Failu nevarēja atvērt. Tā vietā varat ielīmēt tā saturu.';

  @override
  String get studyNoMatchingCards => 'Šai izvēlei vēl neatbilst neviena kartīte.';

  @override
  String get studyPracticeNew => 'Tikai jaunās';

  @override
  String get studyPracticeHard => 'Grūtās kartītes';

  @override
  String get studyPracticeFavorites => 'Izlase';

  @override
  String get studySessionSize => 'Kartītes sesijā';

  @override
  String get studySessionAll => 'Visas';

  @override
  String get studyOrder => 'Secība';

  @override
  String get studyOrderDue => 'Vispirms visvairāk nokavētās';

  @override
  String get studyOrderRandom => 'Nejauša';

  @override
  String get studyOrderHardest => 'Vispirms grūtākās';

  @override
  String get flashcardsHard => 'Grūta';

  @override
  String get flashcardsFavorites => 'Izlase';

  @override
  String get flashcardsFavorite => 'Pievienot izlasei';

  @override
  String get flashcardsUnfavorite => 'Noņemt no izlases';

  @override
  String get flashcardsDuplicate => 'Dublēt';

  @override
  String get flashcardsMoveTo => 'Pārvietot uz komplektu';

  @override
  String get flashcardsNoOtherDeck => 'Vispirms izveidojiet citu komplektu.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pārvietotas $count kartītes',
      one: 'Pārvietota $count kartīte',
      zero: 'Pārvietotas $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Pievienot birku';

  @override
  String get flashcardsTagHint => 'piem., darbības vārdi';

  @override
  String flashcardsSelected(int count) {
    return 'Atlasīti: $count';
  }

  @override
  String get flashcardsSelectAll => 'Atlasīt visas redzamās';

  @override
  String flashcardsSelectCard(String front) {
    return 'Atlasīt $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Atcerēšanās $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Iespējams dublikāts';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Šajā komplektā jau ir “$front” → “$back”. Vai tomēr saglabāt?';
  }

  @override
  String get flashcardsSaveAnyway => 'Tomēr saglabāt';

  @override
  String get flashcardsStats => 'Statistika';

  @override
  String get flashcardsStatTotal => 'Kartītes';

  @override
  String get flashcardsStatLearning => 'Apgūst';

  @override
  String get flashcardsStatMatureCaption => 'Atcerētas 21+ dienas';

  @override
  String get flashcardsStatReviewsToday => 'Atkārtojumi šodien';

  @override
  String get flashcardsStatCorrect => 'Pareizās atbildes';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Pēdējās dienas: $days';
  }

  @override
  String get flashcardsStatForget => 'Aizmiršanas biežums';

  @override
  String get flashcardsStatForgetCaption => '“Vēlreiz” apgūtām kartītēm';

  @override
  String get flashcardsStatRecall => 'Atcerēšanās tagad';

  @override
  String get flashcardsStatRecallCaption => 'FSRS novērtējums, atkārtotās kartītes';

  @override
  String flashcardsStatActivity(int count) {
    return 'Atkārtojumi dienā · kopā $count';
  }

  @override
  String get flashcardsStatHistory => 'Jaunākās atbildes';

  @override
  String get flashcardsStatNoHistory =>
      'Vēl nav atkārtojumu. Mācieties komplektu, lai šeit redzētu savu progresu.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Nolasīt skaļi: $field';
  }

  @override
  String get speechVoice => 'Balss';

  @override
  String get speechVoiceDefault => 'Automātiski';

  @override
  String get speechVoiceOnline => 'nepieciešams internets';

  @override
  String get speechTest => 'Pārbaudīt balsi';

  @override
  String get importNext => 'Priekšskatījums';

  @override
  String get importPreviewTitle => 'Saskaņot kolonnas ar laukiem';

  @override
  String get importIgnoreColumn => 'Ignorēt';

  @override
  String importColumn(int n) {
    return '$n. kolonna';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Gatavas kartītes: $ready · tiks izlaistas nepilnīgas rindas: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Izvēlieties, kuras kolonnas ir priekšpuse un aizmugure.';

  @override
  String get actionMoveUp => 'Pārvietot augšup';

  @override
  String get actionMoveDown => 'Pārvietot lejup';

  @override
  String get flashcardsLayoutTitle => 'Kartītes izkārtojums';

  @override
  String get flashcardsLayoutHint =>
      'Pārdēvējiet, paslēpiet vai pārkārtojiet šī komplekta papildu laukus. Kartīšu saturs nekad netiek mainīts.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Rādīt $field mācoties';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Atklāt atbildi pakāpeniski';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Vispirms parādās aizmugure; katrs papildu lauks atveras ar pieskārienu.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Rādīt $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Šis fails ir lielāks par $mb MB.';
  }

  @override
  String get flashcardsImage => 'Attēls';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Pievienot attēlu';

  @override
  String get flashcardsAddAudio => 'Pievienot audio';

  @override
  String get flashcardsPlayAudio => 'Atskaņot ierakstu';

  @override
  String get flashcardsAudioUnavailable => 'Šo ierakstu nevar atskaņot šajā ierīcē.';

  @override
  String get flashcardsCustomFields => 'Jūsu lauki';

  @override
  String get flashcardsTemplates => 'Veidnes';

  @override
  String flashcardsNewFieldName(int n) {
    return '$n. lauks';
  }

  @override
  String get flashcardsAddField => 'Pievienot lauku';

  @override
  String get flashcardsFieldName => 'Lauka nosaukums';

  @override
  String get flashcardsFieldLangDefault => 'Puses valoda';

  @override
  String get flashcardsTemplateConfirm =>
      'Veidne nosaka, kā tiek rādīti lauki, un pievieno savus laukus. Jūsu kartītes un esošie lauki paliek nemainīti.';

  @override
  String get flashcardsApplyTemplate => 'Lietot';

  @override
  String get templateVocabulary => 'Vārdu krājums';

  @override
  String get templateTwoTranslations => 'Vārds ar diviem tulkojumiem';

  @override
  String get templateQuestionAnswer => 'Jautājums un atbilde';

  @override
  String get templateDefinition => 'Termins un definīcija';

  @override
  String get templateGrammar => 'Gramatikas likums';

  @override
  String get templateFieldPlural => 'Daudzskaitlis';

  @override
  String get templateFieldTranslation2 => 'Otrais tulkojums';

  @override
  String get templateFieldSynonyms => 'Sinonīmi';

  @override
  String get templateFieldRule => 'Likums';

  @override
  String get deckCategory => 'Līmenis vai tēma';

  @override
  String get deckCategoryHint => 'piem., A1, Medicīna';

  @override
  String get flashcardsSearchAll => 'Meklēt visās kartītēs';

  @override
  String get flashcardsSearchAllHint => 'Vārds, tulkojums, piemērs, piezīme, birka…';

  @override
  String get flashcardsAllDecks => 'Visi komplekti';

  @override
  String get flashcardsAllLanguages => 'Visas valodas';

  @override
  String get flashcardsLangUnset => 'Valoda nav iestatīta';

  @override
  String get flashcardsLevelUnset => 'Bez līmeņa vai tēmas';

  @override
  String get flashcardsByLanguage => 'Progress pa valodām';

  @override
  String get flashcardsByLevel => 'Progress pa līmeņiem vai tēmām';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Komplekti: $decks · kartītes: $cards · apgūtas: $mature · jāatkārto: $due · pareizi: $correct (30 dienas)';
  }

  @override
  String get flashcardsRecord => 'Ierakstīt';

  @override
  String get flashcardsRecording => 'Notiek ierakstīšana…';

  @override
  String get flashcardsRecordStop => 'Apturēt un paturēt';

  @override
  String get flashcardsMicDenied =>
      'Piekļuve mikrofonam ir izslēgta. Lai ierakstītu, atļaujiet to sistēmas iestatījumos.';

  @override
  String get flashcardsRecordFailed => 'Ierakstīšana šajā ierīcē nav pieejama.';

  @override
  String get soundsTitle => 'Skaņas';

  @override
  String get soundsNature => 'Daba';

  @override
  String get soundsNoise => 'Fokusa troksnis';

  @override
  String get soundRain => 'Lietus';

  @override
  String get soundStorm => 'Pērkona negaiss';

  @override
  String get soundRiver => 'Upe';

  @override
  String get soundOcean => 'Jūras viļņi';

  @override
  String get soundFire => 'Ugunskurs';

  @override
  String get soundForest => 'Meža putni';

  @override
  String get soundNight => 'Vasaras nakts';

  @override
  String get soundWhite => 'Baltais troksnis';

  @override
  String get soundPink => 'Rozā troksnis';

  @override
  String get soundBrown => 'Brūnais troksnis';

  @override
  String get soundsPlay => 'Atskaņot';

  @override
  String get soundsSleep => 'Miega taimeris';

  @override
  String get soundsSleepOff => 'Izslēgts';

  @override
  String soundsSleepAt(String time) {
    return 'Apstāsies plkst. $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Vienlaikus var skanēt līdz $count skaņām.';
  }

  @override
  String get soundsHint =>
      'Pieskarieties skaņai, lai sāktu. Sajauciet vairākas un iestatiet katras skaļumu.';

  @override
  String get soundsMixer => 'Mikss';

  @override
  String soundsVolumeOf(String name) {
    return '$name skaļums';
  }

  @override
  String get soundsChannel => 'Dabas skaņas';

  @override
  String get settingsEndTone => 'Taimera beigu skaņa';

  @override
  String get toneGentle => 'Maigi pīkstieni';

  @override
  String get toneBeeps => 'Pīkstieni';

  @override
  String get toneWood => 'Klauvējiens kokā';

  @override
  String get toneBird => 'Putna sauciens';

  @override
  String get toneStream => 'Strautiņš';

  @override
  String get toneSystem => 'Tālruņa skaņa';

  @override
  String get speechOnPhone => 'Šajā tālrunī';

  @override
  String get speechAllLanguages => 'Visas valodas';

  @override
  String get speechSearchLanguage => 'Meklēt valodas';

  @override
  String get speechGetVoices => 'Lejupielādēt vairāk balsu';

  @override
  String get speechGetVoicesHint =>
      'Valodām bez balss balsis var lejupielādēt tālruņa runas iestatījumos.';

  @override
  String get speechSettingsFailed => 'Neizdevās atvērt šī tālruņa runas iestatījumus.';

  @override
  String get speechVoiceMissing => 'Balss nav instalēta';

  @override
  String get speechPause => 'Pauze starp atkārtojumiem';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Nolasīt piemēru kopā ar atbildi';

  @override
  String get flashListen => 'Klausīties';

  @override
  String get flashListenNext => 'Nākamā kartīte';

  @override
  String get flashListenEmpty => 'Nav kartīšu, ko klausīties.';

  @override
  String get flashViewTable => 'Tabula';

  @override
  String get flashViewCards => 'Kartītes';

  @override
  String get flashSwapSides => 'Apmainīt kolonnas';

  @override
  String get flashSort => 'Kārtot';

  @override
  String get flashSortNewest => 'Vispirms jaunākās';

  @override
  String get flashSortAlpha => 'No A līdz Z';

  @override
  String get flashSortDue => 'Vispirms jāatkārtojamās';

  @override
  String get flashSortHard => 'Vispirms grūtākās';

  @override
  String get flashPasteCards => 'Ielīmēt kartītes';

  @override
  String get flashClipboardEmpty => 'Starpliktuvē nav teksta.';

  @override
  String get flashMenuAdd => 'Pievienot kartītes';

  @override
  String get flashMenuDeck => 'Komplekts';

  @override
  String get flashToday => 'Šodien';

  @override
  String get flashStudyNow => 'Mācīties';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atbildētas $count kartītes',
      one: 'Atbildēta $count kartīte',
      zero: 'Atbildētas $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Lietus mežā';

  @override
  String get autoBackupTitle => 'Automātiskie dublējumi';

  @override
  String get autoBackupDesc => 'Katru dienu šajā tālrunī; tiek glabāti pēdējie 7';

  @override
  String get autoBackupHint =>
      'Šīs kopijas paliek šajā tālrunī un tiek dzēstas, ja lietotne tiek atinstalēta. Lai pārietu uz jaunu tālruni, saglabājiet failu ar “Dublēt”.';

  @override
  String get autoBackupNone => 'Automātiskā dublējuma vēl nav. Pirmais tiks izveidots šodien.';

  @override
  String get autoBackupRestore => 'Atjaunot';

  @override
  String autoBackupConfirm(String date) {
    return 'Aizstāt visus pašreizējos datus ar dublējumu no $date?';
  }

  @override
  String get autoBackupRestored => 'Atjaunots.';

  @override
  String get errorLogTitle => 'Kļūdu žurnāls';

  @override
  String get errorLogHint =>
      'Ja kaut kas noiet greizi, tas tiek pierakstīts šeit: tikai kļūdas veids un vieta kodā, nekad jūsu saturs. Kopīgojiet to, lai palīdzētu novērst problēmu.';

  @override
  String get errorLogEmpty => 'Kļūdas nav reģistrētas.';

  @override
  String get errorLogClear => 'Notīrīt';

  @override
  String get soundsWithFocus => 'Atskaņot fokusa sesiju laikā';

  @override
  String get soundsWithFocusHint => 'Jūsu mikss sākas ar fokusa sesiju un tiek pauzēts pauzēs.';

  @override
  String get soundsSavedMixes => 'Saglabātie miksi';

  @override
  String get soundsSaveMix => 'Saglabāt šo miksu';

  @override
  String get soundsMixNameHint => 'Nosaukums, piem., Lietaina bibliotēka';

  @override
  String soundsDeleteMix(String name) {
    return 'Dzēst miksu “$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Reizi dienā, tikai tad, ja ir jāatkārto kartītes';

  @override
  String get settingsReviewTime => 'Atgādinājuma laiks';

  @override
  String get shortcutFocus => 'Fokuss';

  @override
  String get shortcutNewTask => 'Jauns uzdevums';

  @override
  String get shortcutReview => 'Atkārtot kartītes';

  @override
  String get shortcutSounds => 'Dabas skaņas';

  @override
  String get myDayTitle => 'Sākt manu dienu';

  @override
  String get myDayHint => 'Jūsu diena vienā skatienā, tad fokuss ar vienu pieskārienu';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Šodien $count uzdevumi',
      one: 'Šodien $count uzdevums',
      zero: 'Šodien $count uzdevumi',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Šodien vairs nav notikumu';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Nākamais: $title plkst. $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atlikuši $count ieradumi',
      one: 'Atlicis $count ieradums',
      zero: 'Atlikuši $count ieradumi',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Sākt ar fokusa sesiju';

  @override
  String get hijriMonth1 => 'Muharams';

  @override
  String get hijriMonth2 => 'Safars';

  @override
  String get hijriMonth3 => 'Rabī al avals';

  @override
  String get hijriMonth4 => 'Rabī as sānī';

  @override
  String get hijriMonth5 => 'Džumāda al ūlā';

  @override
  String get hijriMonth6 => 'Džumāda al āhira';

  @override
  String get hijriMonth7 => 'Radžabs';

  @override
  String get hijriMonth8 => 'Šabāns';

  @override
  String get hijriMonth9 => 'Ramadāns';

  @override
  String get hijriMonth10 => 'Šavāls';

  @override
  String get hijriMonth11 => 'Zū al kada';

  @override
  String get hijriMonth12 => 'Zū al hidža';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day. $month $year. g. pēc hidžras';
  }

  @override
  String get settingsHijri => 'Hidžras datumi';

  @override
  String get settingsHijriHint => 'Rādīti kalendārā un sākuma ekrānā (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienas',
      one: '$count diena',
      zero: '$count dienas',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Šodien $done no $goal kartītēm';
  }

  @override
  String get studyGoalReached => 'Dienas mērķis sasniegts. Lieliski!';

  @override
  String get studyWeekTitle => 'Jūsu nedēļa';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 dienās atbildētas $count kartītes',
      one: '7 dienās atbildēta $count kartīte',
      zero: '7 dienās atbildētas $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return 'Fokuss 7 dienās: $duration';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Sērija: $current · Labākā: $best';
  }

  @override
  String get studyGoalTitle => 'Dienas mērķis (kartītes)';

  @override
  String get studyGoalOff => 'Izslēgts';

  @override
  String get focusDndTitle => 'Netraucēt fokusa laikā';

  @override
  String get focusDndHint => 'Ieslēdzas katrai fokusa sesijai un izslēdzas pauzē';

  @override
  String get focusDndNeedsAccess => 'Lai to izmantotu, atļaujiet piekļuvi tālruņa iestatījumos';

  @override
  String get voiceInput => 'Diktēt';

  @override
  String get voiceInputPrompt => 'Runājiet tagad';

  @override
  String get voiceInputUnavailable =>
      'Balss ievade šajā tālrunī nav pieejama. Instalējiet vai ieslēdziet runas pakalpojumu (piemēram, Google runas atpazīšanu un sintēzi).';

  @override
  String get prayerFajr => 'Fadžr';

  @override
  String get prayerSunrise => 'Saullēkts';

  @override
  String get prayerDhuhr => 'Zuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Magrib';

  @override
  String get prayerIsha => 'Iša';

  @override
  String get prayerMethodMwl => 'Pasaules musulmaņu līga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Meka';

  @override
  String get prayerMethodEgypt => 'Ēģiptes Ģenerālā pārvalde';

  @override
  String get prayerMethodJordan => 'Jordānija, Vakufu ministrija';

  @override
  String get prayerMethodKarachi => 'Islāma zinātņu universitāte, Karāči';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Persijas līča reģions';

  @override
  String get prayerMethodKuwait => 'Kuveita';

  @override
  String get prayerMethodQatar => 'Katara';

  @override
  String get prayerMethodTurkey => 'Turcija, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapūra, Malaizija, Indonēzija';

  @override
  String get prayerMethodFrance => 'Francija (12°)';

  @override
  String get prayerMethodRussia => 'Krievija, Garīgā pārvalde';

  @override
  String prayerNotifTitle(String name) {
    return 'Laiks: $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Lūgšanas laiks · $time';
  }

  @override
  String get prayerTitle => 'Lūgšanu laiki';

  @override
  String get prayerOffHint =>
      'Izvēlieties pilsētu, lai redzētu lūgšanu laikus. Tie tiek aprēķināti tālrunī; piekļuve atrašanās vietai nav nepieciešama.';

  @override
  String get prayerChooseCity => 'Izvēlēties pilsētu';

  @override
  String get prayerCity => 'Pilsēta';

  @override
  String get prayerCitySearch => 'Meklēt pilsētu';

  @override
  String get prayerMethod => 'Aprēķina metode';

  @override
  String get prayerHanafiAsr => 'Hanafītu Asr (vēlāks laiks)';

  @override
  String get prayerReminders => 'Paziņot katrā lūgšanas laikā';

  @override
  String get prayerPauseFocus => 'Pauzēt fokusu lūgšanas laikā';

  @override
  String get prayerPauseFocusHint => 'Notiekošā sesija tiek pauzēta; turpiniet pēc lūgšanas';

  @override
  String get prayerTurnOff => 'Izslēgt lūgšanu laikus';

  @override
  String get prayerAccuracyNote =>
      'Aprēķinātie laiki var dažas minūtes atšķirties no jūsu vietējās mošejas.';

  @override
  String prayerNext(String name, String time) {
    return '$name plkst. $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Šis Anki fails izmanto jaunāko formātu. Programmā Anki eksportējiet vēlreiz ar ieslēgtu “Support older Anki versions”, pēc tam importējiet šo failu.';

  @override
  String get importTemplate => 'Izklājlapas veidne';

  @override
  String get importTemplateFront => 'ābols';

  @override
  String get importTemplateBack => 'apaļš auglis';

  @override
  String get importTemplateExample => 'Es katru dienu apēdu ābolu.';

  @override
  String get importTemplateTag => 'ēdiens';

  @override
  String get starterTitle => 'Sākuma komplekti';

  @override
  String get starterHint =>
      'Pievienojiet vienu, lai uzreiz sāktu mācīties. Vēlāk to varēsiet rediģēt vai dzēst.';

  @override
  String get starterAdd => 'Pievienot';

  @override
  String get starterWords => 'Ikdienas angļu vārdi (arābu val.)';

  @override
  String get starterCapitals => 'Pasaules galvaspilsētas';

  @override
  String get starterElements => 'Ķīmiskie elementi';

  @override
  String get settingsAccent => 'Akcenta krāsa';

  @override
  String get accentViolet => 'Violeta';

  @override
  String get accentBlue => 'Zila';

  @override
  String get accentTeal => 'Zilganzaļa';

  @override
  String get accentGreen => 'Zaļa';

  @override
  String get accentRose => 'Rozā';

  @override
  String get accentAmber => 'Dzintara';

  @override
  String get settingsFlashTextSize => 'Kartīšu teksta lielums';

  @override
  String get settingsFlashTextSample => 'Piemērs';

  @override
  String get widgetStartFocus => 'Pieskarieties, lai fokusētos';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokuss līdz $time';
  }

  @override
  String get widgetNoCardsDue => 'Kartītes: viss izdarīts';

  @override
  String get faqMyDayQ => 'Ko dara “Sākt manu dienu”?';

  @override
  String get faqMyDayA =>
      'Reizi dienā to piedāvā sākuma ekrāns: redziet šodienas uzdevumus, nākamo notikumu, atlikušos ieradumus un jāatkārtojamās kartītes, tad ar vienu pieskārienu sāciet fokusa sesiju. Nospiediet un turiet lietotnes ikonu ātrajām darbībām vai pievienojiet sākuma ekrānam logrīku, lai redzētu fokusa laiku un jāatkārtojamās kartītes.';

  @override
  String get faqTasksQ => 'Kā pievienot uzdevumu ar atgādinājumu?';

  @override
  String get faqTasksA =>
      'Pieskarieties “Jauns uzdevums” sākuma ekrānā vai “+” uzdevumos. Ierakstiet nosaukumu vai pasakiet to mikrofonā, tad iestatiet termiņu, laiku un atgādinājumu. Nokavētie uzdevumi tiek rādīti vispirms.';

  @override
  String get faqFocusQ => 'Kā darbojas fokusa taimeris?';

  @override
  String get faqFocusA =>
      'Izvēlieties Pomodoro, atpakaļskaitīšanu vai brīvu laiku un nospiediet “Sākt”; pauzes var sekot automātiski. Iestatījumos varat izvēlēties beigu skaņu, ieslēgt “Netraucēt” fokusa laikā un atskaņot dabas skaņas katrā sesijā.';

  @override
  String get faqSoundsQ => 'Vai varu sajaukt dabas skaņas?';

  @override
  String get faqSoundsA =>
      'Ieslēdziet līdz sešiem īstiem ierakstiem, iestatiet katra skaļumu un saglabājiet miksu ar nosaukumu. Tie skan fonā, un miega taimeris var tos apturēt. Mūzika netiek izmantota.';

  @override
  String get faqCalendarQ => 'Vai kalendārs var rādīt hidžras datumus?';

  @override
  String get faqCalendarA =>
      'Jā. Hidžras datumi (Umm al-Qura) arābu valodā tiek rādīti automātiski, un iestatījumos tos var ieslēgt jebkurai valodai. Notikumi, uzdevumi ar termiņu un projektu atskaites punkti tiek rādīti kopā.';

  @override
  String get faqFlashcardsQ => 'Kā atkārtošana izlemj, kuras kartītes redzēšu?';

  @override
  String get faqFlashcardsA =>
      'Labi zināmās kartītes atgriežas pēc ilgākiem intervāliem, bet tās, kuras nezinājāt, atgriežas drīz (intervālu atkārtošana). Novērtējiet katru atbildi: Vēlreiz, Grūti, Labi vai Viegli. Iestatiet dienas mērķi un saglabājiet sēriju kartītē “Šodien”. Komplektā iestatiet eksāmena datumu, lai redzētu atlikušās dienas un cik jaunu kartīšu jāapgūst katru dienu. Kārtojiet pēc “Mana secība”, lai vilktu kartītes vietā, pieskarieties skaļrunim jebkurā pusē, lai to dzirdētu, un iestatiet ātrumu un atkārtojumus izvēlnē “Runa”.';

  @override
  String get faqImportQ => 'Vai varu pārnest kartītes no Anki vai Excel?';

  @override
  String get faqImportA =>
      'Jā. Komplektā izvēlieties “Importēt”, tad failu: Anki (.apkg), Excel (.xlsx) vai CSV, un saskaņojiet kolonnas. Ar “Izklājlapas veidni” varat rakstīt kartītes datorā. Attēli un skaņas Anki failos netiek importēti.';

  @override
  String get faqNotesQ => 'Ko var piezīmes?';

  @override
  String get faqNotesA =>
      'Rakstiet brīvi ar kontrolsarakstiem un formatējumu, piespraudiet vai pievienojiet izlasei svarīgas piezīmes, pievienojiet birkas un saistiet piezīmes ar uzdevumiem. Ar mikrofona pogu varat diktēt. Jauna piezīme var sākties no veidnes (lekcija, grāmatas kopsavilkums, dienasgrāmata, nedēļas plāns), un attēla poga pievieno fotoattēlus.';

  @override
  String get faqHabitsQ => 'Kā tiek skaitītas ieradumu sērijas?';

  @override
  String get faqHabitsA =>
      'Diena tiek ieskaitīta, kad ieplānotā dienā sasniedzat ieraduma mērķi. Ieraduma pauzēšana saglabā sēriju. Katram ieradumam var būt savs atgādinājuma laiks.';

  @override
  String get faqGoalsQ => 'Kā mērķi seko progresam?';

  @override
  String get faqGoalsA =>
      'Piešķiriet mērķim apjomu un mērvienību, tad reģistrējiet progresu. Tā kartīte rāda, cik tālu esat un cik atlicis līdz termiņam.';

  @override
  String get faqProjectsQ => 'Kam paredzēti projekti?';

  @override
  String get faqProjectsA =>
      'Grupējiet uzdevumus projektā, pievienojiet atskaites punktus ar datumiem un sekojiet kopējam progresam. Atskaites punkti tiek rādīti arī kalendārā.';

  @override
  String get faqInsightsQ => 'Ko rāda Ieskati?';

  @override
  String get faqInsightsA =>
      'Jūsu fokusa laiku, pabeigtos uzdevumus un mācības pa dienām un nedēļām, ar saudzīgiem ieteikumiem. Viss tiek aprēķināts jūsu tālrunī.';

  @override
  String get faqSpacesQ => 'Kur ir visas sadaļas?';

  @override
  String get faqSpacesA =>
      'Telpās ir uzskaitītas visas lietotnes daļas (piezīmes, komplekti, ieradumi, mērķi, projekti, skaņas un citas), lai galvenā josla paliktu vienkārša.';

  @override
  String get faqBackupQ => 'Kā tiek dublēti mani dati?';

  @override
  String get faqBackupA =>
      'Katru dienu lietotne klusi saglabā šifrētu kopiju šajā tālrunī un glabā pēdējās 7. Iestatījumos varat arī eksportēt ar paroli aizsargātu dublējuma failu un atjaunot to citā tālrunī.';

  @override
  String get faqPrayerQ => 'Kā darbojas lūgšanu laiki?';

  @override
  String get faqPrayerA =>
      'Izvēlieties pilsētu sadaļā Iestatījumi → Lūgšanu laiki. Laiki tiek aprēķināti tālrunī ar tur izmantoto metodi, un jūs varat mainīt metodi un Asr skolu. Varat saņemt paziņojumu katrā lūgšanā, un notiekošā fokusa sesija tiek pauzēta.';

  @override
  String get faqPrivacyQ => 'Kur tiek glabāti mani dati?';

  @override
  String get faqPrivacyA =>
      'Tikai jūsu tālrunī, šifrētā datubāzē. Nav konta un izsekošanas. Internetu izmanto tikai funkcijas, kuras ieslēdzat paši, piemēram, neobligātais asistents.';

  @override
  String get faqAssistantQ => 'Kas ir asistents?';

  @override
  String get faqAssistantA =>
      'Neobligāts palīgs, kuru iestatījumos savienojat ar savu MI pakalpojumu. Pēc noklusējuma tas ir izslēgts un pirms jebkāda piezīmes teksta nosūtīšanas jautā.';

  @override
  String get tourPlanTitle => 'Plānojiet savu dienu';

  @override
  String get tourPlanBody =>
      'Uzdevumi, kalendārs un ieradumi vienā mierīgā vietā. Sāciet katru rītu ar “Sākt manu dienu”.';

  @override
  String get tourFocusTitle => 'Dziļš fokuss';

  @override
  String get tourFocusBody =>
      'Sesijas ar taimeri, īstas dabas skaņas, “Netraucēt” un maigi beigu signāli.';

  @override
  String get tourLearnTitle => 'Mācieties uz ilgu laiku';

  @override
  String get tourLearnBody =>
      'Kartītes ar intervālu atkārtošanu, runa daudzās valodās un imports no Anki vai Excel.';

  @override
  String get helpTitle => 'Palīdzība un jautājumi';

  @override
  String get helpOpen => 'Atvērt';

  @override
  String get helpTour => 'Apskatīt ievadu';

  @override
  String get tourNext => 'Tālāk';

  @override
  String get tourDone => 'Sāksim';

  @override
  String get transferColTitle => 'Nosaukums';

  @override
  String get transferColNotes => 'Piezīmes';

  @override
  String get transferColBody => 'Teksts';

  @override
  String get transferColDue => 'Termiņš';

  @override
  String get transferColPriority => 'Prioritāte (0-3)';

  @override
  String get transferColDone => 'Izpildīts';

  @override
  String get transferColProject => 'Projekts';

  @override
  String get transferColCategory => 'Kategorija';

  @override
  String get transferTitle => 'Imports un eksports';

  @override
  String get transferSaveAs => 'Saglabāt kā';

  @override
  String get transferImport => 'Importēt no faila';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV vai tabula Word dokumentā. Kolonnas: nosaukums, termiņš (2026-12-31), prioritāte 0-3, izpildīts, projekts, piezīmes. Uzdevumi, kas jau ir lietotnē, tiek izlaisti.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown vai teksta faili kļūst par piezīmi. Excel vai CSV: viena piezīme katrā rindā (nosaukums, teksts).';

  @override
  String get transferSaved => 'Fails saglabāts';

  @override
  String get transferFailed => 'Failu nevarēja izveidot. Nekas netika mainīts.';

  @override
  String get transferUnsupported =>
      'Šo failu šeit nevar nolasīt. Izmantojiet Excel, CSV, Word, Markdown vai tekstu.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Pievienoti: $added',
      one: 'Pievienots: $added',
      zero: 'Pievienoti: $added',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Teksts';

  @override
  String get transferAllNotes => 'Visas piezīmes';

  @override
  String get transferThisNote => 'Šī piezīme';

  @override
  String get transferDeckFormats => 'Saglabāt kā Excel, Word vai PDF';

  @override
  String get faqFilesQ => 'Vai varu izmantot Excel, Word vai PDF failus?';

  @override
  String get faqFilesA =>
      'Jā. Uzdevumos un piezīmēs augšā ir importa un eksporta poga (divas bultiņas), un katram komplektam tā ir izvēlnē. Saglabājiet kā Excel, CSV, Word vai PDF vai ielādējiet Excel, CSV, Word, Markdown vai teksta failus. Kolonnu nosaukumi var būt jebkurā lietotnes valodā, un saglabātos failus vienmēr var importēt atkal.';

  @override
  String get tplLecture => 'Lekcija';

  @override
  String get tplBook => 'Grāmatas kopsavilkums';

  @override
  String get tplJournal => 'Dienasgrāmata';

  @override
  String get tplWeek => 'Nedēļas plāns';

  @override
  String get tplLectureBody =>
      '## Galvenie punkti\n- \n\n## Jautājumi\n- [ ] \n\n## Kopsavilkums\n';

  @override
  String get tplBookBody =>
      '## Galvenā doma\n\n## Ko es uzzināju\n- \n\n## Citāti\n> \n\n## Ko pielietot\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Esmu pateicīgs par\n- \n\n## Šodienas fokuss\n- [ ] \n\n## Piezīmes\n';

  @override
  String get tplWeekBody =>
      '## Nedēļas mērķi\n- [ ] \n\n### Sestdiena\n- [ ] \n\n### Svētdiena\n- [ ] \n\n### Pirmdiena\n- [ ] \n\n### Otrdiena\n- [ ] \n\n### Trešdiena\n- [ ] \n\n### Ceturtdiena\n- [ ] \n\n### Piektdiena\n- [ ] \n';

  @override
  String get tplHint => 'Sākt no veidnes';

  @override
  String get noteImage => 'Attēls';

  @override
  String get noteAddImage => 'Pievienot attēlu';

  @override
  String get noteImageUnreadable => 'Šis fails nav attēls, ko lietotne var nolasīt.';

  @override
  String get noteImageTooLarge => 'Šis attēls ir pārāk liels.';

  @override
  String get examSet => 'Iestatīt eksāmena datumu';

  @override
  String get examDate => 'Eksāmena datums';

  @override
  String get examToday => 'Eksāmens ir šodien. Veiksmi!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Eksāmens pēc $count dienām',
      one: 'Eksāmens pēc $count dienas',
      zero: 'Eksāmens pēc $count dienām',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'apgūstiet $count jaunas kartītes dienā',
      one: 'apgūstiet $count jaunu kartīti dienā',
      zero: 'apgūstiet $count jaunas kartītes dienā',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'visas kartītes apgūtas, turpiniet atkārtot';

  @override
  String examRaiseLimit(int count) {
    return 'Rādīt jaunas kartītes dienā: $count';
  }

  @override
  String get backupDriveHint =>
      'Lai glabātu kopiju tiešsaistē, nākamajā saglabāšanas ekrānā izvēlieties Google disku (vai citu mākoņa lietotni).';

  @override
  String get flashShareDeck => 'Kopīgot komplektu ar draugu';

  @override
  String get flashSortManual => 'Mana secība (vilkšana)';

  @override
  String get flashReorderHint => 'Turiet rokturi un velciet kartīti, lai to pārvietotu.';

  @override
  String get flashReorderNeedsAll => 'Notīriet meklēšanu un filtrus, lai vilktu kartītes.';

  @override
  String get flashDragHandle => 'Velciet, lai pārvietotu';

  @override
  String get reportTitle => 'Mēneša pārskats';

  @override
  String get reportFocus => 'Fokusa laiks';

  @override
  String reportSessions(int count) {
    return 'Sesijas: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Labākā diena: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Aktīvās dienas: $count';
  }

  @override
  String get reportCards => 'Atkārtotās kartītes';

  @override
  String reportCardsKnown(String percent) {
    return 'Atcerēts: $percent';
  }

  @override
  String get reportTasks => 'Pabeigtie uzdevumi';

  @override
  String get reportHabits => 'Ieradumu atzīmes';

  @override
  String get reportEmpty => 'Šomēnes vēl nekas nav reģistrēts.';

  @override
  String get reportSave => 'Saglabāt kā PDF vai Word';

  @override
  String get reportPrevMonth => 'Iepriekšējais mēnesis';

  @override
  String get reportNextMonth => 'Nākamais mēnesis';

  @override
  String get careTitle => 'Tālruņa un datu aprūpe';

  @override
  String get storageTitle => 'Krātuve';

  @override
  String get storageSubtitle => 'Kas aizņem vietu, un neizmantoto attēlu tīrīšana';

  @override
  String get storagePictures => 'Attēli piezīmēs';

  @override
  String get storageCardMedia => 'Attēli un audio kartītēs';

  @override
  String get storageText => 'Piezīmju teksts';

  @override
  String get storageFree => 'Brīvs tālrunī';

  @override
  String get storageLow =>
      'Jūsu tālrunis ir gandrīz pilns. Atbrīvojiet vietu, lai dublējumi un atgādinājumi turpinātu darboties.';

  @override
  String storageUnused(int count, String size) {
    return 'Neizmantoti attēli: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Nav neizmantotu attēlu. Viss ir kārtībā.';

  @override
  String get storageClean => 'Noņemt neizmantotos attēlus';

  @override
  String storageCleaned(int count) {
    return 'Noņemti attēli: $count';
  }

  @override
  String get storageHint =>
      'Attēls tiek uzskatīts par neizmantotu tikai tad, ja to nerāda neviena piezīme, ieskaitot piezīmes miskastē.';

  @override
  String get batteryTitle => 'Lai atgādinājumi darbotos';

  @override
  String get batterySubtitle => 'Daži tālruņi aptur lietotnes fonā. Pārbaudiet savējo.';

  @override
  String get batteryStatusOk =>
      'Akumulatora taupīšana neierobežo šo lietotni. Atgādinājumiem un skaņām vajadzētu pienākt laikā.';

  @override
  String get batteryStatusLimited =>
      'Akumulatora taupīšana var apturēt šo lietotni fonā, tāpēc atgādinājumi un skaņas var kavēties vai nepienākt.';

  @override
  String get batteryOpen => 'Atvērt akumulatora iestatījumus';

  @override
  String get batteryOpenApp => 'Atvērt lietotnes iestatījumus';

  @override
  String get batteryGeneric =>
      'Akumulatora iestatījumos izvēlieties šo lietotni un iestatiet “Neierobežots” (vai “Neoptimizēt”).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: atveriet arī Drošība › Atļaujas › Automātiska palaišana un ieslēdziet šo lietotni, bet akumulatora taupīšanai iestatiet “Bez ierobežojumiem”.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: atveriet Akumulators › šī lietotne un atļaujiet darbību fonā un automātisku palaišanu; nofiksējiet lietotni neseno lietotņu sarakstā.';

  @override
  String get batterySamsung =>
      'Samsung: Akumulators › Lietojuma fonā ierobežojumi: noņemiet šo lietotni no miega režīma un dziļā miega režīma lietotnēm.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Lietotņu palaišana › šī lietotne › pārvaldīt manuāli un atļaujiet automātisku palaišanu, sekundāro palaišanu un darbību fonā.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Akumulators › Enerģijas patēriņš fonā › atļaujiet šo lietotni un atļaujās ieslēdziet automātisku palaišanu.';

  @override
  String get whatsNewTitle => 'Jaunumi';

  @override
  String get whatsNewSubtitle => 'Jaunākās izmaiņas dažās rindās';

  @override
  String get whatsNewDone => 'Skaidrs';

  @override
  String get whatsNewOrderTitle => 'Velciet kartītes savā secībā';

  @override
  String get whatsNewOrderBody =>
      'Komplektā izvēlieties Kārtot › Mana secība, tad turiet rokturi un velciet.';

  @override
  String get whatsNewSpeechTitle => 'Skaļrunis katrā kartītes pusē';

  @override
  String get whatsNewSpeechBody =>
      'Pieskarieties tam, lai dzirdētu vārdu vai tulkojumu. Ātrums, atkārtojumi un balss ir atkārtošanas izvēlnē. Valoda tiek noteikta pēc teksta.';

  @override
  String get whatsNewReportTitle => 'Mēneša pārskats';

  @override
  String get whatsNewReportBody =>
      'Sadaļā Ieskati pieskarieties pārskata ikonai, lai redzētu mēnesi un saglabātu to kā PDF vai Word.';

  @override
  String get whatsNewCareTitle => 'Tālruņa un datu aprūpe';

  @override
  String get whatsNewCareBody =>
      'Iestatījumos tagad ir krātuves lapa ar attēlu tīrīšanu un akumulatora ceļvedi jūsu tālruņa zīmolam.';

  @override
  String get whatsNewSoundTitle => 'Mierīgākas skaņas';

  @override
  String get whatsNewSoundBody =>
      'Dabas skaņas ir maigākas un klusākas, un attēlu kartītes ir skaistākas.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Pārbaudīts $date: jaunākais dublējums atveras pareizi.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Pārbaudīts $date: atrasts bojāts dublējums, un tas aizstāts ar jaunu.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Pārbaudīts $date: jaunāko dublējumu nevarēja atvērt. Saglabājiet dublējuma failu paši iestatījumos.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Parasti jūs mācāties ap $time';
  }

  @override
  String get smartReviewTimeUse => 'Izmantot';

  @override
  String get widgetNewNote => 'Jauna piezīme';

  @override
  String get noteConnections => 'Birkas, saites un uzdevumi';

  @override
  String get navCards => 'Kartītes';

  @override
  String get studyAnswerWay => 'Kā atbildēt';

  @override
  String get studyMorePractice => 'Papildu prakse';

  @override
  String get studySessionSettings => 'Sesijas iestatījumi';

  @override
  String get focusAdjustTitle => 'Jūsu sesija';

  @override
  String get focusPresetsTitle => 'Gatavi';

  @override
  String get focusPresetStudy => 'Mācības';

  @override
  String get focusPresetDeep => 'Dziļš darbs';

  @override
  String get focusPresetQuick => 'Ātrs sprints';

  @override
  String get focusPresetReading => 'Lasīšana';

  @override
  String get focusPresetWorkout => 'Treniņa kārtas';

  @override
  String get focusAdjustMinutes => 'Fokusa ilgums';

  @override
  String get focusAdjustBreak => 'Pauzes ilgums';

  @override
  String get focusAdjustRounds => 'Kārtas';

  @override
  String get focusRoundsOpen => 'Bez ierobežojuma';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Pieskarieties, lai mainītu laiku';

  @override
  String get flashArrangeDecks => 'Kārtot komplektus';

  @override
  String get flashDeckActions => 'Komplekta opcijas';

  @override
  String get starterBrowse => 'Gatavi komplekti';

  @override
  String get starterBrowseHint => 'Pievienojiet ar vienu pieskārienu un sāciet mācīties';

  @override
  String get dashOpenDecks => 'Atvērt kartītes';

  @override
  String speechVoiceNumber(String n) {
    return 'Balss $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Lieliska plūsma. Atpūsties $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Sākt pauzi';

  @override
  String tasksFinishAt(String time) {
    return 'Sāciet tagad, un visu pabeigsiet līdz $time';
  }

  @override
  String get focusCalmPacing => 'Mierīgs temps';

  @override
  String get focusCalmPacingHint => 'Tikai veselas minūtes un aplis, bez tikšķošām sekundēm';

  @override
  String get focusFlipHint => 'Apgrieziet tālruni ar ekrānu uz leju, lai sāktu';

  @override
  String get focusImmersive => 'Iegremdēšanās režīms';

  @override
  String get focusImmersiveBlack => 'Tīri melns (taupa akumulatoru)';

  @override
  String get focusFlipToFocus => 'Apgriezt fokusam';

  @override
  String get focusFlipToFocusHint => 'Iegremdēšanās režīmā: ar ekrānu uz leju sāk, paceļot pauzē';

  @override
  String get guardTitle => 'Aizsardzība pret traucēkļiem';

  @override
  String get guardSubtitle => 'Pauzējiet traucējošas lietotnes, kamēr fokusējaties';

  @override
  String get guardSwitch => 'Pauzēt traucējošas lietotnes';

  @override
  String get guardSwitchHint => 'Fokusa sesiju un Laika aizsardzības stundu laikā';

  @override
  String get guardNeedsAccess => 'Nepieciešams pieejamības slēdzis: pieskarieties, lai to ieslēgtu';

  @override
  String get guardDisclosureTitle => 'Kā darbojas aizsardzība';

  @override
  String get guardDisclosureBody =>
      'Lai pauzētu jūsu izvēlētās lietotnes, Deep Focus izmanto Android pieejamības pakalpojumu, lai redzētu, kura lietotne ir atvērta. Ja ir ieslēgts “Aizvērt Shorts un Reels”, tas arī pārbauda, vai ekrānā ir īso video atskaņotājs.\n\nTas nelasa nekādu tekstu, nesaglabā neko no redzētā un neko nekur nesūta: viss paliek jūsu tālrunī. Jebkurā laikā varat to izslēgt pieejamības iestatījumos.';

  @override
  String get guardAgree => 'Piekrist un atvērt iestatījumus';

  @override
  String get guardModeGentle => 'Maigs';

  @override
  String get guardModeStrict => 'Stingrs';

  @override
  String get guardGentleHint => '5 sekunžu elpošanas pauze, pēc tam izvēlaties jūs';

  @override
  String get guardStrictHint => 'Izvēlētās lietotnes paliek aizvērtas līdz fokusa laika beigām';

  @override
  String get guardApps => 'Pauzējamās lietotnes';

  @override
  String get guardAppsAllowed => 'Atļautās lietotnes';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lietotnes',
      one: '$count lietotne',
      zero: 'Izvēlētas $count lietotnes',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Atļaut tikai izvēlētās lietotnes';

  @override
  String get guardAllowlistHint =>
      'Visas pārējās lietotnes tiek pauzētas; zvani, iestatījumi un tastatūra vienmēr darbojas';

  @override
  String get guardShorts => 'Aizvērt Shorts un Reels';

  @override
  String get guardShortsHint =>
      'Vienmēr, kad aizsardzība ir ieslēgta. Bez garantijām: šīs lietotnes bieži mainās';

  @override
  String get guardSchedule => 'Laika aizsardzība';

  @override
  String get guardScheduleHint =>
      'Aizsargāt arī noteiktās dienās un stundās, piemēram, skolā vai darbā';

  @override
  String get guardFrom => 'No';

  @override
  String get guardTo => 'Līdz';

  @override
  String get guardSearchApps => 'Meklēt lietotnes';

  @override
  String get guardNoApps => 'Nav atrasta neviena lietotne';

  @override
  String get guardPrivacy =>
      'Darbojas tikai jūsu tālrunī: aizsardzība redz, kura lietotne ir atvērta, bet nekad ne to, kas tajā ir, un neko nesūta.';

  @override
  String get guardBreathe => 'Ieelpojiet… un izelpojiet';

  @override
  String get guardQuestion => 'Vai jums šī lietotne vajadzīga tagad?';

  @override
  String get guardBackToFocus => 'Atpakaļ pie fokusa';

  @override
  String get guardOpenFive => 'Atvērt uz 5 minūtēm';

  @override
  String get guardStrictBody => 'Šī lietotne ir pauzēta līdz jūsu fokusa laika beigām.';

  @override
  String get guardShortsClosed => 'Kamēr aizsardzība ir ieslēgta, īsie video tiek aizvērti';

  @override
  String get faqGuardQ => 'Kā apturēt traucējošas lietotnes fokusa laikā?';

  @override
  String get faqGuardA =>
      'Atveriet Fokuss → taimera iestatījumi → Aizsardzība pret traucēkļiem. Izvēlieties lietotnes, tad Maigs (5 sekunžu elpa un jautājums “Vai jums šī lietotne vajadzīga tagad?”) vai Stingrs (tās paliek aizvērtas). Tā darbojas fokusa sesiju laikā un ar Laika aizsardzību jūsu iestatītajās dienās un stundās. “Atļaut tikai izvēlētās lietotnes” pauzē visu pārējo; zvani, iestatījumi un tastatūra vienmēr darbojas. Android vienreiz lūgs ieslēgt aizsardzību pieejamības iestatījumos. Tā redz tikai to, kura lietotne ir atvērta, un neko nesūta.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Pārvietots uz “$name”';
  }

  @override
  String get notesDragHint => 'Turiet piezīmi un velciet to uz kladi';

  @override
  String get guardReviewCards => 'Labāk atkārtot kartītes';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jūs gaida $count kartītes',
      one: 'Jūs gaida $count kartīte',
      zero: 'Jūs gaida $count kartītes',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Ārkārtas gadījumā: turiet 10 sekundes';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Turpiniet turēt… $n';
  }

  @override
  String get guardWeekTitle => 'Šonedēļ';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauzes',
      one: '$count pauze',
      zero: '$count pauzes',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'atgriešanās pie fokusa $count reizes',
      one: 'atgriešanās pie fokusa $count reizi',
      zero: 'atgriešanās pie fokusa $count reizes',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Pārdēvēt vārdus';

  @override
  String get wordsSubtitle => 'Savs vārds jebkuram lietotnes tekstam';

  @override
  String get wordsHint =>
      'Pieskarieties tekstam, lai to mainītu. Jūsu vārdi attiecas tikai uz šo valodu un tiek saglabāti dublējumos.';

  @override
  String get wordsSearch => 'Meklēt tekstus';

  @override
  String get wordsChangedOnly => 'Tikai mainītie';

  @override
  String wordsOriginal(String text) {
    return 'Oriģināls: $text';
  }

  @override
  String get wordsReset => 'Izmantot oriģinālu';

  @override
  String get wordsResetAll => 'Atiestatīt visus vārdus';

  @override
  String get wordsResetAllConfirm => 'Visi teksti šajā valodā atgriežas pie oriģināla.';

  @override
  String get wordsNone => 'Teksts nav atrasts';

  @override
  String get settingsLanguageSearch => 'Meklēt valodas';

  @override
  String get settingsLanguageNoMatch => 'Neviena valoda neatbilst';

  @override
  String aiSmokeTest(int count) {
    return 'Tava fokusa sērija pieauga līdz $count dienām';
  }
}
