// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Главная';

  @override
  String get navTasks => 'Задачи';

  @override
  String get navFocus => 'Фокус';

  @override
  String get navCalendar => 'Календарь';

  @override
  String get navSpaces => 'Разделы';

  @override
  String get moduleProjects => 'Проекты';

  @override
  String get moduleNotes => 'Заметки';

  @override
  String get moduleFlashcards => 'Карточки';

  @override
  String get moduleGoals => 'Цели';

  @override
  String get moduleHabits => 'Привычки';

  @override
  String get moduleAnalytics => 'Аналитика';

  @override
  String get moduleSearch => 'Поиск';

  @override
  String get moduleAssistant => 'Ассистент';

  @override
  String get moduleSettings => 'Настройки';

  @override
  String get moduleTrash => 'Корзина';

  @override
  String get actionSave => 'Сохранить';

  @override
  String get actionCancel => 'Отмена';

  @override
  String get actionDelete => 'Удалить';

  @override
  String get actionEdit => 'Изменить';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionAdd => 'Добавить';

  @override
  String get actionCreate => 'Создать';

  @override
  String get actionClose => 'Закрыть';

  @override
  String get actionBack => 'Назад';

  @override
  String get actionUndo => 'Отменить';

  @override
  String get actionRestore => 'Восстановить';

  @override
  String get actionRetry => 'Повторить';

  @override
  String get actionContinue => 'Продолжить';

  @override
  String get actionSkip => 'Пропустить';

  @override
  String get actionArchive => 'В архив';

  @override
  String get actionUnarchive => 'Из архива';

  @override
  String get actionPin => 'Закрепить';

  @override
  String get actionUnpin => 'Открепить';

  @override
  String get actionMore => 'Ещё';

  @override
  String get actionClear => 'Очистить';

  @override
  String get actionSearch => 'Поиск';

  @override
  String get actionSort => 'Сортировка';

  @override
  String get actionShare => 'Поделиться';

  @override
  String get actionImport => 'Импорт';

  @override
  String get actionExport => 'Экспорт';

  @override
  String get actionPause => 'Пауза';

  @override
  String get actionResume => 'Продолжить';

  @override
  String get actionStart => 'Начать';

  @override
  String get actionStop => 'Стоп';

  @override
  String get actionComplete => 'Завершить';

  @override
  String get actionDeleteForever => 'Удалить навсегда';

  @override
  String get actionEmptyTrash => 'Очистить корзину';

  @override
  String get actionUnlink => 'Отвязать';

  @override
  String get actionCustomize => 'Настроить';

  @override
  String get actionPreview => 'Просмотр';

  @override
  String get actionLog => 'Отметить прогресс';

  @override
  String get stateLoading => 'Загрузка…';

  @override
  String get stateSaving => 'Сохранение…';

  @override
  String get stateSaved => 'Сохранено';

  @override
  String get stateUnsaved => 'Есть несохранённые изменения';

  @override
  String get errorGenericTitle => 'Что-то пошло не так';

  @override
  String get errorGenericMessage => 'Ваши данные в безопасности. Попробуйте ещё раз.';

  @override
  String get errorLoadFailed => 'Не удалось загрузить содержимое.';

  @override
  String get errorSaveFailed => 'Не удалось сохранить. Ваши изменения никуда не делись.';

  @override
  String get validationRequired => 'Обязательное поле';

  @override
  String get validationTitleRequired => 'Введите название';

  @override
  String get validationNameRequired => 'Введите имя';

  @override
  String get validationTooLong => 'Слишком длинно';

  @override
  String get validationEndBeforeStart => 'Окончание должно быть позже начала';

  @override
  String get validationStartAfterDue => 'Дата начала должна быть раньше срока';

  @override
  String get validationPositiveNumber => 'Введите число больше нуля';

  @override
  String get validationDependencyCycle => 'Это создаст циклическую зависимость';

  @override
  String get validationInvalidRepeat => 'Недопустимое правило повтора';

  @override
  String get deletedItem => 'Перемещено в корзину';

  @override
  String get untitled => 'Без названия';

  @override
  String get noProject => 'Без проекта';

  @override
  String get greetingMorning => 'Доброе утро';

  @override
  String get greetingAfternoon => 'Добрый день';

  @override
  String get greetingEvening => 'Добрый вечер';

  @override
  String get dashFocusToday => 'Фокус сегодня';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done из $target';
  }

  @override
  String get dashStartFocus => 'Начать фокус';

  @override
  String get dashFocusRunning => 'Сессия идёт';

  @override
  String get dashTodayTasks => 'Срок сегодня';

  @override
  String get dashAgenda => 'Расписание';

  @override
  String get dashHabits => 'Привычки на сегодня';

  @override
  String get dashGoals => 'Цели';

  @override
  String get dashReview => 'Повторение';

  @override
  String get dashRecentNotes => 'Недавние заметки';

  @override
  String get dashInsight => 'Совет';

  @override
  String get dashSeeAll => 'Все';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточки к повторению',
      many: '$count карточек к повторению',
      few: '$count карточки к повторению',
      one: '$count карточка к повторению',
      zero: 'Нет карточек к повторению',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Повторить';

  @override
  String get dashCustomizeTitle => 'Разделы главной';

  @override
  String get dashCustomizeHint => 'Выберите, что показывать на главном экране.';

  @override
  String get dashSectionFocus => 'Фокус';

  @override
  String get dashSectionToday => 'Задачи на сегодня';

  @override
  String get dashSectionAgenda => 'Расписание';

  @override
  String get dashSectionHabits => 'Привычки';

  @override
  String get dashSectionGoals => 'Цели';

  @override
  String get dashSectionReview => 'Повторение карточек';

  @override
  String get dashSectionNotes => 'Недавние заметки';

  @override
  String get dashSectionInsight => 'Советы';

  @override
  String get quickAddTask => 'Новая задача';

  @override
  String get quickAddNote => 'Новая заметка';

  @override
  String get quickAddEvent => 'Новое событие';

  @override
  String get quickStartFocus => 'Фокус';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'У вас $count просроченной задачи. Начните с самой важной.',
      many: 'У вас $count просроченных задач. Начните с самой важной.',
      few: 'У вас $count просроченные задачи. Начните с самой важной.',
      one: 'У вас $count просроченная задача. Начните с самой важной.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'До дневной цели по фокусу осталось $minutes мин.';
  }

  @override
  String get insightCardsDue => 'Повторите карточки сейчас, пока материал свеж в памяти.';

  @override
  String get insightAllClear =>
      'Всё идёт по плану. Спланируйте завтрашний день или сделайте осознанную паузу.';

  @override
  String insightHabitStreak(String habit) {
    return 'Сохраните серию: «$habit» сегодня ещё не отмечена.';
  }

  @override
  String get focusTitle => 'Фокус';

  @override
  String get focusModePomodoro => 'Помодоро';

  @override
  String get focusModeCountdown => 'Таймер';

  @override
  String get focusModeCountUp => 'Секундомер';

  @override
  String get focusModeOpen => 'Без лимита';

  @override
  String get focusPhaseWork => 'Фокус';

  @override
  String get focusPhaseShortBreak => 'Короткий перерыв';

  @override
  String get focusPhaseLongBreak => 'Длинный перерыв';

  @override
  String get focusReady => 'Начните, когда будете готовы';

  @override
  String get focusPaused => 'Пауза';

  @override
  String get focusRunning => 'В фокусе';

  @override
  String get focusDuration => 'Длительность';

  @override
  String get focusLinkTask => 'Привязать задачу';

  @override
  String get focusLinkedTask => 'В работе';

  @override
  String get focusNoTask => 'Задача не привязана';

  @override
  String focusCycle(int current, int total) {
    return 'Цикл $current из $total';
  }

  @override
  String get focusSkipBreak => 'Пропустить перерыв';

  @override
  String get focusStartBreak => 'Начать перерыв';

  @override
  String get focusStartNext => 'Следующий фокус';

  @override
  String get focusSessionComplete => 'Сессия завершена';

  @override
  String get focusSessionStopped => 'Сессия сохранена';

  @override
  String focusSessionSummary(String duration) {
    return 'Время в фокусе: $duration.';
  }

  @override
  String get focusAddNote => 'Добавьте заметку об этой сессии';

  @override
  String get focusHistory => 'История';

  @override
  String get focusNoHistory => 'Здесь появятся завершённые сессии';

  @override
  String get focusTargets => 'Цели';

  @override
  String get focusDailyTarget => 'Цель на день';

  @override
  String get focusWeeklyTarget => 'Цель на неделю';

  @override
  String get focusOutcomeCompleted => 'Завершена';

  @override
  String get focusOutcomeInterrupted => 'Остановлена досрочно';

  @override
  String get focusRecovered => 'Сессия продолжалась, пока приложение было закрыто.';

  @override
  String get focusCompletedWhileAway =>
      'Пока приложение было закрыто, сессия завершилась и была сохранена.';

  @override
  String get focusNotificationsOff =>
      'Уведомления выключены. Вы не получите оповещение об окончании сессии.';

  @override
  String get focusBatteryHint =>
      'Некоторые устройства приостанавливают приложения в фоне. Таймер остаётся точным, но оповещения могут запаздывать. Разрешите работу без ограничений батареи для надёжных оповещений.';

  @override
  String get focusOpenSettings => 'Открыть настройки';

  @override
  String get focusStopConfirmTitle => 'Остановить сессию?';

  @override
  String get focusStopConfirmMessage => 'Уже набранное время фокуса будет сохранено.';

  @override
  String get focusDiscard => 'Не сохранять';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минуты',
      many: '$minutes минут',
      few: '$minutes минуты',
      one: '$minutes минута',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, осталось $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, прошло $time';
  }

  @override
  String get focusDeleteSession => 'Удалить сессию';

  @override
  String get tasksTitle => 'Задачи';

  @override
  String get tasksViewToday => 'Сегодня';

  @override
  String get tasksViewUpcoming => 'Скоро';

  @override
  String get tasksViewAll => 'Все';

  @override
  String get tasksViewOverdue => 'Просрочено';

  @override
  String get tasksViewCompleted => 'Готово';

  @override
  String get tasksQuickAddHint => 'Добавить задачу…';

  @override
  String get tasksEmptyTitle => 'Всё чисто';

  @override
  String get tasksEmptyMessage => 'Добавьте задачу, чтобы спланировать день.';

  @override
  String get tasksEmptyCompleted => 'Здесь появятся выполненные задачи.';

  @override
  String get taskNew => 'Новая задача';

  @override
  String get taskEdit => 'Изменить задачу';

  @override
  String get taskTitleLabel => 'Название';

  @override
  String get taskTitleHint => 'Что нужно сделать?';

  @override
  String get taskDescriptionLabel => 'Описание';

  @override
  String get taskNotesLabel => 'Заметки';

  @override
  String get taskPriority => 'Приоритет';

  @override
  String get priorityNone => 'Нет';

  @override
  String get priorityLow => 'Низкий';

  @override
  String get priorityMedium => 'Средний';

  @override
  String get priorityHigh => 'Высокий';

  @override
  String get priorityUrgent => 'Срочно';

  @override
  String get taskDueDate => 'Срок';

  @override
  String get taskStartDate => 'Дата начала';

  @override
  String get taskReminder => 'Напоминание';

  @override
  String get taskRepeat => 'Повтор';

  @override
  String get taskProject => 'Проект';

  @override
  String get taskCategory => 'Категория';

  @override
  String get taskCategoryHint => 'Например: Работа, Дом, Учёба';

  @override
  String get taskEstimateMinutes => 'Оценка (мин)';

  @override
  String get taskTracked => 'Учтённый фокус';

  @override
  String get taskLabels => 'Метки';

  @override
  String get taskAddLabel => 'Новая метка';

  @override
  String get taskChecklist => 'Чек-лист';

  @override
  String get taskAddChecklistItem => 'Добавить пункт';

  @override
  String get taskSubtasks => 'Подзадачи';

  @override
  String get taskAddSubtask => 'Добавить подзадачу';

  @override
  String get taskDependencies => 'Зависит от';

  @override
  String get taskAddDependency => 'Добавить блокирующую задачу';

  @override
  String get taskLinkedNotes => 'Связанные заметки';

  @override
  String get taskSetTime => 'Указать время';

  @override
  String get taskNoDate => 'Без даты';

  @override
  String get taskCompleted => 'Задача выполнена';

  @override
  String get taskNextOccurrence => 'Создан следующий повтор';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Просрочено на $days дня',
      many: 'Просрочено на $days дней',
      few: 'Просрочено на $days дня',
      one: 'Просрочено на $days день',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Отметить «$title» как выполненную';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Отметить «$title» как невыполненную';
  }

  @override
  String get sortSmart => 'Умная';

  @override
  String get sortDueDate => 'Срок';

  @override
  String get sortPriority => 'Приоритет';

  @override
  String get sortCreated => 'Новые';

  @override
  String get sortTitle => 'Название';

  @override
  String get filterAllProjects => 'Все проекты';

  @override
  String get filterAnyPriority => 'Любой приоритет';

  @override
  String get filterTitle => 'Фильтр и сортировка';

  @override
  String get dateToday => 'Сегодня';

  @override
  String get dateTomorrow => 'Завтра';

  @override
  String get dateYesterday => 'Вчера';

  @override
  String get repeatNever => 'Не повторять';

  @override
  String get repeatDaily => 'Каждый день';

  @override
  String get repeatWeekdays => 'По будням';

  @override
  String get repeatWeekly => 'Каждую неделю';

  @override
  String get repeatMonthly => 'Каждый месяц';

  @override
  String get repeatYearly => 'Каждый год';

  @override
  String get repeatCustom => 'Настроить';

  @override
  String get repeatEvery => 'Повторять каждые';

  @override
  String get repeatOnDays => 'По дням';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'дня',
      many: 'дней',
      few: 'дня',
      one: 'день',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'недели',
      many: 'недель',
      few: 'недели',
      one: 'неделю',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'месяца',
      many: 'месяцев',
      few: 'месяца',
      one: 'месяц',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'года',
      many: 'лет',
      few: 'года',
      one: 'год',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count раза',
      many: '$count раз',
      few: '$count раз',
      one: '$count раза',
    );
    return 'Завершить после $_temp0';
  }

  @override
  String get repeatEndsNever => 'Без окончания';

  @override
  String get reminderAtTime => 'В момент события';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'За $minutes минуты',
      many: 'За $minutes минут',
      few: 'За $minutes минуты',
      one: 'За $minutes минуту',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'За $hours часа',
      many: 'За $hours часов',
      few: 'За $hours часа',
      one: 'За $hours час',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => 'За 1 день';

  @override
  String get projectsTitle => 'Проекты';

  @override
  String get projectsEmptyTitle => 'Проектов пока нет';

  @override
  String get projectsEmptyMessage => 'Объединяйте связанные задачи, заметки и время фокуса.';

  @override
  String get projectNew => 'Новый проект';

  @override
  String get projectEdit => 'Изменить проект';

  @override
  String get projectName => 'Название';

  @override
  String get projectDescription => 'Описание';

  @override
  String get projectGoal => 'Цель';

  @override
  String get projectDeadline => 'Дедлайн';

  @override
  String get projectColor => 'Цвет';

  @override
  String get projectIcon => 'Значок';

  @override
  String get projectProgress => 'Прогресс';

  @override
  String projectTasksDone(int done, int total) {
    return 'Выполнено задач: $done из $total';
  }

  @override
  String get projectFocusTime => 'Время фокуса';

  @override
  String get projectArchived => 'Архивные проекты';

  @override
  String get projectShowArchived => 'Показать архив';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Осталось $days дня',
      many: 'Осталось $days дней',
      few: 'Осталось $days дня',
      one: 'Остался $days день',
      zero: 'Срок сегодня',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Дедлайн прошёл';

  @override
  String get calendarTitle => 'Календарь';

  @override
  String get calendarMonth => 'Месяц';

  @override
  String get calendarWeek => 'Неделя';

  @override
  String get calendarDay => 'День';

  @override
  String get calendarToday => 'Сегодня';

  @override
  String get calendarPrevious => 'Назад';

  @override
  String get calendarNext => 'Вперёд';

  @override
  String get calendarNoEvents => 'Ничего не запланировано';

  @override
  String get calendarAllDay => 'Весь день';

  @override
  String get eventNew => 'Новое событие';

  @override
  String get eventEdit => 'Изменить событие';

  @override
  String get eventTitleHint => 'Название события';

  @override
  String get eventStarts => 'Начало';

  @override
  String get eventEnds => 'Окончание';

  @override
  String get eventKind => 'Тип';

  @override
  String get eventKindEvent => 'Событие';

  @override
  String get eventKindTimeBlock => 'Блок времени';

  @override
  String get eventKindFocus => 'Сессия фокуса';

  @override
  String get eventKindGoal => 'Личная цель';

  @override
  String get eventDescription => 'Подробности';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пересекается с $count событиями',
      many: 'Пересекается с $count событиями',
      few: 'Пересекается с $count событиями',
      one: 'Пересекается с $count событием',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'В этот день есть пересечения в расписании';

  @override
  String get calendarTaskDue => 'Срок задачи';

  @override
  String get calendarDragHint => 'Нажмите и удерживайте событие, затем перетащите, чтобы перенести';

  @override
  String get calendarRescheduled => 'Событие перенесено';

  @override
  String get calendarScheduleTask => 'Запланировать блок времени';

  @override
  String get notesTitle => 'Заметки';

  @override
  String get notesViewAll => 'Все';

  @override
  String get notesViewPinned => 'Закреплённые';

  @override
  String get notesViewFavorites => 'Избранное';

  @override
  String get notesViewArchived => 'Архив';

  @override
  String get notesTags => 'Теги';

  @override
  String get notesNewNotebook => 'Новый блокнот';

  @override
  String get notesNoNotebook => 'Без блокнота';

  @override
  String get notesEmptyTitle => 'Чистый лист';

  @override
  String get notesEmptyMessage => 'Записывайте идеи, итоги встреч и знания.';

  @override
  String get noteTitleHint => 'Заголовок';

  @override
  String get noteBodyHint =>
      'Начните писать… Используйте # для тегов и [[Заголовок]] для ссылок на заметки.';

  @override
  String get noteFavorite => 'В избранное';

  @override
  String get noteUnfavorite => 'Убрать из избранного';

  @override
  String get noteMoveTo => 'Переместить в блокнот';

  @override
  String get noteBacklinks => 'Ссылаются сюда';

  @override
  String get noteLinkedTasks => 'Связанные задачи';

  @override
  String get noteLinkTask => 'Связать задачу';

  @override
  String get noteLinkProject => 'Проект';

  @override
  String get noteFormatHeading => 'Заголовок';

  @override
  String get noteFormatBold => 'Жирный';

  @override
  String get noteFormatItalic => 'Курсив';

  @override
  String get noteFormatList => 'Маркированный список';

  @override
  String get noteFormatChecklist => 'Чек-лист';

  @override
  String get noteFormatLink => 'Ссылка';

  @override
  String noteEdited(String time) {
    return 'Изменено $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count слова',
      many: '$count слов',
      few: '$count слова',
      one: '$count слово',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Карточки';

  @override
  String get flashEmptyTitle => 'Создайте первую колоду';

  @override
  String get flashEmptyMessage =>
      'Интервальное повторение показывает каждую карточку прямо перед тем, как вы её забудете.';

  @override
  String get deckNew => 'Новая колода';

  @override
  String get deckEdit => 'Изменить колоду';

  @override
  String get deckName => 'Название колоды';

  @override
  String get deckDescription => 'Описание';

  @override
  String get deckDailyNew => 'Новых карточек в день';

  @override
  String get deckDailyReview => 'Цель повторений в день';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточки',
      many: '$count карточек',
      few: '$count карточки',
      one: '$count карточка',
      zero: 'Нет карточек',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'К повторению';

  @override
  String get deckNewCards => 'Новые';

  @override
  String get deckMature => 'Изученные';

  @override
  String get deckStudy => 'Учить';

  @override
  String get deckNothingDue => 'Сейчас повторять нечего. Загляните позже.';

  @override
  String get deckEmptyCards => 'Добавьте карточки, чтобы начать учиться.';

  @override
  String get cardNew => 'Новая карточка';

  @override
  String get cardEdit => 'Изменить карточку';

  @override
  String get cardFront => 'Лицевая сторона';

  @override
  String get cardBack => 'Обратная сторона';

  @override
  String get cardFrontHint => 'Вопрос или термин';

  @override
  String get cardBackHint => 'Ответ или определение';

  @override
  String get cardTags => 'Теги';

  @override
  String get cardAddAnother => 'Сохранить и добавить ещё';

  @override
  String get reviewShowAnswer => 'Показать ответ';

  @override
  String get reviewAgain => 'Снова';

  @override
  String get reviewHard => 'Трудно';

  @override
  String get reviewGood => 'Хорошо';

  @override
  String get reviewEasy => 'Легко';

  @override
  String reviewProgress(int done, int total) {
    return '$done из $total';
  }

  @override
  String get reviewFinishedTitle => 'Повторение завершено';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Вы повторили $count карточки.',
      many: 'Вы повторили $count карточек.',
      few: 'Вы повторили $count карточки.',
      one: 'Вы повторили $count карточку.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Нажмите, чтобы увидеть ответ';

  @override
  String get importCardsTitle => 'Импорт карточек';

  @override
  String get importCardsHint =>
      'Вставьте по одной карточке в строке (лицо и оборот через табуляцию или точку с запятой) или выберите файл: Excel (.xlsx), CSV, колоду Anki (.apkg) или экспортированную колоду.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Импортировано $count карточки',
      many: 'Импортировано $count карточек',
      few: 'Импортировано $count карточки',
      one: 'Импортирована $count карточка',
      zero: 'Карточки не импортированы',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Не удалось импортировать содержимое.';

  @override
  String get exportCopied => 'Колода экспортирована';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count мин',
      many: '$count мин',
      few: '$count мин',
      one: '$count мин',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Цели';

  @override
  String get goalsEmptyTitle => 'Стремитесь к большему';

  @override
  String get goalsEmptyMessage =>
      'Ставьте цели на день, неделю, месяц или долгий срок и отслеживайте реальный прогресс.';

  @override
  String get goalNew => 'Новая цель';

  @override
  String get goalEdit => 'Изменить цель';

  @override
  String get goalTitleHint => 'Чего вы хотите достичь?';

  @override
  String get goalPeriod => 'Период';

  @override
  String get goalPeriodDaily => 'На день';

  @override
  String get goalPeriodWeekly => 'На неделю';

  @override
  String get goalPeriodMonthly => 'На месяц';

  @override
  String get goalPeriodLongTerm => 'Долгосрочная';

  @override
  String get goalTarget => 'Цель';

  @override
  String get goalUnit => 'Единица';

  @override
  String get goalUnitHint => 'Например: страницы, км, часы';

  @override
  String get goalStatusActive => 'Активна';

  @override
  String get goalStatusPaused => 'Приостановлена';

  @override
  String get goalStatusAchieved => 'Достигнута';

  @override
  String get goalPause => 'Приостановить цель';

  @override
  String get goalResume => 'Возобновить цель';

  @override
  String get goalMarkAchieved => 'Отметить как достигнутую';

  @override
  String goalProgressOf(String current, String target) {
    return '$current из $target';
  }

  @override
  String get goalLogAmount => 'Количество';

  @override
  String get goalLogNote => 'Заметка (необязательно)';

  @override
  String get goalHistory => 'История';

  @override
  String get goalNoHistory => 'Здесь появится отмеченный прогресс';

  @override
  String get goalLinkedTasks => 'Связанные задачи';

  @override
  String get goalLinkedTasksHint =>
      'Каждая выполненная связанная задача засчитывается как 1 в эту цель.';

  @override
  String get goalThisPeriod => 'Текущий период';

  @override
  String get habitsTitle => 'Привычки';

  @override
  String get habitsEmptyTitle => 'Маленькие шаги каждый день';

  @override
  String get habitsEmptyMessage => 'Создайте привычку и отмечайте её, когда выполняете.';

  @override
  String get habitNew => 'Новая привычка';

  @override
  String get habitEdit => 'Изменить привычку';

  @override
  String get habitNameHint => 'Например: читать 20 страниц';

  @override
  String get habitDays => 'Расписание';

  @override
  String get habitEveryDay => 'Каждый день';

  @override
  String get habitTargetPerDay => 'Раз в день';

  @override
  String get habitReminder => 'Ежедневное напоминание';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Серия: $count дня',
      many: 'Серия: $count дней',
      few: 'Серия: $count дня',
      one: 'Серия: $count день',
      zero: 'Серии нет',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Лучшая серия';

  @override
  String get habitCurrentStreak => 'Текущая серия';

  @override
  String get habitConsistency => 'Регулярность';

  @override
  String get habitLast90 => 'Последние 90 дней';

  @override
  String get habitPaused => 'Приостановлена';

  @override
  String get habitPause => 'Приостановить привычку';

  @override
  String get habitResume => 'Возобновить привычку';

  @override
  String get habitDoneToday => 'Сегодня выполнено';

  @override
  String habitCountToday(int count, int target) {
    return '$count из $target сегодня';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Отметить «$name»';
  }

  @override
  String get habitNotScheduledToday => 'Сегодня не запланировано';

  @override
  String get analyticsTitle => 'Аналитика';

  @override
  String get rangeWeek => '7 дней';

  @override
  String get rangeMonth => '30 дней';

  @override
  String get rangeQuarter => '90 дней';

  @override
  String get statFocusTime => 'Время фокуса';

  @override
  String get statSessions => 'Сессии';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return 'Завершено: $completed · досрочно: $interrupted';
  }

  @override
  String get statTasksDone => 'Выполнено задач';

  @override
  String get statCompletionRate => 'Выполнено в срок';

  @override
  String get statHabitConsistency => 'Регулярность привычек';

  @override
  String get statRetention => 'Запоминание карточек';

  @override
  String get statReviews => 'Повторения';

  @override
  String get statActiveGoals => 'Активные цели';

  @override
  String get statEstimated => 'Выполнено по оценке';

  @override
  String get statEstimatedNote => 'На основе ваших оценок, а не измеренного времени';

  @override
  String get statMeasuredNote => 'По данным сессий фокуса';

  @override
  String get chartFocusByDay => 'Минуты фокуса по дням';

  @override
  String get chartTasksByDay => 'Выполненные задачи по дням';

  @override
  String get chartTimeByProject => 'Время по проектам';

  @override
  String get chartProjectProgress => 'Прогресс проектов';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: всего $total, лучший день $best';
  }

  @override
  String get analyticsNoData => 'Пока недостаточно данных';

  @override
  String get analyticsUnassigned => 'Без проекта';

  @override
  String get searchHint => 'Искать везде…';

  @override
  String get searchRecent => 'Недавние запросы';

  @override
  String get searchClearRecent => 'Очистить недавние запросы';

  @override
  String searchNoResults(String query) {
    return 'По запросу «$query» ничего не найдено';
  }

  @override
  String get searchStartTyping =>
      'Ищите по задачам, заметкам, карточкам, целям, событиям и не только. Поиск выполняется только на этом устройстве.';

  @override
  String get searchCatTask => 'Задачи';

  @override
  String get searchCatProject => 'Проекты';

  @override
  String get searchCatNote => 'Заметки';

  @override
  String get searchCatFlashcard => 'Карточки';

  @override
  String get searchCatDeck => 'Колоды';

  @override
  String get searchCatGoal => 'Цели';

  @override
  String get searchCatHabit => 'Привычки';

  @override
  String get searchCatEvent => 'События';

  @override
  String get searchCatSession => 'Сессии';

  @override
  String get searchAll => 'Все';

  @override
  String get assistantTitle => 'Ассистент';

  @override
  String get assistantIntro =>
      'Помощь в планировании прямо на вашем устройстве. При желании подключите выбранного вами ИИ-провайдера для кратких изложений и генерации.';

  @override
  String get assistantOnDevice => 'На устройстве';

  @override
  String get assistantCloud => 'ИИ-провайдер';

  @override
  String get assistantPlanDay => 'Спланировать день';

  @override
  String get assistantPlanDayDesc =>
      'Упорядочивает открытые задачи по срочности, приоритету и оценке и распределяет их между вашими событиями.';

  @override
  String get assistantExtractTasks => 'Задачи из заметки';

  @override
  String get assistantExtractTasksDesc =>
      'Находит пункты чек-листа и строки с действиями в заметке и превращает их в задачи.';

  @override
  String get assistantMakeCards => 'Карточки из заметки';

  @override
  String get assistantMakeCardsDesc =>
      'Превращает строки вида «термин: определение» и вопрос/ответ в карточки.';

  @override
  String get assistantSummarize => 'Кратко изложить заметку';

  @override
  String get assistantSummarizeDesc =>
      'Нужен ИИ-провайдер. Заметка отправляется только после вашего подтверждения.';

  @override
  String get assistantWorkload => 'Обзор нагрузки';

  @override
  String get assistantWorkloadDesc =>
      'Сравнивает оценённый объём работы со свободным временем на этой неделе.';

  @override
  String get assistantPlanEmpty => 'Нет открытых задач для планирования. Наслаждайтесь свободой.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Свободное время для фокуса сегодня: $time';
  }

  @override
  String get assistantPlanOverflow => 'Это может не уместиться в сегодняшний день:';

  @override
  String get assistantChooseNote => 'Выберите заметку';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Найдено $count задачи',
      many: 'Найдено $count задач',
      few: 'Найдено $count задачи',
      one: 'Найдена $count задача',
      zero: 'В заметке не найдено задач',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Найдено $count карточки',
      many: 'Найдено $count карточек',
      few: 'Найдено $count карточки',
      one: 'Найдена $count карточка',
      zero: 'В заметке не найдено карточек',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Выберите колоду';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Оценка работы: $estimated. Свободное время: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Запланировано больше, чем есть времени. Попробуйте перенести задачи с низким приоритетом.';

  @override
  String get assistantWorkloadOk => 'Ваш план укладывается в доступное время.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'У $count открытой задачи нет оценки.',
      many: 'У $count открытых задач нет оценки.',
      few: 'У $count открытых задач нет оценки.',
      one: 'У $count открытой задачи нет оценки.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'ИИ-провайдер';

  @override
  String get assistantProviderOff =>
      'Провайдер не подключён. Инструменты на устройстве по-прежнему работают.';

  @override
  String assistantProviderOn(String host) {
    return 'Подключено к $host';
  }

  @override
  String get assistantEndpoint => 'Адрес API (HTTPS)';

  @override
  String get assistantModel => 'Модель';

  @override
  String get assistantApiKey => 'Ключ API';

  @override
  String get assistantApiKeyStored => 'Надёжно хранится на этом устройстве';

  @override
  String get assistantHttpsOnly => 'Допускаются только адреса HTTPS';

  @override
  String get assistantConsentTitle => 'Отправить это ИИ-провайдеру?';

  @override
  String assistantConsentBody(String host) {
    return 'Текст выбранной заметки покинет устройство и будет обработан $host. Больше ничего не отправляется.';
  }

  @override
  String get assistantConsentAlways => 'Больше не спрашивать для этого провайдера';

  @override
  String get assistantSend => 'Отправить';

  @override
  String get assistantUnavailable => 'Не удалось связаться с ИИ-провайдером. Попробуйте позже.';

  @override
  String get assistantDisabledTitle => 'Ассистент выключен';

  @override
  String get assistantDisabledMessage =>
      'Включите его, чтобы пользоваться инструментами планирования. Данные не покидают устройство, пока вы не подключите провайдера и не подтвердите каждый запрос.';

  @override
  String get assistantSummaryTitle => 'Краткое изложение';

  @override
  String get assistantRemoveProvider => 'Удалить провайдера';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsGeneral => 'Общие';

  @override
  String get settingsLanguage => 'Язык';

  @override
  String get settingsLanguageSystem => 'Язык устройства';

  @override
  String get settingsAppearance => 'Оформление';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeLight => 'Светлая';

  @override
  String get themeDark => 'Тёмная';

  @override
  String get themeSystem => 'Системная';

  @override
  String get settingsReduceMotion => 'Уменьшить движение';

  @override
  String get settingsReduceMotionDesc => 'Меньше анимаций и движущихся фонов';

  @override
  String get settingsFocus => 'Таймер фокуса';

  @override
  String get settingsWorkLength => 'Длительность фокуса';

  @override
  String get settingsShortBreak => 'Короткий перерыв';

  @override
  String get settingsLongBreak => 'Длинный перерыв';

  @override
  String get settingsLongBreakEvery => 'Длинный перерыв после';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сессии',
      many: '$count сессий',
      few: '$count сессий',
      one: '$count сессии',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Начинать перерывы автоматически';

  @override
  String get settingsSound => 'Звук завершения';

  @override
  String get settingsDailyFocusTarget => 'Цель фокуса на день';

  @override
  String get settingsWeeklyFocusTarget => 'Цель фокуса на неделю';

  @override
  String get settingsNotifications => 'Уведомления';

  @override
  String get settingsNotificationsEnable => 'Разрешить напоминания';

  @override
  String get settingsQuietHours => 'Тихие часы';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Напоминания о привычках, целях и повторении отключены с $start до $end';
  }

  @override
  String get settingsReviewReminder => 'Напоминание о повторении карточек';

  @override
  String get settingsPermissionDenied => 'Уведомления заблокированы в настройках системы.';

  @override
  String get settingsPrivacy => 'Конфиденциальность и данные';

  @override
  String get settingsPrivacyStatement =>
      'Ваши данные хранятся только на этом устройстве в зашифрованном виде. Без аккаунта, аналитики и отслеживания.';

  @override
  String get settingsBackup => 'Создать зашифрованную копию';

  @override
  String get settingsBackupDesc => 'Защищена паролем, который вы выберете';

  @override
  String get settingsRestore => 'Восстановить из копии';

  @override
  String get settingsRestoreDesc => 'Заменяет все данные на этом устройстве';

  @override
  String get settingsErase => 'Стереть все данные';

  @override
  String get settingsEraseDesc => 'Безвозвратно удалить всё на этом устройстве';

  @override
  String get settingsEraseConfirmTitle => 'Стереть все данные?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Все задачи, заметки, карточки, цели, привычки, события и сессии будут удалены безвозвратно. Введите $word для подтверждения.';
  }

  @override
  String get settingsEraseWord => 'СТЕРЕТЬ';

  @override
  String get settingsErased => 'Все данные стёрты';

  @override
  String get backupPassword => 'Пароль резервной копии';

  @override
  String get backupPasswordConfirm => 'Подтвердите пароль';

  @override
  String backupPasswordHint(int count) {
    return 'Не менее $count символов. Утерянный пароль восстановить нельзя.';
  }

  @override
  String get backupPasswordMismatch => 'Пароли не совпадают';

  @override
  String get backupPasswordShort => 'Пароль слишком короткий';

  @override
  String get backupCreating => 'Шифрование копии…';

  @override
  String get backupCreated => 'Копия готова к сохранению';

  @override
  String get backupRestoring => 'Проверка и восстановление…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Восстановлено $count элемента',
      many: 'Восстановлено $count элементов',
      few: 'Восстановлено $count элемента',
      one: 'Восстановлен $count элемент',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Неверный пароль, или файл был изменён.';

  @override
  String get backupNotABackup => 'Этот файл не является резервной копией Deep Focus.';

  @override
  String get backupCorrupted => 'Файл резервной копии повреждён.';

  @override
  String get backupNewer =>
      'Эта копия создана более новой версией приложения. Сначала обновите приложение.';

  @override
  String get backupRestoreConfirmTitle => 'Заменить все данные?';

  @override
  String get backupRestoreConfirmBody =>
      'Всё, что сейчас есть на устройстве, будет заменено данными из копии. Если восстановление не удастся, ничего не изменится.';

  @override
  String get settingsAbout => 'О приложении';

  @override
  String settingsVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get settingsLicenses => 'Лицензии open source';

  @override
  String get settingsAssistant => 'Ассистент';

  @override
  String get settingsAssistantEnable => 'Включить ассистента';

  @override
  String get settingsDashboard => 'Разделы главной';

  @override
  String get settingsTrash => 'Корзина';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes мин';
  }

  @override
  String get trashEmpty => 'Корзина пуста';

  @override
  String get trashHint => 'Удалённые элементы хранятся здесь, пока вы их не удалите окончательно.';

  @override
  String get trashTasks => 'Задачи';

  @override
  String get trashNotes => 'Заметки';

  @override
  String get onboardWelcomeTitle => 'Добро пожаловать в рабочее пространство будущего';

  @override
  String get onboardWelcomeBody =>
      'Задачи, фокус, календарь, заметки, карточки, цели и привычки — вместе и удивительно просто.';

  @override
  String get onboardPrivateTitle => 'Конфиденциальность по умолчанию';

  @override
  String get onboardPrivateBody =>
      'Всё хранится на этом устройстве в зашифрованном виде. Без аккаунта. Без отслеживания. Всё под вашим контролем.';

  @override
  String get onboardLanguageTitle => 'Выберите язык';

  @override
  String get onboardNotifTitle => 'Деликатные напоминания';

  @override
  String get onboardNotifBody =>
      'Разрешите уведомления для напоминаний о задачах и оповещений фокуса. Это можно изменить в любой момент.';

  @override
  String get onboardGetStarted => 'Начать';

  @override
  String onboardStep(int current, int total) {
    return 'Шаг $current из $total';
  }

  @override
  String get notifChannelReminders => 'Напоминания';

  @override
  String get notifChannelRemindersDesc => 'Напоминания о задачах, событиях, привычках и целях';

  @override
  String get notifChannelFocus => 'Таймер фокуса';

  @override
  String get notifChannelFocusDesc => 'Оповещения об окончании сессии фокуса или перерыва';

  @override
  String get notifTaskTitle => 'Напоминание о задаче';

  @override
  String get notifEventTitle => 'Скоро событие';

  @override
  String notifEventBody(String title, String time) {
    return '$title в $time';
  }

  @override
  String get notifFocusDoneTitle => 'Сессия фокуса завершена';

  @override
  String get notifFocusDoneBody => 'Отличная работа. Пора отдохнуть.';

  @override
  String get notifBreakDoneTitle => 'Перерыв окончен';

  @override
  String get notifBreakDoneBody => 'Готовы к следующей сессии фокуса?';

  @override
  String get notifHabitTitle => 'Напоминание о привычке';

  @override
  String get notifReviewTitle => 'Карточки готовы';

  @override
  String get notifReviewBody => 'Короткое повторение укрепляет память.';

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
  String get weekdaysShort => 'Пн,Вт,Ср,Чт,Пт,Сб,Вс';

  @override
  String a11yProgress(int value) {
    return 'Прогресс: $value%';
  }

  @override
  String a11yPriority(String level) {
    return 'Приоритет: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Цвет $index';
  }

  @override
  String get analyticsRangeLabel => 'Период';

  @override
  String get analyticsRefresh => 'Обновить';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done из $total задач со сроком выполнено вовремя';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Выполнено задач: $done из $total';
  }

  @override
  String get analyticsNoProjects => 'Нет активных проектов';

  @override
  String get analyticsNoFocus => 'За этот период нет сессий фокуса';

  @override
  String get analyticsHabitsNone => 'Нет активных привычек';

  @override
  String get analyticsRetentionNote => 'Доля зрелых карточек, которые вы запомнили';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Свободное время считается с $start до $end в рабочие дни ($days) за вычетом событий с указанным временем. Оценённая работа — сумма оценок открытых задач со сроком в ближайшие 7 дней.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Понедельник–пятница';

  @override
  String get assistantWorkdaysSunThu => 'Воскресенье–четверг';

  @override
  String get assistantWorkloadDayOff => 'Выходной';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated в плане · $free свободно';
  }

  @override
  String assistantPlanRule(String end) {
    return 'План составлен от текущего момента до $end с учётом сегодняшних событий. Сначала просроченные задачи, затем по приоритету, сроку и оценке.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Запланировать блоками времени';

  @override
  String get assistantScheduleConfirmTitle => 'Добавить блоки времени в календарь?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count блока времени будут добавлены в календарь на сегодня.',
      many: '$count блоков времени будут добавлены в календарь на сегодня.',
      few: '$count блока времени будут добавлены в календарь на сегодня.',
      one: '$count блок времени будет добавлен в календарь на сегодня.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавлено $count блока времени',
      many: 'Добавлено $count блоков времени',
      few: 'Добавлено $count блока времени',
      one: 'Добавлен $count блок времени',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Уже в календаре';

  @override
  String get assistantPlanTimeline => 'Помещается в сегодня';

  @override
  String get assistantNoEstimate => 'Добавьте оценку, чтобы спланировать эти задачи';

  @override
  String get assistantNoNotes => 'Заметок пока нет. Сначала напишите заметку.';

  @override
  String get assistantNoteEmpty => 'Эта заметка пуста.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Создано $count задачи',
      many: 'Создано $count задач',
      few: 'Создано $count задачи',
      one: 'Создана $count задача',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Создано $count карточки',
      many: 'Создано $count карточек',
      few: 'Создано $count карточки',
      one: 'Создана $count карточка',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Создать $count',
      many: 'Создать $count',
      few: 'Создать $count',
      one: 'Создать $count',
      zero: 'Ничего не выбрано',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Распознаются: неотмеченные чекбоксы «- [ ]» и строки, начинающиеся с TODO: или To do:';

  @override
  String get assistantCardsHint =>
      'Распознаются: «термин: определение», «термин — определение» и пары строк Q:/A:';

  @override
  String get assistantProviderHint =>
      'Подойдёт любой сервис, совместимый с OpenAI. Ключ хранится в защищённом хранилище этого устройства и не попадает в резервные копии.';

  @override
  String get assistantEndpointHelp => 'Например, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Оставьте пустым, чтобы сохранить текущий ключ';

  @override
  String get assistantApiKeyRequired => 'Введите API-ключ';

  @override
  String get assistantProviderSaved => 'Провайдер сохранён';

  @override
  String get assistantProviderRemoved => 'Провайдер удалён, ключ стёрт';

  @override
  String get assistantRemoveProviderConfirm =>
      'Удалить провайдера и стереть сохранённый API-ключ с этого устройства?';

  @override
  String get assistantAskEveryTime => 'Спрашивать перед каждым запросом';

  @override
  String get assistantSummarizing => 'Составляем сводку…';

  @override
  String assistantSummaryNote(String host) {
    return 'Создано сервисом $host. Проверьте, прежде чем полагаться на результат.';
  }

  @override
  String get assistantCopy => 'Копировать';

  @override
  String get assistantCopied => 'Скопировано';

  @override
  String get assistantConfigure => 'Настроить провайдера';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Все события серии перенесены';

  @override
  String get calendarEventReminder => 'Напоминание';

  @override
  String get calendarEventRepeat => 'Повтор';

  @override
  String get calendarEventColor => 'Цвет';

  @override
  String get calendarDefaultColor => 'Цвет по типу';

  @override
  String get calendarEventLinkedTask => 'Связанная задача';

  @override
  String get calendarEventNoTask => 'Нет связанной задачи';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count события',
      many: '$count событий',
      few: '$count события',
      one: '$count событие',
      zero: 'Нет событий',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачи со сроком',
      many: '$count задач со сроком',
      few: '$count задачи со сроком',
      one: '$count задача со сроком',
      zero: 'нет задач со сроком',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Добавьте событие или блок времени, чтобы спланировать этот день.';

  @override
  String get calendarNow => 'Текущее время';

  @override
  String get calendarRecurring => 'Повторяется';

  @override
  String get calendarEventNotFound => 'Этого события больше нет';

  @override
  String get calendarEventLocalTime => 'Время указано в часовом поясе вашего устройства';

  @override
  String get calendarEventDeleted => 'Событие перемещено в корзину';

  @override
  String get calendarConflictMarker => 'Пересекается с другим событием';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Изменения применятся ко всем событиям серии';

  @override
  String get calendarDragHintSeries => 'Перетаскивание повторяющегося события переносит всю серию';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, срок задачи';
  }

  @override
  String get startupErrorTitle => 'Не удалось открыть ваши данные';

  @override
  String get startupErrorLocked =>
      'Ключ шифрования данных этого устройства недоступен. Ничего не удалено. Часто помогает перезагрузка устройства. Если вы недавно восстанавливали устройство, восстановите данные из зашифрованной резервной копии.';

  @override
  String get startupErrorCipher =>
      'Это устройство не поддерживает зашифрованное хранилище, необходимое приложению. Ничего не было сохранено без шифрования.';

  @override
  String get startupErrorRetry => 'Повторить';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пора повторить $count карточки',
      many: 'Пора повторить $count карточек',
      few: 'Пора повторить $count карточки',
      one: 'Пора повторить $count карточку',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return 'К повторению: $count';
  }

  @override
  String flashcardsNewCount(int count) {
    return 'Новых: $count';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Зрелые карточки: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Введите 0 или больше';

  @override
  String get flashcardsSearchCards => 'Поиск карточек';

  @override
  String get flashcardsSearchEmpty => 'Нет карточек по вашему запросу';

  @override
  String get flashcardsCardAdded => 'Карточка добавлена';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Повторение: $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Копировать в буфер обмена';

  @override
  String get flashcardsExportTitle => 'Экспорт колоды';

  @override
  String get flashcardsDeleteDeck => 'Удалить колоду';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, следующее повторение через $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Вопрос: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Ответ: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Показать вопрос';

  @override
  String get flashcardsImportField => 'Карточки для импорта';

  @override
  String get flashcardsNothingToStudy => 'Нечего изучать';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточки готовы к изучению',
      many: '$count карточек готово к изучению',
      few: '$count карточки готовы к изучению',
      one: '$count карточка готова к изучению',
      zero: 'Нет готовых карточек',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'По оценке';

  @override
  String get flashcardsDeckNotFound => 'Эта колода больше недоступна.';

  @override
  String get focusSessionDeleted => 'Сессия удалена';

  @override
  String get focusDeleteConfirm =>
      'Удалить эту сессию из истории? Её время больше не будет учитываться в целях.';

  @override
  String get focusUnlinkTask => 'Убрать связанную задачу';

  @override
  String get focusNoteHint => 'Над чем вы работали?';

  @override
  String get focusTargetCaption => 'По сохранённым сессиям';

  @override
  String get focusModeLabel => 'Режим таймера';

  @override
  String focusUpNext(String phase) {
    return 'Далее: $phase';
  }

  @override
  String get focusStopwatchHint => 'Считает вперёд, пока вы не остановите.';

  @override
  String get focusOpenHint => 'Без ограничения по времени. Остановите, когда закончите.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Напоминания отключены в настройках. Вы не получите сигнал о завершении сессии.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Все';

  @override
  String get goalsFilterPeriod => 'Фильтр по периоду';

  @override
  String get goalsFilterStatus => 'Фильтр по статусу';

  @override
  String get goalsEmptyFiltered => 'Нет целей по этому фильтру';

  @override
  String goalsDueOn(String date) {
    return 'Срок: $date';
  }

  @override
  String get goalsDeadline => 'Срок (необязательно)';

  @override
  String get goalsNoDeadline => 'Без срока';

  @override
  String get goalsSetDeadline => 'Задать срок';

  @override
  String get goalsRemoveDeadline => 'Убрать срок';

  @override
  String get goalsDescription => 'Описание (необязательно)';

  @override
  String get goalsTitleLabel => 'Название';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Цель достигнута';

  @override
  String get goalsLogged => 'Прогресс отмечен';

  @override
  String get goalsEntryDeleted => 'Запись удалена';

  @override
  String get goalsDeleteEntry => 'Удалить запись';

  @override
  String get goalsDeleted => 'Цель удалена';

  @override
  String get goalsMarkActive => 'Сделать активной';

  @override
  String get goalsNotFound => 'Эта цель больше недоступна';

  @override
  String get goalsLinkTask => 'Связать задачу';

  @override
  String get goalsNoLinkedTasks => 'Связанных задач пока нет';

  @override
  String get goalsUnlinkTask => 'Отвязать задачу';

  @override
  String get goalsTaskOpen => 'Ещё не выполнена';

  @override
  String get goalsTaskLinked => 'Задача связана';

  @override
  String get goalsTaskUnlinked => 'Задача отвязана';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count выполненные связанные задачи',
      many: '$count выполненных связанных задач',
      few: '$count выполненные связанные задачи',
      one: '$count выполненная связанная задача',
    );
    return 'В этом периоде учтено $_temp0';
  }

  @override
  String get goalsHistoryAllTime =>
      'Записи за прошлые периоды сохраняются здесь, но учитываются только в своём периоде.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Сегодня выполнено: $done из $total';
  }

  @override
  String get habitsNothingToday => 'На сегодня привычек не запланировано';

  @override
  String get habitsDecrease => 'Убрать одну отметку';

  @override
  String get habitsResetToday => 'Сбросить за сегодня';

  @override
  String get habitsCheckInHint => 'Удерживайте, чтобы изменить';

  @override
  String get habitsName => 'Название';

  @override
  String get habitsColor => 'Цвет';

  @override
  String get habitsValidationDays => 'Выберите хотя бы один день';

  @override
  String habitsReminderAt(String time) {
    return 'Ежедневно в $time';
  }

  @override
  String get habitsSetReminder => 'Задать время напоминания';

  @override
  String get habitsRemoveReminder => 'Убрать напоминание';

  @override
  String get habitsReminderNote =>
      'Напоминания приходят в запланированные дни, если разрешены уведомления.';

  @override
  String get habitsArchived => 'Привычка в архиве';

  @override
  String get habitsNotFound => 'Эта привычка больше недоступна';

  @override
  String get habitsLast30 => 'Последние 30 дней';

  @override
  String get habitsConsistencyNone => 'Пока недостаточно данных';

  @override
  String get habitsCalendar => 'История отметок';

  @override
  String get habitsCalendarHint => 'Нажмите на день, чтобы исправить.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count из $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Отметки за последние 90 дней. Регулярность: $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Отметки за последние 90 дней. Пока недостаточно данных.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Дни паузы не влияют на вашу серию.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Архивировать привычку';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count раза в день',
      many: '$count раз в день',
      few: '$count раза в день',
      one: '$count раз в день',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Другие заметки';

  @override
  String get notesAllNotebooks => 'Все блокноты';

  @override
  String get notesNotebookName => 'Название блокнота';

  @override
  String get notesNotebookColor => 'Цвет';

  @override
  String get notesDeleteNotebook => 'Удалить блокнот';

  @override
  String get notesDeleteNotebookMessage =>
      'Блокнот будет удалён. Его заметки сохранятся и появятся в разделе «Все блокноты».';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Закрепляйте важные заметки, чтобы они оставались вверху.';

  @override
  String get notesEmptyFavorites => 'Заметки, отмеченные как избранные, появятся здесь.';

  @override
  String get notesEmptyArchived => 'Здесь появятся заметки из архива.';

  @override
  String get notesEmptyFiltered => 'Нет заметок по этим фильтрам.';

  @override
  String get notesArchivedSnack => 'Заметка в архиве';

  @override
  String get notesUnarchivedSnack => 'Заметка возвращена из архива';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Выполнено: $done из $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Форматирование';

  @override
  String get notesWrite => 'Текст';

  @override
  String get notesPreviewEmpty => 'Пока нечего просматривать.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Другие заметки пока не ссылаются на эту. Ссылайтесь на неё так: [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Дайте заметке название, чтобы другие заметки могли на неё ссылаться.';

  @override
  String get notesLinkedTasksEmpty => 'Нет задач, связанных с этой заметкой.';

  @override
  String notesLinkMissing(String title) {
    return 'Заметки с названием «$title» пока нет.';
  }

  @override
  String get notesNotFound => 'Этой заметки больше нет.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Пункт списка: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Открыть заметку $title';
  }

  @override
  String get notesTaskDone => 'Выполнено';

  @override
  String get notifTimerDoneBody => 'Заданное вами время истекло.';

  @override
  String get onboardingPrivatePointDevice =>
      'Хранится только на этом устройстве, в зашифрованном виде';

  @override
  String get onboardingPrivatePointAccount => 'Аккаунт не нужен';

  @override
  String get onboardingPrivatePointTracking => 'Без аналитики и слежки';

  @override
  String get onboardingLanguageBody => 'Это можно изменить в любой момент в настройках.';

  @override
  String get onboardingNext => 'Далее';

  @override
  String get projectsActive => 'Активные';

  @override
  String get projectNameHint => 'Например, запуск продукта';

  @override
  String get projectGoalHint => 'Что будет считаться результатом?';

  @override
  String get projectNoDeadline => 'Без срока';

  @override
  String get projectTasksOpen => 'Открытые задачи';

  @override
  String get projectTasksCompleted => 'Выполненные задачи';

  @override
  String get projectAddTask => 'Добавить задачу в проект';

  @override
  String get projectAddNote => 'Новая заметка проекта';

  @override
  String get projectLinkedNotes => 'Заметки';

  @override
  String get projectNoTasks => 'В этом проекте пока нет задач';

  @override
  String get projectArchivedBadge => 'В архиве';

  @override
  String get projectDeleted => 'Проект перемещён в корзину';

  @override
  String get projectDeleteMessage => 'Задачи останутся в вашем списке без проекта.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, выполнено $percent процентов';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count результата',
      many: '$count результатов',
      few: '$count результата',
      one: '$count результат',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Фильтр по типу';

  @override
  String searchRecentTap(String query) {
    return 'Повторить поиск: $query';
  }

  @override
  String get settingsLanguageHint =>
      'Выберите язык всего приложения. Названия показаны на своих языках.';

  @override
  String get settingsThemeHint => 'Светлая, тёмная или как в системе';

  @override
  String settingsDecrease(String setting) {
    return 'Уменьшить: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Увеличить: $setting';
  }

  @override
  String get settingsQuietStart => 'Начало';

  @override
  String get settingsQuietEnd => 'Конец';

  @override
  String get settingsNotificationsHint =>
      'Здесь сохраняется ваше предпочтение в приложении. Система также может запросить разрешение.';

  @override
  String get settingsDashboardHint =>
      'Перетаскивайте для изменения порядка. Отключите ненужные разделы.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Изменить порядок: $section';
  }

  @override
  String get settingsDashboardReset => 'Вернуть порядок по умолчанию';

  @override
  String get settingsAssistantDesc =>
      'Необязательная помощь в планировании. Ничего не покидает устройство, пока вы не подключите провайдера.';

  @override
  String get settingsAssistantSetup => 'Ассистент и настройка провайдера';

  @override
  String get settingsTrashDesc => 'Восстановление или окончательное удаление убранных элементов';

  @override
  String get settingsEraseFirstBody =>
      'Это действие нельзя отменить. Сначала лучше создать зашифрованную резервную копию.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Введите $word';
  }

  @override
  String get settingsEraseFailed => 'Не удалось стереть данные. Ничего не изменилось.';

  @override
  String get settingsAboutTagline =>
      'Приватное рабочее пространство для продуктивности, где всё хранится локально.';

  @override
  String get backupShowPassword => 'Показать пароль';

  @override
  String get backupHidePassword => 'Скрыть пароль';

  @override
  String get backupSaved => 'Резервная копия сохранена';

  @override
  String get backupFailed => 'Не удалось создать резервную копию. Ваши данные не изменились.';

  @override
  String get backupReadFailed => 'Не удалось прочитать выбранный файл.';

  @override
  String get backupRestoreFailed => 'Не удалось восстановить. Ничего не изменилось.';

  @override
  String get backupShareSubject => 'Зашифрованная резервная копия Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Каждые $count дня',
      many: 'Каждые $count дней',
      few: 'Каждые $count дня',
      one: 'Каждый день',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Каждые $count недели',
      many: 'Каждые $count недель',
      few: 'Каждые $count недели',
      one: 'Каждую неделю',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Каждые $count месяца',
      many: 'Каждые $count месяцев',
      few: 'Каждые $count месяца',
      one: 'Каждый месяц',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Каждые $count года',
      many: 'Каждые $count лет',
      few: 'Каждые $count года',
      one: 'Каждый год',
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
    return 'по дням: $days';
  }

  @override
  String get repeatEndsLabel => 'Окончание';

  @override
  String get repeatEndsAfter => 'После заданного числа повторов';

  @override
  String get repeatCountLabel => 'Количество повторов';

  @override
  String get reminderNone => 'Без напоминания';

  @override
  String get reminderCustomTime => 'В определённое время';

  @override
  String get a11yDecrease => 'Уменьшить';

  @override
  String get a11yIncrease => 'Увеличить';

  @override
  String get pickTaskTitle => 'Выберите задачу';

  @override
  String get pickTaskEmpty => 'Нет открытых задач';

  @override
  String get tasksSearchTooltip => 'Поиск задач';

  @override
  String get tasksSectionOverdue => 'Просрочено';

  @override
  String get tasksSectionToday => 'Сегодня';

  @override
  String get tasksRecurringSemantics => 'Повторяется';

  @override
  String get tasksFilterPriorityAtLeast => 'Минимальный приоритет';

  @override
  String get tasksFilterCategory => 'Категория';

  @override
  String get tasksFilterAnyCategory => 'Любая категория';

  @override
  String get tasksFilterLabel => 'Метка';

  @override
  String get tasksFilterAnyLabel => 'Любая метка';

  @override
  String get tasksFilterReset => 'Сбросить фильтры';

  @override
  String get tasksViewByProject => 'По проектам';

  @override
  String get tasksViewByPriority => 'По приоритету';

  @override
  String get tasksViewByCategory => 'По категориям';

  @override
  String get tasksGroupNoCategory => 'Без категории';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачи',
      many: '$count задач',
      few: '$count задачи',
      one: '$count задача',
    );
    return 'Заблокирована: $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Эта задача заблокирована незавершёнными задачами. Всё равно завершить?';

  @override
  String get taskStartFocus => 'Сфокусироваться на задаче';

  @override
  String get taskRemoveDate => 'Убрать дату';

  @override
  String get taskAllDay => 'Без конкретного времени';

  @override
  String get taskSaved => 'Задача сохранена';

  @override
  String get taskCreated => 'Задача создана';

  @override
  String get taskReminderNeedsDue => 'Задайте срок, чтобы использовать относительные напоминания';

  @override
  String get taskLabelName => 'Название метки';

  @override
  String get taskPlanning => 'Планирование';

  @override
  String get taskOrganize => 'Организация';

  @override
  String get taskBreakdown => 'Разбивка';

  @override
  String get trashDeleteTaskTitle => 'Удалить эту задачу навсегда?';

  @override
  String get trashDeleteNoteTitle => 'Удалить эту заметку навсегда?';

  @override
  String get trashDeleteBody => 'Это действие нельзя отменить.';

  @override
  String get trashEmptyTitle => 'Очистить корзину?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элемента будут удалены навсегда.',
      many: '$count элементов будут удалены навсегда.',
      few: '$count элемента будут удалены навсегда.',
      one: '$count элемент будет удалён навсегда.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Восстановлено';

  @override
  String get trashPurged => 'Удалено навсегда';

  @override
  String trashDeletedOn(String date) {
    return 'Удалено: $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элемента',
      many: '$count элементов',
      few: '$count элемента',
      one: '$count элемент',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Прочитать вслух';

  @override
  String get flashcardsTtsUnavailable => 'Синтез речи недоступен на этом устройстве.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Для этого языка не установлен голос. Добавьте его в настройках синтеза речи Android.';

  @override
  String get calendarAgenda => 'Повестка';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Искра',
      'rocket': 'Ракета',
      'book': 'Книга',
      'work': 'Работа',
      'home': 'Дом',
      'heart': 'Сердце',
      'code': 'Код',
      'palette': 'Палитра',
      'fitness': 'Фитнес',
      'school': 'Учёба',
      'travel': 'Путешествие',
      'money': 'Накопления',
      'other': 'Значок',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Дополнительные поля';

  @override
  String get cardFieldExample => 'Пример';

  @override
  String get cardFieldExplanation => 'Пояснение';

  @override
  String get cardFieldPronunciation => 'Произношение';

  @override
  String get cardFieldNotes => 'Дополнительные заметки';

  @override
  String get projectMilestones => 'Вехи';

  @override
  String get milestoneAdd => 'Добавить веху';

  @override
  String get milestoneEdit => 'Изменить веху';

  @override
  String get milestoneTitleLabel => 'Веха';

  @override
  String get milestoneNoDate => 'Без даты';

  @override
  String get milestonesEmpty =>
      'Вех пока нет. Добавьте контрольные точки с датами, чтобы видеть проект в календаре.';

  @override
  String get milestoneDeleted => 'Веха удалена';

  @override
  String milestoneDoneA11y(String title) {
    return 'Отметить веху «$title» как выполненную';
  }

  @override
  String calendarMilestone(String project) {
    return 'Веха · $project';
  }

  @override
  String get tasksViewInbox => 'Входящие';

  @override
  String get tasksViewArchived => 'Архив';

  @override
  String get tasksEmptyInbox =>
      'Сюда попадают задачи без проекта и даты. Разберите их, когда будет минутка.';

  @override
  String get tasksEmptyArchived => 'Архивные задачи хранятся здесь, вне списков и напоминаний.';

  @override
  String get taskArchivedBadge => 'В архиве';

  @override
  String get taskStatusInProgress => 'В работе';

  @override
  String get taskArchived => 'Задача перемещена в архив';

  @override
  String get taskUnarchived => 'Задача возвращена из архива';

  @override
  String get focusPlanTitle => 'План сессий';

  @override
  String focusPlanTotal(String duration) {
    return 'Всего $duration';
  }

  @override
  String get focusPlanRounds => 'Сессии фокуса';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Длинный перерыв после';

  @override
  String get focusPlanSkipLastBreak => 'Пропустить последний перерыв';

  @override
  String get focusPlanAutoBreaks => 'Начинать перерывы автоматически';

  @override
  String get focusPlanAutoFocus => 'Начинать фокус после перерыва';

  @override
  String get focusPlanSave => 'Сохранить план';

  @override
  String get focusPlanNameHint => 'например, Экзамен';

  @override
  String get focusPlanSaved => 'План сохранён';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: фокус $work мин, перерыв $rest мин';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Уменьшить: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Увеличить: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Сессия $current из $total';
  }

  @override
  String get focusSeriesComplete => 'Серия завершена. Отлично!';

  @override
  String get filterAll => 'Все';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Импортировано $added · пропущено дубликатов $duplicates · неполных строк $invalid';
  }

  @override
  String get flashcardsSuspend => 'Приостановить карточку';

  @override
  String get flashcardsResume => 'Возобновить карточку';

  @override
  String get flashcardsSuspended => 'Карточка приостановлена и не будет планироваться';

  @override
  String get flashcardsResumed => 'Карточка возобновлена';

  @override
  String get flashcardsSuspendedFilter => 'Приостановленные';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown из $total карточек';
  }

  @override
  String get flashcardsImportFile => 'Из файла';

  @override
  String get speechTitle => 'Озвучивание';

  @override
  String get speechAppLanguage => 'Язык приложения';

  @override
  String get speechFrontLanguage => 'Язык лицевой стороны';

  @override
  String get speechBackLanguage => 'Язык оборотной стороны';

  @override
  String get speechRepeat => 'Повторять чтение';

  @override
  String get speechRate => 'Скорость';

  @override
  String get speechAutoRead => 'Читать вопрос автоматически';

  @override
  String get speechHint =>
      'Используются голоса, установленные на устройстве, без интернета. Если для языка нет голоса, вы увидите сообщение — другой язык не подставляется.';

  @override
  String get studyHowTitle => 'Как будете заниматься?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Повторить $count карточек',
      few: 'Повторить $count карточки',
      one: 'Повторить $count карточку',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Тренировка по всем (график не меняется)';

  @override
  String get studyPracticeMistakes => 'Тренировать недавние ошибки';

  @override
  String get studyPracticeHint =>
      'Тренировка не меняет сроки карточек. График обновляет только повторение.';

  @override
  String get studyModeClassic => 'Классика';

  @override
  String get studyModeReverse => 'Обратный';

  @override
  String get studyModeMixed => 'В обе стороны';

  @override
  String get studyModeTyped => 'Ввод ответа';

  @override
  String get studyModeChoice => 'Выбор ответа';

  @override
  String get studyModeListening => 'Аудирование';

  @override
  String get studyPractice => 'тренировка';

  @override
  String get studyNoMistakes => 'Недавних ошибок в этой колоде нет. Отлично!';

  @override
  String get studyTypeAnswer => 'Введите ответ';

  @override
  String get studyCheck => 'Проверить';

  @override
  String get studyKnewIt => 'Знал';

  @override
  String get studyDidntKnow => 'Не знал';

  @override
  String studyMistakes(int count) {
    return 'Ошибки ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Повторить ошибки';

  @override
  String get studyCorrect => 'Верно';

  @override
  String get studyAlmost => 'Почти — проверьте написание';

  @override
  String get studyWrong => 'Неверно';

  @override
  String get studyShowText => 'Показать текст';

  @override
  String get flashcardsImportFileFailed =>
      'Не удалось открыть файл. Можно вставить его содержимое.';

  @override
  String get studyNoMatchingCards => 'Пока нет подходящих карточек.';

  @override
  String get studyPracticeNew => 'Только новые';

  @override
  String get studyPracticeHard => 'Сложные карточки';

  @override
  String get studyPracticeFavorites => 'Избранное';

  @override
  String get studySessionSize => 'Карточек за сессию';

  @override
  String get studySessionAll => 'Все';

  @override
  String get studyOrder => 'Порядок';

  @override
  String get studyOrderDue => 'Сначала просроченные';

  @override
  String get studyOrderRandom => 'Случайно';

  @override
  String get studyOrderHardest => 'Сначала сложные';

  @override
  String get flashcardsHard => 'Сложная';

  @override
  String get flashcardsFavorites => 'Избранное';

  @override
  String get flashcardsFavorite => 'В избранное';

  @override
  String get flashcardsUnfavorite => 'Убрать из избранного';

  @override
  String get flashcardsDuplicate => 'Дублировать';

  @override
  String get flashcardsMoveTo => 'Переместить в колоду';

  @override
  String get flashcardsNoOtherDeck => 'Сначала создайте другую колоду.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Перемещено $count карточек',
      few: 'Перемещены $count карточки',
      one: 'Перемещена $count карточка',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Добавить тег';

  @override
  String get flashcardsTagHint => 'например, глаголы';

  @override
  String flashcardsSelected(int count) {
    return 'Выбрано: $count';
  }

  @override
  String get flashcardsSelectAll => 'Выбрать все показанные';

  @override
  String flashcardsSelectCard(String front) {
    return 'Выбрать «$front»';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Память $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Возможный дубликат';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'В колоде уже есть «$front» → «$back». Всё равно сохранить?';
  }

  @override
  String get flashcardsSaveAnyway => 'Всё равно сохранить';

  @override
  String get flashcardsStats => 'Статистика';

  @override
  String get flashcardsStatTotal => 'Карточки';

  @override
  String get flashcardsStatLearning => 'Изучаются';

  @override
  String get flashcardsStatMatureCaption => 'Помнятся 21+ день';

  @override
  String get flashcardsStatReviewsToday => 'Повторений сегодня';

  @override
  String get flashcardsStatCorrect => 'Верные ответы';

  @override
  String flashcardsStatLastDays(int days) {
    return 'За $days дн.';
  }

  @override
  String get flashcardsStatForget => 'Доля забывания';

  @override
  String get flashcardsStatForgetCaption => '«Снова» по выученным';

  @override
  String get flashcardsStatRecall => 'Память сейчас';

  @override
  String get flashcardsStatRecallCaption => 'Оценка FSRS по повторённым';

  @override
  String flashcardsStatActivity(int count) {
    return 'Повторений в день · всего $count';
  }

  @override
  String get flashcardsStatHistory => 'Последние ответы';

  @override
  String get flashcardsStatNoHistory =>
      'Повторений пока нет. Занимайтесь, и здесь появится прогресс.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Прочитать: $field';
  }

  @override
  String get speechVoice => 'Голос';

  @override
  String get speechVoiceDefault => 'Автоматически';

  @override
  String get speechVoiceOnline => 'нужен интернет';

  @override
  String get speechTest => 'Проверить голос';

  @override
  String get importNext => 'Просмотр';

  @override
  String get importPreviewTitle => 'Сопоставьте столбцы и поля';

  @override
  String get importIgnoreColumn => 'Пропустить';

  @override
  String importColumn(int n) {
    return 'Столбец $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Готово карточек: $ready · неполных строк пропустим: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Выберите столбцы для лицевой и оборотной стороны.';

  @override
  String get actionMoveUp => 'Выше';

  @override
  String get actionMoveDown => 'Ниже';

  @override
  String get flashcardsLayoutTitle => 'Вид карточки';

  @override
  String get flashcardsLayoutHint =>
      'Переименуйте, скройте или упорядочьте поля этой колоды. Содержимое карточек не меняется.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Показывать «$field» при занятиях';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Открывать ответ по шагам';

  @override
  String get flashcardsLayoutStepRevealHint => 'Сначала оборот, затем каждое поле по нажатию.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Показать: $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Файл больше $mb МБ.';
  }

  @override
  String get flashcardsImage => 'Изображение';

  @override
  String get flashcardsAudio => 'Аудио';

  @override
  String get flashcardsAddImage => 'Добавить изображение';

  @override
  String get flashcardsAddAudio => 'Добавить аудио';

  @override
  String get flashcardsPlayAudio => 'Воспроизвести запись';

  @override
  String get flashcardsAudioUnavailable => 'Не удаётся воспроизвести запись на этом устройстве.';

  @override
  String get flashcardsCustomFields => 'Ваши поля';

  @override
  String get flashcardsTemplates => 'Шаблоны';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Поле $n';
  }

  @override
  String get flashcardsAddField => 'Добавить поле';

  @override
  String get flashcardsFieldName => 'Название поля';

  @override
  String get flashcardsFieldLangDefault => 'Язык стороны';

  @override
  String get flashcardsTemplateConfirm =>
      'Шаблон задаёт показ полей и добавляет свои. Ваши карточки и поля не меняются.';

  @override
  String get flashcardsApplyTemplate => 'Применить';

  @override
  String get templateVocabulary => 'Словарь';

  @override
  String get templateTwoTranslations => 'Слово с двумя переводами';

  @override
  String get templateQuestionAnswer => 'Вопрос и ответ';

  @override
  String get templateDefinition => 'Термин и определение';

  @override
  String get templateGrammar => 'Грамматическое правило';

  @override
  String get templateFieldPlural => 'Множественное число';

  @override
  String get templateFieldTranslation2 => 'Второй перевод';

  @override
  String get templateFieldSynonyms => 'Синонимы';

  @override
  String get templateFieldRule => 'Правило';

  @override
  String get deckCategory => 'Уровень или тема';

  @override
  String get deckCategoryHint => 'например, A1, Медицина';

  @override
  String get flashcardsSearchAll => 'Поиск по всем карточкам';

  @override
  String get flashcardsSearchAllHint => 'Слово, перевод, пример, заметка, тег…';

  @override
  String get flashcardsAllDecks => 'Все колоды';

  @override
  String get flashcardsAllLanguages => 'Все языки';

  @override
  String get flashcardsLangUnset => 'Язык не указан';

  @override
  String get flashcardsLevelUnset => 'Без уровня и темы';

  @override
  String get flashcardsByLanguage => 'Прогресс по языкам';

  @override
  String get flashcardsByLevel => 'Прогресс по уровням и темам';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Колод: $decks · карточек: $cards · выучено: $mature · к повтору: $due · верно: $correct (30 дн.)';
  }

  @override
  String get flashcardsRecord => 'Записать';

  @override
  String get flashcardsRecording => 'Идёт запись…';

  @override
  String get flashcardsRecordStop => 'Остановить и сохранить';

  @override
  String get flashcardsMicDenied =>
      'Доступ к микрофону выключен. Разрешите его в настройках системы, чтобы записывать.';

  @override
  String get flashcardsRecordFailed => 'Запись недоступна на этом устройстве.';

  @override
  String get soundsTitle => 'Звуки';

  @override
  String get soundsNature => 'Природа';

  @override
  String get soundsNoise => 'Шум для концентрации';

  @override
  String get soundRain => 'Дождь';

  @override
  String get soundStorm => 'Гроза';

  @override
  String get soundRiver => 'Река';

  @override
  String get soundOcean => 'Морские волны';

  @override
  String get soundFire => 'Костёр';

  @override
  String get soundForest => 'Лесные птицы';

  @override
  String get soundNight => 'Летняя ночь';

  @override
  String get soundWhite => 'Белый шум';

  @override
  String get soundPink => 'Розовый шум';

  @override
  String get soundBrown => 'Коричневый шум';

  @override
  String get soundsPlay => 'Воспроизвести';

  @override
  String get soundsSleep => 'Таймер сна';

  @override
  String get soundsSleepOff => 'Выкл.';

  @override
  String soundsSleepAt(String time) {
    return 'Остановится в $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Одновременно может звучать не более $count звуков.';
  }

  @override
  String get soundsHint =>
      'Нажмите на звук, чтобы начать. Смешивайте несколько и настраивайте громкость каждого.';

  @override
  String get soundsMixer => 'Микс';

  @override
  String soundsVolumeOf(String name) {
    return 'Громкость: $name';
  }

  @override
  String get soundsChannel => 'Звуки природы';

  @override
  String get settingsEndTone => 'Звук окончания таймера';

  @override
  String get toneGentle => 'Мягкие сигналы';

  @override
  String get toneBeeps => 'Короткие сигналы';

  @override
  String get toneWood => 'Стук по дереву';

  @override
  String get toneBird => 'Пение птицы';

  @override
  String get toneStream => 'Ручей';

  @override
  String get toneSystem => 'Звук телефона';

  @override
  String get speechOnPhone => 'На этом телефоне';

  @override
  String get speechAllLanguages => 'Все языки';

  @override
  String get speechSearchLanguage => 'Поиск языка';

  @override
  String get speechGetVoices => 'Скачать другие голоса';

  @override
  String get speechGetVoicesHint =>
      'Языки без голоса можно скачать в настройках синтеза речи телефона.';

  @override
  String get speechSettingsFailed => 'Не удалось открыть настройки речи на этом телефоне.';

  @override
  String get speechVoiceMissing => 'Голос не установлен';

  @override
  String get speechPause => 'Пауза между повторами';

  @override
  String speechSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String get speechExample => 'Читать пример вместе с ответом';

  @override
  String get flashListen => 'Слушать';

  @override
  String get flashListenNext => 'Следующая карточка';

  @override
  String get flashListenEmpty => 'Нет карточек для прослушивания.';

  @override
  String get flashViewTable => 'Таблица';

  @override
  String get flashViewCards => 'Карточки';

  @override
  String get flashSwapSides => 'Поменять столбцы';

  @override
  String get flashSort => 'Сортировка';

  @override
  String get flashSortNewest => 'Сначала новые';

  @override
  String get flashSortAlpha => 'По алфавиту';

  @override
  String get flashSortDue => 'Сначала к повторению';

  @override
  String get flashSortHard => 'Сначала сложные';

  @override
  String get flashPasteCards => 'Вставить карточки';

  @override
  String get flashClipboardEmpty => 'В буфере обмена нет текста.';

  @override
  String get flashMenuAdd => 'Добавить карточки';

  @override
  String get flashMenuDeck => 'Колода';

  @override
  String get flashToday => 'Сегодня';

  @override
  String get flashStudyNow => 'Учить';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ответа',
      many: '$count ответов',
      few: '$count ответа',
      one: '$count ответ',
      zero: 'Нет ответов',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Дождь в лесу';

  @override
  String get autoBackupTitle => 'Автоматические копии';

  @override
  String get autoBackupDesc => 'Каждый день на этом телефоне; хранятся последние 7';

  @override
  String get autoBackupHint =>
      'Эти копии хранятся на телефоне и удаляются вместе с приложением. Для переноса на новый телефон сохраните файл через «Резервная копия».';

  @override
  String get autoBackupNone => 'Автоматических копий пока нет. Первая будет создана сегодня.';

  @override
  String get autoBackupRestore => 'Восстановить';

  @override
  String autoBackupConfirm(String date) {
    return 'Заменить все текущие данные копией от $date?';
  }

  @override
  String get autoBackupRestored => 'Восстановлено.';

  @override
  String get errorLogTitle => 'Журнал ошибок';

  @override
  String get errorLogHint =>
      'Если что-то пойдёт не так, это записывается здесь: только тип ошибки и место в коде, без вашего содержимого. Поделитесь журналом, чтобы помочь исправить.';

  @override
  String get errorLogEmpty => 'Ошибок не записано.';

  @override
  String get errorLogClear => 'Очистить';

  @override
  String get soundsWithFocus => 'Включать во время фокус-сессий';

  @override
  String get soundsWithFocusHint => 'Микс запускается с сессией и замолкает на перерывах.';

  @override
  String get soundsSavedMixes => 'Сохранённые миксы';

  @override
  String get soundsSaveMix => 'Сохранить микс';

  @override
  String get soundsMixNameHint => 'Название, например «Дождливая библиотека»';

  @override
  String soundsDeleteMix(String name) {
    return 'Удалить микс «$name»?';
  }

  @override
  String get settingsReviewReminderHint => 'Раз в день, только если есть карточки к повторению';

  @override
  String get settingsReviewTime => 'Время напоминания';

  @override
  String get shortcutFocus => 'Фокус';

  @override
  String get shortcutNewTask => 'Новая задача';

  @override
  String get shortcutReview => 'Повторить карточки';

  @override
  String get shortcutSounds => 'Звуки природы';

  @override
  String get myDayTitle => 'Начать день';

  @override
  String get myDayHint => 'Ваш день одним взглядом и одно касание до фокуса';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачи на сегодня',
      many: '$count задач на сегодня',
      few: '$count задачи на сегодня',
      one: '$count задача на сегодня',
      zero: 'На сегодня задач нет',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Сегодня больше нет событий';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Далее: $title в $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Осталось $count привычки',
      many: 'Осталось $count привычек',
      few: 'Осталось $count привычки',
      one: 'Осталась $count привычка',
      zero: 'Все привычки выполнены',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Начать с сессии фокуса';

  @override
  String get hijriMonth1 => 'Мухаррам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Раби аль-авваль';

  @override
  String get hijriMonth4 => 'Раби ас-сани';

  @override
  String get hijriMonth5 => 'Джумада аль-уля';

  @override
  String get hijriMonth6 => 'Джумада ас-сани';

  @override
  String get hijriMonth7 => 'Раджаб';

  @override
  String get hijriMonth8 => 'Шабан';

  @override
  String get hijriMonth9 => 'Рамадан';

  @override
  String get hijriMonth10 => 'Шавваль';

  @override
  String get hijriMonth11 => 'Зуль-када';

  @override
  String get hijriMonth12 => 'Зуль-хиджа';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year г. х.';
  }

  @override
  String get settingsHijri => 'Даты по хиджре';

  @override
  String get settingsHijriHint => 'Показываются в календаре и на главной (Умм аль-Кура)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done из $goal карточек сегодня';
  }

  @override
  String get studyGoalReached => 'Цель дня выполнена. Отлично!';

  @override
  String get studyWeekTitle => 'Ваша неделя';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карточки за 7 дней',
      many: '$count карточек за 7 дней',
      few: '$count карточки за 7 дней',
      one: '$count карточка за 7 дней',
      zero: 'За 7 дней нет карточек',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration фокуса за 7 дней';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Серия: $current · Рекорд: $best';
  }

  @override
  String get studyGoalTitle => 'Цель на день (карточки)';

  @override
  String get studyGoalOff => 'Нет';

  @override
  String get focusDndTitle => 'Не беспокоить во время фокуса';

  @override
  String get focusDndHint => 'Включается на время сессии и выключается на перерыве';

  @override
  String get focusDndNeedsAccess => 'Разрешите доступ в настройках телефона';

  @override
  String get voiceInput => 'Голосовой ввод';

  @override
  String get voiceInputPrompt => 'Говорите';

  @override
  String get voiceInputUnavailable =>
      'Голосовой ввод недоступен на этом телефоне. Установите или включите службу распознавания речи (например, от Google).';

  @override
  String get prayerFajr => 'Фаджр';

  @override
  String get prayerSunrise => 'Восход';

  @override
  String get prayerDhuhr => 'Зухр';

  @override
  String get prayerAsr => 'Аср';

  @override
  String get prayerMaghrib => 'Магриб';

  @override
  String get prayerIsha => 'Иша';

  @override
  String get prayerMethodMwl => 'Всемирная исламская лига';

  @override
  String get prayerMethodUmmAlQura => 'Умм аль-Кура (Мекка)';

  @override
  String get prayerMethodEgypt => 'Египетское управление';

  @override
  String get prayerMethodJordan => 'Иордания (Министерство вакфов)';

  @override
  String get prayerMethodKarachi => 'Университет исламских наук, Карачи';

  @override
  String get prayerMethodIsna => 'Исламское общество Северной Америки';

  @override
  String get prayerMethodGulf => 'Страны Залива';

  @override
  String get prayerMethodKuwait => 'Кувейт';

  @override
  String get prayerMethodQatar => 'Катар';

  @override
  String get prayerMethodTurkey => 'Турция (Диянет)';

  @override
  String get prayerMethodSingapore => 'Сингапур, Малайзия, Индонезия';

  @override
  String get prayerMethodFrance => 'Франция (12°)';

  @override
  String get prayerMethodRussia => 'Россия (ДУМ)';

  @override
  String prayerNotifTitle(String name) {
    return 'Время намаза $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Время намаза · $time';
  }

  @override
  String get prayerTitle => 'Время намаза';

  @override
  String get prayerOffHint =>
      'Выберите город, чтобы видеть время намаза. Оно рассчитывается на телефоне, без доступа к геолокации.';

  @override
  String get prayerChooseCity => 'Выбрать город';

  @override
  String get prayerCity => 'Город';

  @override
  String get prayerCitySearch => 'Найти город';

  @override
  String get prayerMethod => 'Метод расчёта';

  @override
  String get prayerHanafiAsr => 'Аср по-ханафитски (позже)';

  @override
  String get prayerReminders => 'Уведомлять о каждом намазе';

  @override
  String get prayerPauseFocus => 'Пауза фокуса во время намаза';

  @override
  String get prayerPauseFocusHint => 'Сессия ставится на паузу; продолжите после';

  @override
  String get prayerTurnOff => 'Отключить время намаза';

  @override
  String get prayerAccuracyNote => 'Расчётное время может отличаться от мечети на несколько минут.';

  @override
  String prayerNext(String name, String time) {
    return '$name в $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Этот файл Anki в новейшем формате. Экспортируйте снова в Anki с включённым параметром «Поддержка старых версий Anki».';

  @override
  String get importTemplate => 'Шаблон таблицы';

  @override
  String get importTemplateFront => 'яблоко';

  @override
  String get importTemplateBack => 'круглый фрукт';

  @override
  String get importTemplateExample => 'Я ем яблоко каждый день.';

  @override
  String get importTemplateTag => 'еда';

  @override
  String get starterTitle => 'Готовые колоды';

  @override
  String get starterHint => 'Добавьте колоду и начните сразу. Её можно изменить или удалить.';

  @override
  String get starterAdd => 'Добавить';

  @override
  String get starterWords => 'Повседневные английские слова (арабский)';

  @override
  String get starterCapitals => 'Столицы мира';

  @override
  String get starterElements => 'Химические элементы';

  @override
  String get settingsAccent => 'Цвет акцента';

  @override
  String get accentViolet => 'Фиолетовый';

  @override
  String get accentBlue => 'Синий';

  @override
  String get accentTeal => 'Бирюзовый';

  @override
  String get accentGreen => 'Зелёный';

  @override
  String get accentRose => 'Розовый';

  @override
  String get accentAmber => 'Янтарный';

  @override
  String get settingsFlashTextSize => 'Размер текста карточек';

  @override
  String get settingsFlashTextSample => 'Пример';

  @override
  String get widgetStartFocus => 'Нажмите, чтобы начать фокус';

  @override
  String widgetFocusUntil(String time) {
    return 'Фокус до $time';
  }

  @override
  String get widgetNoCardsDue => 'Карточки: всё повторено';

  @override
  String get faqMyDayQ => 'Что делает «Начать день»?';

  @override
  String get faqMyDayA =>
      'Раз в день на главной: задачи на сегодня, ближайшее событие, оставшиеся привычки и карточки к повторению, а затем сессия фокуса одним касанием. Удерживайте значок приложения для быстрых действий или добавьте виджет на главный экран.';

  @override
  String get faqTasksQ => 'Как добавить задачу с напоминанием?';

  @override
  String get faqTasksA =>
      'Нажмите «Новая задача» на главной или + в Задачах. Введите название или продиктуйте его, затем укажите срок, время и напоминание. Просроченные задачи показываются первыми.';

  @override
  String get faqFocusQ => 'Как работает таймер фокуса?';

  @override
  String get faqFocusA =>
      'Выберите помодоро, обратный отсчёт или свободное время и нажмите «Старт»; перерывы могут начинаться сами. В настройках выберите звук окончания, включите «Не беспокоить» во время фокуса и звуки природы для каждой сессии.';

  @override
  String get faqSoundsQ => 'Можно ли смешивать звуки природы?';

  @override
  String get faqSoundsA =>
      'Включите до шести настоящих записей, настройте громкость каждой и сохраните микс под именем. Они играют в фоне, а таймер сна может их остановить. Музыки нет.';

  @override
  String get faqCalendarQ => 'Показывает ли календарь даты по хиджре?';

  @override
  String get faqCalendarA =>
      'Да. Даты по хиджре (Умм аль-Кура) показываются автоматически на арабском и включаются в настройках для любого языка. События, задачи со сроком и этапы проектов видны вместе.';

  @override
  String get faqFlashcardsQ => 'Как выбираются карточки для повторения?';

  @override
  String get faqFlashcardsA =>
      'Хорошо выученные карточки возвращаются реже, а ошибочные — скоро (интервальное повторение). Оценивайте ответ: Снова, Трудно, Хорошо или Легко. Задайте цель на день и держите серию на карточке «Сегодня». Укажите дату экзамена в колоде, чтобы видеть, сколько дней осталось и сколько новых карточек учить в день. Выберите сортировку «Мой порядок», чтобы перетаскивать карточки, нажмите динамик на любой стороне, чтобы послушать, а скорость и повторы настройте в меню озвучки.';

  @override
  String get faqImportQ => 'Можно ли перенести карточки из Anki или Excel?';

  @override
  String get faqImportA =>
      'Да. В колоде выберите «Импорт» и файл: Anki (.apkg), Excel (.xlsx) или CSV, затем сопоставьте столбцы. «Шаблон таблицы» поможет писать карточки на компьютере. Картинки и звуки из файлов Anki не переносятся.';

  @override
  String get faqNotesQ => 'Что умеют заметки?';

  @override
  String get faqNotesA =>
      'Пишите со списками и форматированием, закрепляйте важные заметки или добавляйте в избранное, ставьте теги и связывайте заметки с задачами. Кнопка микрофона позволяет диктовать. Новую заметку можно начать с шаблона (лекция, конспект книги, дневник, план на неделю), а кнопка изображения добавляет фото.';

  @override
  String get faqHabitsQ => 'Как считаются серии привычек?';

  @override
  String get faqHabitsA =>
      'День засчитывается, если в запланированный день достигнута цель привычки. Пауза сохраняет серию. У каждой привычки может быть своё время напоминания.';

  @override
  String get faqGoalsQ => 'Как цели отслеживают прогресс?';

  @override
  String get faqGoalsA =>
      'Задайте цели количество и единицу и отмечайте прогресс. Карточка покажет, сколько сделано и сколько осталось до срока.';

  @override
  String get faqProjectsQ => 'Зачем нужны проекты?';

  @override
  String get faqProjectsA =>
      'Объединяйте задачи в проект, добавляйте этапы с датами и следите за прогрессом. Этапы видны и в календаре.';

  @override
  String get faqInsightsQ => 'Что показывает аналитика?';

  @override
  String get faqInsightsA =>
      'Время фокуса, выполненные задачи и учёба по дням и неделям, с мягкими советами. Всё считается на телефоне.';

  @override
  String get faqSpacesQ => 'Где все разделы?';

  @override
  String get faqSpacesA =>
      'В «Пространствах» собраны все разделы (заметки, колоды, привычки, цели, проекты, звуки и другое), чтобы нижняя панель оставалась простой.';

  @override
  String get faqBackupQ => 'Как создаются резервные копии?';

  @override
  String get faqBackupA =>
      'Каждый день приложение тихо сохраняет зашифрованную копию на телефоне и хранит последние 7. В настройках можно также экспортировать копию с паролем и восстановить её на другом телефоне.';

  @override
  String get faqPrayerQ => 'Как работает время намаза?';

  @override
  String get faqPrayerA =>
      'Выберите город в «Настройки → Время намаза». Время рассчитывается на телефоне по местному методу; метод и мазхаб для асра можно изменить. Можно получать уведомление о каждом намазе, а идущая сессия фокуса ставится на паузу.';

  @override
  String get faqPrivacyQ => 'Где хранятся мои данные?';

  @override
  String get faqPrivacyA =>
      'Только на телефоне, в зашифрованной базе. Нет аккаунта и слежки. Интернет нужен лишь функциям, которые вы включаете сами, например помощнику.';

  @override
  String get faqAssistantQ => 'Что такое помощник?';

  @override
  String get faqAssistantA =>
      'Необязательный помощник, который вы подключаете к своему ИИ-сервису в настройках. По умолчанию выключен и спрашивает перед отправкой текста заметок.';

  @override
  String get tourPlanTitle => 'Планируйте день';

  @override
  String get tourPlanBody =>
      'Задачи, календарь и привычки в одном спокойном месте. Начинайте утро с «Начать день».';

  @override
  String get tourFocusTitle => 'Глубокий фокус';

  @override
  String get tourFocusBody =>
      'Сессии с таймером, настоящими звуками природы, режимом «Не беспокоить» и мягкими сигналами.';

  @override
  String get tourLearnTitle => 'Учитесь надолго';

  @override
  String get tourLearnBody =>
      'Карточки с интервальным повторением, озвучка на многих языках и импорт из Anki или Excel.';

  @override
  String get helpTitle => 'Помощь и вопросы';

  @override
  String get helpOpen => 'Открыть';

  @override
  String get helpTour => 'Пройти тур';

  @override
  String get tourNext => 'Далее';

  @override
  String get tourDone => 'Начнём';

  @override
  String get transferColTitle => 'Название';

  @override
  String get transferColNotes => 'Заметки';

  @override
  String get transferColBody => 'Текст';

  @override
  String get transferColDue => 'Срок';

  @override
  String get transferColPriority => 'Приоритет (0-3)';

  @override
  String get transferColDone => 'Выполнена';

  @override
  String get transferColProject => 'Проект';

  @override
  String get transferColCategory => 'Категория';

  @override
  String get transferTitle => 'Импорт и экспорт';

  @override
  String get transferSaveAs => 'Сохранить как';

  @override
  String get transferImport => 'Импорт из файла';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV или таблица Word. Столбцы: название, срок (2026-12-31), приоритет 0-3, выполнена, проект, заметки. Уже существующие задачи пропускаются.';

  @override
  String get transferImportNotesHint =>
      'Файлы Word, Markdown или текст становятся заметкой. Excel или CSV: заметка на строку (название, текст).';

  @override
  String get transferSaved => 'Файл сохранён';

  @override
  String get transferFailed => 'Не удалось создать файл. Ничего не изменено.';

  @override
  String get transferUnsupported =>
      'Этот файл нельзя прочитать здесь. Используйте Excel, CSV, Word, Markdown или текст.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Добавлено $added',
      many: 'Добавлено $added',
      few: 'Добавлено $added',
      one: 'Добавлен $added',
      zero: 'Нечего добавить',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Текст';

  @override
  String get transferAllNotes => 'Все заметки';

  @override
  String get transferThisNote => 'Эта заметка';

  @override
  String get transferDeckFormats => 'Сохранить как Excel, Word или PDF';

  @override
  String get faqFilesQ => 'Можно ли работать с файлами Excel, Word и PDF?';

  @override
  String get faqFilesA =>
      'Да. В «Задачах» и «Заметках» вверху есть кнопка импорта и экспорта (две стрелки), а у каждой колоды — в меню. Сохраняйте в Excel, CSV, Word или PDF или загружайте файлы Excel, CSV, Word, Markdown и текст. Столбцы могут называться на любом языке приложения, а сохранённые файлы всегда можно импортировать снова.';

  @override
  String get tplLecture => 'Лекция';

  @override
  String get tplBook => 'Конспект книги';

  @override
  String get tplJournal => 'Дневник';

  @override
  String get tplWeek => 'План на неделю';

  @override
  String get tplLectureBody => '## Главное\n- \n\n## Вопросы\n- [ ] \n\n## Итог\n';

  @override
  String get tplBookBody =>
      '## Главная мысль\n\n## Что я узнал\n- \n\n## Цитаты\n> \n\n## Применить\n- [ ] \n';

  @override
  String get tplJournalBody => '## Благодарен за\n- \n\n## Фокус дня\n- [ ] \n\n## Заметки\n';

  @override
  String get tplWeekBody =>
      '## Цели недели\n- [ ] \n\n### Суббота\n- [ ] \n\n### Воскресенье\n- [ ] \n\n### Понедельник\n- [ ] \n\n### Вторник\n- [ ] \n\n### Среда\n- [ ] \n\n### Четверг\n- [ ] \n\n### Пятница\n- [ ] \n';

  @override
  String get tplHint => 'Начать с шаблона';

  @override
  String get noteImage => 'Изображение';

  @override
  String get noteAddImage => 'Добавить изображение';

  @override
  String get noteImageUnreadable =>
      'Этот файл не является изображением, которое может прочитать приложение.';

  @override
  String get noteImageTooLarge => 'Изображение слишком большое.';

  @override
  String get examSet => 'Указать дату экзамена';

  @override
  String get examDate => 'Дата экзамена';

  @override
  String get examToday => 'Экзамен сегодня. Удачи!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Экзамен через $count дня',
      many: 'Экзамен через $count дней',
      few: 'Экзамен через $count дня',
      one: 'Экзамен через $count день',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'учите $count новой карточки в день',
      many: 'учите $count новых карточек в день',
      few: 'учите $count новые карточки в день',
      one: 'учите $count новую карточку в день',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'всё выучено, продолжайте повторять';

  @override
  String examRaiseLimit(int count) {
    return 'Показывать $count новых карточек в день';
  }

  @override
  String get backupDriveHint =>
      'Чтобы хранить копию в облаке, выберите Google Диск (или другое облачное приложение) на следующем экране сохранения.';

  @override
  String get flashShareDeck => 'Поделиться колодой с другом';

  @override
  String get flashSortManual => 'Мой порядок (перетаскивание)';

  @override
  String get flashReorderHint => 'Удерживайте ручку и перетащите карточку.';

  @override
  String get flashReorderNeedsAll => 'Сбросьте поиск и фильтры, чтобы перетаскивать карточки.';

  @override
  String get flashDragHandle => 'Перетащите';

  @override
  String get reportTitle => 'Отчёт за месяц';

  @override
  String get reportFocus => 'Время фокуса';

  @override
  String reportSessions(int count) {
    return 'Сессий: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Лучший день: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Активных дней: $count';
  }

  @override
  String get reportCards => 'Повторено карточек';

  @override
  String reportCardsKnown(String percent) {
    return 'Запомнено: $percent';
  }

  @override
  String get reportTasks => 'Выполнено задач';

  @override
  String get reportHabits => 'Отметок привычек';

  @override
  String get reportEmpty => 'В этом месяце пока ничего нет.';

  @override
  String get reportSave => 'Сохранить в PDF или Word';

  @override
  String get reportPrevMonth => 'Предыдущий месяц';

  @override
  String get reportNextMonth => 'Следующий месяц';

  @override
  String get careTitle => 'Забота о телефоне и данных';

  @override
  String get storageTitle => 'Хранилище';

  @override
  String get storageSubtitle => 'Что занимает место и очистка неиспользуемых картинок';

  @override
  String get storagePictures => 'Картинки в заметках';

  @override
  String get storageCardMedia => 'Картинки и аудио в карточках';

  @override
  String get storageText => 'Текст заметок';

  @override
  String get storageFree => 'Свободно на телефоне';

  @override
  String get storageLow =>
      'Память телефона почти заполнена. Освободите место, чтобы резервные копии и напоминания работали.';

  @override
  String storageUnused(int count, String size) {
    return 'Неиспользуемых картинок: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Неиспользуемых картинок нет. Всё в порядке.';

  @override
  String get storageClean => 'Удалить неиспользуемые картинки';

  @override
  String storageCleaned(int count) {
    return 'Удалено картинок: $count';
  }

  @override
  String get storageHint =>
      'Картинка считается неиспользуемой, только если её не показывает ни одна заметка, включая корзину.';

  @override
  String get batteryTitle => 'Чтобы напоминания приходили';

  @override
  String get batterySubtitle =>
      'Некоторые телефоны останавливают фоновые приложения. Проверьте свой.';

  @override
  String get batteryStatusOk =>
      'Экономия заряда не ограничивает приложение. Напоминания и звуки должны приходить вовремя.';

  @override
  String get batteryStatusLimited =>
      'Экономия заряда может останавливать приложение в фоне: напоминания и звуки придут с опозданием или не придут.';

  @override
  String get batteryOpen => 'Открыть настройки батареи';

  @override
  String get batteryOpenApp => 'Открыть настройки приложения';

  @override
  String get batteryGeneric =>
      'В настройках батареи выберите это приложение и поставьте «Без ограничений» (или «Не оптимизировать»).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: также включите приложение в Безопасность › Разрешения › Автозапуск и поставьте экономию батареи «Без ограничений».';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: откройте Батарея › это приложение, разрешите фоновую работу и автозапуск; закрепите приложение в списке недавних.';

  @override
  String get batterySamsung =>
      'Samsung: Батарея › Ограничения фоновой работы: уберите приложение из «Спящих» и «Глубокого сна».';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Запуск приложений › это приложение › вручную, разрешите автозапуск, косвенный запуск и работу в фоне.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Батарея › Фоновое энергопотребление › разрешите приложение и включите автозапуск в разрешениях.';

  @override
  String get whatsNewTitle => 'Что нового';

  @override
  String get whatsNewSubtitle => 'Последние изменения в нескольких строках';

  @override
  String get whatsNewDone => 'Понятно';

  @override
  String get whatsNewOrderTitle => 'Перетаскивайте карточки в свой порядок';

  @override
  String get whatsNewOrderBody => 'В колоде выберите Порядок › Мой порядок и перетащите ручку.';

  @override
  String get whatsNewSpeechTitle => 'Динамик у каждой стороны';

  @override
  String get whatsNewSpeechBody =>
      'Нажмите, чтобы услышать слово или перевод. Скорость, повторы и голос — в меню повторения. Язык определяется по тексту.';

  @override
  String get whatsNewReportTitle => 'Отчёт за месяц';

  @override
  String get whatsNewReportBody =>
      'В статистике нажмите значок отчёта, чтобы увидеть месяц и сохранить в PDF или Word.';

  @override
  String get whatsNewCareTitle => 'Забота о телефоне и данных';

  @override
  String get whatsNewCareBody =>
      'В настройках появились страница хранилища с очисткой картинок и руководство по батарее для вашей марки.';

  @override
  String get whatsNewSoundTitle => 'Более мягкие звуки';

  @override
  String get whatsNewSoundBody => 'Звуки природы мягче и тише, а карточки красивее.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Проверено $date: последняя копия открывается без проблем.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Проверено $date: найдена повреждённая копия, она заменена новой.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Проверено $date: последнюю копию открыть не удалось. Сохраните резервную копию вручную в настройках.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Обычно вы занимаетесь около $time';
  }

  @override
  String get smartReviewTimeUse => 'Использовать';

  @override
  String get widgetNewNote => 'Новая заметка';

  @override
  String get noteConnections => 'Теги, ссылки и задачи';

  @override
  String get navCards => 'Карточки';

  @override
  String get studyAnswerWay => 'Как отвечать';

  @override
  String get studyMorePractice => 'Дополнительная практика';

  @override
  String get studySessionSettings => 'Настройки сессии';

  @override
  String get focusAdjustTitle => 'Ваша сессия';

  @override
  String get focusPresetsTitle => 'Готовые';

  @override
  String get focusPresetStudy => 'Учёба';

  @override
  String get focusPresetDeep => 'Глубокая работа';

  @override
  String get focusPresetQuick => 'Короткий рывок';

  @override
  String get focusPresetReading => 'Чтение';

  @override
  String get focusPresetWorkout => 'Тренировочные раунды';

  @override
  String get focusAdjustMinutes => 'Длительность фокуса';

  @override
  String get focusAdjustBreak => 'Длительность перерыва';

  @override
  String get focusAdjustRounds => 'Раунды';

  @override
  String get focusRoundsOpen => 'Без ограничения';

  @override
  String focusMinutesShort(String n) {
    return '$n мин';
  }

  @override
  String get focusTapToAdjust => 'Нажмите, чтобы изменить время';

  @override
  String get flashArrangeDecks => 'Упорядочить колоды';

  @override
  String get flashDeckActions => 'Действия с колодой';

  @override
  String get starterBrowse => 'Готовые колоды';

  @override
  String get starterBrowseHint => 'Добавьте одним касанием и начните';

  @override
  String get dashOpenDecks => 'Открыть карточки';

  @override
  String speechVoiceNumber(String n) {
    return 'Голос $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Хороший поток. Отдых $m мин?';
  }

  @override
  String get focusFlowBreakStart => 'Начать отдых';

  @override
  String tasksFinishAt(String time) {
    return 'Если начать сейчас, всё будет готово к $time';
  }

  @override
  String get focusCalmPacing => 'Спокойный темп';

  @override
  String get focusCalmPacingHint => 'Только целые минуты и кольцо, без секунд';

  @override
  String get focusFlipHint => 'Положите телефон экраном вниз, чтобы начать';

  @override
  String get focusImmersive => 'Режим погружения';

  @override
  String get focusImmersiveBlack => 'Чисто чёрный (экономит батарею)';

  @override
  String get focusFlipToFocus => 'Перевернуть для фокуса';

  @override
  String get focusFlipToFocusHint => 'В режиме погружения: экраном вниз — старт, поднять — пауза';

  @override
  String get guardTitle => 'Защита от отвлечений';

  @override
  String get guardSubtitle => 'Приостанавливайте отвлекающие приложения во время фокуса';

  @override
  String get guardSwitch => 'Приостанавливать отвлекающие приложения';

  @override
  String get guardSwitchHint => 'Во время сессий фокуса и по расписанию';

  @override
  String get guardNeedsAccess => 'Нужно включить спец. возможности: нажмите, чтобы включить';

  @override
  String get guardDisclosureTitle => 'Как работает защита';

  @override
  String get guardDisclosureBody =>
      'Чтобы приостанавливать выбранные приложения, Deep Focus использует службу специальных возможностей Android и видит, какое приложение открыто. С опцией «Закрывать Shorts и Reels» он также проверяет, открыт ли плеер коротких видео.\n\nОн не читает текст, ничего не сохраняет и никуда не отправляет: всё остаётся на телефоне. Отключить можно в любое время в настройках спец. возможностей.';

  @override
  String get guardAgree => 'Согласен, открыть настройки';

  @override
  String get guardModeGentle => 'Мягкий';

  @override
  String get guardModeStrict => 'Строгий';

  @override
  String get guardGentleHint => '5 секунд дыхания, затем вы решаете';

  @override
  String get guardStrictHint => 'Выбранные приложения закрыты до конца фокуса';

  @override
  String get guardApps => 'Приложения для паузы';

  @override
  String get guardAppsAllowed => 'Разрешённые приложения';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count приложений',
      few: '$count приложения',
      one: '$count приложение',
      zero: 'Пока не выбраны',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Разрешить только выбранные';

  @override
  String get guardAllowlistHint =>
      'Остальные на паузе; звонки, настройки и клавиатура работают всегда';

  @override
  String get guardShorts => 'Закрывать Shorts и Reels';

  @override
  String get guardShortsHint =>
      'Всегда, когда защита включена. Без гарантий: эти приложения часто меняются';

  @override
  String get guardSchedule => 'Расписание';

  @override
  String get guardScheduleHint => 'Также в заданные дни и часы, например учёба или работа';

  @override
  String get guardFrom => 'С';

  @override
  String get guardTo => 'До';

  @override
  String get guardSearchApps => 'Поиск приложений';

  @override
  String get guardNoApps => 'Приложения не найдены';

  @override
  String get guardPrivacy =>
      'Работает только на телефоне: видит, какое приложение открыто, но не его содержимое, и ничего не отправляет.';

  @override
  String get guardBreathe => 'Вдох… и выдох';

  @override
  String get guardQuestion => 'Вам сейчас нужно это приложение?';

  @override
  String get guardBackToFocus => 'Вернуться к фокусу';

  @override
  String get guardOpenFive => 'Открыть на 5 минут';

  @override
  String get guardStrictBody => 'Приложение на паузе до конца фокуса.';

  @override
  String get guardShortsClosed => 'Короткие видео закрыты, пока включена защита';

  @override
  String get faqGuardQ => 'Как остановить отвлекающие приложения во время фокуса?';

  @override
  String get faqGuardA =>
      'Откройте Фокус → настройки таймера → Защита от отвлечений. Выберите приложения и режим: Мягкий (5 секунд дыхания и вопрос «Вам сейчас нужно это приложение?») или Строгий (они закрыты). Защита работает во время сессий, а с Расписанием — в выбранные дни и часы. «Разрешить только выбранные» ставит на паузу всё остальное; звонки, настройки и клавиатура работают всегда. Android один раз попросит включить её в спец. возможностях. Она видит только, какое приложение открыто, и ничего не отправляет.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Перемещено в «$name»';
  }

  @override
  String get notesDragHint => 'Удерживайте заметку и перетащите в блокнот';

  @override
  String get guardReviewCards => 'Повторить карточки';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Вас ждут $count карточек',
      few: 'Вас ждут $count карточки',
      one: 'Вас ждёт $count карточка',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Срочно: удерживайте 10 секунд';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Держите… $n';
  }

  @override
  String get guardWeekTitle => 'На этой неделе';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пауз',
      few: '$count паузы',
      one: '$count пауза',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count раз вернулись к фокусу',
      few: '$count раза вернулись к фокусу',
      one: '$count раз вернулись к фокусу',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Переименовать слова';

  @override
  String get wordsSubtitle => 'Свои слова для любого текста в приложении';

  @override
  String get wordsHint =>
      'Нажмите на текст, чтобы изменить его. Ваши слова действуют только для этого языка и сохраняются в резервных копиях.';

  @override
  String get wordsSearch => 'Поиск текста';

  @override
  String get wordsChangedOnly => 'Только изменённые';

  @override
  String wordsOriginal(String text) {
    return 'Исходно: $text';
  }

  @override
  String get wordsReset => 'Вернуть исходное';

  @override
  String get wordsResetAll => 'Сбросить все слова';

  @override
  String get wordsResetAllConfirm => 'Все тексты этого языка вернутся к исходным.';

  @override
  String get wordsNone => 'Текст не найден';

  @override
  String get settingsLanguageSearch => 'Поиск языка';

  @override
  String get settingsLanguageNoMatch => 'Язык не найден';

  @override
  String get soundsMyMusic => 'Ваше аудио';

  @override
  String get soundsMusicHint =>
      'Воспроизводите аудиофайл с телефона. Ничего не копируется и не загружается.';

  @override
  String get soundsChooseMusic => 'Выбрать аудио';

  @override
  String get soundsRemoveMusic => 'Убрать аудио';

  @override
  String get wordPacksTitle => 'Наборы слов';

  @override
  String get wordPacksHint =>
      'Списки слов по темам. Скачайте только нужный язык, а затем свободно меняйте или удаляйте карточки.';

  @override
  String get wordPacksFailed => 'Не удалось скачать. Проверьте подключение.';

  @override
  String get wordPacksEmpty => 'Слова для этого языка ещё готовятся.';
}
