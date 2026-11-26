// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Галоўная';

  @override
  String get navTasks => 'Задачы';

  @override
  String get navFocus => 'Фокус';

  @override
  String get navCalendar => 'Каляндар';

  @override
  String get navSpaces => 'Прасторы';

  @override
  String get moduleProjects => 'Праекты';

  @override
  String get moduleNotes => 'Нататкі';

  @override
  String get moduleFlashcards => 'Карткі';

  @override
  String get moduleGoals => 'Мэты';

  @override
  String get moduleHabits => 'Звычкі';

  @override
  String get moduleAnalytics => 'Аналітыка';

  @override
  String get moduleSearch => 'Пошук';

  @override
  String get moduleAssistant => 'Памочнік';

  @override
  String get moduleSettings => 'Налады';

  @override
  String get moduleTrash => 'Сметніца';

  @override
  String get actionSave => 'Захаваць';

  @override
  String get actionCancel => 'Скасаваць';

  @override
  String get actionDelete => 'Выдаліць';

  @override
  String get actionEdit => 'Змяніць';

  @override
  String get actionDone => 'Гатова';

  @override
  String get actionAdd => 'Дадаць';

  @override
  String get actionCreate => 'Стварыць';

  @override
  String get actionClose => 'Закрыць';

  @override
  String get actionBack => 'Назад';

  @override
  String get actionUndo => 'Адрабіць';

  @override
  String get actionRestore => 'Аднавіць';

  @override
  String get actionRetry => 'Паўтарыць спробу';

  @override
  String get actionContinue => 'Працягнуць';

  @override
  String get actionSkip => 'Прапусціць';

  @override
  String get actionArchive => 'Архіваваць';

  @override
  String get actionUnarchive => 'Вярнуць з архіва';

  @override
  String get actionPin => 'Замацаваць';

  @override
  String get actionUnpin => 'Адмацаваць';

  @override
  String get actionMore => 'Іншыя параметры';

  @override
  String get actionClear => 'Ачысціць';

  @override
  String get actionSearch => 'Шукаць';

  @override
  String get actionSort => 'Сартаваць';

  @override
  String get actionShare => 'Абагуліць';

  @override
  String get actionImport => 'Імпартаваць';

  @override
  String get actionExport => 'Экспартаваць';

  @override
  String get actionPause => 'Паўза';

  @override
  String get actionResume => 'Працягнуць';

  @override
  String get actionStart => 'Пачаць';

  @override
  String get actionStop => 'Спыніць';

  @override
  String get actionComplete => 'Завяршыць';

  @override
  String get actionDeleteForever => 'Выдаліць назаўсёды';

  @override
  String get actionEmptyTrash => 'Ачысціць сметніцу';

  @override
  String get actionUnlink => 'Адвязаць';

  @override
  String get actionCustomize => 'Наладзіць';

  @override
  String get actionPreview => 'Прагляд';

  @override
  String get actionLog => 'Запісаць прагрэс';

  @override
  String get stateLoading => 'Загрузка…';

  @override
  String get stateSaving => 'Захаванне…';

  @override
  String get stateSaved => 'Захавана';

  @override
  String get stateUnsaved => 'Незахаваныя змены';

  @override
  String get errorGenericTitle => 'Нешта пайшло не так';

  @override
  String get errorGenericMessage => 'Вашы даныя ў бяспецы. Паспрабуйце яшчэ раз.';

  @override
  String get errorLoadFailed => 'Не ўдалося загрузіць гэта змесціва.';

  @override
  String get errorSaveFailed => 'Не ўдалося захаваць. Вашы змены ўсё яшчэ тут.';

  @override
  String get validationRequired => 'Гэта поле абавязковае';

  @override
  String get validationTitleRequired => 'Увядзіце назву';

  @override
  String get validationNameRequired => 'Увядзіце імя';

  @override
  String get validationTooLong => 'Занадта доўга';

  @override
  String get validationEndBeforeStart => 'Канец павінен быць пасля пачатку';

  @override
  String get validationStartAfterDue => 'Дата пачатку павінна быць раней за тэрмін';

  @override
  String get validationPositiveNumber => 'Увядзіце лік большы за нуль';

  @override
  String get validationDependencyCycle => 'Гэта стварыла б цыклічную залежнасць';

  @override
  String get validationInvalidRepeat => 'Гэта правіла паўтарэння несапраўднае';

  @override
  String get deletedItem => 'Перамешчана ў сметніцу';

  @override
  String get untitled => 'Без назвы';

  @override
  String get noProject => 'Без праекта';

  @override
  String get greetingMorning => 'Добрай раніцы';

  @override
  String get greetingAfternoon => 'Добры дзень';

  @override
  String get greetingEvening => 'Добры вечар';

  @override
  String get dashFocusToday => 'Сённяшні фокус';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done з $target';
  }

  @override
  String get dashStartFocus => 'Пачаць фокус';

  @override
  String get dashFocusRunning => 'Ідзе сеанс';

  @override
  String get dashTodayTasks => 'Тэрмін сёння';

  @override
  String get dashAgenda => 'Парадак дня';

  @override
  String get dashHabits => 'Звычкі на сёння';

  @override
  String get dashGoals => 'Мэты';

  @override
  String get dashReview => 'Паўтарэнне';

  @override
  String get dashRecentNotes => 'Нядаўнія нататкі';

  @override
  String get dashInsight => 'Парада';

  @override
  String get dashSeeAll => 'Усе';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карткі для паўтарэння',
      many: '$count картак для паўтарэння',
      few: '$count карткі для паўтарэння',
      one: '$count картка для паўтарэння',
      zero: 'Няма картак для паўтарэння',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Паўтарыць зараз';

  @override
  String get dashCustomizeTitle => 'Раздзелы галоўнага экрана';

  @override
  String get dashCustomizeHint => 'Выберыце, што паказваць на галоўным экране.';

  @override
  String get dashSectionFocus => 'Фокус';

  @override
  String get dashSectionToday => 'Задачы з тэрмінам сёння';

  @override
  String get dashSectionAgenda => 'Парадак дня';

  @override
  String get dashSectionHabits => 'Звычкі';

  @override
  String get dashSectionGoals => 'Мэты';

  @override
  String get dashSectionReview => 'Паўтарэнне картак';

  @override
  String get dashSectionNotes => 'Нядаўнія нататкі';

  @override
  String get dashSectionInsight => 'Парады';

  @override
  String get quickAddTask => 'Новая задача';

  @override
  String get quickAddNote => 'Новая нататка';

  @override
  String get quickAddEvent => 'Новая падзея';

  @override
  String get quickStartFocus => 'Фокус';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'У вас $count пратэрмінаванай задачы. Пачніце з самай важнай.',
      many: 'У вас $count пратэрмінаваных задач. Пачніце з самай важнай.',
      few: 'У вас $count пратэрмінаваныя задачы. Пачніце з самай важнай.',
      one: 'У вас $count пратэрмінаваная задача. Пачніце з самай важнай.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Да дзённай мэты фокусу засталося $minutes хв.';
  }

  @override
  String get insightCardsDue => 'Паўтарыце карткі зараз, пакуль яны свежыя ў памяці.';

  @override
  String get insightAllClear =>
      'Усё па плане. Спланіруйце заўтрашні дзень або зрабіце ўсвядомлены перапынак.';

  @override
  String insightHabitStreak(String habit) {
    return 'Захавайце серыю: «$habit» сёння яшчэ не выканана.';
  }

  @override
  String get focusTitle => 'Фокус';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Таймер';

  @override
  String get focusModeCountUp => 'Секундамер';

  @override
  String get focusModeOpen => 'Свабодны';

  @override
  String get focusPhaseWork => 'Фокус';

  @override
  String get focusPhaseShortBreak => 'Кароткі перапынак';

  @override
  String get focusPhaseLongBreak => 'Доўгі перапынак';

  @override
  String get focusReady => 'Пачынайце, калі будзеце гатовы';

  @override
  String get focusPaused => 'Паўза';

  @override
  String get focusRunning => 'У фокусе';

  @override
  String get focusDuration => 'Працягласць';

  @override
  String get focusLinkTask => 'Прывязаць задачу';

  @override
  String get focusLinkedTask => 'Праца над';

  @override
  String get focusNoTask => 'Задача не прывязана';

  @override
  String focusCycle(int current, int total) {
    return 'Цыкл $current з $total';
  }

  @override
  String get focusSkipBreak => 'Прапусціць перапынак';

  @override
  String get focusStartBreak => 'Пачаць перапынак';

  @override
  String get focusStartNext => 'Пачаць наступны фокус';

  @override
  String get focusSessionComplete => 'Сеанс завершаны';

  @override
  String get focusSessionStopped => 'Сеанс захаваны';

  @override
  String focusSessionSummary(String duration) {
    return 'Вы засяроджваліся $duration.';
  }

  @override
  String get focusAddNote => 'Дадайце нататку пра гэты сеанс';

  @override
  String get focusHistory => 'Гісторыя';

  @override
  String get focusNoHistory => 'Завершаныя сеансы з’явяцца тут';

  @override
  String get focusTargets => 'Мэты';

  @override
  String get focusDailyTarget => 'Дзённая мэта';

  @override
  String get focusWeeklyTarget => 'Тыднёвая мэта';

  @override
  String get focusOutcomeCompleted => 'Завершана';

  @override
  String get focusOutcomeInterrupted => 'Спынена раней';

  @override
  String get focusRecovered => 'Ваш сеанс працягваўся, пакуль праграма была закрыта.';

  @override
  String get focusCompletedWhileAway =>
      'Сеанс скончыўся, пакуль праграма была закрыта, і быў захаваны.';

  @override
  String get focusNotificationsOff =>
      'Апавяшчэнні выключаны. Вы не атрымаеце сігнал, калі сеанс скончыцца.';

  @override
  String get focusBatteryHint =>
      'Некаторыя прылады прыпыняюць праграмы ў фоне. Таймер застаецца дакладным, але сігналы могуць затрымлівацца. Дазвольце неабмежаванае выкарыстанне акумулятара для надзейных сігналаў.';

  @override
  String get focusOpenSettings => 'Адкрыць налады';

  @override
  String get focusStopConfirmTitle => 'Спыніць гэты сеанс?';

  @override
  String get focusStopConfirmMessage => 'Час фокусу да гэтага моманту будзе захаваны.';

  @override
  String get focusDiscard => 'Адхіліць';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes хвіліны',
      many: '$minutes хвілін',
      few: '$minutes хвіліны',
      one: '$minutes хвіліна',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, засталося $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, прайшло $time';
  }

  @override
  String get focusDeleteSession => 'Выдаліць сеанс';

  @override
  String get tasksTitle => 'Задачы';

  @override
  String get tasksViewToday => 'Сёння';

  @override
  String get tasksViewUpcoming => 'Будучыя';

  @override
  String get tasksViewAll => 'Усе';

  @override
  String get tasksViewOverdue => 'Пратэрмінаваныя';

  @override
  String get tasksViewCompleted => 'Выкананыя';

  @override
  String get tasksQuickAddHint => 'Дадаць задачу…';

  @override
  String get tasksEmptyTitle => 'Усё зроблена';

  @override
  String get tasksEmptyMessage => 'Дадайце задачу, каб пачаць будаваць свой дзень.';

  @override
  String get tasksEmptyCompleted => 'Выкананыя задачы з’явяцца тут.';

  @override
  String get taskNew => 'Новая задача';

  @override
  String get taskEdit => 'Змяніць задачу';

  @override
  String get taskTitleLabel => 'Назва';

  @override
  String get taskTitleHint => 'Што трэба зрабіць?';

  @override
  String get taskDescriptionLabel => 'Апісанне';

  @override
  String get taskNotesLabel => 'Нататкі';

  @override
  String get taskPriority => 'Прыярытэт';

  @override
  String get priorityNone => 'Няма';

  @override
  String get priorityLow => 'Нізкі';

  @override
  String get priorityMedium => 'Сярэдні';

  @override
  String get priorityHigh => 'Высокі';

  @override
  String get priorityUrgent => 'Тэрміновы';

  @override
  String get taskDueDate => 'Тэрмін';

  @override
  String get taskStartDate => 'Дата пачатку';

  @override
  String get taskReminder => 'Напамін';

  @override
  String get taskRepeat => 'Паўтарэнне';

  @override
  String get taskProject => 'Праект';

  @override
  String get taskCategory => 'Катэгорыя';

  @override
  String get taskCategoryHint => 'напр. Праца, Дом, Вучоба';

  @override
  String get taskEstimateMinutes => 'Ацэнка (хвіліны)';

  @override
  String get taskTracked => 'Вымераны фокус';

  @override
  String get taskLabels => 'Меткі';

  @override
  String get taskAddLabel => 'Новая метка';

  @override
  String get taskChecklist => 'Спіс праверкі';

  @override
  String get taskAddChecklistItem => 'Дадаць пункт';

  @override
  String get taskSubtasks => 'Падзадачы';

  @override
  String get taskAddSubtask => 'Дадаць падзадачу';

  @override
  String get taskDependencies => 'Блакуецца';

  @override
  String get taskAddDependency => 'Дадаць задачу, якая блакуе';

  @override
  String get taskLinkedNotes => 'Звязаныя нататкі';

  @override
  String get taskSetTime => 'Задаць час';

  @override
  String get taskNoDate => 'Без даты';

  @override
  String get taskCompleted => 'Задача выканана';

  @override
  String get taskNextOccurrence => 'Створаны наступны паўтор';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Пратэрмінавана на $days дня',
      many: 'Пратэрмінавана на $days дзён',
      few: 'Пратэрмінавана на $days дні',
      one: 'Пратэрмінавана на $days дзень',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Пазначыць «$title» як выкананую';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Пазначыць «$title» як невыкананую';
  }

  @override
  String get sortSmart => 'Разумна';

  @override
  String get sortDueDate => 'Тэрмін';

  @override
  String get sortPriority => 'Прыярытэт';

  @override
  String get sortCreated => 'Найноўшыя';

  @override
  String get sortTitle => 'Назва';

  @override
  String get filterAllProjects => 'Усе праекты';

  @override
  String get filterAnyPriority => 'Любы прыярытэт';

  @override
  String get filterTitle => 'Фільтр і сартаванне';

  @override
  String get dateToday => 'Сёння';

  @override
  String get dateTomorrow => 'Заўтра';

  @override
  String get dateYesterday => 'Учора';

  @override
  String get repeatNever => 'Не паўтараецца';

  @override
  String get repeatDaily => 'Кожны дзень';

  @override
  String get repeatWeekdays => 'Кожны будны дзень';

  @override
  String get repeatWeekly => 'Кожны тыдзень';

  @override
  String get repeatMonthly => 'Кожны месяц';

  @override
  String get repeatYearly => 'Кожны год';

  @override
  String get repeatCustom => 'Свой варыянт';

  @override
  String get repeatEvery => 'Паўтараць кожныя';

  @override
  String get repeatOnDays => 'Па днях';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'дня',
      many: 'дзён',
      few: 'дні',
      one: 'дзень',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'тыдня',
      many: 'тыдняў',
      few: 'тыдні',
      one: 'тыдзень',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'месяца',
      many: 'месяцаў',
      few: 'месяцы',
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
      many: 'гадоў',
      few: 'гады',
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
      many: '$count разоў',
      few: '$count разы',
      one: '$count раз',
    );
    return 'Заканчваецца праз $_temp0';
  }

  @override
  String get repeatEndsNever => 'Ніколі не заканчваецца';

  @override
  String get reminderAtTime => 'У час падзеі';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'За $minutes хвіліны',
      many: 'За $minutes хвілін',
      few: 'За $minutes хвіліны',
      one: 'За $minutes хвіліну',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'За $hours гадзіны',
      many: 'За $hours гадзін',
      few: 'За $hours гадзіны',
      one: 'За $hours гадзіну',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => 'За 1 дзень';

  @override
  String get projectsTitle => 'Праекты';

  @override
  String get projectsEmptyTitle => 'Праектаў пакуль няма';

  @override
  String get projectsEmptyMessage => 'Групуйце звязаныя задачы, нататкі і час фокусу.';

  @override
  String get projectNew => 'Новы праект';

  @override
  String get projectEdit => 'Змяніць праект';

  @override
  String get projectName => 'Назва';

  @override
  String get projectDescription => 'Апісанне';

  @override
  String get projectGoal => 'Мэта';

  @override
  String get projectDeadline => 'Канчатковы тэрмін';

  @override
  String get projectColor => 'Колер';

  @override
  String get projectIcon => 'Значок';

  @override
  String get projectProgress => 'Прагрэс';

  @override
  String projectTasksDone(int done, int total) {
    return 'Выканана $done з $total задач';
  }

  @override
  String get projectFocusTime => 'Час фокусу';

  @override
  String get projectArchived => 'Архіўныя праекты';

  @override
  String get projectShowArchived => 'Паказаць архіўныя';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Засталося $days дня',
      many: 'Засталося $days дзён',
      few: 'Засталося $days дні',
      one: 'Застаўся $days дзень',
      zero: 'Тэрмін сёння',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Тэрмін мінуў';

  @override
  String get calendarTitle => 'Каляндар';

  @override
  String get calendarMonth => 'Месяц';

  @override
  String get calendarWeek => 'Тыдзень';

  @override
  String get calendarDay => 'Дзень';

  @override
  String get calendarToday => 'Сёння';

  @override
  String get calendarPrevious => 'Папярэдні';

  @override
  String get calendarNext => 'Наступны';

  @override
  String get calendarNoEvents => 'Нічога не запланавана';

  @override
  String get calendarAllDay => 'Увесь дзень';

  @override
  String get eventNew => 'Новая падзея';

  @override
  String get eventEdit => 'Змяніць падзею';

  @override
  String get eventTitleHint => 'Назва падзеі';

  @override
  String get eventStarts => 'Пачатак';

  @override
  String get eventEnds => 'Канец';

  @override
  String get eventKind => 'Тып';

  @override
  String get eventKindEvent => 'Падзея';

  @override
  String get eventKindTimeBlock => 'Блок часу';

  @override
  String get eventKindFocus => 'Сеанс фокусу';

  @override
  String get eventKindGoal => 'Асабістая мэта';

  @override
  String get eventDescription => 'Падрабязнасці';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Перакрываецца з $count падзеі',
      many: 'Перакрываецца з $count падзеямі',
      few: 'Перакрываецца з $count падзеямі',
      one: 'Перакрываецца з $count падзеяй',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'У гэты дзень ёсць канфлікты ў раскладзе';

  @override
  String get calendarTaskDue => 'Тэрмін задачы';

  @override
  String get calendarDragHint => 'Утрымлівайце і перацягніце падзею, каб перанесці яе';

  @override
  String get calendarRescheduled => 'Падзея перанесена';

  @override
  String get calendarScheduleTask => 'Запланаваць як блок часу';

  @override
  String get notesTitle => 'Нататкі';

  @override
  String get notesViewAll => 'Усе';

  @override
  String get notesViewPinned => 'Замацаваныя';

  @override
  String get notesViewFavorites => 'Абраныя';

  @override
  String get notesViewArchived => 'Архіўныя';

  @override
  String get notesTags => 'Меткі';

  @override
  String get notesNewNotebook => 'Новы блакнот';

  @override
  String get notesNoNotebook => 'Без блакнота';

  @override
  String get notesEmptyTitle => 'Чысты аркуш';

  @override
  String get notesEmptyMessage => 'Запісвайце ідэі, нататкі з сустрэч і веды.';

  @override
  String get noteTitleHint => 'Назва';

  @override
  String get noteBodyHint =>
      'Пачніце пісаць… Выкарыстоўвайце # для метак і [[Назва]] для сувязі нататак.';

  @override
  String get noteFavorite => 'У абранае';

  @override
  String get noteUnfavorite => 'Выдаліць з абранага';

  @override
  String get noteMoveTo => 'Перамясціць у блакнот';

  @override
  String get noteBacklinks => 'Спасылаюцца';

  @override
  String get noteLinkedTasks => 'Звязаныя задачы';

  @override
  String get noteLinkTask => 'Прывязаць задачу';

  @override
  String get noteLinkProject => 'Праект';

  @override
  String get noteFormatHeading => 'Загаловак';

  @override
  String get noteFormatBold => 'Тоўсты';

  @override
  String get noteFormatItalic => 'Курсіў';

  @override
  String get noteFormatList => 'Маркіраваны спіс';

  @override
  String get noteFormatChecklist => 'Спіс праверкі';

  @override
  String get noteFormatLink => 'Спасылка';

  @override
  String noteEdited(String time) {
    return 'Зменена $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count слова',
      many: '$count слоў',
      few: '$count словы',
      one: '$count слова',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Карткі';

  @override
  String get flashEmptyTitle => 'Стварыце першую калоду';

  @override
  String get flashEmptyMessage =>
      'Інтэрвальнае паўтарэнне паказвае кожную картку якраз перад тым, як вы б яе забылі.';

  @override
  String get deckNew => 'Новая калода';

  @override
  String get deckEdit => 'Змяніць калоду';

  @override
  String get deckName => 'Назва калоды';

  @override
  String get deckDescription => 'Апісанне';

  @override
  String get deckDailyNew => 'Новых картак у дзень';

  @override
  String get deckDailyReview => 'Дзённая мэта паўтарэння';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карткі',
      many: '$count картак',
      few: '$count карткі',
      one: '$count картка',
      zero: 'Няма картак',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Да паўтарэння';

  @override
  String get deckNewCards => 'Новыя';

  @override
  String get deckMature => 'Вывучаныя';

  @override
  String get deckStudy => 'Вучыць';

  @override
  String get deckNothingDue => 'Зараз няма чаго паўтараць. Вярніцеся пазней.';

  @override
  String get deckEmptyCards => 'Дадайце карткі, каб пачаць вучыцца.';

  @override
  String get cardNew => 'Новая картка';

  @override
  String get cardEdit => 'Змяніць картку';

  @override
  String get cardFront => 'Пярэдні бок';

  @override
  String get cardBack => 'Адваротны бок';

  @override
  String get cardFrontHint => 'Пытанне або тэрмін';

  @override
  String get cardBackHint => 'Адказ або азначэнне';

  @override
  String get cardTags => 'Меткі';

  @override
  String get cardAddAnother => 'Захаваць і дадаць яшчэ';

  @override
  String get reviewShowAnswer => 'Паказаць адказ';

  @override
  String get reviewAgain => 'Зноў';

  @override
  String get reviewHard => 'Цяжка';

  @override
  String get reviewGood => 'Добра';

  @override
  String get reviewEasy => 'Лёгка';

  @override
  String reviewProgress(int done, int total) {
    return '$done з $total';
  }

  @override
  String get reviewFinishedTitle => 'Сеанс завершаны';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Вы паўтарылі $count карткі.',
      many: 'Вы паўтарылі $count картак.',
      few: 'Вы паўтарылі $count карткі.',
      one: 'Вы паўтарылі $count картку.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Націсніце, каб убачыць адказ';

  @override
  String get importCardsTitle => 'Імпарт картак';

  @override
  String get importCardsHint =>
      'Устаўце па адной картцы ў радок (пярэдні і адваротны бок праз табуляцыю або кропку з коскай) або выберыце файл: Excel (.xlsx), CSV, калоду Anki (.apkg) або экспартаваную калоду.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Імпартавана $count карткі',
      many: 'Імпартавана $count картак',
      few: 'Імпартавана $count карткі',
      one: 'Імпартавана $count картка',
      zero: 'Ніводная картка не імпартавана',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Не ўдалося імпартаваць гэта змесціва.';

  @override
  String get exportCopied => 'Калода экспартавана';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хв',
      many: '$count хв',
      few: '$count хв',
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
      many: '$count дзён',
      few: '$count дні',
      one: '$count дзень',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Мэты';

  @override
  String get goalsEmptyTitle => 'Імкніцеся да чагосьці';

  @override
  String get goalsEmptyMessage =>
      'Ставіце дзённыя, тыднёвыя, месячныя або доўгатэрміновыя мэты і сачыце за рэальным прагрэсам.';

  @override
  String get goalNew => 'Новая мэта';

  @override
  String get goalEdit => 'Змяніць мэту';

  @override
  String get goalTitleHint => 'Чаго вы хочаце дасягнуць?';

  @override
  String get goalPeriod => 'Перыяд';

  @override
  String get goalPeriodDaily => 'Штодзённая';

  @override
  String get goalPeriodWeekly => 'Штотыднёвая';

  @override
  String get goalPeriodMonthly => 'Штомесячная';

  @override
  String get goalPeriodLongTerm => 'Доўгатэрміновая';

  @override
  String get goalTarget => 'Мэтавае значэнне';

  @override
  String get goalUnit => 'Адзінка';

  @override
  String get goalUnitHint => 'напр. старонкі, км, гадзіны';

  @override
  String get goalStatusActive => 'Актыўная';

  @override
  String get goalStatusPaused => 'Прыпынена';

  @override
  String get goalStatusAchieved => 'Дасягнута';

  @override
  String get goalPause => 'Прыпыніць мэту';

  @override
  String get goalResume => 'Аднавіць мэту';

  @override
  String get goalMarkAchieved => 'Пазначыць як дасягнутую';

  @override
  String goalProgressOf(String current, String target) {
    return '$current з $target';
  }

  @override
  String get goalLogAmount => 'Колькасць';

  @override
  String get goalLogNote => 'Нататка (неабавязкова)';

  @override
  String get goalHistory => 'Гісторыя';

  @override
  String get goalNoHistory => 'Запісаны прагрэс з’явіцца тут';

  @override
  String get goalLinkedTasks => 'Звязаныя задачы';

  @override
  String get goalLinkedTasksHint => 'Кожная выкананая звязаная задача лічыцца як 1 для гэтай мэты.';

  @override
  String get goalThisPeriod => 'Гэты перыяд';

  @override
  String get habitsTitle => 'Звычкі';

  @override
  String get habitsEmptyTitle => 'Маленькія крокі кожны дзень';

  @override
  String get habitsEmptyMessage => 'Стварыце звычку і адзначайце яе, калі выконваеце.';

  @override
  String get habitNew => 'Новая звычка';

  @override
  String get habitEdit => 'Змяніць звычку';

  @override
  String get habitNameHint => 'напр. Прачытаць 20 старонак';

  @override
  String get habitDays => 'Расклад';

  @override
  String get habitEveryDay => 'Кожны дзень';

  @override
  String get habitTargetPerDay => 'Разоў у дзень';

  @override
  String get habitReminder => 'Штодзённы напамін';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Серыя $count дня',
      many: 'Серыя $count дзён',
      few: 'Серыя $count дні',
      one: 'Серыя $count дзень',
      zero: 'Няма серыі',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Лепшая серыя';

  @override
  String get habitCurrentStreak => 'Бягучая серыя';

  @override
  String get habitConsistency => 'Пастаянства';

  @override
  String get habitLast90 => 'Апошнія 90 дзён';

  @override
  String get habitPaused => 'Прыпынена';

  @override
  String get habitPause => 'Прыпыніць звычку';

  @override
  String get habitResume => 'Аднавіць звычку';

  @override
  String get habitDoneToday => 'Выканана сёння';

  @override
  String habitCountToday(int count, int target) {
    return 'Сёння $count з $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Адзначыць «$name»';
  }

  @override
  String get habitNotScheduledToday => 'Сёння не запланавана';

  @override
  String get analyticsTitle => 'Аналітыка';

  @override
  String get rangeWeek => '7 дзён';

  @override
  String get rangeMonth => '30 дзён';

  @override
  String get rangeQuarter => '90 дзён';

  @override
  String get statFocusTime => 'Час фокусу';

  @override
  String get statSessions => 'Сеансы';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return 'Завершана: $completed · Спынена раней: $interrupted';
  }

  @override
  String get statTasksDone => 'Выкананыя задачы';

  @override
  String get statCompletionRate => 'Выкананне ў тэрмін';

  @override
  String get statHabitConsistency => 'Пастаянства звычак';

  @override
  String get statRetention => 'Запамінанне картак';

  @override
  String get statReviews => 'Паўтарэнні';

  @override
  String get statActiveGoals => 'Актыўныя мэты';

  @override
  String get statEstimated => 'Ацэначна выкананая праца';

  @override
  String get statEstimatedNote => 'Паводле вашых ацэнак, а не вымеранага часу';

  @override
  String get statMeasuredNote => 'Вымерана па сеансах фокусу';

  @override
  String get chartFocusByDay => 'Хвіліны фокусу ў дзень';

  @override
  String get chartTasksByDay => 'Выкананыя задачы ў дзень';

  @override
  String get chartTimeByProject => 'Час па праектах';

  @override
  String get chartProjectProgress => 'Прагрэс праектаў';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: усяго $total, лепшы дзень $best';
  }

  @override
  String get analyticsNoData => 'Пакуль недастаткова даных';

  @override
  String get analyticsUnassigned => 'Без праекта';

  @override
  String get searchHint => 'Шукаць усюды…';

  @override
  String get searchRecent => 'Нядаўнія пошукі';

  @override
  String get searchClearRecent => 'Ачысціць нядаўнія пошукі';

  @override
  String searchNoResults(String query) {
    return 'Па запыце «$query» нічога не знойдзена';
  }

  @override
  String get searchStartTyping =>
      'Шукайце сярод задач, нататак, картак, мэт, падзей і іншага. Пошук застаецца на гэтай прыладзе.';

  @override
  String get searchCatTask => 'Задачы';

  @override
  String get searchCatProject => 'Праекты';

  @override
  String get searchCatNote => 'Нататкі';

  @override
  String get searchCatFlashcard => 'Карткі';

  @override
  String get searchCatDeck => 'Калоды';

  @override
  String get searchCatGoal => 'Мэты';

  @override
  String get searchCatHabit => 'Звычкі';

  @override
  String get searchCatEvent => 'Падзеі';

  @override
  String get searchCatSession => 'Сеансы';

  @override
  String get searchAll => 'Усе';

  @override
  String get assistantTitle => 'Памочнік';

  @override
  String get assistantIntro =>
      'Дапамога з планаваннем, якая працуе на вашай прыладзе. Пры жаданні падключыце выбраны вамі ШІ-сэрвіс для зводак і генерацыі.';

  @override
  String get assistantOnDevice => 'На прыладзе';

  @override
  String get assistantCloud => 'ШІ-сэрвіс';

  @override
  String get assistantPlanDay => 'Спланаваць мой дзень';

  @override
  String get assistantPlanDayDesc =>
      'Упарадкоўвае адкрытыя задачы па тэрміновасці, прыярытэце і ацэнцы і ўпісвае іх паміж вашымі падзеямі.';

  @override
  String get assistantExtractTasks => 'Вылучыць задачы з нататкі';

  @override
  String get assistantExtractTasksDesc =>
      'Знаходзіць у нататцы пункты спіса праверкі і радкі з дзеяннямі і ператварае іх у задачы.';

  @override
  String get assistantMakeCards => 'Зрабіць карткі з нататкі';

  @override
  String get assistantMakeCardsDesc =>
      'Ператварае радкі «тэрмін: азначэнне» і пытанне/адказ у карткі.';

  @override
  String get assistantSummarize => 'Скараціць нататку';

  @override
  String get assistantSummarizeDesc =>
      'Патрэбны ШІ-сэрвіс. Нататка адпраўляецца толькі пасля вашага пацвярджэння.';

  @override
  String get assistantWorkload => 'Агляд нагрузкі';

  @override
  String get assistantWorkloadDesc =>
      'Параўноўвае ацэначную працу з вашым вольным часам на гэтым тыдні.';

  @override
  String get assistantPlanEmpty =>
      'Няма адкрытых задач для планавання. Атрымлівайце асалоду ад свабоды.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Вольны час для фокусу сёння: $time';
  }

  @override
  String get assistantPlanOverflow => 'Гэтыя могуць сёння не ўмясціцца:';

  @override
  String get assistantChooseNote => 'Выберыце нататку';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Знойдзена $count задачы',
      many: 'Знойдзена $count задач',
      few: 'Знойдзена $count задачы',
      one: 'Знойдзена $count задача',
      zero: 'У гэтай нататцы задач не знойдзена',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Знойдзена $count карткі',
      many: 'Знойдзена $count картак',
      few: 'Знойдзена $count карткі',
      one: 'Знойдзена $count картка',
      zero: 'У гэтай нататцы картак не знойдзена',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Выберыце калоду';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Ацэначная праца: $estimated. Вольны час: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Вы запланавалі больш, чым маеце часу. Падумайце пра перанос задач з меншым прыярытэтам.';

  @override
  String get assistantWorkloadOk => 'Ваш план умяшчаецца ў даступны час.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count адкрытай задачы без ацэнкі.',
      many: '$count адкрытых задач без ацэнкі.',
      few: '$count адкрытыя задачы без ацэнкі.',
      one: '$count адкрытая задача без ацэнкі.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'ШІ-сэрвіс';

  @override
  String get assistantProviderOff =>
      'Сэрвіс не падключаны. Інструменты на прыладзе працуюць і далей.';

  @override
  String assistantProviderOn(String host) {
    return 'Падключана да $host';
  }

  @override
  String get assistantEndpoint => 'Канчатковы пункт API (HTTPS)';

  @override
  String get assistantModel => 'Мадэль';

  @override
  String get assistantApiKey => 'Ключ API';

  @override
  String get assistantApiKeyStored => 'Надзейна захоўваецца на гэтай прыладзе';

  @override
  String get assistantHttpsOnly => 'Дазволены толькі канчатковыя пункты HTTPS';

  @override
  String get assistantConsentTitle => 'Адправіць гэта змесціва вашаму ШІ-сэрвісу?';

  @override
  String assistantConsentBody(String host) {
    return 'Выбраны тэкст нататкі пакіне гэту прыладу і будзе апрацаваны $host. Больш нічога не адпраўляецца.';
  }

  @override
  String get assistantConsentAlways => 'Больш не пытаць для гэтага сэрвісу';

  @override
  String get assistantSend => 'Адправіць';

  @override
  String get assistantUnavailable => 'Не ўдалося звязацца з ШІ-сэрвісам. Паспрабуйце пазней.';

  @override
  String get assistantDisabledTitle => 'Памочнік выключаны';

  @override
  String get assistantDisabledMessage =>
      'Уключыце яго, каб карыстацца інструментамі планавання. Ніякія даныя не пакідаюць прыладу, калі вы не падключыце сэрвіс і не пацвердзіце кожны запыт.';

  @override
  String get assistantSummaryTitle => 'Зводка';

  @override
  String get assistantRemoveProvider => 'Выдаліць сэрвіс';

  @override
  String get settingsTitle => 'Налады';

  @override
  String get settingsGeneral => 'Агульныя';

  @override
  String get settingsLanguage => 'Мова';

  @override
  String get settingsLanguageSystem => 'Мова прылады';

  @override
  String get settingsAppearance => 'Выгляд';

  @override
  String get settingsTheme => 'Тэма';

  @override
  String get themeLight => 'Светлая';

  @override
  String get themeDark => 'Цёмная';

  @override
  String get themeSystem => 'Сістэмная';

  @override
  String get settingsReduceMotion => 'Менш руху';

  @override
  String get settingsReduceMotionDesc => 'Мінімум анімацый і рухомых фонаў';

  @override
  String get settingsFocus => 'Таймер фокусу';

  @override
  String get settingsWorkLength => 'Працягласць фокусу';

  @override
  String get settingsShortBreak => 'Кароткі перапынак';

  @override
  String get settingsLongBreak => 'Доўгі перапынак';

  @override
  String get settingsLongBreakEvery => 'Доўгі перапынак пасля';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сеанса',
      many: '$count сеансаў',
      few: '$count сеансаў',
      one: '$count сеанса',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Пачынаць перапынкі аўтаматычна';

  @override
  String get settingsSound => 'Гук завяршэння';

  @override
  String get settingsDailyFocusTarget => 'Дзённая мэта фокусу';

  @override
  String get settingsWeeklyFocusTarget => 'Тыднёвая мэта фокусу';

  @override
  String get settingsNotifications => 'Апавяшчэнні';

  @override
  String get settingsNotificationsEnable => 'Дазволіць напаміны';

  @override
  String get settingsQuietHours => 'Ціхія гадзіны';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Напаміны пра звычкі, мэты і паўтарэнне выключаны з $start да $end';
  }

  @override
  String get settingsReviewReminder => 'Напамін пра паўтарэнне картак';

  @override
  String get settingsPermissionDenied => 'Апавяшчэнні заблакіраваны ў наладах сістэмы.';

  @override
  String get settingsPrivacy => 'Прыватнасць і даныя';

  @override
  String get settingsPrivacyStatement =>
      'Вашы даныя захоўваюцца толькі на гэтай прыладзе і зашыфраваны. Няма ўліковага запісу, аналітыкі і адсочвання.';

  @override
  String get settingsBackup => 'Стварыць зашыфраваную рэзервовую копію';

  @override
  String get settingsBackupDesc => 'Абаронена паролем, які вы выбіраеце';

  @override
  String get settingsRestore => 'Аднавіць з рэзервовай копіі';

  @override
  String get settingsRestoreDesc => 'Замяняе ўсе даныя на гэтай прыладзе';

  @override
  String get settingsErase => 'Сцерці ўсе даныя';

  @override
  String get settingsEraseDesc => 'Назаўсёды выдаліць усё на гэтай прыладзе';

  @override
  String get settingsEraseConfirmTitle => 'Сцерці ўсе даныя?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Усе задачы, нататкі, карткі, мэты, звычкі, падзеі і сеансы будуць выдалены назаўсёды. Увядзіце $word для пацвярджэння.';
  }

  @override
  String get settingsEraseWord => 'СЦЕРЦІ';

  @override
  String get settingsErased => 'Усе даныя сцёрты';

  @override
  String get backupPassword => 'Пароль рэзервовай копіі';

  @override
  String get backupPasswordConfirm => 'Пацвердзіце пароль';

  @override
  String backupPasswordHint(int count) {
    return 'Не менш за $count сімвалаў. Калі страціце, аднавіць яго немагчыма.';
  }

  @override
  String get backupPasswordMismatch => 'Паролі не супадаюць';

  @override
  String get backupPasswordShort => 'Пароль занадта кароткі';

  @override
  String get backupCreating => 'Шыфраванне рэзервовай копіі…';

  @override
  String get backupCreated => 'Рэзервовая копія гатовая да захавання';

  @override
  String get backupRestoring => 'Праверка і аднаўленне…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Адноўлена $count элемента',
      many: 'Адноўлена $count элементаў',
      few: 'Адноўлена $count элементы',
      one: 'Адноўлены $count элемент',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Няправільны пароль або файл быў зменены.';

  @override
  String get backupNotABackup => 'Гэты файл не з’яўляецца рэзервовай копіяй Deep Focus.';

  @override
  String get backupCorrupted => 'Файл рэзервовай копіі пашкоджаны.';

  @override
  String get backupNewer =>
      'Гэта рэзервовая копія створана навейшай версіяй праграмы. Спачатку абнавіце праграму.';

  @override
  String get backupRestoreConfirmTitle => 'Замяніць усе даныя?';

  @override
  String get backupRestoreConfirmBody =>
      'Усё, што зараз ёсць на гэтай прыладзе, будзе заменена рэзервовай копіяй. Калі аднаўленне не ўдасца, нічога не зменіцца.';

  @override
  String get settingsAbout => 'Пра праграму';

  @override
  String settingsVersion(String version) {
    return 'Версія $version';
  }

  @override
  String get settingsLicenses => 'Ліцэнзіі адкрытага кода';

  @override
  String get settingsAssistant => 'Памочнік';

  @override
  String get settingsAssistantEnable => 'Уключыць памочніка';

  @override
  String get settingsDashboard => 'Раздзелы галоўнай';

  @override
  String get settingsTrash => 'Сметніца';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes хв';
  }

  @override
  String get trashEmpty => 'Сметніца пустая';

  @override
  String get trashHint => 'Выдаленыя элементы застаюцца тут, пакуль вы іх не выдаліце.';

  @override
  String get trashTasks => 'Задачы';

  @override
  String get trashNotes => 'Нататкі';

  @override
  String get onboardWelcomeTitle => 'Вітаем у вашай прасторы будучыні';

  @override
  String get onboardWelcomeBody =>
      'Задачы, фокус, каляндар, нататкі, карткі, мэты і звычкі — разам, прыгожа і проста.';

  @override
  String get onboardPrivateTitle => 'Прыватнасць па задуме';

  @override
  String get onboardPrivateBody =>
      'Усё застаецца на гэтай прыладзе, у зашыфраваным выглядзе. Без уліковага запісу. Без адсочвання. Кіруеце вы.';

  @override
  String get onboardLanguageTitle => 'Выберыце мову';

  @override
  String get onboardNotifTitle => 'Мяккія напаміны';

  @override
  String get onboardNotifBody =>
      'Дазвольце апавяшчэнні для напамінаў пра задачы і сігналаў фокусу. Гэта можна змяніць у любы час.';

  @override
  String get onboardGetStarted => 'Пачаць';

  @override
  String onboardStep(int current, int total) {
    return 'Крок $current з $total';
  }

  @override
  String get notifChannelReminders => 'Напаміны';

  @override
  String get notifChannelRemindersDesc => 'Напаміны пра задачы, падзеі, звычкі і мэты';

  @override
  String get notifChannelFocus => 'Таймер фокусу';

  @override
  String get notifChannelFocusDesc => 'Сігналы, калі сеанс фокусу або перапынак скончыцца';

  @override
  String get notifTaskTitle => 'Напамін пра задачу';

  @override
  String get notifEventTitle => 'Блізкая падзея';

  @override
  String notifEventBody(String title, String time) {
    return '$title у $time';
  }

  @override
  String get notifFocusDoneTitle => 'Сеанс фокусу завершаны';

  @override
  String get notifFocusDoneBody => 'Выдатная праца. Час для перапынку.';

  @override
  String get notifBreakDoneTitle => 'Перапынак скончыўся';

  @override
  String get notifBreakDoneBody => 'Гатовы да наступнага сеанса фокусу?';

  @override
  String get notifHabitTitle => 'Напамін пра звычку';

  @override
  String get notifReviewTitle => 'Карткі гатовыя';

  @override
  String get notifReviewBody => 'Кароткае паўтарэнне трымае памяць моцнай.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours г $minutes хв';
  }

  @override
  String durationHours(int hours) {
    return '$hours г';
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
  String get weekdaysShort => 'П,А,С,Ч,П,С,Н';

  @override
  String a11yProgress(int value) {
    return 'Прагрэс $value працэнтаў';
  }

  @override
  String a11yPriority(String level) {
    return 'Прыярытэт: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Колер $index';
  }

  @override
  String get analyticsRangeLabel => 'Перыяд';

  @override
  String get analyticsRefresh => 'Абнавіць';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Своечасова выканана $done з $total задач з тэрмінам';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Выканана $done з $total задач';
  }

  @override
  String get analyticsNoProjects => 'Няма актыўных праектаў';

  @override
  String get analyticsNoFocus => 'У гэтым перыядзе няма сеансаў фокусу';

  @override
  String get analyticsHabitsNone => 'Няма актыўных звычак';

  @override
  String get analyticsRetentionNote => 'Доля вывучаных картак, якія вы запомнілі';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Вольны час лічыцца з $start да $end у працоўныя дні ($days) за вылікам падзей з часам. Ацэначная праца — гэта сума ацэнак адкрытых задач з тэрмінам у бліжэйшыя 7 дзён.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Панядзелак–пятніца';

  @override
  String get assistantWorkdaysSunThu => 'Нядзеля–чацвер';

  @override
  String get assistantWorkloadDayOff => 'Выхадны';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return 'Запланавана $estimated · вольна $free';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Запланавана ад гэтага моманту да $end з улікам сённяшніх падзей. Спачатку пратэрмінаваныя задачы, потым прыярытэт, тэрмін і ацэнка.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Запланаваць як блокі часу';

  @override
  String get assistantScheduleConfirmTitle => 'Дадаць блокі часу ў каляндар?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'У сённяшні каляндар будзе дададзена $count блока часу.',
      many: 'У сённяшні каляндар будзе дададзена $count блокаў часу.',
      few: 'У сённяшні каляндар будуць дададзены $count блокі часу.',
      one: 'У сённяшні каляндар будзе дададзены $count блок часу.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Дададзена $count блока часу',
      many: 'Дададзена $count блокаў часу',
      few: 'Дададзены $count блокі часу',
      one: 'Дададзены $count блок часу',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Ужо ў вашым календары';

  @override
  String get assistantPlanTimeline => 'Умяшчаецца сёння';

  @override
  String get assistantNoEstimate => 'Дадайце ацэнку, каб спланаваць іх';

  @override
  String get assistantNoNotes => 'Нататак пакуль няма. Спачатку напішыце нататку.';

  @override
  String get assistantNoteEmpty => 'Гэта нататка пустая.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Створана $count задачы',
      many: 'Створана $count задач',
      few: 'Створана $count задачы',
      one: 'Створана $count задача',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Створана $count карткі',
      many: 'Створана $count картак',
      few: 'Створана $count карткі',
      one: 'Створана $count картка',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Стварыць $count',
      many: 'Стварыць $count',
      few: 'Стварыць $count',
      one: 'Стварыць $count',
      zero: 'Нічога не выбрана',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Распазнаюцца: неадзначаныя сцяжкі «- [ ]» і радкі, што пачынаюцца з TODO: або To do:';

  @override
  String get assistantCardsHint =>
      'Распазнаюцца: «тэрмін: азначэнне», «тэрмін — азначэнне» і пары радкоў Q:/A:';

  @override
  String get assistantProviderHint =>
      'Выкарыстоўвайце любы сэрвіс, сумяшчальны з OpenAI. Ключ застаецца ў абароненым сховішчы гэтай прылады і ніколі не трапляе ў рэзервовыя копіі.';

  @override
  String get assistantEndpointHelp => 'Напрыклад, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Пакіньце пустым, каб захаваць ранейшы ключ';

  @override
  String get assistantApiKeyRequired => 'Увядзіце ключ API';

  @override
  String get assistantProviderSaved => 'Сэрвіс захаваны';

  @override
  String get assistantProviderRemoved => 'Сэрвіс выдалены, ключ сцёрты';

  @override
  String get assistantRemoveProviderConfirm =>
      'Выдаліць сэрвіс і сцерці захаваны ключ API з гэтай прылады?';

  @override
  String get assistantAskEveryTime => 'Пытаць перад кожным запытам';

  @override
  String get assistantSummarizing => 'Ствараецца зводка…';

  @override
  String assistantSummaryNote(String host) {
    return 'Створана $host. Праверце, перш чым спадзявацца на гэта.';
  }

  @override
  String get assistantCopy => 'Капіраваць';

  @override
  String get assistantCopied => 'Скапіравана';

  @override
  String get assistantConfigure => 'Наладзіць сэрвіс';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Усе падзеі гэтай серыі перанесены';

  @override
  String get calendarEventReminder => 'Напамін';

  @override
  String get calendarEventRepeat => 'Паўтарэнне';

  @override
  String get calendarEventColor => 'Колер';

  @override
  String get calendarDefaultColor => 'Колер тыпу';

  @override
  String get calendarEventLinkedTask => 'Звязаная задача';

  @override
  String get calendarEventNoTask => 'Няма звязанай задачы';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count падзеі',
      many: '$count падзей',
      few: '$count падзеі',
      one: '$count падзея',
      zero: 'Няма падзей',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачы з тэрмінам',
      many: '$count задач з тэрмінам',
      few: '$count задачы з тэрмінам',
      one: '$count задача з тэрмінам',
      zero: 'няма задач з тэрмінам',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Дадайце падзею або блок часу, каб спланаваць гэты дзень.';

  @override
  String get calendarNow => 'Бягучы час';

  @override
  String get calendarRecurring => 'Паўтараецца';

  @override
  String get calendarEventNotFound => 'Гэтай падзеі больш няма';

  @override
  String get calendarEventLocalTime => 'Час паказваецца ў часавым поясе прылады';

  @override
  String get calendarEventDeleted => 'Падзея перамешчана ў сметніцу';

  @override
  String get calendarConflictMarker => 'Перакрываецца з іншай падзеяй';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Змены прымяняюцца да ўсіх падзей гэтай серыі';

  @override
  String get calendarDragHintSeries => 'Перацягванне паўторнай падзеі пераносіць усю серыю';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, тэрмін задачы';
  }

  @override
  String get startupErrorTitle => 'Не ўдалося адкрыць вашы даныя';

  @override
  String get startupErrorLocked =>
      'Ключ шыфравання даных гэтай прылады недаступны. Нічога не выдалена. Часта дапамагае перазапуск прылады. Калі вы нядаўна аднаўлялі прыладу, аднавіце даныя з зашыфраванай рэзервовай копіі.';

  @override
  String get startupErrorCipher =>
      'Гэта прылада не падтрымлівае зашыфраванае сховішча, патрэбнае праграме. Нічога не захавана без шыфравання.';

  @override
  String get startupErrorRetry => 'Паўтарыць спробу';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карткі чакаюць паўтарэння',
      many: '$count картак чакаюць паўтарэння',
      few: '$count карткі чакаюць паўтарэння',
      one: '$count картка чакае паўтарэння',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return 'Да паўтарэння: $count';
  }

  @override
  String flashcardsNewCount(int count) {
    return 'Новых: $count';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Вывучаныя карткі: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Увядзіце 0 або больш';

  @override
  String get flashcardsSearchCards => 'Пошук картак';

  @override
  String get flashcardsSearchEmpty => 'Няма картак па вашым запыце';

  @override
  String get flashcardsCardAdded => 'Картка дададзена';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Паўтарэнне $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Скапіраваць у буфер абмену';

  @override
  String get flashcardsExportTitle => 'Экспарт калоды';

  @override
  String get flashcardsDeleteDeck => 'Выдаліць калоду';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, наступнае паўтарэнне праз $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Пытанне: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Адказ: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Паказаць пытанне';

  @override
  String get flashcardsImportField => 'Карткі для імпарту';

  @override
  String get flashcardsNothingToStudy => 'Няма чаго вучыць';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карткі гатовыя да вывучэння',
      many: '$count картак гатовыя да вывучэння',
      few: '$count карткі гатовыя да вывучэння',
      one: '$count картка гатовая да вывучэння',
      zero: 'Няма гатовых картак',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Па ацэнках';

  @override
  String get flashcardsDeckNotFound => 'Гэта калода больш недаступная.';

  @override
  String get focusSessionDeleted => 'Сеанс выдалены';

  @override
  String get focusDeleteConfirm =>
      'Выдаліць гэты сеанс з гісторыі? Яго час больш не будзе ўлічвацца ў вашых мэтах.';

  @override
  String get focusUnlinkTask => 'Адвязаць задачу';

  @override
  String get focusNoteHint => 'Над чым вы працавалі?';

  @override
  String get focusTargetCaption => 'Вымерана па захаваных сеансах';

  @override
  String get focusModeLabel => 'Рэжым таймера';

  @override
  String focusUpNext(String phase) {
    return 'Далей: $phase';
  }

  @override
  String get focusStopwatchHint => 'Лічыць уперад, пакуль вы не спыніце.';

  @override
  String get focusOpenHint => 'Без абмежавання часу. Спыніце, калі скончыце.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Напаміны выключаны ў наладах. Вы не атрымаеце сігнал, калі сеанс скончыцца.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Усе';

  @override
  String get goalsFilterPeriod => 'Фільтр перыяду';

  @override
  String get goalsFilterStatus => 'Фільтр стану';

  @override
  String get goalsEmptyFiltered => 'Няма мэт для гэтага фільтра';

  @override
  String goalsDueOn(String date) {
    return 'Тэрмін $date';
  }

  @override
  String get goalsDeadline => 'Тэрмін (неабавязкова)';

  @override
  String get goalsNoDeadline => 'Без тэрміну';

  @override
  String get goalsSetDeadline => 'Задаць тэрмін';

  @override
  String get goalsRemoveDeadline => 'Выдаліць тэрмін';

  @override
  String get goalsDescription => 'Апісанне (неабавязкова)';

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
  String get goalsReached => 'Мэта дасягнута';

  @override
  String get goalsLogged => 'Прагрэс запісаны';

  @override
  String get goalsEntryDeleted => 'Запіс выдалены';

  @override
  String get goalsDeleteEntry => 'Выдаліць запіс';

  @override
  String get goalsDeleted => 'Мэта выдалена';

  @override
  String get goalsMarkActive => 'Пазначыць як актыўную';

  @override
  String get goalsNotFound => 'Гэта мэта больш недаступная';

  @override
  String get goalsLinkTask => 'Прывязаць задачу';

  @override
  String get goalsNoLinkedTasks => 'Звязаных задач пакуль няма';

  @override
  String get goalsUnlinkTask => 'Адвязаць задачу';

  @override
  String get goalsTaskOpen => 'Яшчэ не выканана';

  @override
  String get goalsTaskLinked => 'Задача прывязана';

  @override
  String get goalsTaskUnlinked => 'Задача адвязана';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count выкананай звязанай задачы',
      many: '$count выкананых звязаных задач',
      few: '$count выкананыя звязаныя задачы',
      one: '$count выкананая звязаная задача',
    );
    return 'Улічваецца $_temp0 за гэты перыяд';
  }

  @override
  String get goalsHistoryAllTime =>
      'Запісы з ранейшых перыядаў захоўваюцца тут, але ўлічваюцца толькі ў сваім перыядзе.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Сёння выканана $done з $total';
  }

  @override
  String get habitsNothingToday => 'На сёння звычак не запланавана';

  @override
  String get habitsDecrease => 'Прыбраць адну адзнаку';

  @override
  String get habitsResetToday => 'Скінуць сёння';

  @override
  String get habitsCheckInHint => 'Утрымлівайце, каб змяніць';

  @override
  String get habitsName => 'Назва';

  @override
  String get habitsColor => 'Колер';

  @override
  String get habitsValidationDays => 'Выберыце хаця б адзін дзень';

  @override
  String habitsReminderAt(String time) {
    return 'Кожны дзень у $time';
  }

  @override
  String get habitsSetReminder => 'Задаць час напаміну';

  @override
  String get habitsRemoveReminder => 'Выдаліць напамін';

  @override
  String get habitsReminderNote =>
      'Напаміны з’яўляюцца ў запланаваныя дні, калі апавяшчэнні дазволены.';

  @override
  String get habitsArchived => 'Звычка архівавана';

  @override
  String get habitsNotFound => 'Гэта звычка больш недаступная';

  @override
  String get habitsLast30 => 'Апошнія 30 дзён';

  @override
  String get habitsConsistencyNone => 'Пакуль недастаткова даных';

  @override
  String get habitsCalendar => 'Гісторыя адзнак';

  @override
  String get habitsCalendarHint => 'Націсніце на дзень, каб выправіць яго.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count з $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Адзнакі за апошнія 90 дзён. Пастаянства $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Адзнакі за апошнія 90 дзён. Пакуль недастаткова даных.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дзён',
      few: '$count дні',
      one: '$count дзень',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Дні на паўзе не ўплываюць на вашу серыю.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Архіваваць звычку';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count раза ў дзень',
      many: '$count разоў у дзень',
      few: '$count разы ў дзень',
      one: '$count раз у дзень',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Іншыя нататкі';

  @override
  String get notesAllNotebooks => 'Усе блакноты';

  @override
  String get notesNotebookName => 'Назва блакнота';

  @override
  String get notesNotebookColor => 'Колер';

  @override
  String get notesDeleteNotebook => 'Выдаліць блакнот';

  @override
  String get notesDeleteNotebookMessage =>
      'Блакнот выдаляецца. Яго нататкі захоўваюцца і паказваюцца ў раздзеле «Усе блакноты».';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Замацоўвайце важныя нататкі, каб яны заставаліся ўверсе.';

  @override
  String get notesEmptyFavorites => 'Тут з’яўляюцца нататкі, пазначаныя як абраныя.';

  @override
  String get notesEmptyArchived => 'Тут з’яўляюцца архіўныя нататкі.';

  @override
  String get notesEmptyFiltered => 'Няма нататак, якія адпавядаюць гэтым фільтрам.';

  @override
  String get notesArchivedSnack => 'Нататка архівавана';

  @override
  String get notesUnarchivedSnack => 'Нататка вернута да вашых нататак';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Выканана $done з $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Фарматаванне';

  @override
  String get notesWrite => 'Пісаць';

  @override
  String get notesPreviewEmpty => 'Пакуль няма чаго праглядаць.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Пакуль ніводная іншая нататка не спасылаецца сюды. Спашліцеся на гэту нататку праз [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Дайце гэтай нататцы назву, каб іншыя нататкі маглі на яе спасылацца.';

  @override
  String get notesLinkedTasksEmpty => 'З гэтай нататкай не звязана ніводнай задачы.';

  @override
  String notesLinkMissing(String title) {
    return 'Нататкі з назвай «$title» пакуль няма.';
  }

  @override
  String get notesNotFound => 'Гэтай нататкі больш няма.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Пункт спіса: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Адкрыць нататку $title';
  }

  @override
  String get notesTaskDone => 'Выканана';

  @override
  String get notifTimerDoneBody => 'Зададзены вамі час скончыўся.';

  @override
  String get onboardingPrivatePointDevice =>
      'Захоўваецца толькі на гэтай прыладзе, у зашыфраваным выглядзе';

  @override
  String get onboardingPrivatePointAccount => 'Уліковы запіс не патрэбны';

  @override
  String get onboardingPrivatePointTracking => 'Без аналітыкі і адсочвання';

  @override
  String get onboardingLanguageBody => 'Гэта можна змяніць у любы час у наладах.';

  @override
  String get onboardingNext => 'Далей';

  @override
  String get projectsActive => 'Актыўныя';

  @override
  String get projectNameHint => 'напр. Запуск прадукту';

  @override
  String get projectGoalHint => 'Як выглядае вынік?';

  @override
  String get projectNoDeadline => 'Без тэрміну';

  @override
  String get projectTasksOpen => 'Адкрытыя задачы';

  @override
  String get projectTasksCompleted => 'Выкананыя задачы';

  @override
  String get projectAddTask => 'Дадаць задачу ў праект';

  @override
  String get projectAddNote => 'Новая нататка праекта';

  @override
  String get projectLinkedNotes => 'Нататкі';

  @override
  String get projectNoTasks => 'У гэтым праекце пакуль няма задач';

  @override
  String get projectArchivedBadge => 'Архіўны';

  @override
  String get projectDeleted => 'Праект перамешчаны ў сметніцу';

  @override
  String get projectDeleteMessage => 'Задачы застануцца ў вашым спісе без праекта.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, выканана на $percent працэнтаў';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count выніку',
      many: '$count вынікаў',
      few: '$count вынікі',
      one: '$count вынік',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Фільтр па тыпе';

  @override
  String searchRecentTap(String query) {
    return 'Шукаць зноў $query';
  }

  @override
  String get settingsLanguageHint =>
      'Выберыце мову ўсёй праграмы. Назвы паказваюцца на іх уласнай мове.';

  @override
  String get settingsThemeHint => 'Светлая, цёмная або як у сістэме';

  @override
  String settingsDecrease(String setting) {
    return 'Паменшыць: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Павялічыць: $setting';
  }

  @override
  String get settingsQuietStart => 'Пачатак';

  @override
  String get settingsQuietEnd => 'Канец';

  @override
  String get settingsNotificationsHint =>
      'Гэта захоўвае ваш выбар у праграме. Сістэма таксама можа запытаць дазвол.';

  @override
  String get settingsDashboardHint =>
      'Перацягвайце, каб змяніць парадак. Выключыце непатрэбныя раздзелы.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Перамясціць «$section»';
  }

  @override
  String get settingsDashboardReset => 'Аднавіць парадак па змаўчанні';

  @override
  String get settingsAssistantDesc =>
      'Неабавязковая дапамога з планаваннем. Нічога не пакідае прыладу, пакуль вы не падключыце сэрвіс.';

  @override
  String get settingsAssistantSetup => 'Памочнік і наладжванне сэрвісу';

  @override
  String get settingsTrashDesc => 'Аднаўляйце або назаўсёды выдаляйце выдаленыя элементы';

  @override
  String get settingsEraseFirstBody =>
      'Гэта нельга адрабіць. Спачатку варта стварыць зашыфраваную рэзервовую копію.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Увядзіце $word';
  }

  @override
  String get settingsEraseFailed => 'Не ўдалося сцерці даныя. Нічога не зменена.';

  @override
  String get settingsAboutTagline => 'Прыватная прастора для прадуктыўнасці, якая працуе лакальна.';

  @override
  String get backupShowPassword => 'Паказаць пароль';

  @override
  String get backupHidePassword => 'Схаваць пароль';

  @override
  String get backupSaved => 'Рэзервовая копія захавана';

  @override
  String get backupFailed => 'Не ўдалося стварыць рэзервовую копію. Вашы даныя не зменены.';

  @override
  String get backupReadFailed => 'Не ўдалося прачытаць выбраны файл.';

  @override
  String get backupRestoreFailed => 'Аднаўленне не ўдалося. Нічога не зменена.';

  @override
  String get backupShareSubject => 'Зашыфраваная рэзервовая копія Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кожныя $count дня',
      many: 'Кожныя $count дзён',
      few: 'Кожныя $count дні',
      one: 'Кожны $count дзень',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кожныя $count тыдня',
      many: 'Кожныя $count тыдняў',
      few: 'Кожныя $count тыдні',
      one: 'Кожны $count тыдзень',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кожныя $count месяца',
      many: 'Кожныя $count месяцаў',
      few: 'Кожныя $count месяцы',
      one: 'Кожны $count месяц',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кожныя $count года',
      many: 'Кожныя $count гадоў',
      few: 'Кожныя $count гады',
      one: 'Кожны $count год',
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
    return 'у: $days';
  }

  @override
  String get repeatEndsLabel => 'Заканчваецца';

  @override
  String get repeatEndsAfter => 'Пасля пэўнай колькасці разоў';

  @override
  String get repeatCountLabel => 'Паўторы';

  @override
  String get reminderNone => 'Без напаміну';

  @override
  String get reminderCustomTime => 'У вызначаны час';

  @override
  String get a11yDecrease => 'Паменшыць';

  @override
  String get a11yIncrease => 'Павялічыць';

  @override
  String get pickTaskTitle => 'Выберыце задачу';

  @override
  String get pickTaskEmpty => 'Няма адкрытых задач';

  @override
  String get tasksSearchTooltip => 'Пошук задач';

  @override
  String get tasksSectionOverdue => 'Пратэрмінаваныя';

  @override
  String get tasksSectionToday => 'Сёння';

  @override
  String get tasksRecurringSemantics => 'Паўтараецца';

  @override
  String get tasksFilterPriorityAtLeast => 'Мінімальны прыярытэт';

  @override
  String get tasksFilterCategory => 'Катэгорыя';

  @override
  String get tasksFilterAnyCategory => 'Любая катэгорыя';

  @override
  String get tasksFilterLabel => 'Метка';

  @override
  String get tasksFilterAnyLabel => 'Любая метка';

  @override
  String get tasksFilterReset => 'Скінуць фільтры';

  @override
  String get tasksViewByProject => 'Па праектах';

  @override
  String get tasksViewByPriority => 'Па прыярытэце';

  @override
  String get tasksViewByCategory => 'Па катэгорыях';

  @override
  String get tasksGroupNoCategory => 'Без катэгорыі';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачы',
      many: '$count задачамі',
      few: '$count задачамі',
      one: '$count задачай',
    );
    return 'Блакуецца $_temp0';
  }

  @override
  String get taskBlockedWarning => 'Гэту задачу блакуюць невыкананыя задачы. Усё роўна завяршыць?';

  @override
  String get taskStartFocus => 'Засяродзіцца на гэтай задачы';

  @override
  String get taskRemoveDate => 'Выдаліць дату';

  @override
  String get taskAllDay => 'Без канкрэтнага часу';

  @override
  String get taskSaved => 'Задача захавана';

  @override
  String get taskCreated => 'Задача створана';

  @override
  String get taskReminderNeedsDue => 'Задайце тэрмін, каб карыстацца адноснымі напамінамі';

  @override
  String get taskLabelName => 'Назва меткі';

  @override
  String get taskPlanning => 'Планаванне';

  @override
  String get taskOrganize => 'Арганізацыя';

  @override
  String get taskBreakdown => 'Разбіўка';

  @override
  String get trashDeleteTaskTitle => 'Выдаліць гэту задачу назаўсёды?';

  @override
  String get trashDeleteNoteTitle => 'Выдаліць гэту нататку назаўсёды?';

  @override
  String get trashDeleteBody => 'Гэта нельга адрабіць.';

  @override
  String get trashEmptyTitle => 'Ачысціць сметніцу?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элемента будзе выдалена назаўсёды.',
      many: '$count элементаў будзе выдалена назаўсёды.',
      few: '$count элементы будуць выдалены назаўсёды.',
      one: '$count элемент будзе выдалены назаўсёды.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Адноўлена';

  @override
  String get trashPurged => 'Выдалена назаўсёды';

  @override
  String trashDeletedOn(String date) {
    return 'Выдалена $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элемента',
      many: '$count элементаў',
      few: '$count элементы',
      one: '$count элемент',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Прачытаць уголас';

  @override
  String get flashcardsTtsUnavailable => 'Сінтэз маўлення недаступны на гэтай прыладзе.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Для гэтай мовы не ўсталяваны голас. Дадайце яго ў наладах сінтэзу маўлення Android.';

  @override
  String get calendarAgenda => 'Парадак дня';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Іскра',
      'rocket': 'Ракета',
      'book': 'Кніга',
      'work': 'Праца',
      'home': 'Дом',
      'heart': 'Сэрца',
      'code': 'Код',
      'palette': 'Палітра',
      'fitness': 'Фітнес',
      'school': 'Школа',
      'travel': 'Падарожжы',
      'money': 'Зберажэнні',
      'other': 'Значок',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Больш палёў';

  @override
  String get cardFieldExample => 'Прыклад';

  @override
  String get cardFieldExplanation => 'Тлумачэнне';

  @override
  String get cardFieldPronunciation => 'Вымаўленне';

  @override
  String get cardFieldNotes => 'Дадатковыя нататкі';

  @override
  String get projectMilestones => 'Этапы';

  @override
  String get milestoneAdd => 'Дадаць этап';

  @override
  String get milestoneEdit => 'Змяніць этап';

  @override
  String get milestoneTitleLabel => 'Этап';

  @override
  String get milestoneNoDate => 'Без даты';

  @override
  String get milestonesEmpty =>
      'Этапаў пакуль няма. Дадайце кантрольныя пункты з датамі, каб сачыць за праектам у календары.';

  @override
  String get milestoneDeleted => 'Этап выдалены';

  @override
  String milestoneDoneA11y(String title) {
    return 'Пазначыць этап «$title» як выкананы';
  }

  @override
  String calendarMilestone(String project) {
    return 'Этап · $project';
  }

  @override
  String get tasksViewInbox => 'Уваходныя';

  @override
  String get tasksViewArchived => 'Архіў';

  @override
  String get tasksEmptyInbox =>
      'Сюды трапляюць задачы без праекта або даты. Разбярыце іх, калі будзе хвілінка.';

  @override
  String get tasksEmptyArchived =>
      'Архіўныя задачы захоўваюцца тут, па-за вашымі спісамі і напамінамі.';

  @override
  String get taskArchivedBadge => 'У архіве';

  @override
  String get taskStatusInProgress => 'У працэсе';

  @override
  String get taskArchived => 'Задача архівавана';

  @override
  String get taskUnarchived => 'Задача вернута з архіва';

  @override
  String get focusPlanTitle => 'План сеансаў';

  @override
  String focusPlanTotal(String duration) {
    return 'Усяго $duration';
  }

  @override
  String get focusPlanRounds => 'Сеансы фокусу';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Доўгі перапынак пасля';

  @override
  String get focusPlanSkipLastBreak => 'Прапусціць апошні перапынак';

  @override
  String get focusPlanAutoBreaks => 'Пачынаць перапынкі аўтаматычна';

  @override
  String get focusPlanAutoFocus => 'Пачынаць фокус аўтаматычна пасля перапынку';

  @override
  String get focusPlanSave => 'Захаваць план';

  @override
  String get focusPlanNameHint => 'напр. Падрыхтоўка да экзамену';

  @override
  String get focusPlanSaved => 'План захаваны';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work хв фокусу, $rest хв перапынку';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Паменшыць: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Павялічыць: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Сеанс $current з $total';
  }

  @override
  String get focusSeriesComplete => 'Серыя завершана. Выдатна!';

  @override
  String get filterAll => 'Усе';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Імпартавана: $added · прапушчана дублікатаў: $duplicates · няпоўных радкоў: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Прыпыніць картку';

  @override
  String get flashcardsResume => 'Аднавіць картку';

  @override
  String get flashcardsSuspended => 'Картка прыпынена: яна не будзе планавацца';

  @override
  String get flashcardsResumed => 'Картка адноўлена';

  @override
  String get flashcardsSuspendedFilter => 'Прыпынена';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown з $total картак';
  }

  @override
  String get flashcardsImportFile => 'З файла';

  @override
  String get speechTitle => 'Маўленне';

  @override
  String get speechAppLanguage => 'Мова праграмы';

  @override
  String get speechFrontLanguage => 'Мова пярэдняга боку';

  @override
  String get speechBackLanguage => 'Мова адваротнага боку';

  @override
  String get speechRepeat => 'Паўтараць кожнае чытанне';

  @override
  String get speechRate => 'Хуткасць';

  @override
  String get speechAutoRead => 'Чытаць пытанне аўтаматычна';

  @override
  String get speechHint =>
      'Выкарыстоўвае галасы, усталяваныя на гэтай прыладзе, без інтэрнэту. Калі для мовы няма голасу, вам паведамяць, і нічога іншага замест яго выкарыстана не будзе.';

  @override
  String get studyHowTitle => 'Як вы хочаце вучыцца?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Паўтарыць $count карткі',
      many: 'Паўтарыць $count картак',
      few: 'Паўтарыць $count карткі',
      one: 'Паўтарыць $count картку',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Практыкаваць усе карткі (расклад не мяняецца)';

  @override
  String get studyPracticeMistakes => 'Практыкаваць нядаўнія памылкі';

  @override
  String get studyPracticeHint =>
      'Практыкаванні ніколі не мяняюць, калі трэба паўтараць карткі. Паўтарэнне абнаўляе расклад.';

  @override
  String get studyModeClassic => 'Класіка';

  @override
  String get studyModeReverse => 'Наадварот';

  @override
  String get studyModeMixed => 'У абодва бакі';

  @override
  String get studyModeTyped => 'Увесці адказ';

  @override
  String get studyModeChoice => 'Выбар варыянта';

  @override
  String get studyModeListening => 'Аўдзіраванне';

  @override
  String get studyPractice => 'практыка';

  @override
  String get studyNoMistakes => 'У гэтай калодзе няма нядаўніх памылак. Выдатна!';

  @override
  String get studyTypeAnswer => 'Увядзіце адказ';

  @override
  String get studyCheck => 'Праверыць';

  @override
  String get studyKnewIt => 'Ведаў';

  @override
  String get studyDidntKnow => 'Не ведаў';

  @override
  String studyMistakes(int count) {
    return 'Памылкі ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Паўтарыць карткі з памылкамі';

  @override
  String get studyCorrect => 'Правільна';

  @override
  String get studyAlmost => 'Амаль — праверце правапіс';

  @override
  String get studyWrong => 'Не зусім';

  @override
  String get studyShowText => 'Паказаць тэкст';

  @override
  String get flashcardsImportFileFailed =>
      'Не ўдалося адкрыць файл. Вы можаце ўставіць яго змесціва.';

  @override
  String get studyNoMatchingCards => 'Пакуль няма картак для гэтага выбару.';

  @override
  String get studyPracticeNew => 'Толькі новыя';

  @override
  String get studyPracticeHard => 'Цяжкія карткі';

  @override
  String get studyPracticeFavorites => 'Абраныя';

  @override
  String get studySessionSize => 'Картак за сеанс';

  @override
  String get studySessionAll => 'Усе';

  @override
  String get studyOrder => 'Парадак';

  @override
  String get studyOrderDue => 'Спачатку самыя пратэрмінаваныя';

  @override
  String get studyOrderRandom => 'Выпадкова';

  @override
  String get studyOrderHardest => 'Спачатку самыя цяжкія';

  @override
  String get flashcardsHard => 'Цяжкая';

  @override
  String get flashcardsFavorites => 'Абраныя';

  @override
  String get flashcardsFavorite => 'У абранае';

  @override
  String get flashcardsUnfavorite => 'Выдаліць з абранага';

  @override
  String get flashcardsDuplicate => 'Дубляваць';

  @override
  String get flashcardsMoveTo => 'Перамясціць у калоду';

  @override
  String get flashcardsNoOtherDeck => 'Спачатку стварыце іншую калоду.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Перамешчана $count карткі',
      many: 'Перамешчана $count картак',
      few: 'Перамешчана $count карткі',
      one: 'Перамешчана $count картка',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Дадаць метку';

  @override
  String get flashcardsTagHint => 'напр. дзеясловы';

  @override
  String flashcardsSelected(int count) {
    return 'Выбрана: $count';
  }

  @override
  String get flashcardsSelectAll => 'Выбраць усе паказаныя';

  @override
  String flashcardsSelectCard(String front) {
    return 'Выбраць $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Узгадванне $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Магчымы дублікат';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'У гэтай калодзе ўжо ёсць «$front» → «$back». Усё роўна захаваць?';
  }

  @override
  String get flashcardsSaveAnyway => 'Усё роўна захаваць';

  @override
  String get flashcardsStats => 'Статыстыка';

  @override
  String get flashcardsStatTotal => 'Карткі';

  @override
  String get flashcardsStatLearning => 'Вывучаюцца';

  @override
  String get flashcardsStatMatureCaption => 'Памятаюцца 21+ дзень';

  @override
  String get flashcardsStatReviewsToday => 'Паўтарэнні сёння';

  @override
  String get flashcardsStatCorrect => 'Правільныя адказы';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Апошнія дні: $days';
  }

  @override
  String get flashcardsStatForget => 'Узровень забывання';

  @override
  String get flashcardsStatForgetCaption => '«Зноў» для вывучаных картак';

  @override
  String get flashcardsStatRecall => 'Узгадванне цяпер';

  @override
  String get flashcardsStatRecallCaption => 'Ацэнка FSRS, паўтораныя карткі';

  @override
  String flashcardsStatActivity(int count) {
    return 'Паўтарэнні ў дзень · усяго $count';
  }

  @override
  String get flashcardsStatHistory => 'Апошнія адказы';

  @override
  String get flashcardsStatNoHistory =>
      'Паўтарэнняў пакуль няма. Займайцеся з калодай, каб бачыць тут свой прагрэс.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Прачытаць уголас: $field';
  }

  @override
  String get speechVoice => 'Голас';

  @override
  String get speechVoiceDefault => 'Аўтаматычна';

  @override
  String get speechVoiceOnline => 'патрэбны інтэрнэт';

  @override
  String get speechTest => 'Праверыць голас';

  @override
  String get importNext => 'Прагляд';

  @override
  String get importPreviewTitle => 'Супаставіць слупкі з палямі';

  @override
  String get importIgnoreColumn => 'Ігнараваць';

  @override
  String importColumn(int n) {
    return 'Слупок $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Гатова картак: $ready · будзе прапушчана няпоўных радкоў: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Выберыце, якія слупкі — пярэдні і адваротны бок.';

  @override
  String get actionMoveUp => 'Уверх';

  @override
  String get actionMoveDown => 'Уніз';

  @override
  String get flashcardsLayoutTitle => 'Выгляд карткі';

  @override
  String get flashcardsLayoutHint =>
      'Перайменуйце, схавайце або змяніце парадак дадатковых палёў гэтай калоды. Змесціва картак ніколі не мяняецца.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Паказваць $field падчас вучобы';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Адкрываць адказ паэтапна';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Спачатку паказваецца адваротны бок; кожнае дадатковае поле адкрываецца націскам.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Паказаць $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Гэты файл большы за $mb МБ.';
  }

  @override
  String get flashcardsImage => 'Відарыс';

  @override
  String get flashcardsAudio => 'Аўдыя';

  @override
  String get flashcardsAddImage => 'Дадаць відарыс';

  @override
  String get flashcardsAddAudio => 'Дадаць аўдыя';

  @override
  String get flashcardsPlayAudio => 'Прайграць запіс';

  @override
  String get flashcardsAudioUnavailable => 'Гэты запіс нельга прайграць на гэтай прыладзе.';

  @override
  String get flashcardsCustomFields => 'Вашы палі';

  @override
  String get flashcardsTemplates => 'Шаблоны';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Поле $n';
  }

  @override
  String get flashcardsAddField => 'Дадаць поле';

  @override
  String get flashcardsFieldName => 'Назва поля';

  @override
  String get flashcardsFieldLangDefault => 'Мова боку';

  @override
  String get flashcardsTemplateConfirm =>
      'Шаблон вызначае, як паказваюцца палі, і дадае свае палі. Вашы карткі і існуючыя палі застаюцца без змен.';

  @override
  String get flashcardsApplyTemplate => 'Ужыць';

  @override
  String get templateVocabulary => 'Слоўнікавы запас';

  @override
  String get templateTwoTranslations => 'Слова з двума перакладамі';

  @override
  String get templateQuestionAnswer => 'Пытанне і адказ';

  @override
  String get templateDefinition => 'Тэрмін і азначэнне';

  @override
  String get templateGrammar => 'Граматычнае правіла';

  @override
  String get templateFieldPlural => 'Множны лік';

  @override
  String get templateFieldTranslation2 => 'Другі пераклад';

  @override
  String get templateFieldSynonyms => 'Сінонімы';

  @override
  String get templateFieldRule => 'Правіла';

  @override
  String get deckCategory => 'Узровень або тэма';

  @override
  String get deckCategoryHint => 'напр. A1, Медыцына';

  @override
  String get flashcardsSearchAll => 'Пошук ва ўсіх картках';

  @override
  String get flashcardsSearchAllHint => 'Слова, пераклад, прыклад, нататка, метка…';

  @override
  String get flashcardsAllDecks => 'Усе калоды';

  @override
  String get flashcardsAllLanguages => 'Усе мовы';

  @override
  String get flashcardsLangUnset => 'Мова не зададзена';

  @override
  String get flashcardsLevelUnset => 'Без узроўню або тэмы';

  @override
  String get flashcardsByLanguage => 'Прагрэс па мовах';

  @override
  String get flashcardsByLevel => 'Прагрэс па ўзроўнях або тэмах';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Калоды: $decks · карткі: $cards · вывучаныя: $mature · да паўтарэння: $due · правільна: $correct (30 дзён)';
  }

  @override
  String get flashcardsRecord => 'Запіс';

  @override
  String get flashcardsRecording => 'Ідзе запіс…';

  @override
  String get flashcardsRecordStop => 'Спыніць і захаваць';

  @override
  String get flashcardsMicDenied =>
      'Доступ да мікрафона выключаны. Дазвольце яго ў наладах сістэмы, каб запісваць.';

  @override
  String get flashcardsRecordFailed => 'Запіс недаступны на гэтай прыладзе.';

  @override
  String get soundsTitle => 'Гукі';

  @override
  String get soundsNature => 'Прырода';

  @override
  String get soundsNoise => 'Шум для фокусу';

  @override
  String get soundRain => 'Дождж';

  @override
  String get soundStorm => 'Навальніца';

  @override
  String get soundRiver => 'Рака';

  @override
  String get soundOcean => 'Марскія хвалі';

  @override
  String get soundFire => 'Вогнішча';

  @override
  String get soundForest => 'Лясныя птушкі';

  @override
  String get soundNight => 'Летняя ноч';

  @override
  String get soundWhite => 'Белы шум';

  @override
  String get soundPink => 'Ружовы шум';

  @override
  String get soundBrown => 'Карычневы шум';

  @override
  String get soundsPlay => 'Прайграць';

  @override
  String get soundsSleep => 'Таймер сну';

  @override
  String get soundsSleepOff => 'Выключана';

  @override
  String soundsSleepAt(String time) {
    return 'Спыніцца ў $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Адначасова могуць гучаць да $count гукаў.';
  }

  @override
  String get soundsHint =>
      'Націсніце на гук, каб пачаць. Змешвайце некалькі і задавайце гучнасць кожнага.';

  @override
  String get soundsMixer => 'Мікс';

  @override
  String soundsVolumeOf(String name) {
    return 'Гучнасць: $name';
  }

  @override
  String get soundsChannel => 'Гукі прыроды';

  @override
  String get settingsEndTone => 'Гук завяршэння таймера';

  @override
  String get toneGentle => 'Мяккія сігналы';

  @override
  String get toneBeeps => 'Сігналы';

  @override
  String get toneWood => 'Стук па дрэве';

  @override
  String get toneBird => 'Птушыны покліч';

  @override
  String get toneStream => 'Ручай';

  @override
  String get toneSystem => 'Гук тэлефона';

  @override
  String get speechOnPhone => 'На гэтым тэлефоне';

  @override
  String get speechAllLanguages => 'Усе мовы';

  @override
  String get speechSearchLanguage => 'Пошук моў';

  @override
  String get speechGetVoices => 'Спампаваць больш галасоў';

  @override
  String get speechGetVoicesHint =>
      'Галасы для моў без голасу можна спампаваць у наладах маўлення тэлефона.';

  @override
  String get speechSettingsFailed => 'Не ўдалося адкрыць налады маўлення на гэтым тэлефоне.';

  @override
  String get speechVoiceMissing => 'Голас не ўсталяваны';

  @override
  String get speechPause => 'Паўза паміж паўторамі';

  @override
  String speechSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String get speechExample => 'Чытаць прыклад разам з адказам';

  @override
  String get flashListen => 'Слухаць';

  @override
  String get flashListenNext => 'Наступная картка';

  @override
  String get flashListenEmpty => 'Няма картак для праслухоўвання.';

  @override
  String get flashViewTable => 'Табліца';

  @override
  String get flashViewCards => 'Карткі';

  @override
  String get flashSwapSides => 'Памяняць слупкі';

  @override
  String get flashSort => 'Сартаваць';

  @override
  String get flashSortNewest => 'Спачатку новыя';

  @override
  String get flashSortAlpha => 'Ад А да Я';

  @override
  String get flashSortDue => 'Спачатку да паўтарэння';

  @override
  String get flashSortHard => 'Спачатку самыя цяжкія';

  @override
  String get flashPasteCards => 'Уставіць карткі';

  @override
  String get flashClipboardEmpty => 'У буферы абмену няма тэксту.';

  @override
  String get flashMenuAdd => 'Дадаць карткі';

  @override
  String get flashMenuDeck => 'Калода';

  @override
  String get flashToday => 'Сёння';

  @override
  String get flashStudyNow => 'Вучыць';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Адказы на $count карткі',
      many: 'Адказы на $count картак',
      few: 'Адказы на $count карткі',
      one: 'Адказ на $count картку',
      zero: 'Няма адказаў',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Дождж у лесе';

  @override
  String get autoBackupTitle => 'Аўтаматычныя рэзервовыя копіі';

  @override
  String get autoBackupDesc => 'Кожны дзень на гэтым тэлефоне; захоўваюцца апошнія 7';

  @override
  String get autoBackupHint =>
      'Гэтыя копіі застаюцца на гэтым тэлефоне і выдаляюцца разам з праграмай. Каб перайсці на новы тэлефон, захавайце файл праз «Рэзервовая копія».';

  @override
  String get autoBackupNone =>
      'Аўтаматычнай рэзервовай копіі пакуль няма. Першая будзе створана сёння.';

  @override
  String get autoBackupRestore => 'Аднавіць';

  @override
  String autoBackupConfirm(String date) {
    return 'Замяніць усе бягучыя даныя рэзервовай копіяй ад $date?';
  }

  @override
  String get autoBackupRestored => 'Адноўлена.';

  @override
  String get errorLogTitle => 'Журнал памылак';

  @override
  String get errorLogHint =>
      'Калі нешта пойдзе не так, гэта запісваецца тут: толькі тып памылкі і месца ў кодзе, ніколі ваша змесціва. Падзяліцеся ім, каб дапамагчы выправіць праблему.';

  @override
  String get errorLogEmpty => 'Памылак не запісана.';

  @override
  String get errorLogClear => 'Ачысціць';

  @override
  String get soundsWithFocus => 'Іграць падчас сеансаў фокусу';

  @override
  String get soundsWithFocusHint =>
      'Ваш мікс пачынаецца з сеансам фокусу і спыняецца на перапынках.';

  @override
  String get soundsSavedMixes => 'Захаваныя міксы';

  @override
  String get soundsSaveMix => 'Захаваць гэты мікс';

  @override
  String get soundsMixNameHint => 'Назва, напр. Дажджлівая бібліятэка';

  @override
  String soundsDeleteMix(String name) {
    return 'Выдаліць мікс «$name»?';
  }

  @override
  String get settingsReviewReminderHint => 'Раз у дзень і толькі калі ёсць карткі для паўтарэння';

  @override
  String get settingsReviewTime => 'Час напаміну';

  @override
  String get shortcutFocus => 'Фокус';

  @override
  String get shortcutNewTask => 'Новая задача';

  @override
  String get shortcutReview => 'Паўтарыць карткі';

  @override
  String get shortcutSounds => 'Гукі прыроды';

  @override
  String get myDayTitle => 'Пачаць мой дзень';

  @override
  String get myDayHint => 'Ваш дзень з першага погляду, потым фокус адным націскам';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задачы на сёння',
      many: '$count задач на сёння',
      few: '$count задачы на сёння',
      one: '$count задача на сёння',
      zero: 'На сёння задач няма',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Сёння больш няма падзей';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Далей: $title у $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Засталося $count звычкі',
      many: 'Засталося $count звычак',
      few: 'Засталося $count звычкі',
      one: 'Засталася $count звычка',
      zero: 'Усе звычкі выкананы',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Пачаць з сеанса фокусу';

  @override
  String get hijriMonth1 => 'Мухарам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Рабі аль-аваль';

  @override
  String get hijriMonth4 => 'Рабі ас-сані';

  @override
  String get hijriMonth5 => 'Джумада аль-ула';

  @override
  String get hijriMonth6 => 'Джумада аль-ахіра';

  @override
  String get hijriMonth7 => 'Раджаб';

  @override
  String get hijriMonth8 => 'Шаабан';

  @override
  String get hijriMonth9 => 'Рамадан';

  @override
  String get hijriMonth10 => 'Шаваль';

  @override
  String get hijriMonth11 => 'Зуль-каада';

  @override
  String get hijriMonth12 => 'Зуль-хіджа';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year г. па хіджры';
  }

  @override
  String get settingsHijri => 'Даты па хіджры';

  @override
  String get settingsHijriHint => 'Паказваюцца ў календары і на галоўным экране (Умм аль-Кура)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дзён',
      few: '$count дні',
      one: '$count дзень',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Сёння $done з $goal картак';
  }

  @override
  String get studyGoalReached => 'Дзённая мэта дасягнута. Выдатна!';

  @override
  String get studyWeekTitle => 'Ваш тыдзень';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'За 7 дзён — адказы на $count карткі',
      many: 'За 7 дзён — адказы на $count картак',
      few: 'За 7 дзён — адказы на $count карткі',
      one: 'За 7 дзён — адказ на $count картку',
      zero: 'За 7 дзён няма адказаў',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration фокусу за 7 дзён';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Серыя: $current · Рэкорд: $best';
  }

  @override
  String get studyGoalTitle => 'Дзённая мэта (карткі)';

  @override
  String get studyGoalOff => 'Выключана';

  @override
  String get focusDndTitle => '«Не турбаваць» падчас фокусу';

  @override
  String get focusDndHint => 'Уключаецца на кожны сеанс фокусу і выключаецца на перапынку';

  @override
  String get focusDndNeedsAccess => 'Каб карыстацца гэтым, дазвольце доступ у наладах тэлефона';

  @override
  String get voiceInput => 'Дыктаваць';

  @override
  String get voiceInputPrompt => 'Гаварыце';

  @override
  String get voiceInputUnavailable =>
      'Галасавы ўвод недаступны на гэтым тэлефоне. Усталюйце або ўключыце сэрвіс распазнавання маўлення (напрыклад, «Распазнаванне і сінтэз маўлення» ад Google).';

  @override
  String get prayerFajr => 'Фаджр';

  @override
  String get prayerSunrise => 'Усход сонца';

  @override
  String get prayerDhuhr => 'Зухр';

  @override
  String get prayerAsr => 'Аср';

  @override
  String get prayerMaghrib => 'Магрыб';

  @override
  String get prayerIsha => 'Іша';

  @override
  String get prayerMethodMwl => 'Сусветная ісламская ліга';

  @override
  String get prayerMethodUmmAlQura => 'Умм аль-Кура, Мека';

  @override
  String get prayerMethodEgypt => 'Егіпецкае генеральнае ўпраўленне';

  @override
  String get prayerMethodJordan => 'Іарданія, Міністэрства вакуфаў';

  @override
  String get prayerMethodKarachi => 'Універсітэт ісламскіх навук, Карачы';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Рэгіён Персідскага заліва';

  @override
  String get prayerMethodKuwait => 'Кувейт';

  @override
  String get prayerMethodQatar => 'Катар';

  @override
  String get prayerMethodTurkey => 'Турцыя, Дыянет';

  @override
  String get prayerMethodSingapore => 'Сінгапур, Малайзія, Інданезія';

  @override
  String get prayerMethodFrance => 'Францыя (12°)';

  @override
  String get prayerMethodRussia => 'Расія, Духоўнае ўпраўленне';

  @override
  String prayerNotifTitle(String name) {
    return 'Час для $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Час малітвы · $time';
  }

  @override
  String get prayerTitle => 'Час малітваў';

  @override
  String get prayerOffHint =>
      'Выберыце горад, каб бачыць час малітваў. Ён вылічваецца на тэлефоне; доступ да месцазнаходжання не патрэбны.';

  @override
  String get prayerChooseCity => 'Выбраць горад';

  @override
  String get prayerCity => 'Горад';

  @override
  String get prayerCitySearch => 'Пошук горада';

  @override
  String get prayerMethod => 'Метад разліку';

  @override
  String get prayerHanafiAsr => 'Аср паводле ханафітаў (пазнейшы час)';

  @override
  String get prayerReminders => 'Апавяшчаць пра кожную малітву';

  @override
  String get prayerPauseFocus => 'Прыпыняць фокус на час малітвы';

  @override
  String get prayerPauseFocusHint => 'Бягучы сеанс прыпыняецца; працягніце пасля малітвы';

  @override
  String get prayerTurnOff => 'Выключыць час малітваў';

  @override
  String get prayerAccuracyNote =>
      'Вылічаны час можа на некалькі хвілін адрознівацца ад часу вашай мясцовай мячэці.';

  @override
  String prayerNext(String name, String time) {
    return '$name у $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Гэты файл Anki мае найноўшы фармат. Экспартуйце яго ў Anki яшчэ раз з уключаным параметрам «Support older Anki versions», а потым імпартуйце гэты файл.';

  @override
  String get importTemplate => 'Шаблон табліцы';

  @override
  String get importTemplateFront => 'яблык';

  @override
  String get importTemplateBack => 'круглы плод';

  @override
  String get importTemplateExample => 'Я кожны дзень ем яблык.';

  @override
  String get importTemplateTag => 'ежа';

  @override
  String get starterTitle => 'Стартавыя калоды';

  @override
  String get starterHint =>
      'Дадайце адну, каб адразу пачаць вучобу. Пазней яе можна змяніць або выдаліць.';

  @override
  String get starterAdd => 'Дадаць';

  @override
  String get starterWords => 'Штодзённыя англійскія словы (арабская)';

  @override
  String get starterCapitals => 'Сталіцы свету';

  @override
  String get starterElements => 'Хімічныя элементы';

  @override
  String get settingsAccent => 'Колер акцэнту';

  @override
  String get accentViolet => 'Фіялетавы';

  @override
  String get accentBlue => 'Сіні';

  @override
  String get accentTeal => 'Бірузовы';

  @override
  String get accentGreen => 'Зялёны';

  @override
  String get accentRose => 'Ружовы';

  @override
  String get accentAmber => 'Бурштынавы';

  @override
  String get settingsFlashTextSize => 'Памер тэксту картак';

  @override
  String get settingsFlashTextSample => 'Прыклад';

  @override
  String get widgetStartFocus => 'Націсніце, каб засяродзіцца';

  @override
  String widgetFocusUntil(String time) {
    return 'Фокус да $time';
  }

  @override
  String get widgetNoCardsDue => 'Карткі: усё зроблена';

  @override
  String get faqMyDayQ => 'Што робіць «Пачаць мой дзень»?';

  @override
  String get faqMyDayA =>
      'Раз у дзень галоўны экран прапануе яго: вы бачыце сённяшнія задачы, наступную падзею, невыкананыя звычкі і карткі для паўтарэння, а потым адным націскам пачынаеце сеанс фокусу. Утрымлівайце значок праграмы для хуткіх дзеянняў або дадайце віджэт на галоўны экран, каб бачыць час фокусу і карткі для паўтарэння.';

  @override
  String get faqTasksQ => 'Як дадаць задачу з напамінам?';

  @override
  String get faqTasksA =>
      'Націсніце «Новая задача» на галоўнай або «+» у задачах. Увядзіце назву ці прадыктуйце яе мікрафонам, а потым задайце тэрмін, час і напамін. Пратэрмінаваныя задачы паказваюцца першымі.';

  @override
  String get faqFocusQ => 'Як працуе таймер фокусу?';

  @override
  String get faqFocusA =>
      'Выберыце Pomodoro, таймер або свабодны час і націсніце «Пачаць»; перапынкі могуць пачынацца аўтаматычна. У наладах можна выбраць гук завяршэння, уключыць «Не турбаваць» падчас фокусу і ўключаць гукі прыроды з кожным сеансам.';

  @override
  String get faqSoundsQ => 'Ці можна змешваць гукі прыроды?';

  @override
  String get faqSoundsA =>
      'Уключыце да шасці сапраўдных запісаў, наладзьце гучнасць кожнага і захавайце мікс з назвай. Яны гучаць у фоне, а таймер сну можа іх спыніць. Музыка не выкарыстоўваецца.';

  @override
  String get faqCalendarQ => 'Ці можа каляндар паказваць даты па хіджры?';

  @override
  String get faqCalendarA =>
      'Так. Даты па хіджры (Умм аль-Кура) паказваюцца аўтаматычна па-арабску, а ў наладах іх можна ўключыць для любой мовы. Падзеі, задачы з тэрмінам і этапы праектаў паказваюцца разам.';

  @override
  String get faqFlashcardsQ => 'Як паўтарэнне вырашае, якія карткі я ўбачу?';

  @override
  String get faqFlashcardsA =>
      'Карткі, якія вы добра ведаеце, вяртаюцца праз доўгія прамежкі, а тыя, дзе вы памыліліся, — хутка (інтэрвальнае паўтарэнне). Ацэньвайце кожны адказ: «Зноў», «Цяжка», «Добра» або «Лёгка». Пастаўце дзённую мэту і трымайце серыю ў картцы «Сёння». Задайце дату экзамену ў калодзе, каб бачыць, колькі дзён засталося і колькі новых картак вучыць штодня. Сартаванне «Мой парадак» дазваляе перацягваць карткі, націск на дынамік на любым баку агучвае яго, а хуткасць і паўторы наладжваюцца ў меню «Маўленне».';

  @override
  String get faqImportQ => 'Ці можна перанесці карткі з Anki або Excel?';

  @override
  String get faqImportA =>
      'Так. У калодзе выберыце «Імпартаваць», потым файл: Anki (.apkg), Excel (.xlsx) або CSV, і супастаўце слупкі. З дапамогай «Шаблона табліцы» можна пісаць карткі на камп’ютары. Відарысы і гукі з файлаў Anki не імпартуюцца.';

  @override
  String get faqNotesQ => 'Што ўмеюць нататкі?';

  @override
  String get faqNotesA =>
      'Пішыце свабодна са спісамі праверкі і фарматаваннем, замацоўвайце або дадавайце ў абранае важныя нататкі, дадавайце меткі і звязвайце нататкі з задачамі. Кнопкай мікрафона можна дыктаваць. Новую нататку можна пачаць з шаблона (лекцыя, канспект кнігі, дзённік, план на тыдзень), а кнопка відарыса дадае фота.';

  @override
  String get faqHabitsQ => 'Як лічацца серыі звычак?';

  @override
  String get faqHabitsA =>
      'Дзень залічваецца, калі ў запланаваны дзень вы дасягаеце мэты звычкі. Паўза звычкі захоўвае серыю. Кожная звычка можа мець свой час напаміну.';

  @override
  String get faqGoalsQ => 'Як мэты адсочваюць прагрэс?';

  @override
  String get faqGoalsA =>
      'Задайце мэце мэтавае значэнне і адзінку, а потым запісвайце прагрэс. Яе картка паказвае, колькі пройдзена і колькі засталося да тэрміну.';

  @override
  String get faqProjectsQ => 'Для чаго праекты?';

  @override
  String get faqProjectsA =>
      'Групуйце задачы ў праект, дадавайце этапы з датамі і сачыце за агульным прагрэсам. Этапы таксама паказваюцца ў календары.';

  @override
  String get faqInsightsQ => 'Што паказвае Аналітыка?';

  @override
  String get faqInsightsA =>
      'Ваш час фокусу, выкананыя задачы і вучобу па днях і тыднях з мяккімі парадамі. Усё вылічваецца на вашым тэлефоне.';

  @override
  String get faqSpacesQ => 'Дзе ўсе раздзелы?';

  @override
  String get faqSpacesA =>
      'У «Прасторах» сабраны ўсе часткі праграмы (нататкі, калоды, звычкі, мэты, праекты, гукі і іншае), каб галоўная панэль заставалася простай.';

  @override
  String get faqBackupQ => 'Як ствараюцца рэзервовыя копіі маіх даных?';

  @override
  String get faqBackupA =>
      'Кожны дзень праграма непрыкметна захоўвае зашыфраваную копію на гэтым тэлефоне і трымае апошнія 7. У наладах таксама можна экспартаваць абаронены паролем файл рэзервовай копіі і аднавіць яго на іншым тэлефоне.';

  @override
  String get faqPrayerQ => 'Як працуе час малітваў?';

  @override
  String get faqPrayerA =>
      'Выберыце горад у «Налады → Час малітваў». Час вылічваецца на тэлефоне паводле метаду, прынятага там, а метад і школу для асра можна змяніць. Можна атрымліваць апавяшчэнні пра кожную малітву, а бягучы сеанс фокусу прыпыняецца.';

  @override
  String get faqPrivacyQ => 'Дзе захоўваюцца мае даныя?';

  @override
  String get faqPrivacyA =>
      'Толькі на вашым тэлефоне, у зашыфраванай базе даных. Без уліковага запісу і адсочвання. Інтэрнэт выкарыстоўваюць толькі функцыі, якія вы ўключаеце самі, напрыклад неабавязковы памочнік.';

  @override
  String get faqAssistantQ => 'Што такое памочнік?';

  @override
  String get faqAssistantA =>
      'Неабавязковы памочнік, якога вы ў наладах падключаеце да ўласнага ШІ-сэрвісу. Па змаўчанні ён выключаны і пытаецца, перш чым адправіць любы тэкст нататкі.';

  @override
  String get tourPlanTitle => 'Плануйце свой дзень';

  @override
  String get tourPlanBody =>
      'Задачы, каляндар і звычкі ў адным спакойным месцы. Пачынайце кожную раніцу з «Пачаць мой дзень».';

  @override
  String get tourFocusTitle => 'Глыбокі фокус';

  @override
  String get tourFocusBody =>
      'Сеансы з таймерам, сапраўдныя гукі прыроды, «Не турбаваць» і мяккія сігналы завяршэння.';

  @override
  String get tourLearnTitle => 'Вучыцеся назаўжды';

  @override
  String get tourLearnBody =>
      'Карткі з інтэрвальным паўтарэннем, агучванне на многіх мовах і імпарт з Anki або Excel.';

  @override
  String get helpTitle => 'Даведка і пытанні';

  @override
  String get helpOpen => 'Адкрыць';

  @override
  String get helpTour => 'Прайсці агляд';

  @override
  String get tourNext => 'Далей';

  @override
  String get tourDone => 'Пачнём';

  @override
  String get transferColTitle => 'Назва';

  @override
  String get transferColNotes => 'Нататкі';

  @override
  String get transferColBody => 'Тэкст';

  @override
  String get transferColDue => 'Тэрмін';

  @override
  String get transferColPriority => 'Прыярытэт (0-3)';

  @override
  String get transferColDone => 'Выканана';

  @override
  String get transferColProject => 'Праект';

  @override
  String get transferColCategory => 'Катэгорыя';

  @override
  String get transferTitle => 'Імпарт і экспарт';

  @override
  String get transferSaveAs => 'Захаваць як';

  @override
  String get transferImport => 'Імпартаваць з файла';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV або табліца ў Word. Слупкі: назва, тэрмін (2026-12-31), прыярытэт 0-3, выканана, праект, нататкі. Задачы, якія ўжо ёсць у праграме, прапускаюцца.';

  @override
  String get transferImportNotesHint =>
      'Файлы Word, Markdown або тэкставыя становяцца нататкай. Excel або CSV: адна нататка на радок (назва, тэкст).';

  @override
  String get transferSaved => 'Файл захаваны';

  @override
  String get transferFailed => 'Не ўдалося стварыць файл. Нічога не зменена.';

  @override
  String get transferUnsupported =>
      'Гэты файл тут не чытаецца. Выкарыстоўвайце Excel, CSV, Word, Markdown або тэкст.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Дададзена: $added',
      many: 'Дададзена: $added',
      few: 'Дададзена: $added',
      one: 'Дададзена: $added',
      zero: 'Нічога новага не дададзена',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Тэкст';

  @override
  String get transferAllNotes => 'Усе нататкі';

  @override
  String get transferThisNote => 'Гэта нататка';

  @override
  String get transferDeckFormats => 'Захаваць як Excel, Word або PDF';

  @override
  String get faqFilesQ => 'Ці можна карыстацца файламі Excel, Word або PDF?';

  @override
  String get faqFilesA =>
      'Так. У задачах і нататках уверсе ёсць кнопка імпарту і экспарту (дзве стрэлкі), а ў кожнай калодзе яна ёсць у меню. Захоўвайце як Excel, CSV, Word або PDF ці загружайце файлы Excel, CSV, Word, Markdown або тэкставыя. Назвы слупкоў могуць быць на любой мове праграмы, а захаваныя файлы заўсёды можна імпартаваць зноў.';

  @override
  String get tplLecture => 'Лекцыя';

  @override
  String get tplBook => 'Канспект кнігі';

  @override
  String get tplJournal => 'Дзённік';

  @override
  String get tplWeek => 'План на тыдзень';

  @override
  String get tplLectureBody => '## Галоўнае\n- \n\n## Пытанні\n- [ ] \n\n## Вынік\n';

  @override
  String get tplBookBody =>
      '## Асноўная ідэя\n\n## Што я даведаўся\n- \n\n## Цытаты\n> \n\n## Прымяніць\n- [ ] \n';

  @override
  String get tplJournalBody => '## Я ўдзячны за\n- \n\n## Фокус дня\n- [ ] \n\n## Нататкі\n';

  @override
  String get tplWeekBody =>
      '## Мэты на тыдзень\n- [ ] \n\n### Субота\n- [ ] \n\n### Нядзеля\n- [ ] \n\n### Панядзелак\n- [ ] \n\n### Аўторак\n- [ ] \n\n### Серада\n- [ ] \n\n### Чацвер\n- [ ] \n\n### Пятніца\n- [ ] \n';

  @override
  String get tplHint => 'Пачаць з шаблона';

  @override
  String get noteImage => 'Відарыс';

  @override
  String get noteAddImage => 'Дадаць відарыс';

  @override
  String get noteImageUnreadable =>
      'Гэты файл не з’яўляецца відарысам, які праграма можа прачытаць.';

  @override
  String get noteImageTooLarge => 'Гэты відарыс занадта вялікі.';

  @override
  String get examSet => 'Задаць дату экзамену';

  @override
  String get examDate => 'Дата экзамену';

  @override
  String get examToday => 'Экзамен сёння. Поспеху!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Экзамен праз $count дня',
      many: 'Экзамен праз $count дзён',
      few: 'Экзамен праз $count дні',
      one: 'Экзамен праз $count дзень',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'вучыце $count новай карткі ў дзень',
      many: 'вучыце $count новых картак у дзень',
      few: 'вучыце $count новыя карткі ў дзень',
      one: 'вучыце $count новую картку ў дзень',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'усе карткі вывучаны, працягвайце паўтараць';

  @override
  String examRaiseLimit(int count) {
    return 'Паказваць новых картак у дзень: $count';
  }

  @override
  String get backupDriveHint =>
      'Каб захоўваць копію ў інтэрнэце, выберыце Google Дыск (або іншую воблачную праграму) на экране захавання, які адкрыецца далей.';

  @override
  String get flashShareDeck => 'Падзяліцца калодай з сябрам';

  @override
  String get flashSortManual => 'Мой парадак (перацягванне)';

  @override
  String get flashReorderHint => 'Утрымлівайце маркер і перацягніце картку, каб перамясціць яе.';

  @override
  String get flashReorderNeedsAll => 'Ачысціце пошук і фільтры, каб перацягваць карткі.';

  @override
  String get flashDragHandle => 'Перацягніце, каб перамясціць';

  @override
  String get reportTitle => 'Месячная справаздача';

  @override
  String get reportFocus => 'Час фокусу';

  @override
  String reportSessions(int count) {
    return 'Сеансаў: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Лепшы дзень: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Актыўных дзён: $count';
  }

  @override
  String get reportCards => 'Паўторана картак';

  @override
  String reportCardsKnown(String percent) {
    return 'Запомнена: $percent';
  }

  @override
  String get reportTasks => 'Выканана задач';

  @override
  String get reportHabits => 'Адзнакі звычак';

  @override
  String get reportEmpty => 'У гэтым месяцы пакуль нічога не запісана.';

  @override
  String get reportSave => 'Захаваць як PDF або Word';

  @override
  String get reportPrevMonth => 'Папярэдні месяц';

  @override
  String get reportNextMonth => 'Наступны месяц';

  @override
  String get careTitle => 'Догляд за тэлефонам і данымі';

  @override
  String get storageTitle => 'Сховішча';

  @override
  String get storageSubtitle => 'Што займае месца і ачыстка невыкарыстаных відарысаў';

  @override
  String get storagePictures => 'Відарысы ў нататках';

  @override
  String get storageCardMedia => 'Відарысы і аўдыя ў картках';

  @override
  String get storageText => 'Тэкст нататак';

  @override
  String get storageFree => 'Вольна на тэлефоне';

  @override
  String get storageLow =>
      'Тэлефон амаль запоўнены. Вызваліце месца, каб рэзервовыя копіі і напаміны працавалі далей.';

  @override
  String storageUnused(int count, String size) {
    return 'Невыкарыстаных відарысаў: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Невыкарыстаных відарысаў няма. Усё ў парадку.';

  @override
  String get storageClean => 'Выдаліць невыкарыстаныя відарысы';

  @override
  String storageCleaned(int count) {
    return 'Выдалена відарысаў: $count';
  }

  @override
  String get storageHint =>
      'Відарыс лічыцца невыкарыстаным, толькі калі ніводная нататка яго не паказвае, у тым ліку нататкі ў сметніцы.';

  @override
  String get batteryTitle => 'Каб напаміны працавалі';

  @override
  String get batterySubtitle => 'Некаторыя тэлефоны спыняюць праграмы ў фоне. Праверце свой.';

  @override
  String get batteryStatusOk =>
      'Эканомія зараду не абмяжоўвае гэту праграму. Напаміны і гукі павінны прыходзіць своечасова.';

  @override
  String get batteryStatusLimited =>
      'Эканомія зараду можа спыняць гэту праграму ў фоне, таму напаміны і гукі могуць спазняцца або не прыходзіць.';

  @override
  String get batteryOpen => 'Адкрыць налады акумулятара';

  @override
  String get batteryOpenApp => 'Адкрыць налады праграмы';

  @override
  String get batteryGeneric =>
      'У наладах акумулятара выберыце гэту праграму і ўсталюйце «Без абмежаванняў» (або «Не аптымізаваць»).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: таксама адкрыйце Бяспека › Дазволы › Аўтазапуск і ўключыце гэту праграму, а для эканоміі зараду ўсталюйце «Без абмежаванняў».';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: адкрыйце Акумулятар › гэта праграма і дазвольце фонавую актыўнасць і аўтазапуск; замацуйце праграму ў спісе нядаўніх.';

  @override
  String get batterySamsung =>
      'Samsung: Акумулятар › Абмежаванні фонавага выкарыстання: выдаліце гэту праграму са спячых і глыбока спячых праграм.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Запуск праграм › гэта праграма › кіраваць уручную і дазвольце аўтазапуск, другасны запуск і працу ў фоне.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Акумулятар › Энергаспажыванне ў фоне › дазвольце гэту праграму і ўключыце аўтазапуск у дазволах.';

  @override
  String get whatsNewTitle => 'Што новага';

  @override
  String get whatsNewSubtitle => 'Апошнія змены ў некалькіх радках';

  @override
  String get whatsNewDone => 'Зразумела';

  @override
  String get whatsNewOrderTitle => 'Перацягвайце карткі ў сваім парадку';

  @override
  String get whatsNewOrderBody =>
      'У калодзе выберыце Сартаванне › Мой парадак, потым утрымлівайце маркер і перацягвайце.';

  @override
  String get whatsNewSpeechTitle => 'Дынамік на кожным баку карткі';

  @override
  String get whatsNewSpeechBody =>
      'Націсніце, каб пачуць слова або пераклад. Хуткасць, паўторы і голас — у меню паўтарэння. Мова вызначаецца па тэксце.';

  @override
  String get whatsNewReportTitle => 'Месячная справаздача';

  @override
  String get whatsNewReportBody =>
      'У Аналітыцы націсніце значок справаздачы, каб убачыць месяц і захаваць яго як PDF або Word.';

  @override
  String get whatsNewCareTitle => 'Догляд за тэлефонам і данымі';

  @override
  String get whatsNewCareBody =>
      'У наладах цяпер ёсць старонка сховішча з ачысткай відарысаў і даведнік па акумулятары для маркі вашага тэлефона.';

  @override
  String get whatsNewSoundTitle => 'Спакайнейшыя гукі';

  @override
  String get whatsNewSoundBody =>
      'Гукі прыроды сталі мякчэйшымі і цішэйшымі, а карткі з відарысамі — прыгажэйшымі.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Праверана $date: апошняя рэзервовая копія адкрываецца правільна.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Праверана $date: знойдзена пашкоджаная рэзервовая копія, яна заменена новай.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Праверана $date: не ўдалося адкрыць апошнюю рэзервовую копію. Захавайце файл рэзервовай копіі самі ў наладах.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Звычайна вы вучыцеся каля $time';
  }

  @override
  String get smartReviewTimeUse => 'Выкарыстаць';

  @override
  String get widgetNewNote => 'Новая нататка';

  @override
  String get noteConnections => 'Меткі, спасылкі і задачы';

  @override
  String get navCards => 'Карткі';

  @override
  String get studyAnswerWay => 'Як адказваць';

  @override
  String get studyMorePractice => 'Дадатковая практыка';

  @override
  String get studySessionSettings => 'Налады сеанса';

  @override
  String get focusAdjustTitle => 'Ваш сеанс';

  @override
  String get focusPresetsTitle => 'Гатовыя';

  @override
  String get focusPresetStudy => 'Вучоба';

  @override
  String get focusPresetDeep => 'Глыбокая праца';

  @override
  String get focusPresetQuick => 'Хуткі спрынт';

  @override
  String get focusPresetReading => 'Чытанне';

  @override
  String get focusPresetWorkout => 'Трэніровачныя раўнды';

  @override
  String get focusAdjustMinutes => 'Працягласць фокусу';

  @override
  String get focusAdjustBreak => 'Працягласць перапынку';

  @override
  String get focusAdjustRounds => 'Раўнды';

  @override
  String get focusRoundsOpen => 'Без абмежаванняў';

  @override
  String focusMinutesShort(String n) {
    return '$n хв';
  }

  @override
  String get focusTapToAdjust => 'Націсніце, каб змяніць час';

  @override
  String get flashArrangeDecks => 'Упарадкаваць калоды';

  @override
  String get flashDeckActions => 'Параметры калоды';

  @override
  String get starterBrowse => 'Гатовыя калоды';

  @override
  String get starterBrowseHint => 'Дадайце адным націскам і пачынайце вучыцца';

  @override
  String get dashOpenDecks => 'Адкрыць карткі';

  @override
  String speechVoiceNumber(String n) {
    return 'Голас $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Выдатны паток. Адпачыць $m хв?';
  }

  @override
  String get focusFlowBreakStart => 'Пачаць перапынак';

  @override
  String tasksFinishAt(String time) {
    return 'Пачніце зараз — і скончыце ўсё да $time';
  }

  @override
  String get focusCalmPacing => 'Спакойны тэмп';

  @override
  String get focusCalmPacingHint => 'Толькі цэлыя хвіліны і кольца, без секунд';

  @override
  String get focusFlipHint => 'Пакладзіце тэлефон экранам уніз, каб пачаць';

  @override
  String get focusImmersive => 'Рэжым пагружэння';

  @override
  String get focusImmersiveBlack => 'Чыста чорны (эканоміць зарад)';

  @override
  String get focusFlipToFocus => 'Перавярніце для фокусу';

  @override
  String get focusFlipToFocusHint => 'У рэжыме пагружэння: экранам уніз — старт, паднялі — паўза';

  @override
  String get guardTitle => 'Абарона ад адцягненняў';

  @override
  String get guardSubtitle => 'Прыпыняйце праграмы, што адцягваюць, падчас фокусу';

  @override
  String get guardSwitch => 'Прыпыняць праграмы, што адцягваюць';

  @override
  String get guardSwitchHint => 'Падчас сеансаў фокусу і ў гадзіны Абароны па часе';

  @override
  String get guardNeedsAccess =>
      'Патрэбен пераключальнік спецыяльных магчымасцей: націсніце, каб уключыць';

  @override
  String get guardDisclosureTitle => 'Як працуе абарона';

  @override
  String get guardDisclosureBody =>
      'Каб прыпыняць выбраныя вамі праграмы, Deep Focus выкарыстоўвае службу спецыяльных магчымасцей Android і бачыць, якая праграма адкрыта. Калі ўключана «Закрываць Shorts і Reels», яна таксама правярае, ці ёсць на экране прайгравальнік кароткіх відэа.\n\nЯна не чытае ніякага тэксту, не захоўвае пабачанага і нічога нікуды не адпраўляе: усё застаецца на вашым тэлефоне. Выключыць яе можна ў любы час у наладах спецыяльных магчымасцей.';

  @override
  String get guardAgree => 'Пагадзіцца і адкрыць налады';

  @override
  String get guardModeGentle => 'Мяккі';

  @override
  String get guardModeStrict => 'Строгі';

  @override
  String get guardGentleHint => '5-секундная паўза для дыхання, потым вырашаеце вы';

  @override
  String get guardStrictHint => 'Выбраныя праграмы закрыты да канца часу фокусу';

  @override
  String get guardApps => 'Праграмы для прыпынення';

  @override
  String get guardAppsAllowed => 'Дазволеныя праграмы';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count праграмы',
      many: '$count праграм',
      few: '$count праграмы',
      one: '$count праграма',
      zero: 'Яшчэ нічога не выбрана',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Дазволіць толькі выбраныя праграмы';

  @override
  String get guardAllowlistHint =>
      'Астатнія праграмы прыпыняюцца; званкі, налады і клавіятура працуюць заўсёды';

  @override
  String get guardShorts => 'Закрываць Shorts і Reels';

  @override
  String get guardShortsHint =>
      'Кожны раз, калі абарона ўключана. Без гарантый: гэтыя праграмы часта мяняюцца';

  @override
  String get guardSchedule => 'Абарона па часе';

  @override
  String get guardScheduleHint =>
      'Таксама абараняць у выбраныя дні і гадзіны, напрыклад на вучобе ці працы';

  @override
  String get guardFrom => 'З';

  @override
  String get guardTo => 'Да';

  @override
  String get guardSearchApps => 'Пошук праграм';

  @override
  String get guardNoApps => 'Праграм не знойдзена';

  @override
  String get guardPrivacy =>
      'Працуе толькі на вашым тэлефоне: абарона бачыць, якая праграма адкрыта, але ніколі — што ў ёй, і нічога не адпраўляе.';

  @override
  String get guardBreathe => 'Удых… і выдых';

  @override
  String get guardQuestion => 'Вам зараз патрэбна гэта праграма?';

  @override
  String get guardBackToFocus => 'Назад да фокусу';

  @override
  String get guardOpenFive => 'Адкрыць на 5 хвілін';

  @override
  String get guardStrictBody => 'Гэта праграма прыпынена да канца часу фокусу.';

  @override
  String get guardShortsClosed => 'Кароткія відэа закрываюцца, пакуль абарона ўключана';

  @override
  String get faqGuardQ => 'Як спыніць праграмы, што адцягваюць падчас фокусу?';

  @override
  String get faqGuardA =>
      'Адкрыйце Фокус → налады таймера → Абарона ад адцягненняў. Выберыце праграмы, а потым «Мяккі» (5 секунд дыхання і пытанне «Вам зараз патрэбна гэта праграма?») або «Строгі» (яны застаюцца закрытымі). Яна працуе падчас сеансаў фокусу, а з Абаронай па часе — у выбраныя дні і гадзіны. «Дазволіць толькі выбраныя праграмы» прыпыняе ўсё іншае; званкі, налады і клавіятура працуюць заўсёды. Android адзін раз папросіць уключыць абарону ў наладах спецыяльных магчымасцей. Яна бачыць толькі, якая праграма адкрыта, і нічога не адпраўляе.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Перамешчана ў «$name»';
  }

  @override
  String get notesDragHint => 'Утрымлівайце нататку і перацягніце яе на блакнот';

  @override
  String get guardReviewCards => 'Лепш паўтарыць карткі';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Вас чакаюць $count карткі',
      many: 'Вас чакаюць $count картак',
      few: 'Вас чакаюць $count карткі',
      one: 'Вас чакае $count картка',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Тэрмінова: утрымлівайце 10 секунд';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Утрымлівайце… $n';
  }

  @override
  String get guardWeekTitle => 'Гэты тыдзень';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count паўзы',
      many: '$count паўз',
      few: '$count паўзы',
      one: '$count паўза',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'вяртання да фокусу: $count',
      many: 'вяртанняў да фокусу: $count',
      few: 'вяртанні да фокусу: $count',
      one: 'вяртанне да фокусу: $count',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Перайменаваць словы';

  @override
  String get wordsSubtitle => 'Сваё слова для любога тэксту ў праграме';

  @override
  String get wordsHint =>
      'Націсніце на тэкст, каб змяніць яго. Вашы словы дзейнічаюць толькі для гэтай мовы і захоўваюцца ў рэзервовых копіях.';

  @override
  String get wordsSearch => 'Пошук тэкстаў';

  @override
  String get wordsChangedOnly => 'Толькі змененыя';

  @override
  String wordsOriginal(String text) {
    return 'Арыгінал: $text';
  }

  @override
  String get wordsReset => 'Вярнуць арыгінал';

  @override
  String get wordsResetAll => 'Скінуць усе словы';

  @override
  String get wordsResetAllConfirm => 'Усе тэксты на гэтай мове вернуцца да арыгінала.';

  @override
  String get wordsNone => 'Тэкст не знойдзены';

  @override
  String get settingsLanguageSearch => 'Пошук моў';

  @override
  String get settingsLanguageNoMatch => 'Няма адпаведнай мовы';

  @override
  String get soundsMyMusic => 'Ваш аўдыяфайл';

  @override
  String get soundsMusicHint =>
      'Прайгравайце аўдыяфайл з тэлефона. Нічога не капіюецца і не запампоўваецца.';

  @override
  String get soundsChooseMusic => 'Выбраць аўдыя';

  @override
  String get soundsRemoveMusic => 'Прыбраць аўдыя';

  @override
  String get wordPacksTitle => 'Пакеты слоў';

  @override
  String get wordPacksHint =>
      'Спісы слоў па тэмах. Спампуйце толькі патрэбную мову, а потым свабодна змяняйце або выдаляйце карткі.';

  @override
  String get wordPacksFailed => 'Не ўдалося спампаваць. Праверце злучэнне.';

  @override
  String get wordPacksEmpty => 'Словы для гэтай мовы яшчэ рыхтуюцца.';
}
