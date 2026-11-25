// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Головна';

  @override
  String get navTasks => 'Завдання';

  @override
  String get navFocus => 'Фокус';

  @override
  String get navCalendar => 'Календар';

  @override
  String get navSpaces => 'Простори';

  @override
  String get moduleProjects => 'Проєкти';

  @override
  String get moduleNotes => 'Нотатки';

  @override
  String get moduleFlashcards => 'Картки';

  @override
  String get moduleGoals => 'Цілі';

  @override
  String get moduleHabits => 'Звички';

  @override
  String get moduleAnalytics => 'Статистика';

  @override
  String get moduleSearch => 'Пошук';

  @override
  String get moduleAssistant => 'Помічник';

  @override
  String get moduleSettings => 'Налаштування';

  @override
  String get moduleTrash => 'Кошик';

  @override
  String get actionSave => 'Зберегти';

  @override
  String get actionCancel => 'Скасувати';

  @override
  String get actionDelete => 'Видалити';

  @override
  String get actionEdit => 'Редагувати';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionAdd => 'Додати';

  @override
  String get actionCreate => 'Створити';

  @override
  String get actionClose => 'Закрити';

  @override
  String get actionBack => 'Назад';

  @override
  String get actionUndo => 'Відмінити';

  @override
  String get actionRestore => 'Відновити';

  @override
  String get actionRetry => 'Спробувати ще раз';

  @override
  String get actionContinue => 'Продовжити';

  @override
  String get actionSkip => 'Пропустити';

  @override
  String get actionArchive => 'Архівувати';

  @override
  String get actionUnarchive => 'Повернути з архіву';

  @override
  String get actionPin => 'Закріпити';

  @override
  String get actionUnpin => 'Відкріпити';

  @override
  String get actionMore => 'Інші дії';

  @override
  String get actionClear => 'Очистити';

  @override
  String get actionSearch => 'Пошук';

  @override
  String get actionSort => 'Сортувати';

  @override
  String get actionShare => 'Поділитися';

  @override
  String get actionImport => 'Імпортувати';

  @override
  String get actionExport => 'Експортувати';

  @override
  String get actionPause => 'Пауза';

  @override
  String get actionResume => 'Продовжити';

  @override
  String get actionStart => 'Почати';

  @override
  String get actionStop => 'Зупинити';

  @override
  String get actionComplete => 'Завершити';

  @override
  String get actionDeleteForever => 'Видалити назавжди';

  @override
  String get actionEmptyTrash => 'Очистити кошик';

  @override
  String get actionUnlink => 'Від’єднати';

  @override
  String get actionCustomize => 'Налаштувати';

  @override
  String get actionPreview => 'Попередній перегляд';

  @override
  String get actionLog => 'Записати прогрес';

  @override
  String get stateLoading => 'Завантаження…';

  @override
  String get stateSaving => 'Збереження…';

  @override
  String get stateSaved => 'Збережено';

  @override
  String get stateUnsaved => 'Незбережені зміни';

  @override
  String get errorGenericTitle => 'Щось пішло не так';

  @override
  String get errorGenericMessage => 'Ваші дані в безпеці. Спробуйте ще раз.';

  @override
  String get errorLoadFailed => 'Не вдалося завантажити цей вміст.';

  @override
  String get errorSaveFailed => 'Не вдалося зберегти. Ваші зміни нікуди не зникли.';

  @override
  String get validationRequired => 'Це поле обов’язкове';

  @override
  String get validationTitleRequired => 'Введіть назву';

  @override
  String get validationNameRequired => 'Введіть ім’я';

  @override
  String get validationTooLong => 'Задовго';

  @override
  String get validationEndBeforeStart => 'Кінець має бути пізніше за початок';

  @override
  String get validationStartAfterDue => 'Дата початку має бути раніше за термін';

  @override
  String get validationPositiveNumber => 'Введіть число, більше за нуль';

  @override
  String get validationDependencyCycle => 'Це створило б циклічну залежність';

  @override
  String get validationInvalidRepeat => 'Це правило повторення недійсне';

  @override
  String get deletedItem => 'Переміщено в кошик';

  @override
  String get untitled => 'Без назви';

  @override
  String get noProject => 'Без проєкту';

  @override
  String get greetingMorning => 'Доброго ранку';

  @override
  String get greetingAfternoon => 'Добрий день';

  @override
  String get greetingEvening => 'Добрий вечір';

  @override
  String get dashFocusToday => 'Фокус на сьогодні';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done з $target';
  }

  @override
  String get dashStartFocus => 'Почати фокус';

  @override
  String get dashFocusRunning => 'Сеанс триває';

  @override
  String get dashTodayTasks => 'На сьогодні';

  @override
  String get dashAgenda => 'Розклад';

  @override
  String get dashHabits => 'Звички на сьогодні';

  @override
  String get dashGoals => 'Цілі';

  @override
  String get dashReview => 'Повторення';

  @override
  String get dashRecentNotes => 'Останні нотатки';

  @override
  String get dashInsight => 'Порада';

  @override
  String get dashSeeAll => 'Усі';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картки для повторення',
      many: '$count карток для повторення',
      few: '$count картки для повторення',
      one: '$count картка для повторення',
      zero: 'Немає карток для повторення',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Повторити зараз';

  @override
  String get dashCustomizeTitle => 'Розділи головної';

  @override
  String get dashCustomizeHint => 'Виберіть, що показувати на головному екрані.';

  @override
  String get dashSectionFocus => 'Фокус';

  @override
  String get dashSectionToday => 'Завдання на сьогодні';

  @override
  String get dashSectionAgenda => 'Розклад';

  @override
  String get dashSectionHabits => 'Звички';

  @override
  String get dashSectionGoals => 'Цілі';

  @override
  String get dashSectionReview => 'Повторення карток';

  @override
  String get dashSectionNotes => 'Останні нотатки';

  @override
  String get dashSectionInsight => 'Поради';

  @override
  String get quickAddTask => 'Нове завдання';

  @override
  String get quickAddNote => 'Нова нотатка';

  @override
  String get quickAddEvent => 'Нова подія';

  @override
  String get quickStartFocus => 'Фокус';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'У вас $count простроченого завдання. Почніть із найважливішого.',
      many: 'У вас $count прострочених завдань. Почніть із найважливішого.',
      few: 'У вас $count прострочені завдання. Почніть із найважливішого.',
      one: 'У вас $count прострочене завдання. Почніть із найважливішого.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'До денної цілі фокусу лишилося $minutes хв.';
  }

  @override
  String get insightCardsDue => 'Повторіть картки зараз, поки вони свіжі в пам’яті.';

  @override
  String get insightAllClear =>
      'Усе за планом. Сплануйте завтрашній день або спокійно відпочиньте.';

  @override
  String insightHabitStreak(String habit) {
    return 'Збережіть серію: «$habit» сьогодні ще чекає.';
  }

  @override
  String get focusTitle => 'Фокус';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Таймер';

  @override
  String get focusModeCountUp => 'Секундомір';

  @override
  String get focusModeOpen => 'Вільний';

  @override
  String get focusPhaseWork => 'Фокус';

  @override
  String get focusPhaseShortBreak => 'Коротка перерва';

  @override
  String get focusPhaseLongBreak => 'Довга перерва';

  @override
  String get focusReady => 'Коли будете готові';

  @override
  String get focusPaused => 'На паузі';

  @override
  String get focusRunning => 'У фокусі';

  @override
  String get focusDuration => 'Тривалість';

  @override
  String get focusLinkTask => 'Прив’язати завдання';

  @override
  String get focusLinkedTask => 'Працюю над';

  @override
  String get focusNoTask => 'Завдання не прив’язано';

  @override
  String focusCycle(int current, int total) {
    return 'Цикл $current з $total';
  }

  @override
  String get focusSkipBreak => 'Пропустити перерву';

  @override
  String get focusStartBreak => 'Почати перерву';

  @override
  String get focusStartNext => 'Почати наступний фокус';

  @override
  String get focusSessionComplete => 'Сеанс завершено';

  @override
  String get focusSessionStopped => 'Сеанс збережено';

  @override
  String focusSessionSummary(String duration) {
    return 'Ви були у фокусі $duration.';
  }

  @override
  String get focusAddNote => 'Додайте нотатку про цей сеанс';

  @override
  String get focusHistory => 'Історія';

  @override
  String get focusNoHistory => 'Завершені сеанси з’являться тут';

  @override
  String get focusTargets => 'Цілі';

  @override
  String get focusDailyTarget => 'Денна ціль';

  @override
  String get focusWeeklyTarget => 'Тижнева ціль';

  @override
  String get focusOutcomeCompleted => 'Завершено';

  @override
  String get focusOutcomeInterrupted => 'Зупинено раніше';

  @override
  String get focusRecovered => 'Сеанс тривав, поки застосунок був закритий.';

  @override
  String get focusCompletedWhileAway =>
      'Сеанс закінчився, поки застосунок був закритий, і його збережено.';

  @override
  String get focusNotificationsOff =>
      'Сповіщення вимкнено. Ви не дізнаєтеся, коли сеанс закінчиться.';

  @override
  String get focusBatteryHint =>
      'Деякі пристрої призупиняють застосунки у фоні. Таймер лишається точним, але сповіщення можуть запізнюватися. Дозвольте необмежене використання батареї для надійних сповіщень.';

  @override
  String get focusOpenSettings => 'Відкрити налаштування';

  @override
  String get focusStopConfirmTitle => 'Зупинити цей сеанс?';

  @override
  String get focusStopConfirmMessage => 'Час фокусу, набраний досі, буде збережено.';

  @override
  String get focusDiscard => 'Відкинути';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes хвилини',
      many: '$minutes хвилин',
      few: '$minutes хвилини',
      one: '$minutes хвилина',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, лишилося $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, минуло $time';
  }

  @override
  String get focusDeleteSession => 'Видалити сеанс';

  @override
  String get tasksTitle => 'Завдання';

  @override
  String get tasksViewToday => 'Сьогодні';

  @override
  String get tasksViewUpcoming => 'Заплановані';

  @override
  String get tasksViewAll => 'Усі';

  @override
  String get tasksViewOverdue => 'Прострочені';

  @override
  String get tasksViewCompleted => 'Завершені';

  @override
  String get tasksQuickAddHint => 'Додати завдання…';

  @override
  String get tasksEmptyTitle => 'Усе зроблено';

  @override
  String get tasksEmptyMessage => 'Додайте завдання, щоб спланувати день.';

  @override
  String get tasksEmptyCompleted => 'Завершені завдання з’являться тут.';

  @override
  String get taskNew => 'Нове завдання';

  @override
  String get taskEdit => 'Редагувати завдання';

  @override
  String get taskTitleLabel => 'Назва';

  @override
  String get taskTitleHint => 'Що треба зробити?';

  @override
  String get taskDescriptionLabel => 'Опис';

  @override
  String get taskNotesLabel => 'Нотатки';

  @override
  String get taskPriority => 'Пріоритет';

  @override
  String get priorityNone => 'Немає';

  @override
  String get priorityLow => 'Низький';

  @override
  String get priorityMedium => 'Середній';

  @override
  String get priorityHigh => 'Високий';

  @override
  String get priorityUrgent => 'Терміновий';

  @override
  String get taskDueDate => 'Термін';

  @override
  String get taskStartDate => 'Дата початку';

  @override
  String get taskReminder => 'Нагадування';

  @override
  String get taskRepeat => 'Повторення';

  @override
  String get taskProject => 'Проєкт';

  @override
  String get taskCategory => 'Категорія';

  @override
  String get taskCategoryHint => 'напр. Робота, Дім, Навчання';

  @override
  String get taskEstimateMinutes => 'Оцінка (хвилини)';

  @override
  String get taskTracked => 'Виміряний фокус';

  @override
  String get taskLabels => 'Мітки';

  @override
  String get taskAddLabel => 'Нова мітка';

  @override
  String get taskChecklist => 'Чек-лист';

  @override
  String get taskAddChecklistItem => 'Додати пункт';

  @override
  String get taskSubtasks => 'Підзавдання';

  @override
  String get taskAddSubtask => 'Додати підзавдання';

  @override
  String get taskDependencies => 'Блокують';

  @override
  String get taskAddDependency => 'Додати блокувальне завдання';

  @override
  String get taskLinkedNotes => 'Пов’язані нотатки';

  @override
  String get taskSetTime => 'Указати час';

  @override
  String get taskNoDate => 'Без дати';

  @override
  String get taskCompleted => 'Завдання виконано';

  @override
  String get taskNextOccurrence => 'Наступне повторення створено';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Прострочено на $days дня',
      many: 'Прострочено на $days днів',
      few: 'Прострочено на $days дні',
      one: 'Прострочено на $days день',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Позначити «$title» як виконане';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Позначити «$title» як невиконане';
  }

  @override
  String get sortSmart => 'Розумно';

  @override
  String get sortDueDate => 'Термін';

  @override
  String get sortPriority => 'Пріоритет';

  @override
  String get sortCreated => 'Найновіші';

  @override
  String get sortTitle => 'Назва';

  @override
  String get filterAllProjects => 'Усі проєкти';

  @override
  String get filterAnyPriority => 'Будь-який пріоритет';

  @override
  String get filterTitle => 'Фільтр і сортування';

  @override
  String get dateToday => 'Сьогодні';

  @override
  String get dateTomorrow => 'Завтра';

  @override
  String get dateYesterday => 'Учора';

  @override
  String get repeatNever => 'Не повторюється';

  @override
  String get repeatDaily => 'Щодня';

  @override
  String get repeatWeekdays => 'Щобудня';

  @override
  String get repeatWeekly => 'Щотижня';

  @override
  String get repeatMonthly => 'Щомісяця';

  @override
  String get repeatYearly => 'Щороку';

  @override
  String get repeatCustom => 'Власне';

  @override
  String get repeatEvery => 'Повторювати кожні';

  @override
  String get repeatOnDays => 'У дні';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'дня',
      many: 'днів',
      few: 'дні',
      one: 'день',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'тижня',
      many: 'тижнів',
      few: 'тижні',
      one: 'тиждень',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'місяця',
      many: 'місяців',
      few: 'місяці',
      one: 'місяць',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'року',
      many: 'років',
      few: 'роки',
      one: 'рік',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count разу',
      many: '$count разів',
      few: '$count разів',
      one: '$count разу',
    );
    return 'Закінчується після $_temp0';
  }

  @override
  String get repeatEndsNever => 'Ніколи не закінчується';

  @override
  String get reminderAtTime => 'У час події';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'За $minutes хвилини',
      many: 'За $minutes хвилин',
      few: 'За $minutes хвилини',
      one: 'За $minutes хвилину',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'За $hours години',
      many: 'За $hours годин',
      few: 'За $hours години',
      one: 'За $hours годину',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => 'За 1 день';

  @override
  String get projectsTitle => 'Проєкти';

  @override
  String get projectsEmptyTitle => 'Проєктів ще немає';

  @override
  String get projectsEmptyMessage => 'Групуйте пов’язані завдання, нотатки й час фокусу.';

  @override
  String get projectNew => 'Новий проєкт';

  @override
  String get projectEdit => 'Редагувати проєкт';

  @override
  String get projectName => 'Назва';

  @override
  String get projectDescription => 'Опис';

  @override
  String get projectGoal => 'Мета';

  @override
  String get projectDeadline => 'Дедлайн';

  @override
  String get projectColor => 'Колір';

  @override
  String get projectIcon => 'Значок';

  @override
  String get projectProgress => 'Прогрес';

  @override
  String projectTasksDone(int done, int total) {
    return 'Виконано $done з $total завдань';
  }

  @override
  String get projectFocusTime => 'Час фокусу';

  @override
  String get projectArchived => 'Архівні проєкти';

  @override
  String get projectShowArchived => 'Показати архівні';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Лишилося $days дня',
      many: 'Лишилося $days днів',
      few: 'Лишилося $days дні',
      one: 'Лишився $days день',
      zero: 'Термін сьогодні',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Дедлайн минув';

  @override
  String get calendarTitle => 'Календар';

  @override
  String get calendarMonth => 'Місяць';

  @override
  String get calendarWeek => 'Тиждень';

  @override
  String get calendarDay => 'День';

  @override
  String get calendarToday => 'Сьогодні';

  @override
  String get calendarPrevious => 'Назад';

  @override
  String get calendarNext => 'Далі';

  @override
  String get calendarNoEvents => 'Нічого не заплановано';

  @override
  String get calendarAllDay => 'Увесь день';

  @override
  String get eventNew => 'Нова подія';

  @override
  String get eventEdit => 'Редагувати подію';

  @override
  String get eventTitleHint => 'Назва події';

  @override
  String get eventStarts => 'Початок';

  @override
  String get eventEnds => 'Кінець';

  @override
  String get eventKind => 'Тип';

  @override
  String get eventKindEvent => 'Подія';

  @override
  String get eventKindTimeBlock => 'Блок часу';

  @override
  String get eventKindFocus => 'Сеанс фокусу';

  @override
  String get eventKindGoal => 'Особиста ціль';

  @override
  String get eventDescription => 'Подробиці';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Перетинається з $count події',
      many: 'Перетинається з $count подіями',
      few: 'Перетинається з $count подіями',
      one: 'Перетинається з $count подією',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Конфлікти в розкладі цього дня';

  @override
  String get calendarTaskDue => 'Термін завдання';

  @override
  String get calendarDragHint => 'Утримуйте й перетягніть подію, щоб перенести її';

  @override
  String get calendarRescheduled => 'Подію перенесено';

  @override
  String get calendarScheduleTask => 'Запланувати як блок часу';

  @override
  String get notesTitle => 'Нотатки';

  @override
  String get notesViewAll => 'Усі';

  @override
  String get notesViewPinned => 'Закріплені';

  @override
  String get notesViewFavorites => 'Обрані';

  @override
  String get notesViewArchived => 'Архівні';

  @override
  String get notesTags => 'Теги';

  @override
  String get notesNewNotebook => 'Новий блокнот';

  @override
  String get notesNoNotebook => 'Без блокнота';

  @override
  String get notesEmptyTitle => 'Чистий аркуш';

  @override
  String get notesEmptyMessage => 'Записуйте ідеї, нотатки з нарад і знання.';

  @override
  String get noteTitleHint => 'Назва';

  @override
  String get noteBodyHint => 'Почніть писати… # — для тегів, [[Назва]] — щоб зв’язати нотатки.';

  @override
  String get noteFavorite => 'Обране';

  @override
  String get noteUnfavorite => 'Прибрати з обраного';

  @override
  String get noteMoveTo => 'Перемістити в блокнот';

  @override
  String get noteBacklinks => 'Посилаються сюди';

  @override
  String get noteLinkedTasks => 'Пов’язані завдання';

  @override
  String get noteLinkTask => 'Прив’язати завдання';

  @override
  String get noteLinkProject => 'Проєкт';

  @override
  String get noteFormatHeading => 'Заголовок';

  @override
  String get noteFormatBold => 'Жирний';

  @override
  String get noteFormatItalic => 'Курсив';

  @override
  String get noteFormatList => 'Маркований список';

  @override
  String get noteFormatChecklist => 'Чек-лист';

  @override
  String get noteFormatLink => 'Посилання';

  @override
  String noteEdited(String time) {
    return 'Змінено $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count слова',
      many: '$count слів',
      few: '$count слова',
      one: '$count слово',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Картки';

  @override
  String get flashEmptyTitle => 'Створіть першу колоду';

  @override
  String get flashEmptyMessage =>
      'Інтервальне повторення показує кожну картку саме перед тим, як ви б її забули.';

  @override
  String get deckNew => 'Нова колода';

  @override
  String get deckEdit => 'Редагувати колоду';

  @override
  String get deckName => 'Назва колоди';

  @override
  String get deckDescription => 'Опис';

  @override
  String get deckDailyNew => 'Нових карток на день';

  @override
  String get deckDailyReview => 'Денна ціль повторень';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картки',
      many: '$count карток',
      few: '$count картки',
      one: '$count картка',
      zero: 'Немає карток',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'До повторення';

  @override
  String get deckNewCards => 'Нові';

  @override
  String get deckMature => 'Вивчені';

  @override
  String get deckStudy => 'Вчити';

  @override
  String get deckNothingDue => 'Зараз нічого повторювати. Поверніться пізніше.';

  @override
  String get deckEmptyCards => 'Додайте картки, щоб почати навчання.';

  @override
  String get cardNew => 'Нова картка';

  @override
  String get cardEdit => 'Редагувати картку';

  @override
  String get cardFront => 'Лицьовий бік';

  @override
  String get cardBack => 'Зворотний бік';

  @override
  String get cardFrontHint => 'Питання або термін';

  @override
  String get cardBackHint => 'Відповідь або визначення';

  @override
  String get cardTags => 'Теги';

  @override
  String get cardAddAnother => 'Зберегти й додати ще';

  @override
  String get reviewShowAnswer => 'Показати відповідь';

  @override
  String get reviewAgain => 'Ще раз';

  @override
  String get reviewHard => 'Важко';

  @override
  String get reviewGood => 'Добре';

  @override
  String get reviewEasy => 'Легко';

  @override
  String reviewProgress(int done, int total) {
    return '$done з $total';
  }

  @override
  String get reviewFinishedTitle => 'Сеанс завершено';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ви повторили $count картки.',
      many: 'Ви повторили $count карток.',
      few: 'Ви повторили $count картки.',
      one: 'Ви повторили $count картку.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Торкніться, щоб побачити відповідь';

  @override
  String get importCardsTitle => 'Імпорт карток';

  @override
  String get importCardsHint =>
      'Вставте по одній картці в рядок (лицьовий і зворотний бік розділіть табуляцією або крапкою з комою) або виберіть файл: Excel (.xlsx), CSV, колоду Anki (.apkg) чи експортовану колоду.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Імпортовано $count картки',
      many: 'Імпортовано $count карток',
      few: 'Імпортовано $count картки',
      one: 'Імпортовано $count картку',
      zero: 'Жодної картки не імпортовано',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Не вдалося імпортувати цей вміст.';

  @override
  String get exportCopied => 'Колоду експортовано';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хв',
      one: '$count хв',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count днів',
      few: '$count дні',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Цілі';

  @override
  String get goalsEmptyTitle => 'Поставте ціль';

  @override
  String get goalsEmptyMessage =>
      'Ставте цілі на день, тиждень, місяць або довгу перспективу й стежте за реальним прогресом.';

  @override
  String get goalNew => 'Нова ціль';

  @override
  String get goalEdit => 'Редагувати ціль';

  @override
  String get goalTitleHint => 'Чого ви хочете досягти?';

  @override
  String get goalPeriod => 'Період';

  @override
  String get goalPeriodDaily => 'Щоденна';

  @override
  String get goalPeriodWeekly => 'Щотижнева';

  @override
  String get goalPeriodMonthly => 'Щомісячна';

  @override
  String get goalPeriodLongTerm => 'Довгострокова';

  @override
  String get goalTarget => 'Цільове значення';

  @override
  String get goalUnit => 'Одиниця';

  @override
  String get goalUnitHint => 'напр. сторінки, км, години';

  @override
  String get goalStatusActive => 'Активна';

  @override
  String get goalStatusPaused => 'На паузі';

  @override
  String get goalStatusAchieved => 'Досягнута';

  @override
  String get goalPause => 'Призупинити ціль';

  @override
  String get goalResume => 'Продовжити ціль';

  @override
  String get goalMarkAchieved => 'Позначити як досягнуту';

  @override
  String goalProgressOf(String current, String target) {
    return '$current з $target';
  }

  @override
  String get goalLogAmount => 'Кількість';

  @override
  String get goalLogNote => 'Нотатка (необов’язково)';

  @override
  String get goalHistory => 'Історія';

  @override
  String get goalNoHistory => 'Записаний прогрес з’явиться тут';

  @override
  String get goalLinkedTasks => 'Пов’язані завдання';

  @override
  String get goalLinkedTasksHint =>
      'Кожне виконане пов’язане завдання зараховується до цієї цілі як 1.';

  @override
  String get goalThisPeriod => 'Цей період';

  @override
  String get habitsTitle => 'Звички';

  @override
  String get habitsEmptyTitle => 'Маленькі кроки щодня';

  @override
  String get habitsEmptyMessage => 'Створіть звичку й відмічайте її, коли виконуєте.';

  @override
  String get habitNew => 'Нова звичка';

  @override
  String get habitEdit => 'Редагувати звичку';

  @override
  String get habitNameHint => 'напр. Прочитати 20 сторінок';

  @override
  String get habitDays => 'Розклад';

  @override
  String get habitEveryDay => 'Щодня';

  @override
  String get habitTargetPerDay => 'Разів на день';

  @override
  String get habitReminder => 'Щоденне нагадування';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Серія $count дня',
      many: 'Серія $count днів',
      few: 'Серія $count дні',
      one: 'Серія $count день',
      zero: 'Немає серії',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Найдовша серія';

  @override
  String get habitCurrentStreak => 'Поточна серія';

  @override
  String get habitConsistency => 'Регулярність';

  @override
  String get habitLast90 => 'Останні 90 днів';

  @override
  String get habitPaused => 'На паузі';

  @override
  String get habitPause => 'Призупинити звичку';

  @override
  String get habitResume => 'Продовжити звичку';

  @override
  String get habitDoneToday => 'Виконано сьогодні';

  @override
  String habitCountToday(int count, int target) {
    return 'Сьогодні $count з $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Відмітити «$name»';
  }

  @override
  String get habitNotScheduledToday => 'Сьогодні не заплановано';

  @override
  String get analyticsTitle => 'Статистика';

  @override
  String get rangeWeek => '7 днів';

  @override
  String get rangeMonth => '30 днів';

  @override
  String get rangeQuarter => '90 днів';

  @override
  String get statFocusTime => 'Час фокусу';

  @override
  String get statSessions => 'Сеанси';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return 'Завершено: $completed · зупинено раніше: $interrupted';
  }

  @override
  String get statTasksDone => 'Виконані завдання';

  @override
  String get statCompletionRate => 'Виконано вчасно';

  @override
  String get statHabitConsistency => 'Регулярність звичок';

  @override
  String get statRetention => 'Запам’ятовування карток';

  @override
  String get statReviews => 'Повторення';

  @override
  String get statActiveGoals => 'Активні цілі';

  @override
  String get statEstimated => 'Орієнтовно виконана робота';

  @override
  String get statEstimatedNote => 'За вашими оцінками, а не за виміряним часом';

  @override
  String get statMeasuredNote => 'Виміряно із сеансів фокусу';

  @override
  String get chartFocusByDay => 'Хвилини фокусу на день';

  @override
  String get chartTasksByDay => 'Виконані завдання на день';

  @override
  String get chartTimeByProject => 'Час за проєктами';

  @override
  String get chartProjectProgress => 'Прогрес проєктів';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: усього $total, найкращий день $best';
  }

  @override
  String get analyticsNoData => 'Поки замало даних';

  @override
  String get analyticsUnassigned => 'Без проєкту';

  @override
  String get searchHint => 'Шукати всюди…';

  @override
  String get searchRecent => 'Нещодавні пошуки';

  @override
  String get searchClearRecent => 'Очистити нещодавні пошуки';

  @override
  String searchNoResults(String query) {
    return 'Немає результатів для «$query»';
  }

  @override
  String get searchStartTyping =>
      'Шукайте серед завдань, нотаток, карток, цілей, подій та іншого. Пошук лишається на цьому пристрої.';

  @override
  String get searchCatTask => 'Завдання';

  @override
  String get searchCatProject => 'Проєкти';

  @override
  String get searchCatNote => 'Нотатки';

  @override
  String get searchCatFlashcard => 'Картки';

  @override
  String get searchCatDeck => 'Колоди';

  @override
  String get searchCatGoal => 'Цілі';

  @override
  String get searchCatHabit => 'Звички';

  @override
  String get searchCatEvent => 'Події';

  @override
  String get searchCatSession => 'Сеанси';

  @override
  String get searchAll => 'Усі';

  @override
  String get assistantTitle => 'Помічник';

  @override
  String get assistantIntro =>
      'Допомога з плануванням, що працює на вашому пристрої. За бажання підключіть обраний вами ШІ-сервіс для підсумків і генерування.';

  @override
  String get assistantOnDevice => 'На пристрої';

  @override
  String get assistantCloud => 'ШІ-сервіс';

  @override
  String get assistantPlanDay => 'Спланувати мій день';

  @override
  String get assistantPlanDayDesc =>
      'Упорядковує відкриті завдання за терміновістю, пріоритетом і оцінкою та вписує їх між вашими подіями.';

  @override
  String get assistantExtractTasks => 'Витягти завдання з нотатки';

  @override
  String get assistantExtractTasksDesc =>
      'Знаходить у нотатці пункти чек-листа й рядки з діями та перетворює їх на завдання.';

  @override
  String get assistantMakeCards => 'Створити картки з нотатки';

  @override
  String get assistantMakeCardsDesc =>
      'Перетворює рядки «термін: визначення» та рядки «питання/відповідь» на картки.';

  @override
  String get assistantSummarize => 'Підсумувати нотатку';

  @override
  String get assistantSummarizeDesc =>
      'Потрібен ШІ-сервіс. Нотатку буде надіслано лише після вашого підтвердження.';

  @override
  String get assistantWorkload => 'Огляд навантаження';

  @override
  String get assistantWorkloadDesc => 'Порівнює оцінену роботу з вашим вільним часом цього тижня.';

  @override
  String get assistantPlanEmpty =>
      'Немає відкритих завдань для планування. Насолоджуйтеся простором.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Вільний час для фокусу сьогодні: $time';
  }

  @override
  String get assistantPlanOverflow => 'Це може не вміститися в сьогоднішній день:';

  @override
  String get assistantChooseNote => 'Виберіть нотатку';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Знайдено $count завдання',
      many: 'Знайдено $count завдань',
      few: 'Знайдено $count завдання',
      one: 'Знайдено $count завдання',
      zero: 'У нотатці не знайдено завдань',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Знайдено $count картки',
      many: 'Знайдено $count карток',
      few: 'Знайдено $count картки',
      one: 'Знайдено $count картку',
      zero: 'У нотатці не знайдено карток',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Виберіть колоду';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Оцінена робота: $estimated. Вільний час: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Ви запланували більше, ніж є часу. Подумайте про перенесення завдань із нижчим пріоритетом.';

  @override
  String get assistantWorkloadOk => 'Ваш план вміщується в доступний час.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count відкритого завдання не мають оцінки.',
      many: '$count відкритих завдань не мають оцінки.',
      few: '$count відкриті завдання не мають оцінки.',
      one: '$count відкрите завдання не має оцінки.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'ШІ-сервіс';

  @override
  String get assistantProviderOff =>
      'Сервіс не підключено. Інструменти на пристрої працюють і далі.';

  @override
  String assistantProviderOn(String host) {
    return 'Підключено до $host';
  }

  @override
  String get assistantEndpoint => 'Кінцева точка API (HTTPS)';

  @override
  String get assistantModel => 'Модель';

  @override
  String get assistantApiKey => 'Ключ API';

  @override
  String get assistantApiKeyStored => 'Безпечно збережено на цьому пристрої';

  @override
  String get assistantHttpsOnly => 'Дозволено лише кінцеві точки HTTPS';

  @override
  String get assistantConsentTitle => 'Надіслати цей вміст вашому ШІ-сервісу?';

  @override
  String assistantConsentBody(String host) {
    return 'Вибраний текст нотатки залишить цей пристрій і буде оброблений $host. Більше нічого не надсилається.';
  }

  @override
  String get assistantConsentAlways => 'Більше не питати для цього сервісу';

  @override
  String get assistantSend => 'Надіслати';

  @override
  String get assistantUnavailable => 'Не вдалося зв’язатися з ШІ-сервісом. Спробуйте пізніше.';

  @override
  String get assistantDisabledTitle => 'Помічник вимкнено';

  @override
  String get assistantDisabledMessage =>
      'Увімкніть його, щоб користуватися інструментами планування. Жодні дані не залишають пристрій, якщо ви не підключите сервіс і не підтвердите кожен запит.';

  @override
  String get assistantSummaryTitle => 'Підсумок';

  @override
  String get assistantRemoveProvider => 'Видалити сервіс';

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get settingsGeneral => 'Загальні';

  @override
  String get settingsLanguage => 'Мова';

  @override
  String get settingsLanguageSystem => 'Мова пристрою';

  @override
  String get settingsAppearance => 'Вигляд';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeLight => 'Світла';

  @override
  String get themeDark => 'Темна';

  @override
  String get themeSystem => 'Системна';

  @override
  String get settingsReduceMotion => 'Менше руху';

  @override
  String get settingsReduceMotionDesc => 'Менше анімацій і рухомих фонів';

  @override
  String get settingsFocus => 'Таймер фокусу';

  @override
  String get settingsWorkLength => 'Тривалість фокусу';

  @override
  String get settingsShortBreak => 'Коротка перерва';

  @override
  String get settingsLongBreak => 'Довга перерва';

  @override
  String get settingsLongBreakEvery => 'Довга перерва після';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сеансу',
      many: '$count сеансів',
      few: '$count сеансів',
      one: '$count сеансу',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Автоматично починати перерви';

  @override
  String get settingsSound => 'Звук завершення';

  @override
  String get settingsDailyFocusTarget => 'Денна ціль фокусу';

  @override
  String get settingsWeeklyFocusTarget => 'Тижнева ціль фокусу';

  @override
  String get settingsNotifications => 'Сповіщення';

  @override
  String get settingsNotificationsEnable => 'Дозволити нагадування';

  @override
  String get settingsQuietHours => 'Тихі години';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Нагадування про звички, цілі й повторення вимкнено з $start до $end';
  }

  @override
  String get settingsReviewReminder => 'Нагадування про повторення карток';

  @override
  String get settingsPermissionDenied => 'Сповіщення заблоковано в системних налаштуваннях.';

  @override
  String get settingsPrivacy => 'Конфіденційність і дані';

  @override
  String get settingsPrivacyStatement =>
      'Ваші дані зберігаються лише на цьому пристрої і зашифровані. Без облікового запису, аналітики й відстеження.';

  @override
  String get settingsBackup => 'Створити зашифровану резервну копію';

  @override
  String get settingsBackupDesc => 'Захищена паролем, який ви оберете';

  @override
  String get settingsRestore => 'Відновити з резервної копії';

  @override
  String get settingsRestoreDesc => 'Замінює всі дані на цьому пристрої';

  @override
  String get settingsErase => 'Стерти всі дані';

  @override
  String get settingsEraseDesc => 'Назавжди видалити все з цього пристрою';

  @override
  String get settingsEraseConfirmTitle => 'Стерти всі дані?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Кожне завдання, нотатку, картку, ціль, звичку, подію й сеанс буде видалено назавжди. Щоб підтвердити, введіть $word.';
  }

  @override
  String get settingsEraseWord => 'СТЕРТИ';

  @override
  String get settingsErased => 'Усі дані стерто';

  @override
  String get backupPassword => 'Пароль резервної копії';

  @override
  String get backupPasswordConfirm => 'Підтвердьте пароль';

  @override
  String backupPasswordHint(int count) {
    return 'Щонайменше $count символів. Якщо ви його втратите, відновити не вдасться.';
  }

  @override
  String get backupPasswordMismatch => 'Паролі не збігаються';

  @override
  String get backupPasswordShort => 'Пароль закороткий';

  @override
  String get backupCreating => 'Шифрування резервної копії…';

  @override
  String get backupCreated => 'Резервна копія готова до збереження';

  @override
  String get backupRestoring => 'Перевірка й відновлення…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Відновлено $count елемента',
      many: 'Відновлено $count елементів',
      few: 'Відновлено $count елементи',
      one: 'Відновлено $count елемент',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Неправильний пароль або файл було змінено.';

  @override
  String get backupNotABackup => 'Цей файл не є резервною копією Deep Focus.';

  @override
  String get backupCorrupted => 'Файл резервної копії пошкоджено.';

  @override
  String get backupNewer =>
      'Цю резервну копію створено новішою версією застосунку. Спершу оновіть застосунок.';

  @override
  String get backupRestoreConfirmTitle => 'Замінити всі дані?';

  @override
  String get backupRestoreConfirmBody =>
      'Усе, що зараз є на цьому пристрої, буде замінено резервною копією. Якщо відновлення не вдасться, нічого не зміниться.';

  @override
  String get settingsAbout => 'Про застосунок';

  @override
  String settingsVersion(String version) {
    return 'Версія $version';
  }

  @override
  String get settingsLicenses => 'Ліцензії відкритого коду';

  @override
  String get settingsAssistant => 'Помічник';

  @override
  String get settingsAssistantEnable => 'Увімкнути помічника';

  @override
  String get settingsDashboard => 'Розділи головної';

  @override
  String get settingsTrash => 'Кошик';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes хв';
  }

  @override
  String get trashEmpty => 'Кошик порожній';

  @override
  String get trashHint => 'Видалені елементи лишаються тут, доки ви їх не приберете.';

  @override
  String get trashTasks => 'Завдання';

  @override
  String get trashNotes => 'Нотатки';

  @override
  String get onboardWelcomeTitle => 'Вітаємо у вашому новому робочому просторі';

  @override
  String get onboardWelcomeBody =>
      'Завдання, фокус, календар, нотатки, картки, цілі й звички — разом і напрочуд просто.';

  @override
  String get onboardPrivateTitle => 'Приватність від самого початку';

  @override
  String get onboardPrivateBody =>
      'Усе лишається зашифрованим на цьому пристрої. Без облікового запису. Без відстеження. Ви все контролюєте.';

  @override
  String get onboardLanguageTitle => 'Виберіть мову';

  @override
  String get onboardNotifTitle => 'Дбайливі нагадування';

  @override
  String get onboardNotifBody =>
      'Дозвольте сповіщення для нагадувань про завдання та сигналів фокусу. Це можна будь-коли змінити.';

  @override
  String get onboardGetStarted => 'Почати';

  @override
  String onboardStep(int current, int total) {
    return 'Крок $current з $total';
  }

  @override
  String get notifChannelReminders => 'Нагадування';

  @override
  String get notifChannelRemindersDesc => 'Нагадування про завдання, події, звички й цілі';

  @override
  String get notifChannelFocus => 'Таймер фокусу';

  @override
  String get notifChannelFocusDesc => 'Сигнали про завершення сеансу фокусу чи перерви';

  @override
  String get notifTaskTitle => 'Нагадування про завдання';

  @override
  String get notifEventTitle => 'Найближча подія';

  @override
  String notifEventBody(String title, String time) {
    return '$title о $time';
  }

  @override
  String get notifFocusDoneTitle => 'Сеанс фокусу завершено';

  @override
  String get notifFocusDoneBody => 'Чудова робота. Час перепочити.';

  @override
  String get notifBreakDoneTitle => 'Перерва закінчилася';

  @override
  String get notifBreakDoneBody => 'Готові до наступного сеансу фокусу?';

  @override
  String get notifHabitTitle => 'Нагадування про звичку';

  @override
  String get notifReviewTitle => 'Картки чекають';

  @override
  String get notifReviewBody => 'Коротке повторення тримає пам’ять у тонусі.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours год $minutes хв';
  }

  @override
  String durationHours(int hours) {
    return '$hours год';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes хв';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'П,В,С,Ч,П,С,Н';

  @override
  String a11yProgress(int value) {
    return 'Прогрес $value відсотків';
  }

  @override
  String a11yPriority(String level) {
    return 'Пріоритет: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Колір $index';
  }

  @override
  String get analyticsRangeLabel => 'Період';

  @override
  String get analyticsRefresh => 'Оновити';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done з $total завдань із терміном виконано вчасно';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Виконано $done з $total завдань';
  }

  @override
  String get analyticsNoProjects => 'Немає активних проєктів';

  @override
  String get analyticsNoFocus => 'У цьому періоді немає сеансів фокусу';

  @override
  String get analyticsHabitsNone => 'Немає активних звичок';

  @override
  String get analyticsRetentionNote => 'Частка вивчених карток, які ви пригадали';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Вільний час рахується $start–$end у робочі дні ($days) без подій із часом. Оцінена робота — це сума оцінок відкритих завдань із терміном у найближчі 7 днів.';
  }

  @override
  String get assistantWorkdaysMonFri => 'понеділок–п’ятниця';

  @override
  String get assistantWorkdaysSunThu => 'неділя–четвер';

  @override
  String get assistantWorkloadDayOff => 'Вихідний';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated заплановано · $free вільно';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Заплановано від зараз до $end навколо сьогоднішніх подій. Спершу прострочені завдання, потім пріоритет, термін і оцінка.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Запланувати як блоки часу';

  @override
  String get assistantScheduleConfirmTitle => 'Додати блоки часу в календар?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'До сьогоднішнього календаря буде додано $count блоку часу.',
      many: 'До сьогоднішнього календаря буде додано $count блоків часу.',
      few: 'До сьогоднішнього календаря буде додано $count блоки часу.',
      one: 'До сьогоднішнього календаря буде додано $count блок часу.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додано $count блоку часу',
      many: 'Додано $count блоків часу',
      few: 'Додано $count блоки часу',
      one: 'Додано $count блок часу',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Уже в календарі';

  @override
  String get assistantPlanTimeline => 'Вміщається сьогодні';

  @override
  String get assistantNoEstimate => 'Додайте оцінку, щоб спланувати ці завдання';

  @override
  String get assistantNoNotes => 'Нотаток ще немає. Спершу напишіть нотатку.';

  @override
  String get assistantNoteEmpty => 'Ця нотатка порожня.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Створено $count завдання',
      many: 'Створено $count завдань',
      few: 'Створено $count завдання',
      one: 'Створено $count завдання',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Створено $count картки',
      many: 'Створено $count карток',
      few: 'Створено $count картки',
      one: 'Створено $count картку',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Створити $count',
      one: 'Створити $count',
      zero: 'Нічого не вибрано',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Розпізнаються: невідмічені пункти «- [ ]» і рядки, що починаються з TODO: або To do:';

  @override
  String get assistantCardsHint =>
      'Розпізнаються: «термін: визначення», «термін — визначення» і пари рядків Q:/A:';

  @override
  String get assistantProviderHint =>
      'Використовуйте будь-який сервіс, сумісний з OpenAI. Ключ лишається в захищеному сховищі пристрою й ніколи не потрапляє в резервні копії.';

  @override
  String get assistantEndpointHelp => 'Наприклад, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Залиште порожнім, щоб зберегти поточний ключ';

  @override
  String get assistantApiKeyRequired => 'Введіть ключ API';

  @override
  String get assistantProviderSaved => 'Сервіс збережено';

  @override
  String get assistantProviderRemoved => 'Сервіс видалено, ключ стерто';

  @override
  String get assistantRemoveProviderConfirm =>
      'Видалити сервіс і стерти збережений ключ API з цього пристрою?';

  @override
  String get assistantAskEveryTime => 'Питати перед кожним запитом';

  @override
  String get assistantSummarizing => 'Підсумовування…';

  @override
  String assistantSummaryNote(String host) {
    return 'Створено $host. Перевірте, перш ніж покладатися на це.';
  }

  @override
  String get assistantCopy => 'Копіювати';

  @override
  String get assistantCopied => 'Скопійовано';

  @override
  String get assistantConfigure => 'Налаштувати сервіс';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Усі події цієї серії перенесено';

  @override
  String get calendarEventReminder => 'Нагадування';

  @override
  String get calendarEventRepeat => 'Повторення';

  @override
  String get calendarEventColor => 'Колір';

  @override
  String get calendarDefaultColor => 'Колір типу';

  @override
  String get calendarEventLinkedTask => 'Пов’язане завдання';

  @override
  String get calendarEventNoTask => 'Немає пов’язаного завдання';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count події',
      many: '$count подій',
      few: '$count події',
      one: '$count подія',
      zero: 'Немає подій',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count завдання з терміном',
      many: '$count завдань із терміном',
      few: '$count завдання з терміном',
      one: '$count завдання з терміном',
      zero: 'немає завдань із терміном',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Додайте подію або блок часу, щоб спланувати цей день.';

  @override
  String get calendarNow => 'Поточний час';

  @override
  String get calendarRecurring => 'Повторюється';

  @override
  String get calendarEventNotFound => 'Цієї події більше не існує';

  @override
  String get calendarEventLocalTime => 'Час показано в часовому поясі пристрою';

  @override
  String get calendarEventDeleted => 'Подію переміщено в кошик';

  @override
  String get calendarConflictMarker => 'Перетинається з іншою подією';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Зміни застосовуються до всіх подій цієї серії';

  @override
  String get calendarDragHintSeries => 'Перетягування повторюваної події переносить усю серію';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, термін завдання';
  }

  @override
  String get startupErrorTitle => 'Не вдалося відкрити ваші дані';

  @override
  String get startupErrorLocked =>
      'Ключ шифрування даних цього пристрою недоступний. Нічого не видалено. Часто допомагає перезапуск пристрою. Якщо ви нещодавно відновлювали пристрій, краще відновіть дані із зашифрованої резервної копії.';

  @override
  String get startupErrorCipher =>
      'Цей пристрій не підтримує зашифроване сховище, потрібне застосунку. Нічого не збережено без шифрування.';

  @override
  String get startupErrorRetry => 'Спробувати ще раз';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картки чекають на повторення',
      many: '$count карток чекають на повторення',
      few: '$count картки чекають на повторення',
      one: '$count картка чекає на повторення',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count до повторення';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count нових';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Вивчені картки: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Введіть 0 або більше';

  @override
  String get flashcardsSearchCards => 'Пошук карток';

  @override
  String get flashcardsSearchEmpty => 'Немає карток за цим запитом';

  @override
  String get flashcardsCardAdded => 'Картку додано';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Повторення $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Копіювати в буфер';

  @override
  String get flashcardsExportTitle => 'Експорт колоди';

  @override
  String get flashcardsDeleteDeck => 'Видалити колоду';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, наступне повторення через $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Питання: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Відповідь: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Показати питання';

  @override
  String get flashcardsImportField => 'Картки для імпорту';

  @override
  String get flashcardsNothingToStudy => 'Нічого вчити';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картки готові до вивчення',
      many: '$count карток готові до вивчення',
      few: '$count картки готові до вивчення',
      one: '$count картка готова до вивчення',
      zero: 'Немає готових карток',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'За оцінкою';

  @override
  String get flashcardsDeckNotFound => 'Ця колода більше недоступна.';

  @override
  String get focusSessionDeleted => 'Сеанс видалено';

  @override
  String get focusDeleteConfirm =>
      'Видалити цей сеанс з історії? Його час більше не зараховуватиметься до ваших цілей.';

  @override
  String get focusUnlinkTask => 'Від’єднати завдання';

  @override
  String get focusNoteHint => 'Над чим ви працювали?';

  @override
  String get focusTargetCaption => 'Виміряно зі збережених сеансів';

  @override
  String get focusModeLabel => 'Режим таймера';

  @override
  String focusUpNext(String phase) {
    return 'Далі: $phase';
  }

  @override
  String get focusStopwatchHint => 'Рахує вгору, доки ви не зупините.';

  @override
  String get focusOpenHint => 'Без обмеження часу. Зупиніться, коли закінчите.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Нагадування вимкнено в налаштуваннях. Ви не дізнаєтеся, коли сеанс закінчиться.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Усі';

  @override
  String get goalsFilterPeriod => 'Фільтр періоду';

  @override
  String get goalsFilterStatus => 'Фільтр стану';

  @override
  String get goalsEmptyFiltered => 'Немає цілей для цього фільтра';

  @override
  String goalsDueOn(String date) {
    return 'Термін $date';
  }

  @override
  String get goalsDeadline => 'Дедлайн (необов’язково)';

  @override
  String get goalsNoDeadline => 'Без дедлайну';

  @override
  String get goalsSetDeadline => 'Указати дедлайн';

  @override
  String get goalsRemoveDeadline => 'Прибрати дедлайн';

  @override
  String get goalsDescription => 'Опис (необов’язково)';

  @override
  String get goalsTitleLabel => 'Назва';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Ціль досягнуто';

  @override
  String get goalsLogged => 'Прогрес записано';

  @override
  String get goalsEntryDeleted => 'Запис видалено';

  @override
  String get goalsDeleteEntry => 'Видалити запис';

  @override
  String get goalsDeleted => 'Ціль видалено';

  @override
  String get goalsMarkActive => 'Позначити як активну';

  @override
  String get goalsNotFound => 'Ця ціль більше недоступна';

  @override
  String get goalsLinkTask => 'Прив’язати завдання';

  @override
  String get goalsNoLinkedTasks => 'Пов’язаних завдань ще немає';

  @override
  String get goalsUnlinkTask => 'Від’єднати завдання';

  @override
  String get goalsTaskOpen => 'Ще не виконано';

  @override
  String get goalsTaskLinked => 'Завдання прив’язано';

  @override
  String get goalsTaskUnlinked => 'Завдання від’єднано';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count виконаного пов’язаного завдання',
      many: '$count виконаних пов’язаних завдань',
      few: '$count виконані пов’язані завдання',
      one: '$count виконане пов’язане завдання',
    );
    return 'Включає $_temp0 за цей період';
  }

  @override
  String get goalsHistoryAllTime =>
      'Записи попередніх періодів лишаються тут, але зараховуються лише до свого періоду.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Сьогодні виконано $done з $total';
  }

  @override
  String get habitsNothingToday => 'На сьогодні звичок не заплановано';

  @override
  String get habitsDecrease => 'Прибрати одну відмітку';

  @override
  String get habitsResetToday => 'Скинути сьогодні';

  @override
  String get habitsCheckInHint => 'Утримуйте, щоб налаштувати';

  @override
  String get habitsName => 'Назва';

  @override
  String get habitsColor => 'Колір';

  @override
  String get habitsValidationDays => 'Виберіть хоча б один день';

  @override
  String habitsReminderAt(String time) {
    return 'Щодня о $time';
  }

  @override
  String get habitsSetReminder => 'Указати час нагадування';

  @override
  String get habitsRemoveReminder => 'Прибрати нагадування';

  @override
  String get habitsReminderNote =>
      'Нагадування з’являються в заплановані дні, якщо сповіщення дозволено.';

  @override
  String get habitsArchived => 'Звичку заархівовано';

  @override
  String get habitsNotFound => 'Ця звичка більше недоступна';

  @override
  String get habitsLast30 => 'Останні 30 днів';

  @override
  String get habitsConsistencyNone => 'Поки замало даних';

  @override
  String get habitsCalendar => 'Історія відміток';

  @override
  String get habitsCalendarHint => 'Торкніться дня, щоб виправити його.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count з $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Відмітки за останні 90 днів. Регулярність $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Відмітки за останні 90 днів. Поки замало даних.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count днів',
      few: '$count дні',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Дні на паузі не впливають на вашу серію.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Архівувати звичку';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count разу на день',
      many: '$count разів на день',
      few: '$count рази на день',
      one: '$count раз на день',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Інші нотатки';

  @override
  String get notesAllNotebooks => 'Усі блокноти';

  @override
  String get notesNotebookName => 'Назва блокнота';

  @override
  String get notesNotebookColor => 'Колір';

  @override
  String get notesDeleteNotebook => 'Видалити блокнот';

  @override
  String get notesDeleteNotebookMessage =>
      'Блокнот буде видалено. Його нотатки збережуться й будуть у розділі «Усі блокноти».';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Закріплюйте важливі нотатки, щоб вони були вгорі.';

  @override
  String get notesEmptyFavorites => 'Нотатки, які ви позначите як обрані, з’являться тут.';

  @override
  String get notesEmptyArchived => 'Архівні нотатки з’являться тут.';

  @override
  String get notesEmptyFiltered => 'Немає нотаток за цими фільтрами.';

  @override
  String get notesArchivedSnack => 'Нотатку заархівовано';

  @override
  String get notesUnarchivedSnack => 'Нотатку повернуто до ваших нотаток';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Виконано $done з $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Форматування';

  @override
  String get notesWrite => 'Писати';

  @override
  String get notesPreviewEmpty => 'Поки нічого переглядати.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Сюди ще не посилаються інші нотатки. Пошліться на цю нотатку так: [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Дайте нотатці назву, щоб інші нотатки могли на неї посилатися.';

  @override
  String get notesLinkedTasksEmpty => 'До цієї нотатки не прив’язано завдань.';

  @override
  String notesLinkMissing(String title) {
    return 'Нотатки з назвою «$title» ще немає.';
  }

  @override
  String get notesNotFound => 'Цієї нотатки більше не існує.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Пункт списку: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Відкрити нотатку $title';
  }

  @override
  String get notesTagsHint => 'Додавайте теги, пишучи #тег у нотатці.';

  @override
  String get notesTaskDone => 'Виконано';

  @override
  String get notifTimerDoneBody => 'Заданий час минув.';

  @override
  String get onboardingPrivatePointDevice => 'Зберігається лише на цьому пристрої, зашифровано';

  @override
  String get onboardingPrivatePointAccount => 'Обліковий запис не потрібен';

  @override
  String get onboardingPrivatePointTracking => 'Без аналітики й відстеження';

  @override
  String get onboardingLanguageBody => 'Це можна будь-коли змінити в налаштуваннях.';

  @override
  String get onboardingNext => 'Далі';

  @override
  String get projectsActive => 'Активні';

  @override
  String get projectNameHint => 'напр. Запуск продукту';

  @override
  String get projectGoalHint => 'Як виглядає «готово»?';

  @override
  String get projectNoDeadline => 'Без дедлайну';

  @override
  String get projectTasksOpen => 'Відкриті завдання';

  @override
  String get projectTasksCompleted => 'Виконані завдання';

  @override
  String get projectAddTask => 'Додати завдання до проєкту';

  @override
  String get projectAddNote => 'Нова нотатка проєкту';

  @override
  String get projectLinkedNotes => 'Нотатки';

  @override
  String get projectNoTasks => 'У цьому проєкті ще немає завдань';

  @override
  String get projectArchivedBadge => 'В архіві';

  @override
  String get projectDeleted => 'Проєкт переміщено в кошик';

  @override
  String get projectDeleteMessage => 'Завдання лишаться у вашому списку без проєкту.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, виконано на $percent відсотків';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count результату',
      many: '$count результатів',
      few: '$count результати',
      one: '$count результат',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Фільтр за типом';

  @override
  String searchRecentTap(String query) {
    return 'Шукати знову: $query';
  }

  @override
  String get settingsLanguageHint =>
      'Виберіть мову для всього застосунку. Назви показано їхньою мовою.';

  @override
  String get settingsThemeHint => 'Світла, темна або як у системі';

  @override
  String settingsDecrease(String setting) {
    return 'Зменшити: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Збільшити: $setting';
  }

  @override
  String get settingsQuietStart => 'Початок';

  @override
  String get settingsQuietEnd => 'Кінець';

  @override
  String get settingsNotificationsHint =>
      'Це зберігає ваш вибір у застосунку. Система також може попросити дозвіл.';

  @override
  String get settingsDashboardHint =>
      'Перетягніть, щоб змінити порядок. Вимкніть розділи, які вам не потрібні.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Перемістити: $section';
  }

  @override
  String get settingsDashboardReset => 'Відновити типовий порядок';

  @override
  String get settingsAssistantDesc =>
      'Необов’язкова допомога з плануванням. Нічого не залишає пристрій, якщо ви не підключите сервіс.';

  @override
  String get settingsAssistantSetup => 'Помічник і налаштування сервісу';

  @override
  String get settingsTrashDesc => 'Відновіть або остаточно видаліть прибрані елементи';

  @override
  String get settingsEraseFirstBody =>
      'Цю дію не можна скасувати. Радимо спершу створити зашифровану резервну копію.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Введіть $word';
  }

  @override
  String get settingsEraseFailed => 'Не вдалося стерти дані. Нічого не змінено.';

  @override
  String get settingsAboutTagline =>
      'Приватний робочий простір для продуктивності, що працює локально.';

  @override
  String get backupShowPassword => 'Показати пароль';

  @override
  String get backupHidePassword => 'Сховати пароль';

  @override
  String get backupSaved => 'Резервну копію збережено';

  @override
  String get backupFailed => 'Не вдалося створити резервну копію. Ваші дані не змінилися.';

  @override
  String get backupReadFailed => 'Не вдалося прочитати вибраний файл.';

  @override
  String get backupRestoreFailed => 'Не вдалося відновити. Нічого не змінено.';

  @override
  String get backupShareSubject => 'Зашифрована резервна копія Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кожні $count дня',
      many: 'Кожні $count днів',
      few: 'Кожні $count дні',
      one: 'Кожен $count день',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кожні $count тижня',
      many: 'Кожні $count тижнів',
      few: 'Кожні $count тижні',
      one: 'Кожен $count тиждень',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кожні $count місяця',
      many: 'Кожні $count місяців',
      few: 'Кожні $count місяці',
      one: 'Кожен $count місяць',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кожні $count року',
      many: 'Кожні $count років',
      few: 'Кожні $count роки',
      one: 'Кожен $count рік',
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
    return 'у такі дні: $days';
  }

  @override
  String get repeatEndsLabel => 'Закінчується';

  @override
  String get repeatEndsAfter => 'Після певної кількості разів';

  @override
  String get repeatCountLabel => 'Кількість разів';

  @override
  String get reminderNone => 'Без нагадування';

  @override
  String get reminderCustomTime => 'У певний час';

  @override
  String get a11yDecrease => 'Зменшити';

  @override
  String get a11yIncrease => 'Збільшити';

  @override
  String get pickTaskTitle => 'Виберіть завдання';

  @override
  String get pickTaskEmpty => 'Немає відкритих завдань';

  @override
  String get tasksSearchTooltip => 'Пошук завдань';

  @override
  String get tasksSectionOverdue => 'Прострочені';

  @override
  String get tasksSectionToday => 'Сьогодні';

  @override
  String get tasksRecurringSemantics => 'Повторюється';

  @override
  String get tasksFilterPriorityAtLeast => 'Мінімальний пріоритет';

  @override
  String get tasksFilterCategory => 'Категорія';

  @override
  String get tasksFilterAnyCategory => 'Будь-яка категорія';

  @override
  String get tasksFilterLabel => 'Мітка';

  @override
  String get tasksFilterAnyLabel => 'Будь-яка мітка';

  @override
  String get tasksFilterReset => 'Скинути фільтри';

  @override
  String get tasksViewByProject => 'За проєктами';

  @override
  String get tasksViewByPriority => 'За пріоритетом';

  @override
  String get tasksViewByCategory => 'За категоріями';

  @override
  String get tasksGroupNoCategory => 'Без категорії';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count завдання',
      many: '$count завдань',
      few: '$count завдання',
      one: '$count завдання',
    );
    return 'Блокують $_temp0';
  }

  @override
  String get taskBlockedWarning => 'Це завдання блокують незавершені завдання. Усе одно завершити?';

  @override
  String get taskStartFocus => 'Зосередитися на цьому завданні';

  @override
  String get taskRemoveDate => 'Прибрати дату';

  @override
  String get taskAllDay => 'Без конкретного часу';

  @override
  String get taskSaved => 'Завдання збережено';

  @override
  String get taskCreated => 'Завдання створено';

  @override
  String get taskReminderNeedsDue => 'Укажіть термін, щоб використовувати відносні нагадування';

  @override
  String get taskSubtaskDetailsHint =>
      'Спершу збережіть завдання, щоб додати підзавдання, пункти списку, мітки й залежності.';

  @override
  String get taskLabelName => 'Назва мітки';

  @override
  String get taskMoreDetails => 'Подробиці';

  @override
  String get taskPlanning => 'Планування';

  @override
  String get taskOrganize => 'Упорядкування';

  @override
  String get taskBreakdown => 'Розбивка';

  @override
  String get trashDeleteTaskTitle => 'Видалити це завдання назавжди?';

  @override
  String get trashDeleteNoteTitle => 'Видалити цю нотатку назавжди?';

  @override
  String get trashDeleteBody => 'Цю дію не можна скасувати.';

  @override
  String get trashEmptyTitle => 'Очистити кошик?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count елемента буде видалено назавжди.',
      many: '$count елементів буде видалено назавжди.',
      few: '$count елементи буде видалено назавжди.',
      one: '$count елемент буде видалено назавжди.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Відновлено';

  @override
  String get trashPurged => 'Видалено назавжди';

  @override
  String trashDeletedOn(String date) {
    return 'Видалено $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count елемента',
      many: '$count елементів',
      few: '$count елементи',
      one: '$count елемент',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Прочитати вголос';

  @override
  String get flashcardsTtsUnavailable => 'Синтез мовлення недоступний на цьому пристрої.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Для цієї мови не встановлено голосу. Додайте його в налаштуваннях синтезу мовлення Android.';

  @override
  String get calendarAgenda => 'Розклад';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Іскра',
      'rocket': 'Ракета',
      'book': 'Книга',
      'work': 'Робота',
      'home': 'Дім',
      'heart': 'Серце',
      'code': 'Код',
      'palette': 'Палітра',
      'fitness': 'Фітнес',
      'school': 'Школа',
      'travel': 'Подорожі',
      'money': 'Заощадження',
      'other': 'Значок',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Інші поля';

  @override
  String get cardFieldExample => 'Приклад';

  @override
  String get cardFieldExplanation => 'Пояснення';

  @override
  String get cardFieldPronunciation => 'Вимова';

  @override
  String get cardFieldNotes => 'Додаткові нотатки';

  @override
  String get projectMilestones => 'Віхи';

  @override
  String get milestoneAdd => 'Додати віху';

  @override
  String get milestoneEdit => 'Редагувати віху';

  @override
  String get milestoneTitleLabel => 'Віха';

  @override
  String get milestoneNoDate => 'Без дати';

  @override
  String get milestonesEmpty =>
      'Віх ще немає. Додайте контрольні точки з датами, щоб стежити за проєктом у календарі.';

  @override
  String get milestoneDeleted => 'Віху видалено';

  @override
  String milestoneDoneA11y(String title) {
    return 'Позначити віху «$title» як виконану';
  }

  @override
  String calendarMilestone(String project) {
    return 'Віха · $project';
  }

  @override
  String get tasksViewInbox => 'Вхідні';

  @override
  String get tasksViewArchived => 'Архівні';

  @override
  String get tasksEmptyInbox =>
      'Сюди потрапляють завдання без проєкту чи дати. Розберіть їх, коли матимете хвилинку.';

  @override
  String get tasksEmptyArchived =>
      'Архівні завдання зберігаються тут, поза вашими списками й нагадуваннями.';

  @override
  String get taskArchivedBadge => 'В архіві';

  @override
  String get taskStatusInProgress => 'У роботі';

  @override
  String get taskArchived => 'Завдання заархівовано';

  @override
  String get taskUnarchived => 'Завдання повернуто з архіву';

  @override
  String get focusPlanTitle => 'План сеансів';

  @override
  String focusPlanTotal(String duration) {
    return 'Усього $duration';
  }

  @override
  String get focusPlanRounds => 'Сеанси фокусу';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Довга перерва після';

  @override
  String get focusPlanSkipLastBreak => 'Пропустити останню перерву';

  @override
  String get focusPlanAutoBreaks => 'Автоматично починати перерви';

  @override
  String get focusPlanAutoFocus => 'Автоматично починати фокус після перерви';

  @override
  String get focusPlanSave => 'Зберегти план';

  @override
  String get focusPlanNameHint => 'напр. Підготовка до іспиту';

  @override
  String get focusPlanSaved => 'План збережено';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work хв фокусу, $rest хв перерви';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Зменшити: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Збільшити: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Сеанс $current з $total';
  }

  @override
  String get focusSeriesComplete => 'Серію завершено. Чудово!';

  @override
  String get filterAll => 'Усі';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Імпортовано: $added · пропущено дублікатів: $duplicates · неповних рядків: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Призупинити картку';

  @override
  String get flashcardsResume => 'Відновити картку';

  @override
  String get flashcardsSuspended => 'Картку призупинено: її не плануватиме';

  @override
  String get flashcardsResumed => 'Картку відновлено';

  @override
  String get flashcardsSuspendedFilter => 'Призупинені';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown з $total карток';
  }

  @override
  String get flashcardsImportFile => 'З файлу';

  @override
  String get speechTitle => 'Мовлення';

  @override
  String get speechAppLanguage => 'Мова застосунку';

  @override
  String get speechFrontLanguage => 'Мова лицьового боку';

  @override
  String get speechBackLanguage => 'Мова зворотного боку';

  @override
  String get speechRepeat => 'Повторювати кожне читання';

  @override
  String get speechRate => 'Швидкість';

  @override
  String get speechAutoRead => 'Автоматично читати питання';

  @override
  String get speechHint =>
      'Використовує голоси, встановлені на цьому пристрої, без інтернету. Якщо для мови немає голосу, ви про це дізнаєтеся, і нічого іншого замість нього не використовується.';

  @override
  String get studyHowTitle => 'Як ви хочете вчитися?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Повторити $count картки',
      many: 'Повторити $count карток',
      few: 'Повторити $count картки',
      one: 'Повторити $count картку',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Потренувати всі картки (розклад не зміниться)';

  @override
  String get studyPracticeMistakes => 'Потренувати нещодавні помилки';

  @override
  String get studyPracticeHint =>
      'Тренувальні раунди ніколи не змінюють, коли картки до повторення. Повторення оновлює розклад.';

  @override
  String get studyModeClassic => 'Класично';

  @override
  String get studyModeReverse => 'Навпаки';

  @override
  String get studyModeMixed => 'В обидва боки';

  @override
  String get studyModeTyped => 'Ввести відповідь';

  @override
  String get studyModeChoice => 'Вибір варіанта';

  @override
  String get studyModeListening => 'Аудіювання';

  @override
  String get studyPractice => 'тренування';

  @override
  String get studyNoMistakes => 'У цій колоді немає нещодавніх помилок. Чудово!';

  @override
  String get studyTypeAnswer => 'Введіть відповідь';

  @override
  String get studyCheck => 'Перевірити';

  @override
  String get studyKnewIt => 'Знав';

  @override
  String get studyDidntKnow => 'Не знав';

  @override
  String studyMistakes(int count) {
    return 'Помилки ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Повторити картки з помилками';

  @override
  String get studyCorrect => 'Правильно';

  @override
  String get studyAlmost => 'Майже — перевірте написання';

  @override
  String get studyWrong => 'Не зовсім';

  @override
  String get studyShowText => 'Показати текст';

  @override
  String get flashcardsImportFileFailed => 'Не вдалося відкрити файл. Можна вставити його вміст.';

  @override
  String get studyNoMatchingCards => 'Під цей вибір поки немає карток.';

  @override
  String get studyPracticeNew => 'Лише нові';

  @override
  String get studyPracticeHard => 'Складні картки';

  @override
  String get studyPracticeFavorites => 'Обрані';

  @override
  String get studySessionSize => 'Карток за сеанс';

  @override
  String get studySessionAll => 'Усі';

  @override
  String get studyOrder => 'Порядок';

  @override
  String get studyOrderDue => 'Найбільш прострочені спершу';

  @override
  String get studyOrderRandom => 'Випадково';

  @override
  String get studyOrderHardest => 'Найскладніші спершу';

  @override
  String get flashcardsHard => 'Складні';

  @override
  String get flashcardsFavorites => 'Обрані';

  @override
  String get flashcardsFavorite => 'Додати в обране';

  @override
  String get flashcardsUnfavorite => 'Прибрати з обраного';

  @override
  String get flashcardsDuplicate => 'Дублювати';

  @override
  String get flashcardsMoveTo => 'Перемістити в колоду';

  @override
  String get flashcardsNoOtherDeck => 'Спершу створіть іншу колоду.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Переміщено $count картки',
      many: 'Переміщено $count карток',
      few: 'Переміщено $count картки',
      one: 'Переміщено $count картку',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Додати тег';

  @override
  String get flashcardsTagHint => 'напр. дієслова';

  @override
  String flashcardsSelected(int count) {
    return 'Вибрано: $count';
  }

  @override
  String get flashcardsSelectAll => 'Вибрати всі показані';

  @override
  String flashcardsSelectCard(String front) {
    return 'Вибрати $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Пригадування $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Можливий дублікат';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'У цій колоді вже є «$front» → «$back». Усе одно зберегти?';
  }

  @override
  String get flashcardsSaveAnyway => 'Усе одно зберегти';

  @override
  String get flashcardsStats => 'Статистика';

  @override
  String get flashcardsStatTotal => 'Картки';

  @override
  String get flashcardsStatLearning => 'Вивчаються';

  @override
  String get flashcardsStatMatureCaption => 'Пам’ятаю понад 21 день';

  @override
  String get flashcardsStatReviewsToday => 'Повторення сьогодні';

  @override
  String get flashcardsStatCorrect => 'Правильні відповіді';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Останні дні: $days';
  }

  @override
  String get flashcardsStatForget => 'Рівень забування';

  @override
  String get flashcardsStatForgetCaption => '«Ще раз» на вивчених картках';

  @override
  String get flashcardsStatRecall => 'Пригадування зараз';

  @override
  String get flashcardsStatRecallCaption => 'Оцінка FSRS, повторені картки';

  @override
  String flashcardsStatActivity(int count) {
    return 'Повторення на день · усього $count';
  }

  @override
  String get flashcardsStatHistory => 'Останні відповіді';

  @override
  String get flashcardsStatNoHistory =>
      'Повторень ще немає. Вчіться з колодою, щоб побачити тут свій прогрес.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Прочитати вголос: $field';
  }

  @override
  String get speechVoice => 'Голос';

  @override
  String get speechVoiceDefault => 'Автоматично';

  @override
  String get speechVoiceOnline => 'потрібен інтернет';

  @override
  String get speechTest => 'Перевірити голос';

  @override
  String get importNext => 'Попередній перегляд';

  @override
  String get importPreviewTitle => 'Зіставте стовпці з полями';

  @override
  String get importIgnoreColumn => 'Ігнорувати';

  @override
  String importColumn(int n) {
    return 'Стовпець $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Готово карток: $ready · неповних рядків буде пропущено: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Виберіть, які стовпці є лицьовим і зворотним боком.';

  @override
  String get actionMoveUp => 'Вище';

  @override
  String get actionMoveDown => 'Нижче';

  @override
  String get flashcardsLayoutTitle => 'Вигляд картки';

  @override
  String get flashcardsLayoutHint =>
      'Перейменуйте, сховайте або впорядкуйте додаткові поля цієї колоди. Вміст карток ніколи не змінюється.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Показувати $field під час навчання';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Відкривати відповідь поступово';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Спершу з’являється зворотний бік; кожне додаткове поле відкривається дотиком.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Показати $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Цей файл більший за $mb МБ.';
  }

  @override
  String get flashcardsImage => 'Зображення';

  @override
  String get flashcardsAudio => 'Аудіо';

  @override
  String get flashcardsAddImage => 'Додати зображення';

  @override
  String get flashcardsAddAudio => 'Додати аудіо';

  @override
  String get flashcardsPlayAudio => 'Відтворити запис';

  @override
  String get flashcardsAudioUnavailable => 'Цей запис неможливо відтворити на цьому пристрої.';

  @override
  String get flashcardsCustomFields => 'Ваші поля';

  @override
  String get flashcardsTemplates => 'Шаблони';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Поле $n';
  }

  @override
  String get flashcardsAddField => 'Додати поле';

  @override
  String get flashcardsFieldName => 'Назва поля';

  @override
  String get flashcardsFieldLangDefault => 'Мова боку';

  @override
  String get flashcardsTemplateConfirm =>
      'Шаблон визначає, як показуються поля, і додає свої поля. Ваші картки й наявні поля лишаються без змін.';

  @override
  String get flashcardsApplyTemplate => 'Застосувати';

  @override
  String get templateVocabulary => 'Лексика';

  @override
  String get templateTwoTranslations => 'Слово з двома перекладами';

  @override
  String get templateQuestionAnswer => 'Питання і відповідь';

  @override
  String get templateDefinition => 'Термін і визначення';

  @override
  String get templateGrammar => 'Граматичне правило';

  @override
  String get templateFieldPlural => 'Множина';

  @override
  String get templateFieldTranslation2 => 'Другий переклад';

  @override
  String get templateFieldSynonyms => 'Синоніми';

  @override
  String get templateFieldRule => 'Правило';

  @override
  String get deckCategory => 'Рівень або тема';

  @override
  String get deckCategoryHint => 'напр. A1, Медицина';

  @override
  String get flashcardsSearchAll => 'Шукати в усіх картках';

  @override
  String get flashcardsSearchAllHint => 'Слово, переклад, приклад, нотатка, тег…';

  @override
  String get flashcardsAllDecks => 'Усі колоди';

  @override
  String get flashcardsAllLanguages => 'Усі мови';

  @override
  String get flashcardsLangUnset => 'Мову не вказано';

  @override
  String get flashcardsLevelUnset => 'Без рівня чи теми';

  @override
  String get flashcardsByLanguage => 'Прогрес за мовами';

  @override
  String get flashcardsByLevel => 'Прогрес за рівнем або темою';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Колод: $decks · карток: $cards · вивчених: $mature · до повторення: $due · правильно: $correct (30 днів)';
  }

  @override
  String get flashcardsRecord => 'Записати';

  @override
  String get flashcardsRecording => 'Запис…';

  @override
  String get flashcardsRecordStop => 'Зупинити й зберегти';

  @override
  String get flashcardsMicDenied =>
      'Доступ до мікрофона вимкнено. Дозвольте його в системних налаштуваннях, щоб записувати.';

  @override
  String get flashcardsRecordFailed => 'Запис недоступний на цьому пристрої.';

  @override
  String get soundsTitle => 'Звуки';

  @override
  String get soundsNature => 'Природа';

  @override
  String get soundsNoise => 'Шум для фокусу';

  @override
  String get soundRain => 'Дощ';

  @override
  String get soundStorm => 'Гроза';

  @override
  String get soundRiver => 'Річка';

  @override
  String get soundOcean => 'Морські хвилі';

  @override
  String get soundFire => 'Вогнище';

  @override
  String get soundForest => 'Птахи в лісі';

  @override
  String get soundNight => 'Літня ніч';

  @override
  String get soundWhite => 'Білий шум';

  @override
  String get soundPink => 'Рожевий шум';

  @override
  String get soundBrown => 'Коричневий шум';

  @override
  String get soundsPlay => 'Відтворити';

  @override
  String get soundsSleep => 'Таймер сну';

  @override
  String get soundsSleepOff => 'Вимкнено';

  @override
  String soundsSleepAt(String time) {
    return 'Зупиниться о $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Одночасно можуть звучати щонайбільше $count звуків.';
  }

  @override
  String get soundsHint =>
      'Торкніться звуку, щоб почати. Змішуйте кілька й налаштовуйте гучність кожного.';

  @override
  String get soundsMixer => 'Мікс';

  @override
  String soundsVolumeOf(String name) {
    return 'Гучність: $name';
  }

  @override
  String get soundsChannel => 'Звуки природи';

  @override
  String get settingsEndTone => 'Звук завершення таймера';

  @override
  String get toneGentle => 'М’які сигнали';

  @override
  String get toneBeeps => 'Сигнали';

  @override
  String get toneWood => 'Стук по дереву';

  @override
  String get toneBird => 'Пташиний поклик';

  @override
  String get toneStream => 'Струмок';

  @override
  String get toneSystem => 'Звук телефону';

  @override
  String get speechOnPhone => 'На цьому телефоні';

  @override
  String get speechAllLanguages => 'Усі мови';

  @override
  String get speechSearchLanguage => 'Пошук мов';

  @override
  String get speechGetVoices => 'Завантажити більше голосів';

  @override
  String get speechGetVoicesHint =>
      'Голоси для інших мов можна завантажити в налаштуваннях мовлення телефону.';

  @override
  String get speechSettingsFailed => 'Не вдалося відкрити налаштування мовлення на цьому телефоні.';

  @override
  String get speechVoiceMissing => 'Голос не встановлено';

  @override
  String get speechPause => 'Пауза між повтореннями';

  @override
  String speechSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String get speechExample => 'Читати приклад разом із відповіддю';

  @override
  String get flashListen => 'Слухати';

  @override
  String get flashListenNext => 'Наступна картка';

  @override
  String get flashListenEmpty => 'Немає карток для прослуховування.';

  @override
  String get flashViewTable => 'Таблиця';

  @override
  String get flashViewCards => 'Картки';

  @override
  String get flashSwapSides => 'Поміняти стовпці';

  @override
  String get flashSort => 'Сортувати';

  @override
  String get flashSortNewest => 'Спершу нові';

  @override
  String get flashSortAlpha => 'Від А до Я';

  @override
  String get flashSortDue => 'Спершу до повторення';

  @override
  String get flashSortHard => 'Спершу найскладніші';

  @override
  String get flashPasteCards => 'Вставити картки';

  @override
  String get flashClipboardEmpty => 'У буфері обміну немає тексту.';

  @override
  String get flashMenuAdd => 'Додати картки';

  @override
  String get flashMenuDeck => 'Колода';

  @override
  String get flashToday => 'Сьогодні';

  @override
  String get flashStudyNow => 'Вчити';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Відповіді на $count картки',
      many: 'Відповіді на $count карток',
      few: 'Відповіді на $count картки',
      one: 'Відповіді на $count картку',
      zero: 'Немає відповідей',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Дощ у лісі';

  @override
  String get autoBackupTitle => 'Автоматичні резервні копії';

  @override
  String get autoBackupDesc => 'Щодня на цьому телефоні; зберігаються останні 7';

  @override
  String get autoBackupHint =>
      'Ці копії лишаються на цьому телефоні й видаляються разом із застосунком. Щоб перейти на новий телефон, збережіть файл через «Створити резервну копію».';

  @override
  String get autoBackupNone =>
      'Автоматичної резервної копії ще немає. Перша буде створена сьогодні.';

  @override
  String get autoBackupRestore => 'Відновити';

  @override
  String autoBackupConfirm(String date) {
    return 'Замінити всі поточні дані резервною копією від $date?';
  }

  @override
  String get autoBackupRestored => 'Відновлено.';

  @override
  String get errorLogTitle => 'Журнал помилок';

  @override
  String get errorLogHint =>
      'Якщо щось піде не так, це буде записано тут: лише тип помилки й місце в коді, ніколи ваш вміст. Поділіться ним, щоб допомогти виправити проблему.';

  @override
  String get errorLogEmpty => 'Помилок не записано.';

  @override
  String get errorLogClear => 'Очистити';

  @override
  String get soundsWithFocus => 'Грати під час сеансів фокусу';

  @override
  String get soundsWithFocusHint =>
      'Ваш мікс вмикається із сеансом фокусу й ставиться на паузу під час перерв.';

  @override
  String get soundsSavedMixes => 'Збережені мікси';

  @override
  String get soundsSaveMix => 'Зберегти цей мікс';

  @override
  String get soundsMixNameHint => 'Назва, напр. Дощова бібліотека';

  @override
  String soundsDeleteMix(String name) {
    return 'Видалити мікс «$name»?';
  }

  @override
  String get settingsReviewReminderHint => 'Раз на день і лише коли є картки до повторення';

  @override
  String get settingsReviewTime => 'Час нагадування';

  @override
  String get shortcutFocus => 'Фокус';

  @override
  String get shortcutNewTask => 'Нове завдання';

  @override
  String get shortcutReview => 'Повторити картки';

  @override
  String get shortcutSounds => 'Звуки природи';

  @override
  String get myDayTitle => 'Почати мій день';

  @override
  String get myDayHint => 'Ваш день одним поглядом, потім фокус одним дотиком';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count завдання на сьогодні',
      many: '$count завдань на сьогодні',
      few: '$count завдання на сьогодні',
      one: '$count завдання на сьогодні',
      zero: 'На сьогодні завдань немає',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Сьогодні більше немає подій';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Далі: $title о $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Лишилося $count звички',
      many: 'Лишилося $count звичок',
      few: 'Лишилося $count звички',
      one: 'Лишилася $count звичка',
      zero: 'Усі звички виконано',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Почати із сеансу фокусу';

  @override
  String get hijriMonth1 => 'Мухаррам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Рабі аль-авваль';

  @override
  String get hijriMonth4 => 'Рабі ас-сані';

  @override
  String get hijriMonth5 => 'Джумада аль-уля';

  @override
  String get hijriMonth6 => 'Джумада аль-ахіра';

  @override
  String get hijriMonth7 => 'Раджаб';

  @override
  String get hijriMonth8 => 'Шаабан';

  @override
  String get hijriMonth9 => 'Рамадан';

  @override
  String get hijriMonth10 => 'Шавваль';

  @override
  String get hijriMonth11 => 'Зуль-каада';

  @override
  String get hijriMonth12 => 'Зуль-хіджа';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year р. г.';
  }

  @override
  String get settingsHijri => 'Дати за хіджрою';

  @override
  String get settingsHijriHint => 'Показуються в календарі й на головному екрані (Умм аль-Кура)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count днів',
      few: '$count дні',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Сьогодні $done з $goal карток';
  }

  @override
  String get studyGoalReached => 'Денну ціль досягнуто. Чудово!';

  @override
  String get studyWeekTitle => 'Ваш тиждень';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'За 7 днів — відповіді на $count картки',
      many: 'За 7 днів — відповіді на $count карток',
      few: 'За 7 днів — відповіді на $count картки',
      one: 'За 7 днів — відповіді на $count картку',
      zero: 'За 7 днів немає відповідей',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration фокусу за 7 днів';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Серія: $current · Рекорд: $best';
  }

  @override
  String get studyGoalTitle => 'Денна ціль (картки)';

  @override
  String get studyGoalOff => 'Вимкнено';

  @override
  String get focusDndTitle => '«Не турбувати» під час фокусу';

  @override
  String get focusDndHint => 'Вмикається на кожен сеанс фокусу й вимикається на перерві';

  @override
  String get focusDndNeedsAccess =>
      'Щоб користуватися цим, дозвольте доступ у налаштуваннях телефону';

  @override
  String get voiceInput => 'Диктувати';

  @override
  String get voiceInputPrompt => 'Говоріть';

  @override
  String get voiceInputUnavailable =>
      'Голосове введення недоступне на цьому телефоні. Установіть або ввімкніть службу розпізнавання мовлення (наприклад, «Розпізнавання та синтез мовлення» від Google).';

  @override
  String get prayerFajr => 'Фаджр';

  @override
  String get prayerSunrise => 'Схід сонця';

  @override
  String get prayerDhuhr => 'Зухр';

  @override
  String get prayerAsr => 'Аср';

  @override
  String get prayerMaghrib => 'Магриб';

  @override
  String get prayerIsha => 'Іша';

  @override
  String get prayerMethodMwl => 'Всесвітня ісламська ліга';

  @override
  String get prayerMethodUmmAlQura => 'Умм аль-Кура, Мекка';

  @override
  String get prayerMethodEgypt => 'Єгипетське генеральне управління';

  @override
  String get prayerMethodJordan => 'Йорданія, Міністерство вакуфів';

  @override
  String get prayerMethodKarachi => 'Університет ісламських наук, Карачі';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Регіон Перської затоки';

  @override
  String get prayerMethodKuwait => 'Кувейт';

  @override
  String get prayerMethodQatar => 'Катар';

  @override
  String get prayerMethodTurkey => 'Туреччина, Діянет';

  @override
  String get prayerMethodSingapore => 'Сінгапур, Малайзія, Індонезія';

  @override
  String get prayerMethodFrance => 'Франція (12°)';

  @override
  String get prayerMethodRussia => 'Росія, Духовне управління';

  @override
  String prayerNotifTitle(String name) {
    return 'Час для $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Час молитви · $time';
  }

  @override
  String get prayerTitle => 'Час молитов';

  @override
  String get prayerOffHint =>
      'Виберіть місто, щоб бачити час молитов. Його обчислюють на телефоні; доступ до геолокації не потрібен.';

  @override
  String get prayerChooseCity => 'Вибрати місто';

  @override
  String get prayerCity => 'Місто';

  @override
  String get prayerCitySearch => 'Пошук міста';

  @override
  String get prayerMethod => 'Метод розрахунку';

  @override
  String get prayerHanafiAsr => 'Аср за ханафітами (пізніший час)';

  @override
  String get prayerReminders => 'Сповіщати про кожну молитву';

  @override
  String get prayerPauseFocus => 'Призупиняти фокус на час молитви';

  @override
  String get prayerPauseFocusHint => 'Поточний сеанс стає на паузу; продовжте після молитви';

  @override
  String get prayerTurnOff => 'Вимкнути час молитов';

  @override
  String get prayerAccuracyNote =>
      'Обчислений час може на кілька хвилин відрізнятися від часу вашої місцевої мечеті.';

  @override
  String prayerNext(String name, String time) {
    return '$name о $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Цей файл Anki має найновіший формат. Експортуйте його в Anki ще раз з увімкненим параметром «Підтримка старіших версій Anki», а тоді імпортуйте цей файл.';

  @override
  String get importTemplate => 'Шаблон таблиці';

  @override
  String get importTemplateFront => 'яблуко';

  @override
  String get importTemplateBack => 'круглий фрукт';

  @override
  String get importTemplateExample => 'Я щодня їм яблуко.';

  @override
  String get importTemplateTag => 'їжа';

  @override
  String get starterTitle => 'Стартові колоди';

  @override
  String get starterHint =>
      'Додайте одну, щоб одразу почати навчання. Пізніше її можна змінити або видалити.';

  @override
  String get starterAdd => 'Додати';

  @override
  String get starterWords => 'Повсякденні англійські слова (арабською)';

  @override
  String get starterCapitals => 'Столиці світу';

  @override
  String get starterElements => 'Хімічні елементи';

  @override
  String get settingsAccent => 'Колір акценту';

  @override
  String get accentViolet => 'Фіолетовий';

  @override
  String get accentBlue => 'Синій';

  @override
  String get accentTeal => 'Бірюзовий';

  @override
  String get accentGreen => 'Зелений';

  @override
  String get accentRose => 'Рожевий';

  @override
  String get accentAmber => 'Бурштиновий';

  @override
  String get settingsFlashTextSize => 'Розмір тексту карток';

  @override
  String get settingsFlashTextSample => 'Приклад';

  @override
  String get widgetStartFocus => 'Торкніться, щоб зосередитися';

  @override
  String widgetFocusUntil(String time) {
    return 'Фокус до $time';
  }

  @override
  String get widgetNoCardsDue => 'Картки: усе виконано';

  @override
  String get faqMyDayQ => 'Що робить «Почати мій день»?';

  @override
  String get faqMyDayA =>
      'Раз на день головний екран пропонує його: ви бачите сьогоднішні завдання, наступну подію, невиконані звички й картки до повторення, а тоді одним дотиком починаєте сеанс фокусу. Утримуйте значок застосунку для швидких дій або додайте віджет на головний екран, щоб бачити час фокусу й картки до повторення.';

  @override
  String get faqTasksQ => 'Як додати завдання з нагадуванням?';

  @override
  String get faqTasksA =>
      'Торкніться «Нове завдання» на головній або «+» у завданнях. Введіть назву чи продиктуйте її мікрофоном, а тоді вкажіть термін, час і нагадування. Прострочені завдання показуються першими.';

  @override
  String get faqFocusQ => 'Як працює таймер фокусу?';

  @override
  String get faqFocusA =>
      'Виберіть Pomodoro, таймер або вільний час і натисніть «Почати»; перерви можуть починатися автоматично. У налаштуваннях можна вибрати звук завершення, увімкнути «Не турбувати» під час фокусу й вмикати звуки природи з кожним сеансом.';

  @override
  String get faqSoundsQ => 'Чи можна змішувати звуки природи?';

  @override
  String get faqSoundsA =>
      'Увімкніть до шести справжніх записів, налаштуйте гучність кожного й збережіть мікс під назвою. Вони грають у фоні, а таймер сну може їх зупинити. Музика не використовується.';

  @override
  String get faqCalendarQ => 'Чи може календар показувати дати за хіджрою?';

  @override
  String get faqCalendarA =>
      'Так. Дати за хіджрою (Умм аль-Кура) показуються автоматично арабською, а в налаштуваннях їх можна ввімкнути для будь-якої мови. Події, завдання з терміном і віхи проєктів показуються разом.';

  @override
  String get faqFlashcardsQ => 'Як повторення вирішує, які картки я побачу?';

  @override
  String get faqFlashcardsA =>
      'Картки, які ви добре знаєте, повертаються через довші проміжки, а ті, де ви помилилися, — незабаром (інтервальне повторення). Оцінюйте кожну відповідь: «Ще раз», «Важко», «Добре» або «Легко». Поставте денну ціль і тримайте серію на картці «Сьогодні». Укажіть дату іспиту в колоді, щоб бачити, скільки днів лишилося й скільки нових карток вчити щодня. Сортування «Мій порядок» дає перетягувати картки, торкання динаміка на будь-якому боці озвучує його, а швидкість і повтори налаштовуються в меню «Мовлення».';

  @override
  String get faqImportQ => 'Чи можна перенести картки з Anki чи Excel?';

  @override
  String get faqImportA =>
      'Так. У колоді виберіть «Імпортувати», потім файл: Anki (.apkg), Excel (.xlsx) або CSV, і зіставте стовпці. За допомогою «Шаблону таблиці» можна писати картки на комп’ютері. Зображення й звуки з файлів Anki не імпортуються.';

  @override
  String get faqNotesQ => 'Що вміють нотатки?';

  @override
  String get faqNotesA =>
      'Пишіть вільно з чек-листами й форматуванням, закріплюйте чи додавайте в обране важливі нотатки, додавайте теги й пов’язуйте нотатки із завданнями. Кнопкою мікрофона можна диктувати. Нову нотатку можна почати з шаблону (лекція, конспект книги, щоденник, план на тиждень), а кнопка зображення додає фото.';

  @override
  String get faqHabitsQ => 'Як рахуються серії звичок?';

  @override
  String get faqHabitsA =>
      'День зараховується, коли в запланований день ви досягаєте цілі звички. Пауза звички зберігає серію. Кожна звичка може мати власний час нагадування.';

  @override
  String get faqGoalsQ => 'Як цілі відстежують прогрес?';

  @override
  String get faqGoalsA =>
      'Задайте цілі значення й одиницю, а тоді записуйте прогрес. Її картка показує, скільки пройдено і скільки лишилося до дедлайну.';

  @override
  String get faqProjectsQ => 'Для чого проєкти?';

  @override
  String get faqProjectsA =>
      'Групуйте завдання в проєкт, додавайте віхи з датами й стежте за загальним прогресом. Віхи також показуються в календарі.';

  @override
  String get faqInsightsQ => 'Що показує статистика?';

  @override
  String get faqInsightsA =>
      'Ваш час фокусу, виконані завдання й навчання за дні й тижні з м’якими порадами. Усе обчислюється на вашому телефоні.';

  @override
  String get faqSpacesQ => 'Де всі розділи?';

  @override
  String get faqSpacesA =>
      'У «Просторах» зібрано всі частини застосунку (нотатки, колоди, звички, цілі, проєкти, звуки тощо), тож головна панель лишається простою.';

  @override
  String get faqBackupQ => 'Як створюються резервні копії моїх даних?';

  @override
  String get faqBackupA =>
      'Щодня застосунок непомітно зберігає зашифровану копію на цьому телефоні й тримає останні 7. У налаштуваннях також можна експортувати захищений паролем файл резервної копії й відновити його на іншому телефоні.';

  @override
  String get faqPrayerQ => 'Як працює час молитов?';

  @override
  String get faqPrayerA =>
      'Виберіть місто в «Налаштування → Час молитов». Час обчислюється на телефоні за методом, прийнятим там, а метод і школу для асру можна змінити. Можна отримувати сповіщення про кожну молитву, а поточний сеанс фокусу стає на паузу.';

  @override
  String get faqPrivacyQ => 'Де зберігаються мої дані?';

  @override
  String get faqPrivacyA =>
      'Лише на вашому телефоні, у зашифрованій базі даних. Без облікового запису й відстеження. Інтернет використовують лише функції, які ви вмикаєте самі, як-от необов’язковий помічник.';

  @override
  String get faqAssistantQ => 'Що таке помічник?';

  @override
  String get faqAssistantA =>
      'Необов’язковий помічник, якого ви в налаштуваннях підключаєте до власного ШІ-сервісу. Типово він вимкнений і питає, перш ніж надіслати будь-який текст нотатки.';

  @override
  String get tourPlanTitle => 'Плануйте свій день';

  @override
  String get tourPlanBody =>
      'Завдання, календар і звички в одному спокійному місці. Починайте кожен ранок із «Почати мій день».';

  @override
  String get tourFocusTitle => 'Глибокий фокус';

  @override
  String get tourFocusBody =>
      'Сеанси з таймером, справжні звуки природи, «Не турбувати» й м’які сигнали завершення.';

  @override
  String get tourLearnTitle => 'Вчіться назавжди';

  @override
  String get tourLearnBody =>
      'Картки з інтервальним повторенням, озвучення багатьма мовами й імпорт з Anki чи Excel.';

  @override
  String get helpTitle => 'Довідка й питання';

  @override
  String get helpOpen => 'Відкрити';

  @override
  String get helpTour => 'Переглянути огляд';

  @override
  String get tourNext => 'Далі';

  @override
  String get tourDone => 'Почнімо';

  @override
  String get transferColTitle => 'Назва';

  @override
  String get transferColNotes => 'Нотатки';

  @override
  String get transferColBody => 'Текст';

  @override
  String get transferColDue => 'Термін';

  @override
  String get transferColPriority => 'Пріоритет (0-3)';

  @override
  String get transferColDone => 'Виконано';

  @override
  String get transferColProject => 'Проєкт';

  @override
  String get transferColCategory => 'Категорія';

  @override
  String get transferTitle => 'Імпорт і експорт';

  @override
  String get transferSaveAs => 'Зберегти як';

  @override
  String get transferImport => 'Імпортувати з файлу';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV або таблиця у Word. Стовпці: назва, термін (2026-12-31), пріоритет 0-3, виконано, проєкт, нотатки. Завдання, які вже є в застосунку, пропускаються.';

  @override
  String get transferImportNotesHint =>
      'Файли Word, Markdown або текстові стають нотаткою. Excel або CSV: одна нотатка на рядок (назва, текст).';

  @override
  String get transferSaved => 'Файл збережено';

  @override
  String get transferFailed => 'Не вдалося створити файл. Нічого не змінено.';

  @override
  String get transferUnsupported =>
      'Цей файл тут не читається. Використовуйте Excel, CSV, Word, Markdown або текст.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Додано $added',
      many: 'Додано $added',
      few: 'Додано $added',
      one: 'Додано $added',
      zero: 'Нічого нового не додано',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Текст';

  @override
  String get transferAllNotes => 'Усі нотатки';

  @override
  String get transferThisNote => 'Ця нотатка';

  @override
  String get transferDeckFormats => 'Зберегти як Excel, Word або PDF';

  @override
  String get faqFilesQ => 'Чи можна використовувати файли Excel, Word або PDF?';

  @override
  String get faqFilesA =>
      'Так. У завданнях і нотатках угорі є кнопка імпорту й експорту (дві стрілки), а в кожній колоді вона є в меню. Зберігайте як Excel, CSV, Word або PDF чи завантажуйте файли Excel, CSV, Word, Markdown або текстові. Назви стовпців можуть бути будь-якою мовою застосунку, а збережені файли завжди можна імпортувати знову.';

  @override
  String get tplLecture => 'Лекція';

  @override
  String get tplBook => 'Конспект книги';

  @override
  String get tplJournal => 'Щоденник';

  @override
  String get tplWeek => 'План на тиждень';

  @override
  String get tplLectureBody => '## Головне\n- \n\n## Питання\n- [ ] \n\n## Підсумок\n';

  @override
  String get tplBookBody =>
      '## Основна ідея\n\n## Що я дізнався\n- \n\n## Цитати\n> \n\n## Застосувати\n- [ ] \n';

  @override
  String get tplJournalBody => '## Я вдячний за\n- \n\n## Фокус дня\n- [ ] \n\n## Нотатки\n';

  @override
  String get tplWeekBody =>
      '## Цілі на тиждень\n- [ ] \n\n### Субота\n- [ ] \n\n### Неділя\n- [ ] \n\n### Понеділок\n- [ ] \n\n### Вівторок\n- [ ] \n\n### Середа\n- [ ] \n\n### Четвер\n- [ ] \n\n### П’ятниця\n- [ ] \n';

  @override
  String get tplHint => 'Почати з шаблону';

  @override
  String get noteImage => 'Зображення';

  @override
  String get noteAddImage => 'Додати зображення';

  @override
  String get noteImageUnreadable => 'Цей файл не є зображенням, яке застосунок може прочитати.';

  @override
  String get noteImageTooLarge => 'Це зображення завелике.';

  @override
  String get examSet => 'Указати дату іспиту';

  @override
  String get examDate => 'Дата іспиту';

  @override
  String get examToday => 'Іспит сьогодні. Успіху!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Іспит через $count дня',
      many: 'Іспит через $count днів',
      few: 'Іспит через $count дні',
      one: 'Іспит через $count день',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'вчіть $count нової картки на день',
      many: 'вчіть $count нових карток на день',
      few: 'вчіть $count нові картки на день',
      one: 'вчіть $count нову картку на день',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'усі картки вивчено, продовжуйте повторювати';

  @override
  String examRaiseLimit(int count) {
    return 'Показувати нових карток на день: $count';
  }

  @override
  String get backupDriveHint =>
      'Щоб зберегти копію онлайн, виберіть Google Диск (або інший хмарний застосунок) на екрані збереження, що відкриється далі.';

  @override
  String get flashShareDeck => 'Поділитися колодою з другом';

  @override
  String get flashSortManual => 'Мій порядок (перетягування)';

  @override
  String get flashReorderHint => 'Утримуйте маркер і перетягніть картку, щоб перемістити її.';

  @override
  String get flashReorderNeedsAll => 'Очистьте пошук і фільтри, щоб перетягувати картки.';

  @override
  String get flashDragHandle => 'Перетягніть, щоб перемістити';

  @override
  String get reportTitle => 'Місячний звіт';

  @override
  String get reportFocus => 'Час фокусу';

  @override
  String reportSessions(int count) {
    return 'Сеансів: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Найкращий день: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Активних днів: $count';
  }

  @override
  String get reportCards => 'Повторено карток';

  @override
  String reportCardsKnown(String percent) {
    return 'Запам’ятовано: $percent';
  }

  @override
  String get reportTasks => 'Виконано завдань';

  @override
  String get reportHabits => 'Відмітки звичок';

  @override
  String get reportEmpty => 'Цього місяця ще нічого не записано.';

  @override
  String get reportSave => 'Зберегти як PDF або Word';

  @override
  String get reportPrevMonth => 'Попередній місяць';

  @override
  String get reportNextMonth => 'Наступний місяць';

  @override
  String get careTitle => 'Догляд за телефоном і даними';

  @override
  String get storageTitle => 'Сховище';

  @override
  String get storageSubtitle => 'Що займає місце й очищення невикористаних зображень';

  @override
  String get storagePictures => 'Зображення в нотатках';

  @override
  String get storageCardMedia => 'Зображення й аудіо в картках';

  @override
  String get storageText => 'Текст нотаток';

  @override
  String get storageFree => 'Вільно на телефоні';

  @override
  String get storageLow =>
      'Телефон майже заповнений. Звільніть місце, щоб резервні копії й нагадування працювали далі.';

  @override
  String storageUnused(int count, String size) {
    return 'Невикористаних зображень: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Невикористаних зображень немає. Усе впорядковано.';

  @override
  String get storageClean => 'Видалити невикористані зображення';

  @override
  String storageCleaned(int count) {
    return 'Видалено зображень: $count';
  }

  @override
  String get storageHint =>
      'Зображення вважається невикористаним, лише коли жодна нотатка його не показує, зокрема нотатки в кошику.';

  @override
  String get batteryTitle => 'Щоб нагадування працювали';

  @override
  String get batterySubtitle => 'Деякі телефони зупиняють застосунки у фоні. Перевірте свій.';

  @override
  String get batteryStatusOk =>
      'Економія заряду не обмежує цей застосунок. Нагадування й звуки мають надходити вчасно.';

  @override
  String get batteryStatusLimited =>
      'Економія заряду може зупиняти цей застосунок у фоні, тож нагадування й звуки можуть запізнюватися або не надходити.';

  @override
  String get batteryOpen => 'Відкрити налаштування батареї';

  @override
  String get batteryOpenApp => 'Відкрити налаштування застосунку';

  @override
  String get batteryGeneric =>
      'У налаштуваннях батареї виберіть цей застосунок і встановіть «Без обмежень» (або «Не оптимізувати»).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: також відкрийте Безпека › Дозволи › Автозапуск і ввімкніть цей застосунок, а для економії заряду встановіть «Без обмежень».';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: відкрийте Батарея › цей застосунок і дозвольте фонову активність та автозапуск; закріпіть застосунок у списку недавніх.';

  @override
  String get batterySamsung =>
      'Samsung: Батарея › Обмеження використання у фоні: вилучіть цей застосунок зі сплячих і глибоко сплячих застосунків.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Запуск застосунків › цей застосунок › керувати вручну й дозвольте автозапуск, вторинний запуск і роботу у фоні.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Батарея › Енергоспоживання у фоні › дозвольте цей застосунок і ввімкніть автозапуск у дозволах.';

  @override
  String get whatsNewTitle => 'Що нового';

  @override
  String get whatsNewSubtitle => 'Останні зміни в кількох рядках';

  @override
  String get whatsNewDone => 'Зрозуміло';

  @override
  String get whatsNewOrderTitle => 'Перетягуйте картки у власному порядку';

  @override
  String get whatsNewOrderBody =>
      'У колоді виберіть Сортування › Мій порядок, потім утримуйте маркер і перетягуйте.';

  @override
  String get whatsNewSpeechTitle => 'Динамік на кожному боці картки';

  @override
  String get whatsNewSpeechBody =>
      'Торкніться, щоб почути слово чи переклад. Швидкість, повтори й голос — у меню повторення. Мова визначається за текстом.';

  @override
  String get whatsNewReportTitle => 'Місячний звіт';

  @override
  String get whatsNewReportBody =>
      'У статистиці торкніться значка звіту, щоб побачити місяць і зберегти його як PDF або Word.';

  @override
  String get whatsNewCareTitle => 'Догляд за телефоном і даними';

  @override
  String get whatsNewCareBody =>
      'У налаштуваннях тепер є сторінка сховища з очищенням зображень і посібник щодо батареї для марки вашого телефону.';

  @override
  String get whatsNewSoundTitle => 'Спокійніші звуки';

  @override
  String get whatsNewSoundBody =>
      'Звуки природи стали м’якшими й тихішими, а картки із зображеннями — гарнішими.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Перевірено $date: остання резервна копія відкривається правильно.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Перевірено $date: знайдено пошкоджену резервну копію, її замінено новою.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Перевірено $date: не вдалося відкрити останню резервну копію. Збережіть файл резервної копії самі в налаштуваннях.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Зазвичай ви вчитеся близько $time';
  }

  @override
  String get smartReviewTimeUse => 'Використати';

  @override
  String get widgetNewNote => 'Нова нотатка';

  @override
  String get noteConnections => 'Теги, посилання й завдання';

  @override
  String get navCards => 'Картки';

  @override
  String get studyAnswerWay => 'Як відповідати';

  @override
  String get studyMorePractice => 'Додаткова практика';

  @override
  String get studySessionSettings => 'Налаштування сеансу';

  @override
  String get focusAdjustTitle => 'Ваш сеанс';

  @override
  String get focusPresetsTitle => 'Готові';

  @override
  String get focusPresetStudy => 'Навчання';

  @override
  String get focusPresetDeep => 'Глибока робота';

  @override
  String get focusPresetQuick => 'Швидкий спринт';

  @override
  String get focusPresetReading => 'Читання';

  @override
  String get focusPresetWorkout => 'Раунди тренування';

  @override
  String get focusAdjustMinutes => 'Тривалість фокусу';

  @override
  String get focusAdjustBreak => 'Тривалість перерви';

  @override
  String get focusAdjustRounds => 'Раунди';

  @override
  String get focusRoundsOpen => 'Без обмежень';

  @override
  String focusMinutesShort(String n) {
    return '$n хв';
  }

  @override
  String get focusTapToAdjust => 'Торкніться, щоб змінити час';

  @override
  String get flashArrangeDecks => 'Упорядкувати колоди';

  @override
  String get flashDeckActions => 'Параметри колоди';

  @override
  String get starterBrowse => 'Готові колоди';

  @override
  String get starterBrowseHint => 'Додайте одним дотиком і починайте вчитися';

  @override
  String get dashOpenDecks => 'Відкрити картки';

  @override
  String speechVoiceNumber(String n) {
    return 'Голос $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Чудовий потік. Відпочити $m хв?';
  }

  @override
  String get focusFlowBreakStart => 'Почати перерву';

  @override
  String tasksFinishAt(String time) {
    return 'Почніть зараз — і завершите все до $time';
  }

  @override
  String get focusCalmPacing => 'Спокійний темп';

  @override
  String get focusCalmPacingHint => 'Лише цілі хвилини й кільце, без секунд';

  @override
  String get focusFlipHint => 'Покладіть телефон екраном донизу, щоб почати';

  @override
  String get focusImmersive => 'Режим занурення';

  @override
  String get focusImmersiveBlack => 'Чисто чорний (заощаджує заряд)';

  @override
  String get focusFlipToFocus => 'Переверніть для фокусу';

  @override
  String get focusFlipToFocusHint => 'У режимі занурення: екраном донизу — старт, підняли — пауза';

  @override
  String get guardTitle => 'Захист від відволікань';

  @override
  String get guardSubtitle => 'Призупиняйте застосунки, що відволікають, під час фокусу';

  @override
  String get guardSwitch => 'Призупиняти застосунки, що відволікають';

  @override
  String get guardSwitchHint => 'Під час сеансів фокусу й у години Захисту за часом';

  @override
  String get guardNeedsAccess =>
      'Потрібен перемикач спеціальних можливостей: торкніться, щоб увімкнути';

  @override
  String get guardDisclosureTitle => 'Як працює захист';

  @override
  String get guardDisclosureBody =>
      'Щоб призупиняти вибрані вами застосунки, Deep Focus використовує службу спеціальних можливостей Android і бачить, який застосунок відкрито. Якщо ввімкнено «Закривати Shorts і Reels», вона також перевіряє, чи на екрані плеєр коротких відео.\n\nВона не читає жодного тексту, не зберігає побаченого й нічого нікуди не надсилає: усе лишається на вашому телефоні. Вимкнути її можна будь-коли в налаштуваннях спеціальних можливостей.';

  @override
  String get guardAgree => 'Погодитися й відкрити налаштування';

  @override
  String get guardModeGentle => 'М’який';

  @override
  String get guardModeStrict => 'Суворий';

  @override
  String get guardGentleHint => '5-секундна пауза для дихання, потім вирішуєте ви';

  @override
  String get guardStrictHint => 'Вибрані застосунки закриті до кінця часу фокусу';

  @override
  String get guardApps => 'Застосунки для призупинення';

  @override
  String get guardAppsAllowed => 'Дозволені застосунки';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count застосунку',
      many: '$count застосунків',
      few: '$count застосунки',
      one: '$count застосунок',
      zero: 'Ще нічого не вибрано',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Дозволити лише вибрані застосунки';

  @override
  String get guardAllowlistHint =>
      'Решта застосунків призупиняється; дзвінки, налаштування й клавіатура працюють завжди';

  @override
  String get guardShorts => 'Закривати Shorts і Reels';

  @override
  String get guardShortsHint =>
      'Щоразу, коли захист увімкнено. Без гарантій: ці застосунки часто змінюються';

  @override
  String get guardSchedule => 'Захист за часом';

  @override
  String get guardScheduleHint =>
      'Також захищати у вибрані дні й години, як-от на навчанні чи роботі';

  @override
  String get guardFrom => 'З';

  @override
  String get guardTo => 'До';

  @override
  String get guardSearchApps => 'Пошук застосунків';

  @override
  String get guardNoApps => 'Застосунків не знайдено';

  @override
  String get guardPrivacy =>
      'Працює лише на вашому телефоні: захист бачить, який застосунок відкрито, але ніколи — що в ньому, і нічого не надсилає.';

  @override
  String get guardBreathe => 'Вдих… і видих';

  @override
  String get guardQuestion => 'Вам зараз потрібен цей застосунок?';

  @override
  String get guardBackToFocus => 'Назад до фокусу';

  @override
  String get guardOpenFive => 'Відкрити на 5 хвилин';

  @override
  String get guardStrictBody => 'Цей застосунок призупинено до кінця часу фокусу.';

  @override
  String get guardShortsClosed => 'Короткі відео закриваються, поки захист увімкнено';

  @override
  String get faqGuardQ => 'Як зупинити застосунки, що відволікають, під час фокусу?';

  @override
  String get faqGuardA =>
      'Відкрийте Фокус → налаштування таймера → Захист від відволікань. Виберіть застосунки, а потім «М’який» (5 секунд дихання й питання «Вам зараз потрібен цей застосунок?») або «Суворий» (вони лишаються закритими). Він працює під час сеансів фокусу, а із Захистом за часом — у вибрані дні й години. «Дозволити лише вибрані застосунки» призупиняє все інше; дзвінки, налаштування й клавіатура працюють завжди. Android один раз попросить увімкнути захист у налаштуваннях спеціальних можливостей. Він бачить лише, який застосунок відкрито, і нічого не надсилає.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Переміщено в «$name»';
  }

  @override
  String get notesDragHint => 'Утримуйте нотатку й перетягніть її на блокнот';

  @override
  String get guardReviewCards => 'Краще повторити картки';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'На вас чекають $count картки',
      many: 'На вас чекають $count карток',
      few: 'На вас чекають $count картки',
      one: 'На вас чекає $count картка',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Екстрено: утримуйте 10 секунд';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Утримуйте… $n';
  }

  @override
  String get guardWeekTitle => 'Цей тиждень';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count паузи',
      many: '$count пауз',
      few: '$count паузи',
      one: '$count пауза',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'повернення до фокусу: $count',
      many: 'повернень до фокусу: $count',
      few: 'повернення до фокусу: $count',
      one: 'повернення до фокусу: $count',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Перейменувати слова';

  @override
  String get wordsSubtitle => 'Власне слово для будь-якого тексту в застосунку';

  @override
  String get wordsHint =>
      'Торкніться тексту, щоб змінити його. Ваші слова діють лише для цієї мови й зберігаються в резервних копіях.';

  @override
  String get wordsSearch => 'Пошук текстів';

  @override
  String get wordsChangedOnly => 'Лише змінені';

  @override
  String wordsOriginal(String text) {
    return 'Оригінал: $text';
  }

  @override
  String get wordsReset => 'Повернути оригінал';

  @override
  String get wordsResetAll => 'Скинути всі слова';

  @override
  String get wordsResetAllConfirm => 'Усі тексти цією мовою повернуться до оригіналу.';

  @override
  String get wordsNone => 'Текст не знайдено';

  @override
  String get settingsLanguageSearch => 'Пошук мов';

  @override
  String get settingsLanguageNoMatch => 'Немає відповідної мови';
}
