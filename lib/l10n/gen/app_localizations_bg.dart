// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Начало';

  @override
  String get navTasks => 'Задачи';

  @override
  String get navFocus => 'Фокус';

  @override
  String get navCalendar => 'Календар';

  @override
  String get navSpaces => 'Пространства';

  @override
  String get moduleProjects => 'Проекти';

  @override
  String get moduleNotes => 'Бележки';

  @override
  String get moduleFlashcards => 'Карти';

  @override
  String get moduleGoals => 'Цели';

  @override
  String get moduleHabits => 'Навици';

  @override
  String get moduleAnalytics => 'Статистика';

  @override
  String get moduleSearch => 'Търсене';

  @override
  String get moduleAssistant => 'Асистент';

  @override
  String get moduleSettings => 'Настройки';

  @override
  String get moduleTrash => 'Кошче';

  @override
  String get actionSave => 'Запазване';

  @override
  String get actionCancel => 'Отказ';

  @override
  String get actionDelete => 'Изтриване';

  @override
  String get actionEdit => 'Редактиране';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionAdd => 'Добавяне';

  @override
  String get actionCreate => 'Създаване';

  @override
  String get actionClose => 'Затваряне';

  @override
  String get actionBack => 'Назад';

  @override
  String get actionUndo => 'Отмяна';

  @override
  String get actionRestore => 'Възстановяване';

  @override
  String get actionRetry => 'Нов опит';

  @override
  String get actionContinue => 'Продължаване';

  @override
  String get actionSkip => 'Пропускане';

  @override
  String get actionArchive => 'Архивиране';

  @override
  String get actionUnarchive => 'Изваждане от архива';

  @override
  String get actionPin => 'Закачане';

  @override
  String get actionUnpin => 'Откачане';

  @override
  String get actionMore => 'Още опции';

  @override
  String get actionClear => 'Изчистване';

  @override
  String get actionSearch => 'Търсене';

  @override
  String get actionSort => 'Сортиране';

  @override
  String get actionShare => 'Споделяне';

  @override
  String get actionImport => 'Импортиране';

  @override
  String get actionExport => 'Експортиране';

  @override
  String get actionPause => 'Пауза';

  @override
  String get actionResume => 'Продължаване';

  @override
  String get actionStart => 'Старт';

  @override
  String get actionStop => 'Спиране';

  @override
  String get actionComplete => 'Завършване';

  @override
  String get actionDeleteForever => 'Изтриване завинаги';

  @override
  String get actionEmptyTrash => 'Изпразване на кошчето';

  @override
  String get actionUnlink => 'Разкачане';

  @override
  String get actionCustomize => 'Персонализиране';

  @override
  String get actionPreview => 'Визуализация';

  @override
  String get actionLog => 'Отбелязване на напредък';

  @override
  String get stateLoading => 'Зареждане…';

  @override
  String get stateSaving => 'Запазване…';

  @override
  String get stateSaved => 'Запазено';

  @override
  String get stateUnsaved => 'Незапазени промени';

  @override
  String get errorGenericTitle => 'Нещо се обърка';

  @override
  String get errorGenericMessage => 'Данните ви са в безопасност. Опитайте отново.';

  @override
  String get errorLoadFailed => 'Това съдържание не можа да се зареди.';

  @override
  String get errorSaveFailed => 'Запазването не бе успешно. Промените ви са още тук.';

  @override
  String get validationRequired => 'Това поле е задължително';

  @override
  String get validationTitleRequired => 'Въведете заглавие';

  @override
  String get validationNameRequired => 'Въведете име';

  @override
  String get validationTooLong => 'Твърде дълго е';

  @override
  String get validationEndBeforeStart => 'Краят трябва да е след началото';

  @override
  String get validationStartAfterDue => 'Началната дата трябва да е преди крайния срок';

  @override
  String get validationPositiveNumber => 'Въведете число, по-голямо от нула';

  @override
  String get validationDependencyCycle => 'Така ще се получи циклична зависимост';

  @override
  String get validationInvalidRepeat => 'Това правило за повторение не е валидно';

  @override
  String get deletedItem => 'Преместено в кошчето';

  @override
  String get untitled => 'Без заглавие';

  @override
  String get noProject => 'Без проект';

  @override
  String get greetingMorning => 'Добро утро';

  @override
  String get greetingAfternoon => 'Добър ден';

  @override
  String get greetingEvening => 'Добър вечер';

  @override
  String get dashFocusToday => 'Днешният фокус';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done от $target';
  }

  @override
  String get dashStartFocus => 'Старт на фокус';

  @override
  String get dashFocusRunning => 'Сесията тече';

  @override
  String get dashTodayTasks => 'За днес';

  @override
  String get dashAgenda => 'Програма';

  @override
  String get dashHabits => 'Навици за днес';

  @override
  String get dashGoals => 'Цели';

  @override
  String get dashReview => 'Преговор';

  @override
  String get dashRecentNotes => 'Скорошни бележки';

  @override
  String get dashInsight => 'Предложение';

  @override
  String get dashSeeAll => 'Всички';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карти за преговор',
      one: '1 карта за преговор',
      zero: 'Няма карти за преговор',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Преговор сега';

  @override
  String get dashCustomizeTitle => 'Раздели на началния екран';

  @override
  String get dashCustomizeHint => 'Изберете какво да се показва на началния екран.';

  @override
  String get dashSectionFocus => 'Фокус';

  @override
  String get dashSectionToday => 'Задачи за днес';

  @override
  String get dashSectionAgenda => 'Програма';

  @override
  String get dashSectionHabits => 'Навици';

  @override
  String get dashSectionGoals => 'Цели';

  @override
  String get dashSectionReview => 'Преговор на карти';

  @override
  String get dashSectionNotes => 'Скорошни бележки';

  @override
  String get dashSectionInsight => 'Предложения';

  @override
  String get quickAddTask => 'Нова задача';

  @override
  String get quickAddNote => 'Нова бележка';

  @override
  String get quickAddEvent => 'Ново събитие';

  @override
  String get quickStartFocus => 'Фокус';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Имате $count просрочени задачи. Започнете с най-важната.',
      one: 'Имате 1 просрочена задача. Пренасрочете я или първо я завършете.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Остават ви $minutes минути до дневната цел за фокус.';
  }

  @override
  String get insightCardsDue => 'Преговорете картите си сега, докато са пресни.';

  @override
  String get insightAllClear =>
      'Всичко върви по план. Планирайте утрешния ден или си дайте спокойна почивка.';

  @override
  String insightHabitStreak(String habit) {
    return 'Запазете поредицата: „$habit“ още чака днес.';
  }

  @override
  String get focusTitle => 'Фокус';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Таймер';

  @override
  String get focusModeCountUp => 'Хронометър';

  @override
  String get focusModeOpen => 'Свободно';

  @override
  String get focusPhaseWork => 'Фокус';

  @override
  String get focusPhaseShortBreak => 'Кратка почивка';

  @override
  String get focusPhaseLongBreak => 'Дълга почивка';

  @override
  String get focusReady => 'Когато сте готови';

  @override
  String get focusPaused => 'На пауза';

  @override
  String get focusRunning => 'Във фокус';

  @override
  String get focusDuration => 'Продължителност';

  @override
  String get focusLinkTask => 'Свързване на задача';

  @override
  String get focusLinkedTask => 'Работя по';

  @override
  String get focusNoTask => 'Няма свързана задача';

  @override
  String focusCycle(int current, int total) {
    return 'Цикъл $current от $total';
  }

  @override
  String get focusSkipBreak => 'Пропускане на почивката';

  @override
  String get focusStartBreak => 'Начало на почивка';

  @override
  String get focusStartNext => 'Следващ фокус';

  @override
  String get focusSessionComplete => 'Сесията завърши';

  @override
  String get focusSessionStopped => 'Сесията е запазена';

  @override
  String focusSessionSummary(String duration) {
    return 'Бяхте във фокус $duration.';
  }

  @override
  String get focusAddNote => 'Добавете бележка за тази сесия';

  @override
  String get focusHistory => 'История';

  @override
  String get focusNoHistory => 'Завършените сесии ще се показват тук';

  @override
  String get focusTargets => 'Цели';

  @override
  String get focusDailyTarget => 'Дневна цел';

  @override
  String get focusWeeklyTarget => 'Седмична цел';

  @override
  String get focusOutcomeCompleted => 'Завършена';

  @override
  String get focusOutcomeInterrupted => 'Спряна по-рано';

  @override
  String get focusRecovered => 'Сесията продължи, докато приложението беше затворено.';

  @override
  String get focusCompletedWhileAway =>
      'Сесия приключи, докато приложението беше затворено, и беше запазена.';

  @override
  String get focusNotificationsOff =>
      'Известията са изключени. Няма да бъдете уведомени, когато сесията приключи.';

  @override
  String get focusBatteryHint =>
      'Някои устройства спират приложенията на заден план. Таймерът остава точен, но известията може да закъснеят. Разрешете неограничено използване на батерията за надеждни известия.';

  @override
  String get focusOpenSettings => 'Отваряне на настройките';

  @override
  String get focusStopConfirmTitle => 'Да се спре ли тази сесия?';

  @override
  String get focusStopConfirmMessage => 'Времето за фокус досега ще бъде запазено.';

  @override
  String get focusDiscard => 'Отхвърляне';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минути',
      one: '1 минута',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, остават $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, изминаха $time';
  }

  @override
  String get focusDeleteSession => 'Изтриване на сесията';

  @override
  String get tasksTitle => 'Задачи';

  @override
  String get tasksViewToday => 'Днес';

  @override
  String get tasksViewUpcoming => 'Предстоящи';

  @override
  String get tasksViewAll => 'Всички';

  @override
  String get tasksViewOverdue => 'Просрочени';

  @override
  String get tasksViewCompleted => 'Завършени';

  @override
  String get tasksQuickAddHint => 'Добавете задача…';

  @override
  String get tasksEmptyTitle => 'Всичко е готово';

  @override
  String get tasksEmptyMessage => 'Добавете задача, за да оформите деня си.';

  @override
  String get tasksEmptyCompleted => 'Завършените задачи ще се показват тук.';

  @override
  String get taskNew => 'Нова задача';

  @override
  String get taskEdit => 'Редактиране на задача';

  @override
  String get taskTitleLabel => 'Заглавие';

  @override
  String get taskTitleHint => 'Какво трябва да се направи?';

  @override
  String get taskDescriptionLabel => 'Описание';

  @override
  String get taskNotesLabel => 'Бележки';

  @override
  String get taskPriority => 'Приоритет';

  @override
  String get priorityNone => 'Няма';

  @override
  String get priorityLow => 'Нисък';

  @override
  String get priorityMedium => 'Среден';

  @override
  String get priorityHigh => 'Висок';

  @override
  String get priorityUrgent => 'Спешен';

  @override
  String get taskDueDate => 'Краен срок';

  @override
  String get taskStartDate => 'Начална дата';

  @override
  String get taskReminder => 'Напомняне';

  @override
  String get taskRepeat => 'Повторение';

  @override
  String get taskProject => 'Проект';

  @override
  String get taskCategory => 'Категория';

  @override
  String get taskCategoryHint => 'напр. Работа, Дом, Учене';

  @override
  String get taskEstimateMinutes => 'Оценка (минути)';

  @override
  String get taskTracked => 'Измерен фокус';

  @override
  String get taskLabels => 'Етикети';

  @override
  String get taskAddLabel => 'Нов етикет';

  @override
  String get taskChecklist => 'Контролен списък';

  @override
  String get taskAddChecklistItem => 'Добавяне на елемент';

  @override
  String get taskSubtasks => 'Подзадачи';

  @override
  String get taskAddSubtask => 'Добавяне на подзадача';

  @override
  String get taskDependencies => 'Блокирана от';

  @override
  String get taskAddDependency => 'Добавяне на блокираща задача';

  @override
  String get taskLinkedNotes => 'Свързани бележки';

  @override
  String get taskSetTime => 'Задаване на час';

  @override
  String get taskNoDate => 'Без дата';

  @override
  String get taskCompleted => 'Задачата е изпълнена';

  @override
  String get taskNextOccurrence => 'Следващото повторение е създадено';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Просрочена с $days дни',
      one: 'Просрочена с 1 ден',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Отбелязване на „$title“ като изпълнена';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Отбелязване на „$title“ като неизпълнена';
  }

  @override
  String get sortSmart => 'Интелигентно';

  @override
  String get sortDueDate => 'Краен срок';

  @override
  String get sortPriority => 'Приоритет';

  @override
  String get sortCreated => 'Най-нови';

  @override
  String get sortTitle => 'Заглавие';

  @override
  String get filterAllProjects => 'Всички проекти';

  @override
  String get filterAnyPriority => 'Всеки приоритет';

  @override
  String get filterTitle => 'Филтър и сортиране';

  @override
  String get dateToday => 'Днес';

  @override
  String get dateTomorrow => 'Утре';

  @override
  String get dateYesterday => 'Вчера';

  @override
  String get repeatNever => 'Не се повтаря';

  @override
  String get repeatDaily => 'Всеки ден';

  @override
  String get repeatWeekdays => 'Всеки делничен ден';

  @override
  String get repeatWeekly => 'Всяка седмица';

  @override
  String get repeatMonthly => 'Всеки месец';

  @override
  String get repeatYearly => 'Всяка година';

  @override
  String get repeatCustom => 'Персонализирано';

  @override
  String get repeatEvery => 'Повтаряне на всеки';

  @override
  String get repeatOnDays => 'В дните';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'дни', one: 'ден');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'седмици',
      one: 'седмица',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'месеца', one: 'месец');
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
      other: '$count пъти',
      one: '1 път',
    );
    return 'Приключва след $_temp0';
  }

  @override
  String get repeatEndsNever => 'Никога не приключва';

  @override
  String get reminderAtTime => 'В часа на събитието';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минути преди това',
      one: '1 минута преди това',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours часа преди това',
      one: '1 час преди това',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 ден преди това';

  @override
  String get projectsTitle => 'Проекти';

  @override
  String get projectsEmptyTitle => 'Все още няма проекти';

  @override
  String get projectsEmptyMessage => 'Групирайте свързаните задачи, бележки и време за фокус.';

  @override
  String get projectNew => 'Нов проект';

  @override
  String get projectEdit => 'Редактиране на проекта';

  @override
  String get projectName => 'Име';

  @override
  String get projectDescription => 'Описание';

  @override
  String get projectGoal => 'Цел';

  @override
  String get projectDeadline => 'Краен срок';

  @override
  String get projectColor => 'Цвят';

  @override
  String get projectIcon => 'Икона';

  @override
  String get projectProgress => 'Напредък';

  @override
  String projectTasksDone(int done, int total) {
    return 'Изпълнени $done от $total задачи';
  }

  @override
  String get projectFocusTime => 'Време за фокус';

  @override
  String get projectArchived => 'Архивирани проекти';

  @override
  String get projectShowArchived => 'Показване на архивираните';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Остават $days дни',
      one: 'Остава 1 ден',
      zero: 'Срокът е днес',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Срокът е изтекъл';

  @override
  String get calendarTitle => 'Календар';

  @override
  String get calendarMonth => 'Месец';

  @override
  String get calendarWeek => 'Седмица';

  @override
  String get calendarDay => 'Ден';

  @override
  String get calendarToday => 'Днес';

  @override
  String get calendarPrevious => 'Предишен';

  @override
  String get calendarNext => 'Следващ';

  @override
  String get calendarNoEvents => 'Нищо не е планирано';

  @override
  String get calendarAllDay => 'Цял ден';

  @override
  String get eventNew => 'Ново събитие';

  @override
  String get eventEdit => 'Редактиране на събитието';

  @override
  String get eventTitleHint => 'Заглавие на събитието';

  @override
  String get eventStarts => 'Начало';

  @override
  String get eventEnds => 'Край';

  @override
  String get eventKind => 'Вид';

  @override
  String get eventKindEvent => 'Събитие';

  @override
  String get eventKindTimeBlock => 'Времеви блок';

  @override
  String get eventKindFocus => 'Сесия за фокус';

  @override
  String get eventKindGoal => 'Лична цел';

  @override
  String get eventDescription => 'Подробности';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Застъпва се с $count събития',
      one: 'Застъпва се с 1 събитие',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Застъпвания в графика този ден';

  @override
  String get calendarTaskDue => 'Краен срок на задача';

  @override
  String get calendarDragHint => 'Задръжте и плъзнете събитие, за да го преместите';

  @override
  String get calendarRescheduled => 'Събитието е преместено';

  @override
  String get calendarScheduleTask => 'Планиране като времеви блок';

  @override
  String get notesTitle => 'Бележки';

  @override
  String get notesViewAll => 'Всички';

  @override
  String get notesViewPinned => 'Закачени';

  @override
  String get notesViewFavorites => 'Любими';

  @override
  String get notesViewArchived => 'Архивирани';

  @override
  String get notesTags => 'Тагове';

  @override
  String get notesNewNotebook => 'Нов бележник';

  @override
  String get notesNoNotebook => 'Без бележник';

  @override
  String get notesEmptyTitle => 'Празен лист';

  @override
  String get notesEmptyMessage => 'Записвайте идеи, бележки от срещи и знания.';

  @override
  String get noteTitleHint => 'Заглавие';

  @override
  String get noteBodyHint =>
      'Започнете да пишете… Използвайте # за тагове и [[Заглавие]] за свързване на бележки.';

  @override
  String get noteFavorite => 'Любима';

  @override
  String get noteUnfavorite => 'Премахване от любимите';

  @override
  String get noteMoveTo => 'Преместване в бележник';

  @override
  String get noteBacklinks => 'Свързани оттук';

  @override
  String get noteLinkedTasks => 'Свързани задачи';

  @override
  String get noteLinkTask => 'Свързване на задача';

  @override
  String get noteLinkProject => 'Проект';

  @override
  String get noteFormatHeading => 'Заглавие';

  @override
  String get noteFormatBold => 'Удебелен';

  @override
  String get noteFormatItalic => 'Курсив';

  @override
  String get noteFormatList => 'Списък с водещи символи';

  @override
  String get noteFormatChecklist => 'Контролен списък';

  @override
  String get noteFormatLink => 'Връзка';

  @override
  String noteEdited(String time) {
    return 'Редактирано $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count думи',
      one: '1 дума',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Карти';

  @override
  String get flashEmptyTitle => 'Създайте първото си тесте';

  @override
  String get flashEmptyMessage =>
      'Повторението на интервали показва всяка карта точно преди да я забравите.';

  @override
  String get deckNew => 'Ново тесте';

  @override
  String get deckEdit => 'Редактиране на тестето';

  @override
  String get deckName => 'Име на тестето';

  @override
  String get deckDescription => 'Описание';

  @override
  String get deckDailyNew => 'Нови карти на ден';

  @override
  String get deckDailyReview => 'Дневна цел за преговор';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карти',
      one: '1 карта',
      zero: 'Няма карти',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'За преговор';

  @override
  String get deckNewCards => 'Нови';

  @override
  String get deckMature => 'Научени';

  @override
  String get deckStudy => 'Учене';

  @override
  String get deckNothingDue => 'В момента няма нищо за преговор. Елате по-късно.';

  @override
  String get deckEmptyCards => 'Добавете карти, за да започнете да учите.';

  @override
  String get cardNew => 'Нова карта';

  @override
  String get cardEdit => 'Редактиране на картата';

  @override
  String get cardFront => 'Лице';

  @override
  String get cardBack => 'Гръб';

  @override
  String get cardFrontHint => 'Въпрос или термин';

  @override
  String get cardBackHint => 'Отговор или определение';

  @override
  String get cardTags => 'Тагове';

  @override
  String get cardAddAnother => 'Запазване и добавяне на още';

  @override
  String get reviewShowAnswer => 'Показване на отговора';

  @override
  String get reviewAgain => 'Отново';

  @override
  String get reviewHard => 'Трудно';

  @override
  String get reviewGood => 'Добре';

  @override
  String get reviewEasy => 'Лесно';

  @override
  String reviewProgress(int done, int total) {
    return '$done от $total';
  }

  @override
  String get reviewFinishedTitle => 'Сесията завърши';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Преговорихте $count карти.',
      one: 'Преговорихте 1 карта.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Докоснете, за да видите отговора';

  @override
  String get importCardsTitle => 'Импортиране на карти';

  @override
  String get importCardsHint =>
      'Поставете по една карта на ред (лице и гръб, разделени с табулация или точка и запетая) или изберете файл: Excel (.xlsx), CSV, тесте Anki (.apkg) или експортирано тесте.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Импортирани са $count карти',
      one: 'Импортирана е 1 карта',
      zero: 'Не са импортирани карти',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Това съдържание не можа да бъде импортирано.';

  @override
  String get exportCopied => 'Тестето е експортирано';

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
      other: '$count дни',
      one: '1 ден',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Цели';

  @override
  String get goalsEmptyTitle => 'Поставете си цел';

  @override
  String get goalsEmptyMessage =>
      'Задайте дневни, седмични, месечни или дългосрочни цели и следете реалния напредък.';

  @override
  String get goalNew => 'Нова цел';

  @override
  String get goalEdit => 'Редактиране на целта';

  @override
  String get goalTitleHint => 'Какво искате да постигнете?';

  @override
  String get goalPeriod => 'Период';

  @override
  String get goalPeriodDaily => 'Дневна';

  @override
  String get goalPeriodWeekly => 'Седмична';

  @override
  String get goalPeriodMonthly => 'Месечна';

  @override
  String get goalPeriodLongTerm => 'Дългосрочна';

  @override
  String get goalTarget => 'Целева стойност';

  @override
  String get goalUnit => 'Единица';

  @override
  String get goalUnitHint => 'напр. страници, км, часове';

  @override
  String get goalStatusActive => 'Активна';

  @override
  String get goalStatusPaused => 'На пауза';

  @override
  String get goalStatusAchieved => 'Постигната';

  @override
  String get goalPause => 'Поставяне на целта на пауза';

  @override
  String get goalResume => 'Продължаване на целта';

  @override
  String get goalMarkAchieved => 'Отбелязване като постигната';

  @override
  String goalProgressOf(String current, String target) {
    return '$current от $target';
  }

  @override
  String get goalLogAmount => 'Количество';

  @override
  String get goalLogNote => 'Бележка (по избор)';

  @override
  String get goalHistory => 'История';

  @override
  String get goalNoHistory => 'Отбелязаният напредък ще се показва тук';

  @override
  String get goalLinkedTasks => 'Свързани задачи';

  @override
  String get goalLinkedTasksHint => 'Всяка изпълнена свързана задача се брои като 1 за тази цел.';

  @override
  String get goalThisPeriod => 'Този период';

  @override
  String get habitsTitle => 'Навици';

  @override
  String get habitsEmptyTitle => 'Малки стъпки всеки ден';

  @override
  String get habitsEmptyMessage => 'Създайте навик и го отмятайте, когато го изпълните.';

  @override
  String get habitNew => 'Нов навик';

  @override
  String get habitEdit => 'Редактиране на навика';

  @override
  String get habitNameHint => 'напр. Прочети 20 страници';

  @override
  String get habitDays => 'График';

  @override
  String get habitEveryDay => 'Всеки ден';

  @override
  String get habitTargetPerDay => 'Пъти на ден';

  @override
  String get habitReminder => 'Дневно напомняне';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Поредица от $count дни',
      one: 'Поредица от 1 ден',
      zero: 'Няма поредица',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Най-дълга поредица';

  @override
  String get habitCurrentStreak => 'Текуща поредица';

  @override
  String get habitConsistency => 'Постоянство';

  @override
  String get habitLast90 => 'Последните 90 дни';

  @override
  String get habitPaused => 'На пауза';

  @override
  String get habitPause => 'Поставяне на навика на пауза';

  @override
  String get habitResume => 'Продължаване на навика';

  @override
  String get habitDoneToday => 'Изпълнен днес';

  @override
  String habitCountToday(int count, int target) {
    return '$count от $target днес';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Отмятане на „$name“';
  }

  @override
  String get habitNotScheduledToday => 'Не е планиран за днес';

  @override
  String get analyticsTitle => 'Статистика';

  @override
  String get rangeWeek => '7 дни';

  @override
  String get rangeMonth => '30 дни';

  @override
  String get rangeQuarter => '90 дни';

  @override
  String get statFocusTime => 'Време за фокус';

  @override
  String get statSessions => 'Сесии';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed завършени · $interrupted спрени по-рано';
  }

  @override
  String get statTasksDone => 'Изпълнени задачи';

  @override
  String get statCompletionRate => 'Изпълнени навреме';

  @override
  String get statHabitConsistency => 'Постоянство на навиците';

  @override
  String get statRetention => 'Запомняне на картите';

  @override
  String get statReviews => 'Преговори';

  @override
  String get statActiveGoals => 'Активни цели';

  @override
  String get statEstimated => 'Приблизително свършена работа';

  @override
  String get statEstimatedNote => 'По вашите оценки, а не по измерено време';

  @override
  String get statMeasuredNote => 'Измерено от сесиите за фокус';

  @override
  String get chartFocusByDay => 'Минути фокус на ден';

  @override
  String get chartTasksByDay => 'Изпълнени задачи на ден';

  @override
  String get chartTimeByProject => 'Време по проекти';

  @override
  String get chartProjectProgress => 'Напредък по проекти';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: общо $total, най-добър ден $best';
  }

  @override
  String get analyticsNoData => 'Все още няма достатъчно данни';

  @override
  String get analyticsUnassigned => 'Неразпределено';

  @override
  String get searchHint => 'Търсене навсякъде…';

  @override
  String get searchRecent => 'Скорошни търсения';

  @override
  String get searchClearRecent => 'Изчистване на скорошните търсения';

  @override
  String searchNoResults(String query) {
    return 'Няма резултати за „$query“';
  }

  @override
  String get searchStartTyping =>
      'Търсете в задачи, бележки, карти, цели, събития и др. Търсенето остава на това устройство.';

  @override
  String get searchCatTask => 'Задачи';

  @override
  String get searchCatProject => 'Проекти';

  @override
  String get searchCatNote => 'Бележки';

  @override
  String get searchCatFlashcard => 'Карти';

  @override
  String get searchCatDeck => 'Тестета';

  @override
  String get searchCatGoal => 'Цели';

  @override
  String get searchCatHabit => 'Навици';

  @override
  String get searchCatEvent => 'Събития';

  @override
  String get searchCatSession => 'Сесии';

  @override
  String get searchAll => 'Всички';

  @override
  String get assistantTitle => 'Асистент';

  @override
  String get assistantIntro =>
      'Помощ за планиране, която работи на устройството ви. По желание свържете избрана от вас услуга с ИИ за обобщения и генериране.';

  @override
  String get assistantOnDevice => 'На устройството';

  @override
  String get assistantCloud => 'Услуга с ИИ';

  @override
  String get assistantPlanDay => 'Планирай деня ми';

  @override
  String get assistantPlanDayDesc =>
      'Подрежда отворените задачи по спешност, приоритет и оценка и ги вмества около събитията ви.';

  @override
  String get assistantExtractTasks => 'Извличане на задачи от бележка';

  @override
  String get assistantExtractTasksDesc =>
      'Открива елементите от контролни списъци и редовете с действия в бележка и ги превръща в задачи.';

  @override
  String get assistantMakeCards => 'Карти от бележка';

  @override
  String get assistantMakeCardsDesc =>
      'Превръща редове „термин: определение“ и редове с въпрос и отговор в карти.';

  @override
  String get assistantSummarize => 'Обобщаване на бележка';

  @override
  String get assistantSummarizeDesc =>
      'Изисква услуга с ИИ. Бележката се изпраща само след като потвърдите.';

  @override
  String get assistantWorkload => 'Преглед на натоварването';

  @override
  String get assistantWorkloadDesc =>
      'Сравнява оценената работа със свободното ви време тази седмица.';

  @override
  String get assistantPlanEmpty => 'Няма отворени задачи за планиране. Насладете се на свободата.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Свободно време за фокус днес: $time';
  }

  @override
  String get assistantPlanOverflow => 'Това може да не се вмести днес:';

  @override
  String get assistantChooseNote => 'Изберете бележка';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Открити са $count задачи',
      one: 'Открита е 1 задача',
      zero: 'В бележката не са открити задачи',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Открити са $count карти',
      one: 'Открита е 1 карта',
      zero: 'В бележката не са открити карти',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Изберете тесте';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Оценена работа: $estimated. Свободно време: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Планирали сте повече, отколкото позволява времето. Помислете дали да не преместите задачи с по-нисък приоритет.';

  @override
  String get assistantWorkloadOk => 'Планът ви се вмества в наличното време.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count отворени задачи нямат оценка.',
      one: '1 отворена задача няма оценка.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Услуга с ИИ';

  @override
  String get assistantProviderOff =>
      'Няма свързана услуга. Инструментите на устройството продължават да работят.';

  @override
  String assistantProviderOn(String host) {
    return 'Свързано с $host';
  }

  @override
  String get assistantEndpoint => 'Крайна точка на API (HTTPS)';

  @override
  String get assistantModel => 'Модел';

  @override
  String get assistantApiKey => 'Ключ за API';

  @override
  String get assistantApiKeyStored => 'Съхранява се сигурно на това устройство';

  @override
  String get assistantHttpsOnly => 'Разрешени са само крайни точки с HTTPS';

  @override
  String get assistantConsentTitle => 'Да се изпрати ли това съдържание на услугата с ИИ?';

  @override
  String assistantConsentBody(String host) {
    return 'Избраният текст от бележката ще напусне устройството и ще бъде обработен от $host. Нищо друго не се изпраща.';
  }

  @override
  String get assistantConsentAlways => 'Без повече въпроси за тази услуга';

  @override
  String get assistantSend => 'Изпращане';

  @override
  String get assistantUnavailable => 'Услугата с ИИ е недостъпна. Опитайте по-късно.';

  @override
  String get assistantDisabledTitle => 'Асистентът е изключен';

  @override
  String get assistantDisabledMessage =>
      'Включете го, за да използвате инструментите за планиране. Данни не напускат устройството, освен ако не свържете услуга и не потвърдите всяка заявка.';

  @override
  String get assistantSummaryTitle => 'Обобщение';

  @override
  String get assistantRemoveProvider => 'Премахване на услугата';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsGeneral => 'Общи';

  @override
  String get settingsLanguage => 'Език';

  @override
  String get settingsLanguageSystem => 'Езикът на устройството';

  @override
  String get settingsAppearance => 'Изглед';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeLight => 'Светла';

  @override
  String get themeDark => 'Тъмна';

  @override
  String get themeSystem => 'Системна';

  @override
  String get settingsReduceMotion => 'По-малко движение';

  @override
  String get settingsReduceMotionDesc => 'По-малко анимации и движещи се фонове';

  @override
  String get settingsFocus => 'Таймер за фокус';

  @override
  String get settingsWorkLength => 'Продължителност на фокуса';

  @override
  String get settingsShortBreak => 'Кратка почивка';

  @override
  String get settingsLongBreak => 'Дълга почивка';

  @override
  String get settingsLongBreakEvery => 'Дълга почивка след';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сесии',
      one: '1 сесия',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Автоматично начало на почивките';

  @override
  String get settingsSound => 'Звук при завършване';

  @override
  String get settingsDailyFocusTarget => 'Дневна цел за фокус';

  @override
  String get settingsWeeklyFocusTarget => 'Седмична цел за фокус';

  @override
  String get settingsNotifications => 'Известия';

  @override
  String get settingsNotificationsEnable => 'Разрешаване на напомняния';

  @override
  String get settingsQuietHours => 'Тихи часове';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Напомнянията за навици, цели и преговор са заглушени от $start до $end';
  }

  @override
  String get settingsReviewReminder => 'Напомняне за преговор на карти';

  @override
  String get settingsPermissionDenied => 'Известията са блокирани в системните настройки.';

  @override
  String get settingsPrivacy => 'Поверителност и данни';

  @override
  String get settingsPrivacyStatement =>
      'Данните ви се съхраняват само на това устройство и са шифровани. Без акаунт, без анализи и без проследяване.';

  @override
  String get settingsBackup => 'Създаване на шифровано резервно копие';

  @override
  String get settingsBackupDesc => 'Защитено с парола по ваш избор';

  @override
  String get settingsRestore => 'Възстановяване от резервно копие';

  @override
  String get settingsRestoreDesc => 'Заменя всички данни на това устройство';

  @override
  String get settingsErase => 'Изтриване на всички данни';

  @override
  String get settingsEraseDesc => 'Изтриване завинаги на всичко от това устройство';

  @override
  String get settingsEraseConfirmTitle => 'Да се изтрият ли всички данни?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Всяка задача, бележка, карта, цел, навик, събитие и сесия ще бъдат изтрити завинаги. Въведете $word за потвърждение.';
  }

  @override
  String get settingsEraseWord => 'ИЗТРИЙ';

  @override
  String get settingsErased => 'Всички данни са изтрити';

  @override
  String get backupPassword => 'Парола за резервното копие';

  @override
  String get backupPasswordConfirm => 'Потвърдете паролата';

  @override
  String backupPasswordHint(int count) {
    return 'Поне $count знака. Ако я загубите, не може да бъде възстановена.';
  }

  @override
  String get backupPasswordMismatch => 'Паролите не съвпадат';

  @override
  String get backupPasswordShort => 'Паролата е твърде кратка';

  @override
  String get backupCreating => 'Шифроване на резервното копие…';

  @override
  String get backupCreated => 'Резервното копие е готово за запазване';

  @override
  String get backupRestoring => 'Проверка и възстановяване…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Възстановени са $count елемента',
      one: 'Възстановен е 1 елемент',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Грешна парола или файлът е променен.';

  @override
  String get backupNotABackup => 'Този файл не е резервно копие на Deep Focus.';

  @override
  String get backupCorrupted => 'Файлът с резервното копие е повреден.';

  @override
  String get backupNewer =>
      'Това резервно копие е създадено с по-нова версия на приложението. Първо го актуализирайте.';

  @override
  String get backupRestoreConfirmTitle => 'Да се заменят ли всички данни?';

  @override
  String get backupRestoreConfirmBody =>
      'Всичко, което е сега на това устройство, ще бъде заменено с резервното копие. Ако възстановяването не успее, нищо не се променя.';

  @override
  String get settingsAbout => 'Информация';

  @override
  String settingsVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get settingsLicenses => 'Лицензи за отворен код';

  @override
  String get settingsAssistant => 'Асистент';

  @override
  String get settingsAssistantEnable => 'Включване на асистента';

  @override
  String get settingsDashboard => 'Раздели на началния екран';

  @override
  String get settingsTrash => 'Кошче';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes мин';
  }

  @override
  String get trashEmpty => 'Кошчето е празно';

  @override
  String get trashHint => 'Изтритите елементи остават тук, докато не ги премахнете.';

  @override
  String get trashTasks => 'Задачи';

  @override
  String get trashNotes => 'Бележки';

  @override
  String get onboardWelcomeTitle => 'Добре дошли в новото си работно пространство';

  @override
  String get onboardWelcomeBody =>
      'Задачи, фокус, календар, бележки, карти, цели и навици — заедно и красиво просто.';

  @override
  String get onboardPrivateTitle => 'Поверително по замисъл';

  @override
  String get onboardPrivateBody =>
      'Всичко остава шифровано на това устройство. Без акаунт. Без проследяване. Вие решавате.';

  @override
  String get onboardLanguageTitle => 'Изберете език';

  @override
  String get onboardNotifTitle => 'Деликатни напомняния';

  @override
  String get onboardNotifBody =>
      'Разрешете известията за напомняния за задачи и сигнали за фокус. Можете да промените това по всяко време.';

  @override
  String get onboardGetStarted => 'Да започваме';

  @override
  String onboardStep(int current, int total) {
    return 'Стъпка $current от $total';
  }

  @override
  String get notifChannelReminders => 'Напомняния';

  @override
  String get notifChannelRemindersDesc => 'Напомняния за задачи, събития, навици и цели';

  @override
  String get notifChannelFocus => 'Таймер за фокус';

  @override
  String get notifChannelFocusDesc => 'Сигнали при край на сесия за фокус или почивка';

  @override
  String get notifTaskTitle => 'Напомняне за задача';

  @override
  String get notifEventTitle => 'Предстоящо събитие';

  @override
  String notifEventBody(String title, String time) {
    return '$title в $time';
  }

  @override
  String get notifFocusDoneTitle => 'Сесията за фокус завърши';

  @override
  String get notifFocusDoneBody => 'Чудесна работа. Време е за почивка.';

  @override
  String get notifBreakDoneTitle => 'Почивката свърши';

  @override
  String get notifBreakDoneBody => 'Готови ли сте за следващата сесия?';

  @override
  String get notifHabitTitle => 'Напомняне за навик';

  @override
  String get notifReviewTitle => 'Картите ви чакат';

  @override
  String get notifReviewBody => 'Кратък преговор поддържа паметта силна.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ч $minutes мин';
  }

  @override
  String durationHours(int hours) {
    return '$hours ч';
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
  String get weekdaysShort => 'П,В,С,Ч,П,С,Н';

  @override
  String a11yProgress(int value) {
    return 'Напредък $value процента';
  }

  @override
  String a11yPriority(String level) {
    return 'Приоритет: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Цвят $index';
  }

  @override
  String get analyticsRangeLabel => 'Времеви период';

  @override
  String get analyticsRefresh => 'Опресняване';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done от $total задачи със срок са изпълнени навреме';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Изпълнени $done от $total задачи';
  }

  @override
  String get analyticsNoProjects => 'Няма активни проекти';

  @override
  String get analyticsNoFocus => 'Няма сесии за фокус в този период';

  @override
  String get analyticsHabitsNone => 'Няма активни навици';

  @override
  String get analyticsRetentionNote => 'Дял на научените карти, които запомнихте';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Свободното време се брои $start–$end в работните дни ($days), без събитията с час. Оценената работа е сборът от оценките на отворените задачи със срок през следващите 7 дни.';
  }

  @override
  String get assistantWorkdaysMonFri => 'понеделник–петък';

  @override
  String get assistantWorkdaysSunThu => 'неделя–четвъртък';

  @override
  String get assistantWorkloadDayOff => 'Почивен ден';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated планирано · $free свободно';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Планирано от сега до $end, около днешните събития. Първо просрочените задачи, после приоритет, краен срок и оценка.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Планиране като времеви блокове';

  @override
  String get assistantScheduleConfirmTitle => 'Да се добавят ли времеви блокове в календара?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'В днешния календар ще бъдат добавени $count времеви блока.',
      one: 'В днешния календар ще бъде добавен 1 времеви блок.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавени са $count времеви блока',
      one: 'Добавен е 1 времеви блок',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Вече е в календара';

  @override
  String get assistantPlanTimeline => 'Вмества се днес';

  @override
  String get assistantNoEstimate => 'Добавете оценка, за да ги планирате';

  @override
  String get assistantNoNotes => 'Все още няма бележки. Първо напишете бележка.';

  @override
  String get assistantNoteEmpty => 'Тази бележка е празна.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Създадени са $count задачи',
      one: 'Създадена е 1 задача',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Създадени са $count карти',
      one: 'Създадена е 1 карта',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Създаване на $count',
      one: 'Създаване на 1',
      zero: 'Нищо не е избрано',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Разпознават се: неотметнати квадратчета „- [ ]“ и редове, започващи с TODO: или To do:';

  @override
  String get assistantCardsHint =>
      'Разпознават се: „термин: определение“, „термин — определение“ и двойки редове Q:/A:';

  @override
  String get assistantProviderHint =>
      'Използвайте която и да е услуга, съвместима с OpenAI. Ключът остава в защитеното хранилище на устройството и никога не влиза в резервните копия.';

  @override
  String get assistantEndpointHelp => 'Например https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Оставете празно, за да запазите съхранения ключ';

  @override
  String get assistantApiKeyRequired => 'Въведете ключ за API';

  @override
  String get assistantProviderSaved => 'Услугата е запазена';

  @override
  String get assistantProviderRemoved => 'Услугата е премахната и ключът е изтрит';

  @override
  String get assistantRemoveProviderConfirm =>
      'Да се премахне ли услугата и да се изтрие ли съхраненият ключ за API от това устройство?';

  @override
  String get assistantAskEveryTime => 'Питане преди всяка заявка';

  @override
  String get assistantSummarizing => 'Обобщаване…';

  @override
  String assistantSummaryNote(String host) {
    return 'Създадено от $host. Проверете, преди да разчитате на него.';
  }

  @override
  String get assistantCopy => 'Копиране';

  @override
  String get assistantCopied => 'Копирано';

  @override
  String get assistantConfigure => 'Настройване на услуга';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Всички събития от тази поредица са преместени';

  @override
  String get calendarEventReminder => 'Напомняне';

  @override
  String get calendarEventRepeat => 'Повторение';

  @override
  String get calendarEventColor => 'Цвят';

  @override
  String get calendarDefaultColor => 'Цвят на вида';

  @override
  String get calendarEventLinkedTask => 'Свързана задача';

  @override
  String get calendarEventNoTask => 'Няма свързана задача';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count събития',
      one: '1 събитие',
      zero: 'Няма събития',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачи със срок',
      one: '1 задача със срок',
      zero: 'няма задачи със срок',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Добавете събитие или времеви блок, за да планирате този ден.';

  @override
  String get calendarNow => 'Текущ час';

  @override
  String get calendarRecurring => 'Повтаря се';

  @override
  String get calendarEventNotFound => 'Това събитие вече не съществува';

  @override
  String get calendarEventLocalTime => 'Часовете се показват в часовата зона на устройството';

  @override
  String get calendarEventDeleted => 'Събитието е преместено в кошчето';

  @override
  String get calendarConflictMarker => 'Застъпва се с друго събитие';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Промените важат за всички събития от тази поредица';

  @override
  String get calendarDragHintSeries =>
      'Плъзгането на повтарящо се събитие премества цялата поредица';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, краен срок на задача';
  }

  @override
  String get startupErrorTitle => 'Данните ви не можаха да бъдат отворени';

  @override
  String get startupErrorLocked =>
      'Ключът за шифроване на данните на това устройство не е наличен. Нищо не е изтрито. Рестартирането на устройството често помага. Ако наскоро сте възстановили устройството, по-добре възстановете данните си от шифровано резервно копие.';

  @override
  String get startupErrorCipher =>
      'Това устройство не поддържа шифрованото хранилище, от което се нуждае приложението. Нищо не е запазено нешифровано.';

  @override
  String get startupErrorRetry => 'Нов опит';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карти чакат преговор',
      one: '1 карта чака преговор',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count за преговор';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count нови';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Научени карти: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Въведете 0 или повече';

  @override
  String get flashcardsSearchCards => 'Търсене на карти';

  @override
  String get flashcardsSearchEmpty => 'Няма карти, отговарящи на търсенето';

  @override
  String get flashcardsCardAdded => 'Картата е добавена';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Преговор $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Копиране в буфера';

  @override
  String get flashcardsExportTitle => 'Експортиране на тестето';

  @override
  String get flashcardsDeleteDeck => 'Изтриване на тестето';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, следващ преговор след $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Въпрос: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Отговор: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Показване на въпроса';

  @override
  String get flashcardsImportField => 'Карти за импортиране';

  @override
  String get flashcardsNothingToStudy => 'Няма какво да се учи';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карти, готови за учене',
      one: '1 карта, готова за учене',
      zero: 'Няма готови карти',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'По оценка';

  @override
  String get flashcardsDeckNotFound => 'Това тесте вече не е налично.';

  @override
  String get focusSessionDeleted => 'Сесията е изтрита';

  @override
  String get focusDeleteConfirm =>
      'Да се изтрие ли тази сесия от историята? Времето ѝ вече няма да се брои към целите ви.';

  @override
  String get focusUnlinkTask => 'Премахване на свързаната задача';

  @override
  String get focusNoteHint => 'По какво работихте?';

  @override
  String get focusTargetCaption => 'Измерено от запазените сесии';

  @override
  String get focusModeLabel => 'Режим на таймера';

  @override
  String focusUpNext(String phase) {
    return 'Следва: $phase';
  }

  @override
  String get focusStopwatchHint => 'Брои нагоре, докато не спрете.';

  @override
  String get focusOpenHint => 'Без ограничение на времето. Спрете, когато приключите.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Напомнянията са изключени в настройките. Няма да бъдете уведомени, когато сесията приключи.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Всички';

  @override
  String get goalsFilterPeriod => 'Филтър по период';

  @override
  String get goalsFilterStatus => 'Филтър по състояние';

  @override
  String get goalsEmptyFiltered => 'Няма цели, отговарящи на този филтър';

  @override
  String goalsDueOn(String date) {
    return 'Срок $date';
  }

  @override
  String get goalsDeadline => 'Краен срок (по избор)';

  @override
  String get goalsNoDeadline => 'Без краен срок';

  @override
  String get goalsSetDeadline => 'Задаване на краен срок';

  @override
  String get goalsRemoveDeadline => 'Премахване на крайния срок';

  @override
  String get goalsDescription => 'Описание (по избор)';

  @override
  String get goalsTitleLabel => 'Заглавие';

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
  String get goalsLogged => 'Напредъкът е отбелязан';

  @override
  String get goalsEntryDeleted => 'Записът е премахнат';

  @override
  String get goalsDeleteEntry => 'Премахване на записа';

  @override
  String get goalsDeleted => 'Целта е изтрита';

  @override
  String get goalsMarkActive => 'Отбелязване като активна';

  @override
  String get goalsNotFound => 'Тази цел вече не е налична';

  @override
  String get goalsLinkTask => 'Свързване на задача';

  @override
  String get goalsNoLinkedTasks => 'Все още няма свързани задачи';

  @override
  String get goalsUnlinkTask => 'Разкачане на задачата';

  @override
  String get goalsTaskOpen => 'Все още не е изпълнена';

  @override
  String get goalsTaskLinked => 'Задачата е свързана';

  @override
  String get goalsTaskUnlinked => 'Задачата е разкачена';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count изпълнени свързани задачи',
      one: '1 изпълнена свързана задача',
    );
    return 'Включва $_temp0 за този период';
  }

  @override
  String get goalsHistoryAllTime =>
      'Записите от предишни периоди остават тук, но се броят само за своя период.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Днес са изпълнени $done от $total';
  }

  @override
  String get habitsNothingToday => 'Няма планирани навици за днес';

  @override
  String get habitsDecrease => 'Премахване на една отметка';

  @override
  String get habitsResetToday => 'Нулиране на днешния ден';

  @override
  String get habitsCheckInHint => 'Задръжте, за да коригирате';

  @override
  String get habitsName => 'Име';

  @override
  String get habitsColor => 'Цвят';

  @override
  String get habitsValidationDays => 'Изберете поне един ден';

  @override
  String habitsReminderAt(String time) {
    return 'Всеки ден в $time';
  }

  @override
  String get habitsSetReminder => 'Задаване на час за напомняне';

  @override
  String get habitsRemoveReminder => 'Премахване на напомнянето';

  @override
  String get habitsReminderNote =>
      'Напомнянията се показват в планираните дни, ако известията са разрешени.';

  @override
  String get habitsArchived => 'Навикът е архивиран';

  @override
  String get habitsNotFound => 'Този навик вече не е наличен';

  @override
  String get habitsLast30 => 'Последните 30 дни';

  @override
  String get habitsConsistencyNone => 'Все още няма достатъчно данни';

  @override
  String get habitsCalendar => 'История на отметките';

  @override
  String get habitsCalendarHint => 'Докоснете ден, за да го коригирате.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count от $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Отметки през последните 90 дни. Постоянство $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Отметки през последните 90 дни. Все още няма достатъчно данни.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дни',
      one: '1 ден',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Дните на пауза не влияят на поредицата ви.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Архивиране на навика';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пъти на ден',
      one: 'Веднъж на ден',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Други бележки';

  @override
  String get notesAllNotebooks => 'Всички бележници';

  @override
  String get notesNotebookName => 'Име на бележника';

  @override
  String get notesNotebookColor => 'Цвят';

  @override
  String get notesDeleteNotebook => 'Изтриване на бележника';

  @override
  String get notesDeleteNotebookMessage =>
      'Бележникът се премахва. Бележките му се запазват и се показват във „Всички бележници“.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Закачете важните бележки, за да остават най-горе.';

  @override
  String get notesEmptyFavorites => 'Бележките, отбелязани като любими, се показват тук.';

  @override
  String get notesEmptyArchived => 'Архивираните бележки се показват тук.';

  @override
  String get notesEmptyFiltered => 'Няма бележки, отговарящи на тези филтри.';

  @override
  String get notesArchivedSnack => 'Бележката е архивирана';

  @override
  String get notesUnarchivedSnack => 'Бележката е върната при бележките ви';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Готови $done от $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Форматиране';

  @override
  String get notesWrite => 'Писане';

  @override
  String get notesPreviewEmpty => 'Все още няма какво да се визуализира.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Все още никоя друга бележка не сочи насам. Свържете тази бележка с [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Дайте заглавие на бележката, за да могат други бележки да сочат към нея.';

  @override
  String get notesLinkedTasksEmpty => 'Към тази бележка няма свързани задачи.';

  @override
  String notesLinkMissing(String title) {
    return 'Все още няма бележка със заглавие „$title“.';
  }

  @override
  String get notesNotFound => 'Тази бележка вече не съществува.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Елемент от списъка: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Отваряне на бележката $title';
  }

  @override
  String get notesTaskDone => 'Изпълнена';

  @override
  String get notifTimerDoneBody => 'Зададеното време изтече.';

  @override
  String get onboardingPrivatePointDevice => 'Съхранява се само на това устройство, шифровано';

  @override
  String get onboardingPrivatePointAccount => 'Не е нужен акаунт';

  @override
  String get onboardingPrivatePointTracking => 'Без анализи, без проследяване';

  @override
  String get onboardingLanguageBody => 'Можете да промените това по всяко време в Настройки.';

  @override
  String get onboardingNext => 'Напред';

  @override
  String get projectsActive => 'Активни';

  @override
  String get projectNameHint => 'напр. Пускане на продукт';

  @override
  String get projectGoalHint => 'Как изглежда „готово“?';

  @override
  String get projectNoDeadline => 'Без краен срок';

  @override
  String get projectTasksOpen => 'Отворени задачи';

  @override
  String get projectTasksCompleted => 'Изпълнени задачи';

  @override
  String get projectAddTask => 'Добавяне на задача към проекта';

  @override
  String get projectAddNote => 'Нова бележка към проекта';

  @override
  String get projectLinkedNotes => 'Бележки';

  @override
  String get projectNoTasks => 'В този проект все още няма задачи';

  @override
  String get projectArchivedBadge => 'Архивиран';

  @override
  String get projectDeleted => 'Проектът е преместен в кошчето';

  @override
  String get projectDeleteMessage => 'Задачите остават в списъка ви без проект.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, завършен на $percent процента';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count резултата',
      one: '1 резултат',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Филтър по вид';

  @override
  String searchRecentTap(String query) {
    return 'Ново търсене на $query';
  }

  @override
  String get settingsLanguageHint =>
      'Изберете езика на цялото приложение. Имената са изписани на собствения им език.';

  @override
  String get settingsThemeHint => 'Светла, тъмна или като системата';

  @override
  String settingsDecrease(String setting) {
    return 'Намаляване: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Увеличаване: $setting';
  }

  @override
  String get settingsQuietStart => 'Начало';

  @override
  String get settingsQuietEnd => 'Край';

  @override
  String get settingsNotificationsHint =>
      'Така се запазва изборът ви в приложението. Системата може също да поиска разрешение.';

  @override
  String get settingsDashboardHint =>
      'Плъзнете, за да промените реда. Изключете разделите, които не ви трябват.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Преместване: $section';
  }

  @override
  String get settingsDashboardReset => 'Възстановяване на реда по подразбиране';

  @override
  String get settingsAssistantDesc =>
      'Помощ за планиране по желание. Нищо не напуска устройството, освен ако не свържете услуга.';

  @override
  String get settingsAssistantSetup => 'Асистент и настройка на услуга';

  @override
  String get settingsTrashDesc => 'Възстановяване или окончателно изтриване на премахнати елементи';

  @override
  String get settingsEraseFirstBody =>
      'Това не може да се отмени. Помислете първо да създадете шифровано резервно копие.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Въведете $word';
  }

  @override
  String get settingsEraseFailed => 'Данните не можаха да бъдат изтрити. Нищо не е променено.';

  @override
  String get settingsAboutTagline =>
      'Лично работно пространство за продуктивност, което работи локално.';

  @override
  String get backupShowPassword => 'Показване на паролата';

  @override
  String get backupHidePassword => 'Скриване на паролата';

  @override
  String get backupSaved => 'Резервното копие е запазено';

  @override
  String get backupFailed =>
      'Резервното копие не можа да бъде създадено. Данните ви не са променени.';

  @override
  String get backupReadFailed => 'Избраният файл не можа да бъде прочетен.';

  @override
  String get backupRestoreFailed => 'Възстановяването не бе успешно. Нищо не е променено.';

  @override
  String get backupShareSubject => 'Шифровано резервно копие на Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'На всеки $count дни',
      one: 'Всеки ден',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'На всеки $count седмици',
      one: 'Всяка седмица',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'На всеки $count месеца',
      one: 'Всеки месец',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'На всеки $count години',
      one: 'Всяка година',
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
    return 'в дните $days';
  }

  @override
  String get repeatEndsLabel => 'Край';

  @override
  String get repeatEndsAfter => 'След определен брой пъти';

  @override
  String get repeatCountLabel => 'Брой пъти';

  @override
  String get reminderNone => 'Без напомняне';

  @override
  String get reminderCustomTime => 'В определен час';

  @override
  String get a11yDecrease => 'Намаляване';

  @override
  String get a11yIncrease => 'Увеличаване';

  @override
  String get pickTaskTitle => 'Изберете задача';

  @override
  String get pickTaskEmpty => 'Няма отворени задачи';

  @override
  String get tasksSearchTooltip => 'Търсене на задачи';

  @override
  String get tasksSectionOverdue => 'Просрочени';

  @override
  String get tasksSectionToday => 'Днес';

  @override
  String get tasksRecurringSemantics => 'Повтаря се';

  @override
  String get tasksFilterPriorityAtLeast => 'Минимален приоритет';

  @override
  String get tasksFilterCategory => 'Категория';

  @override
  String get tasksFilterAnyCategory => 'Всяка категория';

  @override
  String get tasksFilterLabel => 'Етикет';

  @override
  String get tasksFilterAnyLabel => 'Всеки етикет';

  @override
  String get tasksFilterReset => 'Нулиране на филтрите';

  @override
  String get tasksViewByProject => 'По проекти';

  @override
  String get tasksViewByPriority => 'По приоритет';

  @override
  String get tasksViewByCategory => 'По категории';

  @override
  String get tasksGroupNoCategory => 'Без категория';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачи',
      one: '1 задача',
    );
    return 'Блокирана от $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Тази задача е блокирана от неизпълнени задачи. Да се завърши ли въпреки това?';

  @override
  String get taskStartFocus => 'Фокус върху тази задача';

  @override
  String get taskRemoveDate => 'Премахване на датата';

  @override
  String get taskAllDay => 'Без определен час';

  @override
  String get taskSaved => 'Задачата е запазена';

  @override
  String get taskCreated => 'Задачата е създадена';

  @override
  String get taskReminderNeedsDue => 'Задайте краен срок, за да използвате относителни напомняния';

  @override
  String get taskSubtaskDetailsHint =>
      'Първо запазете задачата, за да добавите подзадачи, елементи от списък, етикети и зависимости.';

  @override
  String get taskLabelName => 'Име на етикета';

  @override
  String get taskMoreDetails => 'Подробности';

  @override
  String get taskPlanning => 'Планиране';

  @override
  String get taskOrganize => 'Организиране';

  @override
  String get taskBreakdown => 'Разбивка';

  @override
  String get trashDeleteTaskTitle => 'Да се изтрие ли тази задача завинаги?';

  @override
  String get trashDeleteNoteTitle => 'Да се изтрие ли тази бележка завинаги?';

  @override
  String get trashDeleteBody => 'Това не може да се отмени.';

  @override
  String get trashEmptyTitle => 'Да се изпразни ли кошчето?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count елемента ще бъдат изтрити завинаги.',
      one: '1 елемент ще бъде изтрит завинаги.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Възстановено';

  @override
  String get trashPurged => 'Изтрито завинаги';

  @override
  String trashDeletedOn(String date) {
    return 'Изтрито $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count елемента',
      one: '1 елемент',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Четене на глас';

  @override
  String get flashcardsTtsUnavailable => 'Синтезът на реч не е наличен на това устройство.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Няма инсталиран глас за този език. Добавете глас в настройките на Android за синтез на реч.';

  @override
  String get calendarAgenda => 'Програма';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Искра',
      'rocket': 'Ракета',
      'book': 'Книга',
      'work': 'Работа',
      'home': 'Дом',
      'heart': 'Сърце',
      'code': 'Код',
      'palette': 'Палитра',
      'fitness': 'Фитнес',
      'school': 'Училище',
      'travel': 'Пътуване',
      'money': 'Спестявания',
      'other': 'Икона',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Още полета';

  @override
  String get cardFieldExample => 'Пример';

  @override
  String get cardFieldExplanation => 'Обяснение';

  @override
  String get cardFieldPronunciation => 'Произношение';

  @override
  String get cardFieldNotes => 'Допълнителни бележки';

  @override
  String get projectMilestones => 'Етапи';

  @override
  String get milestoneAdd => 'Добавяне на етап';

  @override
  String get milestoneEdit => 'Редактиране на етап';

  @override
  String get milestoneTitleLabel => 'Етап';

  @override
  String get milestoneNoDate => 'Без дата';

  @override
  String get milestonesEmpty =>
      'Все още няма етапи. Добавете контролни точки с дати, за да следите проекта в календара.';

  @override
  String get milestoneDeleted => 'Етапът е изтрит';

  @override
  String milestoneDoneA11y(String title) {
    return 'Отбелязване на етапа „$title“ като завършен';
  }

  @override
  String calendarMilestone(String project) {
    return 'Етап · $project';
  }

  @override
  String get tasksViewInbox => 'Входящи';

  @override
  String get tasksViewArchived => 'Архивирани';

  @override
  String get tasksEmptyInbox =>
      'Тук попадат задачите без проект или дата. Подредете ги, когато имате минутка.';

  @override
  String get tasksEmptyArchived =>
      'Архивираните задачи се пазят тук, извън списъците и напомнянията ви.';

  @override
  String get taskArchivedBadge => 'Архивирана';

  @override
  String get taskStatusInProgress => 'В процес';

  @override
  String get taskArchived => 'Задачата е архивирана';

  @override
  String get taskUnarchived => 'Задачата е извадена от архива';

  @override
  String get focusPlanTitle => 'План на сесиите';

  @override
  String focusPlanTotal(String duration) {
    return 'Общо $duration';
  }

  @override
  String get focusPlanRounds => 'Сесии за фокус';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Дълга почивка след';

  @override
  String get focusPlanSkipLastBreak => 'Пропускане на последната почивка';

  @override
  String get focusPlanAutoBreaks => 'Автоматично начало на почивките';

  @override
  String get focusPlanAutoFocus => 'Автоматично начало на фокуса след почивка';

  @override
  String get focusPlanSave => 'Запазване на плана';

  @override
  String get focusPlanNameHint => 'напр. Подготовка за изпит';

  @override
  String get focusPlanSaved => 'Планът е запазен';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work мин фокус, $rest мин почивка';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Намаляване: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Увеличаване: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Сесия $current от $total';
  }

  @override
  String get focusSeriesComplete => 'Поредицата е завършена. Браво!';

  @override
  String get filterAll => 'Всички';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Импортирани: $added · пропуснати дубликати: $duplicates · непълни редове: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Спиране на картата';

  @override
  String get flashcardsResume => 'Възобновяване на картата';

  @override
  String get flashcardsSuspended => 'Картата е спряна: няма да се планира';

  @override
  String get flashcardsResumed => 'Картата е възобновена';

  @override
  String get flashcardsSuspendedFilter => 'Спрени';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown от $total карти';
  }

  @override
  String get flashcardsImportFile => 'От файл';

  @override
  String get speechTitle => 'Реч';

  @override
  String get speechAppLanguage => 'Език на приложението';

  @override
  String get speechFrontLanguage => 'Език на лицето';

  @override
  String get speechBackLanguage => 'Език на гърба';

  @override
  String get speechRepeat => 'Повтаряне на всяко прочитане';

  @override
  String get speechRate => 'Скорост';

  @override
  String get speechAutoRead => 'Автоматично прочитане на въпроса';

  @override
  String get speechHint =>
      'Използва гласовете, инсталирани на това устройство, без интернет. Ако за даден език няма глас, ще бъдете уведомени и няма да се използва нищо друго вместо него.';

  @override
  String get studyHowTitle => 'Как искате да учите?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Преговор на $count карти',
      one: 'Преговор на 1 карта',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Упражняване на всички карти (графикът не се променя)';

  @override
  String get studyPracticeMistakes => 'Упражняване на скорошните грешки';

  @override
  String get studyPracticeHint =>
      'Кръговете за упражнение никога не променят кога са картите за преговор. Преговорът обновява графика.';

  @override
  String get studyModeClassic => 'Класически';

  @override
  String get studyModeReverse => 'Обратно';

  @override
  String get studyModeMixed => 'В двете посоки';

  @override
  String get studyModeTyped => 'Писане на отговора';

  @override
  String get studyModeChoice => 'Избор от няколко';

  @override
  String get studyModeListening => 'Слушане';

  @override
  String get studyPractice => 'упражнение';

  @override
  String get studyNoMistakes => 'Няма скорошни грешки в това тесте. Браво!';

  @override
  String get studyTypeAnswer => 'Напишете отговора си';

  @override
  String get studyCheck => 'Проверка';

  @override
  String get studyKnewIt => 'Знаех';

  @override
  String get studyDidntKnow => 'Не знаех';

  @override
  String studyMistakes(int count) {
    return 'Грешни ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Повторение на грешните карти';

  @override
  String get studyCorrect => 'Вярно';

  @override
  String get studyAlmost => 'Почти — проверете правописа';

  @override
  String get studyWrong => 'Не съвсем';

  @override
  String get studyShowText => 'Показване на текста';

  @override
  String get flashcardsImportFileFailed =>
      'Файлът не можа да бъде отворен. Можете да поставите съдържанието му.';

  @override
  String get studyNoMatchingCards => 'Все още няма карти за този избор.';

  @override
  String get studyPracticeNew => 'Само нови';

  @override
  String get studyPracticeHard => 'Трудни карти';

  @override
  String get studyPracticeFavorites => 'Любими';

  @override
  String get studySessionSize => 'Карти на сесия';

  @override
  String get studySessionAll => 'Всички';

  @override
  String get studyOrder => 'Ред';

  @override
  String get studyOrderDue => 'Първо най-просрочените';

  @override
  String get studyOrderRandom => 'Случайно';

  @override
  String get studyOrderHardest => 'Първо най-трудните';

  @override
  String get flashcardsHard => 'Трудни';

  @override
  String get flashcardsFavorites => 'Любими';

  @override
  String get flashcardsFavorite => 'Добавяне в любими';

  @override
  String get flashcardsUnfavorite => 'Премахване от любими';

  @override
  String get flashcardsDuplicate => 'Дублиране';

  @override
  String get flashcardsMoveTo => 'Преместване в тесте';

  @override
  String get flashcardsNoOtherDeck => 'Първо създайте друго тесте.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Преместени са $count карти',
      one: 'Картата е преместена',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Добавяне на таг';

  @override
  String get flashcardsTagHint => 'напр. глаголи';

  @override
  String flashcardsSelected(int count) {
    return 'Избрани: $count';
  }

  @override
  String get flashcardsSelectAll => 'Избиране на всички показани';

  @override
  String flashcardsSelectCard(String front) {
    return 'Избиране на $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Припомняне $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Възможен дубликат';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Това тесте вече има „$front“ → „$back“. Да се запази ли въпреки това?';
  }

  @override
  String get flashcardsSaveAnyway => 'Запазване въпреки това';

  @override
  String get flashcardsStats => 'Статистика';

  @override
  String get flashcardsStatTotal => 'Карти';

  @override
  String get flashcardsStatLearning => 'Учат се';

  @override
  String get flashcardsStatMatureCaption => 'Запомнени за 21+ дни';

  @override
  String get flashcardsStatReviewsToday => 'Преговори днес';

  @override
  String get flashcardsStatCorrect => 'Верни отговори';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Последни дни: $days';
  }

  @override
  String get flashcardsStatForget => 'Процент на забравяне';

  @override
  String get flashcardsStatForgetCaption => '„Отново“ при научени карти';

  @override
  String get flashcardsStatRecall => 'Припомняне сега';

  @override
  String get flashcardsStatRecallCaption => 'Оценка по FSRS, преговорени карти';

  @override
  String flashcardsStatActivity(int count) {
    return 'Преговори на ден · общо $count';
  }

  @override
  String get flashcardsStatHistory => 'Последни отговори';

  @override
  String get flashcardsStatNoHistory =>
      'Все още няма преговори. Учете с тестето, за да видите напредъка си тук.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Прочитане на глас: $field';
  }

  @override
  String get speechVoice => 'Глас';

  @override
  String get speechVoiceDefault => 'Автоматично';

  @override
  String get speechVoiceOnline => 'изисква интернет';

  @override
  String get speechTest => 'Тест на гласа';

  @override
  String get importNext => 'Визуализация';

  @override
  String get importPreviewTitle => 'Свързване на колоните с полета';

  @override
  String get importIgnoreColumn => 'Пропускане';

  @override
  String importColumn(int n) {
    return 'Колона $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Готови карти: $ready · непълни редове, които ще бъдат пропуснати: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Изберете кои колони са лицето и гърбът.';

  @override
  String get actionMoveUp => 'Нагоре';

  @override
  String get actionMoveDown => 'Надолу';

  @override
  String get flashcardsLayoutTitle => 'Оформление на картата';

  @override
  String get flashcardsLayoutHint =>
      'Преименувайте, скрийте или пренаредете допълнителните полета на това тесте. Съдържанието на картите никога не се променя.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Показване на $field при учене';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Постепенно разкриване на отговора';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Първо се показва гърбът; всяко допълнително поле се отваря с докосване.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Показване на $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Този файл е по-голям от $mb МБ.';
  }

  @override
  String get flashcardsImage => 'Изображение';

  @override
  String get flashcardsAudio => 'Аудио';

  @override
  String get flashcardsAddImage => 'Добавяне на изображение';

  @override
  String get flashcardsAddAudio => 'Добавяне на аудио';

  @override
  String get flashcardsPlayAudio => 'Пускане на записа';

  @override
  String get flashcardsAudioUnavailable =>
      'Този запис не може да се възпроизведе на това устройство.';

  @override
  String get flashcardsCustomFields => 'Вашите полета';

  @override
  String get flashcardsTemplates => 'Шаблони';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Поле $n';
  }

  @override
  String get flashcardsAddField => 'Добавяне на поле';

  @override
  String get flashcardsFieldName => 'Име на полето';

  @override
  String get flashcardsFieldLangDefault => 'Език на страната';

  @override
  String get flashcardsTemplateConfirm =>
      'Шаблонът определя как се показват полетата и добавя своите полета. Картите и съществуващите ви полета остават непроменени.';

  @override
  String get flashcardsApplyTemplate => 'Прилагане';

  @override
  String get templateVocabulary => 'Речник';

  @override
  String get templateTwoTranslations => 'Дума с два превода';

  @override
  String get templateQuestionAnswer => 'Въпрос и отговор';

  @override
  String get templateDefinition => 'Термин и определение';

  @override
  String get templateGrammar => 'Граматично правило';

  @override
  String get templateFieldPlural => 'Множествено число';

  @override
  String get templateFieldTranslation2 => 'Втори превод';

  @override
  String get templateFieldSynonyms => 'Синоними';

  @override
  String get templateFieldRule => 'Правило';

  @override
  String get deckCategory => 'Ниво или тема';

  @override
  String get deckCategoryHint => 'напр. A1, Медицина';

  @override
  String get flashcardsSearchAll => 'Търсене във всички карти';

  @override
  String get flashcardsSearchAllHint => 'Дума, превод, пример, бележка, таг…';

  @override
  String get flashcardsAllDecks => 'Всички тестета';

  @override
  String get flashcardsAllLanguages => 'Всички езици';

  @override
  String get flashcardsLangUnset => 'Не е зададен език';

  @override
  String get flashcardsLevelUnset => 'Без ниво или тема';

  @override
  String get flashcardsByLanguage => 'Напредък по езици';

  @override
  String get flashcardsByLevel => 'Напредък по ниво или тема';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Тестета: $decks · карти: $cards · научени: $mature · за преговор: $due · верни: $correct (30 дни)';
  }

  @override
  String get flashcardsRecord => 'Запис';

  @override
  String get flashcardsRecording => 'Записване…';

  @override
  String get flashcardsRecordStop => 'Спиране и запазване';

  @override
  String get flashcardsMicDenied =>
      'Достъпът до микрофона е изключен. Разрешете го в системните настройки, за да записвате.';

  @override
  String get flashcardsRecordFailed => 'Записването не е налично на това устройство.';

  @override
  String get soundsTitle => 'Звуци';

  @override
  String get soundsNature => 'Природа';

  @override
  String get soundsNoise => 'Шум за фокус';

  @override
  String get soundRain => 'Дъжд';

  @override
  String get soundStorm => 'Гръмотевична буря';

  @override
  String get soundRiver => 'Река';

  @override
  String get soundOcean => 'Морски вълни';

  @override
  String get soundFire => 'Лагерен огън';

  @override
  String get soundForest => 'Горски птици';

  @override
  String get soundNight => 'Лятна нощ';

  @override
  String get soundWhite => 'Бял шум';

  @override
  String get soundPink => 'Розов шум';

  @override
  String get soundBrown => 'Кафяв шум';

  @override
  String get soundsPlay => 'Пускане';

  @override
  String get soundsSleep => 'Таймер за сън';

  @override
  String get soundsSleepOff => 'Изключен';

  @override
  String soundsSleepAt(String time) {
    return 'Спира в $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Едновременно могат да звучат до $count звука.';
  }

  @override
  String get soundsHint =>
      'Докоснете звук, за да започнете. Смесете няколко и задайте силата на всеки.';

  @override
  String get soundsMixer => 'Микс';

  @override
  String soundsVolumeOf(String name) {
    return 'Сила на звука: $name';
  }

  @override
  String get soundsChannel => 'Звуци от природата';

  @override
  String get settingsEndTone => 'Звук при край на таймера';

  @override
  String get toneGentle => 'Меки сигнали';

  @override
  String get toneBeeps => 'Сигнали';

  @override
  String get toneWood => 'Почукване по дърво';

  @override
  String get toneBird => 'Птичи зов';

  @override
  String get toneStream => 'Поточе';

  @override
  String get toneSystem => 'Звукът на телефона';

  @override
  String get speechOnPhone => 'На този телефон';

  @override
  String get speechAllLanguages => 'Всички езици';

  @override
  String get speechSearchLanguage => 'Търсене на езици';

  @override
  String get speechGetVoices => 'Изтегляне на още гласове';

  @override
  String get speechGetVoicesHint =>
      'Гласове за други езици могат да се изтеглят от настройките за реч на телефона.';

  @override
  String get speechSettingsFailed => 'Настройките за реч на този телефон не можаха да се отворят.';

  @override
  String get speechVoiceMissing => 'Няма инсталиран глас';

  @override
  String get speechPause => 'Пауза между повторенията';

  @override
  String speechSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String get speechExample => 'Прочитане на примера заедно с отговора';

  @override
  String get flashListen => 'Слушане';

  @override
  String get flashListenNext => 'Следваща карта';

  @override
  String get flashListenEmpty => 'Няма карти за слушане.';

  @override
  String get flashViewTable => 'Таблица';

  @override
  String get flashViewCards => 'Карти';

  @override
  String get flashSwapSides => 'Размяна на колоните';

  @override
  String get flashSort => 'Сортиране';

  @override
  String get flashSortNewest => 'Първо най-новите';

  @override
  String get flashSortAlpha => 'От А до Я';

  @override
  String get flashSortDue => 'Първо за преговор';

  @override
  String get flashSortHard => 'Първо най-трудните';

  @override
  String get flashPasteCards => 'Поставяне на карти';

  @override
  String get flashClipboardEmpty => 'В буфера няма текст.';

  @override
  String get flashMenuAdd => 'Добавяне на карти';

  @override
  String get flashMenuDeck => 'Тесте';

  @override
  String get flashToday => 'Днес';

  @override
  String get flashStudyNow => 'Учене';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count отговорени карти',
      one: '1 отговорена карта',
      zero: 'Няма отговорени карти',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Дъжд в гората';

  @override
  String get autoBackupTitle => 'Автоматични резервни копия';

  @override
  String get autoBackupDesc => 'Всеки ден на този телефон; пазят се последните 7';

  @override
  String get autoBackupHint =>
      'Тези копия остават на този телефон и се изтриват, ако приложението бъде деинсталирано. За да преминете на нов телефон, запазете файл с „Резервно копие“.';

  @override
  String get autoBackupNone => 'Все още няма автоматично резервно копие. Първото се прави днес.';

  @override
  String get autoBackupRestore => 'Възстановяване';

  @override
  String autoBackupConfirm(String date) {
    return 'Да се заменят ли всички текущи данни с резервното копие от $date?';
  }

  @override
  String get autoBackupRestored => 'Възстановено.';

  @override
  String get errorLogTitle => 'Дневник на грешките';

  @override
  String get errorLogHint =>
      'Ако нещо се обърка, то се отбелязва тук: само видът на грешката и мястото в кода, никога съдържанието ви. Споделете го, за да помогнете за отстраняването на проблема.';

  @override
  String get errorLogEmpty => 'Няма записани грешки.';

  @override
  String get errorLogClear => 'Изчистване';

  @override
  String get soundsWithFocus => 'Пускане със сесиите за фокус';

  @override
  String get soundsWithFocusHint =>
      'Миксът ви започва със сесията за фокус и спира по време на почивките.';

  @override
  String get soundsSavedMixes => 'Запазени миксове';

  @override
  String get soundsSaveMix => 'Запазване на този микс';

  @override
  String get soundsMixNameHint => 'Име, напр. Дъждовна библиотека';

  @override
  String soundsDeleteMix(String name) {
    return 'Да се изтрие ли миксът „$name“?';
  }

  @override
  String get settingsReviewReminderHint => 'Веднъж на ден, само когато има карти за преговор';

  @override
  String get settingsReviewTime => 'Час на напомнянето';

  @override
  String get shortcutFocus => 'Фокус';

  @override
  String get shortcutNewTask => 'Нова задача';

  @override
  String get shortcutReview => 'Преговор на карти';

  @override
  String get shortcutSounds => 'Звуци от природата';

  @override
  String get myDayTitle => 'Начало на деня';

  @override
  String get myDayHint => 'Денят ви с един поглед, после фокус с едно докосване';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачи за днес',
      one: '1 задача за днес',
      zero: 'Няма задачи за днес',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Днес няма повече събития';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Следва: $title в $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Остават $count навика',
      one: 'Остава 1 навик',
      zero: 'Всички навици са изпълнени',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Започнете със сесия за фокус';

  @override
  String get hijriMonth1 => 'Мухарам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Раби ал-ауал';

  @override
  String get hijriMonth4 => 'Раби ас-сани';

  @override
  String get hijriMonth5 => 'Джумада ал-ула';

  @override
  String get hijriMonth6 => 'Джумада ал-ахира';

  @override
  String get hijriMonth7 => 'Раджаб';

  @override
  String get hijriMonth8 => 'Шабан';

  @override
  String get hijriMonth9 => 'Рамазан';

  @override
  String get hijriMonth10 => 'Шауал';

  @override
  String get hijriMonth11 => 'Зул-каада';

  @override
  String get hijriMonth12 => 'Зул-хиджа';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year г. сл. Хиджра';
  }

  @override
  String get settingsHijri => 'Дати по Хиджра';

  @override
  String get settingsHijriHint => 'Показват се в календара и на началния екран (Умм ал-Кура)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дни',
      one: '1 ден',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done от $goal карти днес';
  }

  @override
  String get studyGoalReached => 'Дневната цел е постигната. Браво!';

  @override
  String get studyWeekTitle => 'Вашата седмица';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count отговорени карти за 7 дни',
      one: '1 отговорена карта за 7 дни',
      zero: 'Няма отговорени карти за 7 дни',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration фокус за 7 дни';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Поредица: $current · Рекорд: $best';
  }

  @override
  String get studyGoalTitle => 'Дневна цел (карти)';

  @override
  String get studyGoalOff => 'Изкл.';

  @override
  String get focusDndTitle => '„Не безпокойте“ по време на фокус';

  @override
  String get focusDndHint =>
      'Включва се за всяка сесия за фокус и се изключва по време на почивката';

  @override
  String get focusDndNeedsAccess =>
      'Разрешете достъпа в настройките на телефона, за да използвате това';

  @override
  String get voiceInput => 'Диктуване';

  @override
  String get voiceInputPrompt => 'Говорете сега';

  @override
  String get voiceInputUnavailable =>
      'Гласовото въвеждане не е налично на този телефон. Инсталирайте или включете услуга за разпознаване на говор (например „Разпознаване и синтез на говор“ от Google).';

  @override
  String get prayerFajr => 'Фаджр';

  @override
  String get prayerSunrise => 'Изгрев';

  @override
  String get prayerDhuhr => 'Зухр';

  @override
  String get prayerAsr => 'Аср';

  @override
  String get prayerMaghrib => 'Магриб';

  @override
  String get prayerIsha => 'Иша';

  @override
  String get prayerMethodMwl => 'Мюсюлманска световна лига';

  @override
  String get prayerMethodUmmAlQura => 'Умм ал-Кура, Мека';

  @override
  String get prayerMethodEgypt => 'Египетски генерален орган';

  @override
  String get prayerMethodJordan => 'Йордания, Министерство на вакъфите';

  @override
  String get prayerMethodKarachi => 'Университет за ислямски науки, Карачи';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Регион на Залива';

  @override
  String get prayerMethodKuwait => 'Кувейт';

  @override
  String get prayerMethodQatar => 'Катар';

  @override
  String get prayerMethodTurkey => 'Турция, Диянет';

  @override
  String get prayerMethodSingapore => 'Сингапур, Малайзия, Индонезия';

  @override
  String get prayerMethodFrance => 'Франция (12°)';

  @override
  String get prayerMethodRussia => 'Русия, Духовно управление';

  @override
  String prayerNotifTitle(String name) {
    return 'Време за $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Време за молитва · $time';
  }

  @override
  String get prayerTitle => 'Времена за молитва';

  @override
  String get prayerOffHint =>
      'Изберете града си, за да видите времената за молитва. Изчисляват се на телефона; не е нужен достъп до местоположението.';

  @override
  String get prayerChooseCity => 'Избиране на град';

  @override
  String get prayerCity => 'Град';

  @override
  String get prayerCitySearch => 'Търсене на град';

  @override
  String get prayerMethod => 'Метод на изчисление';

  @override
  String get prayerHanafiAsr => 'Аср по ханафитската школа (по-късно)';

  @override
  String get prayerReminders => 'Известие за всяко време за молитва';

  @override
  String get prayerPauseFocus => 'Пауза на фокуса по време на молитва';

  @override
  String get prayerPauseFocusHint => 'Текущата сесия спира на пауза; продължете след молитвата';

  @override
  String get prayerTurnOff => 'Изключване на времената за молитва';

  @override
  String get prayerAccuracyNote =>
      'Изчислените времена може да се различават с няколко минути от местната ви джамия.';

  @override
  String prayerNext(String name, String time) {
    return '$name в $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Този файл на Anki използва най-новия формат. В Anki експортирайте отново с включено „Поддръжка на по-стари версии на Anki“ и импортирайте този файл.';

  @override
  String get importTemplate => 'Шаблон за таблица';

  @override
  String get importTemplateFront => 'ябълка';

  @override
  String get importTemplateBack => 'кръгъл плод';

  @override
  String get importTemplateExample => 'Всеки ден ям по една ябълка.';

  @override
  String get importTemplateTag => 'храна';

  @override
  String get starterTitle => 'Начални тестета';

  @override
  String get starterHint =>
      'Добавете едно, за да започнете да учите веднага. Можете да го редактирате или изтриете по-късно.';

  @override
  String get starterAdd => 'Добавяне';

  @override
  String get starterWords => 'Ежедневни английски думи (арабски)';

  @override
  String get starterCapitals => 'Столици на света';

  @override
  String get starterElements => 'Химични елементи';

  @override
  String get settingsAccent => 'Цвят за акцент';

  @override
  String get accentViolet => 'Виолетов';

  @override
  String get accentBlue => 'Син';

  @override
  String get accentTeal => 'Синьозелен';

  @override
  String get accentGreen => 'Зелен';

  @override
  String get accentRose => 'Розов';

  @override
  String get accentAmber => 'Кехлибарен';

  @override
  String get settingsFlashTextSize => 'Размер на текста в картите';

  @override
  String get settingsFlashTextSample => 'Пример';

  @override
  String get widgetStartFocus => 'Докоснете за фокус';

  @override
  String widgetFocusUntil(String time) {
    return 'Фокус до $time';
  }

  @override
  String get widgetNoCardsDue => 'Карти: всичко е готово';

  @override
  String get faqMyDayQ => 'Какво прави „Начало на деня“?';

  @override
  String get faqMyDayA =>
      'Веднъж на ден началният екран го предлага: виждате задачите за днес, следващото събитие, оставащите навици и картите за преговор, след което започвате сесия за фокус с едно докосване. Задръжте иконата на приложението за бързи действия или добавете приспособлението на началния екран, за да виждате времето за фокус и картите за преговор.';

  @override
  String get faqTasksQ => 'Как да добавя задача с напомняне?';

  @override
  String get faqTasksA =>
      'Докоснете „Нова задача“ в Начало или „+“ в Задачи. Въведете заглавието или го кажете на микрофона, след това задайте краен срок, час и напомняне. Просрочените задачи са най-отгоре.';

  @override
  String get faqFocusQ => 'Как работи таймерът за фокус?';

  @override
  String get faqFocusA =>
      'Изберете Pomodoro, таймер или свободно време и натиснете „Старт“; почивките могат да следват автоматично. В Настройки можете да изберете крайния звук, да включите „Не безпокойте“ по време на фокус и да пускате звуците от природата с всяка сесия.';

  @override
  String get faqSoundsQ => 'Мога ли да смесвам звуци от природата?';

  @override
  String get faqSoundsA =>
      'Включете до шест истински записа, задайте силата на всеки и запазете микса с име. Те продължават да звучат на заден план, а таймер за сън може да ги спре. Не се използва музика.';

  @override
  String get faqCalendarQ => 'Може ли календарът да показва дати по Хиджра?';

  @override
  String get faqCalendarA =>
      'Да. Датите по Хиджра (Умм ал-Кура) се показват автоматично на арабски и могат да се включат в Настройки за всеки език. Събитията, задачите със срок и етапите на проектите се показват заедно.';

  @override
  String get faqFlashcardsQ => 'Как преговорът решава кои карти да видя?';

  @override
  String get faqFlashcardsA =>
      'Картите, които знаете добре, се връщат след по-дълги интервали, а тези, които пропускате, се връщат скоро (повторение на интервали). Оценявайте всеки отговор с „Отново“, „Трудно“, „Добре“ или „Лесно“. Задайте дневна цел и пазете поредицата си в картата „Днес“. Задайте дата на изпит в тесте, за да виждате оставащите дни и колко нови карти да учите всеки ден. Сортирайте по „Моят ред“, за да плъзгате картите на мястото им, докоснете високоговорителя на коя да е страна, за да я чуете, и задайте скорост и повторения в менюто „Реч“.';

  @override
  String get faqImportQ => 'Мога ли да донеса карти от Anki или Excel?';

  @override
  String get faqImportA =>
      'Да. В тесте изберете „Импортиране“ и после файл: Anki (.apkg), Excel (.xlsx) или CSV, и свържете колоните. Използвайте „Шаблон за таблица“, за да пишете карти на компютър. Изображенията и звуците във файловете на Anki не се импортират.';

  @override
  String get faqNotesQ => 'Какво могат бележките?';

  @override
  String get faqNotesA =>
      'Пишете свободно с контролни списъци и форматиране, закачайте или отбелязвайте като любими важните бележки, добавяйте тагове и свързвайте бележки със задачи. С бутона за микрофон можете да диктувате. Нова бележка може да започне от шаблон (лекция, резюме на книга, дневник, седмичен план), а бутонът за изображение добавя снимки.';

  @override
  String get faqHabitsQ => 'Как се броят поредиците от навици?';

  @override
  String get faqHabitsA =>
      'Един ден се брои, когато постигнете целта на навика в планиран ден. Паузата на навик пази поредицата. Всеки навик може да има свой час за напомняне.';

  @override
  String get faqGoalsQ => 'Как целите следят напредъка?';

  @override
  String get faqGoalsA =>
      'Задайте на целта стойност и единица, а след това отбелязвайте напредъка. Картата ѝ показва докъде сте стигнали и колко остава до крайния срок.';

  @override
  String get faqProjectsQ => 'За какво са проектите?';

  @override
  String get faqProjectsA =>
      'Групирайте задачите в проект, добавяйте етапи с дати и следете общия напредък. Етапите се показват и в календара.';

  @override
  String get faqInsightsQ => 'Какво показва Статистика?';

  @override
  String get faqInsightsA =>
      'Времето ви за фокус, изпълнените задачи и ученето по дни и седмици, с деликатни предложения. Всичко се изчислява на телефона ви.';

  @override
  String get faqSpacesQ => 'Къде са всички раздели?';

  @override
  String get faqSpacesA =>
      'Пространства съдържа всяка част от приложението (бележки, тестета, навици, цели, проекти, звуци и др.), така че основната лента остава проста.';

  @override
  String get faqBackupQ => 'Как се правят резервни копия на данните ми?';

  @override
  String get faqBackupA =>
      'Всеки ден приложението тихо пази шифровано копие на този телефон и съхранява последните 7. В Настройки можете също да експортирате защитен с парола файл с резервно копие и да го възстановите на друг телефон.';

  @override
  String get faqPrayerQ => 'Как работят времената за молитва?';

  @override
  String get faqPrayerA =>
      'Изберете града си в Настройки → Времена за молитва. Времената се изчисляват на телефона по метода, използван там, и можете да смените метода и школата за аср. Можете да получавате известие за всяка молитва, а текущата сесия за фокус спира на пауза.';

  @override
  String get faqPrivacyQ => 'Къде се съхраняват данните ми?';

  @override
  String get faqPrivacyA =>
      'Само на телефона ви, в шифрована база данни. Без акаунт и без проследяване. Интернет се използва само от функции, които включите сами, като асистента по желание.';

  @override
  String get faqAssistantQ => 'Какво е асистентът?';

  @override
  String get faqAssistantA =>
      'Помощник по желание, който свързвате със собствената си услуга с ИИ в Настройки. По подразбиране е изключен и пита, преди да изпрати какъвто и да е текст от бележка.';

  @override
  String get tourPlanTitle => 'Планирайте деня си';

  @override
  String get tourPlanBody =>
      'Задачи, календар и навици на едно спокойно място. Започвайте всяка сутрин с „Начало на деня“.';

  @override
  String get tourFocusTitle => 'Фокусирайте се дълбоко';

  @override
  String get tourFocusBody =>
      'Сесии с таймер, истински звуци от природата, „Не безпокойте“ и меки крайни тонове.';

  @override
  String get tourLearnTitle => 'Учете трайно';

  @override
  String get tourLearnBody =>
      'Карти с повторение на интервали, четене на глас на много езици и импортиране от Anki или Excel.';

  @override
  String get helpTitle => 'Помощ и въпроси';

  @override
  String get helpOpen => 'Отваряне';

  @override
  String get helpTour => 'Обиколка';

  @override
  String get tourNext => 'Напред';

  @override
  String get tourDone => 'Да започваме';

  @override
  String get transferColTitle => 'Заглавие';

  @override
  String get transferColNotes => 'Бележки';

  @override
  String get transferColBody => 'Текст';

  @override
  String get transferColDue => 'Краен срок';

  @override
  String get transferColPriority => 'Приоритет (0-3)';

  @override
  String get transferColDone => 'Готово';

  @override
  String get transferColProject => 'Проект';

  @override
  String get transferColCategory => 'Категория';

  @override
  String get transferTitle => 'Импортиране и експортиране';

  @override
  String get transferSaveAs => 'Запазване като';

  @override
  String get transferImport => 'Импортиране от файл';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV или таблица в Word. Колони: заглавие, краен срок (2026-12-31), приоритет 0-3, готово, проект, бележки. Задачите, които вече са в приложението, се пропускат.';

  @override
  String get transferImportNotesHint =>
      'Файловете Word, Markdown или текст стават бележка. Excel или CSV: по една бележка на ред (заглавие, текст).';

  @override
  String get transferSaved => 'Файлът е запазен';

  @override
  String get transferFailed => 'Файлът не можа да бъде създаден. Нищо не е променено.';

  @override
  String get transferUnsupported =>
      'Този файл не може да се прочете тук. Използвайте Excel, CSV, Word, Markdown или текст.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Добавени са $added',
      one: 'Добавен е 1',
      zero: 'Няма нищо ново за добавяне',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Текст';

  @override
  String get transferAllNotes => 'Всички бележки';

  @override
  String get transferThisNote => 'Тази бележка';

  @override
  String get transferDeckFormats => 'Запазване като Excel, Word или PDF';

  @override
  String get faqFilesQ => 'Мога ли да използвам файлове Excel, Word или PDF?';

  @override
  String get faqFilesA =>
      'Да. Задачи и Бележки имат бутон за импортиране и експортиране (две стрелки) горе, а всяко тесте го има в менюто си. Запазвайте като Excel, CSV, Word или PDF или внасяйте файлове Excel, CSV, Word, Markdown или текст. Имената на колоните може да са на всеки от езиците на приложението, а запазените файлове винаги могат да се импортират отново.';

  @override
  String get tplLecture => 'Лекция';

  @override
  String get tplBook => 'Резюме на книга';

  @override
  String get tplJournal => 'Дневник';

  @override
  String get tplWeek => 'Седмичен план';

  @override
  String get tplLectureBody => '## Основни моменти\n- \n\n## Въпроси\n- [ ] \n\n## Обобщение\n';

  @override
  String get tplBookBody =>
      '## Основна идея\n\n## Какво научих\n- \n\n## Цитати\n> \n\n## За прилагане\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Благодарен съм за\n- \n\n## Фокус за днес\n- [ ] \n\n## Бележки\n';

  @override
  String get tplWeekBody =>
      '## Цели за седмицата\n- [ ] \n\n### Събота\n- [ ] \n\n### Неделя\n- [ ] \n\n### Понеделник\n- [ ] \n\n### Вторник\n- [ ] \n\n### Сряда\n- [ ] \n\n### Четвъртък\n- [ ] \n\n### Петък\n- [ ] \n';

  @override
  String get tplHint => 'Започнете от шаблон';

  @override
  String get noteImage => 'Изображение';

  @override
  String get noteAddImage => 'Добавяне на изображение';

  @override
  String get noteImageUnreadable =>
      'Този файл не е изображение, което приложението може да прочете.';

  @override
  String get noteImageTooLarge => 'Това изображение е твърде голямо.';

  @override
  String get examSet => 'Задаване на дата на изпит';

  @override
  String get examDate => 'Дата на изпита';

  @override
  String get examToday => 'Изпитът е днес. Успех!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Изпит след $count дни',
      one: 'Изпит утре',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'учете по $count нови карти на ден',
      one: 'учете по 1 нова карта на ден',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'всички карти са научени, продължавайте с преговора';

  @override
  String examRaiseLimit(int count) {
    return 'Показване на $count нови карти на ден';
  }

  @override
  String get backupDriveHint =>
      'За да пазите копие онлайн, изберете Google Диск (или друго облачно приложение) на екрана за запазване, който ще се отвори.';

  @override
  String get flashShareDeck => 'Споделяне на тестето с приятел';

  @override
  String get flashSortManual => 'Моят ред (плъзгане)';

  @override
  String get flashReorderHint => 'Задръжте дръжката и плъзнете карта, за да я преместите.';

  @override
  String get flashReorderNeedsAll => 'Изчистете търсенето и филтрите, за да плъзгате карти.';

  @override
  String get flashDragHandle => 'Плъзнете за преместване';

  @override
  String get reportTitle => 'Месечен отчет';

  @override
  String get reportFocus => 'Време за фокус';

  @override
  String reportSessions(int count) {
    return 'Сесии: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Най-добър ден: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Активни дни: $count';
  }

  @override
  String get reportCards => 'Преговорени карти';

  @override
  String reportCardsKnown(String percent) {
    return 'Запомнени: $percent';
  }

  @override
  String get reportTasks => 'Изпълнени задачи';

  @override
  String get reportHabits => 'Отметки на навици';

  @override
  String get reportEmpty => 'Този месец още няма записи.';

  @override
  String get reportSave => 'Запазване като PDF или Word';

  @override
  String get reportPrevMonth => 'Предишен месец';

  @override
  String get reportNextMonth => 'Следващ месец';

  @override
  String get careTitle => 'Грижа за телефона и данните';

  @override
  String get storageTitle => 'Хранилище';

  @override
  String get storageSubtitle => 'Какво заема място и почистване на неизползвани изображения';

  @override
  String get storagePictures => 'Изображения в бележки';

  @override
  String get storageCardMedia => 'Изображения и аудио в карти';

  @override
  String get storageText => 'Текст на бележки';

  @override
  String get storageFree => 'Свободно на телефона';

  @override
  String get storageLow =>
      'Телефонът ви е почти пълен. Освободете място, за да продължат да работят резервните копия и напомнянията.';

  @override
  String storageUnused(int count, String size) {
    return 'Неизползвани изображения: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Няма неизползвани изображения. Всичко е подредено.';

  @override
  String get storageClean => 'Премахване на неизползваните изображения';

  @override
  String storageCleaned(int count) {
    return 'Премахнати изображения: $count';
  }

  @override
  String get storageHint =>
      'Изображението се смята за неизползвано само когато никоя бележка не го показва, включително бележките в кошчето.';

  @override
  String get batteryTitle => 'Напомнянията да работят';

  @override
  String get batterySubtitle =>
      'Някои телефони спират приложенията във фонов режим. Проверете своя.';

  @override
  String get batteryStatusOk =>
      'Икономията на батерията не ограничава това приложение. Напомнянията и звуците трябва да пристигат навреме.';

  @override
  String get batteryStatusLimited =>
      'Икономията на батерията може да спира това приложение във фонов режим, затова напомнянията и звуците може да закъсняват или да липсват.';

  @override
  String get batteryOpen => 'Отваряне на настройките на батерията';

  @override
  String get batteryOpenApp => 'Отваряне на настройките на приложението';

  @override
  String get batteryGeneric =>
      'В настройките на батерията изберете това приложение и задайте „Без ограничения“ (или „Без оптимизиране“).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: отворете също Сигурност › Разрешения › Автоматично стартиране и включете това приложение, а за икономията на батерията задайте „Без ограничения“.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: отворете Батерия › това приложение и разрешете фоновата активност и автоматичното стартиране; заключете приложението в списъка с последни.';

  @override
  String get batterySamsung =>
      'Samsung: Батерия › Ограничения за използване във фонов режим: премахнете това приложение от „Приложения в спящ режим“ и „Приложения в дълбок спящ режим“.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Стартиране на приложения › това приложение › ръчно управление и разрешете автоматично стартиране, вторично стартиране и работа във фонов режим.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Батерия › Консумация на енергия във фонов режим › разрешете това приложение и включете автоматичното стартиране в разрешенията.';

  @override
  String get whatsNewTitle => 'Какво ново';

  @override
  String get whatsNewSubtitle => 'Последните промени в няколко реда';

  @override
  String get whatsNewDone => 'Разбрах';

  @override
  String get whatsNewOrderTitle => 'Плъзгайте картите в свой ред';

  @override
  String get whatsNewOrderBody =>
      'В тесте изберете Сортиране › Моят ред, после задръжте дръжката и плъзнете.';

  @override
  String get whatsNewSpeechTitle => 'Високоговорител на всяка страна на картата';

  @override
  String get whatsNewSpeechBody =>
      'Докоснете го, за да чуете думата или превода. Скоростта, повторенията и гласът са в менюто за преговор. Езикът се разпознава от текста.';

  @override
  String get whatsNewReportTitle => 'Месечен отчет';

  @override
  String get whatsNewReportBody =>
      'В Статистика докоснете иконата на отчета, за да видите месеца и да го запазите като PDF или Word.';

  @override
  String get whatsNewCareTitle => 'Грижа за телефона и данните';

  @override
  String get whatsNewCareBody =>
      'В Настройки вече има страница за хранилището с почистване на изображения и ръководство за батерията за марката на телефона ви.';

  @override
  String get whatsNewSoundTitle => 'По-спокойни звуци';

  @override
  String get whatsNewSoundBody =>
      'Звуците от природата са по-меки и по-тихи, а картите с изображения са по-красиви.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Проверено на $date: последното резервно копие се отваря правилно.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Проверено на $date: открито е повредено резервно копие и е заменено с ново.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Проверено на $date: последното резервно копие не можа да се отвори. Запазете сами файл с резервно копие от Настройки.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Обикновено учите около $time';
  }

  @override
  String get smartReviewTimeUse => 'Използване';

  @override
  String get widgetNewNote => 'Нова бележка';

  @override
  String get noteConnections => 'Тагове, връзки и задачи';

  @override
  String get navCards => 'Карти';

  @override
  String get studyAnswerWay => 'Начин на отговор';

  @override
  String get studyMorePractice => 'Допълнителна практика';

  @override
  String get studySessionSettings => 'Настройки на сесията';

  @override
  String get focusAdjustTitle => 'Вашата сесия';

  @override
  String get focusPresetsTitle => 'Готови';

  @override
  String get focusPresetStudy => 'Учене';

  @override
  String get focusPresetDeep => 'Задълбочена работа';

  @override
  String get focusPresetQuick => 'Бърз спринт';

  @override
  String get focusPresetReading => 'Четене';

  @override
  String get focusPresetWorkout => 'Тренировъчни рундове';

  @override
  String get focusAdjustMinutes => 'Продължителност на фокуса';

  @override
  String get focusAdjustBreak => 'Продължителност на почивката';

  @override
  String get focusAdjustRounds => 'Рундове';

  @override
  String get focusRoundsOpen => 'Без ограничение';

  @override
  String focusMinutesShort(String n) {
    return '$n мин';
  }

  @override
  String get focusTapToAdjust => 'Докоснете, за да промените времето';

  @override
  String get flashArrangeDecks => 'Подреждане на тестетата';

  @override
  String get flashDeckActions => 'Опции за тестето';

  @override
  String get starterBrowse => 'Готови тестета';

  @override
  String get starterBrowseHint => 'Добавете с едно докосване и започнете да учите';

  @override
  String get dashOpenDecks => 'Отворете картите си';

  @override
  String speechVoiceNumber(String n) {
    return 'Глас $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Чудесен поток. Почивка $m мин?';
  }

  @override
  String get focusFlowBreakStart => 'Начало на почивката';

  @override
  String tasksFinishAt(String time) {
    return 'Започнете сега и ще приключите всичко до $time';
  }

  @override
  String get focusCalmPacing => 'Спокойно темпо';

  @override
  String get focusCalmPacingHint => 'Само цели минути и кръгът, без секунди';

  @override
  String get focusFlipHint => 'Обърнете телефона с екрана надолу, за да започнете';

  @override
  String get focusImmersive => 'Режим на потапяне';

  @override
  String get focusImmersiveBlack => 'Чисто черно (пести батерия)';

  @override
  String get focusFlipToFocus => 'Обърнете за фокус';

  @override
  String get focusFlipToFocusHint =>
      'В режим на потапяне: с екрана надолу започва, при вдигане спира на пауза';

  @override
  String get guardTitle => 'Защита от разсейване';

  @override
  String get guardSubtitle => 'Спиране на разсейващите приложения, докато се фокусирате';

  @override
  String get guardSwitch => 'Спиране на разсейващите приложения';

  @override
  String get guardSwitchHint => 'По време на сесиите за фокус и часовете на Защита по време';

  @override
  String get guardNeedsAccess =>
      'Нужен е превключвателят за достъпност: докоснете, за да го включите';

  @override
  String get guardDisclosureTitle => 'Как работи защитата';

  @override
  String get guardDisclosureBody =>
      'За да спира избраните от вас приложения, Deep Focus използва услугата за достъпност на Android, за да вижда кое приложение е отворено. Когато „Затваряне на Shorts и Reels“ е включено, тя проверява и дали на екрана има плейър за кратки видеоклипове.\n\nТя не чете текст, не запазва нищо от видяното и не изпраща нищо никъде: всичко остава на телефона ви. Можете да я изключите по всяко време от настройките за достъпност.';

  @override
  String get guardAgree => 'Съгласие и отваряне на настройките';

  @override
  String get guardModeGentle => 'Мек';

  @override
  String get guardModeStrict => 'Строг';

  @override
  String get guardGentleHint => '5-секундна пауза за дишане, след това избирате вие';

  @override
  String get guardStrictHint =>
      'Избраните приложения остават затворени до края на времето за фокус';

  @override
  String get guardApps => 'Приложения за спиране';

  @override
  String get guardAppsAllowed => 'Разрешени приложения';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count приложения',
      one: '1 приложение',
      zero: 'Още няма избрани',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Разрешаване само на избраните приложения';

  @override
  String get guardAllowlistHint =>
      'Всички други приложения се спират; обажданията, настройките и клавиатурата винаги работят';

  @override
  String get guardShorts => 'Затваряне на Shorts и Reels';

  @override
  String get guardShortsHint =>
      'Винаги когато защитата е включена. Без гаранция: тези приложения често се променят';

  @override
  String get guardSchedule => 'Защита по време';

  @override
  String get guardScheduleHint =>
      'Защита и в определени дни и часове, например в училище или на работа';

  @override
  String get guardFrom => 'От';

  @override
  String get guardTo => 'До';

  @override
  String get guardSearchApps => 'Търсене на приложения';

  @override
  String get guardNoApps => 'Няма намерени приложения';

  @override
  String get guardPrivacy =>
      'Работи само на телефона ви: защитата вижда кое приложение е отворено, никога какво има в него, и не изпраща нищо.';

  @override
  String get guardBreathe => 'Вдишайте… и издишайте';

  @override
  String get guardQuestion => 'Нужно ли ви е това приложение сега?';

  @override
  String get guardBackToFocus => 'Обратно към фокуса';

  @override
  String get guardOpenFive => 'Отваряне за 5 минути';

  @override
  String get guardStrictBody => 'Това приложение е спряно до края на времето за фокус.';

  @override
  String get guardShortsClosed => 'Кратките видеоклипове се затварят, докато защитата е включена';

  @override
  String get faqGuardQ => 'Как да спра разсейващите приложения, докато се фокусирам?';

  @override
  String get faqGuardA =>
      'Отворете Фокус → настройките на таймера → Защита от разсейване. Изберете приложенията, после Мек (5 секунди дишане и въпросът „Нужно ли ви е това приложение сега?“) или Строг (остават затворени). Работи по време на сесиите за фокус и, със Защита по време, в зададените от вас дни и часове. „Разрешаване само на избраните приложения“ спира всичко друго; обажданията, настройките и клавиатурата винаги работят. Android ще ви помоли веднъж да включите защитата в настройките за достъпност. Тя вижда само кое приложение е отворено и не изпраща нищо.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Преместено в „$name“';
  }

  @override
  String get notesDragHint => 'Задръжте бележка и я плъзнете върху тетрадка';

  @override
  String get guardReviewCards => 'По-добре преговорете карти';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Чакат ви $count карти',
      one: 'Чака ви 1 карта',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Спешно: задръжте 10 секунди';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Продължете да държите… $n';
  }

  @override
  String get guardWeekTitle => 'Тази седмица';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count паузи',
      one: '1 пауза',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'обратно към фокуса $count пъти',
      one: 'обратно към фокуса веднъж',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Преименуване на думи';

  @override
  String get wordsSubtitle => 'Ваша дума за всеки текст в приложението';

  @override
  String get wordsHint =>
      'Докоснете текст, за да го промените. Думите ви важат само за този език и се пазят в резервните копия.';

  @override
  String get wordsSearch => 'Търсене на текстове';

  @override
  String get wordsChangedOnly => 'Само променените';

  @override
  String wordsOriginal(String text) {
    return 'Оригинал: $text';
  }

  @override
  String get wordsReset => 'Връщане на оригинала';

  @override
  String get wordsResetAll => 'Нулиране на всички думи';

  @override
  String get wordsResetAllConfirm => 'Всички текстове на този език се връщат към оригинала.';

  @override
  String get wordsNone => 'Няма намерен текст';

  @override
  String get settingsLanguageSearch => 'Търсене на езици';

  @override
  String get settingsLanguageNoMatch => 'Няма съвпадащ език';

  @override
  String get soundsMyMusic => 'Вашето аудио';

  @override
  String get soundsMusicHint => 'Пуснете аудиофайл от телефона си. Нищо не се копира или качва.';

  @override
  String get soundsChooseMusic => 'Изберете аудио';

  @override
  String get soundsRemoveMusic => 'Премахване на аудиото';

  @override
  String get wordPacksTitle => 'Пакети с думи';

  @override
  String get wordPacksHint =>
      'Списъци с думи по теми. Изтеглете само езика, който искате, после свободно редактирайте или изтривайте картите.';

  @override
  String get wordPacksFailed => 'Изтеглянето не бе успешно. Проверете връзката.';

  @override
  String get wordPacksEmpty => 'Думите за този език все още се подготвят.';
}
