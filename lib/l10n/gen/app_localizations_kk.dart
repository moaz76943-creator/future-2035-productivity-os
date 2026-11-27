// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Басты бет';

  @override
  String get navTasks => 'Тапсырмалар';

  @override
  String get navFocus => 'Фокус';

  @override
  String get navCalendar => 'Күнтізбе';

  @override
  String get navSpaces => 'Кеңістіктер';

  @override
  String get moduleProjects => 'Жобалар';

  @override
  String get moduleNotes => 'Жазбалар';

  @override
  String get moduleFlashcards => 'Карточкалар';

  @override
  String get moduleGoals => 'Мақсаттар';

  @override
  String get moduleHabits => 'Әдеттер';

  @override
  String get moduleAnalytics => 'Талдау';

  @override
  String get moduleSearch => 'Іздеу';

  @override
  String get moduleAssistant => 'Көмекші';

  @override
  String get moduleSettings => 'Параметрлер';

  @override
  String get moduleTrash => 'Себет';

  @override
  String get actionSave => 'Сақтау';

  @override
  String get actionCancel => 'Бас тарту';

  @override
  String get actionDelete => 'Жою';

  @override
  String get actionEdit => 'Өңдеу';

  @override
  String get actionDone => 'Дайын';

  @override
  String get actionAdd => 'Қосу';

  @override
  String get actionCreate => 'Жасау';

  @override
  String get actionClose => 'Жабу';

  @override
  String get actionBack => 'Артқа';

  @override
  String get actionUndo => 'Болдырмау';

  @override
  String get actionRestore => 'Қалпына келтіру';

  @override
  String get actionRetry => 'Қайталап көру';

  @override
  String get actionContinue => 'Жалғастыру';

  @override
  String get actionSkip => 'Өткізіп жіберу';

  @override
  String get actionArchive => 'Мұрағаттау';

  @override
  String get actionUnarchive => 'Мұрағаттан шығару';

  @override
  String get actionPin => 'Бекіту';

  @override
  String get actionUnpin => 'Босату';

  @override
  String get actionMore => 'Басқа опциялар';

  @override
  String get actionClear => 'Тазалау';

  @override
  String get actionSearch => 'Іздеу';

  @override
  String get actionSort => 'Сұрыптау';

  @override
  String get actionShare => 'Бөлісу';

  @override
  String get actionImport => 'Импорттау';

  @override
  String get actionExport => 'Экспорттау';

  @override
  String get actionPause => 'Кідірту';

  @override
  String get actionResume => 'Жалғастыру';

  @override
  String get actionStart => 'Бастау';

  @override
  String get actionStop => 'Тоқтату';

  @override
  String get actionComplete => 'Аяқтау';

  @override
  String get actionDeleteForever => 'Біржола жою';

  @override
  String get actionEmptyTrash => 'Себетті босату';

  @override
  String get actionUnlink => 'Байланысын үзу';

  @override
  String get actionCustomize => 'Бейімдеу';

  @override
  String get actionPreview => 'Алдын ала қарау';

  @override
  String get actionLog => 'Прогресті жазу';

  @override
  String get stateLoading => 'Жүктелуде…';

  @override
  String get stateSaving => 'Сақталуда…';

  @override
  String get stateSaved => 'Сақталды';

  @override
  String get stateUnsaved => 'Сақталмаған өзгерістер';

  @override
  String get errorGenericTitle => 'Бірдеңе дұрыс болмады';

  @override
  String get errorGenericMessage => 'Деректеріңіз қауіпсіз. Қайталап көріңіз.';

  @override
  String get errorLoadFailed => 'Бұл мазмұнды жүктеу мүмкін болмады.';

  @override
  String get errorSaveFailed => 'Сақтау мүмкін болмады. Өзгерістеріңіз әлі осында.';

  @override
  String get validationRequired => 'Бұл өрісті толтыру міндетті';

  @override
  String get validationTitleRequired => 'Тақырып енгізіңіз';

  @override
  String get validationNameRequired => 'Атау енгізіңіз';

  @override
  String get validationTooLong => 'Тым ұзын';

  @override
  String get validationEndBeforeStart => 'Аяқталуы басталуынан кейін болуы керек';

  @override
  String get validationStartAfterDue => 'Басталу күні мерзімнен бұрын болуы керек';

  @override
  String get validationPositiveNumber => 'Нөлден үлкен сан енгізіңіз';

  @override
  String get validationDependencyCycle => 'Бұл тұйық тәуелділік жасайды';

  @override
  String get validationInvalidRepeat => 'Бұл қайталау ережесі жарамсыз';

  @override
  String get deletedItem => 'Себетке жылжытылды';

  @override
  String get untitled => 'Атаусыз';

  @override
  String get noProject => 'Жобасыз';

  @override
  String get greetingMorning => 'Қайырлы таң';

  @override
  String get greetingAfternoon => 'Қайырлы күн';

  @override
  String get greetingEvening => 'Қайырлы кеш';

  @override
  String get dashFocusToday => 'Бүгінгі фокус';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Фокусты бастау';

  @override
  String get dashFocusRunning => 'Сеанс жүріп жатыр';

  @override
  String get dashTodayTasks => 'Мерзімі бүгін';

  @override
  String get dashAgenda => 'Күн тәртібі';

  @override
  String get dashHabits => 'Бүгінгі әдеттер';

  @override
  String get dashGoals => 'Мақсаттар';

  @override
  String get dashReview => 'Қайталау';

  @override
  String get dashRecentNotes => 'Соңғы жазбалар';

  @override
  String get dashInsight => 'Ұсыныс';

  @override
  String get dashSeeAll => 'Барлығын көру';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Қайталауға $count карточка',
      one: 'Қайталауға 1 карточка',
      zero: 'Қайталайтын карточка жоқ',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Қазір қайталау';

  @override
  String get dashCustomizeTitle => 'Басты бет бөлімдері';

  @override
  String get dashCustomizeHint => 'Басты экранда не көрсетілетінін таңдаңыз.';

  @override
  String get dashSectionFocus => 'Фокус';

  @override
  String get dashSectionToday => 'Мерзімі бүгінгі тапсырмалар';

  @override
  String get dashSectionAgenda => 'Күн тәртібі';

  @override
  String get dashSectionHabits => 'Әдеттер';

  @override
  String get dashSectionGoals => 'Мақсаттар';

  @override
  String get dashSectionReview => 'Карточкаларды қайталау';

  @override
  String get dashSectionNotes => 'Соңғы жазбалар';

  @override
  String get dashSectionInsight => 'Ұсыныстар';

  @override
  String get quickAddTask => 'Жаңа тапсырма';

  @override
  String get quickAddNote => 'Жаңа жазба';

  @override
  String get quickAddEvent => 'Жаңа оқиға';

  @override
  String get quickStartFocus => 'Фокус';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сізде $count мерзімі өткен тапсырма бар. Ең маңыздысынан бастаңыз.',
      one: 'Сізде 1 мерзімі өткен тапсырма бар. Оны қайта жоспарлаңыз немесе алдымен аяқтаңыз.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Күнделікті фокус мақсатына $minutes минут қалды.';
  }

  @override
  String get insightCardsDue => 'Карточкаларды жадыңызда жаңа кезде қазір қайталаңыз.';

  @override
  String get insightAllClear =>
      'Бәрі жоспар бойынша. Ертеңгі күнді жоспарлаңыз немесе саналы үзіліс жасаңыз.';

  @override
  String insightHabitStreak(String habit) {
    return 'Серияны сақтаңыз: «$habit» бүгін әлі орындалмады.';
  }

  @override
  String get focusTitle => 'Фокус';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Таймер';

  @override
  String get focusModeCountUp => 'Секундомер';

  @override
  String get focusModeOpen => 'Еркін';

  @override
  String get focusPhaseWork => 'Фокус';

  @override
  String get focusPhaseShortBreak => 'Қысқа үзіліс';

  @override
  String get focusPhaseLongBreak => 'Ұзақ үзіліс';

  @override
  String get focusReady => 'Дайын болғанда бастаңыз';

  @override
  String get focusPaused => 'Кідіртілді';

  @override
  String get focusRunning => 'Фокуста';

  @override
  String get focusDuration => 'Ұзақтығы';

  @override
  String get focusLinkTask => 'Тапсырманы байланыстыру';

  @override
  String get focusLinkedTask => 'Жұмыс істеп жатқан';

  @override
  String get focusNoTask => 'Тапсырма байланыстырылмаған';

  @override
  String focusCycle(int current, int total) {
    return 'Цикл $current/$total';
  }

  @override
  String get focusSkipBreak => 'Үзілісті өткізіп жіберу';

  @override
  String get focusStartBreak => 'Үзілісті бастау';

  @override
  String get focusStartNext => 'Келесі фокусты бастау';

  @override
  String get focusSessionComplete => 'Сеанс аяқталды';

  @override
  String get focusSessionStopped => 'Сеанс сақталды';

  @override
  String focusSessionSummary(String duration) {
    return 'Сіз $duration фокуста болдыңыз.';
  }

  @override
  String get focusAddNote => 'Осы сеанс туралы жазба қосыңыз';

  @override
  String get focusHistory => 'Тарих';

  @override
  String get focusNoHistory => 'Аяқталған сеанстар осында көрсетіледі';

  @override
  String get focusOutcomeCompleted => 'Аяқталды';

  @override
  String get focusOutcomeInterrupted => 'Ерте тоқтатылды';

  @override
  String get focusRecovered => 'Қолданба жабық кезде сеансыңыз жалғасты.';

  @override
  String get focusCompletedWhileAway => 'Қолданба жабық кезде сеанс аяқталып, сақталды.';

  @override
  String get focusNotificationsOff =>
      'Хабарландырулар өшірулі. Сеанс аяқталғанда ескерту алмайсыз.';

  @override
  String get focusBatteryHint =>
      'Кейбір құрылғылар қолданбаларды фонда кідіртеді. Таймер дәл болып қалады, бірақ ескертулер кешігуі мүмкін. Сенімді ескертулер үшін батареяны шектеусіз пайдалануға рұқсат беріңіз.';

  @override
  String get focusOpenSettings => 'Параметрлерді ашу';

  @override
  String get focusStopConfirmTitle => 'Бұл сеансты тоқтату керек пе?';

  @override
  String get focusStopConfirmMessage => 'Осы уақытқа дейінгі фокус уақыты сақталады.';

  @override
  String get focusDiscard => 'Қабылдамау';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минут',
      one: '1 минут',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time қалды';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time өтті';
  }

  @override
  String get focusDeleteSession => 'Сеансты жою';

  @override
  String get tasksTitle => 'Тапсырмалар';

  @override
  String get tasksViewToday => 'Бүгін';

  @override
  String get tasksViewUpcoming => 'Алдағы';

  @override
  String get tasksViewAll => 'Барлығы';

  @override
  String get tasksViewOverdue => 'Мерзімі өткен';

  @override
  String get tasksViewCompleted => 'Аяқталған';

  @override
  String get tasksQuickAddHint => 'Тапсырма қосу…';

  @override
  String get tasksEmptyTitle => 'Бәрі орындалды';

  @override
  String get tasksEmptyMessage => 'Күніңізді құруды бастау үшін тапсырма қосыңыз.';

  @override
  String get tasksEmptyCompleted => 'Аяқталған тапсырмалар осында көрсетіледі.';

  @override
  String get taskNew => 'Жаңа тапсырма';

  @override
  String get taskEdit => 'Тапсырманы өңдеу';

  @override
  String get taskTitleLabel => 'Тақырып';

  @override
  String get taskTitleHint => 'Не істеу керек?';

  @override
  String get taskDescriptionLabel => 'Сипаттама';

  @override
  String get taskNotesLabel => 'Жазбалар';

  @override
  String get taskPriority => 'Басымдық';

  @override
  String get priorityNone => 'Жоқ';

  @override
  String get priorityLow => 'Төмен';

  @override
  String get priorityMedium => 'Орташа';

  @override
  String get priorityHigh => 'Жоғары';

  @override
  String get priorityUrgent => 'Шұғыл';

  @override
  String get taskDueDate => 'Мерзімі';

  @override
  String get taskStartDate => 'Басталу күні';

  @override
  String get taskReminder => 'Еске салғыш';

  @override
  String get taskRepeat => 'Қайталау';

  @override
  String get taskProject => 'Жоба';

  @override
  String get taskCategory => 'Санат';

  @override
  String get taskCategoryHint => 'мыс. Жұмыс, Үй, Оқу';

  @override
  String get taskEstimateMinutes => 'Бағалау (минут)';

  @override
  String get taskTracked => 'Өлшенген фокус';

  @override
  String get taskLabels => 'Белгілер';

  @override
  String get taskAddLabel => 'Жаңа белгі';

  @override
  String get taskChecklist => 'Тексеру тізімі';

  @override
  String get taskAddChecklistItem => 'Тармақ қосу';

  @override
  String get taskSubtasks => 'Ішкі тапсырмалар';

  @override
  String get taskAddSubtask => 'Ішкі тапсырма қосу';

  @override
  String get taskDependencies => 'Бұғаттайтын';

  @override
  String get taskAddDependency => 'Бұғаттайтын тапсырма қосу';

  @override
  String get taskLinkedNotes => 'Байланысты жазбалар';

  @override
  String get taskSetTime => 'Уақытты орнату';

  @override
  String get taskNoDate => 'Күні жоқ';

  @override
  String get taskCompleted => 'Тапсырма орындалды';

  @override
  String get taskNextOccurrence => 'Келесі қайталау жасалды';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days күн кешікті',
      one: '1 күн кешікті',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '«$title» орындалды деп белгілеу';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '«$title» орындалмады деп белгілеу';
  }

  @override
  String get sortSmart => 'Ақылды';

  @override
  String get sortDueDate => 'Мерзімі';

  @override
  String get sortPriority => 'Басымдық';

  @override
  String get sortCreated => 'Ең жаңалары';

  @override
  String get sortTitle => 'Тақырып';

  @override
  String get filterAllProjects => 'Барлық жобалар';

  @override
  String get filterAnyPriority => 'Кез келген басымдық';

  @override
  String get filterTitle => 'Сүзу және сұрыптау';

  @override
  String get dateToday => 'Бүгін';

  @override
  String get dateTomorrow => 'Ертең';

  @override
  String get dateYesterday => 'Кеше';

  @override
  String get repeatNever => 'Қайталанбайды';

  @override
  String get repeatDaily => 'Күн сайын';

  @override
  String get repeatWeekdays => 'Әр жұмыс күні';

  @override
  String get repeatWeekly => 'Апта сайын';

  @override
  String get repeatMonthly => 'Ай сайын';

  @override
  String get repeatYearly => 'Жыл сайын';

  @override
  String get repeatCustom => 'Өзгертілген';

  @override
  String get repeatEvery => 'Қайталау кезеңі';

  @override
  String get repeatOnDays => 'Күндері';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'күн', one: 'күн');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'апта', one: 'апта');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ай', one: 'ай');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'жыл', one: 'жыл');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count реттен',
      one: '1 реттен',
    );
    return '$_temp0 кейін аяқталады';
  }

  @override
  String get repeatEndsNever => 'Ешқашан аяқталмайды';

  @override
  String get reminderAtTime => 'Оқиға уақытында';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минут бұрын',
      one: '1 минут бұрын',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours сағат бұрын',
      one: '1 сағат бұрын',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 күн бұрын';

  @override
  String get projectsTitle => 'Жобалар';

  @override
  String get projectsEmptyTitle => 'Әзірге жоба жоқ';

  @override
  String get projectsEmptyMessage =>
      'Байланысты тапсырмаларды, жазбаларды және фокус уақытын топтаңыз.';

  @override
  String get projectNew => 'Жаңа жоба';

  @override
  String get projectEdit => 'Жобаны өңдеу';

  @override
  String get projectName => 'Атауы';

  @override
  String get projectDescription => 'Сипаттама';

  @override
  String get projectGoal => 'Мақсат';

  @override
  String get projectDeadline => 'Соңғы мерзім';

  @override
  String get projectColor => 'Түсі';

  @override
  String get projectIcon => 'Белгіше';

  @override
  String get projectProgress => 'Прогресс';

  @override
  String projectTasksDone(int done, int total) {
    return '$total тапсырманың $done орындалды';
  }

  @override
  String get projectFocusTime => 'Фокус уақыты';

  @override
  String get projectArchived => 'Мұрағаттағы жобалар';

  @override
  String get projectShowArchived => 'Мұрағаттағыларды көрсету';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days күн қалды',
      one: '1 күн қалды',
      zero: 'Мерзімі бүгін',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Мерзімі өтті';

  @override
  String get calendarTitle => 'Күнтізбе';

  @override
  String get calendarMonth => 'Ай';

  @override
  String get calendarWeek => 'Апта';

  @override
  String get calendarDay => 'Күн';

  @override
  String get calendarToday => 'Бүгін';

  @override
  String get calendarPrevious => 'Алдыңғы';

  @override
  String get calendarNext => 'Келесі';

  @override
  String get calendarNoEvents => 'Ештеңе жоспарланбаған';

  @override
  String get calendarAllDay => 'Күні бойы';

  @override
  String get eventNew => 'Жаңа оқиға';

  @override
  String get eventEdit => 'Оқиғаны өңдеу';

  @override
  String get eventTitleHint => 'Оқиға атауы';

  @override
  String get eventStarts => 'Басталады';

  @override
  String get eventEnds => 'Аяқталады';

  @override
  String get eventKind => 'Түрі';

  @override
  String get eventKindEvent => 'Оқиға';

  @override
  String get eventKindTimeBlock => 'Уақыт блогы';

  @override
  String get eventKindFocus => 'Фокус сеансы';

  @override
  String get eventKindGoal => 'Жеке мақсат';

  @override
  String get eventDescription => 'Мәліметтер';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count оқиғамен қабаттасады',
      one: '1 оқиғамен қабаттасады',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Бұл күні кесте қайшылықтары бар';

  @override
  String get calendarTaskDue => 'Тапсырма мерзімі';

  @override
  String get calendarDragHint => 'Оқиғаны басқа уақытқа ауыстыру үшін ұзақ басып, сүйреңіз';

  @override
  String get calendarRescheduled => 'Оқиға жылжытылды';

  @override
  String get calendarScheduleTask => 'Уақыт блогы ретінде жоспарлау';

  @override
  String get notesTitle => 'Жазбалар';

  @override
  String get notesViewAll => 'Барлығы';

  @override
  String get notesViewPinned => 'Бекітілген';

  @override
  String get notesViewFavorites => 'Таңдаулылар';

  @override
  String get notesViewArchived => 'Мұрағатталған';

  @override
  String get notesTags => 'Тегтер';

  @override
  String get notesNewNotebook => 'Жаңа дәптер';

  @override
  String get notesNoNotebook => 'Дәптерсіз';

  @override
  String get notesEmptyTitle => 'Таза парақ';

  @override
  String get notesEmptyMessage => 'Идеяларды, кездесу жазбаларын және білімді жазып алыңыз.';

  @override
  String get noteTitleHint => 'Тақырып';

  @override
  String get noteBodyHint => 'Жаза бастаңыз…';

  @override
  String get noteFavorite => 'Таңдаулы';

  @override
  String get noteUnfavorite => 'Таңдаулылардан алып тастау';

  @override
  String get noteMoveTo => 'Дәптерге жылжыту';

  @override
  String get noteBacklinks => 'Сілтеме жасайтындар';

  @override
  String get noteLinkedTasks => 'Байланысты тапсырмалар';

  @override
  String get noteLinkTask => 'Тапсырманы байланыстыру';

  @override
  String get noteLinkProject => 'Жоба';

  @override
  String get noteFormatHeading => 'Тақырыпша';

  @override
  String get noteFormatBold => 'Қалың';

  @override
  String get noteFormatItalic => 'Курсив';

  @override
  String get noteFormatList => 'Таңбалауыш тізім';

  @override
  String get noteFormatChecklist => 'Тексеру тізімі';

  @override
  String get noteFormatLink => 'Сілтеме';

  @override
  String noteEdited(String time) {
    return 'Өңделді: $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сөз',
      one: '1 сөз',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Карточкалар';

  @override
  String get flashEmptyTitle => 'Алғашқы жинағыңызды жасаңыз';

  @override
  String get flashEmptyMessage =>
      'Аралықпен қайталау әр карточканы сіз оны ұмытар алдында ғана көрсетеді.';

  @override
  String get deckNew => 'Жаңа жинақ';

  @override
  String get deckEdit => 'Жинақты өңдеу';

  @override
  String get deckName => 'Жинақ атауы';

  @override
  String get deckDescription => 'Сипаттама';

  @override
  String get deckDailyNew => 'Күніне жаңа карточкалар';

  @override
  String get deckDailyReview => 'Күнделікті қайталау нысанасы';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточка',
      one: '1 карточка',
      zero: 'Карточка жоқ',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Қайталау керек';

  @override
  String get deckNewCards => 'Жаңа';

  @override
  String get deckMature => 'Меңгерілген';

  @override
  String get deckStudy => 'Оқу';

  @override
  String get deckNothingDue => 'Қазір қайталайтын ештеңе жоқ. Кейін қайта келіңіз.';

  @override
  String get deckEmptyCards => 'Оқуды бастау үшін карточкалар қосыңыз.';

  @override
  String get cardNew => 'Жаңа карточка';

  @override
  String get cardEdit => 'Карточканы өңдеу';

  @override
  String get cardFront => 'Алдыңғы бет';

  @override
  String get cardBack => 'Артқы бет';

  @override
  String get cardFrontHint => 'Сұрақ немесе термин';

  @override
  String get cardBackHint => 'Жауап немесе анықтама';

  @override
  String get cardTags => 'Тегтер';

  @override
  String get cardAddAnother => 'Сақтап, тағы қосу';

  @override
  String get reviewShowAnswer => 'Жауапты көрсету';

  @override
  String get reviewAgain => 'Қайта';

  @override
  String get reviewHard => 'Қиын';

  @override
  String get reviewGood => 'Жақсы';

  @override
  String get reviewEasy => 'Оңай';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => 'Сеанс аяқталды';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сіз $count карточканы қайталадыңыз.',
      one: 'Сіз 1 карточканы қайталадыңыз.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Жауапты көру үшін түртіңіз';

  @override
  String get importCardsTitle => 'Карточкаларды импорттау';

  @override
  String get importCardsHint =>
      'Әр жолға бір карточка қойыңыз (алдыңғы және артқы беті табпен немесе нүктелі үтірмен бөлінеді) немесе файл таңдаңыз: Excel (.xlsx), CSV, Anki жинағы (.apkg) немесе экспортталған жинақ.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточка импортталды',
      one: '1 карточка импортталды',
      zero: 'Бірде-бір карточка импортталмады',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Бұл мазмұнды импорттау мүмкін болмады.';

  @override
  String get exportCopied => 'Жинақ экспортталды';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count мин',
      one: '1 мин',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн',
      one: '1 күн',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Мақсаттар';

  @override
  String get goalsEmptyTitle => 'Бір нәрсеге ұмтылыңыз';

  @override
  String get goalsEmptyMessage =>
      'Күнделікті, апталық, айлық немесе ұзақ мерзімді мақсаттар қойып, нақты прогресті бақылаңыз.';

  @override
  String get goalNew => 'Жаңа мақсат';

  @override
  String get goalEdit => 'Мақсатты өңдеу';

  @override
  String get goalTitleHint => 'Неге қол жеткізгіңіз келеді?';

  @override
  String get goalPeriod => 'Кезең';

  @override
  String get goalPeriodDaily => 'Күнделікті';

  @override
  String get goalPeriodWeekly => 'Апталық';

  @override
  String get goalPeriodMonthly => 'Айлық';

  @override
  String get goalPeriodLongTerm => 'Ұзақ мерзімді';

  @override
  String get goalTarget => 'Нысана';

  @override
  String get goalUnit => 'Өлшем бірлігі';

  @override
  String get goalUnitHint => 'мыс. бет, км, сағат';

  @override
  String get goalStatusActive => 'Белсенді';

  @override
  String get goalStatusPaused => 'Кідіртілген';

  @override
  String get goalStatusAchieved => 'Қол жеткізілді';

  @override
  String get goalPause => 'Мақсатты кідірту';

  @override
  String get goalResume => 'Мақсатты жалғастыру';

  @override
  String get goalMarkAchieved => 'Қол жеткізілді деп белгілеу';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => 'Мөлшері';

  @override
  String get goalLogNote => 'Жазба (міндетті емес)';

  @override
  String get goalHistory => 'Тарих';

  @override
  String get goalNoHistory => 'Жазылған прогресс осында көрсетіледі';

  @override
  String get goalLinkedTasks => 'Байланысты тапсырмалар';

  @override
  String get goalLinkedTasksHint =>
      'Әр орындалған байланысты тапсырма бұл мақсат үшін 1 ретінде саналады.';

  @override
  String get goalThisPeriod => 'Осы кезең';

  @override
  String get habitsTitle => 'Әдеттер';

  @override
  String get habitsEmptyTitle => 'Күн сайын шағын қадамдар';

  @override
  String get habitsEmptyMessage => 'Әдет жасап, орындаған кезде белгілеңіз.';

  @override
  String get habitNew => 'Жаңа әдет';

  @override
  String get habitEdit => 'Әдетті өңдеу';

  @override
  String get habitNameHint => 'мыс. 20 бет оқу';

  @override
  String get habitDays => 'Кесте';

  @override
  String get habitEveryDay => 'Күн сайын';

  @override
  String get habitTargetPerDay => 'Күніне неше рет';

  @override
  String get habitReminder => 'Күнделікті еске салғыш';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күндік серия',
      one: '1 күндік серия',
      zero: 'Серия жоқ',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Ең үздік серия';

  @override
  String get habitCurrentStreak => 'Ағымдағы серия';

  @override
  String get habitConsistency => 'Тұрақтылық';

  @override
  String get habitLast90 => 'Соңғы 90 күн';

  @override
  String get habitPaused => 'Кідіртілген';

  @override
  String get habitPause => 'Әдетті кідірту';

  @override
  String get habitResume => 'Әдетті жалғастыру';

  @override
  String get habitDoneToday => 'Бүгін орындалды';

  @override
  String habitCountToday(int count, int target) {
    return 'Бүгін $count / $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '«$name» белгілеу';
  }

  @override
  String get habitNotScheduledToday => 'Бүгін жоспарланбаған';

  @override
  String get analyticsTitle => 'Талдау';

  @override
  String get rangeWeek => '7 күн';

  @override
  String get rangeMonth => '30 күн';

  @override
  String get rangeQuarter => '90 күн';

  @override
  String get statFocusTime => 'Фокус уақыты';

  @override
  String get statSessions => 'Сеанстар';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed аяқталды · $interrupted ерте тоқтатылды';
  }

  @override
  String get statTasksDone => 'Орындалған тапсырмалар';

  @override
  String get statCompletionRate => 'Уақтылы орындау';

  @override
  String get statHabitConsistency => 'Әдеттер тұрақтылығы';

  @override
  String get statRetention => 'Карточкаларды есте сақтау';

  @override
  String get statReviews => 'Қайталаулар';

  @override
  String get statActiveGoals => 'Белсенді мақсаттар';

  @override
  String get statEstimated => 'Бағаланған орындалған жұмыс';

  @override
  String get statEstimatedNote => 'Өлшенген уақыт емес, сіздің бағалауыңыз бойынша';

  @override
  String get statMeasuredNote => 'Фокус сеанстары бойынша өлшенген';

  @override
  String get chartFocusByDay => 'Күніне фокус минуттары';

  @override
  String get chartTasksByDay => 'Күніне орындалған тапсырмалар';

  @override
  String get chartTimeByProject => 'Жоба бойынша уақыт';

  @override
  String get chartProjectProgress => 'Жобалар прогресі';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: барлығы $total, ең үздік күн $best';
  }

  @override
  String get analyticsNoData => 'Әзірге деректер жеткіліксіз';

  @override
  String get analyticsUnassigned => 'Тағайындалмаған';

  @override
  String get searchHint => 'Барлығынан іздеу…';

  @override
  String get searchRecent => 'Соңғы іздеулер';

  @override
  String get searchClearRecent => 'Соңғы іздеулерді тазалау';

  @override
  String searchNoResults(String query) {
    return '«$query» бойынша нәтиже жоқ';
  }

  @override
  String get searchStartTyping =>
      'Тапсырмалар, жазбалар, карточкалар, мақсаттар, оқиғалар және т.б. бойынша іздеңіз. Іздеу осы құрылғыда қалады.';

  @override
  String get searchCatTask => 'Тапсырмалар';

  @override
  String get searchCatProject => 'Жобалар';

  @override
  String get searchCatNote => 'Жазбалар';

  @override
  String get searchCatFlashcard => 'Карточкалар';

  @override
  String get searchCatDeck => 'Жинақтар';

  @override
  String get searchCatGoal => 'Мақсаттар';

  @override
  String get searchCatHabit => 'Әдеттер';

  @override
  String get searchCatEvent => 'Оқиғалар';

  @override
  String get searchCatSession => 'Сеанстар';

  @override
  String get searchAll => 'Барлығы';

  @override
  String get assistantTitle => 'Көмекші';

  @override
  String get assistantIntro =>
      'Құрылғыңызда жұмыс істейтін жоспарлау көмегі. Қаласаңыз, қорытынды мен мәтін жасау үшін өзіңіз таңдаған ЖИ провайдерін қосыңыз.';

  @override
  String get assistantOnDevice => 'Құрылғыда';

  @override
  String get assistantCloud => 'ЖИ провайдері';

  @override
  String get assistantPlanDay => 'Күнімді жоспарлау';

  @override
  String get assistantPlanDayDesc =>
      'Ашық тапсырмаларды шұғылдығы, басымдығы және бағалауы бойынша реттеп, оқиғаларыңыздың арасына орналастырады.';

  @override
  String get assistantExtractTasks => 'Жазбадан тапсырмаларды шығару';

  @override
  String get assistantExtractTasksDesc =>
      'Жазбадағы тексеру тізімі тармақтары мен әрекет жолдарын тауып, тапсырмаларға айналдырады.';

  @override
  String get assistantMakeCards => 'Жазбадан карточкалар жасау';

  @override
  String get assistantMakeCardsDesc =>
      '«термин: анықтама» және сұрақ/жауап жолдарын карточкаларға айналдырады.';

  @override
  String get assistantSummarize => 'Жазбаны қорыту';

  @override
  String get assistantSummarizeDesc =>
      'ЖИ провайдері қажет. Жазба тек сіз растағаннан кейін жіберіледі.';

  @override
  String get assistantWorkload => 'Жүктемеге шолу';

  @override
  String get assistantWorkloadDesc =>
      'Бағаланған жұмысты осы аптадағы бос уақытыңызбен салыстырады.';

  @override
  String get assistantPlanEmpty => 'Жоспарлайтын ашық тапсырма жоқ. Бос уақыттан ләззат алыңыз.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Бүгінгі бос фокус уақыты: $time';
  }

  @override
  String get assistantPlanOverflow => 'Бұлар бүгін сыймауы мүмкін:';

  @override
  String get assistantChooseNote => 'Жазба таңдаңыз';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тапсырма табылды',
      one: '1 тапсырма табылды',
      zero: 'Бұл жазбада тапсырма табылмады',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточка табылды',
      one: '1 карточка табылды',
      zero: 'Бұл жазбада карточка табылмады',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Жинақ таңдаңыз';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Бағаланған жұмыс: $estimated. Бос уақыт: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Сіз бар уақыттан көп жоспарладыңыз. Басымдығы төмен тапсырмаларды ауыстыруды қарастырыңыз.';

  @override
  String get assistantWorkloadOk => 'Жоспарыңыз бар уақытқа сыяды.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ашық тапсырманың бағалауы жоқ.',
      one: '1 ашық тапсырманың бағалауы жоқ.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'ЖИ провайдері';

  @override
  String get assistantProviderOff =>
      'Провайдер қосылмаған. Құрылғыдағы құралдар жұмыс істей береді.';

  @override
  String assistantProviderOn(String host) {
    return '$host серверіне қосылған';
  }

  @override
  String get assistantEndpoint => 'API соңғы нүктесі (HTTPS)';

  @override
  String get assistantModel => 'Модель';

  @override
  String get assistantApiKey => 'API кілті';

  @override
  String get assistantApiKeyStored => 'Осы құрылғыда қауіпсіз сақталады';

  @override
  String get assistantHttpsOnly => 'Тек HTTPS соңғы нүктелеріне рұқсат етіледі';

  @override
  String get assistantConsentTitle => 'Бұл мазмұнды ЖИ провайдеріңізге жіберу керек пе?';

  @override
  String assistantConsentBody(String host) {
    return 'Таңдалған жазба мәтіні осы құрылғыдан шығып, $host арқылы өңделеді. Басқа ештеңе жіберілмейді.';
  }

  @override
  String get assistantConsentAlways => 'Бұл провайдер үшін қайта сұрамау';

  @override
  String get assistantSend => 'Жіберу';

  @override
  String get assistantUnavailable =>
      'ЖИ провайдеріне қосылу мүмкін болмады. Кейінірек қайталап көріңіз.';

  @override
  String get assistantDisabledTitle => 'Көмекші өшірулі';

  @override
  String get assistantDisabledMessage =>
      'Жоспарлау құралдарын пайдалану үшін оны қосыңыз. Провайдер қосып, әр сұрауды растамасаңыз, ешқандай дерек құрылғыдан шықпайды.';

  @override
  String get assistantSummaryTitle => 'Қорытынды';

  @override
  String get assistantRemoveProvider => 'Провайдерді жою';

  @override
  String get settingsTitle => 'Параметрлер';

  @override
  String get settingsGeneral => 'Жалпы';

  @override
  String get settingsLanguage => 'Тіл';

  @override
  String get settingsLanguageSystem => 'Құрылғы тілі';

  @override
  String get settingsAppearance => 'Сыртқы түрі';

  @override
  String get settingsTheme => 'Тақырып';

  @override
  String get themeLight => 'Ашық';

  @override
  String get themeDark => 'Қараңғы';

  @override
  String get themeSystem => 'Жүйелік';

  @override
  String get settingsReduceMotion => 'Қозғалысты азайту';

  @override
  String get settingsReduceMotionDesc => 'Анимациялар мен қозғалмалы фондарды азайту';

  @override
  String get settingsFocus => 'Фокус таймері';

  @override
  String get settingsWorkLength => 'Фокус ұзақтығы';

  @override
  String get settingsShortBreak => 'Қысқа үзіліс';

  @override
  String get settingsLongBreak => 'Ұзақ үзіліс';

  @override
  String get settingsLongBreakEvery => 'Ұзақ үзіліс мына мөлшерден кейін';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сеанс',
      one: '1 сеанс',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Үзілістерді автоматты бастау';

  @override
  String get settingsSound => 'Аяқталу дыбысы';

  @override
  String get settingsDailyFocusTarget => 'Күнделікті фокус нысанасы';

  @override
  String get settingsWeeklyFocusTarget => 'Апталық фокус нысанасы';

  @override
  String get settingsNotifications => 'Хабарландырулар';

  @override
  String get settingsNotificationsEnable => 'Еске салғыштарға рұқсат беру';

  @override
  String get settingsQuietHours => 'Тыныш сағаттар';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Әдет, мақсат және қайталау еске салғыштары $start–$end аралығында дыбыссыз';
  }

  @override
  String get settingsReviewReminder => 'Карточка қайталау еске салғышы';

  @override
  String get settingsPermissionDenied => 'Хабарландырулар жүйе параметрлерінде бұғатталған.';

  @override
  String get settingsPrivacy => 'Құпиялылық және деректер';

  @override
  String get settingsPrivacyStatement =>
      'Деректеріңіз тек осы құрылғыда сақталады және шифрланған. Тіркелгі, аналитика және бақылау жоқ.';

  @override
  String get settingsBackup => 'Шифрланған сақтық көшірме жасау';

  @override
  String get settingsBackupDesc => 'Өзіңіз таңдаған құпиясөзбен қорғалған';

  @override
  String get settingsRestore => 'Сақтық көшірмеден қалпына келтіру';

  @override
  String get settingsRestoreDesc => 'Осы құрылғыдағы барлық деректерді алмастырады';

  @override
  String get settingsErase => 'Барлық деректерді өшіру';

  @override
  String get settingsEraseDesc => 'Осы құрылғыдағы барлығын біржола жою';

  @override
  String get settingsEraseConfirmTitle => 'Барлық деректерді өшіру керек пе?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Барлық тапсырмалар, жазбалар, карточкалар, мақсаттар, әдеттер, оқиғалар және сеанстар біржола жойылады. Растау үшін $word деп жазыңыз.';
  }

  @override
  String get settingsEraseWord => 'ӨШІРУ';

  @override
  String get settingsErased => 'Барлық деректер өшірілді';

  @override
  String get backupPassword => 'Сақтық көшірме құпиясөзі';

  @override
  String get backupPasswordConfirm => 'Құпиясөзді растаңыз';

  @override
  String backupPasswordHint(int count) {
    return 'Кемінде $count таңба. Жоғалса, қалпына келтіру мүмкін емес.';
  }

  @override
  String get backupPasswordMismatch => 'Құпиясөздер сәйкес емес';

  @override
  String get backupPasswordShort => 'Құпиясөз тым қысқа';

  @override
  String get backupCreating => 'Сақтық көшірме шифрлануда…';

  @override
  String get backupCreated => 'Сақтық көшірме сақтауға дайын';

  @override
  String get backupRestoring => 'Тексеріліп, қалпына келтірілуде…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элемент қалпына келтірілді',
      one: '1 элемент қалпына келтірілді',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Құпиясөз қате немесе файл өзгертілген.';

  @override
  String get backupNotABackup => 'Бұл файл Deep Focus сақтық көшірмесі емес.';

  @override
  String get backupCorrupted => 'Сақтық көшірме файлы бүлінген.';

  @override
  String get backupNewer =>
      'Бұл сақтық көшірмені қолданбаның жаңарақ нұсқасы жасаған. Алдымен жаңартыңыз.';

  @override
  String get backupRestoreConfirmTitle => 'Барлық деректерді алмастыру керек пе?';

  @override
  String get backupRestoreConfirmBody =>
      'Қазір осы құрылғыда бар барлық нәрсе сақтық көшірмемен алмастырылады. Қалпына келтіру сәтсіз болса, ештеңе өзгермейді.';

  @override
  String get settingsAbout => 'Қолданба туралы';

  @override
  String settingsVersion(String version) {
    return 'Нұсқа $version';
  }

  @override
  String get settingsLicenses => 'Ашық бастапқы код лицензиялары';

  @override
  String get settingsAssistant => 'Көмекші';

  @override
  String get settingsAssistantEnable => 'Көмекшіні қосу';

  @override
  String get settingsDashboard => 'Басты бет бөлімдері';

  @override
  String get settingsTrash => 'Себет';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes мин';
  }

  @override
  String get trashEmpty => 'Себет бос';

  @override
  String get trashHint => 'Жойылған элементтер сіз оларды алып тастағанға дейін осында қалады.';

  @override
  String get trashTasks => 'Тапсырмалар';

  @override
  String get trashNotes => 'Жазбалар';

  @override
  String get onboardWelcomeTitle => 'Болашақтың жұмыс кеңістігіне қош келдіңіз';

  @override
  String get onboardWelcomeBody =>
      'Тапсырмалар, фокус, күнтізбе, жазбалар, карточкалар, мақсаттар мен әдеттер — бірге, әдемі әрі қарапайым.';

  @override
  String get onboardPrivateTitle => 'Құпиялылық негізінде';

  @override
  String get onboardPrivateBody =>
      'Бәрі осы құрылғыда, шифрланған түрде қалады. Тіркелгі жоқ. Бақылау жоқ. Бәрін өзіңіз басқарасыз.';

  @override
  String get onboardLanguageTitle => 'Тілді таңдаңыз';

  @override
  String get onboardNotifTitle => 'Жұмсақ еске салғыштар';

  @override
  String get onboardNotifBody =>
      'Тапсырма еске салғыштары мен фокус ескертулері үшін хабарландыруларға рұқсат беріңіз. Мұны кез келген уақытта өзгерте аласыз.';

  @override
  String get onboardGetStarted => 'Бастау';

  @override
  String onboardStep(int current, int total) {
    return '$total қадамның $current-қадамы';
  }

  @override
  String get notifChannelReminders => 'Еске салғыштар';

  @override
  String get notifChannelRemindersDesc => 'Тапсырма, оқиға, әдет және мақсат еске салғыштары';

  @override
  String get notifChannelFocus => 'Фокус таймері';

  @override
  String get notifChannelFocusDesc => 'Фокус сеансы немесе үзіліс аяқталғандағы ескертулер';

  @override
  String get notifTaskTitle => 'Тапсырма еске салғышы';

  @override
  String get notifEventTitle => 'Алдағы оқиға';

  @override
  String notifEventBody(String title, String time) {
    return '$title, уақыты $time';
  }

  @override
  String get notifFocusDoneTitle => 'Фокус сеансы аяқталды';

  @override
  String get notifFocusDoneBody => 'Керемет жұмыс. Үзіліс уақыты.';

  @override
  String get notifBreakDoneTitle => 'Үзіліс аяқталды';

  @override
  String get notifBreakDoneBody => 'Келесі фокус сеансына дайынсыз ба?';

  @override
  String get notifHabitTitle => 'Әдет еске салғышы';

  @override
  String get notifReviewTitle => 'Карточкалар дайын';

  @override
  String get notifReviewBody => 'Қысқа қайталау есте сақтауды күшейтеді.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours сағ $minutes мин';
  }

  @override
  String durationHours(int hours) {
    return '$hours сағ';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes мин';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'Дс,Сс,Ср,Бс,Жм,Сб,Жс';

  @override
  String a11yProgress(int value) {
    return 'Прогресс $value пайыз';
  }

  @override
  String a11yPriority(String level) {
    return 'Басымдық: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Түс $index';
  }

  @override
  String get analyticsRangeLabel => 'Уақыт аралығы';

  @override
  String get analyticsRefresh => 'Жаңарту';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Мерзімі бар $total тапсырманың $done уақтылы орындалды';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total тапсырманың $done орындалды';
  }

  @override
  String get analyticsNoProjects => 'Белсенді жоба жоқ';

  @override
  String get analyticsNoFocus => 'Бұл аралықта фокус сеансы жоқ';

  @override
  String get analyticsHabitsNone => 'Белсенді әдет жоқ';

  @override
  String get analyticsRetentionNote => 'Есте қалған пісіп-жетілген карточкалар үлесі';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Бос уақыт жұмыс күндері ($days) $start–$end аралығында, уақыты белгіленген оқиғаларды шегергенде есептеледі. Бағаланған жұмыс — алдағы 7 күнде мерзімі келетін ашық тапсырмалар бағалауларының қосындысы.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Дүйсенбі–жұма';

  @override
  String get assistantWorkdaysSunThu => 'Жексенбі–бейсенбі';

  @override
  String get assistantWorkloadDayOff => 'Демалыс күні';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated жоспарланған · $free бос';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Қазірден $end дейін бүгінгі оқиғалардың айналасында жоспарланды. Алдымен мерзімі өткен тапсырмалар, содан кейін басымдық, мерзім және бағалау.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Уақыт блоктары ретінде жоспарлау';

  @override
  String get assistantScheduleConfirmTitle => 'Күнтізбеңізге уақыт блоктарын қосу керек пе?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Бүгінгі күнтізбеге $count уақыт блогы қосылады.',
      one: 'Бүгінгі күнтізбеге 1 уақыт блогы қосылады.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count уақыт блогы қосылды',
      one: '1 уақыт блогы қосылды',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Күнтізбеңізде бар';

  @override
  String get assistantPlanTimeline => 'Бүгінге сыяды';

  @override
  String get assistantNoEstimate => 'Жоспарлау үшін бағалау қосыңыз';

  @override
  String get assistantNoNotes => 'Әзірге жазба жоқ. Алдымен жазба жазыңыз.';

  @override
  String get assistantNoteEmpty => 'Бұл жазба бос.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тапсырма жасалды',
      one: '1 тапсырма жасалды',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточка жасалды',
      one: '1 карточка жасалды',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count жасау',
      one: '1 жасау',
      zero: 'Ештеңе таңдалмаған',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Танылатындар: белгіленбеген «- [ ]» құсбелгілері және TODO: немесе To do: деп басталатын жолдар';

  @override
  String get assistantCardsHint =>
      'Танылатындар: «термин: анықтама», «термин — анықтама» және Q:/A: жол жұптары';

  @override
  String get assistantProviderHint =>
      'OpenAI-мен үйлесімді кез келген қызметті пайдаланыңыз. Кілт осы құрылғының қауіпсіз қоймасында қалады және сақтық көшірмелерге ешқашан қосылмайды.';

  @override
  String get assistantEndpointHelp => 'Мысалы, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Сақталған кілтті қалдыру үшін бос қалдырыңыз';

  @override
  String get assistantApiKeyRequired => 'API кілтін енгізіңіз';

  @override
  String get assistantProviderSaved => 'Провайдер сақталды';

  @override
  String get assistantProviderRemoved => 'Провайдер жойылды, кілт өшірілді';

  @override
  String get assistantRemoveProviderConfirm =>
      'Провайдерді жойып, сақталған API кілтін осы құрылғыдан өшіру керек пе?';

  @override
  String get assistantAskEveryTime => 'Әр сұрау алдында сұрау';

  @override
  String get assistantSummarizing => 'Қорытынды жасалуда…';

  @override
  String assistantSummaryNote(String host) {
    return '$host жасаған. Сенім артпас бұрын тексеріңіз.';
  }

  @override
  String get assistantCopy => 'Көшіру';

  @override
  String get assistantCopied => 'Көшірілді';

  @override
  String get assistantConfigure => 'Провайдерді баптау';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Осы сериядағы барлық оқиғалар жылжытылды';

  @override
  String get calendarEventReminder => 'Еске салғыш';

  @override
  String get calendarEventRepeat => 'Қайталау';

  @override
  String get calendarEventColor => 'Түс';

  @override
  String get calendarDefaultColor => 'Түр түсін пайдалану';

  @override
  String get calendarEventLinkedTask => 'Байланысты тапсырма';

  @override
  String get calendarEventNoTask => 'Байланысты тапсырма жоқ';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count оқиға',
      one: '1 оқиға',
      zero: 'Оқиға жоқ',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'мерзімі келген $count тапсырма',
      one: 'мерзімі келген 1 тапсырма',
      zero: 'мерзімі келген тапсырма жоқ',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Бұл күнді жоспарлау үшін оқиға немесе уақыт блогын қосыңыз.';

  @override
  String get calendarNow => 'Ағымдағы уақыт';

  @override
  String get calendarRecurring => 'Қайталанады';

  @override
  String get calendarEventNotFound => 'Бұл оқиға енді жоқ';

  @override
  String get calendarEventLocalTime => 'Уақыт құрылғыңыздың уақыт белдеуінде көрсетіледі';

  @override
  String get calendarEventDeleted => 'Оқиға себетке жіберілді';

  @override
  String get calendarConflictMarker => 'Басқа оқиғамен қабаттасады';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Өзгерістер осы сериядағы әр оқиғаға қолданылады';

  @override
  String get calendarDragHintSeries => 'Қайталанатын оқиғаны сүйрегенде бүкіл серия жылжиды';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, тапсырма мерзімі';
  }

  @override
  String get startupErrorTitle => 'Деректеріңізді ашу мүмкін болмады';

  @override
  String get startupErrorLocked =>
      'Осы құрылғы деректерінің шифрлау кілті қолжетімсіз. Ештеңе жойылған жоқ. Құрылғыны қайта іске қосу жиі көмектеседі. Құрылғыны жақында қалпына келтірген болсаңыз, деректеріңізді шифрланған сақтық көшірмеден қалпына келтіріңіз.';

  @override
  String get startupErrorCipher =>
      'Бұл құрылғы қолданбаға қажет шифрланған сақтауды қолдамайды. Ештеңе шифрланбаған түрде сақталған жоқ.';

  @override
  String get startupErrorRetry => 'Қайталау';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточканы қайталау уақыты келді',
      one: '1 карточканы қайталау уақыты келді',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count кезекте';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count жаңа';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Пісіп-жетілген карточкалар: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 немесе одан көп енгізіңіз';

  @override
  String get flashcardsSearchCards => 'Карточкаларды іздеу';

  @override
  String get flashcardsSearchEmpty => 'Іздеуге сәйкес карточка жоқ';

  @override
  String get flashcardsCardAdded => 'Карточка қосылды';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Мерзімі $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Алмасу буферіне көшіру';

  @override
  String get flashcardsExportTitle => 'Жинақты экспорттау';

  @override
  String get flashcardsDeleteDeck => 'Жинақты жою';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, келесі қайталау $interval кейін';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Сұрақ: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Жауап: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Сұрақты көрсету';

  @override
  String get flashcardsImportField => 'Импортталатын карточкалар';

  @override
  String get flashcardsNothingToStudy => 'Оқитын ештеңе жоқ';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Оқуға $count карточка дайын',
      one: 'Оқуға 1 карточка дайын',
      zero: 'Дайын карточка жоқ',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Баға бойынша';

  @override
  String get flashcardsDeckNotFound => 'Бұл жинақ енді қолжетімсіз.';

  @override
  String get focusSessionDeleted => 'Сеанс жойылды';

  @override
  String get focusDeleteConfirm =>
      'Бұл сеансты тарихтан жою керек пе? Оның уақыты мақсаттарыңызға енді саналмайды.';

  @override
  String get focusUnlinkTask => 'Байланысты тапсырманы алып тастау';

  @override
  String get focusNoteHint => 'Немен айналыстыңыз?';

  @override
  String get focusModeLabel => 'Таймер режимі';

  @override
  String focusUpNext(String phase) {
    return 'Келесі: $phase';
  }

  @override
  String get focusStopwatchHint => 'Тоқтатқанша жоғары қарай санайды.';

  @override
  String get focusOpenHint => 'Уақыт шегі жоқ. Аяқтаған кезде тоқтатыңыз.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Еске салғыштар параметрлерде өшірілген. Сеанс аяқталғанда ескерту болмайды.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Барлығы';

  @override
  String get goalsFilterPeriod => 'Кезең сүзгісі';

  @override
  String get goalsFilterStatus => 'Күй сүзгісі';

  @override
  String get goalsEmptyFiltered => 'Бұл сүзгіге сәйкес мақсат жоқ';

  @override
  String goalsDueOn(String date) {
    return 'Мерзімі $date';
  }

  @override
  String get goalsDeadline => 'Мерзім (міндетті емес)';

  @override
  String get goalsNoDeadline => 'Мерзім жоқ';

  @override
  String get goalsSetDeadline => 'Мерзім қою';

  @override
  String get goalsRemoveDeadline => 'Мерзімді алып тастау';

  @override
  String get goalsDescription => 'Сипаттама (міндетті емес)';

  @override
  String get goalsTitleLabel => 'Атауы';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Нысанаға жетті';

  @override
  String get goalsLogged => 'Прогресс жазылды';

  @override
  String get goalsEntryDeleted => 'Жазба жойылды';

  @override
  String get goalsDeleteEntry => 'Жазбаны жою';

  @override
  String get goalsDeleted => 'Мақсат жойылды';

  @override
  String get goalsMarkActive => 'Белсенді деп белгілеу';

  @override
  String get goalsNotFound => 'Бұл мақсат енді қолжетімсіз';

  @override
  String get goalsLinkTask => 'Тапсырманы байланыстыру';

  @override
  String get goalsNoLinkedTasks => 'Әзірге байланысты тапсырма жоқ';

  @override
  String get goalsUnlinkTask => 'Тапсырманың байланысын ажырату';

  @override
  String get goalsTaskOpen => 'Әлі орындалмаған';

  @override
  String get goalsTaskLinked => 'Тапсырма байланыстырылды';

  @override
  String get goalsTaskUnlinked => 'Тапсырманың байланысы ажыратылды';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count орындалған байланысты тапсырма',
      one: '1 орындалған байланысты тапсырма',
    );
    return 'Осы кезеңде $_temp0 қамтылған';
  }

  @override
  String get goalsHistoryAllTime =>
      'Бұрынғы кезеңдердің жазбалары осында сақталады, бірақ тек өз кезеңіне саналады.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Бүгін $total ішінен $done орындалды';
  }

  @override
  String get habitsNothingToday => 'Бүгінге жоспарланған әдет жоқ';

  @override
  String get habitsDecrease => 'Бір белгіні алып тастау';

  @override
  String get habitsResetToday => 'Бүгінгіні тазалау';

  @override
  String get habitsCheckInHint => 'Реттеу үшін басып тұрыңыз';

  @override
  String get habitsName => 'Атауы';

  @override
  String get habitsColor => 'Түс';

  @override
  String get habitsValidationDays => 'Кемінде бір күнді таңдаңыз';

  @override
  String habitsReminderAt(String time) {
    return 'Күн сайын $time';
  }

  @override
  String get habitsSetReminder => 'Еске салу уақытын қою';

  @override
  String get habitsRemoveReminder => 'Еске салғышты алып тастау';

  @override
  String get habitsReminderNote =>
      'Хабарландыруларға рұқсат берілсе, еске салғыштар жоспарланған күндері шығады.';

  @override
  String get habitsArchived => 'Әдет мұрағатталды';

  @override
  String get habitsNotFound => 'Бұл әдет енді қолжетімсіз';

  @override
  String get habitsLast30 => 'Соңғы 30 күн';

  @override
  String get habitsConsistencyNone => 'Әзірге деректер жеткіліксіз';

  @override
  String get habitsCalendar => 'Белгілер тарихы';

  @override
  String get habitsCalendarHint => 'Түзету үшін күнді түртіңіз.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $target ішінен $count';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Соңғы 90 күндегі белгілер. Тұрақтылық $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Соңғы 90 күндегі белгілер. Әзірге деректер жеткіліксіз.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн',
      one: '1 күн',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Кідіртілген күндер серияңызға әсер етпейді.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Әдетті мұрағаттау';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Күніне $count рет',
      one: 'Күніне бір рет',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Басқа жазбалар';

  @override
  String get notesAllNotebooks => 'Барлық дәптерлер';

  @override
  String get notesNotebookName => 'Дәптер атауы';

  @override
  String get notesNotebookColor => 'Түс';

  @override
  String get notesDeleteNotebook => 'Дәптерді жою';

  @override
  String get notesDeleteNotebookMessage =>
      'Дәптер жойылады. Оның жазбалары сақталып, «Барлық дәптерлер» бөлімінде көрсетіледі.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Маңызды жазбаларды жоғарыда ұстау үшін бекітіңіз.';

  @override
  String get notesEmptyFavorites => 'Таңдаулы деп белгілеген жазбалар осында көрсетіледі.';

  @override
  String get notesEmptyArchived => 'Мұрағатталған жазбалар осында көрсетіледі.';

  @override
  String get notesEmptyFiltered => 'Бұл сүзгілерге сәйкес жазба жоқ.';

  @override
  String get notesArchivedSnack => 'Жазба мұрағатталды';

  @override
  String get notesUnarchivedSnack => 'Жазба жазбаларыңызға қайтарылды';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total ішінен $done орындалды';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Пішімдеу';

  @override
  String get notesWrite => 'Жазу';

  @override
  String get notesPreviewEmpty => 'Әзірге алдын ала қарайтын ештеңе жоқ.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Әзірге басқа жазбалар бұл жерге сілтемейді. Бұл жазбаға [[$title]] арқылы сілтеңіз.';
  }

  @override
  String get notesBacklinksNeedTitle => 'Басқа жазбалар сілтей алуы үшін бұл жазбаға атау беріңіз.';

  @override
  String get notesLinkedTasksEmpty => 'Бұл жазбаға байланысты тапсырма жоқ.';

  @override
  String notesLinkMissing(String title) {
    return '«$title» атты жазба әлі жоқ.';
  }

  @override
  String get notesNotFound => 'Бұл жазба енді жоқ.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Тексеру тізімі тармағы: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return '$title жазбасын ашу';
  }

  @override
  String get notesTaskDone => 'Орындалды';

  @override
  String get notifTimerDoneBody => 'Сіз қойған уақыт өтіп кетті.';

  @override
  String get onboardingPrivatePointDevice => 'Тек осы құрылғыда, шифрланған түрде сақталады';

  @override
  String get onboardingPrivatePointAccount => 'Тіркелгі қажет емес';

  @override
  String get onboardingPrivatePointTracking => 'Аналитика жоқ, бақылау жоқ';

  @override
  String get onboardingLanguageBody => 'Мұны кез келген уақытта Параметрлерден өзгерте аласыз.';

  @override
  String get onboardingNext => 'Келесі';

  @override
  String get projectsActive => 'Белсенді';

  @override
  String get projectNameHint => 'мыс. Өнімді іске қосу';

  @override
  String get projectGoalHint => 'Аяқталған нәтиже қандай болады?';

  @override
  String get projectNoDeadline => 'Мерзім жоқ';

  @override
  String get projectTasksOpen => 'Ашық тапсырмалар';

  @override
  String get projectTasksCompleted => 'Орындалған тапсырмалар';

  @override
  String get projectAddTask => 'Жобаға тапсырма қосу';

  @override
  String get projectAddNote => 'Жаңа жоба жазбасы';

  @override
  String get projectLinkedNotes => 'Жазбалар';

  @override
  String get projectNoTasks => 'Бұл жобада әзірге тапсырма жоқ';

  @override
  String get projectArchivedBadge => 'Мұрағатталған';

  @override
  String get projectDeleted => 'Жоба себетке жіберілді';

  @override
  String get projectDeleteMessage => 'Тапсырмалар жобасыз тізіміңізде қалады.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent пайыз орындалды';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count нәтиже',
      one: '1 нәтиже',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Түрі бойынша сүзу';

  @override
  String searchRecentTap(String query) {
    return '$query бойынша қайта іздеу';
  }

  @override
  String get settingsLanguageHint =>
      'Бүкіл қолданбаның тілін таңдаңыз. Атаулар өз тілінде көрсетіледі.';

  @override
  String get settingsThemeHint => 'Ашық, қараңғы немесе жүйеге сай';

  @override
  String settingsDecrease(String setting) {
    return '$setting азайту';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting көбейту';
  }

  @override
  String get settingsQuietStart => 'Басталуы';

  @override
  String get settingsQuietEnd => 'Аяқталуы';

  @override
  String get settingsNotificationsHint =>
      'Бұл таңдауыңызды қолданбада сақтайды. Жүйе де рұқсат сұрауы мүмкін.';

  @override
  String get settingsDashboardHint =>
      'Ретін өзгерту үшін сүйреңіз. Қажет емес бөлімдерді өшіріңіз.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section ретін өзгерту';
  }

  @override
  String get settingsDashboardReset => 'Әдепкі ретті қалпына келтіру';

  @override
  String get settingsAssistantDesc =>
      'Қосымша жоспарлау көмегі. Провайдер қоспасаңыз, ештеңе құрылғыдан шықпайды.';

  @override
  String get settingsAssistantSetup => 'Көмекші мен провайдерді баптау';

  @override
  String get settingsTrashDesc => 'Жойылған элементтерді қалпына келтіру немесе біржола жою';

  @override
  String get settingsEraseFirstBody =>
      'Мұны болдырмау мүмкін емес. Алдымен шифрланған сақтық көшірме жасауды қарастырыңыз.';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word деп жазыңыз';
  }

  @override
  String get settingsEraseFailed => 'Деректерді өшіру мүмкін болмады. Ештеңе өзгерген жоқ.';

  @override
  String get settingsAboutTagline => 'Жеке, жергілікті негіздегі өнімділік жұмыс кеңістігі.';

  @override
  String get backupShowPassword => 'Құпиясөзді көрсету';

  @override
  String get backupHidePassword => 'Құпиясөзді жасыру';

  @override
  String get backupSaved => 'Сақтық көшірме сақталды';

  @override
  String get backupFailed => 'Сақтық көшірме жасалмады. Деректеріңіз өзгерген жоқ.';

  @override
  String get backupReadFailed => 'Таңдалған файлды оқу мүмкін болмады.';

  @override
  String get backupRestoreFailed => 'Қалпына келтіру сәтсіз аяқталды. Ештеңе өзгерген жоқ.';

  @override
  String get backupShareSubject => 'Deep Focus шифрланған сақтық көшірмесі';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Әр $count күн сайын',
      one: 'Күн сайын',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Әр $count апта сайын',
      one: 'Апта сайын',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Әр $count ай сайын',
      one: 'Ай сайын',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Әр $count жыл сайын',
      one: 'Жыл сайын',
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
    return 'күндері: $days';
  }

  @override
  String get repeatEndsLabel => 'Аяқталуы';

  @override
  String get repeatEndsAfter => 'Белгілі бір рет санынан кейін';

  @override
  String get repeatCountLabel => 'Қайталану саны';

  @override
  String get reminderNone => 'Еске салғыш жоқ';

  @override
  String get reminderCustomTime => 'Белгілі бір уақытта';

  @override
  String get a11yDecrease => 'Азайту';

  @override
  String get a11yIncrease => 'Көбейту';

  @override
  String get pickTaskTitle => 'Тапсырма таңдаңыз';

  @override
  String get pickTaskEmpty => 'Ашық тапсырма жоқ';

  @override
  String get tasksSearchTooltip => 'Тапсырмаларды іздеу';

  @override
  String get tasksSectionOverdue => 'Мерзімі өткен';

  @override
  String get tasksSectionToday => 'Бүгін';

  @override
  String get tasksRecurringSemantics => 'Қайталанады';

  @override
  String get tasksFilterPriorityAtLeast => 'Ең төменгі басымдық';

  @override
  String get tasksFilterCategory => 'Санат';

  @override
  String get tasksFilterAnyCategory => 'Кез келген санат';

  @override
  String get tasksFilterLabel => 'Белгі';

  @override
  String get tasksFilterAnyLabel => 'Кез келген белгі';

  @override
  String get tasksFilterReset => 'Сүзгілерді тастау';

  @override
  String get tasksViewByProject => 'Жоба бойынша';

  @override
  String get tasksViewByPriority => 'Басымдық бойынша';

  @override
  String get tasksViewByCategory => 'Санат бойынша';

  @override
  String get tasksGroupNoCategory => 'Санат жоқ';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тапсырма',
      one: '1 тапсырма',
    );
    return '$_temp0 бұғаттап тұр';
  }

  @override
  String get taskBlockedWarning =>
      'Бұл тапсырманы аяқталмаған тапсырмалар бұғаттап тұр. Бәрібір орындалды деп белгілеу керек пе?';

  @override
  String get taskStartFocus => 'Осы тапсырмаға назар аудару';

  @override
  String get taskRemoveDate => 'Күнді алып тастау';

  @override
  String get taskAllDay => 'Нақты уақыт жоқ';

  @override
  String get taskSaved => 'Тапсырма сақталды';

  @override
  String get taskCreated => 'Тапсырма жасалды';

  @override
  String get taskReminderNeedsDue => 'Салыстырмалы еске салғыштарды пайдалану үшін мерзім қойыңыз';

  @override
  String get taskLabelName => 'Белгі атауы';

  @override
  String get taskPlanning => 'Жоспарлау';

  @override
  String get taskOrganize => 'Ұйымдастыру';

  @override
  String get taskBreakdown => 'Бөлшектеу';

  @override
  String get trashDeleteTaskTitle => 'Бұл тапсырманы біржола жою керек пе?';

  @override
  String get trashDeleteNoteTitle => 'Бұл жазбаны біржола жою керек пе?';

  @override
  String get trashDeleteBody => 'Мұны болдырмау мүмкін емес.';

  @override
  String get trashEmptyTitle => 'Себетті тазалау керек пе?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элемент біржола жойылады.',
      one: '1 элемент біржола жойылады.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Қалпына келтірілді';

  @override
  String get trashPurged => 'Біржола жойылды';

  @override
  String trashDeletedOn(String date) {
    return '$date жойылған';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элемент',
      one: '1 элемент',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Дауыстап оқу';

  @override
  String get flashcardsTtsUnavailable => 'Бұл құрылғыда мәтінді дыбыстау қолжетімсіз.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Бұл тілге дауыс орнатылмаған. Оны Android мәтінді дыбыстау параметрлерінде қосыңыз.';

  @override
  String get calendarAgenda => 'Күн тәртібі';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Ұшқын',
      'rocket': 'Зымыран',
      'book': 'Кітап',
      'work': 'Жұмыс',
      'home': 'Үй',
      'heart': 'Жүрек',
      'code': 'Код',
      'palette': 'Палитра',
      'fitness': 'Фитнес',
      'school': 'Мектеп',
      'travel': 'Саяхат',
      'money': 'Жинақ',
      'other': 'Белгіше',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Қосымша өрістер';

  @override
  String get cardFieldExample => 'Мысал';

  @override
  String get cardFieldExplanation => 'Түсіндірме';

  @override
  String get cardFieldPronunciation => 'Айтылуы';

  @override
  String get cardFieldNotes => 'Қосымша жазбалар';

  @override
  String get projectMilestones => 'Кезеңдер';

  @override
  String get milestoneAdd => 'Кезең қосу';

  @override
  String get milestoneEdit => 'Кезеңді өңдеу';

  @override
  String get milestoneTitleLabel => 'Кезең';

  @override
  String get milestoneNoDate => 'Күні жоқ';

  @override
  String get milestonesEmpty =>
      'Әзірге кезең жоқ. Жобаны күнтізбеде бақылау үшін күні бар бақылау нүктелерін қосыңыз.';

  @override
  String get milestoneDeleted => 'Кезең жойылды';

  @override
  String milestoneDoneA11y(String title) {
    return '«$title» кезеңін орындалды деп белгілеу';
  }

  @override
  String calendarMilestone(String project) {
    return 'Кезең · $project';
  }

  @override
  String get tasksViewInbox => 'Кіріс';

  @override
  String get tasksViewArchived => 'Мұрағатталған';

  @override
  String get tasksEmptyInbox =>
      'Жобасыз немесе күнсіз тапсырмалар осында түседі. Бос уақытыңызда реттеңіз.';

  @override
  String get tasksEmptyArchived =>
      'Мұрағатталған тапсырмалар тізімдер мен еске салғыштардан тыс, осында сақталады.';

  @override
  String get taskArchivedBadge => 'Мұрағатталған';

  @override
  String get taskStatusInProgress => 'Орындалуда';

  @override
  String get taskArchived => 'Тапсырма мұрағатталды';

  @override
  String get taskUnarchived => 'Тапсырма мұрағаттан қалпына келтірілді';

  @override
  String get focusPlanTitle => 'Сеанс жоспары';

  @override
  String focusPlanTotal(String duration) {
    return 'Барлығы $duration';
  }

  @override
  String get focusPlanRounds => 'Фокус сеанстары';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Ұзақ үзіліс мынадан кейін';

  @override
  String get focusPlanSkipLastBreak => 'Соңғы үзілісті өткізіп жіберу';

  @override
  String get focusPlanAutoBreaks => 'Үзілістерді автоматты бастау';

  @override
  String get focusPlanAutoFocus => 'Үзілістен кейін фокусты автоматты бастау';

  @override
  String get focusPlanSave => 'Жоспарды сақтау';

  @override
  String get focusPlanNameHint => 'мыс. Емтиханға дайындық';

  @override
  String get focusPlanSaved => 'Жоспар сақталды';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work мин фокус, $rest мин үзіліс';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label азайту';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label көбейту';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '$total сеанстың $current-сі';
  }

  @override
  String get focusSeriesComplete => 'Серия аяқталды. Жарайсыз!';

  @override
  String get filterAll => 'Барлығы';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added импортталды · $duplicates қайталанатын өткізілді · $invalid толық емес жол';
  }

  @override
  String get flashcardsSuspend => 'Карточканы тоқтата тұру';

  @override
  String get flashcardsResume => 'Карточканы жалғастыру';

  @override
  String get flashcardsSuspended => 'Карточка тоқтатылды: ол жоспарланбайды';

  @override
  String get flashcardsResumed => 'Карточка жалғастырылды';

  @override
  String get flashcardsSuspendedFilter => 'Тоқтатылған';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$total карточканың $shown';
  }

  @override
  String get flashcardsImportFile => 'Файлдан';

  @override
  String get speechTitle => 'Сөйлеу';

  @override
  String get speechAppLanguage => 'Қолданба тілі';

  @override
  String get speechFrontLanguage => 'Алдыңғы жақтың тілі';

  @override
  String get speechBackLanguage => 'Артқы жақтың тілі';

  @override
  String get speechRepeat => 'Әр оқуды қайталау';

  @override
  String get speechRate => 'Жылдамдық';

  @override
  String get speechAutoRead => 'Сұрақты автоматты түрде оқу';

  @override
  String get speechHint =>
      'Осы құрылғыда орнатылған дауыстарды офлайн пайдаланады. Тілдің дауысы болмаса, сізге хабарланады және орнына басқа ештеңе қолданылмайды.';

  @override
  String get studyHowTitle => 'Қалай оқығыңыз келеді?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточканы қайталау',
      one: '1 карточканы қайталау',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Барлық карточкаларды жаттығу (кесте өзгермейді)';

  @override
  String get studyPracticeMistakes => 'Соңғы қателерді жаттығу';

  @override
  String get studyPracticeHint =>
      'Жаттығу раундтары карточкалардың мерзімін ешқашан өзгертпейді. Қайталау кестені жаңартады.';

  @override
  String get studyModeClassic => 'Классикалық';

  @override
  String get studyModeReverse => 'Кері';

  @override
  String get studyModeMixed => 'Екі жақты';

  @override
  String get studyModeTyped => 'Жауапты теру';

  @override
  String get studyModeChoice => 'Көп таңдаулы';

  @override
  String get studyModeListening => 'Тыңдау';

  @override
  String get studyPractice => 'жаттығу';

  @override
  String get studyNoMistakes => 'Бұл жинақта соңғы қателер жоқ. Тамаша!';

  @override
  String get studyTypeAnswer => 'Жауабыңызды теріңіз';

  @override
  String get studyCheck => 'Тексеру';

  @override
  String get studyKnewIt => 'Білдім';

  @override
  String get studyDidntKnow => 'Білмедім';

  @override
  String studyMistakes(int count) {
    return 'Қате ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Қате карточкаларды қайталау';

  @override
  String get studyCorrect => 'Дұрыс';

  @override
  String get studyAlmost => 'Дерлік — емлесін тексеріңіз';

  @override
  String get studyWrong => 'Дәл емес';

  @override
  String get studyShowText => 'Мәтінді көрсету';

  @override
  String get flashcardsImportFileFailed =>
      'Файлды ашу мүмкін болмады. Оның орнына мазмұнын қоюға болады.';

  @override
  String get studyNoMatchingCards => 'Бұл таңдауға сәйкес карточка әлі жоқ.';

  @override
  String get studyPracticeNew => 'Тек жаңалары';

  @override
  String get studyPracticeHard => 'Қиын карточкалар';

  @override
  String get studyPracticeFavorites => 'Таңдаулылар';

  @override
  String get studySessionSize => 'Бір сеанстағы карточкалар';

  @override
  String get studySessionAll => 'Барлығы';

  @override
  String get studyOrder => 'Реті';

  @override
  String get studyOrderDue => 'Алдымен ең көп кешіккендер';

  @override
  String get studyOrderRandom => 'Кездейсоқ';

  @override
  String get studyOrderHardest => 'Алдымен ең қиындары';

  @override
  String get flashcardsHard => 'Қиын';

  @override
  String get flashcardsFavorites => 'Таңдаулылар';

  @override
  String get flashcardsFavorite => 'Таңдаулыларға қосу';

  @override
  String get flashcardsUnfavorite => 'Таңдаулылардан алып тастау';

  @override
  String get flashcardsDuplicate => 'Көшірмесін жасау';

  @override
  String get flashcardsMoveTo => 'Жинаққа жылжыту';

  @override
  String get flashcardsNoOtherDeck => 'Алдымен басқа жинақ жасаңыз.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточка жылжытылды',
      one: 'Карточка жылжытылды',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Тег қосу';

  @override
  String get flashcardsTagHint => 'мыс. етістіктер';

  @override
  String flashcardsSelected(int count) {
    return '$count таңдалды';
  }

  @override
  String get flashcardsSelectAll => 'Көрсетілгендердің барлығын таңдау';

  @override
  String flashcardsSelectCard(String front) {
    return '$front таңдау';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Есте сақтау $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Қайталануы мүмкін';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Бұл жинақта «$front» → «$back» бар. Бәрібір сақтау керек пе?';
  }

  @override
  String get flashcardsSaveAnyway => 'Бәрібір сақтау';

  @override
  String get flashcardsStats => 'Статистика';

  @override
  String get flashcardsStatTotal => 'Карточкалар';

  @override
  String get flashcardsStatLearning => 'Үйренілуде';

  @override
  String get flashcardsStatMatureCaption => '21+ күн есте сақталған';

  @override
  String get flashcardsStatReviewsToday => 'Бүгінгі қайталаулар';

  @override
  String get flashcardsStatCorrect => 'Дұрыс жауаптар';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Соңғы $days күн';
  }

  @override
  String get flashcardsStatForget => 'Ұмыту деңгейі';

  @override
  String get flashcardsStatForgetCaption => 'Үйренілген карточкалардағы «Қайта»';

  @override
  String get flashcardsStatRecall => 'Қазір есте сақтау';

  @override
  String get flashcardsStatRecallCaption => 'FSRS бағалауы, қайталанған карточкалар';

  @override
  String flashcardsStatActivity(int count) {
    return 'Күніне қайталаулар · барлығы $count';
  }

  @override
  String get flashcardsStatHistory => 'Соңғы жауаптар';

  @override
  String get flashcardsStatNoHistory =>
      'Әзірге қайталау жоқ. Прогресті осында көру үшін жинақты оқыңыз.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field дауыстап оқу';
  }

  @override
  String get speechVoice => 'Дауыс';

  @override
  String get speechVoiceDefault => 'Автоматты';

  @override
  String get speechVoiceOnline => 'интернет қажет';

  @override
  String get speechTest => 'Дауысты тексеру';

  @override
  String get importNext => 'Алдын ала қарау';

  @override
  String get importPreviewTitle => 'Бағандарды өрістерге сәйкестендіру';

  @override
  String get importIgnoreColumn => 'Елемеу';

  @override
  String importColumn(int n) {
    return '$n-баған';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready карточка дайын · $invalid толық емес жол өткізіледі';
  }

  @override
  String get importNeedFrontBack => 'Қай бағандар алдыңғы және артқы жақ екенін таңдаңыз.';

  @override
  String get actionMoveUp => 'Жоғары жылжыту';

  @override
  String get actionMoveDown => 'Төмен жылжыту';

  @override
  String get flashcardsLayoutTitle => 'Карточка орналасуы';

  @override
  String get flashcardsLayoutHint =>
      'Бұл жинақтың қосымша өрістерін қайта атаңыз, жасырыңыз немесе ретін өзгертіңіз. Карточка мазмұны ешқашан өзгермейді.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Оқу кезінде $field көрсету';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Жауапты біртіндеп ашу';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Алдымен артқы жақ шығады; әр қосымша өріс түрткенде ашылады.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field көрсету';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Бұл файл $mb МБ-тан үлкен.';
  }

  @override
  String get flashcardsImage => 'Сурет';

  @override
  String get flashcardsAudio => 'Аудио';

  @override
  String get flashcardsAddImage => 'Сурет қосу';

  @override
  String get flashcardsAddAudio => 'Аудио қосу';

  @override
  String get flashcardsPlayAudio => 'Жазбаны ойнату';

  @override
  String get flashcardsAudioUnavailable => 'Бұл жазбаны осы құрылғыда ойнату мүмкін емес.';

  @override
  String get flashcardsCustomFields => 'Сіздің өрістеріңіз';

  @override
  String get flashcardsTemplates => 'Үлгілер';

  @override
  String flashcardsNewFieldName(int n) {
    return '$n-өріс';
  }

  @override
  String get flashcardsAddField => 'Өріс қосу';

  @override
  String get flashcardsFieldName => 'Өріс атауы';

  @override
  String get flashcardsFieldLangDefault => 'Жақтың тілі';

  @override
  String get flashcardsTemplateConfirm =>
      'Үлгі өрістердің қалай көрсетілетінін белгілеп, өз өрістерін қосады. Карточкаларыңыз бен бар өрістер өзгеріссіз қалады.';

  @override
  String get flashcardsApplyTemplate => 'Қолдану';

  @override
  String get templateVocabulary => 'Сөздік';

  @override
  String get templateTwoTranslations => 'Екі аудармасы бар сөз';

  @override
  String get templateQuestionAnswer => 'Сұрақ пен жауап';

  @override
  String get templateDefinition => 'Термин мен анықтама';

  @override
  String get templateGrammar => 'Грамматика ережесі';

  @override
  String get templateFieldPlural => 'Көпше түрі';

  @override
  String get templateFieldTranslation2 => 'Екінші аударма';

  @override
  String get templateFieldSynonyms => 'Синонимдер';

  @override
  String get templateFieldRule => 'Ереже';

  @override
  String get deckCategory => 'Деңгей немесе тақырып';

  @override
  String get deckCategoryHint => 'мыс. A1, Медицина';

  @override
  String get flashcardsSearchAll => 'Барлық карточкалардан іздеу';

  @override
  String get flashcardsSearchAllHint => 'Сөз, аударма, мысал, жазба, тег…';

  @override
  String get flashcardsAllDecks => 'Барлық жинақтар';

  @override
  String get flashcardsAllLanguages => 'Барлық тілдер';

  @override
  String get flashcardsLangUnset => 'Тіл белгіленбеген';

  @override
  String get flashcardsLevelUnset => 'Деңгей немесе тақырып жоқ';

  @override
  String get flashcardsByLanguage => 'Тіл бойынша прогресс';

  @override
  String get flashcardsByLevel => 'Деңгей немесе тақырып бойынша прогресс';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks жинақ · $cards карточка · $mature пісіп-жетілген · $due кезекте · $correct дұрыс (30 күн)';
  }

  @override
  String get flashcardsRecord => 'Жазу';

  @override
  String get flashcardsRecording => 'Жазылуда…';

  @override
  String get flashcardsRecordStop => 'Тоқтатып, сақтау';

  @override
  String get flashcardsMicDenied =>
      'Микрофонға рұқсат өшірулі. Жазу үшін оны жүйе параметрлерінде рұқсат етіңіз.';

  @override
  String get flashcardsRecordFailed => 'Бұл құрылғыда дыбыс жазу қолжетімсіз.';

  @override
  String get soundsTitle => 'Дыбыстар';

  @override
  String get soundsNature => 'Табиғат';

  @override
  String get soundsNoise => 'Фокус шуы';

  @override
  String get soundRain => 'Жаңбыр';

  @override
  String get soundStorm => 'Найзағай';

  @override
  String get soundRiver => 'Өзен';

  @override
  String get soundOcean => 'Теңіз толқындары';

  @override
  String get soundFire => 'Алау';

  @override
  String get soundForest => 'Орман құстары';

  @override
  String get soundNight => 'Жазғы түн';

  @override
  String get soundWhite => 'Ақ шу';

  @override
  String get soundPink => 'Қызғылт шу';

  @override
  String get soundBrown => 'Қоңыр шу';

  @override
  String get soundsPlay => 'Ойнату';

  @override
  String get soundsSleep => 'Ұйқы таймері';

  @override
  String get soundsSleepOff => 'Өшірулі';

  @override
  String soundsSleepAt(String time) {
    return '$time кезінде тоқтайды';
  }

  @override
  String soundsMixFull(int count) {
    return 'Бір уақытта $count дыбысқа дейін ойнауы мүмкін.';
  }

  @override
  String get soundsHint =>
      'Бастау үшін дыбысты түртіңіз. Бірнешеуін араластырып, әрқайсысының дыбыс деңгейін реттеңіз.';

  @override
  String get soundsMixer => 'Араластыру';

  @override
  String soundsVolumeOf(String name) {
    return '$name дыбыс деңгейі';
  }

  @override
  String get soundsChannel => 'Табиғат дыбыстары';

  @override
  String get settingsEndTone => 'Таймер аяқталу дыбысы';

  @override
  String get toneGentle => 'Жұмсақ сигналдар';

  @override
  String get toneBeeps => 'Сигналдар';

  @override
  String get toneWood => 'Ағаш тықылы';

  @override
  String get toneBird => 'Құс үні';

  @override
  String get toneStream => 'Бұлақ';

  @override
  String get toneSystem => 'Телефон дыбысы';

  @override
  String get speechOnPhone => 'Осы телефонда';

  @override
  String get speechAllLanguages => 'Барлық тілдер';

  @override
  String get speechSearchLanguage => 'Тілдерді іздеу';

  @override
  String get speechGetVoices => 'Қосымша дауыстар жүктеу';

  @override
  String get speechGetVoicesHint =>
      'Дауысы жоқ тілдерді телефонның сөйлеу параметрлерінен жүктеуге болады.';

  @override
  String get speechSettingsFailed => 'Бұл телефонда сөйлеу параметрлерін ашу мүмкін болмады.';

  @override
  String get speechVoiceMissing => 'Дауыс орнатылмаған';

  @override
  String get speechPause => 'Қайталаулар арасындағы үзіліс';

  @override
  String speechSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String get speechExample => 'Мысалды жауаппен бірге оқу';

  @override
  String get flashListen => 'Тыңдау';

  @override
  String get flashListenNext => 'Келесі карточка';

  @override
  String get flashListenEmpty => 'Тыңдайтын карточка жоқ.';

  @override
  String get flashViewTable => 'Кесте';

  @override
  String get flashViewCards => 'Карточкалар';

  @override
  String get flashSwapSides => 'Бағандарды ауыстыру';

  @override
  String get flashSort => 'Сұрыптау';

  @override
  String get flashSortNewest => 'Алдымен жаңалары';

  @override
  String get flashSortAlpha => 'А-дан Я-ға дейін';

  @override
  String get flashSortDue => 'Алдымен мерзімі келгендер';

  @override
  String get flashSortHard => 'Алдымен ең қиындары';

  @override
  String get flashPasteCards => 'Карточкаларды қою';

  @override
  String get flashClipboardEmpty => 'Алмасу буферінде мәтін жоқ.';

  @override
  String get flashMenuAdd => 'Карточкалар қосу';

  @override
  String get flashMenuDeck => 'Жинақ';

  @override
  String get flashToday => 'Бүгін';

  @override
  String get flashStudyNow => 'Оқу';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточкаға жауап берілді',
      one: '1 карточкаға жауап берілді',
      zero: 'Жауап берілген карточка жоқ',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Ормандағы жаңбыр';

  @override
  String get autoBackupTitle => 'Автоматты сақтық көшірмелер';

  @override
  String get autoBackupDesc => 'Күн сайын осы телефонда; соңғы 7-уі сақталады';

  @override
  String get autoBackupHint =>
      'Бұл көшірмелер осы телефонда қалады және қолданба жойылса, өшіріледі. Жаңа телефонға көшу үшін файлды сақтау мақсатында «Сақтық көшірме» пайдаланыңыз.';

  @override
  String get autoBackupNone => 'Әзірге автоматты сақтық көшірме жоқ. Біріншісі бүгін жасалады.';

  @override
  String get autoBackupRestore => 'Қалпына келтіру';

  @override
  String autoBackupConfirm(String date) {
    return 'Барлық ағымдағы деректерді $date күнгі сақтық көшірмемен алмастыру керек пе?';
  }

  @override
  String get autoBackupRestored => 'Қалпына келтірілді.';

  @override
  String get errorLogTitle => 'Қателер журналы';

  @override
  String get errorLogHint =>
      'Бірдеңе дұрыс болмаса, осында жазылады: тек қате түрі мен кодтағы орны, мазмұныңыз ешқашан емес. Мәселені шешуге көмектесу үшін бөлісіңіз.';

  @override
  String get errorLogEmpty => 'Қате тіркелмеген.';

  @override
  String get errorLogClear => 'Тазалау';

  @override
  String get soundsWithFocus => 'Фокус сеанстарымен бірге ойнату';

  @override
  String get soundsWithFocusHint => 'Миксіңіз фокус сеансымен басталып, үзілістерде кідіреді.';

  @override
  String get soundsSavedMixes => 'Сақталған микстер';

  @override
  String get soundsSaveMix => 'Бұл миксті сақтау';

  @override
  String get soundsMixNameHint => 'Атауы, мыс. Жаңбырлы кітапхана';

  @override
  String soundsDeleteMix(String name) {
    return '«$name» миксін жою керек пе?';
  }

  @override
  String get settingsReviewReminderHint => 'Күніне бір рет, тек карточкалардың мерзімі келгенде';

  @override
  String get settingsReviewTime => 'Еске салу уақыты';

  @override
  String get shortcutFocus => 'Фокус';

  @override
  String get shortcutNewTask => 'Жаңа тапсырма';

  @override
  String get shortcutReview => 'Карточкаларды қайталау';

  @override
  String get shortcutSounds => 'Табиғат дыбыстары';

  @override
  String get myDayTitle => 'Күнімді бастау';

  @override
  String get myDayHint => 'Күніңізге бір көзқарас, содан кейін бір түртумен фокус';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Бүгінге $count тапсырма',
      one: 'Бүгінге 1 тапсырма',
      zero: 'Бүгінге тапсырма жоқ',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Бүгін басқа оқиға жоқ';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Келесі: $title, уақыты $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count әдет қалды',
      one: '1 әдет қалды',
      zero: 'Барлық әдеттер орындалды',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Фокус сеансынан бастау';

  @override
  String get hijriMonth1 => 'Мұхаррам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Рабиғ әл-әууәл';

  @override
  String get hijriMonth4 => 'Рабиғ әс-сани';

  @override
  String get hijriMonth5 => 'Жумада әл-ула';

  @override
  String get hijriMonth6 => 'Жумада әл-ахира';

  @override
  String get hijriMonth7 => 'Ережеп';

  @override
  String get hijriMonth8 => 'Шағбан';

  @override
  String get hijriMonth9 => 'Рамазан';

  @override
  String get hijriMonth10 => 'Шәууәл';

  @override
  String get hijriMonth11 => 'Зулқағда';

  @override
  String get hijriMonth12 => 'Зулхижжа';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year һ.';
  }

  @override
  String get settingsHijri => 'Һижри күндері';

  @override
  String get settingsHijriHint => 'Күнтізбеде және басты экранда көрсетіледі (Умм әл-Құра)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн',
      one: '1 күн',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Бүгін $goal карточканың $done';
  }

  @override
  String get studyGoalReached => 'Күнделікті мақсатқа жеттіңіз. Жарайсыз!';

  @override
  String get studyWeekTitle => 'Сіздің аптаңыз';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 күнде $count карточкаға жауап берілді',
      one: '7 күнде 1 карточкаға жауап берілді',
      zero: '7 күнде жауап берілген карточка жоқ',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7 күнде $duration фокус';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Серия: $current · Ең үздік: $best';
  }

  @override
  String get studyGoalTitle => 'Күнделікті мақсат (карточкалар)';

  @override
  String get studyGoalOff => 'Өшірулі';

  @override
  String get focusDndTitle => 'Фокус кезінде «Мазаламау»';

  @override
  String get focusDndHint => 'Әр фокус сеансында қосылып, үзілісте өшеді';

  @override
  String get focusDndNeedsAccess => 'Мұны пайдалану үшін телефон параметрлерінде рұқсат беріңіз';

  @override
  String get voiceInput => 'Дауыспен теру';

  @override
  String get voiceInputPrompt => 'Енді сөйлеңіз';

  @override
  String get voiceInputUnavailable =>
      'Бұл телефонда дауыспен теру қолжетімсіз. Сөйлеу қызметін орнатыңыз немесе қосыңыз (мысалы, Google ұсынатын Speech Recognition & Synthesis).';

  @override
  String get prayerFajr => 'Таң';

  @override
  String get prayerSunrise => 'Күннің шығуы';

  @override
  String get prayerDhuhr => 'Бесін';

  @override
  String get prayerAsr => 'Екінді';

  @override
  String get prayerMaghrib => 'Ақшам';

  @override
  String get prayerIsha => 'Құптан';

  @override
  String get prayerMethodMwl => 'Мұсылман әлемі лигасы';

  @override
  String get prayerMethodUmmAlQura => 'Умм әл-Құра, Мекке';

  @override
  String get prayerMethodEgypt => 'Мысырдың Бас басқармасы';

  @override
  String get prayerMethodJordan => 'Иордания, Уақф министрлігі';

  @override
  String get prayerMethodKarachi => 'Ислам ғылымдары университеті, Карачи';

  @override
  String get prayerMethodIsna => 'Солтүстік Америка ислам қоғамы';

  @override
  String get prayerMethodGulf => 'Парсы шығанағы аймағы';

  @override
  String get prayerMethodKuwait => 'Кувейт';

  @override
  String get prayerMethodQatar => 'Катар';

  @override
  String get prayerMethodTurkey => 'Түркия, Диянет';

  @override
  String get prayerMethodSingapore => 'Сингапур, Малайзия, Индонезия';

  @override
  String get prayerMethodFrance => 'Франция (12°)';

  @override
  String get prayerMethodRussia => 'Ресей, Діни басқарма';

  @override
  String prayerNotifTitle(String name) {
    return '$name уақыты';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Намаз уақыты · $time';
  }

  @override
  String get prayerTitle => 'Намаз уақыттары';

  @override
  String get prayerOffHint =>
      'Намаз уақыттарын көру үшін қалаңызды таңдаңыз. Олар телефонда есептеледі; орналасқан жерге рұқсат қажет емес.';

  @override
  String get prayerChooseCity => 'Қаланы таңдау';

  @override
  String get prayerCity => 'Қала';

  @override
  String get prayerCitySearch => 'Қаланы іздеу';

  @override
  String get prayerMethod => 'Есептеу әдісі';

  @override
  String get prayerHanafiAsr => 'Ханафи бойынша екінді (кешірек уақыт)';

  @override
  String get prayerReminders => 'Әр намаз уақытында хабарлау';

  @override
  String get prayerPauseFocus => 'Намаз уақытында фокусты кідірту';

  @override
  String get prayerPauseFocusHint => 'Жүріп жатқан сеанс кідіреді; намаздан кейін жалғастырыңыз';

  @override
  String get prayerTurnOff => 'Намаз уақыттарын өшіру';

  @override
  String get prayerAccuracyNote =>
      'Есептелген уақыттар жергілікті мешітіңізден бірнеше минутқа өзгеше болуы мүмкін.';

  @override
  String prayerNext(String name, String time) {
    return '$name, уақыты $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Бұл Anki файлы ең жаңа пішімді пайдаланады. Anki-де «Support older Anki versions» қосулы күйде қайта экспорттап, сол файлды импорттаңыз.';

  @override
  String get importTemplate => 'Кесте үлгісі';

  @override
  String get importTemplateFront => 'алма';

  @override
  String get importTemplateBack => 'дөңгелек жеміс';

  @override
  String get importTemplateExample => 'Мен күн сайын алма жеймін.';

  @override
  String get importTemplateTag => 'тағам';

  @override
  String get starterTitle => 'Бастапқы жинақтар';

  @override
  String get starterHint =>
      'Бірден оқып көру үшін біреуін қосыңыз. Оны кейін өңдеуге немесе жоюға болады.';

  @override
  String get starterAdd => 'Қосу';

  @override
  String get starterWords => 'Күнделікті ағылшын сөздері (араб тілінде)';

  @override
  String get starterCapitals => 'Әлем астаналары';

  @override
  String get starterElements => 'Химиялық элементтер';

  @override
  String get settingsAccent => 'Акцент түсі';

  @override
  String get accentViolet => 'Күлгін';

  @override
  String get accentBlue => 'Көк';

  @override
  String get accentTeal => 'Көкшіл жасыл';

  @override
  String get accentGreen => 'Жасыл';

  @override
  String get accentRose => 'Қызғылт';

  @override
  String get accentAmber => 'Сарғыш';

  @override
  String get settingsFlashTextSize => 'Карточка мәтінінің өлшемі';

  @override
  String get settingsFlashTextSample => 'Мысал';

  @override
  String get widgetStartFocus => 'Фокус үшін түртіңіз';

  @override
  String widgetFocusUntil(String time) {
    return '$time дейін фокус';
  }

  @override
  String get widgetNoCardsDue => 'Карточкалар: бәрі орындалды';

  @override
  String get faqMyDayQ => '«Күнімді бастау» не істейді?';

  @override
  String get faqMyDayA =>
      'Басты экран оны күніне бір рет ұсынады: бүгінгі тапсырмаларды, келесі оқиғаны, қалған әдеттер мен мерзімі келген карточкаларды көріп, бір түртумен фокус сеансын бастаңыз. Жылдам әрекеттер үшін қолданба белгішесін басып тұрыңыз немесе фокус уақыты мен карточкаларды көру үшін басты экран виджетін қосыңыз.';

  @override
  String get faqTasksQ => 'Еске салғышы бар тапсырманы қалай қосамын?';

  @override
  String get faqTasksA =>
      'Басты беттегі «Жаңа тапсырма» немесе «Тапсырмалар» ішіндегі + түймесін түртіңіз. Атауын жазыңыз немесе микрофонмен айтыңыз, содан кейін мерзім, уақыт және еске салғыш қойыңыз. Мерзімі өткен тапсырмалар бірінші тұрады.';

  @override
  String get faqFocusQ => 'Фокус таймері қалай жұмыс істейді?';

  @override
  String get faqFocusA =>
      'Помодоро, кері санақ немесе ашық уақытты таңдап, «Бастау» түймесін басыңыз; үзілістер автоматты түрде келуі мүмкін. Параметрлерде аяқталу дыбысын таңдап, фокус кезінде «Мазаламау» режимін қосып, табиғат дыбыстарыңызды әр сеанспен ойнатуға болады.';

  @override
  String get faqSoundsQ => 'Табиғат дыбыстарын араластыруға бола ма?';

  @override
  String get faqSoundsA =>
      'Алтыға дейін нақты жазбаны қосып, әрқайсысының дыбыс деңгейін реттеп, миксті атымен сақтаңыз. Олар фонда ойнай береді, ал ұйқы таймері оларды тоқтата алады. Музыка пайдаланылмайды.';

  @override
  String get faqCalendarQ => 'Күнтізбе һижри күндерін көрсете ала ма?';

  @override
  String get faqCalendarA =>
      'Иә. Һижри күндері (Умм әл-Құра) араб тілінде автоматты түрде көрсетіледі және кез келген тіл үшін Параметрлерде қосуға болады. Оқиғалар, мерзімі бар тапсырмалар және жоба кезеңдері бірге көрсетіледі.';

  @override
  String get faqFlashcardsQ => 'Қайталау қай карточкаларды көретінімді қалай шешеді?';

  @override
  String get faqFlashcardsA =>
      'Жақсы білетін карточкалар ұзағырақ аралықтан кейін, ал қателескендер жақын арада қайтады (аралықты қайталау). Әр жауапты «Қайта», «Қиын», «Жақсы» немесе «Оңай» деп бағалаңыз. Күнделікті мақсат қойып, «Бүгін» карточкасында серияңызды сақтаңыз. Қалған күндерді және күн сайын неше жаңа карточка үйрену керектігін көру үшін жинаққа емтихан күнін қойыңыз. Карточкаларды сүйреп орналастыру үшін «Менің ретім» бойынша сұрыптаңыз, тыңдау үшін кез келген жақтағы динамикті түртіңіз, жылдамдық пен қайталауды «Сөйлеу» мәзірінде реттеңіз.';

  @override
  String get faqImportQ => 'Карточкаларды Anki немесе Excel-ден әкелуге бола ма?';

  @override
  String get faqImportA =>
      'Иә. Жинақта «Импорттау» таңдап, файлды көрсетіңіз: Anki (.apkg), Excel (.xlsx) немесе CSV, содан кейін бағандарды сәйкестендіріңіз. Компьютерде карточка жазу үшін «Кесте үлгісі» пайдаланыңыз. Anki файлдарындағы суреттер мен дыбыстар импортталмайды.';

  @override
  String get faqNotesQ => 'Жазбалар не істей алады?';

  @override
  String get faqNotesA =>
      'Тексеру тізімдері мен пішімдеумен еркін жазыңыз, маңызды жазбаларды бекітіңіз немесе таңдаулыға қосыңыз, тегтер қосып, жазбаларды тапсырмаларға байланыстырыңыз. Микрофон түймесі айтып жаздыруға мүмкіндік береді. Жаңа жазба үлгіден басталуы мүмкін (дәріс, кітап қорытындысы, күнделік, апталық жоспар), ал сурет түймесі фото қосады.';

  @override
  String get faqHabitsQ => 'Әдет сериялары қалай есептеледі?';

  @override
  String get faqHabitsA =>
      'Жоспарланған күні әдет нысанасына жетсеңіз, күн саналады. Әдетті кідірту серияны сақтайды. Әр әдеттің өз еске салу уақыты болуы мүмкін.';

  @override
  String get faqGoalsQ => 'Мақсаттар прогресті қалай бақылайды?';

  @override
  String get faqGoalsA =>
      'Мақсатқа нысана мөлшері мен бірлігін беріп, прогресті жазып отырыңыз. Оның карточкасы қаншалықты жеткеніңізді және мерзімге дейін қанша қалғанын көрсетеді.';

  @override
  String get faqProjectsQ => 'Жобалар не үшін керек?';

  @override
  String get faqProjectsA =>
      'Тапсырмаларды жобаға топтап, күні бар кезеңдер қосып, жалпы прогресті бақылаңыз. Кезеңдер күнтізбеде де көрсетіледі.';

  @override
  String get faqInsightsQ => 'Талдау нені көрсетеді?';

  @override
  String get faqInsightsA =>
      'Күндер мен апталар бойынша фокус уақытыңызды, орындалған тапсырмалар мен оқуды, жұмсақ ұсыныстармен бірге. Бәрі телефоныңызда есептеледі.';

  @override
  String get faqSpacesQ => 'Барлық бөлімдер қайда?';

  @override
  String get faqSpacesA =>
      '«Кеңістіктер» қолданбаның әр бөлігін (жазбалар, жинақтар, әдеттер, мақсаттар, жобалар, дыбыстар және т.б.) тізеді, сондықтан негізгі жолақ қарапайым қалады.';

  @override
  String get faqBackupQ => 'Деректерімнің сақтық көшірмесі қалай жасалады?';

  @override
  String get faqBackupA =>
      'Қолданба күн сайын осы телефонда шифрланған көшірмені үнсіз сақтап, соңғы 7-еуін қалдырады. Параметрлерде құпиясөзбен қорғалған сақтық көшірме файлын экспорттап, оны басқа телефонда қалпына келтіруге болады.';

  @override
  String get faqPrayerQ => 'Намаз уақыттары қалай жұмыс істейді?';

  @override
  String get faqPrayerA =>
      'Қалаңызды Параметрлер → Намаз уақыттары бөлімінде таңдаңыз. Уақыттар телефонда сол жерде қолданылатын әдіспен есептеледі, әдіс пен екінді мәзһабын өзгертуге болады. Әр намазда хабарлама алуға болады, ал жүріп жатқан фокус сеансы кідіреді.';

  @override
  String get faqPrivacyQ => 'Деректерім қайда сақталады?';

  @override
  String get faqPrivacyA =>
      'Тек телефоныңызда, шифрланған дерекқорда. Тіркелгі де, бақылау да жоқ. Интернетті тек өзіңіз қосқан функциялар, мысалы, қосымша көмекші пайдаланады.';

  @override
  String get faqAssistantQ => 'Көмекші деген не?';

  @override
  String get faqAssistantA =>
      'Параметрлерде өз ЖИ қызметіңізге қосатын қосымша көмекші. Әдепкіде өшірулі және жазба мәтінін жіберу алдында сұрайды.';

  @override
  String get tourPlanTitle => 'Күніңізді жоспарлаңыз';

  @override
  String get tourPlanBody =>
      'Тапсырмалар, күнтізбе және әдеттер бір тыныш жерде. Әр таңды «Күнімді бастау» арқылы бастаңыз.';

  @override
  String get tourFocusTitle => 'Терең фокус';

  @override
  String get tourFocusBody =>
      'Нақты табиғат дыбыстары, «Мазаламау» және жұмсақ аяқталу дыбыстары бар уақытты сеанстар.';

  @override
  String get tourLearnTitle => 'Біржола үйреніңіз';

  @override
  String get tourLearnBody =>
      'Аралықты қайталауы бар карточкалар, көптеген тілдердегі сөйлеу және Anki немесе Excel-ден импорт.';

  @override
  String get helpTitle => 'Көмек және сұрақтар';

  @override
  String get helpOpen => 'Ашу';

  @override
  String get helpTour => 'Танысу турына шығу';

  @override
  String get tourNext => 'Келесі';

  @override
  String get tourDone => 'Бастайық';

  @override
  String get transferColTitle => 'Атауы';

  @override
  String get transferColNotes => 'Жазбалар';

  @override
  String get transferColBody => 'Мәтін';

  @override
  String get transferColDue => 'Мерзімі';

  @override
  String get transferColPriority => 'Басымдық (0-3)';

  @override
  String get transferColDone => 'Орындалды';

  @override
  String get transferColProject => 'Жоба';

  @override
  String get transferColCategory => 'Санат';

  @override
  String get transferTitle => 'Импорт және экспорт';

  @override
  String get transferSaveAs => 'Басқаша сақтау';

  @override
  String get transferImport => 'Файлдан импорттау';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV немесе Word ішіндегі кесте. Бағандар: атауы, мерзімі (2026-12-31), басымдық 0-3, орындалды, жоба, жазбалар. Қолданбада бар тапсырмалар өткізіледі.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown немесе мәтін файлдары жазбаға айналады. Excel немесе CSV: әр жолға бір жазба (атауы, мәтін).';

  @override
  String get transferSaved => 'Файл сақталды';

  @override
  String get transferFailed => 'Файлды жасау мүмкін болмады. Ештеңе өзгерген жоқ.';

  @override
  String get transferUnsupported =>
      'Бұл файлды мұнда оқу мүмкін емес. Excel, CSV, Word, Markdown немесе мәтін пайдаланыңыз.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added қосылды',
      one: '1 қосылды',
      zero: 'Қосатын жаңа ештеңе жоқ',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Мәтін';

  @override
  String get transferAllNotes => 'Барлық жазбалар';

  @override
  String get transferThisNote => 'Осы жазба';

  @override
  String get transferDeckFormats => 'Excel, Word немесе PDF ретінде сақтау';

  @override
  String get faqFilesQ => 'Excel, Word немесе PDF файлдарын пайдалануға бола ма?';

  @override
  String get faqFilesA =>
      'Иә. «Тапсырмалар» мен «Жазбалар» бөлімдерінің жоғарғы жағында импорт және экспорт түймесі (екі көрсеткі) бар, ал әр жинақта ол мәзірде орналасқан. Excel, CSV, Word немесе PDF ретінде сақтаңыз немесе Excel, CSV, Word, Markdown не мәтін файлдарын әкеліңіз. Баған атаулары қолданбаның кез келген тілінде болуы мүмкін, ал сақталған файлдарды әрқашан қайта импорттауға болады.';

  @override
  String get tplLecture => 'Дәріс';

  @override
  String get tplBook => 'Кітап қорытындысы';

  @override
  String get tplJournal => 'Күнделік';

  @override
  String get tplWeek => 'Апталық жоспар';

  @override
  String get tplLectureBody => '## Негізгі тұстар\n- \n\n## Сұрақтар\n- [ ] \n\n## Қорытынды\n';

  @override
  String get tplBookBody =>
      '## Негізгі ой\n\n## Не үйрендім\n- \n\n## Дәйексөздер\n> \n\n## Қолдану үшін\n- [ ] \n';

  @override
  String get tplJournalBody => '## Алғыс айтамын\n- \n\n## Бүгінгі назар\n- [ ] \n\n## Жазбалар\n';

  @override
  String get tplWeekBody =>
      '## Осы аптаның мақсаттары\n- [ ] \n\n### Сенбі\n- [ ] \n\n### Жексенбі\n- [ ] \n\n### Дүйсенбі\n- [ ] \n\n### Сейсенбі\n- [ ] \n\n### Сәрсенбі\n- [ ] \n\n### Бейсенбі\n- [ ] \n\n### Жұма\n- [ ] \n';

  @override
  String get tplHint => 'Үлгіден бастау';

  @override
  String get noteImage => 'Сурет';

  @override
  String get noteAddImage => 'Сурет қосу';

  @override
  String get noteImageUnreadable => 'Бұл файл қолданба оқи алатын сурет емес.';

  @override
  String get noteImageTooLarge => 'Бұл сурет тым үлкен.';

  @override
  String get examSet => 'Емтихан күнін қою';

  @override
  String get examDate => 'Емтихан күні';

  @override
  String get examToday => 'Емтихан бүгін. Сәттілік!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Емтиханға $count күн қалды',
      one: 'Емтихан ертең',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'күніне $count жаңа карточка үйрену',
      one: 'күніне 1 жаңа карточка үйрену',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'барлық карточкалар үйренілді, қайталауды жалғастырыңыз';

  @override
  String examRaiseLimit(int count) {
    return 'Күніне $count жаңа карточка көрсету';
  }

  @override
  String get backupDriveHint =>
      'Көшірмені онлайн сақтау үшін келесі ашылатын сақтау экранында Google Drive (немесе басқа бұлт қолданбасын) таңдаңыз.';

  @override
  String get flashShareDeck => 'Жинақты досыңызбен бөлісу';

  @override
  String get flashSortManual => 'Менің ретім (сүйреу)';

  @override
  String get flashReorderHint => 'Карточканы жылжыту үшін тұтқасын ұстап сүйреңіз.';

  @override
  String get flashReorderNeedsAll => 'Карточкаларды сүйреу үшін іздеу мен сүзгілерді тазалаңыз.';

  @override
  String get flashDragHandle => 'Жылжыту үшін сүйреңіз';

  @override
  String get reportTitle => 'Айлық есеп';

  @override
  String get reportFocus => 'Фокус уақыты';

  @override
  String reportSessions(int count) {
    return '$count сеанс';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Ең үздік күн: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count белсенді күн';
  }

  @override
  String get reportCards => 'Қайталанған карточкалар';

  @override
  String reportCardsKnown(String percent) {
    return '$percent есте қалды';
  }

  @override
  String get reportTasks => 'Орындалған тапсырмалар';

  @override
  String get reportHabits => 'Әдет белгілері';

  @override
  String get reportEmpty => 'Бұл айда әзірге ештеңе жазылмаған.';

  @override
  String get reportSave => 'PDF немесе Word ретінде сақтау';

  @override
  String get reportPrevMonth => 'Өткен ай';

  @override
  String get reportNextMonth => 'Келесі ай';

  @override
  String get careTitle => 'Телефон мен деректерді күту';

  @override
  String get storageTitle => 'Жад';

  @override
  String get storageSubtitle => 'Орын алатын нәрселер және пайдаланылмайтын суреттерді тазалау';

  @override
  String get storagePictures => 'Жазбалардағы суреттер';

  @override
  String get storageCardMedia => 'Карточкалардағы суреттер мен аудио';

  @override
  String get storageText => 'Жазбалар мәтіні';

  @override
  String get storageFree => 'Телефондағы бос орын';

  @override
  String get storageLow =>
      'Телефоныңыз толуға жақын. Сақтық көшірмелер мен еске салғыштар жұмыс істей беруі үшін орын босатыңыз.';

  @override
  String storageUnused(int count, String size) {
    return '$count пайдаланылмайтын сурет ($size)';
  }

  @override
  String get storageNoUnused => 'Пайдаланылмайтын сурет жоқ. Бәрі ретті.';

  @override
  String get storageClean => 'Пайдаланылмайтын суреттерді жою';

  @override
  String storageCleaned(int count) {
    return '$count сурет жойылды';
  }

  @override
  String get storageHint =>
      'Суреттерді ешбір жазба, соның ішінде себеттегі жазбалар да көрсетпегенде ғана пайдаланылмайтын деп саналады.';

  @override
  String get batteryTitle => 'Еске салғыштардың жұмысын сақтау';

  @override
  String get batterySubtitle =>
      'Кейбір телефондар фондағы қолданбаларды тоқтатады. Өзіңіздікін тексеріңіз.';

  @override
  String get batteryStatusOk =>
      'Батареяны үнемдеу бұл қолданбаны шектемейді. Еске салғыштар мен дыбыстар уақтылы келуі тиіс.';

  @override
  String get batteryStatusLimited =>
      'Батареяны үнемдеу бұл қолданбаны фонда тоқтатуы мүмкін, сондықтан еске салғыштар мен дыбыстар кешігуі немесе келмеуі мүмкін.';

  @override
  String get batteryOpen => 'Батарея параметрлерін ашу';

  @override
  String get batteryOpenApp => 'Қолданба параметрлерін ашу';

  @override
  String get batteryGeneric =>
      'Батарея параметрлерінде осы қолданбаны таңдап, «Шектеусіз» (немесе «Оңтайландырмау») күйіне қойыңыз.';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: сондай-ақ Қауіпсіздік › Рұқсаттар › Автоіске қосу бөлімін ашып, осы қолданбаны қосыңыз және Батарея үнемдегішін «Шектеусіз» күйіне қойыңыз.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: Батарея › осы қолданба бөлімін ашып, фондық әрекет пен автоіске қосуға рұқсат беріңіз; соңғы қолданбалар тізімінде қолданбаны құлыптаңыз.';

  @override
  String get batterySamsung =>
      'Samsung: Батарея › Фондық пайдалану шектеулері: осы қолданбаны «Ұйқыдағы қолданбалар» мен «Терең ұйқыдағы қолданбалар» тізімінен алып тастаңыз.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Қолданбаны іске қосу › осы қолданба › қолмен басқару, содан кейін автоіске қосуға, қосымша іске қосуға және фонда жұмыс істеуге рұқсат беріңіз.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Батарея › Фондық қуат тұтыну › осы қолданбаға рұқсат беріңіз және рұқсаттарда автоіске қосуды қосыңыз.';

  @override
  String get whatsNewTitle => 'Не жаңалық';

  @override
  String get whatsNewSubtitle => 'Соңғы өзгерістер бірнеше жолда';

  @override
  String get whatsNewDone => 'Түсінікті';

  @override
  String get whatsNewOrderTitle => 'Карточкаларды өз ретіңізбен сүйреп орналастырыңыз';

  @override
  String get whatsNewOrderBody => 'Жинақта Сұрыптау › Менің ретім таңдап, тұтқасын ұстап сүйреңіз.';

  @override
  String get whatsNewSpeechTitle => 'Карточканың әр жағында динамик';

  @override
  String get whatsNewSpeechBody =>
      'Сөзді немесе аударманы тыңдау үшін оны түртіңіз. Жылдамдық, қайталау және дауыс қайталау мәзірінде. Тіл мәтіннен анықталады.';

  @override
  String get whatsNewReportTitle => 'Айлық есеп';

  @override
  String get whatsNewReportBody =>
      'Айды көру және оны PDF немесе Word ретінде сақтау үшін «Талдау» ішіндегі есеп белгішесін түртіңіз.';

  @override
  String get whatsNewCareTitle => 'Телефон мен деректерді күту';

  @override
  String get whatsNewCareBody =>
      'Параметрлерде енді суреттерді тазалауы бар жад беті және телефон брендіңізге арналған батарея нұсқаулығы бар.';

  @override
  String get whatsNewSoundTitle => 'Тынышырақ дыбыстар';

  @override
  String get whatsNewSoundBody =>
      'Табиғат дыбыстары жұмсағырақ әрі тынышырақ, ал суретті карточкалар әдемірек.';

  @override
  String autoBackupCheckOk(String date) {
    return '$date тексерілді: соңғы сақтық көшірме дұрыс ашылады.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date тексерілді: бүлінген сақтық көшірме табылып, жаңасымен алмастырылды.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date тексерілді: соңғы сақтық көшірмені ашу мүмкін болмады. Параметрлерден сақтық көшірме файлын өзіңіз сақтаңыз.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Сіз әдетте шамамен $time кезінде оқисыз';
  }

  @override
  String get smartReviewTimeUse => 'Пайдалану';

  @override
  String get widgetNewNote => 'Жаңа жазба';

  @override
  String get noteConnections => 'Тегтер, сілтемелер және тапсырмалар';

  @override
  String get navCards => 'Карточкалар';

  @override
  String get studyAnswerWay => 'Қалай жауап беру';

  @override
  String get studyMorePractice => 'Қосымша жаттығу';

  @override
  String get studySessionSettings => 'Сеанс параметрлері';

  @override
  String get focusAdjustTitle => 'Сіздің сеансыңыз';

  @override
  String get focusPresetsTitle => 'Дайын';

  @override
  String get focusPresetStudy => 'Оқу';

  @override
  String get focusPresetDeep => 'Терең жұмыс';

  @override
  String get focusPresetQuick => 'Жылдам спринт';

  @override
  String get focusPresetReading => 'Оқу (кітап)';

  @override
  String get focusPresetWorkout => 'Жаттығу раундтары';

  @override
  String get focusAdjustMinutes => 'Фокус ұзақтығы';

  @override
  String get focusAdjustBreak => 'Үзіліс ұзақтығы';

  @override
  String get focusAdjustRounds => 'Раундтар';

  @override
  String get focusRoundsOpen => 'Шексіз';

  @override
  String focusMinutesShort(String n) {
    return '$n мин';
  }

  @override
  String get focusTapToAdjust => 'Уақытты өзгерту үшін түртіңіз';

  @override
  String get flashArrangeDecks => 'Жинақтарды реттеу';

  @override
  String get flashDeckActions => 'Жинақ опциялары';

  @override
  String get starterBrowse => 'Дайын жинақтар';

  @override
  String get starterBrowseHint => 'Бір түртумен қосып, оқуды бастаңыз';

  @override
  String get dashOpenDecks => 'Карточкаларыңызды ашу';

  @override
  String speechVoiceNumber(String n) {
    return '$n-дауыс';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Жақсы ағын. $m мин демаласыз ба?';
  }

  @override
  String get focusFlowBreakStart => 'Үзілісті бастау';

  @override
  String tasksFinishAt(String time) {
    return 'Қазір бастасаңыз, бәрін $time дейін аяқтайсыз';
  }

  @override
  String get focusCalmPacing => 'Тыныш қарқын';

  @override
  String get focusCalmPacingHint => 'Тек толық минуттар мен шеңбер, тықылдаған секундтарсыз';

  @override
  String get focusFlipHint => 'Бастау үшін телефонды бетімен төмен қаратыңыз';

  @override
  String get focusImmersive => 'Батыру режимі';

  @override
  String get focusImmersiveBlack => 'Таза қара (батареяны үнемдейді)';

  @override
  String get focusFlipToFocus => 'Аударып фокусқа кіру';

  @override
  String get focusFlipToFocusHint =>
      'Батыру режимінде: бетімен төмен қарату бастайды, көтеру кідіртеді';

  @override
  String get guardTitle => 'Алаңдаудан қорғау';

  @override
  String get guardSubtitle => 'Фокус кезінде алаңдататын қолданбаларды кідірту';

  @override
  String get guardSwitch => 'Алаңдататын қолданбаларды кідірту';

  @override
  String get guardSwitchHint => 'Фокус сеанстары және «Уақыт күзеті» сағаттары кезінде';

  @override
  String get guardNeedsAccess => 'Арнайы мүмкіндіктер қосқышы қажет: қосу үшін түртіңіз';

  @override
  String get guardDisclosureTitle => 'Қорғау қалай жұмыс істейді';

  @override
  String get guardDisclosureBody =>
      'Сіз таңдаған қолданбаларды кідірту үшін Deep Focus қай қолданба ашық екенін көру мақсатында Android арнайы мүмкіндіктер қызметін пайдаланады. «Shorts пен Reels жабу» қосулы болса, экранда қысқа бейне ойнатқышы бар-жоғын да тексереді.\n\nОл ешқандай мәтін оқымайды, көргенін сақтамайды және ешқайда ештеңе жібермейді: бәрі телефоныңызда қалады. Оны кез келген уақытта Арнайы мүмкіндіктер параметрлерінде өшіре аласыз.';

  @override
  String get guardAgree => 'Келісіп, параметрлерді ашу';

  @override
  String get guardModeGentle => 'Жұмсақ';

  @override
  String get guardModeStrict => 'Қатаң';

  @override
  String get guardGentleHint => '5 секундтық тыныс үзілісі, содан кейін өзіңіз таңдайсыз';

  @override
  String get guardStrictHint => 'Таңдалған қолданбалар фокус уақыты біткенше жабық қалады';

  @override
  String get guardApps => 'Кідіртілетін қолданбалар';

  @override
  String get guardAppsAllowed => 'Рұқсат етілген қолданбалар';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count қолданба',
      one: '1 қолданба',
      zero: 'Әзірге ештеңе таңдалмаған',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Тек таңдалған қолданбаларға рұқсат беру';

  @override
  String get guardAllowlistHint =>
      'Қалған барлық қолданбалар кідіртіледі; қоңыраулар, параметрлер және пернетақта әрқашан жұмыс істейді';

  @override
  String get guardShorts => 'Shorts пен Reels жабу';

  @override
  String get guardShortsHint =>
      'Қорғау қосулы кез келген уақытта. Мүмкіндігінше: бұл қолданбалар жиі өзгереді';

  @override
  String get guardSchedule => 'Уақыт күзеті';

  @override
  String get guardScheduleHint =>
      'Сондай-ақ мектеп немесе жұмыс сияқты белгіленген күндер мен сағаттарда қорғау';

  @override
  String get guardFrom => 'Бастап';

  @override
  String get guardTo => 'Дейін';

  @override
  String get guardSearchApps => 'Қолданбаларды іздеу';

  @override
  String get guardNoApps => 'Қолданба табылмады';

  @override
  String get guardPrivacy =>
      'Тек телефоныңызда жұмыс істейді: қорғау қай қолданба ашық екенін көреді, ішінде не барын ешқашан көрмейді және ештеңе жібермейді.';

  @override
  String get guardBreathe => 'Дем алыңыз… және шығарыңыз';

  @override
  String get guardQuestion => 'Бұл қолданба қазір сізге қажет пе?';

  @override
  String get guardBackToFocus => 'Фокусқа оралу';

  @override
  String get guardOpenFive => '5 минутқа ашу';

  @override
  String get guardStrictBody => 'Бұл қолданба фокус уақыты біткенше кідіртілген.';

  @override
  String get guardShortsClosed => 'Қорғау қосулы кезде қысқа бейнелер жабылады';

  @override
  String get faqGuardQ => 'Фокус кезінде алаңдататын қолданбаларды қалай тоқтатамын?';

  @override
  String get faqGuardA =>
      'Фокус → таймер параметрлері → Алаңдаудан қорғау бөлімін ашыңыз. Қолданбаларды таңдап, содан кейін «Жұмсақ» (5 секундтық тыныс және «Бұл қолданба қазір сізге қажет пе?» сұрағы) немесе «Қатаң» (олар жабық қалады) режимін таңдаңыз. Ол фокус сеанстары кезінде, ал «Уақыт күзеті» арқылы сіз белгілеген күндер мен сағаттарда жұмыс істейді. «Тек таңдалған қолданбаларға рұқсат беру» қалғанының бәрін кідіртеді; қоңыраулар, параметрлер және пернетақта әрқашан жұмыс істейді. Android сізден қорғауды Арнайы мүмкіндіктер параметрлерінде бір рет қосуды сұрайды. Ол тек қай қолданба ашық екенін көреді және ештеңе жібермейді.';

  @override
  String notesMovedToNotebook(String name) {
    return '$name ішіне жылжытылды';
  }

  @override
  String get notesDragHint => 'Жазбаны ұстап, дәптерге сүйреңіз';

  @override
  String get guardReviewCards => 'Оның орнына карточкаларды қайталау';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сізді $count карточка күтіп тұр',
      one: 'Сізді 1 карточка күтіп тұр',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Шұғыл: 10 секунд ұстаңыз';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Ұстай беріңіз… $n';
  }

  @override
  String get guardWeekTitle => 'Осы апта';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count кідірту',
      one: '1 кідірту',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'фокусқа $count рет оралды',
      one: 'фокусқа бір рет оралды',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Сөздерді қайта атау';

  @override
  String get wordsSubtitle => 'Қолданбадағы кез келген мәтінге өз сөзіңізді қолданыңыз';

  @override
  String get wordsHint =>
      'Өзгерту үшін мәтінді түртіңіз. Сөздеріңіз тек осы тілге қолданылады және сақтық көшірмелерде сақталады.';

  @override
  String get wordsSearch => 'Мәтіндерді іздеу';

  @override
  String get wordsChangedOnly => 'Тек өзгертілгендер';

  @override
  String wordsOriginal(String text) {
    return 'Түпнұсқа: $text';
  }

  @override
  String get wordsReset => 'Түпнұсқаны пайдалану';

  @override
  String get wordsResetAll => 'Барлық сөздерді қалпына келтіру';

  @override
  String get wordsResetAllConfirm => 'Бұл тілдегі барлық мәтін түпнұсқасына қайтады.';

  @override
  String get wordsNone => 'Мәтін табылмады';

  @override
  String get settingsLanguageSearch => 'Тілдерді іздеу';

  @override
  String get settingsLanguageNoMatch => 'Сәйкес тіл жоқ';

  @override
  String get soundsMyMusic => 'Сіздің аудиоңыз';

  @override
  String get soundsMusicHint =>
      'Телефондағы аудиофайлды ойнатыңыз. Ештеңе көшірілмейді не жүктелмейді.';

  @override
  String get soundsChooseMusic => 'Аудио таңдау';

  @override
  String get soundsRemoveMusic => 'Аудионы алып тастау';

  @override
  String get wordPacksTitle => 'Тілдерді үйрену';

  @override
  String get wordPacksHint =>
      'Тақырып бойынша сөздер тізімі. Тек қажет тілді жүктеп алыңыз, содан кейін карталарды еркін өзгертіңіз не жойыңыз.';

  @override
  String get wordPacksFailed => 'Жүктеп алу мүмкін болмады. Байланысты тексеріңіз.';

  @override
  String get wordPacksEmpty => 'Бұл тілдің сөздері әлі дайындалуда.';
}
