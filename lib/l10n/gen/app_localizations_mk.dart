// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Почетна';

  @override
  String get navTasks => 'Задачи';

  @override
  String get navFocus => 'Фокус';

  @override
  String get navCalendar => 'Календар';

  @override
  String get navSpaces => 'Простори';

  @override
  String get moduleProjects => 'Проекти';

  @override
  String get moduleNotes => 'Белешки';

  @override
  String get moduleFlashcards => 'Картички';

  @override
  String get moduleGoals => 'Цели';

  @override
  String get moduleHabits => 'Навики';

  @override
  String get moduleAnalytics => 'Увиди';

  @override
  String get moduleSearch => 'Пребарување';

  @override
  String get moduleAssistant => 'Асистент';

  @override
  String get moduleSettings => 'Поставки';

  @override
  String get moduleTrash => 'Корпа';

  @override
  String get actionSave => 'Зачувај';

  @override
  String get actionCancel => 'Откажи';

  @override
  String get actionDelete => 'Избриши';

  @override
  String get actionEdit => 'Уреди';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionAdd => 'Додај';

  @override
  String get actionCreate => 'Создај';

  @override
  String get actionClose => 'Затвори';

  @override
  String get actionBack => 'Назад';

  @override
  String get actionUndo => 'Врати';

  @override
  String get actionRestore => 'Врати';

  @override
  String get actionRetry => 'Обиди се повторно';

  @override
  String get actionContinue => 'Продолжи';

  @override
  String get actionSkip => 'Прескокни';

  @override
  String get actionArchive => 'Архивирај';

  @override
  String get actionUnarchive => 'Врати од архива';

  @override
  String get actionPin => 'Закачи';

  @override
  String get actionUnpin => 'Откачи';

  @override
  String get actionMore => 'Повеќе опции';

  @override
  String get actionClear => 'Исчисти';

  @override
  String get actionSearch => 'Барај';

  @override
  String get actionSort => 'Подреди';

  @override
  String get actionShare => 'Сподели';

  @override
  String get actionImport => 'Увези';

  @override
  String get actionExport => 'Извези';

  @override
  String get actionPause => 'Паузирај';

  @override
  String get actionResume => 'Продолжи';

  @override
  String get actionStart => 'Почни';

  @override
  String get actionStop => 'Запри';

  @override
  String get actionComplete => 'Заврши';

  @override
  String get actionDeleteForever => 'Избриши трајно';

  @override
  String get actionEmptyTrash => 'Испразни ја корпата';

  @override
  String get actionUnlink => 'Раздвои';

  @override
  String get actionCustomize => 'Прилагоди';

  @override
  String get actionPreview => 'Преглед';

  @override
  String get actionLog => 'Запиши напредок';

  @override
  String get stateLoading => 'Се вчитува…';

  @override
  String get stateSaving => 'Се зачувува…';

  @override
  String get stateSaved => 'Зачувано';

  @override
  String get stateUnsaved => 'Незачувани промени';

  @override
  String get errorGenericTitle => 'Нешто тргна наопаку';

  @override
  String get errorGenericMessage => 'Вашите податоци се безбедни. Обидете се повторно.';

  @override
  String get errorLoadFailed => 'Оваа содржина не можеше да се вчита.';

  @override
  String get errorSaveFailed => 'Не можеше да се зачува. Вашите промени се уште се тука.';

  @override
  String get validationRequired => 'Ова поле е задолжително';

  @override
  String get validationTitleRequired => 'Внесете наслов';

  @override
  String get validationNameRequired => 'Внесете име';

  @override
  String get validationTooLong => 'Ова е предолго';

  @override
  String get validationEndBeforeStart => 'Крајот мора да биде по почетокот';

  @override
  String get validationStartAfterDue => 'Датумот на почеток мора да биде пред рокот';

  @override
  String get validationPositiveNumber => 'Внесете број поголем од нула';

  @override
  String get validationDependencyCycle => 'Ова би создало кружна зависност';

  @override
  String get validationInvalidRepeat => 'Ова правило за повторување не е важечко';

  @override
  String get deletedItem => 'Преместено во корпата';

  @override
  String get untitled => 'Без наслов';

  @override
  String get noProject => 'Без проект';

  @override
  String get greetingMorning => 'Добро утро';

  @override
  String get greetingAfternoon => 'Добар ден';

  @override
  String get greetingEvening => 'Добра вечер';

  @override
  String get dashFocusToday => 'Денешен фокус';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done од $target';
  }

  @override
  String get dashStartFocus => 'Почни фокус';

  @override
  String get dashFocusRunning => 'Сесијата е во тек';

  @override
  String get dashTodayTasks => 'Рок денес';

  @override
  String get dashAgenda => 'Распоред';

  @override
  String get dashHabits => 'Денешни навики';

  @override
  String get dashGoals => 'Цели';

  @override
  String get dashReview => 'Повторување';

  @override
  String get dashRecentNotes => 'Неодамнешни белешки';

  @override
  String get dashInsight => 'Предлог';

  @override
  String get dashSeeAll => 'Види сè';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картички за повторување',
      one: '$count картичка за повторување',
      zero: 'Нема картички за повторување',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Повтори сега';

  @override
  String get dashCustomizeTitle => 'Делови на почетниот екран';

  @override
  String get dashCustomizeHint => 'Изберете што се прикажува на почетниот екран.';

  @override
  String get dashSectionFocus => 'Фокус';

  @override
  String get dashSectionToday => 'Задачи со рок денес';

  @override
  String get dashSectionAgenda => 'Распоред';

  @override
  String get dashSectionHabits => 'Навики';

  @override
  String get dashSectionGoals => 'Цели';

  @override
  String get dashSectionReview => 'Повторување картички';

  @override
  String get dashSectionNotes => 'Неодамнешни белешки';

  @override
  String get dashSectionInsight => 'Предлози';

  @override
  String get quickAddTask => 'Нова задача';

  @override
  String get quickAddNote => 'Нова белешка';

  @override
  String get quickAddEvent => 'Нов настан';

  @override
  String get quickStartFocus => 'Фокус';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Имате $count задоцнети задачи. Почнете со најважната.',
      one: 'Имате $count задоцнета задача. Почнете со најважната.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Ви недостигаат уште $minutes минути до дневната цел за фокус.';
  }

  @override
  String get insightCardsDue => 'Повторете ги картичките сега додека се свежи.';

  @override
  String get insightAllClear =>
      'Сè е според планот. Испланирајте го утрешниот ден или направете свесна пауза.';

  @override
  String insightHabitStreak(String habit) {
    return 'Задржете ја низата: $habit денес уште не е направена.';
  }

  @override
  String get focusTitle => 'Фокус';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Тајмер';

  @override
  String get focusModeCountUp => 'Штоперица';

  @override
  String get focusModeOpen => 'Слободно';

  @override
  String get focusPhaseWork => 'Фокус';

  @override
  String get focusPhaseShortBreak => 'Кратка пауза';

  @override
  String get focusPhaseLongBreak => 'Долга пауза';

  @override
  String get focusReady => 'Подготвено кога сте вие';

  @override
  String get focusPaused => 'Паузирано';

  @override
  String get focusRunning => 'Во фокус';

  @override
  String get focusDuration => 'Времетраење';

  @override
  String get focusLinkTask => 'Поврзи задача';

  @override
  String get focusLinkedTask => 'Работам на';

  @override
  String get focusNoTask => 'Нема поврзана задача';

  @override
  String focusCycle(int current, int total) {
    return 'Циклус $current од $total';
  }

  @override
  String get focusSkipBreak => 'Прескокни ја паузата';

  @override
  String get focusStartBreak => 'Почни пауза';

  @override
  String get focusStartNext => 'Почни следен фокус';

  @override
  String get focusSessionComplete => 'Сесијата е завршена';

  @override
  String get focusSessionStopped => 'Сесијата е зачувана';

  @override
  String focusSessionSummary(String duration) {
    return 'Бевте фокусирани $duration.';
  }

  @override
  String get focusAddNote => 'Додајте белешка за оваа сесија';

  @override
  String get focusHistory => 'Историја';

  @override
  String get focusNoHistory => 'Завршените сесии ќе се појават тука';

  @override
  String get focusTargets => 'Цели';

  @override
  String get focusDailyTarget => 'Дневна цел';

  @override
  String get focusWeeklyTarget => 'Неделна цел';

  @override
  String get focusOutcomeCompleted => 'Завршена';

  @override
  String get focusOutcomeInterrupted => 'Запрена порано';

  @override
  String get focusRecovered => 'Вашата сесија продолжи додека апликацијата беше затворена.';

  @override
  String get focusCompletedWhileAway =>
      'Сесијата заврши додека апликацијата беше затворена и е зачувана.';

  @override
  String get focusNotificationsOff =>
      'Известувањата се исклучени. Нема да бидете предупредени кога ќе заврши сесијата.';

  @override
  String get focusBatteryHint =>
      'Некои уреди ги паузираат апликациите во позадина. Тајмерот останува точен, но предупредувањата може да доцнат. Дозволете неограничено користење на батеријата за сигурни предупредувања.';

  @override
  String get focusOpenSettings => 'Отвори поставки';

  @override
  String get focusStopConfirmTitle => 'Да се запре ли оваа сесија?';

  @override
  String get focusStopConfirmMessage => 'Досегашното време на фокус ќе се зачува.';

  @override
  String get focusDiscard => 'Отфрли';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минути',
      one: '$minutes минута',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, преостануваат $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, поминаа $time';
  }

  @override
  String get focusDeleteSession => 'Избриши сесија';

  @override
  String get tasksTitle => 'Задачи';

  @override
  String get tasksViewToday => 'Денес';

  @override
  String get tasksViewUpcoming => 'Претстојни';

  @override
  String get tasksViewAll => 'Сите';

  @override
  String get tasksViewOverdue => 'Задоцнети';

  @override
  String get tasksViewCompleted => 'Завршени';

  @override
  String get tasksQuickAddHint => 'Додајте задача…';

  @override
  String get tasksEmptyTitle => 'Сè е завршено';

  @override
  String get tasksEmptyMessage => 'Додајте задача за да почнете да го обликувате денот.';

  @override
  String get tasksEmptyCompleted => 'Завршените задачи ќе се појават тука.';

  @override
  String get taskNew => 'Нова задача';

  @override
  String get taskEdit => 'Уреди задача';

  @override
  String get taskTitleLabel => 'Наслов';

  @override
  String get taskTitleHint => 'Што треба да се направи?';

  @override
  String get taskDescriptionLabel => 'Опис';

  @override
  String get taskNotesLabel => 'Белешки';

  @override
  String get taskPriority => 'Приоритет';

  @override
  String get priorityNone => 'Без';

  @override
  String get priorityLow => 'Низок';

  @override
  String get priorityMedium => 'Среден';

  @override
  String get priorityHigh => 'Висок';

  @override
  String get priorityUrgent => 'Итно';

  @override
  String get taskDueDate => 'Рок';

  @override
  String get taskStartDate => 'Датум на почеток';

  @override
  String get taskReminder => 'Потсетник';

  @override
  String get taskRepeat => 'Повторување';

  @override
  String get taskProject => 'Проект';

  @override
  String get taskCategory => 'Категорија';

  @override
  String get taskCategoryHint => 'на пр. Работа, Дома, Учење';

  @override
  String get taskEstimateMinutes => 'Проценка (минути)';

  @override
  String get taskTracked => 'Измерен фокус';

  @override
  String get taskLabels => 'Етикети';

  @override
  String get taskAddLabel => 'Нова етикета';

  @override
  String get taskChecklist => 'Список за проверка';

  @override
  String get taskAddChecklistItem => 'Додај ставка';

  @override
  String get taskSubtasks => 'Подзадачи';

  @override
  String get taskAddSubtask => 'Додај подзадача';

  @override
  String get taskDependencies => 'Блокирано од';

  @override
  String get taskAddDependency => 'Додај задача што блокира';

  @override
  String get taskLinkedNotes => 'Поврзани белешки';

  @override
  String get taskSetTime => 'Постави време';

  @override
  String get taskNoDate => 'Без датум';

  @override
  String get taskCompleted => 'Задачата е завршена';

  @override
  String get taskNextOccurrence => 'Создадено е следното повторување';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days дена задоцнување',
      one: '$days ден задоцнување',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Означи „$title“ како завршено';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Означи „$title“ како незавршено';
  }

  @override
  String get sortSmart => 'Паметно';

  @override
  String get sortDueDate => 'Рок';

  @override
  String get sortPriority => 'Приоритет';

  @override
  String get sortCreated => 'Најнови';

  @override
  String get sortTitle => 'Наслов';

  @override
  String get filterAllProjects => 'Сите проекти';

  @override
  String get filterAnyPriority => 'Кој било приоритет';

  @override
  String get filterTitle => 'Филтрирај и подреди';

  @override
  String get dateToday => 'Денес';

  @override
  String get dateTomorrow => 'Утре';

  @override
  String get dateYesterday => 'Вчера';

  @override
  String get repeatNever => 'Не се повторува';

  @override
  String get repeatDaily => 'Секој ден';

  @override
  String get repeatWeekdays => 'Секој работен ден';

  @override
  String get repeatWeekly => 'Секоја недела';

  @override
  String get repeatMonthly => 'Секој месец';

  @override
  String get repeatYearly => 'Секоја година';

  @override
  String get repeatCustom => 'Сопствено';

  @override
  String get repeatEvery => 'Повторувај на секои';

  @override
  String get repeatOnDays => 'Во деновите';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'дена', one: 'ден');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'недели',
      one: 'недела',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'месеци', one: 'месец');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'години',
      one: 'година',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пати',
      one: '$count пат',
    );
    return 'Завршува по $_temp0';
  }

  @override
  String get repeatEndsNever => 'Никогаш не завршува';

  @override
  String get reminderAtTime => 'Во време на настанот';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минути претходно',
      one: '$minutes минута претходно',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours часа претходно',
      one: '$hours час претходно',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 ден претходно';

  @override
  String get projectsTitle => 'Проекти';

  @override
  String get projectsEmptyTitle => 'Сè уште нема проекти';

  @override
  String get projectsEmptyMessage => 'Групирајте поврзани задачи, белешки и време на фокус.';

  @override
  String get projectNew => 'Нов проект';

  @override
  String get projectEdit => 'Уреди проект';

  @override
  String get projectName => 'Име';

  @override
  String get projectDescription => 'Опис';

  @override
  String get projectGoal => 'Цел';

  @override
  String get projectDeadline => 'Краен рок';

  @override
  String get projectColor => 'Боја';

  @override
  String get projectIcon => 'Икона';

  @override
  String get projectProgress => 'Напредок';

  @override
  String projectTasksDone(int done, int total) {
    return 'Завршени $done од $total задачи';
  }

  @override
  String get projectFocusTime => 'Време на фокус';

  @override
  String get projectArchived => 'Архивирани проекти';

  @override
  String get projectShowArchived => 'Прикажи архивирани';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Остануваат $days дена',
      one: 'Останува $days ден',
      zero: 'Рокот е денес',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Рокот помина';

  @override
  String get calendarTitle => 'Календар';

  @override
  String get calendarMonth => 'Месец';

  @override
  String get calendarWeek => 'Недела';

  @override
  String get calendarDay => 'Ден';

  @override
  String get calendarToday => 'Денес';

  @override
  String get calendarPrevious => 'Претходно';

  @override
  String get calendarNext => 'Следно';

  @override
  String get calendarNoEvents => 'Ништо не е закажано';

  @override
  String get calendarAllDay => 'Цел ден';

  @override
  String get eventNew => 'Нов настан';

  @override
  String get eventEdit => 'Уреди настан';

  @override
  String get eventTitleHint => 'Наслов на настанот';

  @override
  String get eventStarts => 'Почнува';

  @override
  String get eventEnds => 'Завршува';

  @override
  String get eventKind => 'Тип';

  @override
  String get eventKindEvent => 'Настан';

  @override
  String get eventKindTimeBlock => 'Временски блок';

  @override
  String get eventKindFocus => 'Сесија за фокус';

  @override
  String get eventKindGoal => 'Лична цел';

  @override
  String get eventDescription => 'Детали';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Се преклопува со $count настани',
      one: 'Се преклопува со $count настан',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Конфликти во распоредот на овој ден';

  @override
  String get calendarTaskDue => 'Рок на задача';

  @override
  String get calendarDragHint => 'Долго притиснете и повлечете настан за да го презакажете';

  @override
  String get calendarRescheduled => 'Настанот е преместен';

  @override
  String get calendarScheduleTask => 'Закажи како временски блок';

  @override
  String get notesTitle => 'Белешки';

  @override
  String get notesViewAll => 'Сите';

  @override
  String get notesViewPinned => 'Закачени';

  @override
  String get notesViewFavorites => 'Омилени';

  @override
  String get notesViewArchived => 'Архивирани';

  @override
  String get notesTags => 'Етикети';

  @override
  String get notesNewNotebook => 'Нова тетратка';

  @override
  String get notesNoNotebook => 'Без тетратка';

  @override
  String get notesEmptyTitle => 'Празен лист';

  @override
  String get notesEmptyMessage => 'Запишувајте идеи, белешки од состаноци и знаење.';

  @override
  String get noteTitleHint => 'Наслов';

  @override
  String get noteBodyHint =>
      'Почнете да пишувате… Користете # за етикети и [[Наслов]] за поврзување белешки.';

  @override
  String get noteFavorite => 'Омилено';

  @override
  String get noteUnfavorite => 'Отстрани од омилени';

  @override
  String get noteMoveTo => 'Премести во тетратка';

  @override
  String get noteBacklinks => 'Поврзано од';

  @override
  String get noteLinkedTasks => 'Поврзани задачи';

  @override
  String get noteLinkTask => 'Поврзи задача';

  @override
  String get noteLinkProject => 'Проект';

  @override
  String get noteFormatHeading => 'Наслов';

  @override
  String get noteFormatBold => 'Задебелено';

  @override
  String get noteFormatItalic => 'Курзив';

  @override
  String get noteFormatList => 'Список со точки';

  @override
  String get noteFormatChecklist => 'Список за проверка';

  @override
  String get noteFormatLink => 'Врска';

  @override
  String noteEdited(String time) {
    return 'Уредено $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count зборови',
      one: '$count збор',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Картички';

  @override
  String get flashEmptyTitle => 'Направете го првиот шпил';

  @override
  String get flashEmptyMessage =>
      'Повторувањето со интервали ја прикажува секоја картичка токму пред да ја заборавите.';

  @override
  String get deckNew => 'Нов шпил';

  @override
  String get deckEdit => 'Уреди шпил';

  @override
  String get deckName => 'Име на шпилот';

  @override
  String get deckDescription => 'Опис';

  @override
  String get deckDailyNew => 'Нови картички дневно';

  @override
  String get deckDailyReview => 'Дневна цел за повторување';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картички',
      one: '$count картичка',
      zero: 'Нема картички',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'За повторување';

  @override
  String get deckNewCards => 'Нови';

  @override
  String get deckMature => 'Научени';

  @override
  String get deckStudy => 'Учи';

  @override
  String get deckNothingDue => 'Во моментов нема ништо за повторување. Вратете се подоцна.';

  @override
  String get deckEmptyCards => 'Додајте картички за да почнете да учите.';

  @override
  String get cardNew => 'Нова картичка';

  @override
  String get cardEdit => 'Уреди картичка';

  @override
  String get cardFront => 'Предна страна';

  @override
  String get cardBack => 'Задна страна';

  @override
  String get cardFrontHint => 'Прашање или поим';

  @override
  String get cardBackHint => 'Одговор или дефиниција';

  @override
  String get cardTags => 'Етикети';

  @override
  String get cardAddAnother => 'Зачувај и додај уште';

  @override
  String get reviewShowAnswer => 'Прикажи одговор';

  @override
  String get reviewAgain => 'Повторно';

  @override
  String get reviewHard => 'Тешко';

  @override
  String get reviewGood => 'Добро';

  @override
  String get reviewEasy => 'Лесно';

  @override
  String reviewProgress(int done, int total) {
    return '$done од $total';
  }

  @override
  String get reviewFinishedTitle => 'Сесијата е завршена';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Повторивте $count картички.',
      one: 'Повторивте $count картичка.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Допрете за да го видите одговорот';

  @override
  String get importCardsTitle => 'Увези картички';

  @override
  String get importCardsHint =>
      'Залепете по една картичка во ред (предната и задната страна одделени со таб или точка-запирка) или изберете датотека: Excel (.xlsx), CSV, Anki шпил (.apkg) или извезен шпил.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Увезени се $count картички',
      one: 'Увезена е $count картичка',
      zero: 'Не е увезена ниедна картичка',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Оваа содржина не можеше да се увезе.';

  @override
  String get exportCopied => 'Шпилот е извезен';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count мин.',
      one: '$count мин.',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дена',
      one: '$count ден',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Цели';

  @override
  String get goalsEmptyTitle => 'Стремете се кон нешто';

  @override
  String get goalsEmptyMessage =>
      'Поставете дневни, неделни, месечни или долгорочни цели и следете вистински напредок.';

  @override
  String get goalNew => 'Нова цел';

  @override
  String get goalEdit => 'Уреди цел';

  @override
  String get goalTitleHint => 'Што сакате да постигнете?';

  @override
  String get goalPeriod => 'Период';

  @override
  String get goalPeriodDaily => 'Дневна';

  @override
  String get goalPeriodWeekly => 'Неделна';

  @override
  String get goalPeriodMonthly => 'Месечна';

  @override
  String get goalPeriodLongTerm => 'Долгорочна';

  @override
  String get goalTarget => 'Цел';

  @override
  String get goalUnit => 'Единица';

  @override
  String get goalUnitHint => 'на пр. страници, km, часови';

  @override
  String get goalStatusActive => 'Активна';

  @override
  String get goalStatusPaused => 'Паузирана';

  @override
  String get goalStatusAchieved => 'Постигната';

  @override
  String get goalPause => 'Паузирај цел';

  @override
  String get goalResume => 'Продолжи цел';

  @override
  String get goalMarkAchieved => 'Означи како постигната';

  @override
  String goalProgressOf(String current, String target) {
    return '$current од $target';
  }

  @override
  String get goalLogAmount => 'Количина';

  @override
  String get goalLogNote => 'Белешка (опционално)';

  @override
  String get goalHistory => 'Историја';

  @override
  String get goalNoHistory => 'Запишаниот напредок ќе се појави тука';

  @override
  String get goalLinkedTasks => 'Поврзани задачи';

  @override
  String get goalLinkedTasksHint => 'Секоја завршена поврзана задача се брои како 1 за оваа цел.';

  @override
  String get goalThisPeriod => 'Овој период';

  @override
  String get habitsTitle => 'Навики';

  @override
  String get habitsEmptyTitle => 'Мали чекори, секој ден';

  @override
  String get habitsEmptyMessage => 'Создајте навика и означете ја кога ќе ја направите.';

  @override
  String get habitNew => 'Нова навика';

  @override
  String get habitEdit => 'Уреди навика';

  @override
  String get habitNameHint => 'на пр. Прочитај 20 страници';

  @override
  String get habitDays => 'Распоред';

  @override
  String get habitEveryDay => 'Секој ден';

  @override
  String get habitTargetPerDay => 'Пати на ден';

  @override
  String get habitReminder => 'Дневен потсетник';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Низа од $count дена',
      one: 'Низа од $count ден',
      zero: 'Нема низа',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Најдобра низа';

  @override
  String get habitCurrentStreak => 'Тековна низа';

  @override
  String get habitConsistency => 'Доследност';

  @override
  String get habitLast90 => 'Последните 90 дена';

  @override
  String get habitPaused => 'Паузирано';

  @override
  String get habitPause => 'Паузирај навика';

  @override
  String get habitResume => 'Продолжи навика';

  @override
  String get habitDoneToday => 'Направено денес';

  @override
  String habitCountToday(int count, int target) {
    return 'Денес $count од $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Означи „$name“';
  }

  @override
  String get habitNotScheduledToday => 'Не е закажано денес';

  @override
  String get analyticsTitle => 'Увиди';

  @override
  String get rangeWeek => '7 дена';

  @override
  String get rangeMonth => '30 дена';

  @override
  String get rangeQuarter => '90 дена';

  @override
  String get statFocusTime => 'Време на фокус';

  @override
  String get statSessions => 'Сесии';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return 'Завршени: $completed · Запрени порано: $interrupted';
  }

  @override
  String get statTasksDone => 'Завршени задачи';

  @override
  String get statCompletionRate => 'Завршени навреме';

  @override
  String get statHabitConsistency => 'Доследност на навиките';

  @override
  String get statRetention => 'Памтење на картичките';

  @override
  String get statReviews => 'Повторувања';

  @override
  String get statActiveGoals => 'Активни цели';

  @override
  String get statEstimated => 'Проценета завршена работа';

  @override
  String get statEstimatedNote => 'Според вашите проценки, не според измереното време';

  @override
  String get statMeasuredNote => 'Измерено од сесиите за фокус';

  @override
  String get chartFocusByDay => 'Минути фокус на ден';

  @override
  String get chartTasksByDay => 'Завршени задачи на ден';

  @override
  String get chartTimeByProject => 'Време по проект';

  @override
  String get chartProjectProgress => 'Напредок на проектите';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: вкупно $total, најдобар ден $best';
  }

  @override
  String get analyticsNoData => 'Сè уште нема доволно податоци';

  @override
  String get analyticsUnassigned => 'Недоделено';

  @override
  String get searchHint => 'Барај сè…';

  @override
  String get searchRecent => 'Неодамнешни пребарувања';

  @override
  String get searchClearRecent => 'Исчисти ги неодамнешните пребарувања';

  @override
  String searchNoResults(String query) {
    return 'Нема резултати за „$query“';
  }

  @override
  String get searchStartTyping =>
      'Пребарувајте низ задачи, белешки, картички, цели, настани и друго. Пребарувањето останува на овој уред.';

  @override
  String get searchCatTask => 'Задачи';

  @override
  String get searchCatProject => 'Проекти';

  @override
  String get searchCatNote => 'Белешки';

  @override
  String get searchCatFlashcard => 'Картички';

  @override
  String get searchCatDeck => 'Шпилови';

  @override
  String get searchCatGoal => 'Цели';

  @override
  String get searchCatHabit => 'Навики';

  @override
  String get searchCatEvent => 'Настани';

  @override
  String get searchCatSession => 'Сесии';

  @override
  String get searchAll => 'Сите';

  @override
  String get assistantTitle => 'Асистент';

  @override
  String get assistantIntro =>
      'Помош при планирање што работи на вашиот уред. По желба поврзете давател на ВИ по ваш избор за резимеа и генерирање.';

  @override
  String get assistantOnDevice => 'На уредот';

  @override
  String get assistantCloud => 'Давател на ВИ';

  @override
  String get assistantPlanDay => 'Испланирај го мојот ден';

  @override
  String get assistantPlanDayDesc =>
      'Ги подредува отворените задачи по итност, приоритет и проценка и ги вклопува околу вашите настани.';

  @override
  String get assistantExtractTasks => 'Извлечи задачи од белешка';

  @override
  String get assistantExtractTasksDesc =>
      'Наоѓа ставки од список за проверка и редови со дејства во белешка и ги претвора во задачи.';

  @override
  String get assistantMakeCards => 'Направи картички од белешка';

  @override
  String get assistantMakeCardsDesc =>
      'Ги претвора редовите „поим: дефиниција“ и прашање/одговор во картички.';

  @override
  String get assistantSummarize => 'Резимирај белешка';

  @override
  String get assistantSummarizeDesc =>
      'Потребен е давател на ВИ. Белешката се праќа дури откако ќе потврдите.';

  @override
  String get assistantWorkload => 'Преглед на оптоварувањето';

  @override
  String get assistantWorkloadDesc =>
      'Ја споредува проценетата работа со вашето слободно време оваа недела.';

  @override
  String get assistantPlanEmpty => 'Нема отворени задачи за планирање. Уживајте во слободата.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Слободно време за фокус денес: $time';
  }

  @override
  String get assistantPlanOverflow => 'Овие можеби нема да се вклопат денес:';

  @override
  String get assistantChooseNote => 'Изберете белешка';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пронајдени се $count задачи',
      one: 'Пронајдена е $count задача',
      zero: 'Нема пронајдени задачи во оваа белешка',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пронајдени се $count картички',
      one: 'Пронајдена е $count картичка',
      zero: 'Нема пронајдени картички во оваа белешка',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Изберете шпил';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Проценета работа: $estimated. Слободно време: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Испланиравте повеќе отколку што имате време. Размислете за преместување на задачите со понизок приоритет.';

  @override
  String get assistantWorkloadOk => 'Вашиот план се вклопува во расположливото време.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count отворени задачи немаат проценка.',
      one: '$count отворена задача нема проценка.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Давател на ВИ';

  @override
  String get assistantProviderOff => 'Не е поврзан давател. Алатките на уредот и понатаму работат.';

  @override
  String assistantProviderOn(String host) {
    return 'Поврзано со $host';
  }

  @override
  String get assistantEndpoint => 'API крајна точка (HTTPS)';

  @override
  String get assistantModel => 'Модел';

  @override
  String get assistantApiKey => 'API клуч';

  @override
  String get assistantApiKeyStored => 'Безбедно зачуван на овој уред';

  @override
  String get assistantHttpsOnly => 'Дозволени се само HTTPS крајни точки';

  @override
  String get assistantConsentTitle => 'Да се испрати ли оваа содржина до вашиот давател на ВИ?';

  @override
  String assistantConsentBody(String host) {
    return 'Избраниот текст од белешката ќе го напушти овој уред и ќе го обработи $host. Ништо друго не се праќа.';
  }

  @override
  String get assistantConsentAlways => 'Не прашувај повторно за овој давател';

  @override
  String get assistantSend => 'Испрати';

  @override
  String get assistantUnavailable => 'Давателот на ВИ не е достапен. Обидете се повторно подоцна.';

  @override
  String get assistantDisabledTitle => 'Асистентот е исклучен';

  @override
  String get assistantDisabledMessage =>
      'Вклучете го за да ги користите алатките за планирање. Ниеден податок не го напушта уредот освен ако поврзете давател и го потврдите секое барање.';

  @override
  String get assistantSummaryTitle => 'Резиме';

  @override
  String get assistantRemoveProvider => 'Отстрани давател';

  @override
  String get settingsTitle => 'Поставки';

  @override
  String get settingsGeneral => 'Општо';

  @override
  String get settingsLanguage => 'Јазик';

  @override
  String get settingsLanguageSystem => 'Јазик на уредот';

  @override
  String get settingsAppearance => 'Изглед';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeLight => 'Светла';

  @override
  String get themeDark => 'Темна';

  @override
  String get themeSystem => 'Системска';

  @override
  String get settingsReduceMotion => 'Намали движење';

  @override
  String get settingsReduceMotionDesc => 'Намали анимации и подвижни позадини';

  @override
  String get settingsFocus => 'Тајмер за фокус';

  @override
  String get settingsWorkLength => 'Должина на фокусот';

  @override
  String get settingsShortBreak => 'Кратка пауза';

  @override
  String get settingsLongBreak => 'Долга пауза';

  @override
  String get settingsLongBreakEvery => 'Долга пауза по';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сесии',
      one: '$count сесија',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Автоматски почнувај паузи';

  @override
  String get settingsSound => 'Звук за крај';

  @override
  String get settingsDailyFocusTarget => 'Дневна цел за фокус';

  @override
  String get settingsWeeklyFocusTarget => 'Неделна цел за фокус';

  @override
  String get settingsNotifications => 'Известувања';

  @override
  String get settingsNotificationsEnable => 'Дозволи потсетници';

  @override
  String get settingsQuietHours => 'Тивки часови';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Потсетниците за навики, цели и повторување се стишани од $start до $end';
  }

  @override
  String get settingsReviewReminder => 'Потсетник за повторување картички';

  @override
  String get settingsPermissionDenied => 'Известувањата се блокирани во системските поставки.';

  @override
  String get settingsPrivacy => 'Приватност и податоци';

  @override
  String get settingsPrivacyStatement =>
      'Вашите податоци се чуваат само на овој уред и се шифрирани. Нема сметка, аналитика ни следење.';

  @override
  String get settingsBackup => 'Направи шифрирана резервна копија';

  @override
  String get settingsBackupDesc => 'Заштитено со лозинка што ја избирате';

  @override
  String get settingsRestore => 'Врати од резервна копија';

  @override
  String get settingsRestoreDesc => 'Ги заменува сите податоци на овој уред';

  @override
  String get settingsErase => 'Избриши ги сите податоци';

  @override
  String get settingsEraseDesc => 'Трајно избриши сè на овој уред';

  @override
  String get settingsEraseConfirmTitle => 'Да се избришат ли сите податоци?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Сите задачи, белешки, картички, цели, навики, настани и сесии ќе бидат трајно избришани. Внесете $word за потврда.';
  }

  @override
  String get settingsEraseWord => 'ИЗБРИШИ';

  @override
  String get settingsErased => 'Сите податоци се избришани';

  @override
  String get backupPassword => 'Лозинка за резервната копија';

  @override
  String get backupPasswordConfirm => 'Потврдете ја лозинката';

  @override
  String backupPasswordHint(int count) {
    return 'Најмалку $count знаци. Ако се изгуби, не може да се врати.';
  }

  @override
  String get backupPasswordMismatch => 'Лозинките не се совпаѓаат';

  @override
  String get backupPasswordShort => 'Лозинката е прекратка';

  @override
  String get backupCreating => 'Се шифрира резервната копија…';

  @override
  String get backupCreated => 'Резервната копија е подготвена за зачувување';

  @override
  String get backupRestoring => 'Се проверува и враќа…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Вратени се $count ставки',
      one: 'Вратена е $count ставка',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Погрешна лозинка или датотеката е изменета.';

  @override
  String get backupNotABackup => 'Оваа датотека не е резервна копија на Deep Focus.';

  @override
  String get backupCorrupted => 'Датотеката на резервната копија е оштетена.';

  @override
  String get backupNewer =>
      'Оваа резервна копија е направена со понова верзија на апликацијата. Прво ажурирајте ја.';

  @override
  String get backupRestoreConfirmTitle => 'Да се заменат ли сите податоци?';

  @override
  String get backupRestoreConfirmBody =>
      'Сè што моментално е на овој уред ќе биде заменето со резервната копија. Ако враќањето не успее, ништо не се менува.';

  @override
  String get settingsAbout => 'За апликацијата';

  @override
  String settingsVersion(String version) {
    return 'Верзија $version';
  }

  @override
  String get settingsLicenses => 'Лиценци за отворен код';

  @override
  String get settingsAssistant => 'Асистент';

  @override
  String get settingsAssistantEnable => 'Овозможи асистент';

  @override
  String get settingsDashboard => 'Делови на почетниот екран';

  @override
  String get settingsTrash => 'Корпа';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes мин.';
  }

  @override
  String get trashEmpty => 'Корпата е празна';

  @override
  String get trashHint => 'Избришаните ставки остануваат тука додека не ги отстраните.';

  @override
  String get trashTasks => 'Задачи';

  @override
  String get trashNotes => 'Белешки';

  @override
  String get onboardWelcomeTitle => 'Добредојдовте во вашиот работен простор на иднината';

  @override
  String get onboardWelcomeBody =>
      'Задачи, фокус, календар, белешки, картички, цели и навики — заедно, убаво едноставни.';

  @override
  String get onboardPrivateTitle => 'Приватно по дизајн';

  @override
  String get onboardPrivateBody =>
      'Сè останува на овој уред, шифрирано. Без сметка. Без следење. Вие имате контрола.';

  @override
  String get onboardLanguageTitle => 'Изберете јазик';

  @override
  String get onboardNotifTitle => 'Нежни потсетници';

  @override
  String get onboardNotifBody =>
      'Дозволете известувања за потсетници за задачи и предупредувања за фокус. Ова можете да го промените кога сакате.';

  @override
  String get onboardGetStarted => 'Да почнеме';

  @override
  String onboardStep(int current, int total) {
    return 'Чекор $current од $total';
  }

  @override
  String get notifChannelReminders => 'Потсетници';

  @override
  String get notifChannelRemindersDesc => 'Потсетници за задачи, настани, навики и цели';

  @override
  String get notifChannelFocus => 'Тајмер за фокус';

  @override
  String get notifChannelFocusDesc => 'Предупредувања кога ќе заврши сесија за фокус или пауза';

  @override
  String get notifTaskTitle => 'Потсетник за задача';

  @override
  String get notifEventTitle => 'Претстоен настан';

  @override
  String notifEventBody(String title, String time) {
    return '$title во $time';
  }

  @override
  String get notifFocusDoneTitle => 'Сесијата за фокус е завршена';

  @override
  String get notifFocusDoneBody => 'Одлична работа. Време е за пауза.';

  @override
  String get notifBreakDoneTitle => 'Паузата заврши';

  @override
  String get notifBreakDoneBody => 'Подготвени за следната сесија за фокус?';

  @override
  String get notifHabitTitle => 'Потсетник за навика';

  @override
  String get notifReviewTitle => 'Картичките се подготвени';

  @override
  String get notifReviewBody => 'Кратко повторување ја одржува меморијата силна.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ч $minutes мин.';
  }

  @override
  String durationHours(int hours) {
    return '$hours ч';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes мин.';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'П,В,С,Ч,П,С,Н';

  @override
  String a11yProgress(int value) {
    return 'Напредок $value проценти';
  }

  @override
  String a11yPriority(String level) {
    return 'Приоритет: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Боја $index';
  }

  @override
  String get analyticsRangeLabel => 'Временски опсег';

  @override
  String get analyticsRefresh => 'Освежи';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Навреме завршени $done од $total задачи со рок';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Завршени $done од $total задачи';
  }

  @override
  String get analyticsNoProjects => 'Нема активни проекти';

  @override
  String get analyticsNoFocus => 'Нема сесии за фокус во овој опсег';

  @override
  String get analyticsHabitsNone => 'Нема активни навики';

  @override
  String get analyticsRetentionNote => 'Удел на научените картички што ги запомнивте';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Слободното време се брои од $start до $end во работните денови ($days), минус настаните со време. Проценетата работа е збир од проценките на отворените задачи со рок во следните 7 дена.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Понеделник–петок';

  @override
  String get assistantWorkdaysSunThu => 'Недела–четврток';

  @override
  String get assistantWorkloadDayOff => 'Слободен ден';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return 'Испланирано $estimated · слободно $free';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Испланирано од сега до $end, околу денешните настани. Прво задоцнетите задачи, потоа приоритетот, рокот и проценката.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Закажи како временски блокови';

  @override
  String get assistantScheduleConfirmTitle => 'Да се додадат ли временски блокови во календарот?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Во денешниот календар ќе се додадат $count временски блокови.',
      one: 'Во денешниот календар ќе се додаде $count временски блок.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додадени се $count временски блокови',
      one: 'Додаден е $count временски блок',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Веќе е во вашиот календар';

  @override
  String get assistantPlanTimeline => 'Се вклопува денес';

  @override
  String get assistantNoEstimate => 'Додајте проценка за да ги испланирате';

  @override
  String get assistantNoNotes => 'Сè уште нема белешки. Прво напишете белешка.';

  @override
  String get assistantNoteEmpty => 'Оваа белешка е празна.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Создадени се $count задачи',
      one: 'Создадена е $count задача',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Создадени се $count картички',
      one: 'Создадена е $count картичка',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Создај $count',
      one: 'Создај $count',
      zero: 'Ништо не е избрано',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Се препознаваат: неозначени полиња „- [ ]“ и редови што почнуваат со TODO: или To do:';

  @override
  String get assistantCardsHint =>
      'Се препознаваат: „поим: дефиниција“, „поим — дефиниција“ и парови редови Q:/A:';

  @override
  String get assistantProviderHint =>
      'Користете која било услуга компатибилна со OpenAI. Клучот останува во безбедното складиште на овој уред и никогаш не се вклучува во резервните копии.';

  @override
  String get assistantEndpointHelp => 'На пример https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Оставете празно за да го задржите зачуваниот клуч';

  @override
  String get assistantApiKeyRequired => 'Внесете API клуч';

  @override
  String get assistantProviderSaved => 'Давателот е зачуван';

  @override
  String get assistantProviderRemoved => 'Давателот е отстранет и клучот е избришан';

  @override
  String get assistantRemoveProviderConfirm =>
      'Да се отстрани ли давателот и да се избрише ли зачуваниот API клуч од овој уред?';

  @override
  String get assistantAskEveryTime => 'Прашувај пред секое барање';

  @override
  String get assistantSummarizing => 'Се резимира…';

  @override
  String assistantSummaryNote(String host) {
    return 'Генерирано од $host. Проверете пред да се потпрете на тоа.';
  }

  @override
  String get assistantCopy => 'Копирај';

  @override
  String get assistantCopied => 'Копирано';

  @override
  String get assistantConfigure => 'Постави давател';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Сите настани во оваа серија се преместени';

  @override
  String get calendarEventReminder => 'Потсетник';

  @override
  String get calendarEventRepeat => 'Повторување';

  @override
  String get calendarEventColor => 'Боја';

  @override
  String get calendarDefaultColor => 'Користи ја бојата на типот';

  @override
  String get calendarEventLinkedTask => 'Поврзана задача';

  @override
  String get calendarEventNoTask => 'Нема поврзана задача';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count настани',
      one: '$count настан',
      zero: 'Нема настани',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачи со рок',
      one: '$count задача со рок',
      zero: 'нема задачи со рок',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Додајте настан или временски блок за да го испланирате овој ден.';

  @override
  String get calendarNow => 'Тековно време';

  @override
  String get calendarRecurring => 'Се повторува';

  @override
  String get calendarEventNotFound => 'Овој настан повеќе не постои';

  @override
  String get calendarEventLocalTime => 'Времињата се прикажани во временската зона на уредот';

  @override
  String get calendarEventDeleted => 'Настанот е преместен во корпата';

  @override
  String get calendarConflictMarker => 'Се преклопува со друг настан';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Промените важат за сите настани во оваа серија';

  @override
  String get calendarDragHintSeries =>
      'Со влечење на настан што се повторува се преместува целата серија';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, рок на задача';
  }

  @override
  String get startupErrorTitle => 'Вашите податоци не можеа да се отворат';

  @override
  String get startupErrorLocked =>
      'Клучот за шифрирање на податоците на овој уред не е достапен. Ништо не е избришано. Рестартирањето на уредот често помага. Ако неодамна го вративте уредот, наместо тоа вратете ги податоците од шифрирана резервна копија.';

  @override
  String get startupErrorCipher =>
      'Овој уред не го поддржува шифрираното складиште што ѝ е потребно на апликацијата. Ништо не е зачувано нешифрирано.';

  @override
  String get startupErrorRetry => 'Обиди се повторно';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картички чекаат повторување',
      one: '$count картичка чека повторување',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return 'За повторување: $count';
  }

  @override
  String flashcardsNewCount(int count) {
    return 'Нови: $count';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Научени картички: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Внесете 0 или повеќе';

  @override
  String get flashcardsSearchCards => 'Барај картички';

  @override
  String get flashcardsSearchEmpty => 'Ниедна картичка не одговара на пребарувањето';

  @override
  String get flashcardsCardAdded => 'Картичката е додадена';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Повторување $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Копирај во привремената меморија';

  @override
  String get flashcardsExportTitle => 'Извези шпил';

  @override
  String get flashcardsDeleteDeck => 'Избриши шпил';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, следно повторување за $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Прашање: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Одговор: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Прикажи прашање';

  @override
  String get flashcardsImportField => 'Картички за увоз';

  @override
  String get flashcardsNothingToStudy => 'Нема што да се учи';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картички подготвени за учење',
      one: '$count картичка подготвена за учење',
      zero: 'Нема подготвени картички',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Според оценката';

  @override
  String get flashcardsDeckNotFound => 'Овој шпил повеќе не е достапен.';

  @override
  String get focusSessionDeleted => 'Сесијата е избришана';

  @override
  String get focusDeleteConfirm =>
      'Да се избрише ли оваа сесија од историјата? Нејзиното време повеќе нема да се брои кон вашите цели.';

  @override
  String get focusUnlinkTask => 'Отстрани ја поврзаната задача';

  @override
  String get focusNoteHint => 'На што работевте?';

  @override
  String get focusTargetCaption => 'Измерено од зачуваните сесии';

  @override
  String get focusModeLabel => 'Режим на тајмерот';

  @override
  String focusUpNext(String phase) {
    return 'Следува: $phase';
  }

  @override
  String get focusStopwatchHint => 'Брои нагоре додека не запрете.';

  @override
  String get focusOpenHint => 'Без временско ограничување. Запрете кога ќе завршите.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Потсетниците се исклучени во поставките. Нема да бидете предупредени кога ќе заврши сесијата.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Сите';

  @override
  String get goalsFilterPeriod => 'Филтер за период';

  @override
  String get goalsFilterStatus => 'Филтер за статус';

  @override
  String get goalsEmptyFiltered => 'Ниедна цел не одговара на овој филтер';

  @override
  String goalsDueOn(String date) {
    return 'Рок $date';
  }

  @override
  String get goalsDeadline => 'Рок (опционално)';

  @override
  String get goalsNoDeadline => 'Без рок';

  @override
  String get goalsSetDeadline => 'Постави рок';

  @override
  String get goalsRemoveDeadline => 'Отстрани рок';

  @override
  String get goalsDescription => 'Опис (опционално)';

  @override
  String get goalsTitleLabel => 'Наслов';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Целта е постигната';

  @override
  String get goalsLogged => 'Напредокот е запишан';

  @override
  String get goalsEntryDeleted => 'Записот е отстранет';

  @override
  String get goalsDeleteEntry => 'Отстрани запис';

  @override
  String get goalsDeleted => 'Целта е избришана';

  @override
  String get goalsMarkActive => 'Означи како активна';

  @override
  String get goalsNotFound => 'Оваа цел повеќе не е достапна';

  @override
  String get goalsLinkTask => 'Поврзи задача';

  @override
  String get goalsNoLinkedTasks => 'Сè уште нема поврзани задачи';

  @override
  String get goalsUnlinkTask => 'Раздвои задача';

  @override
  String get goalsTaskOpen => 'Сè уште не е завршена';

  @override
  String get goalsTaskLinked => 'Задачата е поврзана';

  @override
  String get goalsTaskUnlinked => 'Задачата е раздвоена';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count завршени поврзани задачи',
      one: '$count завршена поврзана задача',
    );
    return 'Вклучува $_temp0 во овој период';
  }

  @override
  String get goalsHistoryAllTime =>
      'Записите од претходните периоди се чуваат тука, но се бројат само за својот период.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Денес направени $done од $total';
  }

  @override
  String get habitsNothingToday => 'Денес нема закажани навики';

  @override
  String get habitsDecrease => 'Отстрани едно означување';

  @override
  String get habitsResetToday => 'Ресетирај го денешниот ден';

  @override
  String get habitsCheckInHint => 'Долго притиснете за прилагодување';

  @override
  String get habitsName => 'Име';

  @override
  String get habitsColor => 'Боја';

  @override
  String get habitsValidationDays => 'Изберете барем еден ден';

  @override
  String habitsReminderAt(String time) {
    return 'Секој ден во $time';
  }

  @override
  String get habitsSetReminder => 'Постави време за потсетник';

  @override
  String get habitsRemoveReminder => 'Отстрани потсетник';

  @override
  String get habitsReminderNote =>
      'Потсетниците се појавуваат во закажаните денови кога се дозволени известувањата.';

  @override
  String get habitsArchived => 'Навиката е архивирана';

  @override
  String get habitsNotFound => 'Оваа навика повеќе не е достапна';

  @override
  String get habitsLast30 => 'Последните 30 дена';

  @override
  String get habitsConsistencyNone => 'Сè уште нема доволно податоци';

  @override
  String get habitsCalendar => 'Историја на означувања';

  @override
  String get habitsCalendarHint => 'Допрете ден за да го поправите.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count од $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Означувања во последните 90 дена. Доследност $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Означувања во последните 90 дена. Сè уште нема доволно податоци.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дена',
      one: '$count ден',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Паузираните денови не влијаат на вашата низа.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Архивирај навика';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пати на ден',
      one: '$count пат на ден',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Други белешки';

  @override
  String get notesAllNotebooks => 'Сите тетратки';

  @override
  String get notesNotebookName => 'Име на тетратката';

  @override
  String get notesNotebookColor => 'Боја';

  @override
  String get notesDeleteNotebook => 'Избриши тетратка';

  @override
  String get notesDeleteNotebookMessage =>
      'Тетратката се отстранува. Нејзините белешки се зачувуваат и се прикажуваат во Сите тетратки.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Закачете ги важните белешки за да останат на врвот.';

  @override
  String get notesEmptyFavorites => 'Белешките што ги означувате како омилени се појавуваат тука.';

  @override
  String get notesEmptyArchived => 'Архивираните белешки се појавуваат тука.';

  @override
  String get notesEmptyFiltered => 'Ниедна белешка не одговара на овие филтри.';

  @override
  String get notesArchivedSnack => 'Белешката е архивирана';

  @override
  String get notesUnarchivedSnack => 'Белешката е вратена меѓу вашите белешки';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Завршени $done од $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Форматирање';

  @override
  String get notesWrite => 'Пишувај';

  @override
  String get notesPreviewEmpty => 'Сè уште нема што да се прегледа.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Сè уште ниедна друга белешка не води тука. Поврзете ја оваа белешка со [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Дајте ѝ наслов на белешката за да можат други белешки да ја поврзат.';

  @override
  String get notesLinkedTasksEmpty => 'Нема задачи поврзани со оваа белешка.';

  @override
  String notesLinkMissing(String title) {
    return 'Сè уште нема белешка со наслов „$title“.';
  }

  @override
  String get notesNotFound => 'Оваа белешка повеќе не постои.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Ставка од списокот: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Отвори белешка $title';
  }

  @override
  String get notesTaskDone => 'Завршено';

  @override
  String get notifTimerDoneBody => 'Времето што го поставивте помина.';

  @override
  String get onboardingPrivatePointDevice => 'Се чува само на овој уред, шифрирано';

  @override
  String get onboardingPrivatePointAccount => 'Не е потребна сметка';

  @override
  String get onboardingPrivatePointTracking => 'Без аналитика, без следење';

  @override
  String get onboardingLanguageBody => 'Ова можете да го промените кога сакате во Поставки.';

  @override
  String get onboardingNext => 'Следно';

  @override
  String get projectsActive => 'Активни';

  @override
  String get projectNameHint => 'на пр. Лансирање производ';

  @override
  String get projectGoalHint => 'Како изгледа завршено?';

  @override
  String get projectNoDeadline => 'Без рок';

  @override
  String get projectTasksOpen => 'Отворени задачи';

  @override
  String get projectTasksCompleted => 'Завршени задачи';

  @override
  String get projectAddTask => 'Додај задача во проектот';

  @override
  String get projectAddNote => 'Нова белешка за проектот';

  @override
  String get projectLinkedNotes => 'Белешки';

  @override
  String get projectNoTasks => 'Сè уште нема задачи во овој проект';

  @override
  String get projectArchivedBadge => 'Архивиран';

  @override
  String get projectDeleted => 'Проектот е преместен во корпата';

  @override
  String get projectDeleteMessage => 'Задачите остануваат во вашиот список без проект.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, завршено $percent проценти';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count резултати',
      one: '$count резултат',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Филтрирај по тип';

  @override
  String searchRecentTap(String query) {
    return 'Барај повторно $query';
  }

  @override
  String get settingsLanguageHint =>
      'Изберете јазик за целата апликација. Имињата се прикажуваат на сопствениот јазик.';

  @override
  String get settingsThemeHint => 'Светла, темна или според системот';

  @override
  String settingsDecrease(String setting) {
    return 'Намали: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Зголеми: $setting';
  }

  @override
  String get settingsQuietStart => 'Почнува';

  @override
  String get settingsQuietEnd => 'Завршува';

  @override
  String get settingsNotificationsHint =>
      'Ова го зачувува вашиот избор во апликацијата. Системот исто така може да побара дозвола.';

  @override
  String get settingsDashboardHint =>
      'Повлечете за преуредување. Исклучете ги деловите што не ви требаат.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Премести $section';
  }

  @override
  String get settingsDashboardReset => 'Врати го стандардниот редослед';

  @override
  String get settingsAssistantDesc =>
      'Опционална помош при планирање. Ништо не го напушта овој уред освен ако поврзете давател.';

  @override
  String get settingsAssistantSetup => 'Асистент и поставување давател';

  @override
  String get settingsTrashDesc => 'Вратете или трајно избришете отстранети ставки';

  @override
  String get settingsEraseFirstBody =>
      'Ова не може да се врати. Размислете прво да направите шифрирана резервна копија.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Внесете $word';
  }

  @override
  String get settingsEraseFailed => 'Податоците не можеа да се избришат. Ништо не е променето.';

  @override
  String get settingsAboutTagline =>
      'Приватен работен простор за продуктивност што работи првенствено локално.';

  @override
  String get backupShowPassword => 'Прикажи лозинка';

  @override
  String get backupHidePassword => 'Скриј лозинка';

  @override
  String get backupSaved => 'Резервната копија е зачувана';

  @override
  String get backupFailed =>
      'Резервната копија не можеше да се направи. Вашите податоци не се променети.';

  @override
  String get backupReadFailed => 'Избраната датотека не можеше да се прочита.';

  @override
  String get backupRestoreFailed => 'Враќањето не успеа. Ништо не е променето.';

  @override
  String get backupShareSubject => 'Шифрирана резервна копија на Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'На секои $count дена',
      one: 'На секои $count ден',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'На секои $count недели',
      one: 'На секоја $count недела',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'На секои $count месеци',
      one: 'На секој $count месец',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'На секои $count години',
      one: 'На секоја $count година',
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
    return 'во: $days';
  }

  @override
  String get repeatEndsLabel => 'Завршува';

  @override
  String get repeatEndsAfter => 'По одреден број пати';

  @override
  String get repeatCountLabel => 'Повторувања';

  @override
  String get reminderNone => 'Без потсетник';

  @override
  String get reminderCustomTime => 'Во одредено време';

  @override
  String get a11yDecrease => 'Намали';

  @override
  String get a11yIncrease => 'Зголеми';

  @override
  String get pickTaskTitle => 'Изберете задача';

  @override
  String get pickTaskEmpty => 'Нема отворени задачи';

  @override
  String get tasksSearchTooltip => 'Барај задачи';

  @override
  String get tasksSectionOverdue => 'Задоцнети';

  @override
  String get tasksSectionToday => 'Денес';

  @override
  String get tasksRecurringSemantics => 'Се повторува';

  @override
  String get tasksFilterPriorityAtLeast => 'Најмал приоритет';

  @override
  String get tasksFilterCategory => 'Категорија';

  @override
  String get tasksFilterAnyCategory => 'Која било категорија';

  @override
  String get tasksFilterLabel => 'Етикета';

  @override
  String get tasksFilterAnyLabel => 'Која било етикета';

  @override
  String get tasksFilterReset => 'Ресетирај филтри';

  @override
  String get tasksViewByProject => 'По проект';

  @override
  String get tasksViewByPriority => 'По приоритет';

  @override
  String get tasksViewByCategory => 'По категорија';

  @override
  String get tasksGroupNoCategory => 'Без категорија';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачи',
      one: '$count задача',
    );
    return 'Блокирано од $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Оваа задача е блокирана од незавршени задачи. Да се заврши ли сепак?';

  @override
  String get taskStartFocus => 'Фокусирај се на оваа задача';

  @override
  String get taskRemoveDate => 'Отстрани датум';

  @override
  String get taskAllDay => 'Без одредено време';

  @override
  String get taskSaved => 'Задачата е зачувана';

  @override
  String get taskCreated => 'Задачата е создадена';

  @override
  String get taskReminderNeedsDue => 'Поставете рок за да користите релативни потсетници';

  @override
  String get taskLabelName => 'Име на етикетата';

  @override
  String get taskPlanning => 'Планирање';

  @override
  String get taskOrganize => 'Организација';

  @override
  String get taskBreakdown => 'Расчленување';

  @override
  String get trashDeleteTaskTitle => 'Трајно да се избрише ли оваа задача?';

  @override
  String get trashDeleteNoteTitle => 'Трајно да се избрише ли оваа белешка?';

  @override
  String get trashDeleteBody => 'Ова не може да се врати.';

  @override
  String get trashEmptyTitle => 'Да се испразни ли корпата?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ставки ќе бидат трајно избришани.',
      one: '$count ставка ќе биде трајно избришана.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Вратено';

  @override
  String get trashPurged => 'Трајно избришано';

  @override
  String trashDeletedOn(String date) {
    return 'Избришано $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ставки',
      one: '$count ставка',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Читај гласно';

  @override
  String get flashcardsTtsUnavailable => 'Претворањето текст во говор не е достапно на овој уред.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Нема инсталиран глас за овој јазик. Додајте го во поставките на Android за текст во говор.';

  @override
  String get calendarAgenda => 'Распоред';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Искра',
      'rocket': 'Ракета',
      'book': 'Книга',
      'work': 'Работа',
      'home': 'Дом',
      'heart': 'Срце',
      'code': 'Код',
      'palette': 'Палета',
      'fitness': 'Фитнес',
      'school': 'Училиште',
      'travel': 'Патување',
      'money': 'Заштеди',
      'other': 'Икона',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Повеќе полиња';

  @override
  String get cardFieldExample => 'Пример';

  @override
  String get cardFieldExplanation => 'Објаснување';

  @override
  String get cardFieldPronunciation => 'Изговор';

  @override
  String get cardFieldNotes => 'Дополнителни белешки';

  @override
  String get projectMilestones => 'Пресвртници';

  @override
  String get milestoneAdd => 'Додај пресвртница';

  @override
  String get milestoneEdit => 'Уреди пресвртница';

  @override
  String get milestoneTitleLabel => 'Пресвртница';

  @override
  String get milestoneNoDate => 'Без датум';

  @override
  String get milestonesEmpty =>
      'Сè уште нема пресвртници. Додајте контролни точки со датуми за да го следите проектот во календарот.';

  @override
  String get milestoneDeleted => 'Пресвртницата е избришана';

  @override
  String milestoneDoneA11y(String title) {
    return 'Означи ја пресвртницата „$title“ како завршена';
  }

  @override
  String calendarMilestone(String project) {
    return 'Пресвртница · $project';
  }

  @override
  String get tasksViewInbox => 'Сандаче';

  @override
  String get tasksViewArchived => 'Архивирани';

  @override
  String get tasksEmptyInbox =>
      'Тука доаѓаат задачите без проект или датум. Подредете ги кога ќе имате минута.';

  @override
  String get tasksEmptyArchived =>
      'Архивираните задачи се чуваат тука, подалеку од вашите списоци и потсетници.';

  @override
  String get taskArchivedBadge => 'Архивирана';

  @override
  String get taskStatusInProgress => 'Во тек';

  @override
  String get taskArchived => 'Задачата е архивирана';

  @override
  String get taskUnarchived => 'Задачата е вратена од архивата';

  @override
  String get focusPlanTitle => 'План на сесии';

  @override
  String focusPlanTotal(String duration) {
    return 'Вкупно $duration';
  }

  @override
  String get focusPlanRounds => 'Сесии за фокус';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Долга пауза по';

  @override
  String get focusPlanSkipLastBreak => 'Прескокни ја последната пауза';

  @override
  String get focusPlanAutoBreaks => 'Автоматски почнувај паузи';

  @override
  String get focusPlanAutoFocus => 'Автоматски почни фокус по пауза';

  @override
  String get focusPlanSave => 'Зачувај план';

  @override
  String get focusPlanNameHint => 'на пр. Подготовка за испит';

  @override
  String get focusPlanSaved => 'Планот е зачуван';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work мин. фокус, $rest мин. пауза';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Намали: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Зголеми: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Сесија $current од $total';
  }

  @override
  String get focusSeriesComplete => 'Серијата е завршена. Браво!';

  @override
  String get filterAll => 'Сите';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Увезени: $added · прескокнати дупликати: $duplicates · нецелосни редови: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Суспендирај картичка';

  @override
  String get flashcardsResume => 'Продолжи картичка';

  @override
  String get flashcardsSuspended => 'Картичката е суспендирана: нема да се закажува';

  @override
  String get flashcardsResumed => 'Картичката е повторно активна';

  @override
  String get flashcardsSuspendedFilter => 'Суспендирана';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown од $total картички';
  }

  @override
  String get flashcardsImportFile => 'Од датотека';

  @override
  String get speechTitle => 'Говор';

  @override
  String get speechAppLanguage => 'Јазик на апликацијата';

  @override
  String get speechFrontLanguage => 'Јазик на предната страна';

  @override
  String get speechBackLanguage => 'Јазик на задната страна';

  @override
  String get speechRepeat => 'Повтори го секое читање';

  @override
  String get speechRate => 'Брзина';

  @override
  String get speechAutoRead => 'Автоматски прочитај го прашањето';

  @override
  String get speechHint =>
      'Ги користи гласовите инсталирани на овој уред, без интернет. Ако јазикот нема глас, ќе бидете известени и ништо друго нема да се користи наместо него.';

  @override
  String get studyHowTitle => 'Како сакате да учите?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Повтори $count картички',
      one: 'Повтори $count картичка',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Вежбај ги сите картички (распоредот не се менува)';

  @override
  String get studyPracticeMistakes => 'Вежбај ги неодамнешните грешки';

  @override
  String get studyPracticeHint =>
      'Круговите за вежбање никогаш не менуваат кога се на ред картичките. Повторувањето го ажурира распоредот.';

  @override
  String get studyModeClassic => 'Класично';

  @override
  String get studyModeReverse => 'Обратно';

  @override
  String get studyModeMixed => 'Во двата правци';

  @override
  String get studyModeTyped => 'Внеси одговор';

  @override
  String get studyModeChoice => 'Повеќе избори';

  @override
  String get studyModeListening => 'Слушање';

  @override
  String get studyPractice => 'вежба';

  @override
  String get studyNoMistakes => 'Нема неодамнешни грешки во овој шпил. Одлично!';

  @override
  String get studyTypeAnswer => 'Внесете го одговорот';

  @override
  String get studyCheck => 'Провери';

  @override
  String get studyKnewIt => 'Знаев';

  @override
  String get studyDidntKnow => 'Не знаев';

  @override
  String studyMistakes(int count) {
    return 'Промашени ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Повтори ги промашените картички';

  @override
  String get studyCorrect => 'Точно';

  @override
  String get studyAlmost => 'Речиси — проверете го правописот';

  @override
  String get studyWrong => 'Не баш';

  @override
  String get studyShowText => 'Прикажи текст';

  @override
  String get flashcardsImportFileFailed =>
      'Датотеката не можеше да се отвори. Наместо тоа, можете да ја залепите содржината.';

  @override
  String get studyNoMatchingCards => 'Сè уште нема картички за овој избор.';

  @override
  String get studyPracticeNew => 'Само нови';

  @override
  String get studyPracticeHard => 'Тешки картички';

  @override
  String get studyPracticeFavorites => 'Омилени';

  @override
  String get studySessionSize => 'Картички по сесија';

  @override
  String get studySessionAll => 'Сите';

  @override
  String get studyOrder => 'Редослед';

  @override
  String get studyOrderDue => 'Прво најзадоцнетите';

  @override
  String get studyOrderRandom => 'Случајно';

  @override
  String get studyOrderHardest => 'Прво најтешките';

  @override
  String get flashcardsHard => 'Тешко';

  @override
  String get flashcardsFavorites => 'Омилени';

  @override
  String get flashcardsFavorite => 'Додај во омилени';

  @override
  String get flashcardsUnfavorite => 'Отстрани од омилени';

  @override
  String get flashcardsDuplicate => 'Дуплирај';

  @override
  String get flashcardsMoveTo => 'Премести во шпил';

  @override
  String get flashcardsNoOtherDeck => 'Прво направете друг шпил.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Преместени се $count картички',
      one: 'Преместена е $count картичка',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Додај етикета';

  @override
  String get flashcardsTagHint => 'на пр. глаголи';

  @override
  String flashcardsSelected(int count) {
    return 'Избрани: $count';
  }

  @override
  String get flashcardsSelectAll => 'Избери ги сите прикажани';

  @override
  String flashcardsSelectCard(String front) {
    return 'Избери $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Сеќавање $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Можен дупликат';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Овој шпил веќе има „$front“ → „$back“. Да се зачува ли сепак?';
  }

  @override
  String get flashcardsSaveAnyway => 'Зачувај сепак';

  @override
  String get flashcardsStats => 'Статистика';

  @override
  String get flashcardsStatTotal => 'Картички';

  @override
  String get flashcardsStatLearning => 'Во учење';

  @override
  String get flashcardsStatMatureCaption => 'Запаметени 21+ ден';

  @override
  String get flashcardsStatReviewsToday => 'Повторувања денес';

  @override
  String get flashcardsStatCorrect => 'Точни одговори';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Последни денови: $days';
  }

  @override
  String get flashcardsStatForget => 'Стапка на заборавање';

  @override
  String get flashcardsStatForgetCaption => '„Повторно“ кај научените картички';

  @override
  String get flashcardsStatRecall => 'Сеќавање сега';

  @override
  String get flashcardsStatRecallCaption => 'Проценка FSRS, повторени картички';

  @override
  String flashcardsStatActivity(int count) {
    return 'Повторувања на ден · вкупно $count';
  }

  @override
  String get flashcardsStatHistory => 'Најнови одговори';

  @override
  String get flashcardsStatNoHistory =>
      'Сè уште нема повторувања. Учете го шпилот за да го видите напредокот тука.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Прочитај гласно: $field';
  }

  @override
  String get speechVoice => 'Глас';

  @override
  String get speechVoiceDefault => 'Автоматски';

  @override
  String get speechVoiceOnline => 'потребен е интернет';

  @override
  String get speechTest => 'Тестирај глас';

  @override
  String get importNext => 'Преглед';

  @override
  String get importPreviewTitle => 'Поврзи колони со полиња';

  @override
  String get importIgnoreColumn => 'Игнорирај';

  @override
  String importColumn(int n) {
    return 'Колона $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Подготвени картички: $ready · ќе се прескокнат нецелосни редови: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Изберете кои колони се предната и задната страна.';

  @override
  String get actionMoveUp => 'Помести нагоре';

  @override
  String get actionMoveDown => 'Помести надолу';

  @override
  String get flashcardsLayoutTitle => 'Распоред на картичката';

  @override
  String get flashcardsLayoutHint =>
      'Преименувајте, скријте или преуредете ги дополнителните полиња на овој шпил. Содржината на картичките никогаш не се менува.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Прикажи $field при учење';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Откривај го одговорот чекор по чекор';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Прво се прикажува задната страна; секое дополнително поле се отвора со допир.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Прикажи $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Оваа датотека е поголема од $mb MB.';
  }

  @override
  String get flashcardsImage => 'Слика';

  @override
  String get flashcardsAudio => 'Аудио';

  @override
  String get flashcardsAddImage => 'Додај слика';

  @override
  String get flashcardsAddAudio => 'Додај аудио';

  @override
  String get flashcardsPlayAudio => 'Пушти снимка';

  @override
  String get flashcardsAudioUnavailable => 'Оваа снимка не може да се пушти на овој уред.';

  @override
  String get flashcardsCustomFields => 'Ваши полиња';

  @override
  String get flashcardsTemplates => 'Шаблони';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Поле $n';
  }

  @override
  String get flashcardsAddField => 'Додај поле';

  @override
  String get flashcardsFieldName => 'Име на полето';

  @override
  String get flashcardsFieldLangDefault => 'Јазик на страната';

  @override
  String get flashcardsTemplateConfirm =>
      'Шаблонот одредува како се прикажуваат полињата и ги додава своите полиња. Вашите картички и постојните полиња остануваат исти.';

  @override
  String get flashcardsApplyTemplate => 'Примени';

  @override
  String get templateVocabulary => 'Вокабулар';

  @override
  String get templateTwoTranslations => 'Збор со два превода';

  @override
  String get templateQuestionAnswer => 'Прашање и одговор';

  @override
  String get templateDefinition => 'Поим и дефиниција';

  @override
  String get templateGrammar => 'Граматичко правило';

  @override
  String get templateFieldPlural => 'Множина';

  @override
  String get templateFieldTranslation2 => 'Втор превод';

  @override
  String get templateFieldSynonyms => 'Синоними';

  @override
  String get templateFieldRule => 'Правило';

  @override
  String get deckCategory => 'Ниво или тема';

  @override
  String get deckCategoryHint => 'на пр. A1, Медицина';

  @override
  String get flashcardsSearchAll => 'Барај во сите картички';

  @override
  String get flashcardsSearchAllHint => 'Збор, превод, пример, белешка, етикета…';

  @override
  String get flashcardsAllDecks => 'Сите шпилови';

  @override
  String get flashcardsAllLanguages => 'Сите јазици';

  @override
  String get flashcardsLangUnset => 'Јазикот не е поставен';

  @override
  String get flashcardsLevelUnset => 'Без ниво или тема';

  @override
  String get flashcardsByLanguage => 'Напредок по јазик';

  @override
  String get flashcardsByLevel => 'Напредок по ниво или тема';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Шпилови: $decks · картички: $cards · научени: $mature · за повторување: $due · точни: $correct (30 дена)';
  }

  @override
  String get flashcardsRecord => 'Сними';

  @override
  String get flashcardsRecording => 'Се снима…';

  @override
  String get flashcardsRecordStop => 'Запри и задржи';

  @override
  String get flashcardsMicDenied =>
      'Пристапот до микрофонот е исклучен. Дозволете го во системските поставки за да снимате.';

  @override
  String get flashcardsRecordFailed => 'Снимањето не е достапно на овој уред.';

  @override
  String get soundsTitle => 'Звуци';

  @override
  String get soundsNature => 'Природа';

  @override
  String get soundsNoise => 'Шум за фокус';

  @override
  String get soundRain => 'Дожд';

  @override
  String get soundStorm => 'Грмотевици';

  @override
  String get soundRiver => 'Река';

  @override
  String get soundOcean => 'Морски бранови';

  @override
  String get soundFire => 'Логорски оган';

  @override
  String get soundForest => 'Шумски птици';

  @override
  String get soundNight => 'Летна ноќ';

  @override
  String get soundWhite => 'Бел шум';

  @override
  String get soundPink => 'Розов шум';

  @override
  String get soundBrown => 'Кафеав шум';

  @override
  String get soundsPlay => 'Пушти';

  @override
  String get soundsSleep => 'Тајмер за спиење';

  @override
  String get soundsSleepOff => 'Исклучено';

  @override
  String soundsSleepAt(String time) {
    return 'Запира во $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Истовремено можат да свират до $count звуци.';
  }

  @override
  String get soundsHint =>
      'Допрете звук за да почнете. Комбинирајте неколку и поставете ја јачината на секој.';

  @override
  String get soundsMixer => 'Мешавина';

  @override
  String soundsVolumeOf(String name) {
    return 'Јачина: $name';
  }

  @override
  String get soundsChannel => 'Звуци од природата';

  @override
  String get settingsEndTone => 'Звук за крај на тајмерот';

  @override
  String get toneGentle => 'Нежни сигнали';

  @override
  String get toneBeeps => 'Сигнали';

  @override
  String get toneWood => 'Чукање по дрво';

  @override
  String get toneBird => 'Птичји повик';

  @override
  String get toneStream => 'Поток';

  @override
  String get toneSystem => 'Звук на телефонот';

  @override
  String get speechOnPhone => 'На овој телефон';

  @override
  String get speechAllLanguages => 'Сите јазици';

  @override
  String get speechSearchLanguage => 'Барај јазици';

  @override
  String get speechGetVoices => 'Преземи повеќе гласови';

  @override
  String get speechGetVoicesHint =>
      'Гласови за јазици без глас може да се преземат во поставките за говор на телефонот.';

  @override
  String get speechSettingsFailed => 'Не можеа да се отворат поставките за говор на овој телефон.';

  @override
  String get speechVoiceMissing => 'Нема инсталиран глас';

  @override
  String get speechPause => 'Пауза меѓу повторувањата';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Прочитај го примерот со одговорот';

  @override
  String get flashListen => 'Слушај';

  @override
  String get flashListenNext => 'Следна картичка';

  @override
  String get flashListenEmpty => 'Нема картички за слушање.';

  @override
  String get flashViewTable => 'Табела';

  @override
  String get flashViewCards => 'Картички';

  @override
  String get flashSwapSides => 'Замени ги колоните';

  @override
  String get flashSort => 'Подреди';

  @override
  String get flashSortNewest => 'Прво најновите';

  @override
  String get flashSortAlpha => 'Од А до Ш';

  @override
  String get flashSortDue => 'Прво за повторување';

  @override
  String get flashSortHard => 'Прво најтешките';

  @override
  String get flashPasteCards => 'Залепи картички';

  @override
  String get flashClipboardEmpty => 'Во привремената меморија нема текст.';

  @override
  String get flashMenuAdd => 'Додај картички';

  @override
  String get flashMenuDeck => 'Шпил';

  @override
  String get flashToday => 'Денес';

  @override
  String get flashStudyNow => 'Учи';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Одговорени се $count картички',
      one: 'Одговорена е $count картичка',
      zero: 'Нема одговорени картички',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Дожд во шумата';

  @override
  String get autoBackupTitle => 'Автоматски резервни копии';

  @override
  String get autoBackupDesc => 'Секој ден на овој телефон; се чуваат последните 7';

  @override
  String get autoBackupHint =>
      'Овие копии остануваат на овој телефон и се бришат ако ја деинсталирате апликацијата. За да преминете на нов телефон, користете „Резервна копија“ за да зачувате датотека.';

  @override
  String get autoBackupNone => 'Сè уште нема автоматска резервна копија. Првата се прави денес.';

  @override
  String get autoBackupRestore => 'Врати';

  @override
  String autoBackupConfirm(String date) {
    return 'Да се заменат ли сите тековни податоци со резервната копија од $date?';
  }

  @override
  String get autoBackupRestored => 'Вратено.';

  @override
  String get errorLogTitle => 'Дневник на грешки';

  @override
  String get errorLogHint =>
      'Ако нешто тргне наопаку, се запишува тука: само видот на грешката и местото во кодот, никогаш вашата содржина. Споделете го за да помогнете проблемот да се реши.';

  @override
  String get errorLogEmpty => 'Нема запишани грешки.';

  @override
  String get errorLogClear => 'Исчисти';

  @override
  String get soundsWithFocus => 'Пуштај со сесиите за фокус';

  @override
  String get soundsWithFocusHint =>
      'Вашата мешавина почнува со сесија за фокус и се паузира за време на паузите.';

  @override
  String get soundsSavedMixes => 'Зачувани мешавини';

  @override
  String get soundsSaveMix => 'Зачувај ја оваа мешавина';

  @override
  String get soundsMixNameHint => 'Име, на пр. Дождлива библиотека';

  @override
  String soundsDeleteMix(String name) {
    return 'Да се избрише ли мешавината „$name“?';
  }

  @override
  String get settingsReviewReminderHint => 'Еднаш на ден, само кога има картички за повторување';

  @override
  String get settingsReviewTime => 'Време на потсетникот';

  @override
  String get shortcutFocus => 'Фокус';

  @override
  String get shortcutNewTask => 'Нова задача';

  @override
  String get shortcutReview => 'Повтори картички';

  @override
  String get shortcutSounds => 'Звуци од природата';

  @override
  String get myDayTitle => 'Почни го мојот ден';

  @override
  String get myDayHint => 'Вашиот ден на прв поглед, потоа фокус со еден допир';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачи за денес',
      one: '$count задача за денес',
      zero: 'Нема задачи за денес',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Денес нема повеќе настани';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Следно: $title во $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Остануваат $count навики',
      one: 'Останува $count навика',
      zero: 'Сите навики се направени',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Почни со сесија за фокус';

  @override
  String get hijriMonth1 => 'Мухарем';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Ребиул евел';

  @override
  String get hijriMonth4 => 'Ребиул ахир';

  @override
  String get hijriMonth5 => 'Џумадел ула';

  @override
  String get hijriMonth6 => 'Џумадел ахира';

  @override
  String get hijriMonth7 => 'Реџеп';

  @override
  String get hijriMonth8 => 'Шабан';

  @override
  String get hijriMonth9 => 'Рамазан';

  @override
  String get hijriMonth10 => 'Шевал';

  @override
  String get hijriMonth11 => 'Зул каде';

  @override
  String get hijriMonth12 => 'Зул хиџе';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year г. по Хиџра';
  }

  @override
  String get settingsHijri => 'Датуми по Хиџра';

  @override
  String get settingsHijriHint => 'Се прикажуваат во календарот и на почетниот екран (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дена',
      one: '$count ден',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Денес $done од $goal картички';
  }

  @override
  String get studyGoalReached => 'Дневната цел е постигната. Браво!';

  @override
  String get studyWeekTitle => 'Вашата недела';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'За 7 дена одговорени се $count картички',
      one: 'За 7 дена одговорена е $count картичка',
      zero: 'Нема одговорени картички за 7 дена',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration фокус за 7 дена';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Низа: $current · Најдобра: $best';
  }

  @override
  String get studyGoalTitle => 'Дневна цел (картички)';

  @override
  String get studyGoalOff => 'Исклучено';

  @override
  String get focusDndTitle => 'Не вознемирувај при фокус';

  @override
  String get focusDndHint => 'Се вклучува за секоја сесија за фокус и се исклучува на паузата';

  @override
  String get focusDndNeedsAccess =>
      'Дозволете пристап во поставките на телефонот за да го користите ова';

  @override
  String get voiceInput => 'Зборувај за да пишуваш';

  @override
  String get voiceInputPrompt => 'Зборувајте сега';

  @override
  String get voiceInputUnavailable =>
      'Гласовното внесување не е достапно на овој телефон. Инсталирајте или вклучете услуга за говор (на пример Препознавање и синтеза на говор од Google).';

  @override
  String get prayerFajr => 'Фаџр';

  @override
  String get prayerSunrise => 'Изгрејсонце';

  @override
  String get prayerDhuhr => 'Зухр';

  @override
  String get prayerAsr => 'Аср';

  @override
  String get prayerMaghrib => 'Магриб';

  @override
  String get prayerIsha => 'Иша';

  @override
  String get prayerMethodMwl => 'Муслиманска светска лига';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Мека';

  @override
  String get prayerMethodEgypt => 'Египетска општа управа';

  @override
  String get prayerMethodJordan => 'Јордан, Министерство за вакафи';

  @override
  String get prayerMethodKarachi => 'Универзитет за исламски науки, Карачи';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Регион на Заливот';

  @override
  String get prayerMethodKuwait => 'Кувајт';

  @override
  String get prayerMethodQatar => 'Катар';

  @override
  String get prayerMethodTurkey => 'Турција, Дијанет';

  @override
  String get prayerMethodSingapore => 'Сингапур, Малезија, Индонезија';

  @override
  String get prayerMethodFrance => 'Франција (12°)';

  @override
  String get prayerMethodRussia => 'Русија, Духовна управа';

  @override
  String prayerNotifTitle(String name) {
    return 'Време е за $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Време за молитва · $time';
  }

  @override
  String get prayerTitle => 'Времиња за молитва';

  @override
  String get prayerOffHint =>
      'Изберете го вашиот град за да ги видите времињата за молитва. Се пресметуваат на телефонот; не е потребен пристап до локацијата.';

  @override
  String get prayerChooseCity => 'Избери град';

  @override
  String get prayerCity => 'Град';

  @override
  String get prayerCitySearch => 'Пребарај град';

  @override
  String get prayerMethod => 'Метод на пресметка';

  @override
  String get prayerHanafiAsr => 'Ханефиски аср (подоцнежно време)';

  @override
  String get prayerReminders => 'Извести во секое време за молитва';

  @override
  String get prayerPauseFocus => 'Паузирај го фокусот во време за молитва';

  @override
  String get prayerPauseFocusHint => 'Тековната сесија се паузира; продолжете по молитвата';

  @override
  String get prayerTurnOff => 'Исклучи ги времињата за молитва';

  @override
  String get prayerAccuracyNote =>
      'Пресметаните времиња може да се разликуваат за неколку минути од локалната џамија.';

  @override
  String prayerNext(String name, String time) {
    return '$name во $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Оваа датотека од Anki го користи најновиот формат. Во Anki извезете ја повторно со вклучено „Support older Anki versions“, а потоа увезете ја таа датотека.';

  @override
  String get importTemplate => 'Шаблон за табела';

  @override
  String get importTemplateFront => 'јаболко';

  @override
  String get importTemplateBack => 'тркалезно овошје';

  @override
  String get importTemplateExample => 'Секој ден јадам јаболко.';

  @override
  String get importTemplateTag => 'храна';

  @override
  String get starterTitle => 'Почетни шпилови';

  @override
  String get starterHint =>
      'Додајте еден за веднаш да почнете да учите. Подоцна можете да го уредите или избришете.';

  @override
  String get starterAdd => 'Додај';

  @override
  String get starterWords => 'Секојдневни англиски зборови (арапски)';

  @override
  String get starterCapitals => 'Главни градови во светот';

  @override
  String get starterElements => 'Хемиски елементи';

  @override
  String get settingsAccent => 'Боја на акцентот';

  @override
  String get accentViolet => 'Виолетова';

  @override
  String get accentBlue => 'Сина';

  @override
  String get accentTeal => 'Тиркизна';

  @override
  String get accentGreen => 'Зелена';

  @override
  String get accentRose => 'Розова';

  @override
  String get accentAmber => 'Килибарна';

  @override
  String get settingsFlashTextSize => 'Големина на текстот на картичките';

  @override
  String get settingsFlashTextSample => 'Пример';

  @override
  String get widgetStartFocus => 'Допрете за фокус';

  @override
  String widgetFocusUntil(String time) {
    return 'Фокус до $time';
  }

  @override
  String get widgetNoCardsDue => 'Картички: сè е завршено';

  @override
  String get faqMyDayQ => 'Што прави „Почни го мојот ден“?';

  @override
  String get faqMyDayA =>
      'Еднаш на ден го нуди почетниот екран: ги гледате денешните задачи, следниот настан, преостанатите навики и картичките за повторување, а потоа со еден допир почнувате сесија за фокус. Долго притиснете ја иконата на апликацијата за брзи дејства или додајте го виџетот на почетниот екран за да ги гледате времето на фокус и картичките за повторување.';

  @override
  String get faqTasksQ => 'Како да додадам задача со потсетник?';

  @override
  String get faqTasksA =>
      'Допрете Нова задача на Почетна или + во Задачи. Внесете го насловот или изговорете го во микрофонот, потоа поставете рок, време и потсетник. Задоцнетите задачи се прикажуваат први.';

  @override
  String get faqFocusQ => 'Како работи тајмерот за фокус?';

  @override
  String get faqFocusA =>
      'Изберете Pomodoro, одбројување или слободно време и притиснете Почни; паузите може да следат автоматски. Во Поставки можете да го изберете звукот за крај, да вклучите Не вознемирувај при фокус и да ги пуштате звуците од природата со секоја сесија.';

  @override
  String get faqSoundsQ => 'Можам ли да мешам звуци од природата?';

  @override
  String get faqSoundsA =>
      'Вклучете до шест вистински снимки, поставете ја јачината на секоја и зачувајте ја мешавината со име. Тие продолжуваат да свират во позадина, а тајмерот за спиење може да ги запре. Не се користи музика.';

  @override
  String get faqCalendarQ => 'Може ли календарот да прикажува датуми по Хиџра?';

  @override
  String get faqCalendarA =>
      'Да. Датумите по Хиџра (Umm al-Qura) се прикажуваат автоматски на арапски, а во Поставки можат да се вклучат за кој било јазик. Настаните, задачите со рок и пресвртниците на проектите се прикажуваат заедно.';

  @override
  String get faqFlashcardsQ => 'Како повторувањето одлучува кои картички ќе ги видам?';

  @override
  String get faqFlashcardsA =>
      'Картичките што добро ги знаете се враќаат по подолги интервали, а оние што ги промашувате се враќаат наскоро (повторување со интервали). Оценете го секој одговор: Повторно, Тешко, Добро или Лесно. Поставете дневна цел и одржувајте ја низата на картичката Денес. Поставете датум на испит во шпилот за да видите колку дена остануваат и колку нови картички треба да научите секој ден. Подредете по „Мој редослед“ за да ги влечете картичките на место, допрете го звучникот на која било страна за да ја слушнете и поставете брзина и повторувања во менито Говор.';

  @override
  String get faqImportQ => 'Можам ли да донесам картички од Anki или Excel?';

  @override
  String get faqImportA =>
      'Да. Во шпилот изберете Увези, потоа датотека: Anki (.apkg), Excel (.xlsx) или CSV, и поврзете ги колоните. Користете „Шаблон за табела“ за да пишувате картички на компјутер. Сликите и звуците во датотеките од Anki не се увезуваат.';

  @override
  String get faqNotesQ => 'Што можат белешките?';

  @override
  String get faqNotesA =>
      'Пишувајте слободно со списоци за проверка и форматирање, закачете или означете ги важните белешки како омилени, додајте етикети и поврзете белешки со задачи. Копчето за микрофон ви овозможува диктирање. Нова белешка може да почне од шаблон (предавање, резиме на книга, дневник, неделен план), а копчето за слика додава фотографии.';

  @override
  String get faqHabitsQ => 'Како се бројат низите на навиките?';

  @override
  String get faqHabitsA =>
      'Денот се брои кога ќе ја достигнете целта на навиката во закажан ден. Паузирањето на навиката ја чува низата. Секоја навика може да има свое време за потсетник.';

  @override
  String get faqGoalsQ => 'Како целите го следат напредокот?';

  @override
  String get faqGoalsA =>
      'Дајте ѝ на целта количина и единица, а потоа запишувајте го напредокот. Нејзината картичка покажува каде сте и колку останува до рокот.';

  @override
  String get faqProjectsQ => 'За што служат проектите?';

  @override
  String get faqProjectsA =>
      'Групирајте задачи во проект, додајте пресвртници со датуми и следете го целокупниот напредок. Пресвртниците се прикажуваат и во календарот.';

  @override
  String get faqInsightsQ => 'Што покажуваат Увидите?';

  @override
  String get faqInsightsA =>
      'Вашето време на фокус, завршените задачи и учењето по денови и недели, со нежни предлози. Сè се пресметува на вашиот телефон.';

  @override
  String get faqSpacesQ => 'Каде се сите делови?';

  @override
  String get faqSpacesA =>
      'Просторите ги наведуваат сите делови од апликацијата (белешки, шпилови, навики, цели, проекти, звуци и друго) за главната лента да остане едноставна.';

  @override
  String get faqBackupQ => 'Како се прават резервни копии од моите податоци?';

  @override
  String get faqBackupA =>
      'Секој ден апликацијата тивко чува шифрирана копија на овој телефон и ги задржува последните 7. Во Поставки можете и да извезете резервна копија заштитена со лозинка и да ја вратите на друг телефон.';

  @override
  String get faqPrayerQ => 'Како функционираат времињата за молитва?';

  @override
  String get faqPrayerA =>
      'Изберете го вашиот град во Поставки → Времиња за молитва. Времињата се пресметуваат на телефонот со методот што се користи таму, а можете да ги промените методот и школата за аср. Можете да добивате известување за секоја молитва, а тековната сесија за фокус се паузира.';

  @override
  String get faqPrivacyQ => 'Каде се чуваат моите податоци?';

  @override
  String get faqPrivacyA =>
      'Само на вашиот телефон, во шифрирана база на податоци. Нема сметка ни следење. Интернетот го користат само функциите што самите ги вклучувате, како опционалниот асистент.';

  @override
  String get faqAssistantQ => 'Што е асистентот?';

  @override
  String get faqAssistantA =>
      'Опционален помошник што во Поставки го поврзувате со сопствена услуга за ВИ. Стандардно е исклучен и прашува пред да испрати каков било текст од белешка.';

  @override
  String get tourPlanTitle => 'Испланирајте го денот';

  @override
  String get tourPlanBody =>
      'Задачи, календар и навики на едно мирно место. Почнувајте го секое утро со „Почни го мојот ден“.';

  @override
  String get tourFocusTitle => 'Длабок фокус';

  @override
  String get tourFocusBody =>
      'Сесии со тајмер, вистински звуци од природата, Не вознемирувај и нежни тонови за крај.';

  @override
  String get tourLearnTitle => 'Учете засекогаш';

  @override
  String get tourLearnBody =>
      'Картички со повторување со интервали, говор на многу јазици и увоз од Anki или Excel.';

  @override
  String get helpTitle => 'Помош и прашања';

  @override
  String get helpOpen => 'Отвори';

  @override
  String get helpTour => 'Погледни го прегледот';

  @override
  String get tourNext => 'Следно';

  @override
  String get tourDone => 'Да почнеме';

  @override
  String get transferColTitle => 'Наслов';

  @override
  String get transferColNotes => 'Белешки';

  @override
  String get transferColBody => 'Текст';

  @override
  String get transferColDue => 'Рок';

  @override
  String get transferColPriority => 'Приоритет (0-3)';

  @override
  String get transferColDone => 'Завршено';

  @override
  String get transferColProject => 'Проект';

  @override
  String get transferColCategory => 'Категорија';

  @override
  String get transferTitle => 'Увоз и извоз';

  @override
  String get transferSaveAs => 'Зачувај како';

  @override
  String get transferImport => 'Увези од датотека';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV или табела во Word. Колони: наслов, рок (2026-12-31), приоритет 0-3, завршено, проект, белешки. Задачите што веќе се во апликацијата се прескокнуваат.';

  @override
  String get transferImportNotesHint =>
      'Датотеките Word, Markdown или текст стануваат белешка. Excel или CSV: една белешка по ред (наслов, текст).';

  @override
  String get transferSaved => 'Датотеката е зачувана';

  @override
  String get transferFailed => 'Датотеката не можеше да се направи. Ништо не е променето.';

  @override
  String get transferUnsupported =>
      'Оваа датотека не може да се прочита тука. Користете Excel, CSV, Word, Markdown или текст.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Додадени: $added',
      one: 'Додадено: $added',
      zero: 'Нема ништо ново за додавање',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Текст';

  @override
  String get transferAllNotes => 'Сите белешки';

  @override
  String get transferThisNote => 'Оваа белешка';

  @override
  String get transferDeckFormats => 'Зачувај како Excel, Word или PDF';

  @override
  String get faqFilesQ => 'Можам ли да користам датотеки Excel, Word или PDF?';

  @override
  String get faqFilesA =>
      'Да. Задачите и Белешките имаат копче за увоз и извоз (две стрелки) горе, а секој шпил го има во своето мени. Зачувајте како Excel, CSV, Word или PDF или донесете датотеки Excel, CSV, Word, Markdown или текст. Имињата на колоните може да бидат на кој било јазик на апликацијата, а зачуваните датотеки секогаш може повторно да се увезат.';

  @override
  String get tplLecture => 'Предавање';

  @override
  String get tplBook => 'Резиме на книга';

  @override
  String get tplJournal => 'Дневник';

  @override
  String get tplWeek => 'Неделен план';

  @override
  String get tplLectureBody => '## Клучни точки\n- \n\n## Прашања\n- [ ] \n\n## Резиме\n';

  @override
  String get tplBookBody =>
      '## Главна идеја\n\n## Што научив\n- \n\n## Цитати\n> \n\n## За примена\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Благодарен сум за\n- \n\n## Денешен фокус\n- [ ] \n\n## Белешки\n';

  @override
  String get tplWeekBody =>
      '## Цели за оваа недела\n- [ ] \n\n### Сабота\n- [ ] \n\n### Недела\n- [ ] \n\n### Понеделник\n- [ ] \n\n### Вторник\n- [ ] \n\n### Среда\n- [ ] \n\n### Четврток\n- [ ] \n\n### Петок\n- [ ] \n';

  @override
  String get tplHint => 'Почни од шаблон';

  @override
  String get noteImage => 'Слика';

  @override
  String get noteAddImage => 'Додај слика';

  @override
  String get noteImageUnreadable => 'Оваа датотека не е слика што апликацијата може да ја прочита.';

  @override
  String get noteImageTooLarge => 'Оваа слика е преголема.';

  @override
  String get examSet => 'Постави датум на испит';

  @override
  String get examDate => 'Датум на испитот';

  @override
  String get examToday => 'Испитот е денес. Среќно!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Испит за $count дена',
      one: 'Испит за $count ден',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'учете $count нови картички дневно',
      one: 'учете $count нова картичка дневно',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'сите картички се научени, продолжете со повторување';

  @override
  String examRaiseLimit(int count) {
    return 'Прикажувај нови картички дневно: $count';
  }

  @override
  String get backupDriveHint =>
      'За да чувате копија на интернет, изберете Google Drive (или друга апликација во облак) на екранот за зачувување што ќе се отвори.';

  @override
  String get flashShareDeck => 'Сподели го шпилот со пријател';

  @override
  String get flashSortManual => 'Мој редослед (влечење)';

  @override
  String get flashReorderHint => 'Држете ја рачката и повлечете картичка за да ја преместите.';

  @override
  String get flashReorderNeedsAll =>
      'Исчистете го пребарувањето и филтрите за да влечете картички.';

  @override
  String get flashDragHandle => 'Повлечете за преместување';

  @override
  String get reportTitle => 'Месечен извештај';

  @override
  String get reportFocus => 'Време на фокус';

  @override
  String reportSessions(int count) {
    return 'Сесии: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Најдобар ден: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Активни денови: $count';
  }

  @override
  String get reportCards => 'Повторени картички';

  @override
  String reportCardsKnown(String percent) {
    return 'Запаметено: $percent';
  }

  @override
  String get reportTasks => 'Завршени задачи';

  @override
  String get reportHabits => 'Означени навики';

  @override
  String get reportEmpty => 'Овој месец сè уште ништо не е запишано.';

  @override
  String get reportSave => 'Зачувај како PDF или Word';

  @override
  String get reportPrevMonth => 'Претходен месец';

  @override
  String get reportNextMonth => 'Следен месец';

  @override
  String get careTitle => 'Грижа за телефонот и податоците';

  @override
  String get storageTitle => 'Складиште';

  @override
  String get storageSubtitle => 'Што зафаќа простор и чистење на некористени слики';

  @override
  String get storagePictures => 'Слики во белешките';

  @override
  String get storageCardMedia => 'Слики и аудио во картичките';

  @override
  String get storageText => 'Текст на белешките';

  @override
  String get storageFree => 'Слободно на телефонот';

  @override
  String get storageLow =>
      'Телефонот е речиси полн. Ослободете простор за резервните копии и потсетниците да продолжат да работат.';

  @override
  String storageUnused(int count, String size) {
    return 'Некористени слики: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Нема некористени слики. Сè е уредно.';

  @override
  String get storageClean => 'Отстрани ги некористените слики';

  @override
  String storageCleaned(int count) {
    return 'Отстранети слики: $count';
  }

  @override
  String get storageHint =>
      'Сликата се смета за некористена само кога ниедна белешка не ја прикажува, вклучително и белешките во корпата.';

  @override
  String get batteryTitle => 'Нека работат потсетниците';

  @override
  String get batterySubtitle =>
      'Некои телефони ги запираат апликациите во позадина. Проверете го вашиот.';

  @override
  String get batteryStatusOk =>
      'Штедењето батерија не ја ограничува оваа апликација. Потсетниците и звуците треба да стигнуваат навреме.';

  @override
  String get batteryStatusLimited =>
      'Штедењето батерија може да ја запре оваа апликација во позадина, па потсетниците и звуците може да доцнат или да изостанат.';

  @override
  String get batteryOpen => 'Отвори поставки за батерија';

  @override
  String get batteryOpenApp => 'Отвори поставки за апликацијата';

  @override
  String get batteryGeneric =>
      'Во поставките за батерија изберете ја оваа апликација и поставете „Неограничено“ (или „Не оптимизирај“).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: отворете и Безбедност › Дозволи › Автоматско стартување и вклучете ја оваа апликација, а штедењето батерија поставете на „Без ограничувања“.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: отворете Батерија › оваа апликација и дозволете активност во позадина и автоматско стартување; заклучете ја апликацијата во списокот неодамнешни.';

  @override
  String get batterySamsung =>
      'Samsung: Батерија › Ограничувања за користење во позадина: отстранете ја оваа апликација од апликациите во мирување и длабоко мирување.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Стартување апликации › оваа апликација › рачно управување и дозволете автоматско стартување, секундарно стартување и работа во позадина.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Батерија › Потрошувачка на енергија во позадина › дозволете ја оваа апликација и вклучете автоматско стартување во дозволите.';

  @override
  String get whatsNewTitle => 'Што е ново';

  @override
  String get whatsNewSubtitle => 'Најновите промени во неколку реда';

  @override
  String get whatsNewDone => 'Разбрав';

  @override
  String get whatsNewOrderTitle => 'Влечете ги картичките по свој редослед';

  @override
  String get whatsNewOrderBody =>
      'Во шпилот изберете Подреди › Мој редослед, потоа држете ја рачката и влечете.';

  @override
  String get whatsNewSpeechTitle => 'Звучник на секоја страна од картичката';

  @override
  String get whatsNewSpeechBody =>
      'Допрете го за да го слушнете зборот или преводот. Брзината, повторувањата и гласот се во менито за повторување. Јазикот се препознава од текстот.';

  @override
  String get whatsNewReportTitle => 'Месечен извештај';

  @override
  String get whatsNewReportBody =>
      'Во Увиди допрете ја иконата за извештај за да го видите месецот и да го зачувате како PDF или Word.';

  @override
  String get whatsNewCareTitle => 'Грижа за телефонот и податоците';

  @override
  String get whatsNewCareBody =>
      'Поставките сега имаат страница за складиште со чистење слики и водич за батерија за марката на вашиот телефон.';

  @override
  String get whatsNewSoundTitle => 'Помирни звуци';

  @override
  String get whatsNewSoundBody =>
      'Звуците од природата се помеки и потивки, а картичките со слики поубави.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Проверено $date: најновата резервна копија се отвора правилно.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Проверено $date: пронајдена е оштетена резервна копија и заменета е со нова.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Проверено $date: најновата резервна копија не можеше да се отвори. Сами зачувајте датотека со резервна копија од Поставки.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Обично учите околу $time';
  }

  @override
  String get smartReviewTimeUse => 'Користи';

  @override
  String get widgetNewNote => 'Нова белешка';

  @override
  String get noteConnections => 'Етикети, врски и задачи';

  @override
  String get navCards => 'Картички';

  @override
  String get studyAnswerWay => 'Како да одговарате';

  @override
  String get studyMorePractice => 'Дополнителна вежба';

  @override
  String get studySessionSettings => 'Поставки за сесијата';

  @override
  String get focusAdjustTitle => 'Вашата сесија';

  @override
  String get focusPresetsTitle => 'Готови';

  @override
  String get focusPresetStudy => 'Учење';

  @override
  String get focusPresetDeep => 'Длабока работа';

  @override
  String get focusPresetQuick => 'Брз спринт';

  @override
  String get focusPresetReading => 'Читање';

  @override
  String get focusPresetWorkout => 'Кругови вежбање';

  @override
  String get focusAdjustMinutes => 'Должина на фокусот';

  @override
  String get focusAdjustBreak => 'Должина на паузата';

  @override
  String get focusAdjustRounds => 'Кругови';

  @override
  String get focusRoundsOpen => 'Без ограничување';

  @override
  String focusMinutesShort(String n) {
    return '$n мин.';
  }

  @override
  String get focusTapToAdjust => 'Допрете за да го промените времето';

  @override
  String get flashArrangeDecks => 'Подреди шпилови';

  @override
  String get flashDeckActions => 'Опции за шпилот';

  @override
  String get starterBrowse => 'Готови шпилови';

  @override
  String get starterBrowseHint => 'Додајте еден со допир и почнете да учите';

  @override
  String get dashOpenDecks => 'Отворете ги картичките';

  @override
  String speechVoiceNumber(String n) {
    return 'Глас $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Одличен тек. Одмор $m мин.?';
  }

  @override
  String get focusFlowBreakStart => 'Почни пауза';

  @override
  String tasksFinishAt(String time) {
    return 'Почнете сега и сè ќе завршите до $time';
  }

  @override
  String get focusCalmPacing => 'Мирно темпо';

  @override
  String get focusCalmPacingHint => 'Само цели минути и прстенот, без секунди што чукаат';

  @override
  String get focusFlipHint => 'Свртете го телефонот со екранот надолу за да почнете';

  @override
  String get focusImmersive => 'Режим на потопување';

  @override
  String get focusImmersiveBlack => 'Целосно црно (штеди батерија)';

  @override
  String get focusFlipToFocus => 'Сврти за фокус';

  @override
  String get focusFlipToFocusHint =>
      'Во режим на потопување: со екранот надолу почнува, кревањето паузира';

  @override
  String get guardTitle => 'Заштита од одвлекување';

  @override
  String get guardSubtitle => 'Паузирајте ги апликациите што ве одвлекуваат додека сте фокусирани';

  @override
  String get guardSwitch => 'Паузирај ги апликациите што одвлекуваат';

  @override
  String get guardSwitchHint => 'За време на сесиите за фокус и во часовите на Временската заштита';

  @override
  String get guardNeedsAccess =>
      'Потребен е прекинувачот за пристапност: допрете за да го вклучите';

  @override
  String get guardDisclosureTitle => 'Како работи заштитата';

  @override
  String get guardDisclosureBody =>
      'За да ги паузира апликациите што ги избирате, Deep Focus ја користи услугата за пристапност на Android за да види која апликација е отворена. Кога е вклучено „Затвори Shorts и Reels“, проверува и дали на екранот има плеер за кратки видеа.\n\nНе чита текст, не зачувува ништо од она што го гледа и ништо не праќа никаде: сè останува на вашиот телефон. Можете да ја исклучите кога сакате во поставките за пристапност.';

  @override
  String get guardAgree => 'Прифати и отвори поставки';

  @override
  String get guardModeGentle => 'Благ';

  @override
  String get guardModeStrict => 'Строг';

  @override
  String get guardGentleHint => 'Пауза од 5 секунди за дишење, потоа вие избирате';

  @override
  String get guardStrictHint => 'Избраните апликации остануваат затворени до крајот на фокусот';

  @override
  String get guardApps => 'Апликации за паузирање';

  @override
  String get guardAppsAllowed => 'Дозволени апликации';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count апликации',
      one: '$count апликација',
      zero: 'Сè уште ништо не е избрано',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Дозволи само избрани апликации';

  @override
  String get guardAllowlistHint =>
      'Сите други апликации се паузираат; повиците, поставките и тастатурата секогаш работат';

  @override
  String get guardShorts => 'Затвори Shorts и Reels';

  @override
  String get guardShortsHint =>
      'Секогаш кога заштитата е вклучена. Без гаранција: овие апликации често се менуваат';

  @override
  String get guardSchedule => 'Временска заштита';

  @override
  String get guardScheduleHint =>
      'Штити и во одредени денови и часови, на пр. на училиште или на работа';

  @override
  String get guardFrom => 'Од';

  @override
  String get guardTo => 'До';

  @override
  String get guardSearchApps => 'Барај апликации';

  @override
  String get guardNoApps => 'Не се пронајдени апликации';

  @override
  String get guardPrivacy =>
      'Работи само на вашиот телефон: заштитата гледа која апликација е отворена, никогаш што има во неа, и ништо не праќа.';

  @override
  String get guardBreathe => 'Вдишете… и издишете';

  @override
  String get guardQuestion => 'Дали ви треба оваа апликација сега?';

  @override
  String get guardBackToFocus => 'Назад кон фокусот';

  @override
  String get guardOpenFive => 'Отвори за 5 минути';

  @override
  String get guardStrictBody => 'Оваа апликација е паузирана до крајот на вашето време на фокус.';

  @override
  String get guardShortsClosed => 'Кратките видеа се затвораат додека е вклучена заштитата';

  @override
  String get faqGuardQ => 'Како да ги запрам апликациите што ме одвлекуваат додека сум фокусиран?';

  @override
  String get faqGuardA =>
      'Отворете Фокус → поставки за тајмерот → Заштита од одвлекување. Изберете апликации, потоа Благ (5 секунди дишење и прашањето „Дали ви треба оваа апликација сега?“) или Строг (остануваат затворени). Работи за време на сесиите за фокус и, со Временската заштита, во деновите и часовите што ги поставувате. „Дозволи само избрани апликации“ паузира сè друго; повиците, поставките и тастатурата секогаш работат. Android еднаш ќе ве замоли да ја вклучите заштитата во поставките за пристапност. Гледа само која апликација е отворена и ништо не праќа.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Преместено во „$name“';
  }

  @override
  String get notesDragHint => 'Држете белешка и повлечете ја на тетратка';

  @override
  String get guardReviewCards => 'Подобро повтори картички';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ве чекаат $count картички',
      one: 'Ве чека $count картичка',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Итно: држете 10 секунди';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Продолжете да држите… $n';
  }

  @override
  String get guardWeekTitle => 'Оваа недела';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count паузи',
      one: '$count пауза',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'враќање кон фокусот $count пати',
      one: 'враќање кон фокусот $count пат',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Преименувај зборови';

  @override
  String get wordsSubtitle => 'Ваш збор за кој било текст во апликацијата';

  @override
  String get wordsHint =>
      'Допрете текст за да го промените. Вашите зборови важат само за овој јазик и се чуваат во резервните копии.';

  @override
  String get wordsSearch => 'Барај текстови';

  @override
  String get wordsChangedOnly => 'Само променети';

  @override
  String wordsOriginal(String text) {
    return 'Оригинал: $text';
  }

  @override
  String get wordsReset => 'Користи оригинал';

  @override
  String get wordsResetAll => 'Ресетирај ги сите зборови';

  @override
  String get wordsResetAllConfirm => 'Сите текстови на овој јазик се враќаат на оригиналот.';

  @override
  String get wordsNone => 'Не е пронајден текст';

  @override
  String get settingsLanguageSearch => 'Барај јазици';

  @override
  String get settingsLanguageNoMatch => 'Ниеден јазик не одговара';

  @override
  String get soundsMyMusic => 'Вашето аудио';

  @override
  String get soundsMusicHint =>
      'Пуштете аудиодатотека од телефонот. Ништо не се копира ниту прикачува.';

  @override
  String get soundsChooseMusic => 'Изберете аудио';

  @override
  String get soundsRemoveMusic => 'Отстрани аудио';

  @override
  String get wordPacksTitle => 'Пакети зборови';

  @override
  String get wordPacksHint =>
      'Списоци зборови по теми. Преземете го само јазикот што го сакате, а потоа слободно уредувајте или бришете картички.';

  @override
  String get wordPacksFailed => 'Преземањето не успеа. Проверете ја врската.';

  @override
  String get wordPacksEmpty => 'Зборовите за овој јазик сè уште се подготвуваат.';
}
