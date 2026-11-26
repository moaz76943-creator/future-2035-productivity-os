// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Nyumbani';

  @override
  String get navTasks => 'Majukumu';

  @override
  String get navFocus => 'Umakini';

  @override
  String get navCalendar => 'Kalenda';

  @override
  String get navSpaces => 'Nafasi';

  @override
  String get moduleProjects => 'Miradi';

  @override
  String get moduleNotes => 'Madokezo';

  @override
  String get moduleFlashcards => 'Kadi za kujifunza';

  @override
  String get moduleGoals => 'Malengo';

  @override
  String get moduleHabits => 'Mazoea';

  @override
  String get moduleAnalytics => 'Maarifa';

  @override
  String get moduleSearch => 'Tafuta';

  @override
  String get moduleAssistant => 'Msaidizi';

  @override
  String get moduleSettings => 'Mipangilio';

  @override
  String get moduleTrash => 'Tupio';

  @override
  String get actionSave => 'Hifadhi';

  @override
  String get actionCancel => 'Ghairi';

  @override
  String get actionDelete => 'Futa';

  @override
  String get actionEdit => 'Hariri';

  @override
  String get actionDone => 'Imekamilika';

  @override
  String get actionAdd => 'Ongeza';

  @override
  String get actionCreate => 'Unda';

  @override
  String get actionClose => 'Funga';

  @override
  String get actionBack => 'Rudi';

  @override
  String get actionUndo => 'Tendua';

  @override
  String get actionRestore => 'Rejesha';

  @override
  String get actionRetry => 'Jaribu tena';

  @override
  String get actionContinue => 'Endelea';

  @override
  String get actionSkip => 'Ruka';

  @override
  String get actionArchive => 'Weka kwenye kumbukumbu';

  @override
  String get actionUnarchive => 'Toa kwenye kumbukumbu';

  @override
  String get actionPin => 'Bandika';

  @override
  String get actionUnpin => 'Bandua';

  @override
  String get actionMore => 'Chaguo zaidi';

  @override
  String get actionClear => 'Futa yote';

  @override
  String get actionSearch => 'Tafuta';

  @override
  String get actionSort => 'Panga';

  @override
  String get actionShare => 'Shiriki';

  @override
  String get actionImport => 'Leta';

  @override
  String get actionExport => 'Hamisha';

  @override
  String get actionPause => 'Sitisha';

  @override
  String get actionResume => 'Endelea';

  @override
  String get actionStart => 'Anza';

  @override
  String get actionStop => 'Simamisha';

  @override
  String get actionComplete => 'Kamilisha';

  @override
  String get actionDeleteForever => 'Futa kabisa';

  @override
  String get actionEmptyTrash => 'Safisha tupio';

  @override
  String get actionUnlink => 'Tenganisha';

  @override
  String get actionCustomize => 'Badilisha';

  @override
  String get actionPreview => 'Onyesho la kukagua';

  @override
  String get actionLog => 'Rekodi maendeleo';

  @override
  String get stateLoading => 'Inapakia…';

  @override
  String get stateSaving => 'Inahifadhi…';

  @override
  String get stateSaved => 'Imehifadhiwa';

  @override
  String get stateUnsaved => 'Mabadiliko hayajahifadhiwa';

  @override
  String get errorGenericTitle => 'Hitilafu imetokea';

  @override
  String get errorGenericMessage => 'Data yako iko salama. Tafadhali jaribu tena.';

  @override
  String get errorLoadFailed => 'Maudhui haya hayakuweza kupakiwa.';

  @override
  String get errorSaveFailed => 'Haikuweza kuhifadhi. Mabadiliko yako bado yapo hapa.';

  @override
  String get validationRequired => 'Sehemu hii inahitajika';

  @override
  String get validationTitleRequired => 'Tafadhali weka kichwa';

  @override
  String get validationNameRequired => 'Tafadhali weka jina';

  @override
  String get validationTooLong => 'Hii ni ndefu mno';

  @override
  String get validationEndBeforeStart => 'Mwisho lazima uwe baada ya mwanzo';

  @override
  String get validationStartAfterDue => 'Tarehe ya kuanza lazima iwe kabla ya tarehe ya mwisho';

  @override
  String get validationPositiveNumber => 'Weka nambari kubwa kuliko sifuri';

  @override
  String get validationDependencyCycle => 'Hii ingeunda utegemezi wa mzunguko';

  @override
  String get validationInvalidRepeat => 'Kanuni hii ya kurudia si sahihi';

  @override
  String get deletedItem => 'Imehamishiwa kwenye tupio';

  @override
  String get untitled => 'Bila kichwa';

  @override
  String get noProject => 'Hakuna mradi';

  @override
  String get greetingMorning => 'Habari za asubuhi';

  @override
  String get greetingAfternoon => 'Habari za mchana';

  @override
  String get greetingEvening => 'Habari za jioni';

  @override
  String get dashFocusToday => 'Umakini wa leo';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done kati ya $target';
  }

  @override
  String get dashStartFocus => 'Anza umakini';

  @override
  String get dashFocusRunning => 'Kipindi kinaendelea';

  @override
  String get dashTodayTasks => 'Inaisha leo';

  @override
  String get dashAgenda => 'Ratiba';

  @override
  String get dashHabits => 'Mazoea ya leo';

  @override
  String get dashGoals => 'Malengo';

  @override
  String get dashReview => 'Marudio';

  @override
  String get dashRecentNotes => 'Madokezo ya hivi karibuni';

  @override
  String get dashInsight => 'Pendekezo';

  @override
  String get dashSeeAll => 'Angalia yote';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count za kurudia',
      one: 'Kadi 1 ya kurudia',
      zero: 'Hakuna kadi za kurudia',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Rudia sasa';

  @override
  String get dashCustomizeTitle => 'Sehemu za ukurasa wa nyumbani';

  @override
  String get dashCustomizeHint => 'Chagua kinachoonekana kwenye skrini yako ya nyumbani.';

  @override
  String get dashSectionFocus => 'Umakini';

  @override
  String get dashSectionToday => 'Majukumu ya leo';

  @override
  String get dashSectionAgenda => 'Ratiba';

  @override
  String get dashSectionHabits => 'Mazoea';

  @override
  String get dashSectionGoals => 'Malengo';

  @override
  String get dashSectionReview => 'Marudio ya kadi';

  @override
  String get dashSectionNotes => 'Madokezo ya hivi karibuni';

  @override
  String get dashSectionInsight => 'Mapendekezo';

  @override
  String get quickAddTask => 'Jukumu jipya';

  @override
  String get quickAddNote => 'Dokezo jipya';

  @override
  String get quickAddEvent => 'Tukio jipya';

  @override
  String get quickStartFocus => 'Umakini';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Una majukumu $count yaliyochelewa. Anza na lililo muhimu zaidi.',
      one: 'Una jukumu 1 lililochelewa. Lipange upya au ulimalize kwanza.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Umebakiza dakika $minutes kufikia lengo lako la umakini la kila siku.';
  }

  @override
  String get insightCardsDue => 'Rudia kadi zako sasa zikiwa bado mpya akilini.';

  @override
  String get insightAllClear => 'Kila kitu kiko sawa. Panga kesho au pumzika kwa utulivu.';

  @override
  String insightHabitStreak(String habit) {
    return 'Endeleza mfululizo wako: $habit bado halijafanyika leo.';
  }

  @override
  String get focusTitle => 'Umakini';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Kipima muda';

  @override
  String get focusModeCountUp => 'Saa ya kusimamisha';

  @override
  String get focusModeOpen => 'Huru';

  @override
  String get focusPhaseWork => 'Umakini';

  @override
  String get focusPhaseShortBreak => 'Mapumziko mafupi';

  @override
  String get focusPhaseLongBreak => 'Mapumziko marefu';

  @override
  String get focusReady => 'Tayari ukiwa tayari';

  @override
  String get focusPaused => 'Imesitishwa';

  @override
  String get focusRunning => 'Katika umakini';

  @override
  String get focusDuration => 'Muda';

  @override
  String get focusLinkTask => 'Unganisha jukumu';

  @override
  String get focusLinkedTask => 'Unashughulikia';

  @override
  String get focusNoTask => 'Hakuna jukumu lililounganishwa';

  @override
  String focusCycle(int current, int total) {
    return 'Mzunguko $current kati ya $total';
  }

  @override
  String get focusSkipBreak => 'Ruka mapumziko';

  @override
  String get focusStartBreak => 'Anza mapumziko';

  @override
  String get focusStartNext => 'Anza umakini unaofuata';

  @override
  String get focusSessionComplete => 'Kipindi kimekamilika';

  @override
  String get focusSessionStopped => 'Kipindi kimehifadhiwa';

  @override
  String focusSessionSummary(String duration) {
    return 'Ulikuwa makini kwa $duration.';
  }

  @override
  String get focusAddNote => 'Ongeza dokezo kuhusu kipindi hiki';

  @override
  String get focusHistory => 'Historia';

  @override
  String get focusNoHistory => 'Vipindi vilivyokamilika vitaonekana hapa';

  @override
  String get focusOutcomeCompleted => 'Kimekamilika';

  @override
  String get focusOutcomeInterrupted => 'Kilisimamishwa mapema';

  @override
  String get focusRecovered => 'Kipindi chako kiliendelea programu ilipokuwa imefungwa.';

  @override
  String get focusCompletedWhileAway =>
      'Kipindi kiliisha programu ilipokuwa imefungwa na kimehifadhiwa.';

  @override
  String get focusNotificationsOff => 'Arifa zimezimwa. Hutaarifiwa kipindi kinapoisha.';

  @override
  String get focusBatteryHint =>
      'Baadhi ya vifaa husitisha programu chinichini. Kipima muda kinabaki sahihi, lakini arifa zinaweza kuchelewa. Ruhusu matumizi ya betri bila kikomo kwa arifa za kuaminika.';

  @override
  String get focusOpenSettings => 'Fungua mipangilio';

  @override
  String get focusStopConfirmTitle => 'Simamisha kipindi hiki?';

  @override
  String get focusStopConfirmMessage => 'Muda wa umakini hadi sasa utahifadhiwa.';

  @override
  String get focusDiscard => 'Tupa';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'Dakika $minutes',
      one: 'Dakika 1',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, zimebaki $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, zimepita $time';
  }

  @override
  String get focusDeleteSession => 'Futa kipindi';

  @override
  String get tasksTitle => 'Majukumu';

  @override
  String get tasksViewToday => 'Leo';

  @override
  String get tasksViewUpcoming => 'Yanayokuja';

  @override
  String get tasksViewAll => 'Yote';

  @override
  String get tasksViewOverdue => 'Yaliyochelewa';

  @override
  String get tasksViewCompleted => 'Yaliyokamilika';

  @override
  String get tasksQuickAddHint => 'Ongeza jukumu…';

  @override
  String get tasksEmptyTitle => 'Yote yamekamilika';

  @override
  String get tasksEmptyMessage => 'Ongeza jukumu ili kuanza kupanga siku yako.';

  @override
  String get tasksEmptyCompleted => 'Majukumu yaliyokamilika yataonekana hapa.';

  @override
  String get taskNew => 'Jukumu jipya';

  @override
  String get taskEdit => 'Hariri jukumu';

  @override
  String get taskTitleLabel => 'Kichwa';

  @override
  String get taskTitleHint => 'Nini kinahitaji kufanywa?';

  @override
  String get taskDescriptionLabel => 'Maelezo';

  @override
  String get taskNotesLabel => 'Madokezo';

  @override
  String get taskPriority => 'Kipaumbele';

  @override
  String get priorityNone => 'Hakuna';

  @override
  String get priorityLow => 'Chini';

  @override
  String get priorityMedium => 'Wastani';

  @override
  String get priorityHigh => 'Juu';

  @override
  String get priorityUrgent => 'Haraka';

  @override
  String get taskDueDate => 'Tarehe ya mwisho';

  @override
  String get taskStartDate => 'Tarehe ya kuanza';

  @override
  String get taskReminder => 'Kikumbusho';

  @override
  String get taskRepeat => 'Rudia';

  @override
  String get taskProject => 'Mradi';

  @override
  String get taskCategory => 'Aina';

  @override
  String get taskCategoryHint => 'k.m. Kazi, Nyumbani, Masomo';

  @override
  String get taskEstimateMinutes => 'Makadirio (dakika)';

  @override
  String get taskTracked => 'Umakini uliopimwa';

  @override
  String get taskLabels => 'Lebo';

  @override
  String get taskAddLabel => 'Lebo mpya';

  @override
  String get taskChecklist => 'Orodha ya ukaguzi';

  @override
  String get taskAddChecklistItem => 'Ongeza kipengee';

  @override
  String get taskSubtasks => 'Majukumu madogo';

  @override
  String get taskAddSubtask => 'Ongeza jukumu dogo';

  @override
  String get taskDependencies => 'Limezuiwa na';

  @override
  String get taskAddDependency => 'Ongeza jukumu linalozuia';

  @override
  String get taskLinkedNotes => 'Madokezo yaliyounganishwa';

  @override
  String get taskSetTime => 'Weka saa';

  @override
  String get taskNoDate => 'Hakuna tarehe';

  @override
  String get taskCompleted => 'Jukumu limekamilika';

  @override
  String get taskNextOccurrence => 'Marudio yanayofuata yameundwa';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Limechelewa siku $days',
      one: 'Limechelewa siku 1',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Weka alama kuwa “$title” imekamilika';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Weka alama kuwa “$title” haijakamilika';
  }

  @override
  String get sortSmart => 'Mahiri';

  @override
  String get sortDueDate => 'Tarehe ya mwisho';

  @override
  String get sortPriority => 'Kipaumbele';

  @override
  String get sortCreated => 'Mapya zaidi';

  @override
  String get sortTitle => 'Kichwa';

  @override
  String get filterAllProjects => 'Miradi yote';

  @override
  String get filterAnyPriority => 'Kipaumbele chochote';

  @override
  String get filterTitle => 'Chuja na upange';

  @override
  String get dateToday => 'Leo';

  @override
  String get dateTomorrow => 'Kesho';

  @override
  String get dateYesterday => 'Jana';

  @override
  String get repeatNever => 'Hairudiwi';

  @override
  String get repeatDaily => 'Kila siku';

  @override
  String get repeatWeekdays => 'Kila siku ya kazi';

  @override
  String get repeatWeekly => 'Kila wiki';

  @override
  String get repeatMonthly => 'Kila mwezi';

  @override
  String get repeatYearly => 'Kila mwaka';

  @override
  String get repeatCustom => 'Maalum';

  @override
  String get repeatEvery => 'Rudia kila';

  @override
  String get repeatOnDays => 'Siku za';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'siku', one: 'siku');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'wiki', one: 'wiki');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'miezi', one: 'mwezi');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'miaka', one: 'mwaka');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mara $count',
      one: 'mara 1',
    );
    return 'Inaisha baada ya $_temp0';
  }

  @override
  String get repeatEndsNever => 'Haiishi kamwe';

  @override
  String get reminderAtTime => 'Wakati wa tukio';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'Dakika $minutes kabla',
      one: 'Dakika 1 kabla',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Saa $hours kabla',
      one: 'Saa 1 kabla',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => 'Siku 1 kabla';

  @override
  String get projectsTitle => 'Miradi';

  @override
  String get projectsEmptyTitle => 'Bado hakuna miradi';

  @override
  String get projectsEmptyMessage =>
      'Panga pamoja majukumu, madokezo na muda wa umakini unaohusiana.';

  @override
  String get projectNew => 'Mradi mpya';

  @override
  String get projectEdit => 'Hariri mradi';

  @override
  String get projectName => 'Jina';

  @override
  String get projectDescription => 'Maelezo';

  @override
  String get projectGoal => 'Lengo';

  @override
  String get projectDeadline => 'Tarehe ya mwisho';

  @override
  String get projectColor => 'Rangi';

  @override
  String get projectIcon => 'Aikoni';

  @override
  String get projectProgress => 'Maendeleo';

  @override
  String projectTasksDone(int done, int total) {
    return 'Majukumu $done kati ya $total yamekamilika';
  }

  @override
  String get projectFocusTime => 'Muda wa umakini';

  @override
  String get projectArchived => 'Miradi iliyohifadhiwa';

  @override
  String get projectShowArchived => 'Onyesha iliyohifadhiwa';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Zimebaki siku $days',
      one: 'Imebaki siku 1',
      zero: 'Inaisha leo',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Tarehe ya mwisho imepita';

  @override
  String get calendarTitle => 'Kalenda';

  @override
  String get calendarMonth => 'Mwezi';

  @override
  String get calendarWeek => 'Wiki';

  @override
  String get calendarDay => 'Siku';

  @override
  String get calendarToday => 'Leo';

  @override
  String get calendarPrevious => 'Iliyotangulia';

  @override
  String get calendarNext => 'Inayofuata';

  @override
  String get calendarNoEvents => 'Hakuna kilichopangwa';

  @override
  String get calendarAllDay => 'Siku nzima';

  @override
  String get eventNew => 'Tukio jipya';

  @override
  String get eventEdit => 'Hariri tukio';

  @override
  String get eventTitleHint => 'Kichwa cha tukio';

  @override
  String get eventStarts => 'Inaanza';

  @override
  String get eventEnds => 'Inaisha';

  @override
  String get eventKind => 'Aina';

  @override
  String get eventKindEvent => 'Tukio';

  @override
  String get eventKindTimeBlock => 'Kipande cha muda';

  @override
  String get eventKindFocus => 'Kipindi cha umakini';

  @override
  String get eventKindGoal => 'Lengo binafsi';

  @override
  String get eventDescription => 'Maelezo zaidi';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Linaingiliana na matukio $count',
      one: 'Linaingiliana na tukio 1',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Migongano ya ratiba siku hii';

  @override
  String get calendarTaskDue => 'Jukumu linaisha';

  @override
  String get calendarDragHint => 'Bonyeza kwa muda mrefu na uburute tukio ili ulipange upya';

  @override
  String get calendarRescheduled => 'Tukio limehamishwa';

  @override
  String get calendarScheduleTask => 'Panga kama kipande cha muda';

  @override
  String get notesTitle => 'Madokezo';

  @override
  String get notesViewAll => 'Yote';

  @override
  String get notesViewPinned => 'Yaliyobandikwa';

  @override
  String get notesViewFavorites => 'Vipendwa';

  @override
  String get notesViewArchived => 'Yaliyohifadhiwa';

  @override
  String get notesTags => 'Lebo';

  @override
  String get notesNewNotebook => 'Daftari jipya';

  @override
  String get notesNoNotebook => 'Hakuna daftari';

  @override
  String get notesEmptyTitle => 'Ukurasa mtupu';

  @override
  String get notesEmptyMessage => 'Andika mawazo, madokezo ya mikutano na maarifa.';

  @override
  String get noteTitleHint => 'Kichwa';

  @override
  String get noteBodyHint => 'Anza kuandika… Tumia # kwa lebo na [[Kichwa]] kuunganisha madokezo.';

  @override
  String get noteFavorite => 'Kipendwa';

  @override
  String get noteUnfavorite => 'Ondoa kwenye vipendwa';

  @override
  String get noteMoveTo => 'Hamishia kwenye daftari';

  @override
  String get noteBacklinks => 'Imeunganishwa kutoka';

  @override
  String get noteLinkedTasks => 'Majukumu yaliyounganishwa';

  @override
  String get noteLinkTask => 'Unganisha jukumu';

  @override
  String get noteLinkProject => 'Mradi';

  @override
  String get noteFormatHeading => 'Kichwa kidogo';

  @override
  String get noteFormatBold => 'Herufi nzito';

  @override
  String get noteFormatItalic => 'Italiki';

  @override
  String get noteFormatList => 'Orodha ya vitone';

  @override
  String get noteFormatChecklist => 'Orodha ya ukaguzi';

  @override
  String get noteFormatLink => 'Kiungo';

  @override
  String noteEdited(String time) {
    return 'Imehaririwa $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Maneno $count',
      one: 'Neno 1',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kadi za kujifunza';

  @override
  String get flashEmptyTitle => 'Unda kifurushi chako cha kwanza';

  @override
  String get flashEmptyMessage => 'Marudio yaliyopangwa huonyesha kila kadi kabla tu hujaisahau.';

  @override
  String get deckNew => 'Kifurushi kipya';

  @override
  String get deckEdit => 'Hariri kifurushi';

  @override
  String get deckName => 'Jina la kifurushi';

  @override
  String get deckDescription => 'Maelezo';

  @override
  String get deckDailyNew => 'Kadi mpya kwa siku';

  @override
  String get deckDailyReview => 'Lengo la marudio la kila siku';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count',
      one: 'Kadi 1',
      zero: 'Hakuna kadi',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Za kurudia';

  @override
  String get deckNewCards => 'Mpya';

  @override
  String get deckMature => 'Zilizoimarika';

  @override
  String get deckStudy => 'Jifunze';

  @override
  String get deckNothingDue => 'Hakuna cha kurudia sasa. Rudi baadaye.';

  @override
  String get deckEmptyCards => 'Ongeza kadi ili uanze kujifunza.';

  @override
  String get cardNew => 'Kadi mpya';

  @override
  String get cardEdit => 'Hariri kadi';

  @override
  String get cardFront => 'Mbele';

  @override
  String get cardBack => 'Nyuma';

  @override
  String get cardFrontHint => 'Swali au istilahi';

  @override
  String get cardBackHint => 'Jibu au ufafanuzi';

  @override
  String get cardTags => 'Lebo';

  @override
  String get cardAddAnother => 'Hifadhi na uongeze nyingine';

  @override
  String get reviewShowAnswer => 'Onyesha jibu';

  @override
  String get reviewAgain => 'Tena';

  @override
  String get reviewHard => 'Ngumu';

  @override
  String get reviewGood => 'Nzuri';

  @override
  String get reviewEasy => 'Rahisi';

  @override
  String reviewProgress(int done, int total) {
    return '$done kati ya $total';
  }

  @override
  String get reviewFinishedTitle => 'Kipindi kimekamilika';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Umerudia kadi $count.',
      one: 'Umerudia kadi 1.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Gusa ili kuona jibu';

  @override
  String get importCardsTitle => 'Leta kadi';

  @override
  String get importCardsHint =>
      'Bandika kadi moja kwa kila mstari (mbele na nyuma zikitenganishwa na tabo au nukta-mkato), au chagua faili: Excel (.xlsx), CSV, kifurushi cha Anki (.apkg) au kifurushi kilichohamishwa.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count zimeletwa',
      one: 'Kadi 1 imeletwa',
      zero: 'Hakuna kadi zilizoletwa',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Maudhui haya hayakuweza kuletwa.';

  @override
  String get exportCopied => 'Kifurushi kimehamishwa';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dak $count',
      one: 'Dak 1',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Siku $count',
      one: 'Siku 1',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Malengo';

  @override
  String get goalsEmptyTitle => 'Lenga kitu';

  @override
  String get goalsEmptyMessage =>
      'Weka malengo ya kila siku, kila wiki, kila mwezi au ya muda mrefu na ufuatilie maendeleo halisi.';

  @override
  String get goalNew => 'Lengo jipya';

  @override
  String get goalEdit => 'Hariri lengo';

  @override
  String get goalTitleHint => 'Unataka kufikia nini?';

  @override
  String get goalPeriod => 'Kipindi';

  @override
  String get goalPeriodDaily => 'Kila siku';

  @override
  String get goalPeriodWeekly => 'Kila wiki';

  @override
  String get goalPeriodMonthly => 'Kila mwezi';

  @override
  String get goalPeriodLongTerm => 'Muda mrefu';

  @override
  String get goalTarget => 'Kiwango lengwa';

  @override
  String get goalUnit => 'Kipimo';

  @override
  String get goalUnitHint => 'k.m. kurasa, km, saa';

  @override
  String get goalStatusActive => 'Hai';

  @override
  String get goalStatusPaused => 'Imesitishwa';

  @override
  String get goalStatusAchieved => 'Limefikiwa';

  @override
  String get goalPause => 'Sitisha lengo';

  @override
  String get goalResume => 'Endeleza lengo';

  @override
  String get goalMarkAchieved => 'Weka alama kuwa limefikiwa';

  @override
  String goalProgressOf(String current, String target) {
    return '$current kati ya $target';
  }

  @override
  String get goalLogAmount => 'Kiasi';

  @override
  String get goalLogNote => 'Dokezo (si lazima)';

  @override
  String get goalHistory => 'Historia';

  @override
  String get goalNoHistory => 'Maendeleo yaliyorekodiwa yataonekana hapa';

  @override
  String get goalLinkedTasks => 'Majukumu yaliyounganishwa';

  @override
  String get goalLinkedTasksHint =>
      'Kila jukumu lililounganishwa likikamilika linahesabiwa kama 1 kwa lengo hili.';

  @override
  String get goalThisPeriod => 'Kipindi hiki';

  @override
  String get habitsTitle => 'Mazoea';

  @override
  String get habitsEmptyTitle => 'Hatua ndogo, kila siku';

  @override
  String get habitsEmptyMessage => 'Unda zoea na uliwekee alama unapolifanya.';

  @override
  String get habitNew => 'Zoea jipya';

  @override
  String get habitEdit => 'Hariri zoea';

  @override
  String get habitNameHint => 'k.m. Soma kurasa 20';

  @override
  String get habitDays => 'Ratiba';

  @override
  String get habitEveryDay => 'Kila siku';

  @override
  String get habitTargetPerDay => 'Mara kwa siku';

  @override
  String get habitReminder => 'Kikumbusho cha kila siku';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mfululizo wa siku $count',
      one: 'Mfululizo wa siku 1',
      zero: 'Hakuna mfululizo',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Mfululizo bora';

  @override
  String get habitCurrentStreak => 'Mfululizo wa sasa';

  @override
  String get habitConsistency => 'Uthabiti';

  @override
  String get habitLast90 => 'Siku 90 zilizopita';

  @override
  String get habitPaused => 'Imesitishwa';

  @override
  String get habitPause => 'Sitisha zoea';

  @override
  String get habitResume => 'Endeleza zoea';

  @override
  String get habitDoneToday => 'Limefanyika leo';

  @override
  String habitCountToday(int count, int target) {
    return '$count kati ya $target leo';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Weka alama “$name”';
  }

  @override
  String get habitNotScheduledToday => 'Halijapangwa leo';

  @override
  String get analyticsTitle => 'Maarifa';

  @override
  String get rangeWeek => 'Siku 7';

  @override
  String get rangeMonth => 'Siku 30';

  @override
  String get rangeQuarter => 'Siku 90';

  @override
  String get statFocusTime => 'Muda wa umakini';

  @override
  String get statSessions => 'Vipindi';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed vimekamilika · $interrupted vilisimamishwa mapema';
  }

  @override
  String get statTasksDone => 'Majukumu yaliyokamilika';

  @override
  String get statCompletionRate => 'Kukamilisha kwa wakati';

  @override
  String get statHabitConsistency => 'Uthabiti wa mazoea';

  @override
  String get statRetention => 'Kukumbuka kadi';

  @override
  String get statReviews => 'Marudio';

  @override
  String get statActiveGoals => 'Malengo hai';

  @override
  String get statEstimated => 'Kazi iliyokadiriwa iliyokamilika';

  @override
  String get statEstimatedNote => 'Kulingana na makadirio yako, si muda uliopimwa';

  @override
  String get statMeasuredNote => 'Imepimwa kutoka vipindi vya umakini';

  @override
  String get chartFocusByDay => 'Dakika za umakini kwa siku';

  @override
  String get chartTasksByDay => 'Majukumu yaliyokamilika kwa siku';

  @override
  String get chartTimeByProject => 'Muda kwa mradi';

  @override
  String get chartProjectProgress => 'Maendeleo ya miradi';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: jumla $total, siku bora $best';
  }

  @override
  String get analyticsNoData => 'Bado hakuna data ya kutosha';

  @override
  String get analyticsUnassigned => 'Haijagawiwa';

  @override
  String get searchHint => 'Tafuta kila kitu…';

  @override
  String get searchRecent => 'Utafutaji wa hivi karibuni';

  @override
  String get searchClearRecent => 'Futa utafutaji wa hivi karibuni';

  @override
  String searchNoResults(String query) {
    return 'Hakuna matokeo ya “$query”';
  }

  @override
  String get searchStartTyping =>
      'Tafuta katika majukumu, madokezo, kadi, malengo, matukio na zaidi. Utafutaji unabaki kwenye kifaa hiki.';

  @override
  String get searchCatTask => 'Majukumu';

  @override
  String get searchCatProject => 'Miradi';

  @override
  String get searchCatNote => 'Madokezo';

  @override
  String get searchCatFlashcard => 'Kadi';

  @override
  String get searchCatDeck => 'Vifurushi';

  @override
  String get searchCatGoal => 'Malengo';

  @override
  String get searchCatHabit => 'Mazoea';

  @override
  String get searchCatEvent => 'Matukio';

  @override
  String get searchCatSession => 'Vipindi';

  @override
  String get searchAll => 'Yote';

  @override
  String get assistantTitle => 'Msaidizi';

  @override
  String get assistantIntro =>
      'Msaada wa kupanga unaofanya kazi kwenye kifaa chako. Ukipenda, unganisha mtoa huduma wa AI unayemchagua kwa muhtasari na uundaji.';

  @override
  String get assistantOnDevice => 'Kwenye kifaa';

  @override
  String get assistantCloud => 'Mtoa huduma wa AI';

  @override
  String get assistantPlanDay => 'Panga siku yangu';

  @override
  String get assistantPlanDayDesc =>
      'Hupanga majukumu yaliyo wazi kwa uharaka, kipaumbele na makadirio, na kuyaweka kati ya matukio yako.';

  @override
  String get assistantExtractTasks => 'Toa majukumu kutoka kwenye dokezo';

  @override
  String get assistantExtractTasksDesc =>
      'Hupata vipengee vya orodha ya ukaguzi na mistari ya vitendo kwenye dokezo na kuvigeuza kuwa majukumu.';

  @override
  String get assistantMakeCards => 'Tengeneza kadi kutoka kwenye dokezo';

  @override
  String get assistantMakeCardsDesc =>
      'Hugeuza mistari ya “istilahi: ufafanuzi” na swali/jibu kuwa kadi.';

  @override
  String get assistantSummarize => 'Fupisha dokezo';

  @override
  String get assistantSummarizeDesc =>
      'Inahitaji mtoa huduma wa AI. Dokezo hutumwa tu baada ya kuthibitisha.';

  @override
  String get assistantWorkload => 'Muhtasari wa mzigo wa kazi';

  @override
  String get assistantWorkloadDesc =>
      'Hulinganisha kazi iliyokadiriwa na muda wako wa bure wiki hii.';

  @override
  String get assistantPlanEmpty => 'Hakuna majukumu yaliyo wazi ya kupanga. Furahia nafasi.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Muda wa bure wa umakini leo: $time';
  }

  @override
  String get assistantPlanOverflow => 'Haya huenda yasitoshee leo:';

  @override
  String get assistantChooseNote => 'Chagua dokezo';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Majukumu $count yamepatikana',
      one: 'Jukumu 1 limepatikana',
      zero: 'Hakuna majukumu yaliyopatikana kwenye dokezo hili',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count zimepatikana',
      one: 'Kadi 1 imepatikana',
      zero: 'Hakuna kadi zilizopatikana kwenye dokezo hili',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Chagua kifurushi';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Kazi iliyokadiriwa: $estimated. Muda wa bure: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Umepanga zaidi ya muda ulionao. Fikiria kuhamisha majukumu yenye kipaumbele cha chini.';

  @override
  String get assistantWorkloadOk => 'Mpango wako unatosha katika muda ulionao.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Majukumu $count yaliyo wazi hayana makadirio.',
      one: 'Jukumu 1 lililo wazi halina makadirio.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Mtoa huduma wa AI';

  @override
  String get assistantProviderOff =>
      'Hakuna mtoa huduma aliyeunganishwa. Zana za kwenye kifaa bado zinafanya kazi.';

  @override
  String assistantProviderOn(String host) {
    return 'Imeunganishwa na $host';
  }

  @override
  String get assistantEndpoint => 'Kiungo cha API (HTTPS)';

  @override
  String get assistantModel => 'Muundo';

  @override
  String get assistantApiKey => 'Ufunguo wa API';

  @override
  String get assistantApiKeyStored => 'Umehifadhiwa kwa usalama kwenye kifaa hiki';

  @override
  String get assistantHttpsOnly => 'Viungo vya HTTPS pekee vinaruhusiwa';

  @override
  String get assistantConsentTitle => 'Tuma maudhui haya kwa mtoa huduma wako wa AI?';

  @override
  String assistantConsentBody(String host) {
    return 'Maandishi ya dokezo lililochaguliwa yataondoka kwenye kifaa hiki na kuchakatwa na $host. Hakuna kingine kinachotumwa.';
  }

  @override
  String get assistantConsentAlways => 'Usiulize tena kwa mtoa huduma huyu';

  @override
  String get assistantSend => 'Tuma';

  @override
  String get assistantUnavailable => 'Mtoa huduma wa AI hakuweza kufikiwa. Jaribu tena baadaye.';

  @override
  String get assistantDisabledTitle => 'Msaidizi amezimwa';

  @override
  String get assistantDisabledMessage =>
      'Mwashe ili utumie zana za kupanga. Hakuna data inayoondoka kwenye kifaa chako isipokuwa uunganishe mtoa huduma na uthibitishe kila ombi.';

  @override
  String get assistantSummaryTitle => 'Muhtasari';

  @override
  String get assistantRemoveProvider => 'Ondoa mtoa huduma';

  @override
  String get settingsTitle => 'Mipangilio';

  @override
  String get settingsGeneral => 'Jumla';

  @override
  String get settingsLanguage => 'Lugha';

  @override
  String get settingsLanguageSystem => 'Lugha ya kifaa';

  @override
  String get settingsAppearance => 'Mwonekano';

  @override
  String get settingsTheme => 'Mandhari';

  @override
  String get themeLight => 'Mwanga';

  @override
  String get themeDark => 'Giza';

  @override
  String get themeSystem => 'Mfumo';

  @override
  String get settingsReduceMotion => 'Punguza mwendo';

  @override
  String get settingsReduceMotionDesc => 'Punguza uhuishaji na mandharinyuma yanayosonga';

  @override
  String get settingsFocus => 'Kipima muda cha umakini';

  @override
  String get settingsWorkLength => 'Urefu wa umakini';

  @override
  String get settingsShortBreak => 'Mapumziko mafupi';

  @override
  String get settingsLongBreak => 'Mapumziko marefu';

  @override
  String get settingsLongBreakEvery => 'Mapumziko marefu baada ya';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vipindi $count',
      one: 'Kipindi 1',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Anza mapumziko kiotomatiki';

  @override
  String get settingsSound => 'Sauti ya kukamilika';

  @override
  String get settingsDailyFocusTarget => 'Lengo la umakini la kila siku';

  @override
  String get settingsWeeklyFocusTarget => 'Lengo la umakini la kila wiki';

  @override
  String get settingsNotifications => 'Arifa';

  @override
  String get settingsNotificationsEnable => 'Ruhusu vikumbusho';

  @override
  String get settingsQuietHours => 'Saa za utulivu';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Vikumbusho vya mazoea, malengo na marudio hunyamazishwa kuanzia $start hadi $end';
  }

  @override
  String get settingsReviewReminder => 'Kikumbusho cha marudio ya kadi';

  @override
  String get settingsPermissionDenied => 'Arifa zimezuiwa katika mipangilio ya mfumo.';

  @override
  String get settingsPrivacy => 'Faragha na data';

  @override
  String get settingsPrivacyStatement =>
      'Data yako huhifadhiwa kwenye kifaa hiki pekee na imesimbwa. Hakuna akaunti, hakuna takwimu na hakuna ufuatiliaji.';

  @override
  String get settingsBackup => 'Unda nakala rudufu iliyosimbwa';

  @override
  String get settingsBackupDesc => 'Imelindwa kwa nenosiri unalochagua';

  @override
  String get settingsRestore => 'Rejesha kutoka nakala rudufu';

  @override
  String get settingsRestoreDesc => 'Hubadilisha data yote kwenye kifaa hiki';

  @override
  String get settingsErase => 'Futa data yote';

  @override
  String get settingsEraseDesc => 'Futa kabisa kila kitu kwenye kifaa hiki';

  @override
  String get settingsEraseConfirmTitle => 'Futa data yote?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Kila jukumu, dokezo, kadi, lengo, zoea, tukio na kipindi kitafutwa kabisa. Andika $word ili kuthibitisha.';
  }

  @override
  String get settingsEraseWord => 'FUTA';

  @override
  String get settingsErased => 'Data yote imefutwa';

  @override
  String get backupPassword => 'Nenosiri la nakala rudufu';

  @override
  String get backupPasswordConfirm => 'Thibitisha nenosiri';

  @override
  String backupPasswordHint(int count) {
    return 'Angalau herufi $count. Haliwezi kurejeshwa likipotea.';
  }

  @override
  String get backupPasswordMismatch => 'Manenosiri hayalingani';

  @override
  String get backupPasswordShort => 'Nenosiri ni fupi mno';

  @override
  String get backupCreating => 'Inasimba nakala rudufu…';

  @override
  String get backupCreated => 'Nakala rudufu iko tayari kuhifadhiwa';

  @override
  String get backupRestoring => 'Inathibitisha na kurejesha…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vipengee $count vimerejeshwa',
      one: 'Kipengee 1 kimerejeshwa',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Nenosiri si sahihi, au faili limebadilishwa.';

  @override
  String get backupNotABackup => 'Faili hili si nakala rudufu ya Deep Focus.';

  @override
  String get backupCorrupted => 'Faili la nakala rudufu limeharibika.';

  @override
  String get backupNewer =>
      'Nakala rudufu hii iliundwa na toleo jipya zaidi la programu. Tafadhali sasisha kwanza.';

  @override
  String get backupRestoreConfirmTitle => 'Badilisha data yote?';

  @override
  String get backupRestoreConfirmBody =>
      'Kila kitu kilichopo sasa kwenye kifaa hiki kitabadilishwa na nakala rudufu. Urejeshaji ukishindwa, hakuna kinachobadilika.';

  @override
  String get settingsAbout => 'Kuhusu';

  @override
  String settingsVersion(String version) {
    return 'Toleo $version';
  }

  @override
  String get settingsLicenses => 'Leseni za programu huria';

  @override
  String get settingsAssistant => 'Msaidizi';

  @override
  String get settingsAssistantEnable => 'Washa msaidizi';

  @override
  String get settingsDashboard => 'Sehemu za nyumbani';

  @override
  String get settingsTrash => 'Tupio';

  @override
  String settingsMinutesValue(int minutes) {
    return 'Dak $minutes';
  }

  @override
  String get trashEmpty => 'Tupio ni tupu';

  @override
  String get trashHint => 'Vipengee vilivyofutwa hubaki hapa hadi uviondoe.';

  @override
  String get trashTasks => 'Majukumu';

  @override
  String get trashNotes => 'Madokezo';

  @override
  String get onboardWelcomeTitle => 'Karibu kwenye eneo lako la kazi la baadaye';

  @override
  String get onboardWelcomeBody =>
      'Majukumu, umakini, kalenda, madokezo, kadi, malengo na mazoea — pamoja, kwa urahisi wa kupendeza.';

  @override
  String get onboardPrivateTitle => 'Faragha tangu mwanzo';

  @override
  String get onboardPrivateBody =>
      'Kila kitu kinabaki kwenye kifaa hiki, kimesimbwa. Hakuna akaunti. Hakuna ufuatiliaji. Wewe ndiye mwenye udhibiti.';

  @override
  String get onboardLanguageTitle => 'Chagua lugha yako';

  @override
  String get onboardNotifTitle => 'Vikumbusho vya upole';

  @override
  String get onboardNotifBody =>
      'Ruhusu arifa kwa vikumbusho vya majukumu na tahadhari za umakini. Unaweza kubadilisha hili wakati wowote.';

  @override
  String get onboardGetStarted => 'Anza';

  @override
  String onboardStep(int current, int total) {
    return 'Hatua $current kati ya $total';
  }

  @override
  String get notifChannelReminders => 'Vikumbusho';

  @override
  String get notifChannelRemindersDesc => 'Vikumbusho vya majukumu, matukio, mazoea na malengo';

  @override
  String get notifChannelFocus => 'Kipima muda cha umakini';

  @override
  String get notifChannelFocusDesc => 'Tahadhari kipindi cha umakini au mapumziko yanapoisha';

  @override
  String get notifTaskTitle => 'Kikumbusho cha jukumu';

  @override
  String get notifEventTitle => 'Tukio linalokuja';

  @override
  String notifEventBody(String title, String time) {
    return '$title saa $time';
  }

  @override
  String get notifFocusDoneTitle => 'Kipindi cha umakini kimekamilika';

  @override
  String get notifFocusDoneBody => 'Kazi nzuri. Ni wakati wa kupumzika.';

  @override
  String get notifBreakDoneTitle => 'Mapumziko yamekwisha';

  @override
  String get notifBreakDoneBody => 'Uko tayari kwa kipindi kijacho cha umakini?';

  @override
  String get notifHabitTitle => 'Kikumbusho cha zoea';

  @override
  String get notifReviewTitle => 'Kadi ziko tayari';

  @override
  String get notifReviewBody => 'Marudio mafupi huimarisha kumbukumbu yako.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return 'Saa $hours dak $minutes';
  }

  @override
  String durationHours(int hours) {
    return 'Saa $hours';
  }

  @override
  String durationMinutes(int minutes) {
    return 'Dak $minutes';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'T,N,T,A,I,M,P';

  @override
  String a11yProgress(int value) {
    return 'Maendeleo asilimia $value';
  }

  @override
  String a11yPriority(String level) {
    return 'Kipaumbele: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Rangi $index';
  }

  @override
  String get analyticsRangeLabel => 'Kipindi cha muda';

  @override
  String get analyticsRefresh => 'Onyesha upya';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Majukumu $done kati ya $total yenye tarehe ya mwisho yamekamilika kwa wakati';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Majukumu $done kati ya $total yamekamilika';
  }

  @override
  String get analyticsNoProjects => 'Hakuna miradi hai';

  @override
  String get analyticsNoFocus => 'Hakuna vipindi vya umakini katika kipindi hiki';

  @override
  String get analyticsHabitsNone => 'Hakuna mazoea hai';

  @override
  String get analyticsRetentionNote => 'Sehemu ya kadi zilizoimarika ulizokumbuka';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Muda wa bure huhesabiwa $start–$end siku za kazi ($days), ukiondoa matukio yenye saa. Kazi iliyokadiriwa ni jumla ya makadirio ya majukumu yaliyo wazi yanayoisha ndani ya siku 7 zijazo.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Jumatatu–Ijumaa';

  @override
  String get assistantWorkdaysSunThu => 'Jumapili–Alhamisi';

  @override
  String get assistantWorkloadDayOff => 'Siku ya mapumziko';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated imepangwa · $free bure';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Imepangwa kuanzia sasa hadi $end, kuzunguka matukio ya leo. Majukumu yaliyochelewa kwanza, kisha kipaumbele, tarehe ya mwisho na makadirio.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Panga kama vipande vya muda';

  @override
  String get assistantScheduleConfirmTitle => 'Ongeza vipande vya muda kwenye kalenda yako?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vipande $count vya muda vitaongezwa kwenye kalenda ya leo.',
      one: 'Kipande 1 cha muda kitaongezwa kwenye kalenda ya leo.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vipande $count vya muda vimeongezwa',
      one: 'Kipande 1 cha muda kimeongezwa',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Tayari kiko kwenye kalenda yako';

  @override
  String get assistantPlanTimeline => 'Yanatosha leo';

  @override
  String get assistantNoEstimate => 'Ongeza makadirio ili kuyapanga';

  @override
  String get assistantNoNotes => 'Bado hakuna madokezo. Andika dokezo kwanza.';

  @override
  String get assistantNoteEmpty => 'Dokezo hili ni tupu.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Majukumu $count yameundwa',
      one: 'Jukumu 1 limeundwa',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count zimeundwa',
      one: 'Kadi 1 imeundwa',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Unda $count',
      one: 'Unda 1',
      zero: 'Hakuna kilichochaguliwa',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Hutambuliwa: visanduku visivyowekwa alama “- [ ]” na mistari inayoanza na TODO: au To do:';

  @override
  String get assistantCardsHint =>
      'Hutambuliwa: “istilahi: ufafanuzi”, “istilahi — ufafanuzi” na jozi za mistari ya Q:/A:';

  @override
  String get assistantProviderHint =>
      'Tumia huduma yoyote inayooana na OpenAI. Ufunguo unabaki kwenye hifadhi salama ya kifaa hiki na haujumuishwi kamwe kwenye nakala rudufu.';

  @override
  String get assistantEndpointHelp => 'Kwa mfano https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Acha tupu ili kuweka ufunguo uliohifadhiwa';

  @override
  String get assistantApiKeyRequired => 'Weka ufunguo wa API';

  @override
  String get assistantProviderSaved => 'Mtoa huduma amehifadhiwa';

  @override
  String get assistantProviderRemoved => 'Mtoa huduma ameondolewa na ufunguo umefutwa';

  @override
  String get assistantRemoveProviderConfirm =>
      'Ondoa mtoa huduma na ufute ufunguo wa API uliohifadhiwa kwenye kifaa hiki?';

  @override
  String get assistantAskEveryTime => 'Uliza kabla ya kila ombi';

  @override
  String get assistantSummarizing => 'Inafupisha…';

  @override
  String assistantSummaryNote(String host) {
    return 'Imeundwa na $host. Kagua kabla ya kuitegemea.';
  }

  @override
  String get assistantCopy => 'Nakili';

  @override
  String get assistantCopied => 'Imenakiliwa';

  @override
  String get assistantConfigure => 'Weka mtoa huduma';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Matukio yote katika mfululizo huu yamehamishwa';

  @override
  String get calendarEventReminder => 'Kikumbusho';

  @override
  String get calendarEventRepeat => 'Rudia';

  @override
  String get calendarEventColor => 'Rangi';

  @override
  String get calendarDefaultColor => 'Tumia rangi ya aina';

  @override
  String get calendarEventLinkedTask => 'Jukumu lililounganishwa';

  @override
  String get calendarEventNoTask => 'Hakuna jukumu lililounganishwa';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Matukio $count',
      one: 'Tukio 1',
      zero: 'Hakuna matukio',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'majukumu $count yanaisha',
      one: 'jukumu 1 linaisha',
      zero: 'hakuna majukumu yanayoisha',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Ongeza tukio au kipande cha muda ili kupanga siku hii.';

  @override
  String get calendarNow => 'Saa ya sasa';

  @override
  String get calendarRecurring => 'Hurudiwa';

  @override
  String get calendarEventNotFound => 'Tukio hili halipo tena';

  @override
  String get calendarEventLocalTime => 'Saa zinaonyeshwa katika saa za eneo la kifaa chako';

  @override
  String get calendarEventDeleted => 'Tukio limehamishiwa kwenye tupio';

  @override
  String get calendarConflictMarker => 'Linaingiliana na tukio jingine';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Mabadiliko yanatumika kwa kila tukio katika mfululizo huu';

  @override
  String get calendarDragHintSeries => 'Kuburuta tukio linalorudiwa huhamisha mfululizo wote';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, jukumu linaisha';
  }

  @override
  String get startupErrorTitle => 'Data yako haikuweza kufunguliwa';

  @override
  String get startupErrorLocked =>
      'Ufunguo wa usimbaji wa data ya kifaa hiki haupatikani. Hakuna kilichofutwa. Kuwasha upya kifaa mara nyingi husaidia. Ikiwa ulirejesha kifaa hivi karibuni, rejesha data yako kutoka nakala rudufu iliyosimbwa badala yake.';

  @override
  String get startupErrorCipher =>
      'Kifaa hiki hakitumii hifadhi iliyosimbwa ambayo programu inahitaji. Hakuna kilichohifadhiwa bila usimbaji.';

  @override
  String get startupErrorRetry => 'Jaribu tena';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count zinahitaji kurudiwa',
      one: 'Kadi 1 inahitaji kurudiwa',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count za kurudia';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count mpya';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Kadi zilizoimarika: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Weka 0 au zaidi';

  @override
  String get flashcardsSearchCards => 'Tafuta kadi';

  @override
  String get flashcardsSearchEmpty => 'Hakuna kadi zinazolingana na utafutaji wako';

  @override
  String get flashcardsCardAdded => 'Kadi imeongezwa';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Inarudiwa $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Nakili kwenye ubao wa kunakili';

  @override
  String get flashcardsExportTitle => 'Hamisha kifurushi';

  @override
  String get flashcardsDeleteDeck => 'Futa kifurushi';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, marudio yajayo baada ya $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Swali: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Jibu: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Onyesha swali';

  @override
  String get flashcardsImportField => 'Kadi za kuleta';

  @override
  String get flashcardsNothingToStudy => 'Hakuna cha kujifunza';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count ziko tayari kujifunzwa',
      one: 'Kadi 1 iko tayari kujifunzwa',
      zero: 'Hakuna kadi tayari',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Kwa ukadiriaji';

  @override
  String get flashcardsDeckNotFound => 'Kifurushi hiki hakipatikani tena.';

  @override
  String get focusSessionDeleted => 'Kipindi kimefutwa';

  @override
  String get focusDeleteConfirm =>
      'Futa kipindi hiki kwenye historia yako? Muda wake hautahesabiwa tena kwenye malengo yako.';

  @override
  String get focusUnlinkTask => 'Ondoa jukumu lililounganishwa';

  @override
  String get focusNoteHint => 'Ulifanya kazi gani?';

  @override
  String get focusModeLabel => 'Hali ya kipima muda';

  @override
  String focusUpNext(String phase) {
    return 'Kinachofuata: $phase';
  }

  @override
  String get focusStopwatchHint => 'Huhesabu kwenda juu hadi usimamishe.';

  @override
  String get focusOpenHint => 'Hakuna kikomo cha muda. Simamisha ukimaliza.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Vikumbusho vimezimwa kwenye mipangilio. Hutaarifiwa kipindi kinapoisha.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Yote';

  @override
  String get goalsFilterPeriod => 'Kichujio cha kipindi';

  @override
  String get goalsFilterStatus => 'Kichujio cha hali';

  @override
  String get goalsEmptyFiltered => 'Hakuna malengo yanayolingana na kichujio hiki';

  @override
  String goalsDueOn(String date) {
    return 'Linaisha $date';
  }

  @override
  String get goalsDeadline => 'Tarehe ya mwisho (si lazima)';

  @override
  String get goalsNoDeadline => 'Hakuna tarehe ya mwisho';

  @override
  String get goalsSetDeadline => 'Weka tarehe ya mwisho';

  @override
  String get goalsRemoveDeadline => 'Ondoa tarehe ya mwisho';

  @override
  String get goalsDescription => 'Maelezo (si lazima)';

  @override
  String get goalsTitleLabel => 'Kichwa';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Kiwango kimefikiwa';

  @override
  String get goalsLogged => 'Maendeleo yamerekodiwa';

  @override
  String get goalsEntryDeleted => 'Ingizo limeondolewa';

  @override
  String get goalsDeleteEntry => 'Ondoa ingizo';

  @override
  String get goalsDeleted => 'Lengo limefutwa';

  @override
  String get goalsMarkActive => 'Weka alama kuwa hai';

  @override
  String get goalsNotFound => 'Lengo hili halipatikani tena';

  @override
  String get goalsLinkTask => 'Unganisha jukumu';

  @override
  String get goalsNoLinkedTasks => 'Bado hakuna majukumu yaliyounganishwa';

  @override
  String get goalsUnlinkTask => 'Tenganisha jukumu';

  @override
  String get goalsTaskOpen => 'Bado halijakamilika';

  @override
  String get goalsTaskLinked => 'Jukumu limeunganishwa';

  @override
  String get goalsTaskUnlinked => 'Jukumu limetenganishwa';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'majukumu $count yaliyounganishwa yaliyokamilika',
      one: 'jukumu 1 lililounganishwa lililokamilika',
    );
    return 'Inajumuisha $_temp0 katika kipindi hiki';
  }

  @override
  String get goalsHistoryAllTime =>
      'Maingizo ya vipindi vilivyopita yanahifadhiwa hapa lakini yanahesabiwa tu kwa kipindi chake.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done kati ya $total yamefanyika leo';
  }

  @override
  String get habitsNothingToday => 'Hakuna mazoea yaliyopangwa leo';

  @override
  String get habitsDecrease => 'Ondoa alama moja';

  @override
  String get habitsResetToday => 'Weka upya leo';

  @override
  String get habitsCheckInHint => 'Bonyeza kwa muda mrefu ili kurekebisha';

  @override
  String get habitsName => 'Jina';

  @override
  String get habitsColor => 'Rangi';

  @override
  String get habitsValidationDays => 'Chagua angalau siku moja';

  @override
  String habitsReminderAt(String time) {
    return 'Kila siku saa $time';
  }

  @override
  String get habitsSetReminder => 'Weka saa ya kikumbusho';

  @override
  String get habitsRemoveReminder => 'Ondoa kikumbusho';

  @override
  String get habitsReminderNote =>
      'Vikumbusho huonekana siku zilizopangwa arifa zikiwa zimeruhusiwa.';

  @override
  String get habitsArchived => 'Zoea limehifadhiwa';

  @override
  String get habitsNotFound => 'Zoea hili halipatikani tena';

  @override
  String get habitsLast30 => 'Siku 30 zilizopita';

  @override
  String get habitsConsistencyNone => 'Bado hakuna data ya kutosha';

  @override
  String get habitsCalendar => 'Historia ya alama';

  @override
  String get habitsCalendarHint => 'Gusa siku ili uirekebishe.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count kati ya $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Alama katika siku 90 zilizopita. Uthabiti $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Alama katika siku 90 zilizopita. Bado hakuna data ya kutosha.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Siku $count',
      one: 'Siku 1',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Siku zilizositishwa haziathiri mfululizo wako.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Hifadhi zoea';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mara $count kwa siku',
      one: 'Mara moja kwa siku',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Madokezo mengine';

  @override
  String get notesAllNotebooks => 'Madaftari yote';

  @override
  String get notesNotebookName => 'Jina la daftari';

  @override
  String get notesNotebookColor => 'Rangi';

  @override
  String get notesDeleteNotebook => 'Futa daftari';

  @override
  String get notesDeleteNotebookMessage =>
      'Daftari linaondolewa. Madokezo yake yanabaki na yanaonekana chini ya Madaftari yote.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Bandika madokezo muhimu ili yabaki juu.';

  @override
  String get notesEmptyFavorites => 'Madokezo unayoweka kama vipendwa yanaonekana hapa.';

  @override
  String get notesEmptyArchived => 'Madokezo yaliyohifadhiwa yanaonekana hapa.';

  @override
  String get notesEmptyFiltered => 'Hakuna madokezo yanayolingana na vichujio hivi.';

  @override
  String get notesArchivedSnack => 'Dokezo limehifadhiwa';

  @override
  String get notesUnarchivedSnack => 'Dokezo limerudishwa kwenye madokezo yako';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done kati ya $total yamekamilika';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Uumbizaji';

  @override
  String get notesWrite => 'Andika';

  @override
  String get notesPreviewEmpty => 'Bado hakuna cha kuonyesha.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Bado hakuna madokezo mengine yanayounganisha hapa. Unganisha na dokezo hili kwa [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Lipe dokezo hili kichwa ili madokezo mengine yaweze kuliunganisha.';

  @override
  String get notesLinkedTasksEmpty => 'Hakuna majukumu yaliyounganishwa na dokezo hili.';

  @override
  String notesLinkMissing(String title) {
    return 'Bado hakuna dokezo lenye kichwa “$title”.';
  }

  @override
  String get notesNotFound => 'Dokezo hili halipo tena.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Kipengee cha orodha: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Fungua dokezo $title';
  }

  @override
  String get notesTaskDone => 'Limekamilika';

  @override
  String get notifTimerDoneBody => 'Muda uliouweka umepita.';

  @override
  String get onboardingPrivatePointDevice => 'Huhifadhiwa kwenye kifaa hiki pekee, kimesimbwa';

  @override
  String get onboardingPrivatePointAccount => 'Hakuna akaunti inayohitajika';

  @override
  String get onboardingPrivatePointTracking => 'Hakuna takwimu, hakuna ufuatiliaji';

  @override
  String get onboardingLanguageBody => 'Unaweza kubadilisha hili wakati wowote katika Mipangilio.';

  @override
  String get onboardingNext => 'Endelea';

  @override
  String get projectsActive => 'Hai';

  @override
  String get projectNameHint => 'k.m. Uzinduzi wa bidhaa';

  @override
  String get projectGoalHint => 'Kukamilika kunaonekanaje?';

  @override
  String get projectNoDeadline => 'Hakuna tarehe ya mwisho';

  @override
  String get projectTasksOpen => 'Majukumu yaliyo wazi';

  @override
  String get projectTasksCompleted => 'Majukumu yaliyokamilika';

  @override
  String get projectAddTask => 'Ongeza jukumu kwenye mradi';

  @override
  String get projectAddNote => 'Dokezo jipya la mradi';

  @override
  String get projectLinkedNotes => 'Madokezo';

  @override
  String get projectNoTasks => 'Bado hakuna majukumu katika mradi huu';

  @override
  String get projectArchivedBadge => 'Umehifadhiwa';

  @override
  String get projectDeleted => 'Mradi umehamishiwa kwenye tupio';

  @override
  String get projectDeleteMessage => 'Majukumu yanabaki kwenye orodha yako bila mradi.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, asilimia $percent imekamilika';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Matokeo $count',
      one: 'Tokeo 1',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Chuja kwa aina';

  @override
  String searchRecentTap(String query) {
    return 'Tafuta tena $query';
  }

  @override
  String get settingsLanguageHint =>
      'Chagua lugha ya programu nzima. Majina yanaonyeshwa katika lugha zao wenyewe.';

  @override
  String get settingsThemeHint => 'Mwanga, giza au fuata mfumo';

  @override
  String settingsDecrease(String setting) {
    return 'Punguza $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Ongeza $setting';
  }

  @override
  String get settingsQuietStart => 'Inaanza';

  @override
  String get settingsQuietEnd => 'Inaisha';

  @override
  String get settingsNotificationsHint =>
      'Hii huhifadhi chaguo lako kwenye programu. Mfumo pia unaweza kuomba ruhusa.';

  @override
  String get settingsDashboardHint => 'Buruta ili kupanga upya. Zima sehemu usizohitaji.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Panga upya $section';
  }

  @override
  String get settingsDashboardReset => 'Rejesha mpangilio wa msingi';

  @override
  String get settingsAssistantDesc =>
      'Msaada wa hiari wa kupanga. Hakuna kinachoondoka kwenye kifaa hiki isipokuwa uunganishe mtoa huduma.';

  @override
  String get settingsAssistantSetup => 'Msaidizi na usanidi wa mtoa huduma';

  @override
  String get settingsTrashDesc => 'Rejesha au futa kabisa vipengee vilivyoondolewa';

  @override
  String get settingsEraseFirstBody =>
      'Hili haliwezi kutenduliwa. Fikiria kuunda nakala rudufu iliyosimbwa kwanza.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Andika $word';
  }

  @override
  String get settingsEraseFailed => 'Data haikuweza kufutwa. Hakuna kilichobadilishwa.';

  @override
  String get settingsAboutTagline => 'Eneo la kazi la tija la faragha, linaloanzia kwenye kifaa.';

  @override
  String get backupShowPassword => 'Onyesha nenosiri';

  @override
  String get backupHidePassword => 'Ficha nenosiri';

  @override
  String get backupSaved => 'Nakala rudufu imehifadhiwa';

  @override
  String get backupFailed => 'Nakala rudufu haikuweza kuundwa. Data yako haijabadilika.';

  @override
  String get backupReadFailed => 'Faili lililochaguliwa halikuweza kusomwa.';

  @override
  String get backupRestoreFailed => 'Urejeshaji umeshindwa. Hakuna kilichobadilishwa.';

  @override
  String get backupShareSubject => 'Nakala rudufu iliyosimbwa ya Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kila siku $count',
      one: 'Kila siku',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kila wiki $count',
      one: 'Kila wiki',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kila miezi $count',
      one: 'Kila mwezi',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kila miaka $count',
      one: 'Kila mwaka',
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
    return 'siku za $days';
  }

  @override
  String get repeatEndsLabel => 'Inaisha';

  @override
  String get repeatEndsAfter => 'Baada ya idadi fulani ya mara';

  @override
  String get repeatCountLabel => 'Marudio';

  @override
  String get reminderNone => 'Hakuna kikumbusho';

  @override
  String get reminderCustomTime => 'Wakati maalum';

  @override
  String get a11yDecrease => 'Punguza';

  @override
  String get a11yIncrease => 'Ongeza';

  @override
  String get pickTaskTitle => 'Chagua jukumu';

  @override
  String get pickTaskEmpty => 'Hakuna majukumu yaliyo wazi';

  @override
  String get tasksSearchTooltip => 'Tafuta majukumu';

  @override
  String get tasksSectionOverdue => 'Yaliyochelewa';

  @override
  String get tasksSectionToday => 'Leo';

  @override
  String get tasksRecurringSemantics => 'Hurudiwa';

  @override
  String get tasksFilterPriorityAtLeast => 'Kipaumbele cha chini kabisa';

  @override
  String get tasksFilterCategory => 'Aina';

  @override
  String get tasksFilterAnyCategory => 'Aina yoyote';

  @override
  String get tasksFilterLabel => 'Lebo';

  @override
  String get tasksFilterAnyLabel => 'Lebo yoyote';

  @override
  String get tasksFilterReset => 'Weka upya vichujio';

  @override
  String get tasksViewByProject => 'Kwa mradi';

  @override
  String get tasksViewByPriority => 'Kwa kipaumbele';

  @override
  String get tasksViewByCategory => 'Kwa aina';

  @override
  String get tasksGroupNoCategory => 'Hakuna aina';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'majukumu $count',
      one: 'jukumu 1',
    );
    return 'Limezuiwa na $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Jukumu hili limezuiwa na majukumu ambayo hayajakamilika. Likamilishe hata hivyo?';

  @override
  String get taskStartFocus => 'Zingatia jukumu hili';

  @override
  String get taskRemoveDate => 'Ondoa tarehe';

  @override
  String get taskAllDay => 'Hakuna saa maalum';

  @override
  String get taskSaved => 'Jukumu limehifadhiwa';

  @override
  String get taskCreated => 'Jukumu limeundwa';

  @override
  String get taskReminderNeedsDue =>
      'Weka tarehe ya mwisho ili kutumia vikumbusho vya muda linganishi';

  @override
  String get taskLabelName => 'Jina la lebo';

  @override
  String get taskPlanning => 'Upangaji';

  @override
  String get taskOrganize => 'Panga';

  @override
  String get taskBreakdown => 'Mgawanyo';

  @override
  String get trashDeleteTaskTitle => 'Futa jukumu hili kabisa?';

  @override
  String get trashDeleteNoteTitle => 'Futa dokezo hili kabisa?';

  @override
  String get trashDeleteBody => 'Hili haliwezi kutenduliwa.';

  @override
  String get trashEmptyTitle => 'Safisha tupio?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vipengee $count vitafutwa kabisa.',
      one: 'Kipengee 1 kitafutwa kabisa.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Kimerejeshwa';

  @override
  String get trashPurged => 'Kimefutwa kabisa';

  @override
  String trashDeletedOn(String date) {
    return 'Kilifutwa $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vipengee $count',
      one: 'Kipengee 1',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Soma kwa sauti';

  @override
  String get flashcardsTtsUnavailable =>
      'Huduma ya maandishi-kwa-sauti haipatikani kwenye kifaa hiki.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Hakuna sauti iliyosakinishwa kwa lugha hii. Ongeza moja katika mipangilio ya maandishi-kwa-sauti ya Android.';

  @override
  String get calendarAgenda => 'Ratiba';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Cheche',
      'rocket': 'Roketi',
      'book': 'Kitabu',
      'work': 'Kazi',
      'home': 'Nyumbani',
      'heart': 'Moyo',
      'code': 'Msimbo',
      'palette': 'Rangi',
      'fitness': 'Mazoezi',
      'school': 'Shule',
      'travel': 'Safari',
      'money': 'Akiba',
      'other': 'Aikoni',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Sehemu zaidi';

  @override
  String get cardFieldExample => 'Mfano';

  @override
  String get cardFieldExplanation => 'Maelezo';

  @override
  String get cardFieldPronunciation => 'Matamshi';

  @override
  String get cardFieldNotes => 'Madokezo ya ziada';

  @override
  String get projectMilestones => 'Hatua muhimu';

  @override
  String get milestoneAdd => 'Ongeza hatua muhimu';

  @override
  String get milestoneEdit => 'Hariri hatua muhimu';

  @override
  String get milestoneTitleLabel => 'Hatua muhimu';

  @override
  String get milestoneNoDate => 'Hakuna tarehe';

  @override
  String get milestonesEmpty =>
      'Bado hakuna hatua muhimu. Ongeza vituo vya ukaguzi vyenye tarehe ili kufuatilia mradi kwenye kalenda.';

  @override
  String get milestoneDeleted => 'Hatua muhimu imefutwa';

  @override
  String milestoneDoneA11y(String title) {
    return 'Weka alama kuwa hatua muhimu “$title” imekamilika';
  }

  @override
  String calendarMilestone(String project) {
    return 'Hatua muhimu · $project';
  }

  @override
  String get tasksViewInbox => 'Kikasha';

  @override
  String get tasksViewArchived => 'Yaliyohifadhiwa';

  @override
  String get tasksEmptyInbox =>
      'Majukumu yasiyo na mradi au tarehe hufika hapa. Yapange ukipata dakika moja.';

  @override
  String get tasksEmptyArchived =>
      'Majukumu yaliyohifadhiwa yanawekwa hapa, mbali na orodha na vikumbusho vyako.';

  @override
  String get taskArchivedBadge => 'Limehifadhiwa';

  @override
  String get taskStatusInProgress => 'Linaendelea';

  @override
  String get taskArchived => 'Jukumu limehifadhiwa';

  @override
  String get taskUnarchived => 'Jukumu limerejeshwa kutoka kwenye kumbukumbu';

  @override
  String get focusPlanTitle => 'Mpango wa vipindi';

  @override
  String focusPlanTotal(String duration) {
    return 'Jumla $duration';
  }

  @override
  String get focusPlanRounds => 'Vipindi vya umakini';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Mapumziko marefu baada ya';

  @override
  String get focusPlanSkipLastBreak => 'Ruka mapumziko ya mwisho';

  @override
  String get focusPlanAutoBreaks => 'Anza mapumziko kiotomatiki';

  @override
  String get focusPlanAutoFocus => 'Anza umakini kiotomatiki baada ya mapumziko';

  @override
  String get focusPlanSave => 'Hifadhi mpango';

  @override
  String get focusPlanNameHint => 'k.m. Maandalizi ya mtihani';

  @override
  String get focusPlanSaved => 'Mpango umehifadhiwa';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: dak $work za umakini, dak $rest za mapumziko';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Punguza $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Ongeza $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Kipindi $current kati ya $total';
  }

  @override
  String get focusSeriesComplete => 'Mfululizo umekamilika. Hongera!';

  @override
  String get filterAll => 'Yote';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added zimeletwa · nakala $duplicates zimerukwa · safu $invalid hazijakamilika';
  }

  @override
  String get flashcardsSuspend => 'Simamisha kadi';

  @override
  String get flashcardsResume => 'Endeleza kadi';

  @override
  String get flashcardsSuspended => 'Kadi imesimamishwa: haitapangwa';

  @override
  String get flashcardsResumed => 'Kadi imeendelezwa';

  @override
  String get flashcardsSuspendedFilter => 'Imesimamishwa';

  @override
  String flashcardsShownOf(int shown, int total) {
    return 'Kadi $shown kati ya $total';
  }

  @override
  String get flashcardsImportFile => 'Kutoka kwenye faili';

  @override
  String get speechTitle => 'Usemi';

  @override
  String get speechAppLanguage => 'Lugha ya programu';

  @override
  String get speechFrontLanguage => 'Lugha ya mbele';

  @override
  String get speechBackLanguage => 'Lugha ya nyuma';

  @override
  String get speechRepeat => 'Rudia kila usomaji';

  @override
  String get speechRate => 'Kasi';

  @override
  String get speechAutoRead => 'Soma swali kiotomatiki';

  @override
  String get speechHint =>
      'Hutumia sauti zilizosakinishwa kwenye kifaa hiki, bila mtandao. Ikiwa lugha haina sauti, utaambiwa na hakuna kingine kitakachotumika badala yake.';

  @override
  String get studyHowTitle => 'Ungependa kujifunza vipi?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rudia kadi $count',
      one: 'Rudia kadi 1',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Fanya mazoezi ya kadi zote (ratiba haibadiliki)';

  @override
  String get studyPracticeMistakes => 'Fanya mazoezi ya makosa ya hivi karibuni';

  @override
  String get studyPracticeHint =>
      'Mizunguko ya mazoezi haibadilishi kamwe wakati kadi zinapohitaji kurudiwa. Marudio husasisha ratiba.';

  @override
  String get studyModeClassic => 'Kawaida';

  @override
  String get studyModeReverse => 'Kinyume';

  @override
  String get studyModeMixed => 'Pande zote mbili';

  @override
  String get studyModeTyped => 'Andika jibu';

  @override
  String get studyModeChoice => 'Chaguo nyingi';

  @override
  String get studyModeListening => 'Kusikiliza';

  @override
  String get studyPractice => 'mazoezi';

  @override
  String get studyNoMistakes => 'Hakuna makosa ya hivi karibuni katika kifurushi hiki. Safi!';

  @override
  String get studyTypeAnswer => 'Andika jibu lako';

  @override
  String get studyCheck => 'Kagua';

  @override
  String get studyKnewIt => 'Nilijua';

  @override
  String get studyDidntKnow => 'Sikujua';

  @override
  String studyMistakes(int count) {
    return 'Zilizokosewa ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Rudia kadi zilizokosewa';

  @override
  String get studyCorrect => 'Sahihi';

  @override
  String get studyAlmost => 'Karibu — kagua tahajia';

  @override
  String get studyWrong => 'Si kabisa';

  @override
  String get studyShowText => 'Onyesha maandishi';

  @override
  String get flashcardsImportFileFailed =>
      'Faili halikuweza kufunguliwa. Unaweza kubandika maudhui yake badala yake.';

  @override
  String get studyNoMatchingCards => 'Bado hakuna kadi zinazolingana na chaguo hili.';

  @override
  String get studyPracticeNew => 'Mpya pekee';

  @override
  String get studyPracticeHard => 'Kadi ngumu';

  @override
  String get studyPracticeFavorites => 'Vipendwa';

  @override
  String get studySessionSize => 'Kadi kwa kila kipindi';

  @override
  String get studySessionAll => 'Zote';

  @override
  String get studyOrder => 'Mpangilio';

  @override
  String get studyOrderDue => 'Zilizochelewa zaidi kwanza';

  @override
  String get studyOrderRandom => 'Nasibu';

  @override
  String get studyOrderHardest => 'Ngumu zaidi kwanza';

  @override
  String get flashcardsHard => 'Ngumu';

  @override
  String get flashcardsFavorites => 'Vipendwa';

  @override
  String get flashcardsFavorite => 'Ongeza kwenye vipendwa';

  @override
  String get flashcardsUnfavorite => 'Ondoa kwenye vipendwa';

  @override
  String get flashcardsDuplicate => 'Nakili';

  @override
  String get flashcardsMoveTo => 'Hamishia kwenye kifurushi';

  @override
  String get flashcardsNoOtherDeck => 'Unda kifurushi kingine kwanza.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count zimehamishwa',
      one: 'Kadi imehamishwa',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Ongeza lebo';

  @override
  String get flashcardsTagHint => 'k.m. vitenzi';

  @override
  String flashcardsSelected(int count) {
    return '$count zimechaguliwa';
  }

  @override
  String get flashcardsSelectAll => 'Chagua zote zinazoonyeshwa';

  @override
  String flashcardsSelectCard(String front) {
    return 'Chagua $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Kukumbuka $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Huenda ni nakala';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Kifurushi hiki tayari kina “$front” → “$back”. Hifadhi hata hivyo?';
  }

  @override
  String get flashcardsSaveAnyway => 'Hifadhi hata hivyo';

  @override
  String get flashcardsStats => 'Takwimu';

  @override
  String get flashcardsStatTotal => 'Kadi';

  @override
  String get flashcardsStatLearning => 'Zinazojifunzwa';

  @override
  String get flashcardsStatMatureCaption => 'Zimekumbukwa siku 21+';

  @override
  String get flashcardsStatReviewsToday => 'Marudio ya leo';

  @override
  String get flashcardsStatCorrect => 'Majibu sahihi';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Siku $days zilizopita';
  }

  @override
  String get flashcardsStatForget => 'Kiwango cha kusahau';

  @override
  String get flashcardsStatForgetCaption => '“Tena” kwenye kadi zilizojifunzwa';

  @override
  String get flashcardsStatRecall => 'Kukumbuka sasa';

  @override
  String get flashcardsStatRecallCaption => 'Makadirio ya FSRS, kadi zilizorudiwa';

  @override
  String flashcardsStatActivity(int count) {
    return 'Marudio kwa siku · $count kwa jumla';
  }

  @override
  String get flashcardsStatHistory => 'Majibu ya hivi karibuni';

  @override
  String get flashcardsStatNoHistory =>
      'Bado hakuna marudio. Jifunze kifurushi ili kuona maendeleo yako hapa.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Soma $field kwa sauti';
  }

  @override
  String get speechVoice => 'Sauti';

  @override
  String get speechVoiceDefault => 'Kiotomatiki';

  @override
  String get speechVoiceOnline => 'inahitaji intaneti';

  @override
  String get speechTest => 'Jaribu sauti';

  @override
  String get importNext => 'Onyesho la kukagua';

  @override
  String get importPreviewTitle => 'Linganisha safu na sehemu';

  @override
  String get importIgnoreColumn => 'Puuza';

  @override
  String importColumn(int n) {
    return 'Safu $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Kadi $ready ziko tayari · safu $invalid zisizokamilika zitarukwa';
  }

  @override
  String get importNeedFrontBack => 'Chagua safu zipi ni mbele na nyuma.';

  @override
  String get actionMoveUp => 'Sogeza juu';

  @override
  String get actionMoveDown => 'Sogeza chini';

  @override
  String get flashcardsLayoutTitle => 'Mpangilio wa kadi';

  @override
  String get flashcardsLayoutHint =>
      'Badilisha jina, ficha au panga upya sehemu za ziada za kifurushi hiki. Maudhui ya kadi hayabadilishwi kamwe.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Onyesha $field wakati wa kujifunza';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Funua jibu hatua kwa hatua';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Upande wa nyuma unaonekana kwanza; kila sehemu ya ziada hufunguka kwa kugusa.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Onyesha $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Faili hili ni kubwa kuliko MB $mb.';
  }

  @override
  String get flashcardsImage => 'Picha';

  @override
  String get flashcardsAudio => 'Sauti';

  @override
  String get flashcardsAddImage => 'Ongeza picha';

  @override
  String get flashcardsAddAudio => 'Ongeza sauti';

  @override
  String get flashcardsPlayAudio => 'Cheza rekodi';

  @override
  String get flashcardsAudioUnavailable => 'Rekodi hii haiwezi kuchezwa kwenye kifaa hiki.';

  @override
  String get flashcardsCustomFields => 'Sehemu zako';

  @override
  String get flashcardsTemplates => 'Violezo';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Sehemu $n';
  }

  @override
  String get flashcardsAddField => 'Ongeza sehemu';

  @override
  String get flashcardsFieldName => 'Jina la sehemu';

  @override
  String get flashcardsFieldLangDefault => 'Lugha ya upande';

  @override
  String get flashcardsTemplateConfirm =>
      'Kiolezo huweka jinsi sehemu zinavyoonyeshwa na huongeza sehemu zake. Kadi zako na sehemu zilizopo zinabaki kama zilivyo.';

  @override
  String get flashcardsApplyTemplate => 'Tumia';

  @override
  String get templateVocabulary => 'Msamiati';

  @override
  String get templateTwoTranslations => 'Neno lenye tafsiri mbili';

  @override
  String get templateQuestionAnswer => 'Swali na jibu';

  @override
  String get templateDefinition => 'Istilahi na ufafanuzi';

  @override
  String get templateGrammar => 'Kanuni ya sarufi';

  @override
  String get templateFieldPlural => 'Wingi';

  @override
  String get templateFieldTranslation2 => 'Tafsiri ya pili';

  @override
  String get templateFieldSynonyms => 'Visawe';

  @override
  String get templateFieldRule => 'Kanuni';

  @override
  String get deckCategory => 'Kiwango au mada';

  @override
  String get deckCategoryHint => 'k.m. A1, Tiba';

  @override
  String get flashcardsSearchAll => 'Tafuta kadi zote';

  @override
  String get flashcardsSearchAllHint => 'Neno, tafsiri, mfano, dokezo, lebo…';

  @override
  String get flashcardsAllDecks => 'Vifurushi vyote';

  @override
  String get flashcardsAllLanguages => 'Lugha zote';

  @override
  String get flashcardsLangUnset => 'Lugha haijawekwa';

  @override
  String get flashcardsLevelUnset => 'Hakuna kiwango wala mada';

  @override
  String get flashcardsByLanguage => 'Maendeleo kwa lugha';

  @override
  String get flashcardsByLevel => 'Maendeleo kwa kiwango au mada';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Vifurushi $decks · kadi $cards · $mature zilizoimarika · $due za kurudia · $correct sahihi (siku 30)';
  }

  @override
  String get flashcardsRecord => 'Rekodi';

  @override
  String get flashcardsRecording => 'Inarekodi…';

  @override
  String get flashcardsRecordStop => 'Simamisha na uhifadhi';

  @override
  String get flashcardsMicDenied =>
      'Ufikiaji wa maikrofoni umezimwa. Uruhusu katika mipangilio ya mfumo ili kurekodi.';

  @override
  String get flashcardsRecordFailed => 'Kurekodi hakupatikani kwenye kifaa hiki.';

  @override
  String get soundsTitle => 'Sauti';

  @override
  String get soundsNature => 'Asili';

  @override
  String get soundsNoise => 'Kelele ya umakini';

  @override
  String get soundRain => 'Mvua';

  @override
  String get soundStorm => 'Radi na mvua';

  @override
  String get soundRiver => 'Mto';

  @override
  String get soundOcean => 'Mawimbi ya bahari';

  @override
  String get soundFire => 'Moto wa kambi';

  @override
  String get soundForest => 'Ndege wa msituni';

  @override
  String get soundNight => 'Usiku wa kiangazi';

  @override
  String get soundWhite => 'Kelele nyeupe';

  @override
  String get soundPink => 'Kelele ya waridi';

  @override
  String get soundBrown => 'Kelele ya kahawia';

  @override
  String get soundsPlay => 'Cheza';

  @override
  String get soundsSleep => 'Kipima muda cha usingizi';

  @override
  String get soundsSleepOff => 'Imezimwa';

  @override
  String soundsSleepAt(String time) {
    return 'Itasimama saa $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Hadi sauti $count zinaweza kucheza kwa wakati mmoja.';
  }

  @override
  String get soundsHint => 'Gusa sauti ili kuanza. Changanya kadhaa na uweke sauti ya kila moja.';

  @override
  String get soundsMixer => 'Mchanganyiko';

  @override
  String soundsVolumeOf(String name) {
    return 'Sauti ya $name';
  }

  @override
  String get soundsChannel => 'Sauti za asili';

  @override
  String get settingsEndTone => 'Sauti ya mwisho wa kipima muda';

  @override
  String get toneGentle => 'Milio laini';

  @override
  String get toneBeeps => 'Milio';

  @override
  String get toneWood => 'Kugonga mbao';

  @override
  String get toneBird => 'Mlio wa ndege';

  @override
  String get toneStream => 'Kijito';

  @override
  String get toneSystem => 'Sauti ya simu';

  @override
  String get speechOnPhone => 'Kwenye simu hii';

  @override
  String get speechAllLanguages => 'Lugha zote';

  @override
  String get speechSearchLanguage => 'Tafuta lugha';

  @override
  String get speechGetVoices => 'Pakua sauti zaidi';

  @override
  String get speechGetVoicesHint =>
      'Sauti za lugha zisizo na sauti zinaweza kupakuliwa katika mipangilio ya usemi ya simu.';

  @override
  String get speechSettingsFailed => 'Imeshindwa kufungua mipangilio ya usemi kwenye simu hii.';

  @override
  String get speechVoiceMissing => 'Hakuna sauti iliyosakinishwa';

  @override
  String get speechPause => 'Pumziko kati ya marudio';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Soma mfano pamoja na jibu';

  @override
  String get flashListen => 'Sikiliza';

  @override
  String get flashListenNext => 'Kadi inayofuata';

  @override
  String get flashListenEmpty => 'Hakuna kadi za kusikiliza.';

  @override
  String get flashViewTable => 'Jedwali';

  @override
  String get flashViewCards => 'Kadi';

  @override
  String get flashSwapSides => 'Badilisha safu';

  @override
  String get flashSort => 'Panga';

  @override
  String get flashSortNewest => 'Mpya zaidi kwanza';

  @override
  String get flashSortAlpha => 'A hadi Z';

  @override
  String get flashSortDue => 'Za kurudia kwanza';

  @override
  String get flashSortHard => 'Ngumu zaidi kwanza';

  @override
  String get flashPasteCards => 'Bandika kadi';

  @override
  String get flashClipboardEmpty => 'Ubao wa kunakili hauna maandishi.';

  @override
  String get flashMenuAdd => 'Ongeza kadi';

  @override
  String get flashMenuDeck => 'Kifurushi';

  @override
  String get flashToday => 'Leo';

  @override
  String get flashStudyNow => 'Jifunze';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count zimejibiwa',
      one: 'Kadi 1 imejibiwa',
      zero: 'Hakuna kadi zilizojibiwa',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Mvua msituni';

  @override
  String get autoBackupTitle => 'Nakala rudufu za kiotomatiki';

  @override
  String get autoBackupDesc => 'Kila siku kwenye simu hii; 7 za mwisho zinahifadhiwa';

  @override
  String get autoBackupHint =>
      'Nakala hizi zinabaki kwenye simu hii na huondolewa programu ikiondolewa. Kuhamia simu mpya, tumia “Hifadhi nakala” kuhifadhi faili.';

  @override
  String get autoBackupNone => 'Bado hakuna nakala rudufu ya kiotomatiki. Ya kwanza itaundwa leo.';

  @override
  String get autoBackupRestore => 'Rejesha';

  @override
  String autoBackupConfirm(String date) {
    return 'Badilisha data yote ya sasa na nakala rudufu ya $date?';
  }

  @override
  String get autoBackupRestored => 'Imerejeshwa.';

  @override
  String get errorLogTitle => 'Kumbukumbu ya hitilafu';

  @override
  String get errorLogHint =>
      'Kitu kikienda vibaya, kinarekodiwa hapa: aina ya hitilafu na mahali kwenye msimbo pekee, kamwe si maudhui yako. Ishiriki ili kusaidia kurekebisha tatizo.';

  @override
  String get errorLogEmpty => 'Hakuna hitilafu zilizorekodiwa.';

  @override
  String get errorLogClear => 'Futa';

  @override
  String get soundsWithFocus => 'Cheza wakati wa vipindi vya umakini';

  @override
  String get soundsWithFocusHint =>
      'Mchanganyiko wako huanza na kipindi cha umakini na husitishwa wakati wa mapumziko.';

  @override
  String get soundsSavedMixes => 'Michanganyiko iliyohifadhiwa';

  @override
  String get soundsSaveMix => 'Hifadhi mchanganyiko huu';

  @override
  String get soundsMixNameHint => 'Jina, k.m. Maktaba yenye mvua';

  @override
  String soundsDeleteMix(String name) {
    return 'Futa mchanganyiko “$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Mara moja kwa siku, pale tu kuna kadi za kurudia';

  @override
  String get settingsReviewTime => 'Saa ya kikumbusho';

  @override
  String get shortcutFocus => 'Umakini';

  @override
  String get shortcutNewTask => 'Jukumu jipya';

  @override
  String get shortcutReview => 'Rudia kadi';

  @override
  String get shortcutSounds => 'Sauti za asili';

  @override
  String get myDayTitle => 'Anza siku yangu';

  @override
  String get myDayHint => 'Siku yako kwa mtazamo mmoja, kisha mguso mmoja wa umakini';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Majukumu $count ya leo',
      one: 'Jukumu 1 la leo',
      zero: 'Hakuna majukumu ya leo',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Hakuna matukio zaidi leo';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Linalofuata: $title saa $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yamebaki mazoea $count',
      one: 'Limebaki zoea 1',
      zero: 'Mazoea yote yamefanyika',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Anza na kipindi cha umakini';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabiul Awwal';

  @override
  String get hijriMonth4 => 'Rabiul Akhir';

  @override
  String get hijriMonth5 => 'Jumadal Ula';

  @override
  String get hijriMonth6 => 'Jumadal Akhira';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Shaaban';

  @override
  String get hijriMonth9 => 'Ramadhani';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhul Qaada';

  @override
  String get hijriMonth12 => 'Dhul Hijja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year BH';
  }

  @override
  String get settingsHijri => 'Tarehe za Hijria';

  @override
  String get settingsHijriHint => 'Zinaonyeshwa kwenye kalenda na skrini ya nyumbani (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Siku $count',
      one: 'Siku 1',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Kadi $done kati ya $goal leo';
  }

  @override
  String get studyGoalReached => 'Lengo la kila siku limefikiwa. Hongera!';

  @override
  String get studyWeekTitle => 'Wiki yako';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count zimejibiwa katika siku 7',
      one: 'Kadi 1 imejibiwa katika siku 7',
      zero: 'Hakuna kadi zilizojibiwa katika siku 7',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration za umakini katika siku 7';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Mfululizo: $current · Bora: $best';
  }

  @override
  String get studyGoalTitle => 'Lengo la kila siku (kadi)';

  @override
  String get studyGoalOff => 'Imezimwa';

  @override
  String get focusDndTitle => 'Usinisumbue wakati wa umakini';

  @override
  String get focusDndHint => 'Huwashwa kwa kila kipindi cha umakini na kuzimwa wakati wa mapumziko';

  @override
  String get focusDndNeedsAccess => 'Ruhusu ufikiaji katika mipangilio ya simu ili kutumia hili';

  @override
  String get voiceInput => 'Ongea ili kuandika';

  @override
  String get voiceInputPrompt => 'Ongea sasa';

  @override
  String get voiceInputUnavailable =>
      'Kuandika kwa sauti hakupatikani kwenye simu hii. Sakinisha au washa huduma ya usemi (kwa mfano Utambuzi na Usanisi wa Usemi wa Google).';

  @override
  String get prayerFajr => 'Alfajiri';

  @override
  String get prayerSunrise => 'Macheo';

  @override
  String get prayerDhuhr => 'Adhuhuri';

  @override
  String get prayerAsr => 'Alasiri';

  @override
  String get prayerMaghrib => 'Magharibi';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Muungano wa Waislamu Duniani';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Makka';

  @override
  String get prayerMethodEgypt => 'Mamlaka Kuu ya Misri';

  @override
  String get prayerMethodJordan => 'Jordan, Wizara ya Wakfu';

  @override
  String get prayerMethodKarachi => 'Chuo Kikuu cha Sayansi za Kiislamu, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Eneo la Ghuba';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Uturuki, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malaysia, Indonesia';

  @override
  String get prayerMethodFrance => 'Ufaransa (12°)';

  @override
  String get prayerMethodRussia => 'Urusi, Utawala wa Kiroho';

  @override
  String prayerNotifTitle(String name) {
    return 'Wakati wa $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Wakati wa swala · $time';
  }

  @override
  String get prayerTitle => 'Nyakati za swala';

  @override
  String get prayerOffHint =>
      'Chagua mji wako ili kuona nyakati za swala. Zinakokotolewa kwenye simu; hakuna haja ya kufikia mahali ulipo.';

  @override
  String get prayerChooseCity => 'Chagua mji';

  @override
  String get prayerCity => 'Mji';

  @override
  String get prayerCitySearch => 'Tafuta mji';

  @override
  String get prayerMethod => 'Njia ya ukokotoaji';

  @override
  String get prayerHanafiAsr => 'Alasiri ya Hanafi (wakati wa baadaye)';

  @override
  String get prayerReminders => 'Arifu kila wakati wa swala';

  @override
  String get prayerPauseFocus => 'Sitisha umakini wakati wa swala';

  @override
  String get prayerPauseFocusHint => 'Kipindi kinachoendelea husitishwa; endelea baada ya swala';

  @override
  String get prayerTurnOff => 'Zima nyakati za swala';

  @override
  String get prayerAccuracyNote =>
      'Nyakati zilizokokotolewa zinaweza kutofautiana kwa dakika chache na msikiti wako wa karibu.';

  @override
  String prayerNext(String name, String time) {
    return '$name saa $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Faili hili la Anki linatumia muundo mpya zaidi. Katika Anki, hamisha tena ukiwa umewasha “Support older Anki versions”, kisha uliete faili hilo.';

  @override
  String get importTemplate => 'Kiolezo cha lahajedwali';

  @override
  String get importTemplateFront => 'tufaha';

  @override
  String get importTemplateBack => 'tunda la mviringo';

  @override
  String get importTemplateExample => 'Ninakula tufaha kila siku.';

  @override
  String get importTemplateTag => 'chakula';

  @override
  String get starterTitle => 'Vifurushi vya kuanzia';

  @override
  String get starterHint =>
      'Ongeza kimoja ili uanze kujifunza mara moja. Unaweza kukihariri au kukifuta baadaye.';

  @override
  String get starterAdd => 'Ongeza';

  @override
  String get starterWords => 'Maneno ya Kiingereza ya kila siku (Kiarabu)';

  @override
  String get starterCapitals => 'Miji mikuu ya dunia';

  @override
  String get starterElements => 'Elementi za kemikali';

  @override
  String get settingsAccent => 'Rangi ya msisitizo';

  @override
  String get accentViolet => 'Zambarau';

  @override
  String get accentBlue => 'Bluu';

  @override
  String get accentTeal => 'Samawati-kijani';

  @override
  String get accentGreen => 'Kijani';

  @override
  String get accentRose => 'Waridi';

  @override
  String get accentAmber => 'Kaharabu';

  @override
  String get settingsFlashTextSize => 'Ukubwa wa maandishi ya kadi';

  @override
  String get settingsFlashTextSample => 'Mfano';

  @override
  String get widgetStartFocus => 'Gusa ili uwe makini';

  @override
  String widgetFocusUntil(String time) {
    return 'Umakini hadi $time';
  }

  @override
  String get widgetNoCardsDue => 'Kadi: zote zimekamilika';

  @override
  String get faqMyDayQ => '“Anza siku yangu” hufanya nini?';

  @override
  String get faqMyDayA =>
      'Mara moja kwa siku skrini ya nyumbani hukupa: ona majukumu ya leo, tukio linalofuata, mazoea yaliyobaki na kadi za kurudia, kisha anza kipindi cha umakini kwa mguso mmoja. Bonyeza kwa muda mrefu aikoni ya programu kwa vitendo vya haraka, au ongeza wijeti ya skrini ya nyumbani kuona muda wa umakini na kadi za kurudia.';

  @override
  String get faqTasksQ => 'Ninaongezaje jukumu lenye kikumbusho?';

  @override
  String get faqTasksA =>
      'Gusa Jukumu jipya kwenye Nyumbani au + kwenye Majukumu. Andika kichwa au kiseme kwa maikrofoni, kisha weka tarehe ya mwisho, saa na kikumbusho. Majukumu yaliyochelewa huorodheshwa kwanza.';

  @override
  String get faqFocusQ => 'Kipima muda cha umakini kinafanyaje kazi?';

  @override
  String get faqFocusA =>
      'Chagua Pomodoro, kuhesabu kurudi nyuma au muda huru na ubonyeze Anza; mapumziko yanaweza kufuata kiotomatiki. Katika Mipangilio unaweza kuchagua sauti ya mwisho, kuwasha Usinisumbue wakati wa umakini, na kucheza sauti zako za asili kila kipindi.';

  @override
  String get faqSoundsQ => 'Je, ninaweza kuchanganya sauti za asili?';

  @override
  String get faqSoundsA =>
      'Washa hadi rekodi sita halisi, weka sauti ya kila moja na uhifadhi mchanganyiko kwa jina. Zinaendelea kucheza chinichini, na kipima muda cha usingizi kinaweza kuzisimamisha. Hakuna muziki unaotumika.';

  @override
  String get faqCalendarQ => 'Je, kalenda inaweza kuonyesha tarehe za Hijria?';

  @override
  String get faqCalendarA =>
      'Ndiyo. Tarehe za Hijria (Umm al-Qura) huonyeshwa kiotomatiki kwa Kiarabu na zinaweza kuwashwa katika Mipangilio kwa lugha yoyote. Matukio, majukumu yenye tarehe za mwisho na hatua muhimu za miradi huonekana pamoja.';

  @override
  String get faqFlashcardsQ => 'Marudio huamuaje kadi nitakazoona?';

  @override
  String get faqFlashcardsA =>
      'Kadi unazozijua vizuri hurudi baada ya vipindi virefu na kadi unazokosea hurudi hivi karibuni (marudio yaliyopangwa). Kadiria kila jibu: Tena, Ngumu, Nzuri au Rahisi. Weka lengo la kila siku na uendeleze mfululizo wako kwenye kadi ya Leo. Weka tarehe ya mtihani kwenye kifurushi ili kuona siku zilizobaki na kadi mpya ngapi za kujifunza kila siku. Panga kwa “Mpangilio wangu” ili kuburuta kadi mahali pake, gusa spika upande wowote ili kuusikia, na weka kasi na marudio kwenye menyu ya Usemi.';

  @override
  String get faqImportQ => 'Je, ninaweza kuleta kadi kutoka Anki au Excel?';

  @override
  String get faqImportA =>
      'Ndiyo. Kwenye kifurushi chagua Leta, kisha chagua faili: Anki (.apkg), Excel (.xlsx) au CSV, na ulinganishe safu. Tumia “Kiolezo cha lahajedwali” kuandika kadi kwenye kompyuta. Picha na sauti ndani ya faili za Anki haziletwi.';

  @override
  String get faqNotesQ => 'Madokezo yanaweza kufanya nini?';

  @override
  String get faqNotesA =>
      'Andika kwa uhuru ukitumia orodha za ukaguzi na uumbizaji, bandika au weka kama vipendwa madokezo muhimu, ongeza lebo na unganisha madokezo na majukumu. Kitufe cha maikrofoni hukuwezesha kuongea badala ya kuandika. Dokezo jipya linaweza kuanza kutoka kiolezo (mhadhara, muhtasari wa kitabu, shajara, mpango wa wiki), na kitufe cha picha huongeza picha.';

  @override
  String get faqHabitsQ => 'Mifululizo ya mazoea huhesabiwaje?';

  @override
  String get faqHabitsA =>
      'Siku huhesabiwa unapofikia lengo la zoea siku iliyopangwa. Kusitisha zoea huulinda mfululizo. Kila zoea linaweza kuwa na saa yake ya kikumbusho.';

  @override
  String get faqGoalsQ => 'Malengo hufuatiliaje maendeleo?';

  @override
  String get faqGoalsA =>
      'Lipe lengo kiasi lengwa na kipimo, kisha urekodi maendeleo. Kadi yake inaonyesha umefika wapi na kiasi gani kimebaki kabla ya tarehe ya mwisho.';

  @override
  String get faqProjectsQ => 'Miradi ni ya nini?';

  @override
  String get faqProjectsA =>
      'Panga majukumu chini ya mradi, ongeza hatua muhimu zenye tarehe na ufuatilie maendeleo ya jumla. Hatua muhimu pia huonekana kwenye kalenda.';

  @override
  String get faqInsightsQ => 'Maarifa yanaonyesha nini?';

  @override
  String get faqInsightsA =>
      'Muda wako wa umakini, majukumu yaliyokamilika na masomo kwa siku na wiki, pamoja na mapendekezo ya upole. Kila kitu hukokotolewa kwenye simu yako.';

  @override
  String get faqSpacesQ => 'Sehemu zote ziko wapi?';

  @override
  String get faqSpacesA =>
      'Nafasi huorodhesha kila sehemu ya programu (madokezo, vifurushi, mazoea, malengo, miradi, sauti na zaidi) ili upau mkuu ubaki rahisi.';

  @override
  String get faqBackupQ => 'Data yangu inahifadhiwaje nakala rudufu?';

  @override
  String get faqBackupA =>
      'Kila siku programu huhifadhi kimya nakala iliyosimbwa kwenye simu hii na kubaki na 7 za mwisho. Katika Mipangilio unaweza pia kuhamisha faili la nakala rudufu lililolindwa kwa nenosiri na kulirejesha kwenye simu nyingine.';

  @override
  String get faqPrayerQ => 'Nyakati za swala zinafanyaje kazi?';

  @override
  String get faqPrayerA =>
      'Chagua mji wako katika Mipangilio → Nyakati za swala. Nyakati hukokotolewa kwenye simu kwa njia inayotumika huko, na unaweza kubadilisha njia na madhehebu ya Alasiri. Unaweza kuarifiwa kila swala, na kipindi cha umakini kinachoendelea husitishwa.';

  @override
  String get faqPrivacyQ => 'Data yangu imehifadhiwa wapi?';

  @override
  String get faqPrivacyA =>
      'Kwenye simu yako pekee, katika hifadhidata iliyosimbwa. Hakuna akaunti na hakuna ufuatiliaji. Intaneti hutumiwa tu na vipengele unavyowasha wewe mwenyewe, kama msaidizi wa hiari.';

  @override
  String get faqAssistantQ => 'Msaidizi ni nini?';

  @override
  String get faqAssistantA =>
      'Msaidizi wa hiari unayemuunganisha na huduma yako mwenyewe ya AI katika Mipangilio. Amezimwa kwa chaguomsingi na huuliza kabla ya kutuma maandishi yoyote ya dokezo.';

  @override
  String get tourPlanTitle => 'Panga siku yako';

  @override
  String get tourPlanBody =>
      'Majukumu, kalenda na mazoea mahali pamoja patulivu. Anza kila asubuhi kwa “Anza siku yangu”.';

  @override
  String get tourFocusTitle => 'Kuwa makini kwa kina';

  @override
  String get tourFocusBody =>
      'Vipindi vyenye muda, sauti halisi za asili, Usinisumbue na milio laini ya mwisho.';

  @override
  String get tourLearnTitle => 'Jifunze kwa kudumu';

  @override
  String get tourLearnBody =>
      'Kadi zenye marudio yaliyopangwa, usemi katika lugha nyingi, na kuleta kutoka Anki au Excel.';

  @override
  String get helpTitle => 'Msaada na maswali';

  @override
  String get helpOpen => 'Fungua';

  @override
  String get helpTour => 'Tembelea utangulizi';

  @override
  String get tourNext => 'Endelea';

  @override
  String get tourDone => 'Tuanze';

  @override
  String get transferColTitle => 'Kichwa';

  @override
  String get transferColNotes => 'Madokezo';

  @override
  String get transferColBody => 'Maandishi';

  @override
  String get transferColDue => 'Tarehe ya mwisho';

  @override
  String get transferColPriority => 'Kipaumbele (0-3)';

  @override
  String get transferColDone => 'Imekamilika';

  @override
  String get transferColProject => 'Mradi';

  @override
  String get transferColCategory => 'Aina';

  @override
  String get transferTitle => 'Leta na hamisha';

  @override
  String get transferSaveAs => 'Hifadhi kama';

  @override
  String get transferImport => 'Leta kutoka kwenye faili';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV au jedwali katika Word. Safu: kichwa, tarehe ya mwisho (2026-12-31), kipaumbele 0-3, imekamilika, mradi, madokezo. Majukumu ambayo tayari yako kwenye programu yanarukwa.';

  @override
  String get transferImportNotesHint =>
      'Faili za Word, Markdown au maandishi huwa dokezo. Excel au CSV: dokezo moja kwa kila safu (kichwa, maandishi).';

  @override
  String get transferSaved => 'Faili limehifadhiwa';

  @override
  String get transferFailed => 'Faili halikuweza kuundwa. Hakuna kilichobadilishwa.';

  @override
  String get transferUnsupported =>
      'Faili hili haliwezi kusomwa hapa. Tumia Excel, CSV, Word, Markdown au maandishi.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added vimeongezwa',
      one: '1 kimeongezwa',
      zero: 'Hakuna jipya la kuongeza',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Maandishi';

  @override
  String get transferAllNotes => 'Madokezo yote';

  @override
  String get transferThisNote => 'Dokezo hili';

  @override
  String get transferDeckFormats => 'Hifadhi kama Excel, Word au PDF';

  @override
  String get faqFilesQ => 'Je, ninaweza kutumia faili za Excel, Word au PDF?';

  @override
  String get faqFilesA =>
      'Ndiyo. Majukumu na Madokezo yana kitufe cha kuleta na kuhamisha (mishale miwili) juu, na kila kifurushi kinacho kwenye menyu yake. Hifadhi kama Excel, CSV, Word au PDF, au leta faili za Excel, CSV, Word, Markdown au maandishi. Majina ya safu yanaweza kuwa katika lugha yoyote ya programu, na faili ulizohifadhi zinaweza kuletwa tena wakati wowote.';

  @override
  String get tplLecture => 'Mhadhara';

  @override
  String get tplBook => 'Muhtasari wa kitabu';

  @override
  String get tplJournal => 'Shajara';

  @override
  String get tplWeek => 'Mpango wa wiki';

  @override
  String get tplLectureBody => '## Mambo muhimu\n- \n\n## Maswali\n- [ ] \n\n## Muhtasari\n';

  @override
  String get tplBookBody =>
      '## Wazo kuu\n\n## Nilichojifunza\n- \n\n## Nukuu\n> \n\n## Cha kutekeleza\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Ninashukuru kwa\n- \n\n## Umakini wa leo\n- [ ] \n\n## Madokezo\n';

  @override
  String get tplWeekBody =>
      '## Malengo ya wiki hii\n- [ ] \n\n### Jumamosi\n- [ ] \n\n### Jumapili\n- [ ] \n\n### Jumatatu\n- [ ] \n\n### Jumanne\n- [ ] \n\n### Jumatano\n- [ ] \n\n### Alhamisi\n- [ ] \n\n### Ijumaa\n- [ ] \n';

  @override
  String get tplHint => 'Anza kutoka kiolezo';

  @override
  String get noteImage => 'Picha';

  @override
  String get noteAddImage => 'Ongeza picha';

  @override
  String get noteImageUnreadable => 'Faili hili si picha ambayo programu inaweza kusoma.';

  @override
  String get noteImageTooLarge => 'Picha hii ni kubwa mno.';

  @override
  String get examSet => 'Weka tarehe ya mtihani';

  @override
  String get examDate => 'Tarehe ya mtihani';

  @override
  String get examToday => 'Mtihani ni leo. Kila la heri!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mtihani baada ya siku $count',
      one: 'Mtihani kesho',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jifunze kadi $count mpya kwa siku',
      one: 'jifunze kadi 1 mpya kwa siku',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'kadi zote zimejifunzwa, endelea kurudia';

  @override
  String examRaiseLimit(int count) {
    return 'Onyesha kadi $count mpya kwa siku';
  }

  @override
  String get backupDriveHint =>
      'Ili kuhifadhi nakala mtandaoni, chagua Google Drive (au programu nyingine ya wingu) kwenye skrini ya kuhifadhi itakayofunguka.';

  @override
  String get flashShareDeck => 'Shiriki kifurushi na rafiki';

  @override
  String get flashSortManual => 'Mpangilio wangu (buruta)';

  @override
  String get flashReorderHint => 'Shikilia mpini na uburute kadi ili kuihamisha.';

  @override
  String get flashReorderNeedsAll => 'Futa utafutaji na vichujio ili kuburuta kadi.';

  @override
  String get flashDragHandle => 'Buruta ili kuhamisha';

  @override
  String get reportTitle => 'Ripoti ya mwezi';

  @override
  String get reportFocus => 'Muda wa umakini';

  @override
  String reportSessions(int count) {
    return 'Vipindi $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Siku bora: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Siku $count hai';
  }

  @override
  String get reportCards => 'Kadi zilizorudiwa';

  @override
  String reportCardsKnown(String percent) {
    return '$percent zimekumbukwa';
  }

  @override
  String get reportTasks => 'Majukumu yaliyokamilika';

  @override
  String get reportHabits => 'Alama za mazoea';

  @override
  String get reportEmpty => 'Bado hakuna kilichorekodiwa mwezi huu.';

  @override
  String get reportSave => 'Hifadhi kama PDF au Word';

  @override
  String get reportPrevMonth => 'Mwezi uliopita';

  @override
  String get reportNextMonth => 'Mwezi ujao';

  @override
  String get careTitle => 'Utunzaji wa simu yako na data';

  @override
  String get storageTitle => 'Hifadhi';

  @override
  String get storageSubtitle => 'Kinachochukua nafasi na kusafisha picha zisizotumika';

  @override
  String get storagePictures => 'Picha kwenye madokezo';

  @override
  String get storageCardMedia => 'Picha na sauti kwenye kadi';

  @override
  String get storageText => 'Maandishi ya madokezo';

  @override
  String get storageFree => 'Nafasi wazi kwenye simu yako';

  @override
  String get storageLow =>
      'Simu yako imekaribia kujaa. Ondoa vitu ili nakala rudufu na vikumbusho viendelee kufanya kazi.';

  @override
  String storageUnused(int count, String size) {
    return 'Picha $count zisizotumika ($size)';
  }

  @override
  String get storageNoUnused => 'Hakuna picha zisizotumika. Kila kitu kiko safi.';

  @override
  String get storageClean => 'Ondoa picha zisizotumika';

  @override
  String storageCleaned(int count) {
    return 'Picha $count zimeondolewa';
  }

  @override
  String get storageHint =>
      'Picha huhesabiwa kuwa haitumiki pale tu hakuna dokezo linaloionyesha, pamoja na madokezo yaliyo kwenye tupio.';

  @override
  String get batteryTitle => 'Hakikisha vikumbusho vinafanya kazi';

  @override
  String get batterySubtitle => 'Baadhi ya simu husimamisha programu chinichini. Kagua yako.';

  @override
  String get batteryStatusOk =>
      'Kiokoa betri hakizuii programu hii. Vikumbusho na sauti vinapaswa kufika kwa wakati.';

  @override
  String get batteryStatusLimited =>
      'Kiokoa betri kinaweza kusimamisha programu hii chinichini, kwa hivyo vikumbusho na sauti vinaweza kuchelewa au kukosekana.';

  @override
  String get batteryOpen => 'Fungua mipangilio ya betri';

  @override
  String get batteryOpenApp => 'Fungua mipangilio ya programu';

  @override
  String get batteryGeneric =>
      'Katika mipangilio ya betri chagua programu hii na uiweke kuwa Bila kikomo (au Usiboreshe).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: pia fungua Usalama › Ruhusa › Kujiwasha na uwashe programu hii, na uweke Kiokoa betri kuwa Bila vizuizi.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: fungua Betri › programu hii na uruhusu shughuli za chinichini na kujiwasha; funga programu kwenye orodha ya programu za hivi karibuni.';

  @override
  String get batterySamsung =>
      'Samsung: Betri › Vikomo vya matumizi ya chinichini: ondoa programu hii kwenye Programu zilizolala na Programu zilizolala fofofo.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Uzinduzi wa programu › programu hii › dhibiti mwenyewe, na uruhusu kujiwasha, uzinduzi wa pili na kuendeshwa chinichini.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Betri › Matumizi ya nishati chinichini › ruhusu programu hii, na uwashe kujiwasha katika ruhusa.';

  @override
  String get whatsNewTitle => 'Mapya';

  @override
  String get whatsNewSubtitle => 'Mabadiliko ya karibuni kwa mistari michache';

  @override
  String get whatsNewDone => 'Nimeelewa';

  @override
  String get whatsNewOrderTitle => 'Buruta kadi kwa mpangilio wako';

  @override
  String get whatsNewOrderBody =>
      'Kwenye kifurushi chagua Panga › Mpangilio wangu, kisha shikilia mpini na uburute.';

  @override
  String get whatsNewSpeechTitle => 'Spika kwenye kila upande wa kadi';

  @override
  String get whatsNewSpeechBody =>
      'Igusa ili kusikia neno au tafsiri. Kasi, marudio na sauti viko kwenye menyu ya marudio. Lugha hutambuliwa kutoka kwenye maandishi.';

  @override
  String get whatsNewReportTitle => 'Ripoti ya mwezi';

  @override
  String get whatsNewReportBody =>
      'Katika Maarifa gusa aikoni ya ripoti ili kuona mwezi na kuuhifadhi kama PDF au Word.';

  @override
  String get whatsNewCareTitle => 'Utunzaji wa simu yako na data';

  @override
  String get whatsNewCareBody =>
      'Mipangilio sasa ina ukurasa wa hifadhi wenye usafishaji wa picha na mwongozo wa betri kwa chapa ya simu yako.';

  @override
  String get whatsNewSoundTitle => 'Sauti tulivu zaidi';

  @override
  String get whatsNewSoundBody =>
      'Sauti za asili ni laini na tulivu zaidi, na kadi za picha ni nzuri zaidi.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Imekaguliwa $date: nakala rudufu ya karibuni inafunguka vizuri.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Imekaguliwa $date: nakala rudufu iliyoharibika ilipatikana na ikabadilishwa na mpya.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Imekaguliwa $date: nakala rudufu ya karibuni haikuweza kufunguliwa. Hifadhi faili la nakala rudufu mwenyewe kutoka Mipangilio.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Kwa kawaida hujifunza karibu saa $time';
  }

  @override
  String get smartReviewTimeUse => 'Tumia';

  @override
  String get widgetNewNote => 'Dokezo jipya';

  @override
  String get noteConnections => 'Lebo, viungo na majukumu';

  @override
  String get navCards => 'Kadi';

  @override
  String get studyAnswerWay => 'Jinsi ya kujibu';

  @override
  String get studyMorePractice => 'Mazoezi ya ziada';

  @override
  String get studySessionSettings => 'Mipangilio ya kipindi';

  @override
  String get focusAdjustTitle => 'Kipindi chako';

  @override
  String get focusPresetsTitle => 'Vilivyo tayari';

  @override
  String get focusPresetStudy => 'Kusoma';

  @override
  String get focusPresetDeep => 'Kazi ya kina';

  @override
  String get focusPresetQuick => 'Mbio fupi';

  @override
  String get focusPresetReading => 'Kusoma kitabu';

  @override
  String get focusPresetWorkout => 'Mizunguko ya mazoezi';

  @override
  String get focusAdjustMinutes => 'Urefu wa umakini';

  @override
  String get focusAdjustBreak => 'Urefu wa mapumziko';

  @override
  String get focusAdjustRounds => 'Mizunguko';

  @override
  String get focusRoundsOpen => 'Bila kikomo';

  @override
  String focusMinutesShort(String n) {
    return 'Dak $n';
  }

  @override
  String get focusTapToAdjust => 'Gusa ili kubadilisha muda';

  @override
  String get flashArrangeDecks => 'Panga vifurushi';

  @override
  String get flashDeckActions => 'Chaguo za kifurushi';

  @override
  String get starterBrowse => 'Vifurushi vilivyo tayari';

  @override
  String get starterBrowseHint => 'Ongeza kimoja kwa mguso mmoja na uanze kujifunza';

  @override
  String get dashOpenDecks => 'Fungua kadi zako';

  @override
  String speechVoiceNumber(String n) {
    return 'Sauti $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Mtiririko mzuri. Pumzika dak $m?';
  }

  @override
  String get focusFlowBreakStart => 'Anza mapumziko';

  @override
  String tasksFinishAt(String time) {
    return 'Anza sasa na utamaliza kila kitu kufikia $time';
  }

  @override
  String get focusCalmPacing => 'Mwendo tulivu';

  @override
  String get focusCalmPacingHint => 'Dakika kamili na pete pekee, bila sekunde zinazotiririka';

  @override
  String get focusFlipHint => 'Geuza simu kifudifudi ili kuanza';

  @override
  String get focusImmersive => 'Hali ya kuzama';

  @override
  String get focusImmersiveBlack => 'Nyeusi tupu (huokoa betri)';

  @override
  String get focusFlipToFocus => 'Geuza ili uwe makini';

  @override
  String get focusFlipToFocusHint => 'Katika hali ya kuzama: kifudifudi huanza, kuinua husitisha';

  @override
  String get guardTitle => 'Kilinda dhidi ya vikengeushi';

  @override
  String get guardSubtitle => 'Sitisha programu zinazokengeusha ukiwa makini';

  @override
  String get guardSwitch => 'Sitisha programu zinazokengeusha';

  @override
  String get guardSwitchHint => 'Wakati wa vipindi vya umakini na saa zako za Kilinda Muda';

  @override
  String get guardNeedsAccess => 'Kinahitaji swichi ya ufikivu: gusa ili kuiwasha';

  @override
  String get guardDisclosureTitle => 'Jinsi kilinda kinavyofanya kazi';

  @override
  String get guardDisclosureBody =>
      'Ili kusitisha programu unazochagua, Deep Focus hutumia huduma ya ufikivu ya Android kuona programu iliyo wazi. “Funga Shorts na Reels” ikiwashwa, pia hukagua kama kicheza video fupi kiko kwenye skrini.\n\nHakisomi maandishi yoyote, hakihifadhi chochote kinachoona na hakitumi chochote popote: kila kitu kinabaki kwenye simu yako. Unaweza kukizima wakati wowote katika mipangilio ya Ufikivu.';

  @override
  String get guardAgree => 'Kubali na ufungue mipangilio';

  @override
  String get guardModeGentle => 'Upole';

  @override
  String get guardModeStrict => 'Madhubuti';

  @override
  String get guardGentleHint => 'Pumziko la kupumua la sekunde 5, kisha wewe unachagua';

  @override
  String get guardStrictHint => 'Programu ulizochagua hubaki zimefungwa hadi muda wa umakini uishe';

  @override
  String get guardApps => 'Programu za kusitisha';

  @override
  String get guardAppsAllowed => 'Programu zinazoruhusiwa';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Programu $count',
      one: 'Programu 1',
      zero: 'Bado hakuna kilichochaguliwa',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Ruhusu programu zilizochaguliwa pekee';

  @override
  String get guardAllowlistHint =>
      'Kila programu nyingine husitishwa; simu, mipangilio na kibodi hufanya kazi kila wakati';

  @override
  String get guardShorts => 'Funga Shorts na Reels';

  @override
  String get guardShortsHint =>
      'Wakati wowote kilinda kikiwa kimewashwa. Kwa kadiri inavyowezekana: programu hizi hubadilika mara kwa mara';

  @override
  String get guardSchedule => 'Kilinda Muda';

  @override
  String get guardScheduleHint => 'Linda pia siku na saa ulizoweka, kama shuleni au kazini';

  @override
  String get guardFrom => 'Kuanzia';

  @override
  String get guardTo => 'Hadi';

  @override
  String get guardSearchApps => 'Tafuta programu';

  @override
  String get guardNoApps => 'Hakuna programu zilizopatikana';

  @override
  String get guardPrivacy =>
      'Hufanya kazi kwenye simu yako pekee: kilinda huona programu iliyo wazi, kamwe si kilichomo ndani, na hakitumi chochote.';

  @override
  String get guardBreathe => 'Vuta pumzi… na uitoe';

  @override
  String get guardQuestion => 'Je, unahitaji programu hii sasa?';

  @override
  String get guardBackToFocus => 'Rudi kwenye umakini';

  @override
  String get guardOpenFive => 'Fungua kwa dakika 5';

  @override
  String get guardStrictBody => 'Programu hii imesitishwa hadi muda wako wa umakini uishe.';

  @override
  String get guardShortsClosed => 'Video fupi hufungwa kilinda kikiwa kimewashwa';

  @override
  String get faqGuardQ => 'Ninazuiaje programu zinazokengeusha nikiwa makini?';

  @override
  String get faqGuardA =>
      'Fungua Umakini → mipangilio ya kipima muda → Kilinda dhidi ya vikengeushi. Chagua programu, kisha Upole (pumzi ya sekunde 5 na swali “Je, unahitaji programu hii sasa?”) au Madhubuti (zinabaki zimefungwa). Hufanya kazi wakati wa vipindi vya umakini na, ukiwa na Kilinda Muda, siku na saa unazoweka. “Ruhusu programu zilizochaguliwa pekee” husitisha kila kitu kingine; simu, mipangilio na kibodi hufanya kazi kila wakati. Android hukuomba mara moja kuwasha kilinda katika mipangilio ya Ufikivu. Huona tu programu iliyo wazi na hakitumi chochote.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Imehamishiwa $name';
  }

  @override
  String get notesDragHint => 'Shikilia dokezo na uliburute kwenye daftari';

  @override
  String get guardReviewCards => 'Badala yake rudia kadi';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kadi $count zinakusubiri',
      one: 'Kadi 1 inakusubiri',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Dharura: shikilia sekunde 10';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Endelea kushikilia… $n';
  }

  @override
  String get guardWeekTitle => 'Wiki hii';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Usitishaji $count',
      one: 'Usitishaji 1',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'umerudi kwenye umakini mara $count',
      one: 'umerudi kwenye umakini mara moja',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Badilisha maneno';

  @override
  String get wordsSubtitle => 'Tumia neno lako kwa maandishi yoyote kwenye programu';

  @override
  String get wordsHint =>
      'Gusa maandishi ili kuyabadilisha. Maneno yako yanatumika kwa lugha hii pekee na yanahifadhiwa kwenye nakala rudufu.';

  @override
  String get wordsSearch => 'Tafuta maandishi';

  @override
  String get wordsChangedOnly => 'Yaliyobadilishwa pekee';

  @override
  String wordsOriginal(String text) {
    return 'Asili: $text';
  }

  @override
  String get wordsReset => 'Tumia asili';

  @override
  String get wordsResetAll => 'Weka upya maneno yote';

  @override
  String get wordsResetAllConfirm => 'Kila maandishi katika lugha hii yanarudi kwenye asili.';

  @override
  String get wordsNone => 'Hakuna maandishi yaliyopatikana';

  @override
  String get settingsLanguageSearch => 'Tafuta lugha';

  @override
  String get settingsLanguageNoMatch => 'Hakuna lugha inayolingana';

  @override
  String get soundsMyMusic => 'Sauti yako';

  @override
  String get soundsMusicHint =>
      'Cheza faili ya sauti kutoka kwenye simu yako. Hakuna kinachonakiliwa wala kupakiwa.';

  @override
  String get soundsChooseMusic => 'Chagua sauti';

  @override
  String get soundsRemoveMusic => 'Ondoa sauti';

  @override
  String get wordPacksTitle => 'Jifunze lugha';

  @override
  String get wordPacksHint =>
      'Orodha za maneno kwa mada. Pakua lugha unayotaka tu, kisha hariri au futa kadi kwa uhuru.';

  @override
  String get wordPacksFailed => 'Imeshindwa kupakua. Angalia muunganisho.';

  @override
  String get wordPacksEmpty => 'Maneno ya lugha hii bado yanaandaliwa.';
}
