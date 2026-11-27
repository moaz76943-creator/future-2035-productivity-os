// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Башкы бет';

  @override
  String get navTasks => 'Тапшырмалар';

  @override
  String get navFocus => 'Фокус';

  @override
  String get navCalendar => 'Жылнаама';

  @override
  String get navSpaces => 'Мейкиндиктер';

  @override
  String get moduleProjects => 'Долбоорлор';

  @override
  String get moduleNotes => 'Жазуулар';

  @override
  String get moduleFlashcards => 'Карточкалар';

  @override
  String get moduleGoals => 'Максаттар';

  @override
  String get moduleHabits => 'Адаттар';

  @override
  String get moduleAnalytics => 'Талдоо';

  @override
  String get moduleSearch => 'Издөө';

  @override
  String get moduleAssistant => 'Жардамчы';

  @override
  String get moduleSettings => 'Жөндөөлөр';

  @override
  String get moduleTrash => 'Себет';

  @override
  String get actionSave => 'Сактоо';

  @override
  String get actionCancel => 'Жокко чыгаруу';

  @override
  String get actionDelete => 'Өчүрүү';

  @override
  String get actionEdit => 'Түзөтүү';

  @override
  String get actionDone => 'Даяр';

  @override
  String get actionAdd => 'Кошуу';

  @override
  String get actionCreate => 'Түзүү';

  @override
  String get actionClose => 'Жабуу';

  @override
  String get actionBack => 'Артка';

  @override
  String get actionUndo => 'Кайтаруу';

  @override
  String get actionRestore => 'Калыбына келтирүү';

  @override
  String get actionRetry => 'Кайра аракет кылуу';

  @override
  String get actionContinue => 'Улантуу';

  @override
  String get actionSkip => 'Өткөрүп жиберүү';

  @override
  String get actionArchive => 'Архивдөө';

  @override
  String get actionUnarchive => 'Архивден чыгаруу';

  @override
  String get actionPin => 'Кадоо';

  @override
  String get actionUnpin => 'Бошотуу';

  @override
  String get actionMore => 'Дагы параметрлер';

  @override
  String get actionClear => 'Тазалоо';

  @override
  String get actionSearch => 'Издөө';

  @override
  String get actionSort => 'Иреттөө';

  @override
  String get actionShare => 'Бөлүшүү';

  @override
  String get actionImport => 'Импорттоо';

  @override
  String get actionExport => 'Экспорттоо';

  @override
  String get actionPause => 'Тындыруу';

  @override
  String get actionResume => 'Улантуу';

  @override
  String get actionStart => 'Баштоо';

  @override
  String get actionStop => 'Токтотуу';

  @override
  String get actionComplete => 'Аяктоо';

  @override
  String get actionDeleteForever => 'Биротоло өчүрүү';

  @override
  String get actionEmptyTrash => 'Себетти бошотуу';

  @override
  String get actionUnlink => 'Байланышты үзүү';

  @override
  String get actionCustomize => 'Ыңгайлаштыруу';

  @override
  String get actionPreview => 'Алдын ала көрүү';

  @override
  String get actionLog => 'Жылышты жазуу';

  @override
  String get stateLoading => 'Жүктөлүүдө…';

  @override
  String get stateSaving => 'Сакталууда…';

  @override
  String get stateSaved => 'Сакталды';

  @override
  String get stateUnsaved => 'Сакталбаган өзгөртүүлөр';

  @override
  String get errorGenericTitle => 'Бир нерсе туура эмес болду';

  @override
  String get errorGenericMessage => 'Маалыматыңыз коопсуз. Кайра аракет кылыңыз.';

  @override
  String get errorLoadFailed => 'Бул мазмунду жүктөө мүмкүн болбоду.';

  @override
  String get errorSaveFailed => 'Сактоо мүмкүн болбоду. Өзгөртүүлөрүңүз дагы эле бул жерде.';

  @override
  String get validationRequired => 'Бул талааны толтуруу милдеттүү';

  @override
  String get validationTitleRequired => 'Аталыш киргизиңиз';

  @override
  String get validationNameRequired => 'Ат киргизиңиз';

  @override
  String get validationTooLong => 'Бул өтө узун';

  @override
  String get validationEndBeforeStart => 'Аягы башталышынан кийин болушу керек';

  @override
  String get validationStartAfterDue => 'Башталыш күнү мөөнөттөн мурда болушу керек';

  @override
  String get validationPositiveNumber => 'Нөлдөн чоң сан киргизиңиз';

  @override
  String get validationDependencyCycle => 'Бул тегерек көз карандылыкты түзөт';

  @override
  String get validationInvalidRepeat => 'Бул кайталоо эрежеси жараксыз';

  @override
  String get deletedItem => 'Себетке жылдырылды';

  @override
  String get untitled => 'Аталышсыз';

  @override
  String get noProject => 'Долбоорсуз';

  @override
  String get greetingMorning => 'Кутман таң';

  @override
  String get greetingAfternoon => 'Кутман күн';

  @override
  String get greetingEvening => 'Кутман кеч';

  @override
  String get dashFocusToday => 'Бүгүнкү фокус';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Фокусту баштоо';

  @override
  String get dashFocusRunning => 'Сеанс жүрүп жатат';

  @override
  String get dashTodayTasks => 'Мөөнөтү бүгүн';

  @override
  String get dashAgenda => 'Күн тартиби';

  @override
  String get dashHabits => 'Бүгүнкү адаттар';

  @override
  String get dashGoals => 'Максаттар';

  @override
  String get dashReview => 'Кайталоо';

  @override
  String get dashRecentNotes => 'Акыркы жазуулар';

  @override
  String get dashInsight => 'Сунуш';

  @override
  String get dashSeeAll => 'Баарын көрүү';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кайталоого $count карточка',
      one: 'Кайталоого 1 карточка',
      zero: 'Кайталоочу карточка жок',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Азыр кайталоо';

  @override
  String get dashCustomizeTitle => 'Башкы беттин бөлүмдөрү';

  @override
  String get dashCustomizeHint => 'Башкы экранда эмне көрүнөрүн тандаңыз.';

  @override
  String get dashSectionFocus => 'Фокус';

  @override
  String get dashSectionToday => 'Мөөнөтү бүгүнкү тапшырмалар';

  @override
  String get dashSectionAgenda => 'Күн тартиби';

  @override
  String get dashSectionHabits => 'Адаттар';

  @override
  String get dashSectionGoals => 'Максаттар';

  @override
  String get dashSectionReview => 'Карточкаларды кайталоо';

  @override
  String get dashSectionNotes => 'Акыркы жазуулар';

  @override
  String get dashSectionInsight => 'Сунуштар';

  @override
  String get quickAddTask => 'Жаңы тапшырма';

  @override
  String get quickAddNote => 'Жаңы жазуу';

  @override
  String get quickAddEvent => 'Жаңы иш-чара';

  @override
  String get quickStartFocus => 'Фокус';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сизде мөөнөтү өткөн $count тапшырма бар. Эң маанилүүсүнөн баштаңыз.',
      one: 'Сизде мөөнөтү өткөн 1 тапшырма бар. Аны кайра пландаңыз же адегенде бүтүрүңүз.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Күндүк фокус максатыңызга $minutes мүнөт калды.';
  }

  @override
  String get insightCardsDue => 'Карточкаларды эсиңизде жаңы турганда азыр кайталаңыз.';

  @override
  String get insightAllClear =>
      'Баары план боюнча. Эртеңки күндү пландаңыз же аң-сезимдүү тыныгуу алыңыз.';

  @override
  String insightHabitStreak(String habit) {
    return 'Катарды сактаңыз: «$habit» бүгүн али аткарыла элек.';
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
  String get focusModeOpen => 'Эркин';

  @override
  String get focusPhaseWork => 'Фокус';

  @override
  String get focusPhaseShortBreak => 'Кыска тыныгуу';

  @override
  String get focusPhaseLongBreak => 'Узун тыныгуу';

  @override
  String get focusReady => 'Даяр болгондо баштаңыз';

  @override
  String get focusPaused => 'Тындырылды';

  @override
  String get focusRunning => 'Фокуста';

  @override
  String get focusDuration => 'Узактыгы';

  @override
  String get focusLinkTask => 'Тапшырманы байланыштыруу';

  @override
  String get focusLinkedTask => 'Иштеп жаткан';

  @override
  String get focusNoTask => 'Байланышкан тапшырма жок';

  @override
  String focusCycle(int current, int total) {
    return 'Цикл $current/$total';
  }

  @override
  String get focusSkipBreak => 'Тыныгууну өткөрүп жиберүү';

  @override
  String get focusStartBreak => 'Тыныгууну баштоо';

  @override
  String get focusStartNext => 'Кийинки фокусту баштоо';

  @override
  String get focusSessionComplete => 'Сеанс аяктады';

  @override
  String get focusSessionStopped => 'Сеанс сакталды';

  @override
  String focusSessionSummary(String duration) {
    return 'Сиз $duration фокуста болдуңуз.';
  }

  @override
  String get focusAddNote => 'Бул сеанс жөнүндө жазуу кошуңуз';

  @override
  String get focusHistory => 'Тарых';

  @override
  String get focusNoHistory => 'Аяктаган сеанстар бул жерде көрүнөт';

  @override
  String get focusOutcomeCompleted => 'Аяктады';

  @override
  String get focusOutcomeInterrupted => 'Эрте токтотулду';

  @override
  String get focusRecovered => 'Колдонмо жабык турганда сеансыңыз уланды.';

  @override
  String get focusCompletedWhileAway => 'Колдонмо жабык турганда сеанс аяктап, сакталды.';

  @override
  String get focusNotificationsOff => 'Билдирмелер өчүк. Сеанс аяктаганда эскертүү албайсыз.';

  @override
  String get focusBatteryHint =>
      'Айрым түзмөктөр колдонмолорду фондо тындырат. Таймер так бойдон калат, бирок эскертүүлөр кечигиши мүмкүн. Ишенимдүү эскертүүлөр үчүн батареяны чектөөсүз колдонууга уруксат бериңиз.';

  @override
  String get focusOpenSettings => 'Жөндөөлөрдү ачуу';

  @override
  String get focusStopConfirmTitle => 'Бул сеанс токтотулсунбу?';

  @override
  String get focusStopConfirmMessage => 'Ушул убакка чейинки фокус убактысы сакталат.';

  @override
  String get focusDiscard => 'Таштоо';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes мүнөт',
      one: '1 мүнөт',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time калды';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time өттү';
  }

  @override
  String get focusDeleteSession => 'Сеансты өчүрүү';

  @override
  String get tasksTitle => 'Тапшырмалар';

  @override
  String get tasksViewToday => 'Бүгүн';

  @override
  String get tasksViewUpcoming => 'Алдыдагы';

  @override
  String get tasksViewAll => 'Баары';

  @override
  String get tasksViewOverdue => 'Мөөнөтү өткөн';

  @override
  String get tasksViewCompleted => 'Аткарылган';

  @override
  String get tasksQuickAddHint => 'Тапшырма кошуу…';

  @override
  String get tasksEmptyTitle => 'Баары аткарылды';

  @override
  String get tasksEmptyMessage => 'Күнүңүздү түзүүнү баштоо үчүн тапшырма кошуңуз.';

  @override
  String get tasksEmptyCompleted => 'Аткарылган тапшырмалар бул жерде көрүнөт.';

  @override
  String get taskNew => 'Жаңы тапшырма';

  @override
  String get taskEdit => 'Тапшырманы түзөтүү';

  @override
  String get taskTitleLabel => 'Аталышы';

  @override
  String get taskTitleHint => 'Эмне кылуу керек?';

  @override
  String get taskDescriptionLabel => 'Сүрөттөмө';

  @override
  String get taskNotesLabel => 'Жазуулар';

  @override
  String get taskPriority => 'Артыкчылык';

  @override
  String get priorityNone => 'Жок';

  @override
  String get priorityLow => 'Төмөн';

  @override
  String get priorityMedium => 'Орто';

  @override
  String get priorityHigh => 'Жогору';

  @override
  String get priorityUrgent => 'Шашылыш';

  @override
  String get taskDueDate => 'Мөөнөтү';

  @override
  String get taskStartDate => 'Башталыш күнү';

  @override
  String get taskReminder => 'Эскерткич';

  @override
  String get taskRepeat => 'Кайталоо';

  @override
  String get taskProject => 'Долбоор';

  @override
  String get taskCategory => 'Категория';

  @override
  String get taskCategoryHint => 'мис. Иш, Үй, Окуу';

  @override
  String get taskEstimateMinutes => 'Болжолдуу убакыт (мүнөт)';

  @override
  String get taskTracked => 'Өлчөнгөн фокус';

  @override
  String get taskLabels => 'Белгилер';

  @override
  String get taskAddLabel => 'Жаңы белги';

  @override
  String get taskChecklist => 'Текшерүү тизмеси';

  @override
  String get taskAddChecklistItem => 'Пункт кошуу';

  @override
  String get taskSubtasks => 'Ички тапшырмалар';

  @override
  String get taskAddSubtask => 'Ички тапшырма кошуу';

  @override
  String get taskDependencies => 'Бөгөттөгөн';

  @override
  String get taskAddDependency => 'Бөгөттөөчү тапшырма кошуу';

  @override
  String get taskLinkedNotes => 'Байланышкан жазуулар';

  @override
  String get taskSetTime => 'Убакытты коюу';

  @override
  String get taskNoDate => 'Күнү жок';

  @override
  String get taskCompleted => 'Тапшырма аткарылды';

  @override
  String get taskNextOccurrence => 'Кийинки кайталоо түзүлдү';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days күн кечикти',
      one: '1 күн кечикти',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '«$title» аткарылды деп белгилөө';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '«$title» аткарылган жок деп белгилөө';
  }

  @override
  String get sortSmart => 'Акылдуу';

  @override
  String get sortDueDate => 'Мөөнөтү';

  @override
  String get sortPriority => 'Артыкчылык';

  @override
  String get sortCreated => 'Эң жаңылары';

  @override
  String get sortTitle => 'Аталышы';

  @override
  String get filterAllProjects => 'Бардык долбоорлор';

  @override
  String get filterAnyPriority => 'Каалаган артыкчылык';

  @override
  String get filterTitle => 'Чыпкалоо жана иреттөө';

  @override
  String get dateToday => 'Бүгүн';

  @override
  String get dateTomorrow => 'Эртең';

  @override
  String get dateYesterday => 'Кечээ';

  @override
  String get repeatNever => 'Кайталанбайт';

  @override
  String get repeatDaily => 'Күн сайын';

  @override
  String get repeatWeekdays => 'Ар бир жумуш күнү';

  @override
  String get repeatWeekly => 'Жума сайын';

  @override
  String get repeatMonthly => 'Ай сайын';

  @override
  String get repeatYearly => 'Жыл сайын';

  @override
  String get repeatCustom => 'Ыңгайлаштырылган';

  @override
  String get repeatEvery => 'Кайталоо мезгили';

  @override
  String get repeatOnDays => 'Күндөрү';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'күн', one: 'күн');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'жума', one: 'жума');
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
      other: '$count жолудан',
      one: '1 жолудан',
    );
    return '$_temp0 кийин аяктайт';
  }

  @override
  String get repeatEndsNever => 'Эч качан аяктабайт';

  @override
  String get reminderAtTime => 'Иш-чара убагында';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes мүнөт мурда',
      one: '1 мүнөт мурда',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours саат мурда',
      one: '1 саат мурда',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 күн мурда';

  @override
  String get projectsTitle => 'Долбоорлор';

  @override
  String get projectsEmptyTitle => 'Азырынча долбоор жок';

  @override
  String get projectsEmptyMessage =>
      'Байланышкан тапшырмаларды, жазууларды жана фокус убактысын топтоңуз.';

  @override
  String get projectNew => 'Жаңы долбоор';

  @override
  String get projectEdit => 'Долбоорду түзөтүү';

  @override
  String get projectName => 'Аталышы';

  @override
  String get projectDescription => 'Сүрөттөмө';

  @override
  String get projectGoal => 'Максат';

  @override
  String get projectDeadline => 'Акыркы мөөнөт';

  @override
  String get projectColor => 'Түсү';

  @override
  String get projectIcon => 'Сүрөтчө';

  @override
  String get projectProgress => 'Жылыш';

  @override
  String projectTasksDone(int done, int total) {
    return '$total тапшырманын $done аткарылды';
  }

  @override
  String get projectFocusTime => 'Фокус убактысы';

  @override
  String get projectArchived => 'Архивдеги долбоорлор';

  @override
  String get projectShowArchived => 'Архивдегилерди көрсөтүү';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days күн калды',
      one: '1 күн калды',
      zero: 'Мөөнөтү бүгүн',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Мөөнөтү өттү';

  @override
  String get calendarTitle => 'Жылнаама';

  @override
  String get calendarMonth => 'Ай';

  @override
  String get calendarWeek => 'Жума';

  @override
  String get calendarDay => 'Күн';

  @override
  String get calendarToday => 'Бүгүн';

  @override
  String get calendarPrevious => 'Мурунку';

  @override
  String get calendarNext => 'Кийинки';

  @override
  String get calendarNoEvents => 'Эч нерсе пландалган жок';

  @override
  String get calendarAllDay => 'Күн бою';

  @override
  String get eventNew => 'Жаңы иш-чара';

  @override
  String get eventEdit => 'Иш-чараны түзөтүү';

  @override
  String get eventTitleHint => 'Иш-чаранын аталышы';

  @override
  String get eventStarts => 'Башталат';

  @override
  String get eventEnds => 'Аяктайт';

  @override
  String get eventKind => 'Түрү';

  @override
  String get eventKindEvent => 'Иш-чара';

  @override
  String get eventKindTimeBlock => 'Убакыт блогу';

  @override
  String get eventKindFocus => 'Фокус сеансы';

  @override
  String get eventKindGoal => 'Жеке максат';

  @override
  String get eventDescription => 'Чоо-жайы';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count иш-чара менен дал келет',
      one: '1 иш-чара менен дал келет',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Бул күнү график карама-каршылыктары бар';

  @override
  String get calendarTaskDue => 'Тапшырманын мөөнөтү';

  @override
  String get calendarDragHint => 'Иш-чараны башка убакка жылдыруу үчүн басып туруп сүйрөңүз';

  @override
  String get calendarRescheduled => 'Иш-чара жылдырылды';

  @override
  String get calendarScheduleTask => 'Убакыт блогу катары пландоо';

  @override
  String get notesTitle => 'Жазуулар';

  @override
  String get notesViewAll => 'Баары';

  @override
  String get notesViewPinned => 'Кадалган';

  @override
  String get notesViewFavorites => 'Тандалмалар';

  @override
  String get notesViewArchived => 'Архивделген';

  @override
  String get notesTags => 'Тегдер';

  @override
  String get notesNewNotebook => 'Жаңы дептер';

  @override
  String get notesNoNotebook => 'Дептерсиз';

  @override
  String get notesEmptyTitle => 'Таза барак';

  @override
  String get notesEmptyMessage => 'Идеяларды, жолугушуу жазууларын жана билимди жазып алыңыз.';

  @override
  String get noteTitleHint => 'Аталышы';

  @override
  String get noteBodyHint => 'Жаза баштаңыз…';

  @override
  String get noteFavorite => 'Тандалма';

  @override
  String get noteUnfavorite => 'Тандалмалардан алып салуу';

  @override
  String get noteMoveTo => 'Дептерге жылдыруу';

  @override
  String get noteBacklinks => 'Шилтеме кылгандар';

  @override
  String get noteLinkedTasks => 'Байланышкан тапшырмалар';

  @override
  String get noteLinkTask => 'Тапшырманы байланыштыруу';

  @override
  String get noteLinkProject => 'Долбоор';

  @override
  String get noteFormatHeading => 'Баш сап';

  @override
  String get noteFormatBold => 'Калың';

  @override
  String get noteFormatItalic => 'Курсив';

  @override
  String get noteFormatList => 'Белгиленген тизме';

  @override
  String get noteFormatChecklist => 'Текшерүү тизмеси';

  @override
  String get noteFormatLink => 'Шилтеме';

  @override
  String noteEdited(String time) {
    return 'Түзөтүлдү: $time';
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
  String get flashEmptyTitle => 'Биринчи топтомуңузду түзүңүз';

  @override
  String get flashEmptyMessage =>
      'Аралыктуу кайталоо ар бир карточканы сиз аны унутаардын алдында гана көрсөтөт.';

  @override
  String get deckNew => 'Жаңы топтом';

  @override
  String get deckEdit => 'Топтомду түзөтүү';

  @override
  String get deckName => 'Топтомдун аталышы';

  @override
  String get deckDescription => 'Сүрөттөмө';

  @override
  String get deckDailyNew => 'Күнүнө жаңы карточкалар';

  @override
  String get deckDailyReview => 'Күндүк кайталоо белгиси';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточка',
      one: '1 карточка',
      zero: 'Карточка жок',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Кайталоо керек';

  @override
  String get deckNewCards => 'Жаңы';

  @override
  String get deckMature => 'Өздөштүрүлгөн';

  @override
  String get deckStudy => 'Окуу';

  @override
  String get deckNothingDue => 'Азыр кайталай турган эч нерсе жок. Кийинчерээк келиңиз.';

  @override
  String get deckEmptyCards => 'Окууну баштоо үчүн карточкаларды кошуңуз.';

  @override
  String get cardNew => 'Жаңы карточка';

  @override
  String get cardEdit => 'Карточканы түзөтүү';

  @override
  String get cardFront => 'Алдыңкы бети';

  @override
  String get cardBack => 'Арткы бети';

  @override
  String get cardFrontHint => 'Суроо же термин';

  @override
  String get cardBackHint => 'Жооп же аныктама';

  @override
  String get cardTags => 'Тегдер';

  @override
  String get cardAddAnother => 'Сактап, дагы кошуу';

  @override
  String get reviewShowAnswer => 'Жоопту көрсөтүү';

  @override
  String get reviewAgain => 'Кайра';

  @override
  String get reviewHard => 'Кыйын';

  @override
  String get reviewGood => 'Жакшы';

  @override
  String get reviewEasy => 'Оңой';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => 'Сеанс аяктады';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сиз $count карточканы кайталадыңыз.',
      one: 'Сиз 1 карточканы кайталадыңыз.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Жоопту көрүү үчүн таптаңыз';

  @override
  String get importCardsTitle => 'Карточкаларды импорттоо';

  @override
  String get importCardsHint =>
      'Ар бир сапка бир карточка коюңуз (алдыңкы жана арткы бети таб же чекиттүү үтүр менен бөлүнөт) же файл тандаңыз: Excel (.xlsx), CSV, Anki топтому (.apkg) же экспорттолгон топтом.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточка импорттолду',
      one: '1 карточка импорттолду',
      zero: 'Бир да карточка импорттолгон жок',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Бул мазмунду импорттоо мүмкүн болбоду.';

  @override
  String get exportCopied => 'Топтом экспорттолду';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count мүн',
      one: '1 мүн',
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
  String get goalsTitle => 'Максаттар';

  @override
  String get goalsEmptyTitle => 'Бир нерсеге умтулуңуз';

  @override
  String get goalsEmptyMessage =>
      'Күндүк, жумалык, айлык же узак мөөнөттүү максаттарды коюп, чыныгы жылышты көзөмөлдөңүз.';

  @override
  String get goalNew => 'Жаңы максат';

  @override
  String get goalEdit => 'Максатты түзөтүү';

  @override
  String get goalTitleHint => 'Эмнеге жетишкиңиз келет?';

  @override
  String get goalPeriod => 'Мезгил';

  @override
  String get goalPeriodDaily => 'Күндүк';

  @override
  String get goalPeriodWeekly => 'Жумалык';

  @override
  String get goalPeriodMonthly => 'Айлык';

  @override
  String get goalPeriodLongTerm => 'Узак мөөнөттүү';

  @override
  String get goalTarget => 'Белги';

  @override
  String get goalUnit => 'Өлчөм бирдиги';

  @override
  String get goalUnitHint => 'мис. барак, км, саат';

  @override
  String get goalStatusActive => 'Активдүү';

  @override
  String get goalStatusPaused => 'Тындырылган';

  @override
  String get goalStatusAchieved => 'Жетишилди';

  @override
  String get goalPause => 'Максатты тындыруу';

  @override
  String get goalResume => 'Максатты улантуу';

  @override
  String get goalMarkAchieved => 'Жетишилди деп белгилөө';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => 'Саны';

  @override
  String get goalLogNote => 'Жазуу (милдеттүү эмес)';

  @override
  String get goalHistory => 'Тарых';

  @override
  String get goalNoHistory => 'Жазылган жылыш бул жерде көрүнөт';

  @override
  String get goalLinkedTasks => 'Байланышкан тапшырмалар';

  @override
  String get goalLinkedTasksHint =>
      'Ар бир аткарылган байланышкан тапшырма бул максат үчүн 1 катары эсептелет.';

  @override
  String get goalThisPeriod => 'Ушул мезгил';

  @override
  String get habitsTitle => 'Адаттар';

  @override
  String get habitsEmptyTitle => 'Күн сайын кичинекей кадамдар';

  @override
  String get habitsEmptyMessage => 'Адат түзүп, аны аткарганда белгилеңиз.';

  @override
  String get habitNew => 'Жаңы адат';

  @override
  String get habitEdit => 'Адатты түзөтүү';

  @override
  String get habitNameHint => 'мис. 20 барак окуу';

  @override
  String get habitDays => 'График';

  @override
  String get habitEveryDay => 'Күн сайын';

  @override
  String get habitTargetPerDay => 'Күнүнө канча жолу';

  @override
  String get habitReminder => 'Күндүк эскерткич';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күндүк катар',
      one: '1 күндүк катар',
      zero: 'Катар жок',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Эң мыкты катар';

  @override
  String get habitCurrentStreak => 'Учурдагы катар';

  @override
  String get habitConsistency => 'Туруктуулук';

  @override
  String get habitLast90 => 'Акыркы 90 күн';

  @override
  String get habitPaused => 'Тындырылды';

  @override
  String get habitPause => 'Адатты тындыруу';

  @override
  String get habitResume => 'Адатты улантуу';

  @override
  String get habitDoneToday => 'Бүгүн аткарылды';

  @override
  String habitCountToday(int count, int target) {
    return 'Бүгүн $count / $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '«$name» белгилөө';
  }

  @override
  String get habitNotScheduledToday => 'Бүгүн пландалган эмес';

  @override
  String get analyticsTitle => 'Талдоо';

  @override
  String get rangeWeek => '7 күн';

  @override
  String get rangeMonth => '30 күн';

  @override
  String get rangeQuarter => '90 күн';

  @override
  String get statFocusTime => 'Фокус убактысы';

  @override
  String get statSessions => 'Сеанстар';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed аяктады · $interrupted эрте токтотулду';
  }

  @override
  String get statTasksDone => 'Аткарылган тапшырмалар';

  @override
  String get statCompletionRate => 'Өз убагында аткаруу';

  @override
  String get statHabitConsistency => 'Адаттардын туруктуулугу';

  @override
  String get statRetention => 'Карточкаларды эстеп калуу';

  @override
  String get statReviews => 'Кайталоолор';

  @override
  String get statActiveGoals => 'Активдүү максаттар';

  @override
  String get statEstimated => 'Болжолдуу аткарылган иш';

  @override
  String get statEstimatedNote => 'Өлчөнгөн убакыт эмес, сиздин болжолуңуз боюнча';

  @override
  String get statMeasuredNote => 'Фокус сеанстарынан өлчөнгөн';

  @override
  String get chartFocusByDay => 'Күнүнө фокус мүнөттөрү';

  @override
  String get chartTasksByDay => 'Күнүнө аткарылган тапшырмалар';

  @override
  String get chartTimeByProject => 'Долбоор боюнча убакыт';

  @override
  String get chartProjectProgress => 'Долбоорлордун жылышы';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: бардыгы $total, эң мыкты күн $best';
  }

  @override
  String get analyticsNoData => 'Азырынча маалымат жетишсиз';

  @override
  String get analyticsUnassigned => 'Дайындалган эмес';

  @override
  String get searchHint => 'Бардыгынан издөө…';

  @override
  String get searchRecent => 'Акыркы издөөлөр';

  @override
  String get searchClearRecent => 'Акыркы издөөлөрдү тазалоо';

  @override
  String searchNoResults(String query) {
    return '«$query» боюнча натыйжа жок';
  }

  @override
  String get searchStartTyping =>
      'Тапшырмалардан, жазуулардан, карточкалардан, максаттардан, иш-чаралардан жана башкалардан издеңиз. Издөө ушул түзмөктө калат.';

  @override
  String get searchCatTask => 'Тапшырмалар';

  @override
  String get searchCatProject => 'Долбоорлор';

  @override
  String get searchCatNote => 'Жазуулар';

  @override
  String get searchCatFlashcard => 'Карточкалар';

  @override
  String get searchCatDeck => 'Топтомдор';

  @override
  String get searchCatGoal => 'Максаттар';

  @override
  String get searchCatHabit => 'Адаттар';

  @override
  String get searchCatEvent => 'Иш-чаралар';

  @override
  String get searchCatSession => 'Сеанстар';

  @override
  String get searchAll => 'Баары';

  @override
  String get assistantTitle => 'Жардамчы';

  @override
  String get assistantIntro =>
      'Түзмөгүңүздө иштеген пландоо жардамы. Кааласаңыз, корутунду жана мазмун түзүү үчүн өзүңүз тандаган ЖИ провайдерин туташтырыңыз.';

  @override
  String get assistantOnDevice => 'Түзмөктө';

  @override
  String get assistantCloud => 'ЖИ провайдери';

  @override
  String get assistantPlanDay => 'Күнүмдү пландоо';

  @override
  String get assistantPlanDayDesc =>
      'Ачык тапшырмаларды шашылыштыгы, артыкчылыгы жана болжолу боюнча иреттеп, иш-чараларыңыздын арасына жайгаштырат.';

  @override
  String get assistantExtractTasks => 'Жазуудан тапшырмаларды бөлүп алуу';

  @override
  String get assistantExtractTasksDesc =>
      'Жазуудагы текшерүү тизмесинин пункттарын жана аракет саптарын таап, тапшырмаларга айлантат.';

  @override
  String get assistantMakeCards => 'Жазуудан карточкалар түзүү';

  @override
  String get assistantMakeCardsDesc =>
      '«термин: аныктама» жана суроо/жооп саптарын карточкаларга айлантат.';

  @override
  String get assistantSummarize => 'Жазууну кыскача баяндоо';

  @override
  String get assistantSummarizeDesc =>
      'ЖИ провайдери керек. Жазуу сиз ырастагандан кийин гана жөнөтүлөт.';

  @override
  String get assistantWorkload => 'Жүктөмгө сереп';

  @override
  String get assistantWorkloadDesc =>
      'Болжолдуу ишти ушул жумадагы бош убактыңыз менен салыштырат.';

  @override
  String get assistantPlanEmpty => 'Пландоочу ачык тапшырма жок. Бош убакыттан ырахат алыңыз.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Бүгүнкү бош фокус убактысы: $time';
  }

  @override
  String get assistantPlanOverflow => 'Булар бүгүн батпай калышы мүмкүн:';

  @override
  String get assistantChooseNote => 'Жазуу тандаңыз';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тапшырма табылды',
      one: '1 тапшырма табылды',
      zero: 'Бул жазуудан тапшырма табылган жок',
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
      zero: 'Бул жазуудан карточка табылган жок',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Топтом тандаңыз';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Болжолдуу иш: $estimated. Бош убакыт: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Колдо бар убакыттан көп пландадыңыз. Артыкчылыгы төмөн тапшырмаларды жылдырууну ойлонуп көрүңүз.';

  @override
  String get assistantWorkloadOk => 'Планыңыз бар убакытка батат.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ачык тапшырманын болжолу жок.',
      one: '1 ачык тапшырманын болжолу жок.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'ЖИ провайдери';

  @override
  String get assistantProviderOff =>
      'Провайдер туташтырылган эмес. Түзмөктөгү куралдар иштей берет.';

  @override
  String assistantProviderOn(String host) {
    return '$host менен туташкан';
  }

  @override
  String get assistantEndpoint => 'API акыркы чекити (HTTPS)';

  @override
  String get assistantModel => 'Модель';

  @override
  String get assistantApiKey => 'API ачкычы';

  @override
  String get assistantApiKeyStored => 'Ушул түзмөктө коопсуз сакталат';

  @override
  String get assistantHttpsOnly => 'HTTPS акыркы чекиттерине гана уруксат берилет';

  @override
  String get assistantConsentTitle => 'Бул мазмун ЖИ провайдериңизге жөнөтүлсүнбү?';

  @override
  String assistantConsentBody(String host) {
    return 'Тандалган жазуунун тексти ушул түзмөктөн чыгып, $host тарабынан иштетилет. Башка эч нерсе жөнөтүлбөйт.';
  }

  @override
  String get assistantConsentAlways => 'Бул провайдер үчүн кайра сурабоо';

  @override
  String get assistantSend => 'Жөнөтүү';

  @override
  String get assistantUnavailable =>
      'ЖИ провайдерине туташуу мүмкүн болбоду. Кийинчерээк кайра аракет кылыңыз.';

  @override
  String get assistantDisabledTitle => 'Жардамчы өчүк';

  @override
  String get assistantDisabledMessage =>
      'Пландоо куралдарын колдонуу үчүн аны күйгүзүңүз. Провайдер туташтырып, ар бир сурамды ырастамайынча эч кандай маалымат түзмөктөн чыкпайт.';

  @override
  String get assistantSummaryTitle => 'Кыскача баяндама';

  @override
  String get assistantRemoveProvider => 'Провайдерди алып салуу';

  @override
  String get settingsTitle => 'Жөндөөлөр';

  @override
  String get settingsGeneral => 'Жалпы';

  @override
  String get settingsLanguage => 'Тил';

  @override
  String get settingsLanguageSystem => 'Түзмөктүн тили';

  @override
  String get settingsAppearance => 'Көрүнүш';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeLight => 'Жарык';

  @override
  String get themeDark => 'Караңгы';

  @override
  String get themeSystem => 'Тутум';

  @override
  String get settingsReduceMotion => 'Кыймылды азайтуу';

  @override
  String get settingsReduceMotionDesc => 'Анимацияларды жана кыймылдуу фондорду азайтуу';

  @override
  String get settingsFocus => 'Фокус таймери';

  @override
  String get settingsWorkLength => 'Фокустун узактыгы';

  @override
  String get settingsShortBreak => 'Кыска тыныгуу';

  @override
  String get settingsLongBreak => 'Узун тыныгуу';

  @override
  String get settingsLongBreakEvery => 'Узун тыныгуу мынча сеанстан кийин';

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
  String get settingsAutoBreaks => 'Тыныгууларды автоматтык баштоо';

  @override
  String get settingsSound => 'Аяктоо үнү';

  @override
  String get settingsDailyFocusTarget => 'Күндүк фокус белгиси';

  @override
  String get settingsWeeklyFocusTarget => 'Жумалык фокус белгиси';

  @override
  String get settingsNotifications => 'Билдирмелер';

  @override
  String get settingsNotificationsEnable => 'Эскерткичтерге уруксат берүү';

  @override
  String get settingsQuietHours => 'Тынч сааттар';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Адат, максат жана кайталоо эскерткичтери $start–$end аралыгында үнсүз';
  }

  @override
  String get settingsReviewReminder => 'Карточка кайталоо эскерткичи';

  @override
  String get settingsPermissionDenied => 'Билдирмелер тутум жөндөөлөрүндө бөгөттөлгөн.';

  @override
  String get settingsPrivacy => 'Купуялык жана маалымат';

  @override
  String get settingsPrivacyStatement =>
      'Маалыматыңыз ушул түзмөктө гана сакталат жана шифрленген. Аккаунт, аналитика жана көз салуу жок.';

  @override
  String get settingsBackup => 'Шифрленген камдык көчүрмө түзүү';

  @override
  String get settingsBackupDesc => 'Өзүңүз тандаган сырсөз менен корголгон';

  @override
  String get settingsRestore => 'Камдык көчүрмөдөн калыбына келтирүү';

  @override
  String get settingsRestoreDesc => 'Ушул түзмөктөгү бардык маалыматты алмаштырат';

  @override
  String get settingsErase => 'Бардык маалыматты өчүрүү';

  @override
  String get settingsEraseDesc => 'Ушул түзмөктөгү бардыгын биротоло өчүрүү';

  @override
  String get settingsEraseConfirmTitle => 'Бардык маалымат өчүрүлсүнбү?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Бардык тапшырмалар, жазуулар, карточкалар, максаттар, адаттар, иш-чаралар жана сеанстар биротоло өчүрүлөт. Ырастоо үчүн $word деп жазыңыз.';
  }

  @override
  String get settingsEraseWord => 'ӨЧҮРҮҮ';

  @override
  String get settingsErased => 'Бардык маалымат өчүрүлдү';

  @override
  String get backupPassword => 'Камдык көчүрмөнүн сырсөзү';

  @override
  String get backupPasswordConfirm => 'Сырсөздү ырастаңыз';

  @override
  String backupPasswordHint(int count) {
    return 'Кеминде $count белги. Жоголсо, калыбына келтирүүгө болбойт.';
  }

  @override
  String get backupPasswordMismatch => 'Сырсөздөр дал келбейт';

  @override
  String get backupPasswordShort => 'Сырсөз өтө кыска';

  @override
  String get backupCreating => 'Камдык көчүрмө шифрленүүдө…';

  @override
  String get backupCreated => 'Камдык көчүрмө сактоого даяр';

  @override
  String get backupRestoring => 'Текшерилип, калыбына келтирилүүдө…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элемент калыбына келтирилди',
      one: '1 элемент калыбына келтирилди',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Сырсөз туура эмес же файл өзгөртүлгөн.';

  @override
  String get backupNotABackup => 'Бул файл Deep Focus камдык көчүрмөсү эмес.';

  @override
  String get backupCorrupted => 'Камдык көчүрмө файлы бузулган.';

  @override
  String get backupNewer =>
      'Бул камдык көчүрмө колдонмонун жаңыраак версиясында түзүлгөн. Адегенде жаңыртыңыз.';

  @override
  String get backupRestoreConfirmTitle => 'Бардык маалымат алмаштырылсынбы?';

  @override
  String get backupRestoreConfirmBody =>
      'Учурда ушул түзмөктө болгон бардык нерсе камдык көчүрмө менен алмаштырылат. Калыбына келтирүү ийгиликсиз болсо, эч нерсе өзгөрбөйт.';

  @override
  String get settingsAbout => 'Колдонмо жөнүндө';

  @override
  String settingsVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get settingsLicenses => 'Ачык булак лицензиялары';

  @override
  String get settingsAssistant => 'Жардамчы';

  @override
  String get settingsAssistantEnable => 'Жардамчыны иштетүү';

  @override
  String get settingsDashboard => 'Башкы беттин бөлүмдөрү';

  @override
  String get settingsTrash => 'Себет';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes мүн';
  }

  @override
  String get trashEmpty => 'Себет бош';

  @override
  String get trashHint => 'Өчүрүлгөн элементтер сиз аларды алып салганга чейин бул жерде калат.';

  @override
  String get trashTasks => 'Тапшырмалар';

  @override
  String get trashNotes => 'Жазуулар';

  @override
  String get onboardWelcomeTitle => 'Келечектин иш мейкиндигине кош келиңиз';

  @override
  String get onboardWelcomeBody =>
      'Тапшырмалар, фокус, жылнаама, жазуулар, карточкалар, максаттар жана адаттар — бирге, сонун жана жөнөкөй.';

  @override
  String get onboardPrivateTitle => 'Купуялуулук негизинде';

  @override
  String get onboardPrivateBody =>
      'Баары ушул түзмөктө, шифрленген түрдө калат. Аккаунт жок. Көз салуу жок. Башкаруу сиздин колуңузда.';

  @override
  String get onboardLanguageTitle => 'Тилди тандаңыз';

  @override
  String get onboardNotifTitle => 'Жумшак эскерткичтер';

  @override
  String get onboardNotifBody =>
      'Тапшырма эскерткичтери жана фокус кабарлары үчүн билдирмелерге уруксат бериңиз. Муну каалаган убакта өзгөртө аласыз.';

  @override
  String get onboardGetStarted => 'Баштоо';

  @override
  String onboardStep(int current, int total) {
    return '$total кадамдын $current-кадамы';
  }

  @override
  String get notifChannelReminders => 'Эскерткичтер';

  @override
  String get notifChannelRemindersDesc => 'Тапшырма, иш-чара, адат жана максат эскерткичтери';

  @override
  String get notifChannelFocus => 'Фокус таймери';

  @override
  String get notifChannelFocusDesc => 'Фокус сеансы же тыныгуу аяктаганда кабарлоо';

  @override
  String get notifTaskTitle => 'Тапшырма эскерткичи';

  @override
  String get notifEventTitle => 'Алдыдагы иш-чара';

  @override
  String notifEventBody(String title, String time) {
    return '$title, саат $time';
  }

  @override
  String get notifFocusDoneTitle => 'Фокус сеансы аяктады';

  @override
  String get notifFocusDoneBody => 'Сонун иш. Тыныгуу убактысы.';

  @override
  String get notifBreakDoneTitle => 'Тыныгуу бүттү';

  @override
  String get notifBreakDoneBody => 'Кийинки фокус сеансына даярсызбы?';

  @override
  String get notifHabitTitle => 'Адат эскерткичи';

  @override
  String get notifReviewTitle => 'Карточкалар даяр';

  @override
  String get notifReviewBody => 'Кыска кайталоо эс тутумуңузду бекемдейт.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours с $minutes мүн';
  }

  @override
  String durationHours(int hours) {
    return '$hours с';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes мүн';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'Дш,Шш,Шр,Бш,Жм,Иш,Жк';

  @override
  String a11yProgress(int value) {
    return 'Жылыш $value пайыз';
  }

  @override
  String a11yPriority(String level) {
    return 'Артыкчылык: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Түс $index';
  }

  @override
  String get analyticsRangeLabel => 'Убакыт аралыгы';

  @override
  String get analyticsRefresh => 'Жаңылоо';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Мөөнөтү бар $total тапшырманын $done өз убагында аткарылды';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total тапшырманын $done аткарылды';
  }

  @override
  String get analyticsNoProjects => 'Активдүү долбоор жок';

  @override
  String get analyticsNoFocus => 'Бул аралыкта фокус сеансы жок';

  @override
  String get analyticsHabitsNone => 'Активдүү адат жок';

  @override
  String get analyticsRetentionNote => 'Эсте калган бышып жетилген карточкалардын үлүшү';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Бош убакыт иш күндөрү ($days) $start–$end аралыгында, убактысы белгиленген иш-чаралар кемитилип эсептелет. Болжолдуу иш — алдыдагы 7 күндө мөөнөтү келген ачык тапшырмалардын болжолдорунун суммасы.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Дүйшөмбү–жума';

  @override
  String get assistantWorkdaysSunThu => 'Жекшемби–бейшемби';

  @override
  String get assistantWorkloadDayOff => 'Эс алуу күнү';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated пландалды · $free бош';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Азыртан $end чейин бүгүнкү иш-чаралардын айланасында пландалды. Адегенде мөөнөтү өткөн тапшырмалар, андан кийин артыкчылык, мөөнөт жана болжол.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Убакыт блоктору катары пландоо';

  @override
  String get assistantScheduleConfirmTitle => 'Жылнаамаңызга убакыт блоктору кошулсунбу?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Бүгүнкү жылнаамага $count убакыт блогу кошулат.',
      one: 'Бүгүнкү жылнаамага 1 убакыт блогу кошулат.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count убакыт блогу кошулду',
      one: '1 убакыт блогу кошулду',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Жылнаамаңызда бар';

  @override
  String get assistantPlanTimeline => 'Бүгүнгө батат';

  @override
  String get assistantNoEstimate => 'Пландоо үчүн болжол кошуңуз';

  @override
  String get assistantNoNotes => 'Азырынча жазуу жок. Адегенде жазуу жазыңыз.';

  @override
  String get assistantNoteEmpty => 'Бул жазуу бош.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тапшырма түзүлдү',
      one: '1 тапшырма түзүлдү',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточка түзүлдү',
      one: '1 карточка түзүлдү',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count түзүү',
      one: '1 түзүү',
      zero: 'Эч нерсе тандалган жок',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Таанылат: белгиленбеген «- [ ]» кутучалары жана TODO: же To do: менен башталган саптар';

  @override
  String get assistantCardsHint =>
      'Таанылат: «термин: аныктама», «термин — аныктама» жана Q:/A: сап жуптары';

  @override
  String get assistantProviderHint =>
      'OpenAI менен шайкеш каалаган кызматты колдонуңуз. Ачкыч ушул түзмөктүн коопсуз сактагычында калат жана камдык көчүрмөлөргө эч качан кошулбайт.';

  @override
  String get assistantEndpointHelp => 'Мисалы, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Сакталган ачкычты калтыруу үчүн бош калтырыңыз';

  @override
  String get assistantApiKeyRequired => 'API ачкычын киргизиңиз';

  @override
  String get assistantProviderSaved => 'Провайдер сакталды';

  @override
  String get assistantProviderRemoved => 'Провайдер алынып, ачкыч өчүрүлдү';

  @override
  String get assistantRemoveProviderConfirm =>
      'Провайдерди алып салып, сакталган API ачкычын ушул түзмөктөн өчүрөсүзбү?';

  @override
  String get assistantAskEveryTime => 'Ар бир сурамдын алдында суроо';

  @override
  String get assistantSummarizing => 'Кыскача баяндалууда…';

  @override
  String assistantSummaryNote(String host) {
    return '$host түздү. Ишенүүдөн мурун текшериңиз.';
  }

  @override
  String get assistantCopy => 'Көчүрүү';

  @override
  String get assistantCopied => 'Көчүрүлдү';

  @override
  String get assistantConfigure => 'Провайдерди жөндөө';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Бул сериядагы бардык иш-чаралар жылдырылды';

  @override
  String get calendarEventReminder => 'Эскерткич';

  @override
  String get calendarEventRepeat => 'Кайталоо';

  @override
  String get calendarEventColor => 'Түс';

  @override
  String get calendarDefaultColor => 'Түрдүн түсүн колдонуу';

  @override
  String get calendarEventLinkedTask => 'Байланышкан тапшырма';

  @override
  String get calendarEventNoTask => 'Байланышкан тапшырма жок';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count иш-чара',
      one: '1 иш-чара',
      zero: 'Иш-чара жок',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'мөөнөтү келген $count тапшырма',
      one: 'мөөнөтү келген 1 тапшырма',
      zero: 'мөөнөтү келген тапшырма жок',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Бул күндү пландоо үчүн иш-чара же убакыт блогун кошуңуз.';

  @override
  String get calendarNow => 'Учурдагы убакыт';

  @override
  String get calendarRecurring => 'Кайталанат';

  @override
  String get calendarEventNotFound => 'Бул иш-чара мындан ары жок';

  @override
  String get calendarEventLocalTime => 'Убакыт түзмөгүңүздүн убакыт алкагында көрсөтүлөт';

  @override
  String get calendarEventDeleted => 'Иш-чара себетке жылдырылды';

  @override
  String get calendarConflictMarker => 'Башка иш-чара менен кабатташат';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Өзгөртүүлөр бул сериядагы ар бир иш-чарага колдонулат';

  @override
  String get calendarDragHintSeries => 'Кайталануучу иш-чараны сүйрөсөңүз, бүт серия жылат';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, тапшырманын мөөнөтү';
  }

  @override
  String get startupErrorTitle => 'Маалыматыңызды ачуу мүмкүн болбоду';

  @override
  String get startupErrorLocked =>
      'Бул түзмөктүн маалыматынын шифрлөө ачкычы жеткиликсиз. Эч нерсе өчүрүлгөн жок. Түзмөктү өчүрүп-күйгүзүү көп учурда жардам берет. Түзмөктү жакында калыбына келтирген болсоңуз, маалыматыңызды шифрленген камдык көчүрмөдөн калыбына келтириңиз.';

  @override
  String get startupErrorCipher =>
      'Бул түзмөк колдонмо талап кылган шифрленген сактагычты колдобойт. Эч нерсе шифрленбеген түрдө сакталган жок.';

  @override
  String get startupErrorRetry => 'Кайра аракет кылуу';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточканы кайталоо убагы келди',
      one: '1 карточканы кайталоо убагы келди',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count кезекте';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count жаңы';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Бышып жетилген карточкалар: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 же андан көп киргизиңиз';

  @override
  String get flashcardsSearchCards => 'Карточкаларды издөө';

  @override
  String get flashcardsSearchEmpty => 'Издөөгө дал келген карточка жок';

  @override
  String get flashcardsCardAdded => 'Карточка кошулду';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Мөөнөтү $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Алмашуу буферине көчүрүү';

  @override
  String get flashcardsExportTitle => 'Топтомду экспорттоо';

  @override
  String get flashcardsDeleteDeck => 'Топтомду өчүрүү';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, кийинки кайталоо $interval кийин';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Суроо: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Жооп: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Суроону көрсөтүү';

  @override
  String get flashcardsImportField => 'Импорттолуучу карточкалар';

  @override
  String get flashcardsNothingToStudy => 'Окуй турган эч нерсе жок';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Окууга $count карточка даяр',
      one: 'Окууга 1 карточка даяр',
      zero: 'Даяр карточка жок',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Баа боюнча';

  @override
  String get flashcardsDeckNotFound => 'Бул топтом мындан ары жеткиликсиз.';

  @override
  String get focusSessionDeleted => 'Сеанс өчүрүлдү';

  @override
  String get focusDeleteConfirm =>
      'Бул сеансты тарыхыңыздан өчүрөсүзбү? Анын убактысы мындан ары белгилериңизге эсептелбейт.';

  @override
  String get focusUnlinkTask => 'Байланышкан тапшырманы алып салуу';

  @override
  String get focusNoteHint => 'Эмне менен алектендиңиз?';

  @override
  String get focusModeLabel => 'Таймер режими';

  @override
  String focusUpNext(String phase) {
    return 'Кийинки: $phase';
  }

  @override
  String get focusStopwatchHint => 'Токтотконго чейин өйдө карай эсептейт.';

  @override
  String get focusOpenHint => 'Убакыт чеги жок. Бүткөндө токтотуңуз.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Эскерткичтер жөндөөлөрдө өчүрүлгөн. Сеанс аяктаганда кабарланбайсыз.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Баары';

  @override
  String get goalsFilterPeriod => 'Мезгил чыпкасы';

  @override
  String get goalsFilterStatus => 'Абал чыпкасы';

  @override
  String get goalsEmptyFiltered => 'Бул чыпкага дал келген максат жок';

  @override
  String goalsDueOn(String date) {
    return 'Мөөнөтү $date';
  }

  @override
  String get goalsDeadline => 'Мөөнөт (милдеттүү эмес)';

  @override
  String get goalsNoDeadline => 'Мөөнөт жок';

  @override
  String get goalsSetDeadline => 'Мөөнөт коюу';

  @override
  String get goalsRemoveDeadline => 'Мөөнөттү алып салуу';

  @override
  String get goalsDescription => 'Сүрөттөмө (милдеттүү эмес)';

  @override
  String get goalsTitleLabel => 'Аталышы';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Белгиге жетти';

  @override
  String get goalsLogged => 'Жылыш жазылды';

  @override
  String get goalsEntryDeleted => 'Жазуу алынды';

  @override
  String get goalsDeleteEntry => 'Жазууну алып салуу';

  @override
  String get goalsDeleted => 'Максат өчүрүлдү';

  @override
  String get goalsMarkActive => 'Активдүү деп белгилөө';

  @override
  String get goalsNotFound => 'Бул максат мындан ары жеткиликсиз';

  @override
  String get goalsLinkTask => 'Тапшырманы байланыштыруу';

  @override
  String get goalsNoLinkedTasks => 'Азырынча байланышкан тапшырма жок';

  @override
  String get goalsUnlinkTask => 'Тапшырманы ажыратуу';

  @override
  String get goalsTaskOpen => 'Азырынча аткарыла элек';

  @override
  String get goalsTaskLinked => 'Тапшырма байланыштырылды';

  @override
  String get goalsTaskUnlinked => 'Тапшырма ажыратылды';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аткарылган байланышкан тапшырма',
      one: '1 аткарылган байланышкан тапшырма',
    );
    return 'Ушул мезгилде $_temp0 камтылган';
  }

  @override
  String get goalsHistoryAllTime =>
      'Мурунку мезгилдердин жазуулары бул жерде сакталат, бирок өз мезгилине гана эсептелет.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Бүгүн $total ичинен $done аткарылды';
  }

  @override
  String get habitsNothingToday => 'Бүгүнгө пландалган адат жок';

  @override
  String get habitsDecrease => 'Бир белгини алып салуу';

  @override
  String get habitsResetToday => 'Бүгүнкүнү тазалоо';

  @override
  String get habitsCheckInHint => 'Жөндөө үчүн басып туруңуз';

  @override
  String get habitsName => 'Аталышы';

  @override
  String get habitsColor => 'Түс';

  @override
  String get habitsValidationDays => 'Жок дегенде бир күндү тандаңыз';

  @override
  String habitsReminderAt(String time) {
    return 'Күн сайын саат $time';
  }

  @override
  String get habitsSetReminder => 'Эскертүү убактысын коюу';

  @override
  String get habitsRemoveReminder => 'Эскерткичти алып салуу';

  @override
  String get habitsReminderNote =>
      'Билдирмелерге уруксат берилсе, эскерткичтер пландалган күндөрү чыгат.';

  @override
  String get habitsArchived => 'Адат архивделди';

  @override
  String get habitsNotFound => 'Бул адат мындан ары жеткиликсиз';

  @override
  String get habitsLast30 => 'Акыркы 30 күн';

  @override
  String get habitsConsistencyNone => 'Азырынча маалымат жетишсиз';

  @override
  String get habitsCalendar => 'Белгилердин тарыхы';

  @override
  String get habitsCalendarHint => 'Оңдоо үчүн күндү таптаңыз.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $target ичинен $count';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Акыркы 90 күндөгү белгилер. Туруктуулук $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Акыркы 90 күндөгү белгилер. Азырынча маалымат жетишсиз.';

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
  String get habitsPausedNote => 'Тындырылган күндөр катарыңызга таасир этпейт.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Адатты архивдөө';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Күнүнө $count жолу',
      one: 'Күнүнө бир жолу',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Башка жазуулар';

  @override
  String get notesAllNotebooks => 'Бардык дептерлер';

  @override
  String get notesNotebookName => 'Дептердин аталышы';

  @override
  String get notesNotebookColor => 'Түс';

  @override
  String get notesDeleteNotebook => 'Дептерди өчүрүү';

  @override
  String get notesDeleteNotebookMessage =>
      'Дептер алынып салынат. Анын жазуулары сакталып, «Бардык дептерлер» бөлүмүндө көрүнөт.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Маанилүү жазууларды жогоруда кармоо үчүн кадаңыз.';

  @override
  String get notesEmptyFavorites => 'Тандалма деп белгилеген жазууларыңыз бул жерде көрүнөт.';

  @override
  String get notesEmptyArchived => 'Архивделген жазуулар бул жерде көрүнөт.';

  @override
  String get notesEmptyFiltered => 'Бул чыпкаларга дал келген жазуу жок.';

  @override
  String get notesArchivedSnack => 'Жазуу архивделди';

  @override
  String get notesUnarchivedSnack => 'Жазуу жазууларыңызга кайтарылды';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total ичинен $done аткарылды';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Форматтоо';

  @override
  String get notesWrite => 'Жазуу';

  @override
  String get notesPreviewEmpty => 'Азырынча алдын ала көрө турган эч нерсе жок.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Азырынча башка жазуулар бул жерге шилтеме бербейт. Бул жазууга [[$title]] аркылуу шилтеме бериңиз.';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Башка жазуулар шилтеме бере алышы үчүн бул жазууга аталыш бериңиз.';

  @override
  String get notesLinkedTasksEmpty => 'Бул жазууга байланышкан тапшырма жок.';

  @override
  String notesLinkMissing(String title) {
    return '«$title» деген жазуу азырынча жок.';
  }

  @override
  String get notesNotFound => 'Бул жазуу мындан ары жок.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Текшерүү тизмесинин пункту: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return '$title жазуусун ачуу';
  }

  @override
  String get notesTaskDone => 'Аткарылды';

  @override
  String get notifTimerDoneBody => 'Сиз койгон убакыт өтүп кетти.';

  @override
  String get onboardingPrivatePointDevice => 'Ушул түзмөктө гана, шифрленген түрдө сакталат';

  @override
  String get onboardingPrivatePointAccount => 'Аккаунт керек эмес';

  @override
  String get onboardingPrivatePointTracking => 'Аналитика жок, көз салуу жок';

  @override
  String get onboardingLanguageBody => 'Муну каалаган убакта Жөндөөлөрдөн өзгөртө аласыз.';

  @override
  String get onboardingNext => 'Кийинки';

  @override
  String get projectsActive => 'Активдүү';

  @override
  String get projectNameHint => 'мис. Продукцияны ишке киргизүү';

  @override
  String get projectGoalHint => 'Бүткөн натыйжа кандай болот?';

  @override
  String get projectNoDeadline => 'Мөөнөт жок';

  @override
  String get projectTasksOpen => 'Ачык тапшырмалар';

  @override
  String get projectTasksCompleted => 'Аткарылган тапшырмалар';

  @override
  String get projectAddTask => 'Долбоорго тапшырма кошуу';

  @override
  String get projectAddNote => 'Жаңы долбоор жазуусу';

  @override
  String get projectLinkedNotes => 'Жазуулар';

  @override
  String get projectNoTasks => 'Бул долбоордо азырынча тапшырма жок';

  @override
  String get projectArchivedBadge => 'Архивделген';

  @override
  String get projectDeleted => 'Долбоор себетке жылдырылды';

  @override
  String get projectDeleteMessage => 'Тапшырмалар тизмеңизде долбоорсуз калат.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent пайыз аткарылды';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count натыйжа',
      one: '1 натыйжа',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Түрү боюнча чыпкалоо';

  @override
  String searchRecentTap(String query) {
    return '$query боюнча кайра издөө';
  }

  @override
  String get settingsLanguageHint =>
      'Бүт колдонмонун тилин тандаңыз. Аталыштар өз тилинде көрсөтүлөт.';

  @override
  String get settingsThemeHint => 'Жарык, караңгы же тутумга ылайык';

  @override
  String settingsDecrease(String setting) {
    return '$setting азайтуу';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting көбөйтүү';
  }

  @override
  String get settingsQuietStart => 'Башталышы';

  @override
  String get settingsQuietEnd => 'Аякташы';

  @override
  String get settingsNotificationsHint =>
      'Бул тандооңузду колдонмодо сактайт. Тутум да уруксат сурашы мүмкүн.';

  @override
  String get settingsDashboardHint =>
      'Иретин өзгөртүү үчүн сүйрөңүз. Керексиз бөлүмдөрдү өчүрүңүз.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section иретин өзгөртүү';
  }

  @override
  String get settingsDashboardReset => 'Демейки иретти калыбына келтирүү';

  @override
  String get settingsAssistantDesc =>
      'Кошумча пландоо жардамы. Провайдер туташтырбасаңыз, эч нерсе түзмөктөн чыкпайт.';

  @override
  String get settingsAssistantSetup => 'Жардамчыны жана провайдерди жөндөө';

  @override
  String get settingsTrashDesc => 'Өчүрүлгөн элементтерди калыбына келтирүү же биротоло өчүрүү';

  @override
  String get settingsEraseFirstBody =>
      'Муну артка кайтаруу мүмкүн эмес. Адегенде шифрленген камдык көчүрмө түзүүнү ойлонуп көрүңүз.';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word деп жазыңыз';
  }

  @override
  String get settingsEraseFailed => 'Маалыматты өчүрүү мүмкүн болбоду. Эч нерсе өзгөргөн жок.';

  @override
  String get settingsAboutTagline => 'Жеке, жергиликтүү негиздеги өндүрүмдүүлүк иш мейкиндиги.';

  @override
  String get backupShowPassword => 'Сырсөздү көрсөтүү';

  @override
  String get backupHidePassword => 'Сырсөздү жашыруу';

  @override
  String get backupSaved => 'Камдык көчүрмө сакталды';

  @override
  String get backupFailed => 'Камдык көчүрмө түзүлгөн жок. Маалыматыңыз өзгөргөн жок.';

  @override
  String get backupReadFailed => 'Тандалган файлды окуу мүмкүн болбоду.';

  @override
  String get backupRestoreFailed => 'Калыбына келтирүү ийгиликсиз болду. Эч нерсе өзгөргөн жок.';

  @override
  String get backupShareSubject => 'Deep Focus шифрленген камдык көчүрмөсү';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ар $count күн сайын',
      one: 'Күн сайын',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ар $count жума сайын',
      one: 'Жума сайын',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ар $count ай сайын',
      one: 'Ай сайын',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ар $count жыл сайын',
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
    return 'күндөрү: $days';
  }

  @override
  String get repeatEndsLabel => 'Аякташы';

  @override
  String get repeatEndsAfter => 'Белгилүү бир жолудан кийин';

  @override
  String get repeatCountLabel => 'Кайталануулар саны';

  @override
  String get reminderNone => 'Эскерткич жок';

  @override
  String get reminderCustomTime => 'Белгилүү убакта';

  @override
  String get a11yDecrease => 'Азайтуу';

  @override
  String get a11yIncrease => 'Көбөйтүү';

  @override
  String get pickTaskTitle => 'Тапшырма тандаңыз';

  @override
  String get pickTaskEmpty => 'Ачык тапшырма жок';

  @override
  String get tasksSearchTooltip => 'Тапшырмаларды издөө';

  @override
  String get tasksSectionOverdue => 'Мөөнөтү өткөн';

  @override
  String get tasksSectionToday => 'Бүгүн';

  @override
  String get tasksRecurringSemantics => 'Кайталанат';

  @override
  String get tasksFilterPriorityAtLeast => 'Эң төмөнкү артыкчылык';

  @override
  String get tasksFilterCategory => 'Категория';

  @override
  String get tasksFilterAnyCategory => 'Каалаган категория';

  @override
  String get tasksFilterLabel => 'Энбелги';

  @override
  String get tasksFilterAnyLabel => 'Каалаган энбелги';

  @override
  String get tasksFilterReset => 'Чыпкаларды баштапкы абалга келтирүү';

  @override
  String get tasksViewByProject => 'Долбоор боюнча';

  @override
  String get tasksViewByPriority => 'Артыкчылык боюнча';

  @override
  String get tasksViewByCategory => 'Категория боюнча';

  @override
  String get tasksGroupNoCategory => 'Категориясыз';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тапшырма',
      one: '1 тапшырма',
    );
    return '$_temp0 бөгөттөп турат';
  }

  @override
  String get taskBlockedWarning =>
      'Бул тапшырманы аяктай элек тапшырмалар бөгөттөп турат. Баары бир аткарылды деп белгилейсизби?';

  @override
  String get taskStartFocus => 'Ушул тапшырмага көңүл буруу';

  @override
  String get taskRemoveDate => 'Күндү алып салуу';

  @override
  String get taskAllDay => 'Так убакыт жок';

  @override
  String get taskSaved => 'Тапшырма сакталды';

  @override
  String get taskCreated => 'Тапшырма түзүлдү';

  @override
  String get taskReminderNeedsDue => 'Салыштырмалуу эскерткичтерди колдонуу үчүн мөөнөт коюңуз';

  @override
  String get taskLabelName => 'Энбелгинин аталышы';

  @override
  String get taskPlanning => 'Пландоо';

  @override
  String get taskOrganize => 'Уюштуруу';

  @override
  String get taskBreakdown => 'Бөлүштүрүү';

  @override
  String get trashDeleteTaskTitle => 'Бул тапшырманы биротоло өчүрөсүзбү?';

  @override
  String get trashDeleteNoteTitle => 'Бул жазууну биротоло өчүрөсүзбү?';

  @override
  String get trashDeleteBody => 'Муну артка кайтаруу мүмкүн эмес.';

  @override
  String get trashEmptyTitle => 'Себетти тазалайсызбы?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элемент биротоло өчүрүлөт.',
      one: '1 элемент биротоло өчүрүлөт.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Калыбына келтирилди';

  @override
  String get trashPurged => 'Биротоло өчүрүлдү';

  @override
  String trashDeletedOn(String date) {
    return '$date өчүрүлгөн';
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
  String get flashcardsReadAloud => 'Үн чыгарып окуу';

  @override
  String get flashcardsTtsUnavailable => 'Бул түзмөктө текстти үнгө айландыруу жеткиликсиз.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Бул тил үчүн үн орнотулган эмес. Аны Android тутумундагы текстти үнгө айландыруу жөндөөлөрүнөн кошуңуз.';

  @override
  String get calendarAgenda => 'Күн тартиби';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Учкун',
      'rocket': 'Ракета',
      'book': 'Китеп',
      'work': 'Иш',
      'home': 'Үй',
      'heart': 'Жүрөк',
      'code': 'Код',
      'palette': 'Палитра',
      'fitness': 'Фитнес',
      'school': 'Мектеп',
      'travel': 'Саякат',
      'money': 'Топтолгон каражат',
      'other': 'Сүрөтчө',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Кошумча талаалар';

  @override
  String get cardFieldExample => 'Мисал';

  @override
  String get cardFieldExplanation => 'Түшүндүрмө';

  @override
  String get cardFieldPronunciation => 'Айтылышы';

  @override
  String get cardFieldNotes => 'Кошумча жазуулар';

  @override
  String get projectMilestones => 'Баскычтар';

  @override
  String get milestoneAdd => 'Баскыч кошуу';

  @override
  String get milestoneEdit => 'Баскычты түзөтүү';

  @override
  String get milestoneTitleLabel => 'Баскыч';

  @override
  String get milestoneNoDate => 'Күнү жок';

  @override
  String get milestonesEmpty =>
      'Азырынча баскыч жок. Долбоорду жылнаамада көзөмөлдөө үчүн күнү бар текшерүү чекиттерин кошуңуз.';

  @override
  String get milestoneDeleted => 'Баскыч өчүрүлдү';

  @override
  String milestoneDoneA11y(String title) {
    return '«$title» баскычын аткарылды деп белгилөө';
  }

  @override
  String calendarMilestone(String project) {
    return 'Баскыч · $project';
  }

  @override
  String get tasksViewInbox => 'Кирүүчү';

  @override
  String get tasksViewArchived => 'Архивделген';

  @override
  String get tasksEmptyInbox =>
      'Долбоорсуз же күнсүз тапшырмалар бул жерге түшөт. Бош убактыңызда иреттеңиз.';

  @override
  String get tasksEmptyArchived =>
      'Архивделген тапшырмалар тизмелерден жана эскерткичтерден тышкары, бул жерде сакталат.';

  @override
  String get taskArchivedBadge => 'Архивделген';

  @override
  String get taskStatusInProgress => 'Аткарылууда';

  @override
  String get taskArchived => 'Тапшырма архивделди';

  @override
  String get taskUnarchived => 'Тапшырма архивден калыбына келтирилди';

  @override
  String get focusPlanTitle => 'Сеанс планы';

  @override
  String focusPlanTotal(String duration) {
    return 'Бардыгы $duration';
  }

  @override
  String get focusPlanRounds => 'Фокус сеанстары';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Узун тыныгуу мындан кийин';

  @override
  String get focusPlanSkipLastBreak => 'Акыркы тыныгууну өткөрүп жиберүү';

  @override
  String get focusPlanAutoBreaks => 'Тыныгууларды автоматтык баштоо';

  @override
  String get focusPlanAutoFocus => 'Тыныгуудан кийин фокусту автоматтык баштоо';

  @override
  String get focusPlanSave => 'Планды сактоо';

  @override
  String get focusPlanNameHint => 'мис. Сынакка даярдануу';

  @override
  String get focusPlanSaved => 'План сакталды';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work мүн фокус, $rest мүн тыныгуу';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label азайтуу';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label көбөйтүү';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '$total сеанстын $current-сеансы';
  }

  @override
  String get focusSeriesComplete => 'Серия аяктады. Азаматсыз!';

  @override
  String get filterAll => 'Баары';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added импорттолду · $duplicates кайталанма өткөрүлдү · $invalid толук эмес сап';
  }

  @override
  String get flashcardsSuspend => 'Карточканы тындыруу';

  @override
  String get flashcardsResume => 'Карточканы улантуу';

  @override
  String get flashcardsSuspended => 'Карточка тындырылды: ал пландалбайт';

  @override
  String get flashcardsResumed => 'Карточка улантылды';

  @override
  String get flashcardsSuspendedFilter => 'Тындырылган';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$total карточканын $shown';
  }

  @override
  String get flashcardsImportFile => 'Файлдан';

  @override
  String get speechTitle => 'Сүйлөө';

  @override
  String get speechAppLanguage => 'Колдонмонун тили';

  @override
  String get speechFrontLanguage => 'Алдыңкы беттин тили';

  @override
  String get speechBackLanguage => 'Арткы беттин тили';

  @override
  String get speechRepeat => 'Ар бир окууну кайталоо';

  @override
  String get speechRate => 'Ылдамдык';

  @override
  String get speechAutoRead => 'Суроону автоматтык түрдө окуу';

  @override
  String get speechHint =>
      'Ушул түзмөктө орнотулган үндөрдү офлайн колдонот. Эгер тилдин үнү жок болсо, сизге айтылат жана анын ордуна башка эч нерсе колдонулбайт.';

  @override
  String get studyHowTitle => 'Кантип окугуңуз келет?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточканы кайталоо',
      one: '1 карточканы кайталоо',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Бардык карточкаларды машыгуу (график өзгөрбөйт)';

  @override
  String get studyPracticeMistakes => 'Акыркы каталарды машыгуу';

  @override
  String get studyPracticeHint =>
      'Машыгуу айлампалары карточкалардын мөөнөтүн эч качан өзгөртпөйт. Кайталоо графикти жаңылайт.';

  @override
  String get studyModeClassic => 'Классикалык';

  @override
  String get studyModeReverse => 'Тескери';

  @override
  String get studyModeMixed => 'Эки тараптуу';

  @override
  String get studyModeTyped => 'Жоопту терүү';

  @override
  String get studyModeChoice => 'Көп тандоолуу';

  @override
  String get studyModeListening => 'Угуу';

  @override
  String get studyPractice => 'машыгуу';

  @override
  String get studyNoMistakes => 'Бул топтомдо акыркы каталар жок. Сонун!';

  @override
  String get studyTypeAnswer => 'Жообуңузду териңиз';

  @override
  String get studyCheck => 'Текшерүү';

  @override
  String get studyKnewIt => 'Билчүмүн';

  @override
  String get studyDidntKnow => 'Билген жокмун';

  @override
  String studyMistakes(int count) {
    return 'Ката ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Ката карточкаларды кайталоо';

  @override
  String get studyCorrect => 'Туура';

  @override
  String get studyAlmost => 'Дээрлик — жазылышын текшериңиз';

  @override
  String get studyWrong => 'Так эмес';

  @override
  String get studyShowText => 'Текстти көрсөтүү';

  @override
  String get flashcardsImportFileFailed =>
      'Файлды ачуу мүмкүн болбоду. Анын ордуна мазмунун чаптасаңыз болот.';

  @override
  String get studyNoMatchingCards => 'Бул тандоого дал келген карточка азырынча жок.';

  @override
  String get studyPracticeNew => 'Жаңылары гана';

  @override
  String get studyPracticeHard => 'Кыйын карточкалар';

  @override
  String get studyPracticeFavorites => 'Тандалмалар';

  @override
  String get studySessionSize => 'Бир сеанстагы карточкалар';

  @override
  String get studySessionAll => 'Баары';

  @override
  String get studyOrder => 'Ирети';

  @override
  String get studyOrderDue => 'Адегенде эң көп кечиккендер';

  @override
  String get studyOrderRandom => 'Кокус';

  @override
  String get studyOrderHardest => 'Адегенде эң кыйындары';

  @override
  String get flashcardsHard => 'Кыйын';

  @override
  String get flashcardsFavorites => 'Тандалмалар';

  @override
  String get flashcardsFavorite => 'Тандалмаларга кошуу';

  @override
  String get flashcardsUnfavorite => 'Тандалмалардан алып салуу';

  @override
  String get flashcardsDuplicate => 'Көчүрмөсүн жасоо';

  @override
  String get flashcardsMoveTo => 'Топтомго жылдыруу';

  @override
  String get flashcardsNoOtherDeck => 'Адегенде башка топтом түзүңүз.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточка жылдырылды',
      one: 'Карточка жылдырылды',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Тег кошуу';

  @override
  String get flashcardsTagHint => 'мис. этиштер';

  @override
  String flashcardsSelected(int count) {
    return '$count тандалды';
  }

  @override
  String get flashcardsSelectAll => 'Көрсөтүлгөндөрдүн баарын тандоо';

  @override
  String flashcardsSelectCard(String front) {
    return '$front тандоо';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Эстеп калуу $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Кайталанышы мүмкүн';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Бул топтомдо «$front» → «$back» бар. Баары бир сактайсызбы?';
  }

  @override
  String get flashcardsSaveAnyway => 'Баары бир сактоо';

  @override
  String get flashcardsStats => 'Статистика';

  @override
  String get flashcardsStatTotal => 'Карточкалар';

  @override
  String get flashcardsStatLearning => 'Үйрөнүлүүдө';

  @override
  String get flashcardsStatMatureCaption => '21+ күн эсте калган';

  @override
  String get flashcardsStatReviewsToday => 'Бүгүнкү кайталоолор';

  @override
  String get flashcardsStatCorrect => 'Туура жооптор';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Акыркы $days күн';
  }

  @override
  String get flashcardsStatForget => 'Унутуу деңгээли';

  @override
  String get flashcardsStatForgetCaption => 'Үйрөнүлгөн карточкалардагы «Кайра»';

  @override
  String get flashcardsStatRecall => 'Азыркы эстеп калуу';

  @override
  String get flashcardsStatRecallCaption => 'FSRS баалоосу, кайталанган карточкалар';

  @override
  String flashcardsStatActivity(int count) {
    return 'Күнүнө кайталоолор · бардыгы $count';
  }

  @override
  String get flashcardsStatHistory => 'Акыркы жооптор';

  @override
  String get flashcardsStatNoHistory =>
      'Азырынча кайталоо жок. Жылышыңызды бул жерден көрүү үчүн топтомду окуңуз.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field үн чыгарып окуу';
  }

  @override
  String get speechVoice => 'Үн';

  @override
  String get speechVoiceDefault => 'Автоматтык';

  @override
  String get speechVoiceOnline => 'интернет керек';

  @override
  String get speechTest => 'Үндү сынап көрүү';

  @override
  String get importNext => 'Алдын ала көрүү';

  @override
  String get importPreviewTitle => 'Мамычаларды талааларга дал келтирүү';

  @override
  String get importIgnoreColumn => 'Көңүл бурбоо';

  @override
  String importColumn(int n) {
    return '$n-мамыча';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready карточка даяр · $invalid толук эмес сап өткөрүлөт';
  }

  @override
  String get importNeedFrontBack => 'Кайсы мамычалар алдыңкы жана арткы бет экенин тандаңыз.';

  @override
  String get actionMoveUp => 'Өйдө жылдыруу';

  @override
  String get actionMoveDown => 'Ылдый жылдыруу';

  @override
  String get flashcardsLayoutTitle => 'Карточканын түзүлүшү';

  @override
  String get flashcardsLayoutHint =>
      'Бул топтомдун кошумча талааларынын атын өзгөртүңүз, жашырыңыз же иретин өзгөртүңүз. Карточканын мазмуну эч качан өзгөрбөйт.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Окуп жатканда $field көрсөтүү';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Жоопту акырындап ачуу';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Адегенде арткы бет чыгат; ар бир кошумча талаа таптаганда ачылат.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field көрсөтүү';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Бул файл $mb МБдан чоң.';
  }

  @override
  String get flashcardsImage => 'Сүрөт';

  @override
  String get flashcardsAudio => 'Аудио';

  @override
  String get flashcardsAddImage => 'Сүрөт кошуу';

  @override
  String get flashcardsAddAudio => 'Аудио кошуу';

  @override
  String get flashcardsPlayAudio => 'Жазууну ойнотуу';

  @override
  String get flashcardsAudioUnavailable => 'Бул жазууну ушул түзмөктө ойнотуу мүмкүн эмес.';

  @override
  String get flashcardsCustomFields => 'Сиздин талааларыңыз';

  @override
  String get flashcardsTemplates => 'Үлгүлөр';

  @override
  String flashcardsNewFieldName(int n) {
    return '$n-талаа';
  }

  @override
  String get flashcardsAddField => 'Талаа кошуу';

  @override
  String get flashcardsFieldName => 'Талаанын аталышы';

  @override
  String get flashcardsFieldLangDefault => 'Беттин тили';

  @override
  String get flashcardsTemplateConfirm =>
      'Үлгү талаалардын кантип көрсөтүлөрүн белгилеп, өз талааларын кошот. Карточкаларыңыз жана бар талаалар өзгөрүүсүз калат.';

  @override
  String get flashcardsApplyTemplate => 'Колдонуу';

  @override
  String get templateVocabulary => 'Сөздүк';

  @override
  String get templateTwoTranslations => 'Эки котормосу бар сөз';

  @override
  String get templateQuestionAnswer => 'Суроо жана жооп';

  @override
  String get templateDefinition => 'Термин жана аныктама';

  @override
  String get templateGrammar => 'Грамматика эрежеси';

  @override
  String get templateFieldPlural => 'Көптүк түрү';

  @override
  String get templateFieldTranslation2 => 'Экинчи котормо';

  @override
  String get templateFieldSynonyms => 'Синонимдер';

  @override
  String get templateFieldRule => 'Эреже';

  @override
  String get deckCategory => 'Деңгээл же тема';

  @override
  String get deckCategoryHint => 'мис. A1, Медицина';

  @override
  String get flashcardsSearchAll => 'Бардык карточкалардан издөө';

  @override
  String get flashcardsSearchAllHint => 'Сөз, котормо, мисал, жазуу, тег…';

  @override
  String get flashcardsAllDecks => 'Бардык топтомдор';

  @override
  String get flashcardsAllLanguages => 'Бардык тилдер';

  @override
  String get flashcardsLangUnset => 'Тил белгиленген эмес';

  @override
  String get flashcardsLevelUnset => 'Деңгээл же тема жок';

  @override
  String get flashcardsByLanguage => 'Тил боюнча жылыш';

  @override
  String get flashcardsByLevel => 'Деңгээл же тема боюнча жылыш';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks топтом · $cards карточка · $mature бышып жетилген · $due кезекте · $correct туура (30 күн)';
  }

  @override
  String get flashcardsRecord => 'Жаздыруу';

  @override
  String get flashcardsRecording => 'Жаздырылууда…';

  @override
  String get flashcardsRecordStop => 'Токтотуп, сактоо';

  @override
  String get flashcardsMicDenied =>
      'Микрофонго уруксат өчүк. Жаздыруу үчүн аны тутум жөндөөлөрүнөн уруксат бериңиз.';

  @override
  String get flashcardsRecordFailed => 'Бул түзмөктө жаздыруу жеткиликсиз.';

  @override
  String get soundsTitle => 'Үндөр';

  @override
  String get soundsNature => 'Табият';

  @override
  String get soundsNoise => 'Фокус ызы-чуусу';

  @override
  String get soundRain => 'Жамгыр';

  @override
  String get soundStorm => 'Чагылган';

  @override
  String get soundRiver => 'Дарыя';

  @override
  String get soundOcean => 'Деңиз толкундары';

  @override
  String get soundFire => 'От';

  @override
  String get soundForest => 'Токой куштары';

  @override
  String get soundNight => 'Жайкы түн';

  @override
  String get soundWhite => 'Ак ызы-чуу';

  @override
  String get soundPink => 'Кызгылт ызы-чуу';

  @override
  String get soundBrown => 'Күрөң ызы-чуу';

  @override
  String get soundsPlay => 'Ойнотуу';

  @override
  String get soundsSleep => 'Уйку таймери';

  @override
  String get soundsSleepOff => 'Өчүк';

  @override
  String soundsSleepAt(String time) {
    return 'Саат $time токтойт';
  }

  @override
  String soundsMixFull(int count) {
    return 'Бир убакта $count үнгө чейин ойношу мүмкүн.';
  }

  @override
  String get soundsHint =>
      'Баштоо үчүн үндү таптаңыз. Бир нечесин аралаштырып, ар биринин катуулугун жөндөңүз.';

  @override
  String get soundsMixer => 'Аралашма';

  @override
  String soundsVolumeOf(String name) {
    return '$name катуулугу';
  }

  @override
  String get soundsChannel => 'Табият үндөрү';

  @override
  String get settingsEndTone => 'Таймердин аяктоо үнү';

  @override
  String get toneGentle => 'Жумшак сигналдар';

  @override
  String get toneBeeps => 'Сигналдар';

  @override
  String get toneWood => 'Жыгач тыкылдаганы';

  @override
  String get toneBird => 'Куш үнү';

  @override
  String get toneStream => 'Булак';

  @override
  String get toneSystem => 'Телефондун үнү';

  @override
  String get speechOnPhone => 'Ушул телефондо';

  @override
  String get speechAllLanguages => 'Бардык тилдер';

  @override
  String get speechSearchLanguage => 'Тилдерди издөө';

  @override
  String get speechGetVoices => 'Көбүрөөк үн жүктөп алуу';

  @override
  String get speechGetVoicesHint =>
      'Үнү жок тилдерди телефондун сүйлөө жөндөөлөрүнөн жүктөп алса болот.';

  @override
  String get speechSettingsFailed => 'Бул телефондо сүйлөө жөндөөлөрүн ачуу мүмкүн болбоду.';

  @override
  String get speechVoiceMissing => 'Үн орнотулган эмес';

  @override
  String get speechPause => 'Кайталоолордун ортосундагы тыныгуу';

  @override
  String speechSeconds(String seconds) {
    return '$seconds сек';
  }

  @override
  String get speechExample => 'Мисалды жооп менен бирге окуу';

  @override
  String get flashListen => 'Угуу';

  @override
  String get flashListenNext => 'Кийинки карточка';

  @override
  String get flashListenEmpty => 'Уга турган карточка жок.';

  @override
  String get flashViewTable => 'Таблица';

  @override
  String get flashViewCards => 'Карточкалар';

  @override
  String get flashSwapSides => 'Мамычаларды алмаштыруу';

  @override
  String get flashSort => 'Иреттөө';

  @override
  String get flashSortNewest => 'Адегенде жаңылары';

  @override
  String get flashSortAlpha => 'А дан Я га чейин';

  @override
  String get flashSortDue => 'Адегенде мөөнөтү келгендер';

  @override
  String get flashSortHard => 'Адегенде эң кыйындары';

  @override
  String get flashPasteCards => 'Карточкаларды чаптоо';

  @override
  String get flashClipboardEmpty => 'Алмашуу буферинде текст жок.';

  @override
  String get flashMenuAdd => 'Карточкаларды кошуу';

  @override
  String get flashMenuDeck => 'Топтом';

  @override
  String get flashToday => 'Бүгүн';

  @override
  String get flashStudyNow => 'Окуу';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточкага жооп берилди',
      one: '1 карточкага жооп берилди',
      zero: 'Жооп берилген карточка жок',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Токойдогу жамгыр';

  @override
  String get autoBackupTitle => 'Автоматтык камдык көчүрмөлөр';

  @override
  String get autoBackupDesc => 'Күн сайын ушул телефондо; акыркы 7си сакталат';

  @override
  String get autoBackupHint =>
      'Бул көчүрмөлөр ушул телефондо калат жана колдонмо өчүрүлсө, жок болот. Жаңы телефонго өтүү үчүн файлды сактоого «Камдык көчүрмө» колдонуңуз.';

  @override
  String get autoBackupNone => 'Азырынча автоматтык камдык көчүрмө жок. Биринчиси бүгүн түзүлөт.';

  @override
  String get autoBackupRestore => 'Калыбына келтирүү';

  @override
  String autoBackupConfirm(String date) {
    return 'Учурдагы бардык маалыматты $date күнкү камдык көчүрмө менен алмаштырасызбы?';
  }

  @override
  String get autoBackupRestored => 'Калыбына келтирилди.';

  @override
  String get errorLogTitle => 'Каталар журналы';

  @override
  String get errorLogHint =>
      'Бир нерсе туура эмес болсо, бул жерде белгиленет: катанын түрү жана коддогу орду гана, сиздин мазмунуңуз эч качан эмес. Көйгөйдү оңдоого жардам берүү үчүн бөлүшүңүз.';

  @override
  String get errorLogEmpty => 'Эч кандай ката катталган жок.';

  @override
  String get errorLogClear => 'Тазалоо';

  @override
  String get soundsWithFocus => 'Фокус сеанстары менен ойнотуу';

  @override
  String get soundsWithFocusHint =>
      'Аралашмаңыз фокус сеансы менен башталып, тыныгууларда токтойт.';

  @override
  String get soundsSavedMixes => 'Сакталган аралашмалар';

  @override
  String get soundsSaveMix => 'Бул аралашманы сактоо';

  @override
  String get soundsMixNameHint => 'Аталышы, мис. Жамгырлуу китепкана';

  @override
  String soundsDeleteMix(String name) {
    return '«$name» аралашмасын өчүрөсүзбү?';
  }

  @override
  String get settingsReviewReminderHint => 'Күнүнө бир жолу, карточкалардын мөөнөтү келгенде гана';

  @override
  String get settingsReviewTime => 'Эскертүү убактысы';

  @override
  String get shortcutFocus => 'Фокус';

  @override
  String get shortcutNewTask => 'Жаңы тапшырма';

  @override
  String get shortcutReview => 'Карточкаларды кайталоо';

  @override
  String get shortcutSounds => 'Табият үндөрү';

  @override
  String get myDayTitle => 'Күнүмдү баштоо';

  @override
  String get myDayHint => 'Күнүңүзгө бир карап, анан бир таптоо менен фокус';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Бүгүнгө $count тапшырма',
      one: 'Бүгүнгө 1 тапшырма',
      zero: 'Бүгүнгө тапшырма жок',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Бүгүн башка иш-чара жок';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Кийинки: $title, саат $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count адат калды',
      one: '1 адат калды',
      zero: 'Бардык адаттар аткарылды',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Фокус сеансынан баштоо';

  @override
  String get hijriMonth1 => 'Мухаррам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Рабиул-аввал';

  @override
  String get hijriMonth4 => 'Рабиус-сани';

  @override
  String get hijriMonth5 => 'Жумадул-ула';

  @override
  String get hijriMonth6 => 'Жумадус-сани';

  @override
  String get hijriMonth7 => 'Ражаб';

  @override
  String get hijriMonth8 => 'Шаабан';

  @override
  String get hijriMonth9 => 'Рамазан';

  @override
  String get hijriMonth10 => 'Шаввал';

  @override
  String get hijriMonth11 => 'Зулкаада';

  @override
  String get hijriMonth12 => 'Зулхижжа';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year х.';
  }

  @override
  String get settingsHijri => 'Хижра даталары';

  @override
  String get settingsHijriHint => 'Жылнаамада жана башкы экранда көрсөтүлөт (Умм аль-Кура)';

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
    return 'Бүгүн $goal карточканын $done';
  }

  @override
  String get studyGoalReached => 'Күндүк максатка жеттиңиз. Азаматсыз!';

  @override
  String get studyWeekTitle => 'Сиздин жумаңыз';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 күндө $count карточкага жооп берилди',
      one: '7 күндө 1 карточкага жооп берилди',
      zero: '7 күндө жооп берилген карточка жок',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7 күндө $duration фокус';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Катар: $current · Эң мыкты: $best';
  }

  @override
  String get studyGoalTitle => 'Күндүк максат (карточкалар)';

  @override
  String get studyGoalOff => 'Өчүк';

  @override
  String get focusDndTitle => 'Фокус учурунда «Тынчымды алба»';

  @override
  String get focusDndHint => 'Ар бир фокус сеансында күйүп, тыныгууда өчөт';

  @override
  String get focusDndNeedsAccess => 'Муну колдонуу үчүн телефон жөндөөлөрүнөн уруксат бериңиз';

  @override
  String get voiceInput => 'Үн менен терүү';

  @override
  String get voiceInputPrompt => 'Азыр сүйлөңүз';

  @override
  String get voiceInputUnavailable =>
      'Бул телефондо үн менен терүү жеткиликсиз. Сүйлөө кызматын орнотуңуз же күйгүзүңүз (мисалы, Google сунуштаган Speech Recognition & Synthesis).';

  @override
  String get prayerFajr => 'Багымдат';

  @override
  String get prayerSunrise => 'Күндүн чыгышы';

  @override
  String get prayerDhuhr => 'Бешим';

  @override
  String get prayerAsr => 'Аср';

  @override
  String get prayerMaghrib => 'Шам';

  @override
  String get prayerIsha => 'Куптан';

  @override
  String get prayerMethodMwl => 'Мусулман дүйнөсүнүн лигасы';

  @override
  String get prayerMethodUmmAlQura => 'Умм аль-Кура, Мекке';

  @override
  String get prayerMethodEgypt => 'Египеттин Башкы башкармалыгы';

  @override
  String get prayerMethodJordan => 'Иордания, Вакф министрлиги';

  @override
  String get prayerMethodKarachi => 'Ислам илимдери университети, Карачи';

  @override
  String get prayerMethodIsna => 'Түндүк Американын ислам коому';

  @override
  String get prayerMethodGulf => 'Перс булуңу аймагы';

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
  String get prayerMethodRussia => 'Россия, Диний башкармалык';

  @override
  String prayerNotifTitle(String name) {
    return '$name убактысы';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Намаз убактысы · $time';
  }

  @override
  String get prayerTitle => 'Намаз убакыттары';

  @override
  String get prayerOffHint =>
      'Намаз убакыттарын көрүү үчүн шаарыңызды тандаңыз. Алар телефондо эсептелет; жайгашкан жерге уруксат керек эмес.';

  @override
  String get prayerChooseCity => 'Шаарды тандоо';

  @override
  String get prayerCity => 'Шаар';

  @override
  String get prayerCitySearch => 'Шаарды издөө';

  @override
  String get prayerMethod => 'Эсептөө ыкмасы';

  @override
  String get prayerHanafiAsr => 'Ханафий аср (кечирээк убакыт)';

  @override
  String get prayerReminders => 'Ар бир намаз убагында кабарлоо';

  @override
  String get prayerPauseFocus => 'Намаз убагында фокусту тындыруу';

  @override
  String get prayerPauseFocusHint => 'Жүрүп жаткан сеанс тынат; намаздан кийин улантыңыз';

  @override
  String get prayerTurnOff => 'Намаз убакыттарын өчүрүү';

  @override
  String get prayerAccuracyNote =>
      'Эсептелген убакыттар жергиликтүү мечитиңизден бир нече мүнөткө айырмаланышы мүмкүн.';

  @override
  String prayerNext(String name, String time) {
    return '$name, саат $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Бул Anki файлы эң жаңы форматты колдонот. Anki ичинде «Support older Anki versions» күйгүзүлгөн абалда кайра экспорттоп, ошол файлды импорттоңуз.';

  @override
  String get importTemplate => 'Таблица үлгүсү';

  @override
  String get importTemplateFront => 'алма';

  @override
  String get importTemplateBack => 'тегерек жемиш';

  @override
  String get importTemplateExample => 'Мен күн сайын алма жейм.';

  @override
  String get importTemplateTag => 'тамак';

  @override
  String get starterTitle => 'Баштапкы топтомдор';

  @override
  String get starterHint =>
      'Дароо окуп көрүү үчүн бирөөнү кошуңуз. Аны кийин түзөтүп же өчүрсөңүз болот.';

  @override
  String get starterAdd => 'Кошуу';

  @override
  String get starterWords => 'Күнүмдүк англис сөздөрү (араб тилинде)';

  @override
  String get starterCapitals => 'Дүйнөнүн борбор шаарлары';

  @override
  String get starterElements => 'Химиялык элементтер';

  @override
  String get settingsAccent => 'Акцент түсү';

  @override
  String get accentViolet => 'Кызгылт көк';

  @override
  String get accentBlue => 'Көк';

  @override
  String get accentTeal => 'Көгүш жашыл';

  @override
  String get accentGreen => 'Жашыл';

  @override
  String get accentRose => 'Кызгылт';

  @override
  String get accentAmber => 'Сары';

  @override
  String get settingsFlashTextSize => 'Карточка текстинин өлчөмү';

  @override
  String get settingsFlashTextSample => 'Мисал';

  @override
  String get widgetStartFocus => 'Фокус үчүн таптаңыз';

  @override
  String widgetFocusUntil(String time) {
    return '$time чейин фокус';
  }

  @override
  String get widgetNoCardsDue => 'Карточкалар: баары аткарылды';

  @override
  String get faqMyDayQ => '«Күнүмдү баштоо» эмне кылат?';

  @override
  String get faqMyDayA =>
      'Башкы экран аны күнүнө бир жолу сунуштайт: бүгүнкү тапшырмаларды, кийинки иш-чараны, калган адаттарды жана мөөнөтү келген карточкаларды көрүп, бир таптоо менен фокус сеансын баштаңыз. Тез аракеттер үчүн колдонмонун сүрөтчөсүн басып туруңуз же фокус убактысын жана карточкаларды көрүү үчүн башкы экран виджетин кошуңуз.';

  @override
  String get faqTasksQ => 'Эскерткичи бар тапшырманы кантип кошом?';

  @override
  String get faqTasksA =>
      'Башкы беттеги «Жаңы тапшырма» же «Тапшырмалар» ичиндеги + баскычын таптаңыз. Аталышын жазыңыз же микрофон менен айтыңыз, анан мөөнөт, убакыт жана эскерткич коюңуз. Мөөнөтү өткөн тапшырмалар биринчи турат.';

  @override
  String get faqFocusQ => 'Фокус таймери кантип иштейт?';

  @override
  String get faqFocusA =>
      'Помодоро, тескери эсеп же ачык убакытты тандап, «Баштоо» баскычын басыңыз; тыныгуулар автоматтык түрдө келиши мүмкүн. Жөндөөлөрдө аяктоо үнүн тандап, фокус учурунда «Тынчымды алба» режимин күйгүзүп, табият үндөрүн ар бир сеанс менен ойното аласыз.';

  @override
  String get faqSoundsQ => 'Табият үндөрүн аралаштырсам болобу?';

  @override
  String get faqSoundsA =>
      'Алтыга чейин чыныгы жазууну күйгүзүп, ар биринин катуулугун жөндөп, аралашманы ат менен сактаңыз. Алар фондо ойной берет, ал эми уйку таймери аларды токтото алат. Музыка колдонулбайт.';

  @override
  String get faqCalendarQ => 'Жылнаама хижра даталарын көрсөтө алабы?';

  @override
  String get faqCalendarA =>
      'Ооба. Хижра даталары (Умм аль-Кура) араб тилинде автоматтык түрдө көрүнөт жана каалаган тил үчүн Жөндөөлөрдөн күйгүзүлөт. Иш-чаралар, мөөнөтү бар тапшырмалар жана долбоор баскычтары бирге көрүнөт.';

  @override
  String get faqFlashcardsQ => 'Кайталоо кайсы карточкаларды көрөрүмдү кантип чечет?';

  @override
  String get faqFlashcardsA =>
      'Жакшы билген карточкалар узунураак аралыктан кийин, ал эми каталанган карточкалар жакын арада кайтат (аралыктуу кайталоо). Ар бир жоопту «Кайра», «Кыйын», «Жакшы» же «Оңой» деп баалаңыз. Күндүк максат коюп, «Бүгүн» карточкасында катарыңызды сактаңыз. Калган күндөрдү жана күн сайын канча жаңы карточка үйрөнүү керектигин көрүү үчүн топтомго сынак күнүн коюңуз. Карточкаларды сүйрөп жайгаштыруу үчүн «Менин иретим» боюнча иреттеңиз, угуу үчүн каалаган беттеги динамикти таптаңыз, ылдамдык менен кайталоону «Сүйлөө» менюсунда жөндөңүз.';

  @override
  String get faqImportQ => 'Карточкаларды Anki же Excel’ден алып келсем болобу?';

  @override
  String get faqImportA =>
      'Ооба. Топтомдо «Импорттоо» тандап, файлды көрсөтүңүз: Anki (.apkg), Excel (.xlsx) же CSV, анан мамычаларды дал келтириңиз. Компьютерде карточка жазуу үчүн «Таблица үлгүсүн» колдонуңуз. Anki файлдарындагы сүрөттөр менен үндөр импорттолбойт.';

  @override
  String get faqNotesQ => 'Жазуулар эмне кыла алат?';

  @override
  String get faqNotesA =>
      'Текшерүү тизмелери жана форматтоо менен эркин жазыңыз, маанилүү жазууларды кадаңыз же тандалмага кошуңуз, тегдерди кошуп, жазууларды тапшырмаларга байланыштырыңыз. Микрофон баскычы айтып жаздырууга мүмкүнчүлүк берет. Жаңы жазуу үлгүдөн башталышы мүмкүн (лекция, китептин кыскача мазмуну, күндөлүк, жумалык план), ал эми сүрөт баскычы сүрөт кошот.';

  @override
  String get faqHabitsQ => 'Адат катарлары кантип эсептелет?';

  @override
  String get faqHabitsA =>
      'Пландалган күнү адаттын белгисине жетсеңиз, күн эсептелет. Адатты тындыруу катарды сактайт. Ар бир адаттын өз эскертүү убактысы болушу мүмкүн.';

  @override
  String get faqGoalsQ => 'Максаттар жылышты кантип көзөмөлдөйт?';

  @override
  String get faqGoalsA =>
      'Максатка белги саны менен бирдигин берип, жылышты жазып туруңуз. Анын карточкасы канчалык жеткениңизди жана мөөнөткө чейин канча калганын көрсөтөт.';

  @override
  String get faqProjectsQ => 'Долбоорлор эмне үчүн керек?';

  @override
  String get faqProjectsA =>
      'Тапшырмаларды долбоорго топтоп, күнү бар баскычтарды кошуп, жалпы жылышты көзөмөлдөңүз. Баскычтар жылнаамада да көрүнөт.';

  @override
  String get faqInsightsQ => 'Талдоо эмнени көрсөтөт?';

  @override
  String get faqInsightsA =>
      'Күндөр жана жумалар боюнча фокус убактыңызды, аткарылган тапшырмаларды жана окууну, жумшак сунуштар менен. Баары телефонуңузда эсептелет.';

  @override
  String get faqSpacesQ => 'Бардык бөлүмдөр кайда?';

  @override
  String get faqSpacesA =>
      '«Мейкиндиктер» колдонмонун ар бир бөлүгүн (жазуулар, топтомдор, адаттар, максаттар, долбоорлор, үндөр жана башкалар) тизмелейт, ошондуктан негизги тилке жөнөкөй бойдон калат.';

  @override
  String get faqBackupQ => 'Маалыматымдын камдык көчүрмөсү кантип алынат?';

  @override
  String get faqBackupA =>
      'Колдонмо күн сайын ушул телефондо шифрленген көчүрмөнү үнсүз сактап, акыркы 7син калтырат. Жөндөөлөрдө сырсөз менен корголгон камдык файлды экспорттоп, аны башка телефондо калыбына келтирсеңиз да болот.';

  @override
  String get faqPrayerQ => 'Намаз убакыттары кантип иштейт?';

  @override
  String get faqPrayerA =>
      'Шаарыңызды Жөндөөлөр → Намаз убакыттары бөлүмүнөн тандаңыз. Убакыттар телефондо ошол жерде колдонулган ыкма менен эсептелет, ыкманы жана аср мазхабын өзгөртсөңүз болот. Ар бир намазда кабар алсаңыз болот, ал эми жүрүп жаткан фокус сеансы тынат.';

  @override
  String get faqPrivacyQ => 'Маалыматым кайда сакталат?';

  @override
  String get faqPrivacyA =>
      'Телефонуңузда гана, шифрленген маалымат базасында. Аккаунт да, көз салуу да жок. Интернетти өзүңүз күйгүзгөн функциялар гана колдонот, мисалы, кошумча жардамчы.';

  @override
  String get faqAssistantQ => 'Жардамчы деген эмне?';

  @override
  String get faqAssistantA =>
      'Жөндөөлөрдө өз ЖИ кызматыңызга туташтырган кошумча жардамчы. Демейки боюнча өчүк жана жазуунун текстин жөнөтүүдөн мурун сурайт.';

  @override
  String get tourPlanTitle => 'Күнүңүздү пландаңыз';

  @override
  String get tourPlanBody =>
      'Тапшырмалар, жылнаама жана адаттар бир тынч жерде. Ар бир таңды «Күнүмдү баштоо» менен баштаңыз.';

  @override
  String get tourFocusTitle => 'Терең фокус';

  @override
  String get tourFocusBody =>
      'Чыныгы табият үндөрү, «Тынчымды алба» жана жумшак аяктоо обондору бар убакыттуу сеанстар.';

  @override
  String get tourLearnTitle => 'Биротоло үйрөнүңүз';

  @override
  String get tourLearnBody =>
      'Аралыктуу кайталоосу бар карточкалар, көп тилдерде сүйлөө жана Anki же Excel’ден импорт.';

  @override
  String get helpTitle => 'Жардам жана суроолор';

  @override
  String get helpOpen => 'Ачуу';

  @override
  String get helpTour => 'Таанышуу турун баштоо';

  @override
  String get tourNext => 'Кийинки';

  @override
  String get tourDone => 'Баштайлы';

  @override
  String get transferColTitle => 'Аталышы';

  @override
  String get transferColNotes => 'Жазуулар';

  @override
  String get transferColBody => 'Текст';

  @override
  String get transferColDue => 'Мөөнөтү';

  @override
  String get transferColPriority => 'Артыкчылык (0-3)';

  @override
  String get transferColDone => 'Аткарылды';

  @override
  String get transferColProject => 'Долбоор';

  @override
  String get transferColCategory => 'Категория';

  @override
  String get transferTitle => 'Импорт жана экспорт';

  @override
  String get transferSaveAs => 'Башкача сактоо';

  @override
  String get transferImport => 'Файлдан импорттоо';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV же Word ичиндеги таблица. Мамычалар: аталышы, мөөнөтү (2026-12-31), артыкчылык 0-3, аткарылды, долбоор, жазуулар. Колдонмодо бар тапшырмалар өткөрүлөт.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown же текст файлдары жазууга айланат. Excel же CSV: ар бир сапка бир жазуу (аталышы, текст).';

  @override
  String get transferSaved => 'Файл сакталды';

  @override
  String get transferFailed => 'Файлды түзүү мүмкүн болбоду. Эч нерсе өзгөргөн жок.';

  @override
  String get transferUnsupported =>
      'Бул файлды бул жерде окуу мүмкүн эмес. Excel, CSV, Word, Markdown же текст колдонуңуз.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added кошулду',
      one: '1 кошулду',
      zero: 'Кошо турган жаңы эч нерсе жок',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Текст';

  @override
  String get transferAllNotes => 'Бардык жазуулар';

  @override
  String get transferThisNote => 'Ушул жазуу';

  @override
  String get transferDeckFormats => 'Excel, Word же PDF катары сактоо';

  @override
  String get faqFilesQ => 'Excel, Word же PDF файлдарын колдонсом болобу?';

  @override
  String get faqFilesA =>
      'Ооба. «Тапшырмалар» жана «Жазуулар» бөлүмдөрүнүн жогору жагында импорт жана экспорт баскычы (эки жебе) бар, ал эми ар бир топтомдо ал менюда жайгашкан. Excel, CSV, Word же PDF катары сактаңыз же Excel, CSV, Word, Markdown же текст файлдарын алып келиңиз. Мамычалардын аталыштары колдонмонун каалаган тилинде болушу мүмкүн, ал эми сакталган файлдарды ар дайым кайра импорттосо болот.';

  @override
  String get tplLecture => 'Лекция';

  @override
  String get tplBook => 'Китептин кыскача мазмуну';

  @override
  String get tplJournal => 'Күндөлүк';

  @override
  String get tplWeek => 'Жумалык план';

  @override
  String get tplLectureBody => '## Негизги ойлор\n- \n\n## Суроолор\n- [ ] \n\n## Корутунду\n';

  @override
  String get tplBookBody =>
      '## Негизги ой\n\n## Эмнени үйрөндүм\n- \n\n## Цитаталар\n> \n\n## Колдонуу үчүн\n- [ ] \n';

  @override
  String get tplJournalBody => '## Ыраазымын\n- \n\n## Бүгүнкү көңүл\n- [ ] \n\n## Жазуулар\n';

  @override
  String get tplWeekBody =>
      '## Ушул жуманын максаттары\n- [ ] \n\n### Ишемби\n- [ ] \n\n### Жекшемби\n- [ ] \n\n### Дүйшөмбү\n- [ ] \n\n### Шейшемби\n- [ ] \n\n### Шаршемби\n- [ ] \n\n### Бейшемби\n- [ ] \n\n### Жума\n- [ ] \n';

  @override
  String get tplHint => 'Үлгүдөн баштоо';

  @override
  String get noteImage => 'Сүрөт';

  @override
  String get noteAddImage => 'Сүрөт кошуу';

  @override
  String get noteImageUnreadable => 'Бул файл колдонмо окуй ала турган сүрөт эмес.';

  @override
  String get noteImageTooLarge => 'Бул сүрөт өтө чоң.';

  @override
  String get examSet => 'Сынак күнүн коюу';

  @override
  String get examDate => 'Сынак күнү';

  @override
  String get examToday => 'Сынак бүгүн. Ийгилик!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сынакка $count күн калды',
      one: 'Сынак эртең',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'күнүнө $count жаңы карточка үйрөнүү',
      one: 'күнүнө 1 жаңы карточка үйрөнүү',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'бардык карточкалар үйрөнүлдү, кайталоону уланта бериңиз';

  @override
  String examRaiseLimit(int count) {
    return 'Күнүнө $count жаңы карточка көрсөтүү';
  }

  @override
  String get backupDriveHint =>
      'Көчүрмөнү онлайн сактоо үчүн кийин ачылган сактоо экранында Google Drive (же башка булут колдонмосун) тандаңыз.';

  @override
  String get flashShareDeck => 'Топтомду досуңуз менен бөлүшүү';

  @override
  String get flashSortManual => 'Менин иретим (сүйрөө)';

  @override
  String get flashReorderHint => 'Карточканы жылдыруу үчүн туткасын кармап сүйрөңүз.';

  @override
  String get flashReorderNeedsAll => 'Карточкаларды сүйрөө үчүн издөөнү жана чыпкаларды тазалаңыз.';

  @override
  String get flashDragHandle => 'Жылдыруу үчүн сүйрөңүз';

  @override
  String get reportTitle => 'Айлык отчет';

  @override
  String get reportFocus => 'Фокус убактысы';

  @override
  String reportSessions(int count) {
    return '$count сеанс';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Эң мыкты күн: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count активдүү күн';
  }

  @override
  String get reportCards => 'Кайталанган карточкалар';

  @override
  String reportCardsKnown(String percent) {
    return '$percent эсте калды';
  }

  @override
  String get reportTasks => 'Аткарылган тапшырмалар';

  @override
  String get reportHabits => 'Адат белгилери';

  @override
  String get reportEmpty => 'Бул айда азырынча эч нерсе жазылган жок.';

  @override
  String get reportSave => 'PDF же Word катары сактоо';

  @override
  String get reportPrevMonth => 'Мурунку ай';

  @override
  String get reportNextMonth => 'Кийинки ай';

  @override
  String get careTitle => 'Телефонго жана маалыматка кам көрүү';

  @override
  String get storageTitle => 'Сактагыч';

  @override
  String get storageSubtitle => 'Орун ээлеген нерселер жана колдонулбаган сүрөттөрдү тазалоо';

  @override
  String get storagePictures => 'Жазуулардагы сүрөттөр';

  @override
  String get storageCardMedia => 'Карточкалардагы сүрөттөр жана аудио';

  @override
  String get storageText => 'Жазуулардын тексти';

  @override
  String get storageFree => 'Телефондогу бош орун';

  @override
  String get storageLow =>
      'Телефонуңуз толууга жакын. Камдык көчүрмөлөр жана эскерткичтер иштей бериши үчүн орун бошотуңуз.';

  @override
  String storageUnused(int count, String size) {
    return '$count колдонулбаган сүрөт ($size)';
  }

  @override
  String get storageNoUnused => 'Колдонулбаган сүрөт жок. Баары иреттүү.';

  @override
  String get storageClean => 'Колдонулбаган сүрөттөрдү алып салуу';

  @override
  String storageCleaned(int count) {
    return '$count сүрөт алынды';
  }

  @override
  String get storageHint =>
      'Сүрөттөр эч бир жазуу, анын ичинде себеттеги жазуулар да көрсөтпөгөндө гана колдонулбаган деп эсептелет.';

  @override
  String get batteryTitle => 'Эскерткичтердин иштешин сактоо';

  @override
  String get batterySubtitle =>
      'Айрым телефондор фондогу колдонмолорду токтотот. Өзүңүздүкүн текшериңиз.';

  @override
  String get batteryStatusOk =>
      'Батареяны үнөмдөө бул колдонмону чектебейт. Эскерткичтер жана үндөр өз убагында келиши керек.';

  @override
  String get batteryStatusLimited =>
      'Батареяны үнөмдөө бул колдонмону фондо токтотушу мүмкүн, ошондуктан эскерткичтер жана үндөр кечигиши же келбей калышы мүмкүн.';

  @override
  String get batteryOpen => 'Батарея жөндөөлөрүн ачуу';

  @override
  String get batteryOpenApp => 'Колдонмонун жөндөөлөрүн ачуу';

  @override
  String get batteryGeneric =>
      'Батарея жөндөөлөрүндө бул колдонмону тандап, «Чектелбеген» (же «Оптималдаштырбоо») абалына коюңуз.';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: ошондой эле Коопсуздук › Уруксаттар › Автоиштетүү бөлүмүн ачып, бул колдонмону күйгүзүңүз жана Батарея үнөмдөгүчтү «Чектөөсүз» абалына коюңуз.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: Батарея › бул колдонмо бөлүмүн ачып, фондогу аракетке жана автоиштетүүгө уруксат бериңиз; колдонмону акыркы колдонмолор тизмесинде кулпулаңыз.';

  @override
  String get batterySamsung =>
      'Samsung: Батарея › Фондо колдонуу чектөөлөрү: бул колдонмону «Уктап жаткан колдонмолор» жана «Терең уктап жаткан колдонмолор» тизмесинен алып салыңыз.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Колдонмону ишке киргизүү › бул колдонмо › кол менен башкаруу, анан автоиштетүүгө, кошумча иштетүүгө жана фондо иштөөгө уруксат бериңиз.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Батарея › Фондогу кубат сарпталышы › бул колдонмого уруксат бериңиз жана уруксаттардан автоиштетүүнү күйгүзүңүз.';

  @override
  String get whatsNewTitle => 'Эмне жаңы';

  @override
  String get whatsNewSubtitle => 'Акыркы өзгөрүүлөр бир нече сапта';

  @override
  String get whatsNewDone => 'Түшүндүм';

  @override
  String get whatsNewOrderTitle => 'Карточкаларды өз иретиңиз менен сүйрөп жайгаштырыңыз';

  @override
  String get whatsNewOrderBody =>
      'Топтомдо Иреттөө › Менин иретим тандап, туткасын кармап сүйрөңүз.';

  @override
  String get whatsNewSpeechTitle => 'Карточканын ар бир бетинде динамик';

  @override
  String get whatsNewSpeechBody =>
      'Сөздү же котормону угуу үчүн аны таптаңыз. Ылдамдык, кайталоо жана үн кайталоо менюсунда. Тил тексттен аныкталат.';

  @override
  String get whatsNewReportTitle => 'Айлык отчет';

  @override
  String get whatsNewReportBody =>
      'Айды көрүү жана аны PDF же Word катары сактоо үчүн «Талдоо» ичиндеги отчет сүрөтчөсүн таптаңыз.';

  @override
  String get whatsNewCareTitle => 'Телефонго жана маалыматка кам көрүү';

  @override
  String get whatsNewCareBody =>
      'Жөндөөлөрдө эми сүрөттөрдү тазалоосу бар сактагыч барагы жана телефонуңуздун брендине ылайык батарея жетекчилиги бар.';

  @override
  String get whatsNewSoundTitle => 'Тынчыраак үндөр';

  @override
  String get whatsNewSoundBody =>
      'Табият үндөрү жумшагыраак жана тынчыраак, ал эми сүрөттүү карточкалар кооздоо.';

  @override
  String autoBackupCheckOk(String date) {
    return '$date текшерилди: акыркы камдык көчүрмө туура ачылат.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date текшерилди: бузулган камдык көчүрмө табылып, жаңысы менен алмаштырылды.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date текшерилди: акыркы камдык көчүрмөнү ачуу мүмкүн болбоду. Жөндөөлөрдөн камдык файлды өзүңүз сактаңыз.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Сиз адатта болжол менен саат $time окуйсуз';
  }

  @override
  String get smartReviewTimeUse => 'Колдонуу';

  @override
  String get widgetNewNote => 'Жаңы жазуу';

  @override
  String get noteConnections => 'Тегдер, шилтемелер жана тапшырмалар';

  @override
  String get navCards => 'Карточкалар';

  @override
  String get studyAnswerWay => 'Кантип жооп берүү';

  @override
  String get studyMorePractice => 'Кошумча машыгуу';

  @override
  String get studySessionSettings => 'Сеанстын жөндөөлөрү';

  @override
  String get focusAdjustTitle => 'Сиздин сеансыңыз';

  @override
  String get focusPresetsTitle => 'Даяр';

  @override
  String get focusPresetStudy => 'Окуу';

  @override
  String get focusPresetDeep => 'Терең иш';

  @override
  String get focusPresetQuick => 'Тез спринт';

  @override
  String get focusPresetReading => 'Китеп окуу';

  @override
  String get focusPresetWorkout => 'Машыгуу айлампалары';

  @override
  String get focusAdjustMinutes => 'Фокустун узактыгы';

  @override
  String get focusAdjustBreak => 'Тыныгуунун узактыгы';

  @override
  String get focusAdjustRounds => 'Айлампалар';

  @override
  String get focusRoundsOpen => 'Чексиз';

  @override
  String focusMinutesShort(String n) {
    return '$n мүн';
  }

  @override
  String get focusTapToAdjust => 'Убакытты өзгөртүү үчүн таптаңыз';

  @override
  String get flashArrangeDecks => 'Топтомдорду иреттөө';

  @override
  String get flashDeckActions => 'Топтомдун параметрлери';

  @override
  String get starterBrowse => 'Даяр топтомдор';

  @override
  String get starterBrowseHint => 'Бир таптоо менен кошуп, окууну баштаңыз';

  @override
  String get dashOpenDecks => 'Карточкаларыңызды ачуу';

  @override
  String speechVoiceNumber(String n) {
    return '$n-үн';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Жакшы агым. $m мүн эс аласызбы?';
  }

  @override
  String get focusFlowBreakStart => 'Тыныгууну баштоо';

  @override
  String tasksFinishAt(String time) {
    return 'Азыр баштасаңыз, баарын саат $time чейин бүтөсүз';
  }

  @override
  String get focusCalmPacing => 'Тынч ыргак';

  @override
  String get focusCalmPacingHint => 'Толук мүнөттөр жана шакек гана, тыкылдаган секунддарсыз';

  @override
  String get focusFlipHint => 'Баштоо үчүн телефонду бети менен ылдый каратыңыз';

  @override
  String get focusImmersive => 'Чөмүлүү режими';

  @override
  String get focusImmersiveBlack => 'Таза кара (батареяны үнөмдөйт)';

  @override
  String get focusFlipToFocus => 'Оодарып фокуска кирүү';

  @override
  String get focusFlipToFocusHint =>
      'Чөмүлүү режиминде: бети менен ылдый каратуу баштайт, көтөрүү тындырат';

  @override
  String get guardTitle => 'Алаксуудан коргоо';

  @override
  String get guardSubtitle => 'Фокус учурунда алаксыткан колдонмолорду тындыруу';

  @override
  String get guardSwitch => 'Алаксыткан колдонмолорду тындыруу';

  @override
  String get guardSwitchHint => 'Фокус сеанстарында жана «Убакыт күзөтү» сааттарында';

  @override
  String get guardNeedsAccess => 'Атайын мүмкүнчүлүктөр которгучу керек: күйгүзүү үчүн таптаңыз';

  @override
  String get guardDisclosureTitle => 'Коргоо кантип иштейт';

  @override
  String get guardDisclosureBody =>
      'Сиз тандаган колдонмолорду тындыруу үчүн Deep Focus кайсы колдонмо ачык экенин көрүү максатында Android тутумунун атайын мүмкүнчүлүктөр кызматын колдонот. «Shorts жана Reels жабуу» күйгүзүлгөн болсо, экранда кыска видео ойноткуч бар-жогун да текшерет.\n\nАл эч кандай текст окубайт, көргөнүн сактабайт жана эч жакка эч нерсе жөнөтпөйт: баары телефонуңузда калат. Аны каалаган убакта Атайын мүмкүнчүлүктөр жөндөөлөрүнөн өчүрө аласыз.';

  @override
  String get guardAgree => 'Макул болуп, жөндөөлөрдү ачуу';

  @override
  String get guardModeGentle => 'Жумшак';

  @override
  String get guardModeStrict => 'Катуу';

  @override
  String get guardGentleHint => '5 секунддук дем алуу тыныгуусу, анан өзүңүз тандайсыз';

  @override
  String get guardStrictHint => 'Тандалган колдонмолор фокус убактысы бүткөнчө жабык калат';

  @override
  String get guardApps => 'Тындырылуучу колдонмолор';

  @override
  String get guardAppsAllowed => 'Уруксат берилген колдонмолор';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count колдонмо',
      one: '1 колдонмо',
      zero: 'Азырынча эч нерсе тандалган жок',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Тандалган колдонмолорго гана уруксат берүү';

  @override
  String get guardAllowlistHint =>
      'Калган бардык колдонмолор тындырылат; чалуулар, жөндөөлөр жана баскычтоп ар дайым иштейт';

  @override
  String get guardShorts => 'Shorts жана Reels жабуу';

  @override
  String get guardShortsHint =>
      'Коргоо күйүп турган каалаган убакта. Мүмкүн болушунча: бул колдонмолор көп өзгөрөт';

  @override
  String get guardSchedule => 'Убакыт күзөтү';

  @override
  String get guardScheduleHint =>
      'Ошондой эле мектеп же жумуш сыяктуу белгиленген күндөрү жана сааттарда коргоо';

  @override
  String get guardFrom => 'Баштап';

  @override
  String get guardTo => 'Чейин';

  @override
  String get guardSearchApps => 'Колдонмолорду издөө';

  @override
  String get guardNoApps => 'Колдонмо табылган жок';

  @override
  String get guardPrivacy =>
      'Телефонуңузда гана иштейт: коргоо кайсы колдонмо ачык экенин көрөт, анын ичинде эмне бар экенин эч качан көрбөйт жана эч нерсе жөнөтпөйт.';

  @override
  String get guardBreathe => 'Дем алыңыз… жана чыгарыңыз';

  @override
  String get guardQuestion => 'Бул колдонмо сизге азыр керекпи?';

  @override
  String get guardBackToFocus => 'Фокуска кайтуу';

  @override
  String get guardOpenFive => '5 мүнөткө ачуу';

  @override
  String get guardStrictBody => 'Бул колдонмо фокус убактыңыз бүткөнчө тындырылган.';

  @override
  String get guardShortsClosed => 'Коргоо күйүп турганда кыска видеолор жабылат';

  @override
  String get faqGuardQ => 'Фокус учурунда алаксыткан колдонмолорду кантип токтотом?';

  @override
  String get faqGuardA =>
      'Фокус → таймердин жөндөөлөрү → Алаксуудан коргоо бөлүмүн ачыңыз. Колдонмолорду тандап, анан «Жумшак» (5 секунддук дем жана «Бул колдонмо сизге азыр керекпи?» суроосу) же «Катуу» (алар жабык калат) режимин тандаңыз. Ал фокус сеанстарында, ал эми «Убакыт күзөтү» менен сиз белгилеген күндөрү жана сааттарда иштейт. «Тандалган колдонмолорго гана уруксат берүү» калганынын баарын тындырат; чалуулар, жөндөөлөр жана баскычтоп ар дайым иштейт. Android сизден коргоону Атайын мүмкүнчүлүктөр жөндөөлөрүнөн бир жолу күйгүзүүнү сурайт. Ал кайсы колдонмо ачык экенин гана көрөт жана эч нерсе жөнөтпөйт.';

  @override
  String notesMovedToNotebook(String name) {
    return '$name ичине жылдырылды';
  }

  @override
  String get notesDragHint => 'Жазууну кармап, дептерге сүйрөңүз';

  @override
  String get guardReviewCards => 'Анын ордуна карточкаларды кайталоо';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сизди $count карточка күтүп турат',
      one: 'Сизди 1 карточка күтүп турат',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Шашылыш: 10 секунд басып туруңуз';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Басып тура бериңиз… $n';
  }

  @override
  String get guardWeekTitle => 'Ушул жума';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тындыруу',
      one: '1 тындыруу',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'фокуска $count жолу кайтты',
      one: 'фокуска бир жолу кайтты',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Сөздөрдүн атын өзгөртүү';

  @override
  String get wordsSubtitle => 'Колдонмодогу каалаган текст үчүн өз сөзүңүздү колдонуңуз';

  @override
  String get wordsHint =>
      'Өзгөртүү үчүн текстти таптаңыз. Сөздөрүңүз ушул тилге гана колдонулат жана камдык көчүрмөлөрдө сакталат.';

  @override
  String get wordsSearch => 'Тексттерди издөө';

  @override
  String get wordsChangedOnly => 'Өзгөртүлгөндөр гана';

  @override
  String wordsOriginal(String text) {
    return 'Түп нуска: $text';
  }

  @override
  String get wordsReset => 'Түп нусканы колдонуу';

  @override
  String get wordsResetAll => 'Бардык сөздөрдү баштапкы абалга келтирүү';

  @override
  String get wordsResetAllConfirm => 'Бул тилдеги бардык тексттер түп нускасына кайтат.';

  @override
  String get wordsNone => 'Текст табылган жок';

  @override
  String get settingsLanguageSearch => 'Тилдерди издөө';

  @override
  String get settingsLanguageNoMatch => 'Дал келген тил жок';

  @override
  String get soundsMyMusic => 'Сиздин аудио';

  @override
  String get soundsMusicHint =>
      'Телефондогу аудио файлды ойнотуңуз. Эч нерсе көчүрүлбөйт же жүктөлбөйт.';

  @override
  String get soundsChooseMusic => 'Аудио тандоо';

  @override
  String get soundsRemoveMusic => 'Аудиону алып салуу';

  @override
  String get wordPacksTitle => 'Тилдерди үйрөнүү';

  @override
  String get wordPacksHint =>
      'Темалар боюнча сөз тизмелери. Керектүү тилди гана жүктөп алып, карталарды эркин өзгөртүңүз же өчүрүңүз.';

  @override
  String get wordPacksFailed => 'Жүктөп алуу мүмкүн болгон жок. Байланышты текшериңиз.';

  @override
  String get wordPacksEmpty => 'Бул тилдин сөздөрү азырынча даярдалууда.';
}
