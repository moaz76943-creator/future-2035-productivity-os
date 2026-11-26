// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Home';

  @override
  String get navTasks => 'Mga gawain';

  @override
  String get navFocus => 'Focus';

  @override
  String get navCalendar => 'Kalendaryo';

  @override
  String get navSpaces => 'Mga espasyo';

  @override
  String get moduleProjects => 'Mga proyekto';

  @override
  String get moduleNotes => 'Mga tala';

  @override
  String get moduleFlashcards => 'Mga flashcard';

  @override
  String get moduleGoals => 'Mga layunin';

  @override
  String get moduleHabits => 'Mga gawi';

  @override
  String get moduleAnalytics => 'Mga insight';

  @override
  String get moduleSearch => 'Maghanap';

  @override
  String get moduleAssistant => 'Assistant';

  @override
  String get moduleSettings => 'Mga setting';

  @override
  String get moduleTrash => 'Basurahan';

  @override
  String get actionSave => 'I-save';

  @override
  String get actionCancel => 'Kanselahin';

  @override
  String get actionDelete => 'Burahin';

  @override
  String get actionEdit => 'I-edit';

  @override
  String get actionDone => 'Tapos na';

  @override
  String get actionAdd => 'Idagdag';

  @override
  String get actionCreate => 'Gumawa';

  @override
  String get actionClose => 'Isara';

  @override
  String get actionBack => 'Bumalik';

  @override
  String get actionUndo => 'I-undo';

  @override
  String get actionRestore => 'Ibalik';

  @override
  String get actionRetry => 'Subukang muli';

  @override
  String get actionContinue => 'Magpatuloy';

  @override
  String get actionSkip => 'Laktawan';

  @override
  String get actionArchive => 'I-archive';

  @override
  String get actionUnarchive => 'Alisin sa archive';

  @override
  String get actionPin => 'I-pin';

  @override
  String get actionUnpin => 'I-unpin';

  @override
  String get actionMore => 'Higit pang opsyon';

  @override
  String get actionClear => 'I-clear';

  @override
  String get actionSearch => 'Maghanap';

  @override
  String get actionSort => 'Ayusin';

  @override
  String get actionShare => 'Ibahagi';

  @override
  String get actionImport => 'Mag-import';

  @override
  String get actionExport => 'Mag-export';

  @override
  String get actionPause => 'I-pause';

  @override
  String get actionResume => 'Ituloy';

  @override
  String get actionStart => 'Simulan';

  @override
  String get actionStop => 'Ihinto';

  @override
  String get actionComplete => 'Kumpletuhin';

  @override
  String get actionDeleteForever => 'Burahin nang tuluyan';

  @override
  String get actionEmptyTrash => 'Alisan ng laman ang basurahan';

  @override
  String get actionUnlink => 'Alisin ang link';

  @override
  String get actionCustomize => 'I-customize';

  @override
  String get actionPreview => 'Preview';

  @override
  String get actionLog => 'Itala ang progreso';

  @override
  String get stateLoading => 'Naglo-load…';

  @override
  String get stateSaving => 'Sine-save…';

  @override
  String get stateSaved => 'Na-save';

  @override
  String get stateUnsaved => 'May mga pagbabagong hindi pa naise-save';

  @override
  String get errorGenericTitle => 'May nangyaring mali';

  @override
  String get errorGenericMessage => 'Ligtas ang iyong data. Pakisubukang muli.';

  @override
  String get errorLoadFailed => 'Hindi ma-load ang nilalamang ito.';

  @override
  String get errorSaveFailed => 'Hindi ma-save. Nandito pa rin ang iyong mga pagbabago.';

  @override
  String get validationRequired => 'Kailangan ang field na ito';

  @override
  String get validationTitleRequired => 'Pakilagay ang pamagat';

  @override
  String get validationNameRequired => 'Pakilagay ang pangalan';

  @override
  String get validationTooLong => 'Masyado itong mahaba';

  @override
  String get validationEndBeforeStart => 'Dapat nasa pagkatapos ng simula ang wakas';

  @override
  String get validationStartAfterDue => 'Dapat mauna ang petsa ng simula sa takdang petsa';

  @override
  String get validationPositiveNumber => 'Maglagay ng numerong higit sa zero';

  @override
  String get validationDependencyCycle => 'Lilikha ito ng paikot na dependency';

  @override
  String get validationInvalidRepeat => 'Hindi wasto ang tuntuning ito ng pag-uulit';

  @override
  String get deletedItem => 'Inilipat sa basurahan';

  @override
  String get untitled => 'Walang pamagat';

  @override
  String get noProject => 'Walang proyekto';

  @override
  String get greetingMorning => 'Magandang umaga';

  @override
  String get greetingAfternoon => 'Magandang hapon';

  @override
  String get greetingEvening => 'Magandang gabi';

  @override
  String get dashFocusToday => 'Focus ngayong araw';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done sa $target';
  }

  @override
  String get dashStartFocus => 'Simulan ang focus';

  @override
  String get dashFocusRunning => 'Kasalukuyang session';

  @override
  String get dashTodayTasks => 'Takda ngayong araw';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Mga gawi ngayong araw';

  @override
  String get dashGoals => 'Mga layunin';

  @override
  String get dashReview => 'Review';

  @override
  String get dashRecentNotes => 'Mga kamakailang tala';

  @override
  String get dashInsight => 'Mungkahi';

  @override
  String get dashSeeAll => 'Tingnan lahat';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card na dapat i-review',
      one: '$count card na dapat i-review',
      zero: 'Walang card na dapat i-review',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'I-review ngayon';

  @override
  String get dashCustomizeTitle => 'Mga seksyon ng dashboard';

  @override
  String get dashCustomizeHint => 'Piliin kung ano ang lalabas sa iyong home screen.';

  @override
  String get dashSectionFocus => 'Focus';

  @override
  String get dashSectionToday => 'Mga gawaing takda ngayong araw';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Mga gawi';

  @override
  String get dashSectionGoals => 'Mga layunin';

  @override
  String get dashSectionReview => 'Review ng flashcard';

  @override
  String get dashSectionNotes => 'Mga kamakailang tala';

  @override
  String get dashSectionInsight => 'Mga mungkahi';

  @override
  String get quickAddTask => 'Bagong gawain';

  @override
  String get quickAddNote => 'Bagong tala';

  @override
  String get quickAddEvent => 'Bagong event';

  @override
  String get quickStartFocus => 'Focus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mayroon kang $count gawaing lampas na sa takda. Unahin ang pinakamahalaga.',
      one: 'Mayroon kang $count gawaing lampas na sa takda. Unahin ang pinakamahalaga.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return '$minutes minuto na lang bago mo maabot ang pang-araw-araw mong target sa focus.';
  }

  @override
  String get insightCardsDue => 'I-review na ang mga flashcard na dapat i-review habang sariwa pa.';

  @override
  String get insightAllClear =>
      'Maayos ang lahat. Planuhin ang bukas o magpahinga nang may kamalayan.';

  @override
  String insightHabitStreak(String habit) {
    return 'Panatilihin ang streak mo: bukas pa ang $habit ngayong araw.';
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
  String get focusModeOpen => 'Bukas';

  @override
  String get focusPhaseWork => 'Focus';

  @override
  String get focusPhaseShortBreak => 'Maikling pahinga';

  @override
  String get focusPhaseLongBreak => 'Mahabang pahinga';

  @override
  String get focusReady => 'Handa kapag handa ka na';

  @override
  String get focusPaused => 'Naka-pause';

  @override
  String get focusRunning => 'Naka-focus';

  @override
  String get focusDuration => 'Tagal';

  @override
  String get focusLinkTask => 'Mag-link ng gawain';

  @override
  String get focusLinkedTask => 'Ginagawa';

  @override
  String get focusNoTask => 'Walang naka-link na gawain';

  @override
  String focusCycle(int current, int total) {
    return 'Cycle $current sa $total';
  }

  @override
  String get focusSkipBreak => 'Laktawan ang pahinga';

  @override
  String get focusStartBreak => 'Simulan ang pahinga';

  @override
  String get focusStartNext => 'Simulan ang susunod na focus';

  @override
  String get focusSessionComplete => 'Tapos na ang session';

  @override
  String get focusSessionStopped => 'Na-save ang session';

  @override
  String focusSessionSummary(String duration) {
    return 'Nag-focus ka nang $duration.';
  }

  @override
  String get focusAddNote => 'Magdagdag ng tala tungkol sa session na ito';

  @override
  String get focusHistory => 'Kasaysayan';

  @override
  String get focusNoHistory => 'Dito lalabas ang mga natapos na session';

  @override
  String get focusTargets => 'Mga target';

  @override
  String get focusDailyTarget => 'Pang-araw-araw na target';

  @override
  String get focusWeeklyTarget => 'Lingguhang target';

  @override
  String get focusOutcomeCompleted => 'Natapos';

  @override
  String get focusOutcomeInterrupted => 'Maagang inihinto';

  @override
  String get focusRecovered => 'Nagpatuloy ang session mo habang nakasara ang app.';

  @override
  String get focusCompletedWhileAway =>
      'Natapos ang isang session habang nakasara ang app at na-save na ito.';

  @override
  String get focusNotificationsOff =>
      'Naka-off ang mga notification. Hindi ka aabisuhan kapag natapos ang session.';

  @override
  String get focusBatteryHint =>
      'May mga device na nagpa-pause ng app sa background. Nananatiling tumpak ang timer, pero maaaring maantala ang mga alerto. Payagan ang walang limitasyong paggamit ng baterya para sa maaasahang alerto.';

  @override
  String get focusOpenSettings => 'Buksan ang mga setting';

  @override
  String get focusStopConfirmTitle => 'Ihinto ang session na ito?';

  @override
  String get focusStopConfirmMessage => 'Mase-save ang oras na naka-focus ka hanggang ngayon.';

  @override
  String get focusDiscard => 'Itapon';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuto',
      one: '$minutes minuto',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time ang natitira';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time ang lumipas';
  }

  @override
  String get focusDeleteSession => 'Burahin ang session';

  @override
  String get tasksTitle => 'Mga gawain';

  @override
  String get tasksViewToday => 'Ngayon';

  @override
  String get tasksViewUpcoming => 'Paparating';

  @override
  String get tasksViewAll => 'Lahat';

  @override
  String get tasksViewOverdue => 'Lampas sa takda';

  @override
  String get tasksViewCompleted => 'Natapos';

  @override
  String get tasksQuickAddHint => 'Magdagdag ng gawain…';

  @override
  String get tasksEmptyTitle => 'Wala nang gagawin';

  @override
  String get tasksEmptyMessage => 'Magdagdag ng gawain para simulang hubugin ang araw mo.';

  @override
  String get tasksEmptyCompleted => 'Dito lalabas ang mga natapos na gawain.';

  @override
  String get taskNew => 'Bagong gawain';

  @override
  String get taskEdit => 'I-edit ang gawain';

  @override
  String get taskTitleLabel => 'Pamagat';

  @override
  String get taskTitleHint => 'Ano ang kailangang gawin?';

  @override
  String get taskDescriptionLabel => 'Paglalarawan';

  @override
  String get taskNotesLabel => 'Mga tala';

  @override
  String get taskPriority => 'Priyoridad';

  @override
  String get priorityNone => 'Wala';

  @override
  String get priorityLow => 'Mababa';

  @override
  String get priorityMedium => 'Katamtaman';

  @override
  String get priorityHigh => 'Mataas';

  @override
  String get priorityUrgent => 'Apurahan';

  @override
  String get taskDueDate => 'Takdang petsa';

  @override
  String get taskStartDate => 'Petsa ng simula';

  @override
  String get taskReminder => 'Paalala';

  @override
  String get taskRepeat => 'Ulitin';

  @override
  String get taskProject => 'Proyekto';

  @override
  String get taskCategory => 'Kategorya';

  @override
  String get taskCategoryHint => 'hal. Trabaho, Bahay, Pag-aaral';

  @override
  String get taskEstimateMinutes => 'Tantiya (minuto)';

  @override
  String get taskTracked => 'Naitalang focus';

  @override
  String get taskLabels => 'Mga label';

  @override
  String get taskAddLabel => 'Bagong label';

  @override
  String get taskChecklist => 'Checklist';

  @override
  String get taskAddChecklistItem => 'Magdagdag ng item';

  @override
  String get taskSubtasks => 'Mga subtask';

  @override
  String get taskAddSubtask => 'Magdagdag ng subtask';

  @override
  String get taskDependencies => 'Hinaharangan ng';

  @override
  String get taskAddDependency => 'Magdagdag ng humaharang na gawain';

  @override
  String get taskLinkedNotes => 'Mga naka-link na tala';

  @override
  String get taskSetTime => 'Itakda ang oras';

  @override
  String get taskNoDate => 'Walang petsa';

  @override
  String get taskCompleted => 'Natapos ang gawain';

  @override
  String get taskNextOccurrence => 'Nagawa ang susunod na ulit';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days araw nang lampas',
      one: '$days araw nang lampas',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Markahang tapos ang \"$title\"';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Markahang hindi pa tapos ang \"$title\"';
  }

  @override
  String get sortSmart => 'Matalino';

  @override
  String get sortDueDate => 'Takdang petsa';

  @override
  String get sortPriority => 'Priyoridad';

  @override
  String get sortCreated => 'Pinakabago';

  @override
  String get sortTitle => 'Pamagat';

  @override
  String get filterAllProjects => 'Lahat ng proyekto';

  @override
  String get filterAnyPriority => 'Anumang priyoridad';

  @override
  String get filterTitle => 'I-filter at ayusin';

  @override
  String get dateToday => 'Ngayon';

  @override
  String get dateTomorrow => 'Bukas';

  @override
  String get dateYesterday => 'Kahapon';

  @override
  String get repeatNever => 'Hindi umuulit';

  @override
  String get repeatDaily => 'Araw-araw';

  @override
  String get repeatWeekdays => 'Tuwing araw ng trabaho';

  @override
  String get repeatWeekly => 'Linggo-linggo';

  @override
  String get repeatMonthly => 'Buwan-buwan';

  @override
  String get repeatYearly => 'Taon-taon';

  @override
  String get repeatCustom => 'Pasadya';

  @override
  String get repeatEvery => 'Ulitin tuwing';

  @override
  String get repeatOnDays => 'Sa mga araw';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'araw', one: 'araw');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'linggo',
      one: 'linggo',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'buwan', one: 'buwan');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'taon', one: 'taon');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count beses',
      one: '$count beses',
    );
    return 'Matatapos pagkatapos ng $_temp0';
  }

  @override
  String get repeatEndsNever => 'Hindi natatapos';

  @override
  String get reminderAtTime => 'Sa oras ng event';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuto bago',
      one: '$minutes minuto bago',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours oras bago',
      one: '$hours oras bago',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 araw bago';

  @override
  String get projectsTitle => 'Mga proyekto';

  @override
  String get projectsEmptyTitle => 'Wala pang proyekto';

  @override
  String get projectsEmptyMessage =>
      'Pagsamahin ang magkakaugnay na gawain, tala at oras ng focus.';

  @override
  String get projectNew => 'Bagong proyekto';

  @override
  String get projectEdit => 'I-edit ang proyekto';

  @override
  String get projectName => 'Pangalan';

  @override
  String get projectDescription => 'Paglalarawan';

  @override
  String get projectGoal => 'Layunin';

  @override
  String get projectDeadline => 'Deadline';

  @override
  String get projectColor => 'Kulay';

  @override
  String get projectIcon => 'Icon';

  @override
  String get projectProgress => 'Progreso';

  @override
  String projectTasksDone(int done, int total) {
    return '$done sa $total gawain ang tapos';
  }

  @override
  String get projectFocusTime => 'Oras ng focus';

  @override
  String get projectArchived => 'Mga naka-archive na proyekto';

  @override
  String get projectShowArchived => 'Ipakita ang naka-archive';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days araw na lang',
      one: '$days araw na lang',
      zero: 'Takda ngayong araw',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Lampas na sa deadline';

  @override
  String get calendarTitle => 'Kalendaryo';

  @override
  String get calendarMonth => 'Buwan';

  @override
  String get calendarWeek => 'Linggo';

  @override
  String get calendarDay => 'Araw';

  @override
  String get calendarToday => 'Ngayon';

  @override
  String get calendarPrevious => 'Nakaraan';

  @override
  String get calendarNext => 'Susunod';

  @override
  String get calendarNoEvents => 'Walang naka-iskedyul';

  @override
  String get calendarAllDay => 'Buong araw';

  @override
  String get eventNew => 'Bagong event';

  @override
  String get eventEdit => 'I-edit ang event';

  @override
  String get eventTitleHint => 'Pamagat ng event';

  @override
  String get eventStarts => 'Magsisimula';

  @override
  String get eventEnds => 'Matatapos';

  @override
  String get eventKind => 'Uri';

  @override
  String get eventKindEvent => 'Event';

  @override
  String get eventKindTimeBlock => 'Time block';

  @override
  String get eventKindFocus => 'Session ng focus';

  @override
  String get eventKindGoal => 'Personal na layunin';

  @override
  String get eventDescription => 'Mga detalye';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nagsasapaw sa $count event',
      one: 'Nagsasapaw sa $count event',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'May salungatan sa iskedyul sa araw na ito';

  @override
  String get calendarTaskDue => 'Takda ng gawain';

  @override
  String get calendarDragHint => 'Pindutin nang matagal at i-drag ang event para i-reschedule';

  @override
  String get calendarRescheduled => 'Nailipat ang event';

  @override
  String get calendarScheduleTask => 'I-iskedyul bilang time block';

  @override
  String get notesTitle => 'Mga tala';

  @override
  String get notesViewAll => 'Lahat';

  @override
  String get notesViewPinned => 'Naka-pin';

  @override
  String get notesViewFavorites => 'Mga paborito';

  @override
  String get notesViewArchived => 'Naka-archive';

  @override
  String get notesTags => 'Mga tag';

  @override
  String get notesNewNotebook => 'Bagong notebook';

  @override
  String get notesNoNotebook => 'Walang notebook';

  @override
  String get notesEmptyTitle => 'Isang blangkong canvas';

  @override
  String get notesEmptyMessage => 'Itala ang mga ideya, tala ng pulong at kaalaman.';

  @override
  String get noteTitleHint => 'Pamagat';

  @override
  String get noteBodyHint =>
      'Magsimulang magsulat… Gamitin ang # para sa tag at [[Pamagat]] para i-link ang mga tala.';

  @override
  String get noteFavorite => 'Paborito';

  @override
  String get noteUnfavorite => 'Alisin sa mga paborito';

  @override
  String get noteMoveTo => 'Ilipat sa notebook';

  @override
  String get noteBacklinks => 'Naka-link mula sa';

  @override
  String get noteLinkedTasks => 'Mga naka-link na gawain';

  @override
  String get noteLinkTask => 'Mag-link ng gawain';

  @override
  String get noteLinkProject => 'Proyekto';

  @override
  String get noteFormatHeading => 'Heading';

  @override
  String get noteFormatBold => 'Bold';

  @override
  String get noteFormatItalic => 'Italic';

  @override
  String get noteFormatList => 'Listahang may bullet';

  @override
  String get noteFormatChecklist => 'Checklist';

  @override
  String get noteFormatLink => 'Link';

  @override
  String noteEdited(String time) {
    return 'Na-edit $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count salita',
      one: '$count salita',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Mga flashcard';

  @override
  String get flashEmptyTitle => 'Gawin ang una mong deck';

  @override
  String get flashEmptyMessage =>
      'Ipinapakita ng spaced repetition ang bawat card bago mo ito makalimutan.';

  @override
  String get deckNew => 'Bagong deck';

  @override
  String get deckEdit => 'I-edit ang deck';

  @override
  String get deckName => 'Pangalan ng deck';

  @override
  String get deckDescription => 'Paglalarawan';

  @override
  String get deckDailyNew => 'Mga bagong card bawat araw';

  @override
  String get deckDailyReview => 'Pang-araw-araw na target ng review';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card',
      one: '$count card',
      zero: 'Walang card',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Takda';

  @override
  String get deckNewCards => 'Bago';

  @override
  String get deckMature => 'Gamay na';

  @override
  String get deckStudy => 'Mag-aral';

  @override
  String get deckNothingDue => 'Walang dapat i-review ngayon. Bumalik mamaya.';

  @override
  String get deckEmptyCards => 'Magdagdag ng mga card para magsimulang matuto.';

  @override
  String get cardNew => 'Bagong card';

  @override
  String get cardEdit => 'I-edit ang card';

  @override
  String get cardFront => 'Harap';

  @override
  String get cardBack => 'Likod';

  @override
  String get cardFrontHint => 'Tanong o termino';

  @override
  String get cardBackHint => 'Sagot o kahulugan';

  @override
  String get cardTags => 'Mga tag';

  @override
  String get cardAddAnother => 'I-save at magdagdag pa';

  @override
  String get reviewShowAnswer => 'Ipakita ang sagot';

  @override
  String get reviewAgain => 'Muli';

  @override
  String get reviewHard => 'Mahirap';

  @override
  String get reviewGood => 'Mabuti';

  @override
  String get reviewEasy => 'Madali';

  @override
  String reviewProgress(int done, int total) {
    return '$done sa $total';
  }

  @override
  String get reviewFinishedTitle => 'Tapos na ang session';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nag-review ka ng $count card.',
      one: 'Nag-review ka ng $count card.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'I-tap para makita ang sagot';

  @override
  String get importCardsTitle => 'Mag-import ng mga card';

  @override
  String get importCardsHint =>
      'Mag-paste ng isang card bawat linya (harap at likod na pinaghihiwalay ng tab o semicolon), o pumili ng file: Excel (.xlsx), CSV, Anki deck (.apkg) o na-export na deck.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card ang na-import',
      one: '$count card ang na-import',
      zero: 'Walang na-import na card',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Hindi ma-import ang nilalamang ito.';

  @override
  String get exportCopied => 'Na-export ang deck';

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
      other: '$count araw',
      one: '$count araw',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Mga layunin';

  @override
  String get goalsEmptyTitle => 'Magsikap para sa isang bagay';

  @override
  String get goalsEmptyMessage =>
      'Magtakda ng pang-araw-araw, lingguhan, buwanan o pangmatagalang layunin at subaybayan ang tunay na progreso.';

  @override
  String get goalNew => 'Bagong layunin';

  @override
  String get goalEdit => 'I-edit ang layunin';

  @override
  String get goalTitleHint => 'Ano ang gusto mong makamit?';

  @override
  String get goalPeriod => 'Panahon';

  @override
  String get goalPeriodDaily => 'Araw-araw';

  @override
  String get goalPeriodWeekly => 'Lingguhan';

  @override
  String get goalPeriodMonthly => 'Buwanan';

  @override
  String get goalPeriodLongTerm => 'Pangmatagalan';

  @override
  String get goalTarget => 'Target';

  @override
  String get goalUnit => 'Yunit';

  @override
  String get goalUnitHint => 'hal. pahina, km, oras';

  @override
  String get goalStatusActive => 'Aktibo';

  @override
  String get goalStatusPaused => 'Naka-pause';

  @override
  String get goalStatusAchieved => 'Nakamit';

  @override
  String get goalPause => 'I-pause ang layunin';

  @override
  String get goalResume => 'Ituloy ang layunin';

  @override
  String get goalMarkAchieved => 'Markahang nakamit';

  @override
  String goalProgressOf(String current, String target) {
    return '$current sa $target';
  }

  @override
  String get goalLogAmount => 'Dami';

  @override
  String get goalLogNote => 'Tala (opsyonal)';

  @override
  String get goalHistory => 'Kasaysayan';

  @override
  String get goalNoHistory => 'Dito lalabas ang naitalang progreso';

  @override
  String get goalLinkedTasks => 'Mga naka-link na gawain';

  @override
  String get goalLinkedTasksHint =>
      'Bawat natapos na naka-link na gawain ay binibilang na 1 para sa layuning ito.';

  @override
  String get goalThisPeriod => 'Panahong ito';

  @override
  String get habitsTitle => 'Mga gawi';

  @override
  String get habitsEmptyTitle => 'Maliliit na hakbang araw-araw';

  @override
  String get habitsEmptyMessage => 'Gumawa ng gawi at markahan ito kapag nagawa mo.';

  @override
  String get habitNew => 'Bagong gawi';

  @override
  String get habitEdit => 'I-edit ang gawi';

  @override
  String get habitNameHint => 'hal. Magbasa ng 20 pahina';

  @override
  String get habitDays => 'Iskedyul';

  @override
  String get habitEveryDay => 'Araw-araw';

  @override
  String get habitTargetPerDay => 'Ilang beses sa isang araw';

  @override
  String get habitReminder => 'Pang-araw-araw na paalala';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw na streak',
      one: '$count araw na streak',
      zero: 'Walang streak',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Pinakamahusay na streak';

  @override
  String get habitCurrentStreak => 'Kasalukuyang streak';

  @override
  String get habitConsistency => 'Konsistensya';

  @override
  String get habitLast90 => 'Huling 90 araw';

  @override
  String get habitPaused => 'Naka-pause';

  @override
  String get habitPause => 'I-pause ang gawi';

  @override
  String get habitResume => 'Ituloy ang gawi';

  @override
  String get habitDoneToday => 'Nagawa ngayong araw';

  @override
  String habitCountToday(int count, int target) {
    return '$count / $target ngayong araw';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Markahan ang $name';
  }

  @override
  String get habitNotScheduledToday => 'Hindi naka-iskedyul ngayong araw';

  @override
  String get analyticsTitle => 'Mga insight';

  @override
  String get rangeWeek => '7 araw';

  @override
  String get rangeMonth => '30 araw';

  @override
  String get rangeQuarter => '90 araw';

  @override
  String get statFocusTime => 'Oras ng focus';

  @override
  String get statSessions => 'Mga session';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed natapos · $interrupted maagang inihinto';
  }

  @override
  String get statTasksDone => 'Mga natapos na gawain';

  @override
  String get statCompletionRate => 'Natapos sa oras';

  @override
  String get statHabitConsistency => 'Konsistensya ng gawi';

  @override
  String get statRetention => 'Pagtanda ng card';

  @override
  String get statReviews => 'Mga review';

  @override
  String get statActiveGoals => 'Mga aktibong layunin';

  @override
  String get statEstimated => 'Tinatayang nagawang trabaho';

  @override
  String get statEstimatedNote => 'Batay sa iyong mga tantiya, hindi sa sinukat na oras';

  @override
  String get statMeasuredNote => 'Sinukat mula sa mga session ng focus';

  @override
  String get chartFocusByDay => 'Mga minuto ng focus bawat araw';

  @override
  String get chartTasksByDay => 'Mga natapos na gawain bawat araw';

  @override
  String get chartTimeByProject => 'Oras bawat proyekto';

  @override
  String get chartProjectProgress => 'Progreso ng proyekto';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: kabuuang $total, pinakamahusay na araw $best';
  }

  @override
  String get analyticsNoData => 'Kulang pa ang data';

  @override
  String get analyticsUnassigned => 'Hindi nakatalaga';

  @override
  String get searchHint => 'Hanapin ang lahat…';

  @override
  String get searchRecent => 'Mga kamakailang paghahanap';

  @override
  String get searchClearRecent => 'I-clear ang mga kamakailang paghahanap';

  @override
  String searchNoResults(String query) {
    return 'Walang resulta para sa \"$query\"';
  }

  @override
  String get searchStartTyping =>
      'Maghanap sa mga gawain, tala, card, layunin, event at iba pa. Nananatili sa device na ito ang paghahanap.';

  @override
  String get searchCatTask => 'Mga gawain';

  @override
  String get searchCatProject => 'Mga proyekto';

  @override
  String get searchCatNote => 'Mga tala';

  @override
  String get searchCatFlashcard => 'Mga flashcard';

  @override
  String get searchCatDeck => 'Mga deck';

  @override
  String get searchCatGoal => 'Mga layunin';

  @override
  String get searchCatHabit => 'Mga gawi';

  @override
  String get searchCatEvent => 'Mga event';

  @override
  String get searchCatSession => 'Mga session';

  @override
  String get searchAll => 'Lahat';

  @override
  String get assistantTitle => 'Assistant';

  @override
  String get assistantIntro =>
      'Tulong sa pagpaplano na tumatakbo sa iyong device. Kung gusto mo, ikonekta ang AI provider na pinili mo para sa mga buod at pagbuo ng teksto.';

  @override
  String get assistantOnDevice => 'Sa device';

  @override
  String get assistantCloud => 'AI provider';

  @override
  String get assistantPlanDay => 'Planuhin ang araw ko';

  @override
  String get assistantPlanDayDesc =>
      'Inaayos ang mga bukas na gawain ayon sa pagkaapurahan, priyoridad at tantiya, at inilalagay sa pagitan ng iyong mga event.';

  @override
  String get assistantExtractTasks => 'Kunin ang mga gawain mula sa tala';

  @override
  String get assistantExtractTasksDesc =>
      'Hinahanap ang mga item sa checklist at linya ng aksyon sa isang tala at ginagawang gawain.';

  @override
  String get assistantMakeCards => 'Gumawa ng flashcard mula sa tala';

  @override
  String get assistantMakeCardsDesc =>
      'Ginagawang card ang mga linyang \"termino: kahulugan\" at tanong/sagot.';

  @override
  String get assistantSummarize => 'Ibuod ang tala';

  @override
  String get assistantSummarizeDesc =>
      'Kailangan ng AI provider. Ipapadala lang ang tala pagkatapos mong kumpirmahin.';

  @override
  String get assistantWorkload => 'Pangkalahatang-tanaw sa workload';

  @override
  String get assistantWorkloadDesc =>
      'Inihahambing ang tinatayang trabaho sa libreng oras mo ngayong linggo.';

  @override
  String get assistantPlanEmpty => 'Walang bukas na gawaing planuhin. Sulitin ang libreng oras.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Libreng oras ng focus ngayong araw: $time';
  }

  @override
  String get assistantPlanOverflow => 'Maaaring hindi ito magkasya ngayong araw:';

  @override
  String get assistantChooseNote => 'Pumili ng tala';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gawain ang nakita',
      one: '$count gawain ang nakita',
      zero: 'Walang nakitang gawain sa talang ito',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count flashcard ang nakita',
      one: '$count flashcard ang nakita',
      zero: 'Walang nakitang flashcard sa talang ito',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Pumili ng deck';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Tinatayang trabaho: $estimated. Libreng oras: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Mas marami kang pinlano kaysa sa oras na mayroon ka. Isiping ilipat ang mga gawaing mababa ang priyoridad.';

  @override
  String get assistantWorkloadOk => 'Kasya ang plano mo sa oras na mayroon ka.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bukas na gawain ang walang tantiya.',
      one: '$count bukas na gawain ang walang tantiya.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI provider';

  @override
  String get assistantProviderOff =>
      'Walang nakakonektang provider. Gumagana pa rin ang mga tool sa device.';

  @override
  String assistantProviderOn(String host) {
    return 'Nakakonekta sa $host';
  }

  @override
  String get assistantEndpoint => 'API endpoint (HTTPS)';

  @override
  String get assistantModel => 'Modelo';

  @override
  String get assistantApiKey => 'API key';

  @override
  String get assistantApiKeyStored => 'Ligtas na nakatago sa device na ito';

  @override
  String get assistantHttpsOnly => 'HTTPS endpoint lang ang pinapayagan';

  @override
  String get assistantConsentTitle => 'Ipadala ang nilalamang ito sa iyong AI provider?';

  @override
  String assistantConsentBody(String host) {
    return 'Aalis sa device na ito ang teksto ng napiling tala at ipoproseso ng $host. Wala nang iba pang ipapadala.';
  }

  @override
  String get assistantConsentAlways => 'Huwag nang magtanong para sa provider na ito';

  @override
  String get assistantSend => 'Ipadala';

  @override
  String get assistantUnavailable => 'Hindi maabot ang AI provider. Subukang muli mamaya.';

  @override
  String get assistantDisabledTitle => 'Naka-off ang assistant';

  @override
  String get assistantDisabledMessage =>
      'I-on ito para gamitin ang mga tool sa pagpaplano. Walang data na aalis sa device maliban kung magkonekta ka ng provider at kumpirmahin ang bawat request.';

  @override
  String get assistantSummaryTitle => 'Buod';

  @override
  String get assistantRemoveProvider => 'Alisin ang provider';

  @override
  String get settingsTitle => 'Mga setting';

  @override
  String get settingsGeneral => 'Pangkalahatan';

  @override
  String get settingsLanguage => 'Wika';

  @override
  String get settingsLanguageSystem => 'Wika ng device';

  @override
  String get settingsAppearance => 'Hitsura';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Maliwanag';

  @override
  String get themeDark => 'Madilim';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get settingsReduceMotion => 'Bawasan ang galaw';

  @override
  String get settingsReduceMotionDesc => 'Bawasan ang mga animation at gumagalaw na background';

  @override
  String get settingsFocus => 'Focus timer';

  @override
  String get settingsWorkLength => 'Tagal ng focus';

  @override
  String get settingsShortBreak => 'Maikling pahinga';

  @override
  String get settingsLongBreak => 'Mahabang pahinga';

  @override
  String get settingsLongBreakEvery => 'Mahabang pahinga pagkatapos ng';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count session',
      one: '$count session',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Awtomatikong simulan ang mga pahinga';

  @override
  String get settingsSound => 'Tunog ng pagtatapos';

  @override
  String get settingsDailyFocusTarget => 'Pang-araw-araw na target sa focus';

  @override
  String get settingsWeeklyFocusTarget => 'Lingguhang target sa focus';

  @override
  String get settingsNotifications => 'Mga notification';

  @override
  String get settingsNotificationsEnable => 'Payagan ang mga paalala';

  @override
  String get settingsQuietHours => 'Tahimik na oras';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Tahimik ang mga paalala ng gawi, layunin at review mula $start–$end';
  }

  @override
  String get settingsReviewReminder => 'Paalala sa review ng flashcard';

  @override
  String get settingsPermissionDenied =>
      'Naka-block ang mga notification sa mga setting ng system.';

  @override
  String get settingsPrivacy => 'Privacy at data';

  @override
  String get settingsPrivacyStatement =>
      'Sa device na ito lang nakatago ang iyong data at naka-encrypt ito. Walang account, analytics o pagsubaybay.';

  @override
  String get settingsBackup => 'Gumawa ng naka-encrypt na backup';

  @override
  String get settingsBackupDesc => 'Protektado ng password na pinili mo';

  @override
  String get settingsRestore => 'I-restore mula sa backup';

  @override
  String get settingsRestoreDesc => 'Papalitan ang lahat ng data sa device na ito';

  @override
  String get settingsErase => 'Burahin ang lahat ng data';

  @override
  String get settingsEraseDesc => 'Permanenteng alisin ang lahat sa device na ito';

  @override
  String get settingsEraseConfirmTitle => 'Burahin ang lahat ng data?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Permanenteng mabubura ang lahat ng gawain, tala, card, layunin, gawi, event at session. I-type ang $word para kumpirmahin.';
  }

  @override
  String get settingsEraseWord => 'BURAHIN';

  @override
  String get settingsErased => 'Nabura ang lahat ng data';

  @override
  String get backupPassword => 'Password ng backup';

  @override
  String get backupPasswordConfirm => 'Kumpirmahin ang password';

  @override
  String backupPasswordHint(int count) {
    return 'Hindi bababa sa $count character. Hindi ito mababawi kapag nawala.';
  }

  @override
  String get backupPasswordMismatch => 'Hindi magkatugma ang mga password';

  @override
  String get backupPasswordShort => 'Masyadong maikli ang password';

  @override
  String get backupCreating => 'Ine-encrypt ang backup…';

  @override
  String get backupCreated => 'Handa nang i-save ang backup';

  @override
  String get backupRestoring => 'Sinusuri at nire-restore…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item ang na-restore',
      one: '$count item ang na-restore',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Mali ang password, o binago ang file.';

  @override
  String get backupNotABackup => 'Hindi backup ng Deep Focus ang file na ito.';

  @override
  String get backupCorrupted => 'Sira ang backup file.';

  @override
  String get backupNewer =>
      'Ginawa ang backup na ito ng mas bagong bersyon ng app. Mag-update muna.';

  @override
  String get backupRestoreConfirmTitle => 'Palitan ang lahat ng data?';

  @override
  String get backupRestoreConfirmBody =>
      'Papalitan ng backup ang lahat ng nasa device na ito ngayon. Kapag nabigo ang pag-restore, walang magbabago.';

  @override
  String get settingsAbout => 'Tungkol sa';

  @override
  String settingsVersion(String version) {
    return 'Bersyon $version';
  }

  @override
  String get settingsLicenses => 'Mga lisensya ng open source';

  @override
  String get settingsAssistant => 'Assistant';

  @override
  String get settingsAssistantEnable => 'I-enable ang assistant';

  @override
  String get settingsDashboard => 'Mga seksyon ng home';

  @override
  String get settingsTrash => 'Basurahan';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Walang laman ang basurahan';

  @override
  String get trashHint => 'Nananatili rito ang mga binurang item hanggang alisin mo ang mga ito.';

  @override
  String get trashTasks => 'Mga gawain';

  @override
  String get trashNotes => 'Mga tala';

  @override
  String get onboardWelcomeTitle => 'Maligayang pagdating sa iyong workspace ng hinaharap';

  @override
  String get onboardWelcomeBody =>
      'Mga gawain, focus, kalendaryo, tala, flashcard, layunin at gawi — magkakasama, maganda at simple.';

  @override
  String get onboardPrivateTitle => 'Pribado sa disenyo';

  @override
  String get onboardPrivateBody =>
      'Nananatili ang lahat sa device na ito, naka-encrypt. Walang account. Walang pagsubaybay. Ikaw ang may kontrol.';

  @override
  String get onboardLanguageTitle => 'Piliin ang iyong wika';

  @override
  String get onboardNotifTitle => 'Malumanay na paalala';

  @override
  String get onboardNotifBody =>
      'Payagan ang mga notification para sa paalala ng gawain at alerto ng focus. Mababago mo ito anumang oras.';

  @override
  String get onboardGetStarted => 'Magsimula';

  @override
  String onboardStep(int current, int total) {
    return 'Hakbang $current sa $total';
  }

  @override
  String get notifChannelReminders => 'Mga paalala';

  @override
  String get notifChannelRemindersDesc => 'Mga paalala sa gawain, event, gawi at layunin';

  @override
  String get notifChannelFocus => 'Focus timer';

  @override
  String get notifChannelFocusDesc => 'Mga alerto kapag natapos ang session ng focus o pahinga';

  @override
  String get notifTaskTitle => 'Paalala sa gawain';

  @override
  String get notifEventTitle => 'Paparating na event';

  @override
  String notifEventBody(String title, String time) {
    return '$title sa $time';
  }

  @override
  String get notifFocusDoneTitle => 'Tapos na ang session ng focus';

  @override
  String get notifFocusDoneBody => 'Magaling. Oras na para magpahinga.';

  @override
  String get notifBreakDoneTitle => 'Tapos na ang pahinga';

  @override
  String get notifBreakDoneBody => 'Handa ka na ba sa susunod na session ng focus?';

  @override
  String get notifHabitTitle => 'Paalala sa gawi';

  @override
  String get notifReviewTitle => 'Handa na ang mga flashcard';

  @override
  String get notifReviewBody => 'Pinatitibay ng maikling review ang iyong memorya.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours oras $minutes min';
  }

  @override
  String durationHours(int hours) {
    return '$hours oras';
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
  String get weekdaysShort => 'Lun,Mar,Miy,Huw,Biy,Sab,Lin';

  @override
  String a11yProgress(int value) {
    return 'Progreso $value porsiyento';
  }

  @override
  String a11yPriority(String level) {
    return 'Priyoridad: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Kulay $index';
  }

  @override
  String get analyticsRangeLabel => 'Saklaw ng oras';

  @override
  String get analyticsRefresh => 'I-refresh';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done sa $total gawaing may takda ang natapos sa oras';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done sa $total gawain ang tapos';
  }

  @override
  String get analyticsNoProjects => 'Walang aktibong proyekto';

  @override
  String get analyticsNoFocus => 'Walang session ng focus sa saklaw na ito';

  @override
  String get analyticsHabitsNone => 'Walang aktibong gawi';

  @override
  String get analyticsRetentionNote => 'Bahagdan ng mga gamay nang card na naalala mo';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Binibilang ang libreng oras mula $start–$end sa mga araw ng trabaho ($days), bawas ang mga event na may oras. Ang tinatayang trabaho ay ang kabuuan ng mga tantiya ng bukas na gawaing takda sa susunod na 7 araw.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Lunes–Biyernes';

  @override
  String get assistantWorkdaysSunThu => 'Linggo–Huwebes';

  @override
  String get assistantWorkloadDayOff => 'Araw ng pahinga';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated nakaplano · $free libre';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Pinlano mula ngayon hanggang $end, sa paligid ng mga event ngayong araw. Una ang mga lampas sa takda, saka priyoridad, takdang petsa at tantiya.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'I-iskedyul bilang time block';

  @override
  String get assistantScheduleConfirmTitle => 'Idagdag ang mga time block sa iyong kalendaryo?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count time block ang idaragdag sa kalendaryo ngayong araw.',
      one: '$count time block ang idaragdag sa kalendaryo ngayong araw.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count time block ang naidagdag',
      one: '$count time block ang naidagdag',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Nasa kalendaryo mo na';

  @override
  String get assistantPlanTimeline => 'Kasya ngayong araw';

  @override
  String get assistantNoEstimate => 'Magdagdag ng tantiya para maplano ang mga ito';

  @override
  String get assistantNoNotes => 'Wala pang tala. Sumulat muna ng tala.';

  @override
  String get assistantNoteEmpty => 'Walang laman ang talang ito.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gawain ang nagawa',
      one: '$count gawain ang nagawa',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card ang nagawa',
      one: '$count card ang nagawa',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Gumawa ng $count',
      one: 'Gumawa ng $count',
      zero: 'Walang napili',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Kinikilala: mga walang check na \"- [ ]\" at mga linyang nagsisimula sa TODO: o To do:';

  @override
  String get assistantCardsHint =>
      'Kinikilala: \"termino: kahulugan\", \"termino — kahulugan\" at mga pares ng linyang Q:/A:';

  @override
  String get assistantProviderHint =>
      'Gumamit ng anumang serbisyong compatible sa OpenAI. Nananatili ang key sa secure na storage ng device na ito at hindi kailanman isinasama sa mga backup.';

  @override
  String get assistantEndpointHelp => 'Halimbawa: https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Iwanang blangko para panatilihin ang naka-save na key';

  @override
  String get assistantApiKeyRequired => 'Maglagay ng API key';

  @override
  String get assistantProviderSaved => 'Na-save ang provider';

  @override
  String get assistantProviderRemoved => 'Inalis ang provider at binura ang key';

  @override
  String get assistantRemoveProviderConfirm =>
      'Alisin ang provider at burahin ang naka-save na API key sa device na ito?';

  @override
  String get assistantAskEveryTime => 'Magtanong bago ang bawat request';

  @override
  String get assistantSummarizing => 'Nagbubuod…';

  @override
  String assistantSummaryNote(String host) {
    return 'Ginawa ng $host. Suriin bago umasa rito.';
  }

  @override
  String get assistantCopy => 'Kopyahin';

  @override
  String get assistantCopied => 'Nakopya';

  @override
  String get assistantConfigure => 'I-set up ang provider';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Nailipat ang lahat ng event sa seryeng ito';

  @override
  String get calendarEventReminder => 'Paalala';

  @override
  String get calendarEventRepeat => 'Ulitin';

  @override
  String get calendarEventColor => 'Kulay';

  @override
  String get calendarDefaultColor => 'Gamitin ang kulay ng uri';

  @override
  String get calendarEventLinkedTask => 'Naka-link na gawain';

  @override
  String get calendarEventNoTask => 'Walang naka-link na gawain';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count event',
      one: '$count event',
      zero: 'Walang event',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gawaing takda',
      one: '$count gawaing takda',
      zero: 'walang gawaing takda',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Magdagdag ng event o time block para planuhin ang araw na ito.';

  @override
  String get calendarNow => 'Kasalukuyang oras';

  @override
  String get calendarRecurring => 'Umuulit';

  @override
  String get calendarEventNotFound => 'Wala na ang event na ito';

  @override
  String get calendarEventLocalTime => 'Ipinapakita ang mga oras sa time zone ng iyong device';

  @override
  String get calendarEventDeleted => 'Inilipat sa basurahan ang event';

  @override
  String get calendarConflictMarker => 'Nagsasapaw sa ibang event';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Nalalapat ang mga pagbabago sa bawat event sa seryeng ito';

  @override
  String get calendarDragHintSeries =>
      'Ang pag-drag sa umuulit na event ay naglilipat sa buong serye';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, takda ng gawain';
  }

  @override
  String get startupErrorTitle => 'Hindi mabuksan ang iyong data';

  @override
  String get startupErrorLocked =>
      'Hindi available ang encryption key para sa data ng device na ito. Walang nabura. Madalas nakatutulong ang pag-restart ng device. Kung kamakailan mong ni-restore ang device, i-restore ang iyong data mula sa naka-encrypt na backup.';

  @override
  String get startupErrorCipher =>
      'Hindi sinusuportahan ng device na ito ang naka-encrypt na storage na kailangan ng app. Walang na-save nang hindi naka-encrypt.';

  @override
  String get startupErrorRetry => 'Subukang muli';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card ang dapat i-review',
      one: '$count card ang dapat i-review',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count takda';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count bago';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Gamay nang card: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Maglagay ng 0 o higit pa';

  @override
  String get flashcardsSearchCards => 'Maghanap ng card';

  @override
  String get flashcardsSearchEmpty => 'Walang card na tugma sa paghahanap';

  @override
  String get flashcardsCardAdded => 'Naidagdag ang card';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Takda $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopyahin sa clipboard';

  @override
  String get flashcardsExportTitle => 'I-export ang deck';

  @override
  String get flashcardsDeleteDeck => 'Burahin ang deck';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, susunod na review sa loob ng $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Tanong: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Sagot: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Ipakita ang tanong';

  @override
  String get flashcardsImportField => 'Mga card na ii-import';

  @override
  String get flashcardsNothingToStudy => 'Walang pag-aaralan';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card na handang pag-aralan',
      one: '$count card na handang pag-aralan',
      zero: 'Walang handang card',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Ayon sa rating';

  @override
  String get flashcardsDeckNotFound => 'Hindi na available ang deck na ito.';

  @override
  String get focusSessionDeleted => 'Nabura ang session';

  @override
  String get focusDeleteConfirm =>
      'Burahin ang session na ito sa kasaysayan? Hindi na ito bibilangin sa iyong mga target.';

  @override
  String get focusUnlinkTask => 'Alisin ang naka-link na gawain';

  @override
  String get focusNoteHint => 'Ano ang ginawa mo?';

  @override
  String get focusTargetCaption => 'Sinukat mula sa mga naka-save na session';

  @override
  String get focusModeLabel => 'Mode ng timer';

  @override
  String focusUpNext(String phase) {
    return 'Susunod: $phase';
  }

  @override
  String get focusStopwatchHint => 'Pataas ang bilang hanggang ihinto mo.';

  @override
  String get focusOpenHint => 'Walang limitasyon sa oras. Ihinto kapag tapos ka na.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Naka-off ang mga paalala sa mga setting. Hindi ka aabisuhan kapag natapos ang session.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Lahat';

  @override
  String get goalsFilterPeriod => 'Filter ng panahon';

  @override
  String get goalsFilterStatus => 'Filter ng status';

  @override
  String get goalsEmptyFiltered => 'Walang layuning tugma sa filter na ito';

  @override
  String goalsDueOn(String date) {
    return 'Takda $date';
  }

  @override
  String get goalsDeadline => 'Deadline (opsyonal)';

  @override
  String get goalsNoDeadline => 'Walang deadline';

  @override
  String get goalsSetDeadline => 'Magtakda ng deadline';

  @override
  String get goalsRemoveDeadline => 'Alisin ang deadline';

  @override
  String get goalsDescription => 'Paglalarawan (opsyonal)';

  @override
  String get goalsTitleLabel => 'Pamagat';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Naabot ang target';

  @override
  String get goalsLogged => 'Naitala ang progreso';

  @override
  String get goalsEntryDeleted => 'Inalis ang entry';

  @override
  String get goalsDeleteEntry => 'Alisin ang entry';

  @override
  String get goalsDeleted => 'Nabura ang layunin';

  @override
  String get goalsMarkActive => 'Markahang aktibo';

  @override
  String get goalsNotFound => 'Hindi na available ang layuning ito';

  @override
  String get goalsLinkTask => 'Mag-link ng gawain';

  @override
  String get goalsNoLinkedTasks => 'Wala pang naka-link na gawain';

  @override
  String get goalsUnlinkTask => 'Alisin ang link ng gawain';

  @override
  String get goalsTaskOpen => 'Hindi pa tapos';

  @override
  String get goalsTaskLinked => 'Na-link ang gawain';

  @override
  String get goalsTaskUnlinked => 'Inalis ang link ng gawain';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count natapos na naka-link na gawain',
      one: '$count natapos na naka-link na gawain',
    );
    return 'Kasama ang $_temp0 sa panahong ito';
  }

  @override
  String get goalsHistoryAllTime =>
      'Nakatago rito ang mga entry mula sa mga naunang panahon pero sa sarili lang nilang panahon binibilang.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done sa $total ang tapos ngayong araw';
  }

  @override
  String get habitsNothingToday => 'Walang gawing naka-iskedyul ngayong araw';

  @override
  String get habitsDecrease => 'Alisin ang isang check-in';

  @override
  String get habitsResetToday => 'I-reset ngayong araw';

  @override
  String get habitsCheckInHint => 'Pindutin nang matagal para i-adjust';

  @override
  String get habitsName => 'Pangalan';

  @override
  String get habitsColor => 'Kulay';

  @override
  String get habitsValidationDays => 'Pumili ng kahit isang araw';

  @override
  String habitsReminderAt(String time) {
    return 'Araw-araw nang $time';
  }

  @override
  String get habitsSetReminder => 'Magtakda ng oras ng paalala';

  @override
  String get habitsRemoveReminder => 'Alisin ang paalala';

  @override
  String get habitsReminderNote =>
      'Lumalabas ang mga paalala sa mga naka-iskedyul na araw kapag pinapayagan ang mga notification.';

  @override
  String get habitsArchived => 'Na-archive ang gawi';

  @override
  String get habitsNotFound => 'Hindi na available ang gawing ito';

  @override
  String get habitsLast30 => 'Huling 30 araw';

  @override
  String get habitsConsistencyNone => 'Kulang pa ang data';

  @override
  String get habitsCalendar => 'Kasaysayan ng check-in';

  @override
  String get habitsCalendarHint => 'I-tap ang isang araw para itama ito.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count sa $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Mga check-in sa huling 90 araw. Konsistensya $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Mga check-in sa huling 90 araw. Kulang pa ang data.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw',
      one: '$count araw',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Hindi naaapektuhan ng mga naka-pause na araw ang streak mo.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'I-archive ang gawi';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count beses sa isang araw',
      one: '$count beses sa isang araw',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Iba pang tala';

  @override
  String get notesAllNotebooks => 'Lahat ng notebook';

  @override
  String get notesNotebookName => 'Pangalan ng notebook';

  @override
  String get notesNotebookColor => 'Kulay';

  @override
  String get notesDeleteNotebook => 'Burahin ang notebook';

  @override
  String get notesDeleteNotebookMessage =>
      'Aalisin ang notebook. Mananatili ang mga tala nito at lalabas sa Lahat ng notebook.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'I-pin ang mahahalagang tala para manatili sa itaas.';

  @override
  String get notesEmptyFavorites => 'Dito lalabas ang mga talang minarkahan mong paborito.';

  @override
  String get notesEmptyArchived => 'Dito lalabas ang mga naka-archive na tala.';

  @override
  String get notesEmptyFiltered => 'Walang talang tugma sa mga filter na ito.';

  @override
  String get notesArchivedSnack => 'Na-archive ang tala';

  @override
  String get notesUnarchivedSnack => 'Naibalik ang tala sa iyong mga tala';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done sa $total ang tapos';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Pag-format';

  @override
  String get notesWrite => 'Sumulat';

  @override
  String get notesPreviewEmpty => 'Wala pang mapi-preview.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Wala pang ibang talang naka-link dito. I-link ang talang ito gamit ang [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Bigyan ng pamagat ang talang ito para ma-link ito ng ibang tala.';

  @override
  String get notesLinkedTasksEmpty => 'Walang gawaing naka-link sa talang ito.';

  @override
  String notesLinkMissing(String title) {
    return 'Wala pang talang may pamagat na \"$title\".';
  }

  @override
  String get notesNotFound => 'Wala na ang talang ito.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Item sa checklist: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Buksan ang tala $title';
  }

  @override
  String get notesTaskDone => 'Natapos';

  @override
  String get notifTimerDoneBody => 'Lumipas na ang oras na itinakda mo.';

  @override
  String get onboardingPrivatePointDevice => 'Sa device na ito lang nakatago, naka-encrypt';

  @override
  String get onboardingPrivatePointAccount => 'Hindi kailangan ng account';

  @override
  String get onboardingPrivatePointTracking => 'Walang analytics, walang pagsubaybay';

  @override
  String get onboardingLanguageBody => 'Mababago mo ito anumang oras sa Mga setting.';

  @override
  String get onboardingNext => 'Susunod';

  @override
  String get projectsActive => 'Aktibo';

  @override
  String get projectNameHint => 'hal. Paglulunsad ng produkto';

  @override
  String get projectGoalHint => 'Ano ang hitsura ng tapos na?';

  @override
  String get projectNoDeadline => 'Walang deadline';

  @override
  String get projectTasksOpen => 'Mga bukas na gawain';

  @override
  String get projectTasksCompleted => 'Mga natapos na gawain';

  @override
  String get projectAddTask => 'Magdagdag ng gawain sa proyekto';

  @override
  String get projectAddNote => 'Bagong tala ng proyekto';

  @override
  String get projectLinkedNotes => 'Mga tala';

  @override
  String get projectNoTasks => 'Wala pang gawain sa proyektong ito';

  @override
  String get projectArchivedBadge => 'Naka-archive';

  @override
  String get projectDeleted => 'Inilipat sa basurahan ang proyekto';

  @override
  String get projectDeleteMessage =>
      'Mananatili ang mga gawain sa listahan mo nang walang proyekto.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent porsiyentong tapos';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resulta',
      one: '$count resulta',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'I-filter ayon sa uri';

  @override
  String searchRecentTap(String query) {
    return 'Hanaping muli ang $query';
  }

  @override
  String get settingsLanguageHint =>
      'Piliin ang wika para sa buong app. Ipinapakita ang mga pangalan sa sarili nilang wika.';

  @override
  String get settingsThemeHint => 'Maliwanag, madilim o sundin ang system';

  @override
  String settingsDecrease(String setting) {
    return 'Bawasan ang $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Dagdagan ang $setting';
  }

  @override
  String get settingsQuietStart => 'Magsisimula';

  @override
  String get settingsQuietEnd => 'Matatapos';

  @override
  String get settingsNotificationsHint =>
      'Sine-save nito ang iyong kagustuhan sa app. Maaari ring humingi ng pahintulot ang system.';

  @override
  String get settingsDashboardHint =>
      'I-drag para ayusin ang pagkakasunod. I-off ang mga seksyong hindi mo kailangan.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Ayusin ang $section';
  }

  @override
  String get settingsDashboardReset => 'Ibalik ang default na pagkakasunod';

  @override
  String get settingsAssistantDesc =>
      'Opsyonal na tulong sa pagpaplano. Walang aalis sa device na ito maliban kung magkonekta ka ng provider.';

  @override
  String get settingsAssistantSetup => 'Pag-set up ng assistant at provider';

  @override
  String get settingsTrashDesc => 'Ibalik o permanenteng burahin ang mga inalis na item';

  @override
  String get settingsEraseFirstBody =>
      'Hindi na ito maaaring bawiin. Isiping gumawa muna ng naka-encrypt na backup.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'I-type ang $word';
  }

  @override
  String get settingsEraseFailed => 'Hindi mabura ang data. Walang nabago.';

  @override
  String get settingsAboutTagline =>
      'Isang pribado at local-first na workspace para sa pagiging produktibo.';

  @override
  String get backupShowPassword => 'Ipakita ang password';

  @override
  String get backupHidePassword => 'Itago ang password';

  @override
  String get backupSaved => 'Na-save ang backup';

  @override
  String get backupFailed => 'Hindi magawa ang backup. Walang nabago sa iyong data.';

  @override
  String get backupReadFailed => 'Hindi mabasa ang napiling file.';

  @override
  String get backupRestoreFailed => 'Nabigo ang pag-restore. Walang nabago.';

  @override
  String get backupShareSubject => 'Naka-encrypt na backup ng Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tuwing $count araw',
      one: 'Tuwing $count araw',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tuwing $count linggo',
      one: 'Tuwing $count linggo',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tuwing $count buwan',
      one: 'Tuwing $count buwan',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tuwing $count taon',
      one: 'Tuwing $count taon',
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
    return 'tuwing $days';
  }

  @override
  String get repeatEndsLabel => 'Matatapos';

  @override
  String get repeatEndsAfter => 'Pagkatapos ng ilang beses';

  @override
  String get repeatCountLabel => 'Mga pag-ulit';

  @override
  String get reminderNone => 'Walang paalala';

  @override
  String get reminderCustomTime => 'Sa partikular na oras';

  @override
  String get a11yDecrease => 'Bawasan';

  @override
  String get a11yIncrease => 'Dagdagan';

  @override
  String get pickTaskTitle => 'Pumili ng gawain';

  @override
  String get pickTaskEmpty => 'Walang bukas na gawain';

  @override
  String get tasksSearchTooltip => 'Maghanap ng gawain';

  @override
  String get tasksSectionOverdue => 'Lampas sa takda';

  @override
  String get tasksSectionToday => 'Ngayon';

  @override
  String get tasksRecurringSemantics => 'Umuulit';

  @override
  String get tasksFilterPriorityAtLeast => 'Pinakamababang priyoridad';

  @override
  String get tasksFilterCategory => 'Kategorya';

  @override
  String get tasksFilterAnyCategory => 'Anumang kategorya';

  @override
  String get tasksFilterLabel => 'Label';

  @override
  String get tasksFilterAnyLabel => 'Anumang label';

  @override
  String get tasksFilterReset => 'I-reset ang mga filter';

  @override
  String get tasksViewByProject => 'Ayon sa proyekto';

  @override
  String get tasksViewByPriority => 'Ayon sa priyoridad';

  @override
  String get tasksViewByCategory => 'Ayon sa kategorya';

  @override
  String get tasksGroupNoCategory => 'Walang kategorya';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gawain',
      one: '$count gawain',
    );
    return 'Hinaharangan ng $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Hinaharangan ang gawaing ito ng mga hindi pa tapos na gawain. Kumpletuhin pa rin?';

  @override
  String get taskStartFocus => 'Mag-focus sa gawaing ito';

  @override
  String get taskRemoveDate => 'Alisin ang petsa';

  @override
  String get taskAllDay => 'Walang partikular na oras';

  @override
  String get taskSaved => 'Na-save ang gawain';

  @override
  String get taskCreated => 'Nagawa ang gawain';

  @override
  String get taskReminderNeedsDue => 'Magtakda ng takdang petsa para gumamit ng relatibong paalala';

  @override
  String get taskSubtaskDetailsHint =>
      'I-save muna ang gawain para magdagdag ng subtask, checklist, label at dependency.';

  @override
  String get taskLabelName => 'Pangalan ng label';

  @override
  String get taskMoreDetails => 'Mga detalye';

  @override
  String get taskPlanning => 'Pagpaplano';

  @override
  String get taskOrganize => 'Ayusin';

  @override
  String get taskBreakdown => 'Paghahati';

  @override
  String get trashDeleteTaskTitle => 'Burahin nang tuluyan ang gawaing ito?';

  @override
  String get trashDeleteNoteTitle => 'Burahin nang tuluyan ang talang ito?';

  @override
  String get trashDeleteBody => 'Hindi na ito maaaring bawiin.';

  @override
  String get trashEmptyTitle => 'Alisan ng laman ang basurahan?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item ang permanenteng mabubura.',
      one: '$count item ang permanenteng mabubura.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Naibalik';

  @override
  String get trashPurged => 'Nabura nang tuluyan';

  @override
  String trashDeletedOn(String date) {
    return 'Binura $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item',
      one: '$count item',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Basahin nang malakas';

  @override
  String get flashcardsTtsUnavailable => 'Hindi available ang text-to-speech sa device na ito.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Walang naka-install na boses para sa wikang ito. Magdagdag sa mga setting ng text-to-speech ng Android.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Kislap',
      'rocket': 'Rocket',
      'book': 'Aklat',
      'work': 'Trabaho',
      'home': 'Bahay',
      'heart': 'Puso',
      'code': 'Code',
      'palette': 'Palette',
      'fitness': 'Fitness',
      'school': 'Paaralan',
      'travel': 'Paglalakbay',
      'money': 'Ipon',
      'other': 'Icon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Higit pang field';

  @override
  String get cardFieldExample => 'Halimbawa';

  @override
  String get cardFieldExplanation => 'Paliwanag';

  @override
  String get cardFieldPronunciation => 'Bigkas';

  @override
  String get cardFieldNotes => 'Karagdagang tala';

  @override
  String get projectMilestones => 'Mga milestone';

  @override
  String get milestoneAdd => 'Magdagdag ng milestone';

  @override
  String get milestoneEdit => 'I-edit ang milestone';

  @override
  String get milestoneTitleLabel => 'Milestone';

  @override
  String get milestoneNoDate => 'Walang petsa';

  @override
  String get milestonesEmpty =>
      'Wala pang milestone. Magdagdag ng mga checkpoint na may petsa para masubaybayan ang proyekto sa kalendaryo.';

  @override
  String get milestoneDeleted => 'Nabura ang milestone';

  @override
  String milestoneDoneA11y(String title) {
    return 'Markahang tapos ang milestone na \"$title\"';
  }

  @override
  String calendarMilestone(String project) {
    return 'Milestone · $project';
  }

  @override
  String get tasksViewInbox => 'Inbox';

  @override
  String get tasksViewArchived => 'Naka-archive';

  @override
  String get tasksEmptyInbox =>
      'Dito napupunta ang mga gawaing walang proyekto o petsa. Ayusin ang mga ito kapag may oras ka.';

  @override
  String get tasksEmptyArchived =>
      'Dito itinatago ang mga naka-archive na gawain, labas sa iyong mga listahan at paalala.';

  @override
  String get taskArchivedBadge => 'Naka-archive';

  @override
  String get taskStatusInProgress => 'Ginagawa';

  @override
  String get taskArchived => 'Na-archive ang gawain';

  @override
  String get taskUnarchived => 'Naibalik ang gawain mula sa archive';

  @override
  String get focusPlanTitle => 'Plano ng session';

  @override
  String focusPlanTotal(String duration) {
    return 'Kabuuang $duration';
  }

  @override
  String get focusPlanRounds => 'Mga session ng focus';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Mahabang pahinga pagkatapos ng';

  @override
  String get focusPlanSkipLastBreak => 'Laktawan ang huling pahinga';

  @override
  String get focusPlanAutoBreaks => 'Awtomatikong simulan ang mga pahinga';

  @override
  String get focusPlanAutoFocus => 'Awtomatikong simulan ang focus pagkatapos ng pahinga';

  @override
  String get focusPlanSave => 'I-save ang plano';

  @override
  String get focusPlanNameHint => 'hal. Paghahanda sa exam';

  @override
  String get focusPlanSaved => 'Na-save ang plano';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min na focus, $rest min na pahinga';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Bawasan ang $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Dagdagan ang $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Session $current sa $total';
  }

  @override
  String get focusSeriesComplete => 'Tapos na ang serye. Magaling!';

  @override
  String get filterAll => 'Lahat';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added na-import · $duplicates duplicate na nilaktawan · $invalid hindi kumpletong row';
  }

  @override
  String get flashcardsSuspend => 'I-suspend ang card';

  @override
  String get flashcardsResume => 'Ituloy ang card';

  @override
  String get flashcardsSuspended => 'Naka-suspend ang card: hindi ito ii-iskedyul';

  @override
  String get flashcardsResumed => 'Itinuloy ang card';

  @override
  String get flashcardsSuspendedFilter => 'Naka-suspend';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown sa $total card';
  }

  @override
  String get flashcardsImportFile => 'Mula sa file';

  @override
  String get speechTitle => 'Pananalita';

  @override
  String get speechAppLanguage => 'Wika ng app';

  @override
  String get speechFrontLanguage => 'Wika ng harap';

  @override
  String get speechBackLanguage => 'Wika ng likod';

  @override
  String get speechRepeat => 'Ulitin ang bawat pagbasa';

  @override
  String get speechRate => 'Bilis';

  @override
  String get speechAutoRead => 'Awtomatikong basahin ang tanong';

  @override
  String get speechHint =>
      'Ginagamit ang mga boses na naka-install sa device na ito, offline. Kung walang boses ang isang wika, sasabihan ka at walang ibang gagamitin.';

  @override
  String get studyHowTitle => 'Paano mo gustong mag-aral?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'I-review ang $count card',
      one: 'I-review ang $count card',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Sanayin ang lahat ng card (walang pagbabago sa iskedyul)';

  @override
  String get studyPracticeMistakes => 'Sanayin ang mga kamakailang mali';

  @override
  String get studyPracticeHint =>
      'Hindi kailanman binabago ng mga practice round kung kailan takda ang mga card. Ina-update ng review ang iskedyul.';

  @override
  String get studyModeClassic => 'Klasiko';

  @override
  String get studyModeReverse => 'Baligtad';

  @override
  String get studyModeMixed => 'Magkabilang direksyon';

  @override
  String get studyModeTyped => 'I-type ang sagot';

  @override
  String get studyModeChoice => 'Maramihang pagpipilian';

  @override
  String get studyModeListening => 'Pakikinig';

  @override
  String get studyPractice => 'pagsasanay';

  @override
  String get studyNoMistakes => 'Walang kamakailang mali sa deck na ito. Ayos!';

  @override
  String get studyTypeAnswer => 'I-type ang iyong sagot';

  @override
  String get studyCheck => 'Suriin';

  @override
  String get studyKnewIt => 'Alam ko';

  @override
  String get studyDidntKnow => 'Hindi ko alam';

  @override
  String studyMistakes(int count) {
    return 'Mali ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Ulitin ang mga maling card';

  @override
  String get studyCorrect => 'Tama';

  @override
  String get studyAlmost => 'Halos — suriin ang baybay';

  @override
  String get studyWrong => 'Hindi pa';

  @override
  String get studyShowText => 'Ipakita ang teksto';

  @override
  String get flashcardsImportFileFailed =>
      'Hindi mabuksan ang file. Maaari mong i-paste na lang ang nilalaman nito.';

  @override
  String get studyNoMatchingCards => 'Wala pang card na tugma sa pagpiling ito.';

  @override
  String get studyPracticeNew => 'Bago lang';

  @override
  String get studyPracticeHard => 'Mahihirap na card';

  @override
  String get studyPracticeFavorites => 'Mga paborito';

  @override
  String get studySessionSize => 'Mga card bawat session';

  @override
  String get studySessionAll => 'Lahat';

  @override
  String get studyOrder => 'Pagkakasunod';

  @override
  String get studyOrderDue => 'Una ang pinakamatagal nang takda';

  @override
  String get studyOrderRandom => 'Halo-halo';

  @override
  String get studyOrderHardest => 'Una ang pinakamahirap';

  @override
  String get flashcardsHard => 'Mahirap';

  @override
  String get flashcardsFavorites => 'Mga paborito';

  @override
  String get flashcardsFavorite => 'Idagdag sa mga paborito';

  @override
  String get flashcardsUnfavorite => 'Alisin sa mga paborito';

  @override
  String get flashcardsDuplicate => 'I-duplicate';

  @override
  String get flashcardsMoveTo => 'Ilipat sa deck';

  @override
  String get flashcardsNoOtherDeck => 'Gumawa muna ng ibang deck.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card ang nailipat',
      one: '$count card ang nailipat',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Magdagdag ng tag';

  @override
  String get flashcardsTagHint => 'hal. pandiwa';

  @override
  String flashcardsSelected(int count) {
    return '$count ang napili';
  }

  @override
  String get flashcardsSelectAll => 'Piliin ang lahat ng nakikita';

  @override
  String flashcardsSelectCard(String front) {
    return 'Piliin ang $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Pagtanda $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Posibleng duplicate';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Mayroon nang “$front” → “$back” ang deck na ito. I-save pa rin?';
  }

  @override
  String get flashcardsSaveAnyway => 'I-save pa rin';

  @override
  String get flashcardsStats => 'Istatistika';

  @override
  String get flashcardsStatTotal => 'Mga card';

  @override
  String get flashcardsStatLearning => 'Pinag-aaralan';

  @override
  String get flashcardsStatMatureCaption => 'Natandaan nang 21+ araw';

  @override
  String get flashcardsStatReviewsToday => 'Mga review ngayong araw';

  @override
  String get flashcardsStatCorrect => 'Mga tamang sagot';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Huling $days araw';
  }

  @override
  String get flashcardsStatForget => 'Antas ng pagkalimot';

  @override
  String get flashcardsStatForgetCaption => '“Muli” sa mga natutunang card';

  @override
  String get flashcardsStatRecall => 'Pagtanda ngayon';

  @override
  String get flashcardsStatRecallCaption => 'Tantiya ng FSRS, mga na-review na card';

  @override
  String flashcardsStatActivity(int count) {
    return 'Mga review bawat araw · $count lahat';
  }

  @override
  String get flashcardsStatHistory => 'Mga pinakahuling sagot';

  @override
  String get flashcardsStatNoHistory =>
      'Wala pang review. Pag-aralan ang deck para makita rito ang progreso mo.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Basahin nang malakas ang $field';
  }

  @override
  String get speechVoice => 'Boses';

  @override
  String get speechVoiceDefault => 'Awtomatiko';

  @override
  String get speechVoiceOnline => 'kailangan ng internet';

  @override
  String get speechTest => 'Subukan ang boses';

  @override
  String get importNext => 'Preview';

  @override
  String get importPreviewTitle => 'Itugma ang mga column sa mga field';

  @override
  String get importIgnoreColumn => 'Huwag pansinin';

  @override
  String importColumn(int n) {
    return 'Column $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready card ang handa · $invalid hindi kumpletong row ang lalaktawan';
  }

  @override
  String get importNeedFrontBack => 'Piliin kung aling mga column ang harap at likod.';

  @override
  String get actionMoveUp => 'Ilipat pataas';

  @override
  String get actionMoveDown => 'Ilipat pababa';

  @override
  String get flashcardsLayoutTitle => 'Layout ng card';

  @override
  String get flashcardsLayoutHint =>
      'Palitan ang pangalan, itago o ayusin ang mga dagdag na field ng deck na ito. Hindi kailanman binabago ang nilalaman ng card.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Ipakita ang $field habang nag-aaral';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Ipakita ang sagot nang paisa-isa';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Unang lalabas ang likod; bubukas ang bawat dagdag na field sa isang tap.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Ipakita ang $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Mas malaki sa $mb MB ang file na ito.';
  }

  @override
  String get flashcardsImage => 'Larawan';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Magdagdag ng larawan';

  @override
  String get flashcardsAddAudio => 'Magdagdag ng audio';

  @override
  String get flashcardsPlayAudio => 'I-play ang recording';

  @override
  String get flashcardsAudioUnavailable => 'Hindi ma-play ang recording na ito sa device na ito.';

  @override
  String get flashcardsCustomFields => 'Ang iyong mga field';

  @override
  String get flashcardsTemplates => 'Mga template';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Field $n';
  }

  @override
  String get flashcardsAddField => 'Magdagdag ng field';

  @override
  String get flashcardsFieldName => 'Pangalan ng field';

  @override
  String get flashcardsFieldLangDefault => 'Wika ng panig';

  @override
  String get flashcardsTemplateConfirm =>
      'Itinatakda ng template kung paano ipinapakita ang mga field at idinaragdag ang mga field nito. Hindi magbabago ang iyong mga card at kasalukuyang field.';

  @override
  String get flashcardsApplyTemplate => 'Ilapat';

  @override
  String get templateVocabulary => 'Bokabularyo';

  @override
  String get templateTwoTranslations => 'Salitang may dalawang salin';

  @override
  String get templateQuestionAnswer => 'Tanong at sagot';

  @override
  String get templateDefinition => 'Termino at kahulugan';

  @override
  String get templateGrammar => 'Tuntunin sa gramatika';

  @override
  String get templateFieldPlural => 'Maramihan';

  @override
  String get templateFieldTranslation2 => 'Ikalawang salin';

  @override
  String get templateFieldSynonyms => 'Mga kasingkahulugan';

  @override
  String get templateFieldRule => 'Tuntunin';

  @override
  String get deckCategory => 'Antas o paksa';

  @override
  String get deckCategoryHint => 'hal. A1, Medisina';

  @override
  String get flashcardsSearchAll => 'Hanapin ang lahat ng card';

  @override
  String get flashcardsSearchAllHint => 'Salita, salin, halimbawa, tala, tag…';

  @override
  String get flashcardsAllDecks => 'Lahat ng deck';

  @override
  String get flashcardsAllLanguages => 'Lahat ng wika';

  @override
  String get flashcardsLangUnset => 'Hindi nakatakda ang wika';

  @override
  String get flashcardsLevelUnset => 'Walang antas o paksa';

  @override
  String get flashcardsByLanguage => 'Progreso ayon sa wika';

  @override
  String get flashcardsByLevel => 'Progreso ayon sa antas o paksa';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks deck · $cards card · $mature gamay na · $due takda · $correct tama (30 araw)';
  }

  @override
  String get flashcardsRecord => 'I-record';

  @override
  String get flashcardsRecording => 'Nagre-record…';

  @override
  String get flashcardsRecordStop => 'Ihinto at itago';

  @override
  String get flashcardsMicDenied =>
      'Naka-off ang access sa mikropono. Payagan ito sa mga setting ng system para makapag-record.';

  @override
  String get flashcardsRecordFailed => 'Hindi available ang pag-record sa device na ito.';

  @override
  String get soundsTitle => 'Mga tunog';

  @override
  String get soundsNature => 'Kalikasan';

  @override
  String get soundsNoise => 'Ingay para sa focus';

  @override
  String get soundRain => 'Ulan';

  @override
  String get soundStorm => 'Bagyong may kulog';

  @override
  String get soundRiver => 'Ilog';

  @override
  String get soundOcean => 'Alon ng dagat';

  @override
  String get soundFire => 'Siga';

  @override
  String get soundForest => 'Mga ibon sa gubat';

  @override
  String get soundNight => 'Gabi ng tag-init';

  @override
  String get soundWhite => 'White noise';

  @override
  String get soundPink => 'Pink noise';

  @override
  String get soundBrown => 'Brown noise';

  @override
  String get soundsPlay => 'I-play';

  @override
  String get soundsSleep => 'Timer sa pagtulog';

  @override
  String get soundsSleepOff => 'Naka-off';

  @override
  String soundsSleepAt(String time) {
    return 'Hihinto nang $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Hanggang $count tunog ang maaaring sabay na tumugtog.';
  }

  @override
  String get soundsHint =>
      'I-tap ang isang tunog para magsimula. Paghaluin ang ilan at itakda ang lakas ng bawat isa.';

  @override
  String get soundsMixer => 'Halo';

  @override
  String soundsVolumeOf(String name) {
    return 'Lakas ng $name';
  }

  @override
  String get soundsChannel => 'Mga tunog ng kalikasan';

  @override
  String get settingsEndTone => 'Tunog ng pagtatapos ng timer';

  @override
  String get toneGentle => 'Malumanay na beep';

  @override
  String get toneBeeps => 'Mga beep';

  @override
  String get toneWood => 'Katok sa kahoy';

  @override
  String get toneBird => 'Huni ng ibon';

  @override
  String get toneStream => 'Batis';

  @override
  String get toneSystem => 'Tunog ng telepono';

  @override
  String get speechOnPhone => 'Sa teleponong ito';

  @override
  String get speechAllLanguages => 'Lahat ng wika';

  @override
  String get speechSearchLanguage => 'Maghanap ng wika';

  @override
  String get speechGetVoices => 'Mag-download ng iba pang boses';

  @override
  String get speechGetVoicesHint =>
      'Maaaring i-download sa mga setting ng pananalita ng telepono ang mga wikang walang boses.';

  @override
  String get speechSettingsFailed =>
      'Hindi mabuksan ang mga setting ng pananalita sa teleponong ito.';

  @override
  String get speechVoiceMissing => 'Walang naka-install na boses';

  @override
  String get speechPause => 'Paghinto sa pagitan ng mga ulit';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Basahin ang halimbawa kasama ang sagot';

  @override
  String get flashListen => 'Makinig';

  @override
  String get flashListenNext => 'Susunod na card';

  @override
  String get flashListenEmpty => 'Walang card na mapapakinggan.';

  @override
  String get flashViewTable => 'Talahanayan';

  @override
  String get flashViewCards => 'Mga card';

  @override
  String get flashSwapSides => 'Pagpalitin ang mga column';

  @override
  String get flashSort => 'Ayusin';

  @override
  String get flashSortNewest => 'Una ang pinakabago';

  @override
  String get flashSortAlpha => 'A hanggang Z';

  @override
  String get flashSortDue => 'Una ang takda';

  @override
  String get flashSortHard => 'Una ang pinakamahirap';

  @override
  String get flashPasteCards => 'I-paste ang mga card';

  @override
  String get flashClipboardEmpty => 'Walang teksto sa clipboard.';

  @override
  String get flashMenuAdd => 'Magdagdag ng mga card';

  @override
  String get flashMenuDeck => 'Deck';

  @override
  String get flashToday => 'Ngayon';

  @override
  String get flashStudyNow => 'Mag-aral';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card ang nasagot',
      one: '$count card ang nasagot',
      zero: 'Walang nasagutang card',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Ulan sa gubat';

  @override
  String get autoBackupTitle => 'Awtomatikong backup';

  @override
  String get autoBackupDesc => 'Araw-araw sa teleponong ito; itinatago ang huling 7';

  @override
  String get autoBackupHint =>
      'Nananatili ang mga kopyang ito sa teleponong ito at mabubura kapag na-uninstall ang app. Para lumipat sa bagong telepono, gamitin ang “I-back up” para mag-save ng file.';

  @override
  String get autoBackupNone => 'Wala pang awtomatikong backup. Gagawin ngayong araw ang una.';

  @override
  String get autoBackupRestore => 'Ibalik';

  @override
  String autoBackupConfirm(String date) {
    return 'Palitan ang lahat ng kasalukuyang data ng backup mula $date?';
  }

  @override
  String get autoBackupRestored => 'Naibalik na.';

  @override
  String get errorLogTitle => 'Log ng error';

  @override
  String get errorLogHint =>
      'Kapag may nagkamali, itatala ito rito: uri lang ng error at kung saan sa code, hindi kailanman ang iyong nilalaman. Ibahagi ito para makatulong ayusin ang problema.';

  @override
  String get errorLogEmpty => 'Walang naitalang error.';

  @override
  String get errorLogClear => 'I-clear';

  @override
  String get soundsWithFocus => 'I-play kasabay ng mga session ng focus';

  @override
  String get soundsWithFocusHint =>
      'Nagsisimula ang iyong halo sa isang session ng focus at humihinto sa mga pahinga.';

  @override
  String get soundsSavedMixes => 'Mga naka-save na halo';

  @override
  String get soundsSaveMix => 'I-save ang halong ito';

  @override
  String get soundsMixNameHint => 'Pangalan, hal. Maulang aklatan';

  @override
  String soundsDeleteMix(String name) {
    return 'Burahin ang halong “$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Isang beses sa isang araw, kapag may takdang card lang';

  @override
  String get settingsReviewTime => 'Oras ng paalala';

  @override
  String get shortcutFocus => 'Focus';

  @override
  String get shortcutNewTask => 'Bagong gawain';

  @override
  String get shortcutReview => 'I-review ang mga card';

  @override
  String get shortcutSounds => 'Mga tunog ng kalikasan';

  @override
  String get myDayTitle => 'Simulan ang araw ko';

  @override
  String get myDayHint => 'Ang araw mo sa isang tingin, saka isang tap para mag-focus';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gawain ngayong araw',
      one: '$count gawain ngayong araw',
      zero: 'Walang gawain ngayong araw',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Wala nang event ngayong araw';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Susunod: $title sa $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gawi pa ang natitira',
      one: '$count gawi pa ang natitira',
      zero: 'Tapos na ang lahat ng gawi',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Magsimula sa session ng focus';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi’ al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi’ al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Ula';

  @override
  String get hijriMonth6 => 'Jumada al-Akhirah';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Sha’ban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qa’dah';

  @override
  String get hijriMonth12 => 'Dhu al-Hijjah';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year AH';
  }

  @override
  String get settingsHijri => 'Mga petsang Hijri';

  @override
  String get settingsHijriHint => 'Ipinapakita sa kalendaryo at sa home screen (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw',
      one: '$count araw',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done sa $goal card ngayong araw';
  }

  @override
  String get studyGoalReached => 'Naabot ang pang-araw-araw na layunin. Magaling!';

  @override
  String get studyWeekTitle => 'Ang linggo mo';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card ang nasagot sa 7 araw',
      one: '$count card ang nasagot sa 7 araw',
      zero: 'Walang nasagutang card sa 7 araw',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration na focus sa 7 araw';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Streak: $current · Pinakamahusay: $best';
  }

  @override
  String get studyGoalTitle => 'Pang-araw-araw na layunin (card)';

  @override
  String get studyGoalOff => 'Naka-off';

  @override
  String get focusDndTitle => 'Huwag Istorbohin habang nagfo-focus';

  @override
  String get focusDndHint => 'Bumubukas sa bawat session ng focus at namamatay sa pahinga';

  @override
  String get focusDndNeedsAccess =>
      'Payagan ang access sa mga setting ng telepono para magamit ito';

  @override
  String get voiceInput => 'Magsalita para mag-type';

  @override
  String get voiceInputPrompt => 'Magsalita ka na';

  @override
  String get voiceInputUnavailable =>
      'Hindi available ang voice typing sa teleponong ito. Mag-install o mag-on ng serbisyo sa pananalita (halimbawa, Speech Recognition & Synthesis ng Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Pagsikat ng araw';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Muslim World League';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Makkah';

  @override
  String get prayerMethodEgypt => 'Egyptian General Authority';

  @override
  String get prayerMethodJordan => 'Jordan, Ministry of Awqaf';

  @override
  String get prayerMethodKarachi => 'University of Islamic Sciences, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Rehiyon ng Gulf';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Türkiye, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malaysia, Indonesia';

  @override
  String get prayerMethodFrance => 'France (12°)';

  @override
  String get prayerMethodRussia => 'Russia, Spiritual Administration';

  @override
  String prayerNotifTitle(String name) {
    return 'Oras na ng $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Oras ng dasal · $time';
  }

  @override
  String get prayerTitle => 'Mga oras ng dasal';

  @override
  String get prayerOffHint =>
      'Piliin ang iyong lungsod para makita ang mga oras ng dasal. Kinakalkula ang mga ito sa telepono; hindi kailangan ng access sa lokasyon.';

  @override
  String get prayerChooseCity => 'Pumili ng lungsod';

  @override
  String get prayerCity => 'Lungsod';

  @override
  String get prayerCitySearch => 'Maghanap ng lungsod';

  @override
  String get prayerMethod => 'Paraan ng pagkalkula';

  @override
  String get prayerHanafiAsr => 'Hanafi Asr (mas huling oras)';

  @override
  String get prayerReminders => 'Mag-abiso sa bawat oras ng dasal';

  @override
  String get prayerPauseFocus => 'I-pause ang focus sa oras ng dasal';

  @override
  String get prayerPauseFocusHint => 'Hihinto ang kasalukuyang session; ituloy pagkatapos ng dasal';

  @override
  String get prayerTurnOff => 'I-off ang mga oras ng dasal';

  @override
  String get prayerAccuracyNote =>
      'Maaaring magkaiba nang ilang minuto ang mga kinakalkulang oras sa iyong lokal na moske.';

  @override
  String prayerNext(String name, String time) {
    return '$name sa $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Pinakabagong format ang gamit ng Anki file na ito. Sa Anki, mag-export muli nang naka-on ang “Support older Anki versions”, saka i-import ang file na iyon.';

  @override
  String get importTemplate => 'Template ng spreadsheet';

  @override
  String get importTemplateFront => 'mansanas';

  @override
  String get importTemplateBack => 'isang bilog na prutas';

  @override
  String get importTemplateExample => 'Kumakain ako ng mansanas araw-araw.';

  @override
  String get importTemplateTag => 'pagkain';

  @override
  String get starterTitle => 'Mga panimulang deck';

  @override
  String get starterHint =>
      'Magdagdag ng isa para agad na masubukang mag-aral. Maaari mo itong i-edit o burahin mamaya.';

  @override
  String get starterAdd => 'Idagdag';

  @override
  String get starterWords => 'Mga pang-araw-araw na salitang Ingles (Arabic)';

  @override
  String get starterCapitals => 'Mga kabisera ng mundo';

  @override
  String get starterElements => 'Mga elementong kemikal';

  @override
  String get settingsAccent => 'Kulay ng accent';

  @override
  String get accentViolet => 'Lila';

  @override
  String get accentBlue => 'Asul';

  @override
  String get accentTeal => 'Teal';

  @override
  String get accentGreen => 'Berde';

  @override
  String get accentRose => 'Rosas';

  @override
  String get accentAmber => 'Amber';

  @override
  String get settingsFlashTextSize => 'Laki ng teksto ng flashcard';

  @override
  String get settingsFlashTextSample => 'Halimbawa';

  @override
  String get widgetStartFocus => 'I-tap para mag-focus';

  @override
  String widgetFocusUntil(String time) {
    return 'Mag-focus hanggang $time';
  }

  @override
  String get widgetNoCardsDue => 'Mga card: tapos na lahat';

  @override
  String get faqMyDayQ => 'Ano ang ginagawa ng “Simulan ang araw ko”?';

  @override
  String get faqMyDayA =>
      'Iniaalok ito ng home screen isang beses sa isang araw: tingnan ang mga gawain ngayon, ang susunod na event, ang natitirang gawi at mga takdang card, saka simulan ang session ng focus sa isang tap. Pindutin nang matagal ang icon ng app para sa mabibilis na aksyon, o idagdag ang widget sa home screen para makita ang oras ng focus at mga takdang card.';

  @override
  String get faqTasksQ => 'Paano ako magdaragdag ng gawaing may paalala?';

  @override
  String get faqTasksA =>
      'I-tap ang Bagong gawain sa Home o ang + sa Mga gawain. I-type ang pamagat o sabihin ito gamit ang mikropono, saka itakda ang takdang petsa, oras at paalala. Unang nakalista ang mga gawaing lampas sa takda.';

  @override
  String get faqFocusQ => 'Paano gumagana ang focus timer?';

  @override
  String get faqFocusA =>
      'Pumili ng Pomodoro, countdown o bukas na oras at pindutin ang Simulan; maaaring awtomatikong sumunod ang mga pahinga. Sa Mga setting, maaari mong piliin ang tunog ng pagtatapos, i-on ang Huwag Istorbohin habang nagfo-focus, at patugtugin ang mga tunog ng kalikasan sa bawat session.';

  @override
  String get faqSoundsQ => 'Puwede ko bang paghaluin ang mga tunog ng kalikasan?';

  @override
  String get faqSoundsA =>
      'Mag-on ng hanggang anim na totoong recording, itakda ang lakas ng bawat isa at i-save ang halo ayon sa pangalan. Patuloy silang tumutugtog sa background, at mapapahinto sila ng sleep timer. Walang musikang ginagamit.';

  @override
  String get faqCalendarQ => 'Kaya bang ipakita ng kalendaryo ang mga petsang Hijri?';

  @override
  String get faqCalendarA =>
      'Oo. Awtomatikong lumalabas ang mga petsang Hijri (Umm al-Qura) sa Arabic at maaaring i-on sa Mga setting para sa anumang wika. Magkakasamang lumalabas ang mga event, gawaing may takdang petsa at milestone ng proyekto.';

  @override
  String get faqFlashcardsQ => 'Paano pinipili ng review kung aling card ang makikita ko?';

  @override
  String get faqFlashcardsA =>
      'Bumabalik pagkatapos ng mas mahabang pagitan ang mga card na alam mo nang mabuti at agad namang bumabalik ang mga namali mo (spaced repetition). I-rate ang bawat sagot ng Muli, Mahirap, Mabuti o Madali. Magtakda ng pang-araw-araw na layunin at panatilihin ang streak mo sa card na Ngayon. Magtakda ng petsa ng exam sa isang deck para makita ang natitirang araw at kung ilang bagong card ang dapat matutunan bawat araw. Ayusin ayon sa \"Aking pagkakasunod\" para i-drag ang mga card sa puwesto, i-tap ang speaker sa alinmang panig para marinig ito, at itakda ang bilis at mga ulit sa menu ng Pananalita.';

  @override
  String get faqImportQ => 'Puwede ba akong magdala ng card mula sa Anki o Excel?';

  @override
  String get faqImportA =>
      'Oo. Sa isang deck, piliin ang Mag-import, saka pumili ng file: Anki (.apkg), Excel (.xlsx) o CSV, at itugma ang mga column. Gamitin ang “Template ng spreadsheet” para sumulat ng card sa computer. Hindi ini-import ang mga larawan at tunog sa loob ng Anki file.';

  @override
  String get faqNotesQ => 'Ano ang kayang gawin ng mga tala?';

  @override
  String get faqNotesA =>
      'Sumulat nang malaya gamit ang checklist at pag-format, i-pin o gawing paborito ang mahahalagang tala, magdagdag ng tag at i-link ang mga tala sa mga gawain. Hinahayaan ka ng button ng mikropono na magdikta. Maaaring magsimula ang bagong tala sa isang template (lektyur, buod ng aklat, journal, lingguhang plano), at nagdaragdag ng larawan ang button ng larawan.';

  @override
  String get faqHabitsQ => 'Paano binibilang ang mga streak ng gawi?';

  @override
  String get faqHabitsA =>
      'Binibilang ang isang araw kapag naabot mo ang target ng gawi sa naka-iskedyul na araw. Ligtas ang streak kapag naka-pause ang gawi. Maaaring may sariling oras ng paalala ang bawat gawi.';

  @override
  String get faqGoalsQ => 'Paano sinusubaybayan ng mga layunin ang progreso?';

  @override
  String get faqGoalsA =>
      'Bigyan ang layunin ng target na dami at yunit, saka itala ang progreso. Ipinapakita ng card nito kung gaano ka na kalayo at kung gaano pa karami ang natitira bago ang deadline.';

  @override
  String get faqProjectsQ => 'Para saan ang mga proyekto?';

  @override
  String get faqProjectsA =>
      'Pagsamahin ang mga gawain sa ilalim ng proyekto, magdagdag ng mga milestone na may petsa at subaybayan ang kabuuang progreso. Lumalabas din sa kalendaryo ang mga milestone.';

  @override
  String get faqInsightsQ => 'Ano ang ipinapakita ng Mga insight?';

  @override
  String get faqInsightsA =>
      'Ang oras mo sa focus, mga natapos na gawain at pag-aaral sa mga araw at linggo, may kasamang malumanay na mungkahi. Kinakalkula ang lahat sa iyong telepono.';

  @override
  String get faqSpacesQ => 'Nasaan ang lahat ng seksyon?';

  @override
  String get faqSpacesA =>
      'Inililista ng Mga espasyo ang bawat bahagi ng app (mga tala, deck, gawi, layunin, proyekto, tunog at iba pa) para manatiling simple ang pangunahing bar.';

  @override
  String get faqBackupQ => 'Paano bina-back up ang data ko?';

  @override
  String get faqBackupA =>
      'Araw-araw, tahimik na nag-iimbak ang app ng naka-encrypt na kopya sa teleponong ito at itinatago ang huling 7. Sa Mga setting, maaari ka ring mag-export ng backup file na protektado ng password at i-restore ito sa ibang telepono.';

  @override
  String get faqPrayerQ => 'Paano gumagana ang mga oras ng dasal?';

  @override
  String get faqPrayerA =>
      'Piliin ang iyong lungsod sa Mga setting → Mga oras ng dasal. Kinakalkula ang mga oras sa telepono gamit ang paraang ginagamit doon, at maaari mong palitan ang paraan at ang paaralan ng Asr. Maaari kang maabisuhan sa bawat dasal, at hihinto ang kasalukuyang session ng focus.';

  @override
  String get faqPrivacyQ => 'Saan nakatago ang data ko?';

  @override
  String get faqPrivacyA =>
      'Sa iyong telepono lang, sa isang naka-encrypt na database. Walang account at walang pagsubaybay. Ginagamit lang ang internet ng mga feature na ikaw mismo ang nag-on, gaya ng opsyonal na assistant.';

  @override
  String get faqAssistantQ => 'Ano ang assistant?';

  @override
  String get faqAssistantA =>
      'Isang opsyonal na katulong na ikinokonekta mo sa sarili mong AI service sa Mga setting. Naka-off ito bilang default at nagtatanong bago magpadala ng anumang teksto ng tala.';

  @override
  String get tourPlanTitle => 'Planuhin ang araw mo';

  @override
  String get tourPlanBody =>
      'Mga gawain, kalendaryo at gawi sa isang tahimik na lugar. Simulan ang bawat umaga sa “Simulan ang araw ko”.';

  @override
  String get tourFocusTitle => 'Mag-focus nang malalim';

  @override
  String get tourFocusBody =>
      'Mga session na may oras, may totoong tunog ng kalikasan, Huwag Istorbohin at malumanay na tunog ng pagtatapos.';

  @override
  String get tourLearnTitle => 'Matuto nang pangmatagalan';

  @override
  String get tourLearnBody =>
      'Mga flashcard na may spaced repetition, pananalita sa maraming wika, at pag-import mula sa Anki o Excel.';

  @override
  String get helpTitle => 'Tulong at mga tanong';

  @override
  String get helpOpen => 'Buksan';

  @override
  String get helpTour => 'Sumama sa tour';

  @override
  String get tourNext => 'Susunod';

  @override
  String get tourDone => 'Simulan na natin';

  @override
  String get transferColTitle => 'Pamagat';

  @override
  String get transferColNotes => 'Mga tala';

  @override
  String get transferColBody => 'Teksto';

  @override
  String get transferColDue => 'Takdang petsa';

  @override
  String get transferColPriority => 'Priyoridad (0-3)';

  @override
  String get transferColDone => 'Tapos';

  @override
  String get transferColProject => 'Proyekto';

  @override
  String get transferColCategory => 'Kategorya';

  @override
  String get transferTitle => 'Import at export';

  @override
  String get transferSaveAs => 'I-save bilang';

  @override
  String get transferImport => 'Mag-import mula sa file';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV o talahanayan sa Word. Mga column: pamagat, takdang petsa (2026-12-31), priyoridad 0-3, tapos, proyekto, tala. Nilalaktawan ang mga gawaing nasa app na.';

  @override
  String get transferImportNotesHint =>
      'Nagiging tala ang mga Word, Markdown o text file. Excel o CSV: isang tala bawat row (pamagat, teksto).';

  @override
  String get transferSaved => 'Na-save ang file';

  @override
  String get transferFailed => 'Hindi magawa ang file. Walang nabago.';

  @override
  String get transferUnsupported =>
      'Hindi mabasa rito ang file na ito. Gumamit ng Excel, CSV, Word, Markdown o teksto.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added ang naidagdag',
      one: '$added ang naidagdag',
      zero: 'Walang bagong maidaragdag',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Teksto';

  @override
  String get transferAllNotes => 'Lahat ng tala';

  @override
  String get transferThisNote => 'Ang talang ito';

  @override
  String get transferDeckFormats => 'I-save bilang Excel, Word o PDF';

  @override
  String get faqFilesQ => 'Puwede ko bang gamitin ang mga Excel, Word o PDF file?';

  @override
  String get faqFilesA =>
      'Oo. May button sa itaas ng Mga gawain at Mga tala para sa import at export (dalawang arrow), at nasa menu ito ng bawat deck. I-save bilang Excel, CSV, Word o PDF, o magdala ng Excel, CSV, Word, Markdown o text file. Maaaring nasa alinmang wika ng app ang mga pangalan ng column, at palaging maaaring i-import muli ang mga file na na-save mo.';

  @override
  String get tplLecture => 'Lektyur';

  @override
  String get tplBook => 'Buod ng aklat';

  @override
  String get tplJournal => 'Talaarawan';

  @override
  String get tplWeek => 'Lingguhang plano';

  @override
  String get tplLectureBody => '## Mahahalagang punto\n- \n\n## Mga tanong\n- [ ] \n\n## Buod\n';

  @override
  String get tplBookBody =>
      '## Pangunahing ideya\n\n## Ang natutunan ko\n- \n\n## Mga sipi\n> \n\n## Gagawin\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Nagpapasalamat ako sa\n- \n\n## Focus ngayong araw\n- [ ] \n\n## Mga tala\n';

  @override
  String get tplWeekBody =>
      '## Mga layunin ngayong linggo\n- [ ] \n\n### Sabado\n- [ ] \n\n### Linggo\n- [ ] \n\n### Lunes\n- [ ] \n\n### Martes\n- [ ] \n\n### Miyerkules\n- [ ] \n\n### Huwebes\n- [ ] \n\n### Biyernes\n- [ ] \n';

  @override
  String get tplHint => 'Magsimula mula sa template';

  @override
  String get noteImage => 'Larawan';

  @override
  String get noteAddImage => 'Magdagdag ng larawan';

  @override
  String get noteImageUnreadable => 'Hindi larawang kayang basahin ng app ang file na ito.';

  @override
  String get noteImageTooLarge => 'Masyadong malaki ang larawang ito.';

  @override
  String get examSet => 'Itakda ang petsa ng exam';

  @override
  String get examDate => 'Petsa ng exam';

  @override
  String get examToday => 'Exam ngayong araw. Good luck!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Exam sa loob ng $count araw',
      one: 'Exam sa loob ng $count araw',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'matuto ng $count bagong card bawat araw',
      one: 'matuto ng $count bagong card bawat araw',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'natutunan na ang lahat ng card, ituloy ang pagre-review';

  @override
  String examRaiseLimit(int count) {
    return 'Magpakita ng $count bagong card bawat araw';
  }

  @override
  String get backupDriveHint =>
      'Para magtago ng kopya online, piliin ang Google Drive (o ibang cloud app) sa susunod na screen ng pag-save.';

  @override
  String get flashShareDeck => 'Ibahagi ang deck sa kaibigan';

  @override
  String get flashSortManual => 'Aking pagkakasunod (i-drag)';

  @override
  String get flashReorderHint => 'Hawakan ang handle at i-drag ang card para ilipat.';

  @override
  String get flashReorderNeedsAll =>
      'I-clear ang paghahanap at mga filter para ma-drag ang mga card.';

  @override
  String get flashDragHandle => 'I-drag para ilipat';

  @override
  String get reportTitle => 'Buwanang ulat';

  @override
  String get reportFocus => 'Oras ng focus';

  @override
  String reportSessions(int count) {
    return '$count session';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Pinakamahusay na araw: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktibong araw';
  }

  @override
  String get reportCards => 'Mga na-review na card';

  @override
  String reportCardsKnown(String percent) {
    return '$percent ang natandaan';
  }

  @override
  String get reportTasks => 'Mga natapos na gawain';

  @override
  String get reportHabits => 'Mga check-in ng gawi';

  @override
  String get reportEmpty => 'Wala pang naitala ngayong buwan.';

  @override
  String get reportSave => 'I-save bilang PDF o Word';

  @override
  String get reportPrevMonth => 'Nakaraang buwan';

  @override
  String get reportNextMonth => 'Susunod na buwan';

  @override
  String get careTitle => 'Pag-aalaga sa telepono at data';

  @override
  String get storageTitle => 'Imbakan';

  @override
  String get storageSubtitle =>
      'Ano ang kumukuha ng espasyo at paglilinis ng mga hindi ginagamit na larawan';

  @override
  String get storagePictures => 'Mga larawan sa tala';

  @override
  String get storageCardMedia => 'Mga larawan at audio sa card';

  @override
  String get storageText => 'Teksto ng mga tala';

  @override
  String get storageFree => 'Libre sa iyong telepono';

  @override
  String get storageLow =>
      'Halos puno na ang telepono mo. Magbakante ng espasyo para patuloy na gumana ang mga backup at paalala.';

  @override
  String storageUnused(int count, String size) {
    return '$count hindi ginagamit na larawan ($size)';
  }

  @override
  String get storageNoUnused => 'Walang hindi ginagamit na larawan. Maayos ang lahat.';

  @override
  String get storageClean => 'Alisin ang mga hindi ginagamit na larawan';

  @override
  String storageCleaned(int count) {
    return '$count larawan ang inalis';
  }

  @override
  String get storageHint =>
      'Itinuturing lang na hindi ginagamit ang larawan kapag walang talang nagpapakita nito, kasama ang mga tala sa basurahan.';

  @override
  String get batteryTitle => 'Panatilihing gumagana ang mga paalala';

  @override
  String get batterySubtitle =>
      'Humihinto ang mga app sa background sa ilang telepono. Suriin ang sa iyo.';

  @override
  String get batteryStatusOk =>
      'Hindi nililimitahan ng pagtitipid ng baterya ang app na ito. Dapat dumating sa oras ang mga paalala at tunog.';

  @override
  String get batteryStatusLimited =>
      'Maaaring ihinto ng pagtitipid ng baterya ang app na ito sa background, kaya maaaring maantala o hindi dumating ang mga paalala at tunog.';

  @override
  String get batteryOpen => 'Buksan ang mga setting ng baterya';

  @override
  String get batteryOpenApp => 'Buksan ang mga setting ng app';

  @override
  String get batteryGeneric =>
      'Sa mga setting ng baterya, piliin ang app na ito at itakda sa Unrestricted (o Don’t optimize).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: buksan din ang Security › Permissions › Autostart at i-on ang app na ito, at itakda ang Battery saver sa No restrictions.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: buksan ang Battery › ang app na ito at payagan ang background activity at auto-launch; i-lock ang app sa listahan ng mga kamakailang app.';

  @override
  String get batterySamsung =>
      'Samsung: Battery › Background usage limits: alisin ang app na ito sa Sleeping apps at Deep sleeping apps.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: App launch › ang app na ito › manage manually, at payagan ang auto-launch, secondary launch at run in background.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Battery › Background power consumption › payagan ang app na ito, at i-enable ang auto-start sa mga pahintulot.';

  @override
  String get whatsNewTitle => 'Ano ang bago';

  @override
  String get whatsNewSubtitle => 'Ang mga pinakabagong pagbabago sa ilang linya';

  @override
  String get whatsNewDone => 'Sige';

  @override
  String get whatsNewOrderTitle => 'I-drag ang mga card sa sarili mong pagkakasunod';

  @override
  String get whatsNewOrderBody =>
      'Sa isang deck, piliin ang Ayusin › Aking pagkakasunod, saka hawakan ang handle at i-drag.';

  @override
  String get whatsNewSpeechTitle => 'Speaker sa bawat panig ng card';

  @override
  String get whatsNewSpeechBody =>
      'I-tap ito para marinig ang salita o ang salin. Nasa menu ng review ang bilis, mga ulit at boses. Natutukoy ang wika mula sa teksto.';

  @override
  String get whatsNewReportTitle => 'Buwanang ulat';

  @override
  String get whatsNewReportBody =>
      'Sa Mga insight, i-tap ang icon ng ulat para makita ang buwan at i-save ito bilang PDF o Word.';

  @override
  String get whatsNewCareTitle => 'Pag-aalaga sa telepono at data';

  @override
  String get whatsNewCareBody =>
      'May pahina na ng storage ang Mga setting na may paglilinis ng larawan at gabay sa baterya para sa brand ng iyong telepono.';

  @override
  String get whatsNewSoundTitle => 'Mas kalmadong tunog';

  @override
  String get whatsNewSoundBody =>
      'Mas malambot at mas tahimik ang mga tunog ng kalikasan, at mas maganda ang mga picture card.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Sinuri $date: maayos na nabubuksan ang pinakahuling backup.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Sinuri $date: may nakitang sirang backup at pinalitan ito ng bago.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Sinuri $date: hindi mabuksan ang pinakahuling backup. Mag-save ng backup file mula sa Mga setting.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Kadalasan, nag-aaral ka bandang $time';
  }

  @override
  String get smartReviewTimeUse => 'Gamitin';

  @override
  String get widgetNewNote => 'Bagong tala';

  @override
  String get noteConnections => 'Mga tag, link at gawain';

  @override
  String get navCards => 'Mga card';

  @override
  String get studyAnswerWay => 'Paano sumagot';

  @override
  String get studyMorePractice => 'Dagdag na pagsasanay';

  @override
  String get studySessionSettings => 'Mga setting ng session';

  @override
  String get focusAdjustTitle => 'Ang iyong session';

  @override
  String get focusPresetsTitle => 'Handa na';

  @override
  String get focusPresetStudy => 'Pag-aaral';

  @override
  String get focusPresetDeep => 'Malalim na trabaho';

  @override
  String get focusPresetQuick => 'Mabilis na sprint';

  @override
  String get focusPresetReading => 'Pagbabasa';

  @override
  String get focusPresetWorkout => 'Mga round ng ehersisyo';

  @override
  String get focusAdjustMinutes => 'Tagal ng focus';

  @override
  String get focusAdjustBreak => 'Tagal ng pahinga';

  @override
  String get focusAdjustRounds => 'Mga round';

  @override
  String get focusRoundsOpen => 'Walang limitasyon';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'I-tap para palitan ang oras';

  @override
  String get flashArrangeDecks => 'Ayusin ang mga deck';

  @override
  String get flashDeckActions => 'Mga opsyon ng deck';

  @override
  String get starterBrowse => 'Mga handang deck';

  @override
  String get starterBrowseHint => 'Magdagdag sa isang tap at magsimulang matuto';

  @override
  String get dashOpenDecks => 'Buksan ang iyong mga card';

  @override
  String speechVoiceNumber(String n) {
    return 'Boses $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Magandang daloy. Magpahinga nang $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Simulan ang pahinga';

  @override
  String tasksFinishAt(String time) {
    return 'Magsimula ngayon at matatapos mo ang lahat bago mag-$time';
  }

  @override
  String get focusCalmPacing => 'Kalmadong takbo';

  @override
  String get focusCalmPacingHint => 'Buong minuto at ang ring lang, walang tumitiktak na segundo';

  @override
  String get focusFlipHint => 'Itaob ang telepono para magsimula';

  @override
  String get focusImmersive => 'Immersive mode';

  @override
  String get focusImmersiveBlack => 'Purong itim (nakatitipid ng baterya)';

  @override
  String get focusFlipToFocus => 'Itaob para mag-focus';

  @override
  String get focusFlipToFocusHint =>
      'Sa immersive mode: ang pagtaob ay nagsisimula, ang pagdampot ay nagpa-pause';

  @override
  String get guardTitle => 'Bantay sa distraksyon';

  @override
  String get guardSubtitle => 'I-pause ang mga nakaaabalang app habang nagfo-focus';

  @override
  String get guardSwitch => 'I-pause ang mga nakaaabalang app';

  @override
  String get guardSwitchHint => 'Sa mga session ng focus at sa oras ng iyong Time Guard';

  @override
  String get guardNeedsAccess => 'Kailangan ang switch ng accessibility: i-tap para i-on';

  @override
  String get guardDisclosureTitle => 'Paano gumagana ang bantay';

  @override
  String get guardDisclosureBody =>
      'Para i-pause ang mga app na pinili mo, ginagamit ng Deep Focus ang accessibility service ng Android para makita kung aling app ang bukas. Kapag naka-on ang \"Isara ang Shorts at Reels\", sinusuri rin nito kung may short-video player sa screen.\n\nWala itong binabasang teksto, walang iniimbak sa nakikita nito at walang ipinapadala kahit saan: nananatili ang lahat sa iyong telepono. Maaari mo itong i-off anumang oras sa mga setting ng Accessibility.';

  @override
  String get guardAgree => 'Sumang-ayon at buksan ang mga setting';

  @override
  String get guardModeGentle => 'Malumanay';

  @override
  String get guardModeStrict => 'Mahigpit';

  @override
  String get guardGentleHint => '5 segundong paghinga, saka ikaw ang pipili';

  @override
  String get guardStrictHint =>
      'Mananatiling sarado ang mga piniling app hanggang matapos ang oras ng focus';

  @override
  String get guardApps => 'Mga app na ipa-pause';

  @override
  String get guardAppsAllowed => 'Mga pinapayagang app';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count app',
      one: '$count app',
      zero: 'Wala pang napili',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Payagan lang ang mga piniling app';

  @override
  String get guardAllowlistHint =>
      'Naka-pause ang lahat ng iba pang app; laging gumagana ang tawag, mga setting at keyboard';

  @override
  String get guardShorts => 'Isara ang Shorts at Reels';

  @override
  String get guardShortsHint =>
      'Anumang oras na naka-on ang bantay. Sa abot ng makakaya: madalas magbago ang mga app na ito';

  @override
  String get guardSchedule => 'Time Guard';

  @override
  String get guardScheduleHint =>
      'Magbantay rin sa mga itinakdang araw at oras, gaya ng paaralan o trabaho';

  @override
  String get guardFrom => 'Mula';

  @override
  String get guardTo => 'Hanggang';

  @override
  String get guardSearchApps => 'Maghanap ng app';

  @override
  String get guardNoApps => 'Walang nakitang app';

  @override
  String get guardPrivacy =>
      'Sa iyong telepono lang gumagana: nakikita ng bantay kung aling app ang bukas, hindi kailanman ang laman nito, at walang ipinapadala.';

  @override
  String get guardBreathe => 'Huminga nang malalim… at ilabas';

  @override
  String get guardQuestion => 'Kailangan mo ba ang app na ito ngayon?';

  @override
  String get guardBackToFocus => 'Bumalik sa focus';

  @override
  String get guardOpenFive => 'Buksan nang 5 minuto';

  @override
  String get guardStrictBody => 'Naka-pause ang app na ito hanggang matapos ang oras ng focus mo.';

  @override
  String get guardShortsClosed => 'Sarado ang mga maikling video habang naka-on ang bantay';

  @override
  String get faqGuardQ => 'Paano ko mapipigilan ang mga nakaaabalang app habang nagfo-focus?';

  @override
  String get faqGuardA =>
      'Buksan ang Focus → mga setting ng timer → Bantay sa distraksyon. Piliin ang mga app, saka Malumanay (5 segundong paghinga at ang tanong na \"Kailangan mo ba ang app na ito ngayon?\") o Mahigpit (mananatili silang sarado). Gumagana ito sa mga session ng focus at, gamit ang Time Guard, sa mga araw at oras na itinakda mo. Ang \"Payagan lang ang mga piniling app\" ay nagpa-pause sa lahat ng iba pa; laging gumagana ang tawag, mga setting at keyboard. Isang beses kang hihilingin ng Android na i-on ang bantay sa mga setting ng Accessibility. Nakikita lang nito kung aling app ang bukas at walang ipinapadala.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Inilipat sa $name';
  }

  @override
  String get notesDragHint => 'Hawakan ang isang tala at i-drag ito sa notebook';

  @override
  String get guardReviewCards => 'I-review na lang ang mga card';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count card ang naghihintay sa iyo',
      one: '$count card ang naghihintay sa iyo',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Emergency: pindutin nang 10 segundo';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Patuloy na pindutin… $n';
  }

  @override
  String get guardWeekTitle => 'Ngayong linggo';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pag-pause',
      one: '$count pag-pause',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bumalik sa focus nang $count beses',
      one: 'bumalik sa focus nang $count beses',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Palitan ang mga salita';

  @override
  String get wordsSubtitle => 'Gamitin ang sarili mong salita para sa anumang teksto sa app';

  @override
  String get wordsHint =>
      'I-tap ang isang teksto para palitan ito. Sa wikang ito lang nalalapat ang mga salita mo at kasama ang mga ito sa mga backup.';

  @override
  String get wordsSearch => 'Maghanap ng teksto';

  @override
  String get wordsChangedOnly => 'Mga binago lang';

  @override
  String wordsOriginal(String text) {
    return 'Orihinal: $text';
  }

  @override
  String get wordsReset => 'Gamitin ang orihinal';

  @override
  String get wordsResetAll => 'I-reset ang lahat ng salita';

  @override
  String get wordsResetAllConfirm => 'Babalik sa orihinal ang bawat teksto sa wikang ito.';

  @override
  String get wordsNone => 'Walang nakitang teksto';

  @override
  String get settingsLanguageSearch => 'Maghanap ng wika';

  @override
  String get settingsLanguageNoMatch => 'Walang tugmang wika';

  @override
  String get soundsMyMusic => 'Iyong musika';

  @override
  String get soundsMusicHint =>
      'Magpatugtog ng audio file mula sa iyong telepono. Walang kinokopya o ina-upload.';

  @override
  String get soundsChooseMusic => 'Pumili ng audio';

  @override
  String get soundsRemoveMusic => 'Alisin ang musika';
}
