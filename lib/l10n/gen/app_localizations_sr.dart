// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Почетна';

  @override
  String get navTasks => 'Задаци';

  @override
  String get navFocus => 'Фокус';

  @override
  String get navCalendar => 'Календар';

  @override
  String get navSpaces => 'Простори';

  @override
  String get moduleProjects => 'Пројекти';

  @override
  String get moduleNotes => 'Белешке';

  @override
  String get moduleFlashcards => 'Картице';

  @override
  String get moduleGoals => 'Циљеви';

  @override
  String get moduleHabits => 'Навике';

  @override
  String get moduleAnalytics => 'Увиди';

  @override
  String get moduleSearch => 'Претрага';

  @override
  String get moduleAssistant => 'Асистент';

  @override
  String get moduleSettings => 'Подешавања';

  @override
  String get moduleTrash => 'Отпад';

  @override
  String get actionSave => 'Сачувај';

  @override
  String get actionCancel => 'Откажи';

  @override
  String get actionDelete => 'Избриши';

  @override
  String get actionEdit => 'Измени';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionAdd => 'Додај';

  @override
  String get actionCreate => 'Направи';

  @override
  String get actionClose => 'Затвори';

  @override
  String get actionBack => 'Назад';

  @override
  String get actionUndo => 'Опозови';

  @override
  String get actionRestore => 'Врати';

  @override
  String get actionRetry => 'Покушај поново';

  @override
  String get actionContinue => 'Настави';

  @override
  String get actionSkip => 'Прескочи';

  @override
  String get actionArchive => 'Архивирај';

  @override
  String get actionUnarchive => 'Врати из архиве';

  @override
  String get actionPin => 'Закачи';

  @override
  String get actionUnpin => 'Откачи';

  @override
  String get actionMore => 'Још опција';

  @override
  String get actionClear => 'Обриши';

  @override
  String get actionSearch => 'Претражи';

  @override
  String get actionSort => 'Сортирај';

  @override
  String get actionShare => 'Подели';

  @override
  String get actionImport => 'Увези';

  @override
  String get actionExport => 'Извези';

  @override
  String get actionPause => 'Паузирај';

  @override
  String get actionResume => 'Настави';

  @override
  String get actionStart => 'Покрени';

  @override
  String get actionStop => 'Заустави';

  @override
  String get actionComplete => 'Заврши';

  @override
  String get actionDeleteForever => 'Трајно избриши';

  @override
  String get actionEmptyTrash => 'Испразни отпад';

  @override
  String get actionUnlink => 'Раскини везу';

  @override
  String get actionCustomize => 'Прилагоди';

  @override
  String get actionPreview => 'Преглед';

  @override
  String get actionLog => 'Забележи напредак';

  @override
  String get stateLoading => 'Учитавање…';

  @override
  String get stateSaving => 'Чување…';

  @override
  String get stateSaved => 'Сачувано';

  @override
  String get stateUnsaved => 'Несачуване измене';

  @override
  String get errorGenericTitle => 'Нешто није у реду';

  @override
  String get errorGenericMessage => 'Ваши подаци су безбедни. Покушајте поново.';

  @override
  String get errorLoadFailed => 'Овај садржај није могуће учитати.';

  @override
  String get errorSaveFailed => 'Чување није успело. Ваше измене су и даље ту.';

  @override
  String get validationRequired => 'Ово поље је обавезно';

  @override
  String get validationTitleRequired => 'Унесите наслов';

  @override
  String get validationNameRequired => 'Унесите назив';

  @override
  String get validationTooLong => 'Предугачко је';

  @override
  String get validationEndBeforeStart => 'Крај мора бити после почетка';

  @override
  String get validationStartAfterDue => 'Датум почетка мора бити пре рока';

  @override
  String get validationPositiveNumber => 'Унесите број већи од нуле';

  @override
  String get validationDependencyCycle => 'Тако би настала кружна зависност';

  @override
  String get validationInvalidRepeat => 'Ово правило понављања није важеће';

  @override
  String get deletedItem => 'Премештено у отпад';

  @override
  String get untitled => 'Без наслова';

  @override
  String get noProject => 'Без пројекта';

  @override
  String get greetingMorning => 'Добро јутро';

  @override
  String get greetingAfternoon => 'Добар дан';

  @override
  String get greetingEvening => 'Добро вече';

  @override
  String get dashFocusToday => 'Данашњи фокус';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done од $target';
  }

  @override
  String get dashStartFocus => 'Покрени фокус';

  @override
  String get dashFocusRunning => 'Сесија у току';

  @override
  String get dashTodayTasks => 'Рок данас';

  @override
  String get dashAgenda => 'Распоред';

  @override
  String get dashHabits => 'Данашње навике';

  @override
  String get dashGoals => 'Циљеви';

  @override
  String get dashReview => 'Понављање';

  @override
  String get dashRecentNotes => 'Недавне белешке';

  @override
  String get dashInsight => 'Предлог';

  @override
  String get dashSeeAll => 'Прикажи све';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картица за понављање',
      few: '$count картице за понављање',
      one: '$count картица за понављање',
      zero: 'Нема картица за понављање',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Понови сада';

  @override
  String get dashCustomizeTitle => 'Делови почетне стране';

  @override
  String get dashCustomizeHint => 'Изаберите шта се приказује на почетном екрану.';

  @override
  String get dashSectionFocus => 'Фокус';

  @override
  String get dashSectionToday => 'Данашњи задаци';

  @override
  String get dashSectionAgenda => 'Распоред';

  @override
  String get dashSectionHabits => 'Навике';

  @override
  String get dashSectionGoals => 'Циљеви';

  @override
  String get dashSectionReview => 'Понављање картица';

  @override
  String get dashSectionNotes => 'Недавне белешке';

  @override
  String get dashSectionInsight => 'Предлози';

  @override
  String get quickAddTask => 'Нови задатак';

  @override
  String get quickAddNote => 'Нова белешка';

  @override
  String get quickAddEvent => 'Нови догађај';

  @override
  String get quickStartFocus => 'Фокус';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Имате $count закаснелих задатака. Почните од најважнијег.',
      few: 'Имате $count закаснела задатка. Почните од најважнијег.',
      one: 'Имате $count закаснели задатак. Почните од најважнијег.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'До дневног циља фокуса недостаје вам још $minutes мин.';
  }

  @override
  String get insightCardsDue => 'Поновите картице сада, док су још свеже.';

  @override
  String get insightAllClear =>
      'Све иде по плану. Испланирајте сутрашњи дан или узмите мирну паузу.';

  @override
  String insightHabitStreak(String habit) {
    return 'Задржите низ: „$habit“ данас још чека.';
  }

  @override
  String get focusTitle => 'Фокус';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Одбројавање';

  @override
  String get focusModeCountUp => 'Штоперица';

  @override
  String get focusModeOpen => 'Слободно';

  @override
  String get focusPhaseWork => 'Фокус';

  @override
  String get focusPhaseShortBreak => 'Кратка пауза';

  @override
  String get focusPhaseLongBreak => 'Дуга пауза';

  @override
  String get focusReady => 'Спремно кад и ви';

  @override
  String get focusPaused => 'Паузирано';

  @override
  String get focusRunning => 'У фокусу';

  @override
  String get focusDuration => 'Трајање';

  @override
  String get focusLinkTask => 'Повежи задатак';

  @override
  String get focusLinkedTask => 'Радим на';

  @override
  String get focusNoTask => 'Нема повезаног задатка';

  @override
  String focusCycle(int current, int total) {
    return 'Круг $current од $total';
  }

  @override
  String get focusSkipBreak => 'Прескочи паузу';

  @override
  String get focusStartBreak => 'Покрени паузу';

  @override
  String get focusStartNext => 'Покрени следећи фокус';

  @override
  String get focusSessionComplete => 'Сесија је завршена';

  @override
  String get focusSessionStopped => 'Сесија је сачувана';

  @override
  String focusSessionSummary(String duration) {
    return 'Били сте у фокусу $duration.';
  }

  @override
  String get focusAddNote => 'Додајте белешку о овој сесији';

  @override
  String get focusHistory => 'Историја';

  @override
  String get focusNoHistory => 'Завршене сесије ће се појавити овде';

  @override
  String get focusTargets => 'Циљеви';

  @override
  String get focusDailyTarget => 'Дневни циљ';

  @override
  String get focusWeeklyTarget => 'Недељни циљ';

  @override
  String get focusOutcomeCompleted => 'Завршено';

  @override
  String get focusOutcomeInterrupted => 'Прекинуто раније';

  @override
  String get focusRecovered => 'Сесија се наставила док је апликација била затворена.';

  @override
  String get focusCompletedWhileAway =>
      'Сесија се завршила док је апликација била затворена и сачувана је.';

  @override
  String get focusNotificationsOff =>
      'Обавештења су искључена. Нећете бити обавештени када се сесија заврши.';

  @override
  String get focusBatteryHint =>
      'Неки уређаји паузирају апликације у позадини. Тајмер остаје тачан, али обавештења могу да касне. За поуздана обавештења дозволите неограничено коришћење батерије.';

  @override
  String get focusOpenSettings => 'Отвори подешавања';

  @override
  String get focusStopConfirmTitle => 'Зауставити ову сесију?';

  @override
  String get focusStopConfirmMessage => 'Досадашње време фокуса биће сачувано.';

  @override
  String get focusDiscard => 'Одбаци';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минута',
      few: '$minutes минута',
      one: '$minutes минут',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, преостало $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, прошло $time';
  }

  @override
  String get focusDeleteSession => 'Избриши сесију';

  @override
  String get tasksTitle => 'Задаци';

  @override
  String get tasksViewToday => 'Данас';

  @override
  String get tasksViewUpcoming => 'Предстојећи';

  @override
  String get tasksViewAll => 'Сви';

  @override
  String get tasksViewOverdue => 'Закаснели';

  @override
  String get tasksViewCompleted => 'Завршени';

  @override
  String get tasksQuickAddHint => 'Додајте задатак…';

  @override
  String get tasksEmptyTitle => 'Све је готово';

  @override
  String get tasksEmptyMessage => 'Додајте задатак и обликујте свој дан.';

  @override
  String get tasksEmptyCompleted => 'Завршени задаци ће се појавити овде.';

  @override
  String get taskNew => 'Нови задатак';

  @override
  String get taskEdit => 'Измени задатак';

  @override
  String get taskTitleLabel => 'Наслов';

  @override
  String get taskTitleHint => 'Шта треба урадити?';

  @override
  String get taskDescriptionLabel => 'Опис';

  @override
  String get taskNotesLabel => 'Белешке';

  @override
  String get taskPriority => 'Приоритет';

  @override
  String get priorityNone => 'Нема';

  @override
  String get priorityLow => 'Низак';

  @override
  String get priorityMedium => 'Средњи';

  @override
  String get priorityHigh => 'Висок';

  @override
  String get priorityUrgent => 'Хитно';

  @override
  String get taskDueDate => 'Рок';

  @override
  String get taskStartDate => 'Датум почетка';

  @override
  String get taskReminder => 'Подсетник';

  @override
  String get taskRepeat => 'Понављање';

  @override
  String get taskProject => 'Пројекат';

  @override
  String get taskCategory => 'Категорија';

  @override
  String get taskCategoryHint => 'нпр. Посао, Кућа, Учење';

  @override
  String get taskEstimateMinutes => 'Процена (минути)';

  @override
  String get taskTracked => 'Измерени фокус';

  @override
  String get taskLabels => 'Ознаке';

  @override
  String get taskAddLabel => 'Нова ознака';

  @override
  String get taskChecklist => 'Листа провере';

  @override
  String get taskAddChecklistItem => 'Додај ставку';

  @override
  String get taskSubtasks => 'Подзадаци';

  @override
  String get taskAddSubtask => 'Додај подзадатак';

  @override
  String get taskDependencies => 'Блокира га';

  @override
  String get taskAddDependency => 'Додај задатак који блокира';

  @override
  String get taskLinkedNotes => 'Повезане белешке';

  @override
  String get taskSetTime => 'Подеси време';

  @override
  String get taskNoDate => 'Без датума';

  @override
  String get taskCompleted => 'Задатак је завршен';

  @override
  String get taskNextOccurrence => 'Следеће понављање је направљено';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Касни $days дана',
      few: 'Касни $days дана',
      one: 'Касни $days дан',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Означи „$title“ као готово';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Означи „$title“ као недовршено';
  }

  @override
  String get sortSmart => 'Паметно';

  @override
  String get sortDueDate => 'Рок';

  @override
  String get sortPriority => 'Приоритет';

  @override
  String get sortCreated => 'Најновије';

  @override
  String get sortTitle => 'Наслов';

  @override
  String get filterAllProjects => 'Сви пројекти';

  @override
  String get filterAnyPriority => 'Било који приоритет';

  @override
  String get filterTitle => 'Филтрирање и сортирање';

  @override
  String get dateToday => 'Данас';

  @override
  String get dateTomorrow => 'Сутра';

  @override
  String get dateYesterday => 'Јуче';

  @override
  String get repeatNever => 'Не понавља се';

  @override
  String get repeatDaily => 'Сваки дан';

  @override
  String get repeatWeekdays => 'Сваки радни дан';

  @override
  String get repeatWeekly => 'Сваке недеље';

  @override
  String get repeatMonthly => 'Сваког месеца';

  @override
  String get repeatYearly => 'Сваке године';

  @override
  String get repeatCustom => 'Прилагођено';

  @override
  String get repeatEvery => 'Понављај сваких';

  @override
  String get repeatOnDays => 'Данима';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'дана',
      few: 'дана',
      one: 'дан',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'недеља',
      few: 'недеље',
      one: 'недеља',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'месеци',
      few: 'месеца',
      one: 'месец',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'година',
      few: 'године',
      one: 'година',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пута',
      few: '$count пута',
      one: '$count пута',
    );
    return 'Завршава се после $_temp0';
  }

  @override
  String get repeatEndsNever => 'Никад се не завршава';

  @override
  String get reminderAtTime => 'У време догађаја';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минута раније',
      few: '$minutes минута раније',
      one: '$minutes минут раније',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours сати раније',
      few: '$hours сата раније',
      one: '$hours сат раније',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 дан раније';

  @override
  String get projectsTitle => 'Пројекти';

  @override
  String get projectsEmptyTitle => 'Још нема пројеката';

  @override
  String get projectsEmptyMessage => 'Групишите повезане задатке, белешке и време фокуса.';

  @override
  String get projectNew => 'Нови пројекат';

  @override
  String get projectEdit => 'Измени пројекат';

  @override
  String get projectName => 'Назив';

  @override
  String get projectDescription => 'Опис';

  @override
  String get projectGoal => 'Циљ';

  @override
  String get projectDeadline => 'Рок';

  @override
  String get projectColor => 'Боја';

  @override
  String get projectIcon => 'Икона';

  @override
  String get projectProgress => 'Напредак';

  @override
  String projectTasksDone(int done, int total) {
    return 'Готово $done од $total задатака';
  }

  @override
  String get projectFocusTime => 'Време фокуса';

  @override
  String get projectArchived => 'Архивирани пројекти';

  @override
  String get projectShowArchived => 'Прикажи архивиране';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Још $days дана',
      few: 'Још $days дана',
      one: 'Још $days дан',
      zero: 'Рок је данас',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Рок је прошао';

  @override
  String get calendarTitle => 'Календар';

  @override
  String get calendarMonth => 'Месец';

  @override
  String get calendarWeek => 'Недеља';

  @override
  String get calendarDay => 'Дан';

  @override
  String get calendarToday => 'Данас';

  @override
  String get calendarPrevious => 'Претходно';

  @override
  String get calendarNext => 'Следеће';

  @override
  String get calendarNoEvents => 'Ништа није заказано';

  @override
  String get calendarAllDay => 'Цео дан';

  @override
  String get eventNew => 'Нови догађај';

  @override
  String get eventEdit => 'Измени догађај';

  @override
  String get eventTitleHint => 'Наслов догађаја';

  @override
  String get eventStarts => 'Почиње';

  @override
  String get eventEnds => 'Завршава се';

  @override
  String get eventKind => 'Врста';

  @override
  String get eventKindEvent => 'Догађај';

  @override
  String get eventKindTimeBlock => 'Временски блок';

  @override
  String get eventKindFocus => 'Сесија фокуса';

  @override
  String get eventKindGoal => 'Лични циљ';

  @override
  String get eventDescription => 'Детаљи';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Преклапа се са $count догађаја',
      few: 'Преклапа се са $count догађаја',
      one: 'Преклапа се са $count догађајем',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Преклапања у распореду овог дана';

  @override
  String get calendarTaskDue => 'Рок задатка';

  @override
  String get calendarDragHint => 'Дуго притисните и превуците догађај да бисте га померили';

  @override
  String get calendarRescheduled => 'Догађај је померен';

  @override
  String get calendarScheduleTask => 'Закажи као временски блок';

  @override
  String get notesTitle => 'Белешке';

  @override
  String get notesViewAll => 'Све';

  @override
  String get notesViewPinned => 'Закачене';

  @override
  String get notesViewFavorites => 'Омиљене';

  @override
  String get notesViewArchived => 'Архивиране';

  @override
  String get notesTags => 'Ознаке';

  @override
  String get notesNewNotebook => 'Нова бележница';

  @override
  String get notesNoNotebook => 'Без бележнице';

  @override
  String get notesEmptyTitle => 'Празан лист';

  @override
  String get notesEmptyMessage => 'Записујте идеје, белешке са састанака и знање.';

  @override
  String get noteTitleHint => 'Наслов';

  @override
  String get noteBodyHint =>
      'Почните да пишете… Користите # за ознаке и [[Наслов]] за повезивање белешки.';

  @override
  String get noteFavorite => 'Омиљено';

  @override
  String get noteUnfavorite => 'Уклони из омиљених';

  @override
  String get noteMoveTo => 'Премести у бележницу';

  @override
  String get noteBacklinks => 'Упућују овамо';

  @override
  String get noteLinkedTasks => 'Повезани задаци';

  @override
  String get noteLinkTask => 'Повежи задатак';

  @override
  String get noteLinkProject => 'Пројекат';

  @override
  String get noteFormatHeading => 'Наслов';

  @override
  String get noteFormatBold => 'Подебљано';

  @override
  String get noteFormatItalic => 'Курзив';

  @override
  String get noteFormatList => 'Листа са ознакама';

  @override
  String get noteFormatChecklist => 'Листа провере';

  @override
  String get noteFormatLink => 'Веза';

  @override
  String noteEdited(String time) {
    return 'Измењено $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count речи',
      few: '$count речи',
      one: '$count реч',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Картице';

  @override
  String get flashEmptyTitle => 'Направите свој први шпил';

  @override
  String get flashEmptyMessage =>
      'Понављање у размацима приказује сваку картицу баш пре него што бисте је заборавили.';

  @override
  String get deckNew => 'Нови шпил';

  @override
  String get deckEdit => 'Измени шпил';

  @override
  String get deckName => 'Назив шпила';

  @override
  String get deckDescription => 'Опис';

  @override
  String get deckDailyNew => 'Нових картица дневно';

  @override
  String get deckDailyReview => 'Дневни циљ понављања';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картица',
      few: '$count картице',
      one: '$count картица',
      zero: 'Нема картица',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'За понављање';

  @override
  String get deckNewCards => 'Нове';

  @override
  String get deckMature => 'Научене';

  @override
  String get deckStudy => 'Учи';

  @override
  String get deckNothingDue => 'Тренутно нема ништа за понављање. Вратите се касније.';

  @override
  String get deckEmptyCards => 'Додајте картице да бисте почели да учите.';

  @override
  String get cardNew => 'Нова картица';

  @override
  String get cardEdit => 'Измени картицу';

  @override
  String get cardFront => 'Предња страна';

  @override
  String get cardBack => 'Задња страна';

  @override
  String get cardFrontHint => 'Питање или појам';

  @override
  String get cardBackHint => 'Одговор или дефиниција';

  @override
  String get cardTags => 'Ознаке';

  @override
  String get cardAddAnother => 'Сачувај и додај још једну';

  @override
  String get reviewShowAnswer => 'Прикажи одговор';

  @override
  String get reviewAgain => 'Поново';

  @override
  String get reviewHard => 'Тешко';

  @override
  String get reviewGood => 'Добро';

  @override
  String get reviewEasy => 'Лако';

  @override
  String reviewProgress(int done, int total) {
    return '$done од $total';
  }

  @override
  String get reviewFinishedTitle => 'Сесија је завршена';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Поновили сте $count картица.',
      few: 'Поновили сте $count картице.',
      one: 'Поновили сте $count картицу.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Додирните да видите одговор';

  @override
  String get importCardsTitle => 'Увоз картица';

  @override
  String get importCardsHint =>
      'Налепите по једну картицу у ред (предња и задња страна раздвојене табулатором или тачком и зарезом) или изаберите датотеку: Excel (.xlsx), CSV, Anki шпил (.apkg) или извезени шпил.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Увезено је $count картица',
      few: 'Увезене су $count картице',
      one: 'Увезена је $count картица',
      zero: 'Није увезена ниједна картица',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Овај садржај није могуће увести.';

  @override
  String get exportCopied => 'Шпил је извезен';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count мин',
      one: '$count мин',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дана',
      few: '$count дана',
      one: '$count дан',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Циљеви';

  @override
  String get goalsEmptyTitle => 'Поставите циљ';

  @override
  String get goalsEmptyMessage =>
      'Поставите дневне, недељне, месечне или дугорочне циљеве и пратите стварни напредак.';

  @override
  String get goalNew => 'Нови циљ';

  @override
  String get goalEdit => 'Измени циљ';

  @override
  String get goalTitleHint => 'Шта желите да постигнете?';

  @override
  String get goalPeriod => 'Период';

  @override
  String get goalPeriodDaily => 'Дневни';

  @override
  String get goalPeriodWeekly => 'Недељни';

  @override
  String get goalPeriodMonthly => 'Месечни';

  @override
  String get goalPeriodLongTerm => 'Дугорочни';

  @override
  String get goalTarget => 'Циљна вредност';

  @override
  String get goalUnit => 'Јединица';

  @override
  String get goalUnitHint => 'нпр. стране, км, сати';

  @override
  String get goalStatusActive => 'Активан';

  @override
  String get goalStatusPaused => 'Паузиран';

  @override
  String get goalStatusAchieved => 'Постигнут';

  @override
  String get goalPause => 'Паузирај циљ';

  @override
  String get goalResume => 'Настави циљ';

  @override
  String get goalMarkAchieved => 'Означи као постигнут';

  @override
  String goalProgressOf(String current, String target) {
    return '$current од $target';
  }

  @override
  String get goalLogAmount => 'Количина';

  @override
  String get goalLogNote => 'Белешка (необавезно)';

  @override
  String get goalHistory => 'Историја';

  @override
  String get goalNoHistory => 'Забележени напредак ће се појавити овде';

  @override
  String get goalLinkedTasks => 'Повезани задаци';

  @override
  String get goalLinkedTasksHint => 'Сваки завршени повезани задатак рачуна се као 1 за овај циљ.';

  @override
  String get goalThisPeriod => 'Овај период';

  @override
  String get habitsTitle => 'Навике';

  @override
  String get habitsEmptyTitle => 'Мали кораци, сваки дан';

  @override
  String get habitsEmptyMessage => 'Направите навику и означите је када је обавите.';

  @override
  String get habitNew => 'Нова навика';

  @override
  String get habitEdit => 'Измени навику';

  @override
  String get habitNameHint => 'нпр. Прочитај 20 страна';

  @override
  String get habitDays => 'Распоред';

  @override
  String get habitEveryDay => 'Сваки дан';

  @override
  String get habitTargetPerDay => 'Пута дневно';

  @override
  String get habitReminder => 'Дневни подсетник';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Низ од $count дана',
      few: 'Низ од $count дана',
      one: 'Низ од $count дана',
      zero: 'Нема низа',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Најдужи низ';

  @override
  String get habitCurrentStreak => 'Тренутни низ';

  @override
  String get habitConsistency => 'Доследност';

  @override
  String get habitLast90 => 'Последњих 90 дана';

  @override
  String get habitPaused => 'Паузирано';

  @override
  String get habitPause => 'Паузирај навику';

  @override
  String get habitResume => 'Настави навику';

  @override
  String get habitDoneToday => 'Обављено данас';

  @override
  String habitCountToday(int count, int target) {
    return 'Данас $count од $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Означи „$name“';
  }

  @override
  String get habitNotScheduledToday => 'Данас није у распореду';

  @override
  String get analyticsTitle => 'Увиди';

  @override
  String get rangeWeek => '7 дана';

  @override
  String get rangeMonth => '30 дана';

  @override
  String get rangeQuarter => '90 дана';

  @override
  String get statFocusTime => 'Време фокуса';

  @override
  String get statSessions => 'Сесије';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return 'Завршено $completed · прекинуто раније $interrupted';
  }

  @override
  String get statTasksDone => 'Завршени задаци';

  @override
  String get statCompletionRate => 'Завршено на време';

  @override
  String get statHabitConsistency => 'Доследност навика';

  @override
  String get statRetention => 'Запамћене картице';

  @override
  String get statReviews => 'Понављања';

  @override
  String get statActiveGoals => 'Активни циљеви';

  @override
  String get statEstimated => 'Процењени обављени рад';

  @override
  String get statEstimatedNote => 'Према вашим проценама, не према измереном времену';

  @override
  String get statMeasuredNote => 'Измерено из сесија фокуса';

  @override
  String get chartFocusByDay => 'Минути фокуса по дану';

  @override
  String get chartTasksByDay => 'Завршени задаци по дану';

  @override
  String get chartTimeByProject => 'Време по пројекту';

  @override
  String get chartProjectProgress => 'Напредак пројеката';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: укупно $total, најбољи дан $best';
  }

  @override
  String get analyticsNoData => 'Још нема довољно података';

  @override
  String get analyticsUnassigned => 'Недодељено';

  @override
  String get searchHint => 'Претражи све…';

  @override
  String get searchRecent => 'Недавне претраге';

  @override
  String get searchClearRecent => 'Обриши недавне претраге';

  @override
  String searchNoResults(String query) {
    return 'Нема резултата за „$query“';
  }

  @override
  String get searchStartTyping =>
      'Претражујте задатке, белешке, картице, циљеве, догађаје и још много тога. Претрага остаје на овом уређају.';

  @override
  String get searchCatTask => 'Задаци';

  @override
  String get searchCatProject => 'Пројекти';

  @override
  String get searchCatNote => 'Белешке';

  @override
  String get searchCatFlashcard => 'Картице';

  @override
  String get searchCatDeck => 'Шпилови';

  @override
  String get searchCatGoal => 'Циљеви';

  @override
  String get searchCatHabit => 'Навике';

  @override
  String get searchCatEvent => 'Догађаји';

  @override
  String get searchCatSession => 'Сесије';

  @override
  String get searchAll => 'Све';

  @override
  String get assistantTitle => 'Асистент';

  @override
  String get assistantIntro =>
      'Помоћ при планирању која ради на вашем уређају. По жељи повежите услугу вештачке интелигенције по свом избору за сажетке и прављење садржаја.';

  @override
  String get assistantOnDevice => 'На уређају';

  @override
  String get assistantCloud => 'Услуга ВИ';

  @override
  String get assistantPlanDay => 'Испланирај мој дан';

  @override
  String get assistantPlanDayDesc =>
      'Ређа отворене задатке према хитности, приоритету и процени и уклапа их око ваших догађаја.';

  @override
  String get assistantExtractTasks => 'Извуци задатке из белешке';

  @override
  String get assistantExtractTasksDesc =>
      'Проналази ставке листе и редове са радњама у белешци и претвара их у задатке.';

  @override
  String get assistantMakeCards => 'Направи картице од белешке';

  @override
  String get assistantMakeCardsDesc =>
      'Претвара редове „појам: дефиниција“ и редове са питањем и одговором у картице.';

  @override
  String get assistantSummarize => 'Сажми белешку';

  @override
  String get assistantSummarizeDesc => 'Потребна је услуга ВИ. Белешка се шаље тек када потврдите.';

  @override
  String get assistantWorkload => 'Преглед оптерећења';

  @override
  String get assistantWorkloadDesc => 'Упоређује процењени рад са слободним временом ове недеље.';

  @override
  String get assistantPlanEmpty => 'Нема отворених задатака за планирање. Уживајте у простору.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Слободно време за фокус данас: $time';
  }

  @override
  String get assistantPlanOverflow => 'Ово можда неће стати у данашњи дан:';

  @override
  String get assistantChooseNote => 'Изаберите белешку';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пронађено је $count задатака',
      few: 'Пронађена су $count задатка',
      one: 'Пронађен је $count задатак',
      zero: 'У белешци нема задатака',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пронађено је $count картица',
      few: 'Пронађене су $count картице',
      one: 'Пронађена је $count картица',
      zero: 'У белешци нема картица',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Изаберите шпил';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Процењени рад: $estimated. Слободно време: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Испланирали сте више него што има времена. Размислите о померању задатака нижег приоритета.';

  @override
  String get assistantWorkloadOk => 'Ваш план стаје у расположиво време.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count отворених задатака нема процену.',
      few: '$count отворена задатка немају процену.',
      one: '$count отворени задатак нема процену.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Услуга ВИ';

  @override
  String get assistantProviderOff => 'Није повезана ниједна услуга. Алатке на уређају и даље раде.';

  @override
  String assistantProviderOn(String host) {
    return 'Повезано са $host';
  }

  @override
  String get assistantEndpoint => 'API крајња тачка (HTTPS)';

  @override
  String get assistantModel => 'Модел';

  @override
  String get assistantApiKey => 'API кључ';

  @override
  String get assistantApiKeyStored => 'Безбедно сачувано на овом уређају';

  @override
  String get assistantHttpsOnly => 'Дозвољене су само HTTPS крајње тачке';

  @override
  String get assistantConsentTitle => 'Послати овај садржај вашој услузи ВИ?';

  @override
  String assistantConsentBody(String host) {
    return 'Изабрани текст белешке напустиће овај уређај и обрадиће га $host. Ништа друго се не шаље.';
  }

  @override
  String get assistantConsentAlways => 'Не питај поново за ову услугу';

  @override
  String get assistantSend => 'Пошаљи';

  @override
  String get assistantUnavailable => 'Услуга ВИ није доступна. Покушајте касније.';

  @override
  String get assistantDisabledTitle => 'Асистент је искључен';

  @override
  String get assistantDisabledMessage =>
      'Укључите га да бисте користили алатке за планирање. Никакви подаци не напуштају ваш уређај осим ако не повежете услугу и потврдите сваки захтев.';

  @override
  String get assistantSummaryTitle => 'Сажетак';

  @override
  String get assistantRemoveProvider => 'Уклони услугу';

  @override
  String get settingsTitle => 'Подешавања';

  @override
  String get settingsGeneral => 'Опште';

  @override
  String get settingsLanguage => 'Језик';

  @override
  String get settingsLanguageSystem => 'Језик уређаја';

  @override
  String get settingsAppearance => 'Изглед';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeLight => 'Светла';

  @override
  String get themeDark => 'Тамна';

  @override
  String get themeSystem => 'Према систему';

  @override
  String get settingsReduceMotion => 'Смањи покрете';

  @override
  String get settingsReduceMotionDesc => 'Мање анимација и покретних позадина';

  @override
  String get settingsFocus => 'Тајмер фокуса';

  @override
  String get settingsWorkLength => 'Трајање фокуса';

  @override
  String get settingsShortBreak => 'Кратка пауза';

  @override
  String get settingsLongBreak => 'Дуга пауза';

  @override
  String get settingsLongBreakEvery => 'Дуга пауза после';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сесија',
      few: '$count сесије',
      one: '$count сесије',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Аутоматски покрени паузе';

  @override
  String get settingsSound => 'Звук по завршетку';

  @override
  String get settingsDailyFocusTarget => 'Дневни циљ фокуса';

  @override
  String get settingsWeeklyFocusTarget => 'Недељни циљ фокуса';

  @override
  String get settingsNotifications => 'Обавештења';

  @override
  String get settingsNotificationsEnable => 'Дозволи подсетнике';

  @override
  String get settingsQuietHours => 'Тихи сати';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Подсетници за навике, циљеве и понављање утишани су од $start до $end';
  }

  @override
  String get settingsReviewReminder => 'Подсетник за понављање картица';

  @override
  String get settingsPermissionDenied => 'Обавештења су блокирана у подешавањима система.';

  @override
  String get settingsPrivacy => 'Приватност и подаци';

  @override
  String get settingsPrivacyStatement =>
      'Ваши подаци се чувају само на овом уређају и шифровани су. Нема налога, аналитике ни праћења.';

  @override
  String get settingsBackup => 'Направи шифровану резервну копију';

  @override
  String get settingsBackupDesc => 'Заштићено лозинком коју сами изаберете';

  @override
  String get settingsRestore => 'Врати из резервне копије';

  @override
  String get settingsRestoreDesc => 'Замењује све податке на овом уређају';

  @override
  String get settingsErase => 'Избриши све податке';

  @override
  String get settingsEraseDesc => 'Трајно избриши све са овог уређаја';

  @override
  String get settingsEraseConfirmTitle => 'Избрисати све податке?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Сви задаци, белешке, картице, циљеви, навике, догађаји и сесије биће трајно избрисани. Унесите $word да бисте потврдили.';
  }

  @override
  String get settingsEraseWord => 'ИЗБРИШИ';

  @override
  String get settingsErased => 'Сви подаци су избрисани';

  @override
  String get backupPassword => 'Лозинка резервне копије';

  @override
  String get backupPasswordConfirm => 'Потврдите лозинку';

  @override
  String backupPasswordHint(int count) {
    return 'Најмање $count знакова. Ако је изгубите, не може се вратити.';
  }

  @override
  String get backupPasswordMismatch => 'Лозинке се не подударају';

  @override
  String get backupPasswordShort => 'Лозинка је прекратка';

  @override
  String get backupCreating => 'Шифровање резервне копије…';

  @override
  String get backupCreated => 'Резервна копија је спремна за чување';

  @override
  String get backupRestoring => 'Провера и враћање…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Враћено је $count ставки',
      few: 'Враћене су $count ставке',
      one: 'Враћена је $count ставка',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Погрешна лозинка или је датотека измењена.';

  @override
  String get backupNotABackup => 'Ова датотека није резервна копија апликације Deep Focus.';

  @override
  String get backupCorrupted => 'Датотека резервне копије је оштећена.';

  @override
  String get backupNewer =>
      'Ову резервну копију је направила новија верзија апликације. Прво ажурирајте апликацију.';

  @override
  String get backupRestoreConfirmTitle => 'Заменити све податке?';

  @override
  String get backupRestoreConfirmBody =>
      'Све што је сада на овом уређају биће замењено резервном копијом. Ако враћање не успе, ништа се не мења.';

  @override
  String get settingsAbout => 'О апликацији';

  @override
  String settingsVersion(String version) {
    return 'Верзија $version';
  }

  @override
  String get settingsLicenses => 'Лиценце отвореног кода';

  @override
  String get settingsAssistant => 'Асистент';

  @override
  String get settingsAssistantEnable => 'Укључи асистента';

  @override
  String get settingsDashboard => 'Делови почетне стране';

  @override
  String get settingsTrash => 'Отпад';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes мин';
  }

  @override
  String get trashEmpty => 'Отпад је празан';

  @override
  String get trashHint => 'Избрисане ставке остају овде док их не уклоните.';

  @override
  String get trashTasks => 'Задаци';

  @override
  String get trashNotes => 'Белешке';

  @override
  String get onboardWelcomeTitle => 'Добро дошли у свој нови радни простор';

  @override
  String get onboardWelcomeBody =>
      'Задаци, фокус, календар, белешке, картице, циљеви и навике — заједно и лепо једноставно.';

  @override
  String get onboardPrivateTitle => 'Приватност у темељу';

  @override
  String get onboardPrivateBody =>
      'Све остаје шифровано на овом уређају. Без налога. Без праћења. Ви одлучујете.';

  @override
  String get onboardLanguageTitle => 'Изаберите језик';

  @override
  String get onboardNotifTitle => 'Нежни подсетници';

  @override
  String get onboardNotifBody =>
      'Дозволите обавештења за подсетнике задатака и упозорења фокуса. То можете да промените било када.';

  @override
  String get onboardGetStarted => 'Почнимо';

  @override
  String onboardStep(int current, int total) {
    return 'Корак $current од $total';
  }

  @override
  String get notifChannelReminders => 'Подсетници';

  @override
  String get notifChannelRemindersDesc => 'Подсетници за задатке, догађаје, навике и циљеве';

  @override
  String get notifChannelFocus => 'Тајмер фокуса';

  @override
  String get notifChannelFocusDesc => 'Упозорења када се сесија фокуса или пауза заврши';

  @override
  String get notifTaskTitle => 'Подсетник за задатак';

  @override
  String get notifEventTitle => 'Предстојећи догађај';

  @override
  String notifEventBody(String title, String time) {
    return '$title у $time';
  }

  @override
  String get notifFocusDoneTitle => 'Сесија фокуса је завршена';

  @override
  String get notifFocusDoneBody => 'Одлично. Време је за паузу.';

  @override
  String get notifBreakDoneTitle => 'Пауза је готова';

  @override
  String get notifBreakDoneBody => 'Спремни за следећу сесију фокуса?';

  @override
  String get notifHabitTitle => 'Подсетник за навику';

  @override
  String get notifReviewTitle => 'Картице чекају';

  @override
  String get notifReviewBody => 'Кратко понављање одржава памћење снажним.';

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
  String get weekdaysShort => 'П,У,С,Ч,П,С,Н';

  @override
  String a11yProgress(int value) {
    return 'Напредак $value одсто';
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
    return '$done од $total задатака са роком завршено на време';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Готово $done од $total задатака';
  }

  @override
  String get analyticsNoProjects => 'Нема активних пројеката';

  @override
  String get analyticsNoFocus => 'У овом периоду нема сесија фокуса';

  @override
  String get analyticsHabitsNone => 'Нема активних навика';

  @override
  String get analyticsRetentionNote => 'Удео научених картица које сте запамтили';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Слободно време се рачуна $start–$end радним данима ($days), без догађаја са временом. Процењени рад је збир процена отворених задатака са роком у наредних 7 дана.';
  }

  @override
  String get assistantWorkdaysMonFri => 'понедељак–петак';

  @override
  String get assistantWorkdaysSunThu => 'недеља–четвртак';

  @override
  String get assistantWorkloadDayOff => 'Слободан дан';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated планирано · $free слободно';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Планирано од сада до $end, око данашњих догађаја. Прво закаснели задаци, затим приоритет, рок и процена.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Закажи као временске блокове';

  @override
  String get assistantScheduleConfirmTitle => 'Додати временске блокове у календар?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'У данашњи календар биће додато $count временских блокова.',
      few: 'У данашњи календар биће додата $count временска блока.',
      one: 'У данашњи календар биће додат $count временски блок.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додато $count временских блокова',
      few: 'Додата $count временска блока',
      one: 'Додат $count временски блок',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Већ у календару';

  @override
  String get assistantPlanTimeline => 'Стаје данас';

  @override
  String get assistantNoEstimate => 'Додајте процену да бисте их испланирали';

  @override
  String get assistantNoNotes => 'Још нема белешки. Прво напишите белешку.';

  @override
  String get assistantNoteEmpty => 'Ова белешка је празна.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Направљено $count задатака',
      few: 'Направљена $count задатка',
      one: 'Направљен $count задатак',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Направљено $count картица',
      few: 'Направљене $count картице',
      one: 'Направљена $count картица',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Направи $count',
      one: 'Направи $count',
      zero: 'Ништа није изабрано',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Препознаје се: неозначена поља „- [ ]“ и редови који почињу са TODO: или To do:';

  @override
  String get assistantCardsHint =>
      'Препознаје се: „појам: дефиниција“, „појам — дефиниција“ и парови редова Q:/A:';

  @override
  String get assistantProviderHint =>
      'Користите било коју услугу компатибилну са OpenAI. Кључ остаје у безбедном складишту уређаја и никада није део резервних копија.';

  @override
  String get assistantEndpointHelp => 'На пример https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Оставите празно да бисте задржали сачувани кључ';

  @override
  String get assistantApiKeyRequired => 'Унесите API кључ';

  @override
  String get assistantProviderSaved => 'Услуга је сачувана';

  @override
  String get assistantProviderRemoved => 'Услуга је уклоњена, а кључ избрисан';

  @override
  String get assistantRemoveProviderConfirm =>
      'Уклонити услугу и избрисати сачувани API кључ са овог уређаја?';

  @override
  String get assistantAskEveryTime => 'Питај пре сваког захтева';

  @override
  String get assistantSummarizing => 'Сажимање…';

  @override
  String assistantSummaryNote(String host) {
    return 'Направио $host. Проверите пре него што се ослоните на то.';
  }

  @override
  String get assistantCopy => 'Копирај';

  @override
  String get assistantCopied => 'Копирано';

  @override
  String get assistantConfigure => 'Подеси услугу';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Сви догађаји у овом низу су померени';

  @override
  String get calendarEventReminder => 'Подсетник';

  @override
  String get calendarEventRepeat => 'Понављање';

  @override
  String get calendarEventColor => 'Боја';

  @override
  String get calendarDefaultColor => 'Користи боју врсте';

  @override
  String get calendarEventLinkedTask => 'Повезани задатак';

  @override
  String get calendarEventNoTask => 'Нема повезаног задатка';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count догађаја',
      few: '$count догађаја',
      one: '$count догађај',
      zero: 'Нема догађаја',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задатака са роком',
      few: '$count задатка са роком',
      one: '$count задатак са роком',
      zero: 'нема задатака са роком',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Додајте догађај или временски блок да бисте испланирали овај дан.';

  @override
  String get calendarNow => 'Тренутно време';

  @override
  String get calendarRecurring => 'Понавља се';

  @override
  String get calendarEventNotFound => 'Овај догађај више не постоји';

  @override
  String get calendarEventLocalTime => 'Времена се приказују у временској зони уређаја';

  @override
  String get calendarEventDeleted => 'Догађај је премештен у отпад';

  @override
  String get calendarConflictMarker => 'Преклапа се са другим догађајем';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Измене важе за све догађаје у овом низу';

  @override
  String get calendarDragHintSeries => 'Превлачењем догађаја који се понавља помера се цео низ';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, рок задатка';
  }

  @override
  String get startupErrorTitle => 'Ваше податке није могуће отворити';

  @override
  String get startupErrorLocked =>
      'Кључ за шифровање података овог уређаја није доступан. Ништа није избрисано. Често помаже поновно покретање уређаја. Ако сте недавно враћали уређај, радије вратите податке из шифроване резервне копије.';

  @override
  String get startupErrorCipher =>
      'Овај уређај не подржава шифровано складиште које је потребно апликацији. Ништа није сачувано нешифровано.';

  @override
  String get startupErrorRetry => 'Покушај поново';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картица чека понављање',
      few: '$count картице чекају понављање',
      one: '$count картица чека понављање',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count за понављање';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count нових';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Научене картице: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Унесите 0 или више';

  @override
  String get flashcardsSearchCards => 'Претражи картице';

  @override
  String get flashcardsSearchEmpty => 'Ниједна картица не одговара претрази';

  @override
  String get flashcardsCardAdded => 'Картица је додата';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Понављање $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Копирај у привремену меморију';

  @override
  String get flashcardsExportTitle => 'Извези шпил';

  @override
  String get flashcardsDeleteDeck => 'Избриши шпил';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, следеће понављање за $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Питање: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Одговор: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Прикажи питање';

  @override
  String get flashcardsImportField => 'Картице за увоз';

  @override
  String get flashcardsNothingToStudy => 'Нема ништа за учење';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картица спремних за учење',
      few: '$count картице спремне за учење',
      one: '$count картица спремна за учење',
      zero: 'Нема спремних картица',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Према оцени';

  @override
  String get flashcardsDeckNotFound => 'Овај шпил више није доступан.';

  @override
  String get focusSessionDeleted => 'Сесија је избрисана';

  @override
  String get focusDeleteConfirm =>
      'Избрисати ову сесију из историје? Њено време се више неће рачунати у ваше циљеве.';

  @override
  String get focusUnlinkTask => 'Уклони повезани задатак';

  @override
  String get focusNoteHint => 'На чему сте радили?';

  @override
  String get focusTargetCaption => 'Измерено из сачуваних сесија';

  @override
  String get focusModeLabel => 'Режим тајмера';

  @override
  String focusUpNext(String phase) {
    return 'Следеће: $phase';
  }

  @override
  String get focusStopwatchHint => 'Броји унапред док не зауставите.';

  @override
  String get focusOpenHint => 'Без временског ограничења. Зауставите када завршите.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Подсетници су искључени у подешавањима. Нећете бити обавештени када се сесија заврши.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Сви';

  @override
  String get goalsFilterPeriod => 'Филтер периода';

  @override
  String get goalsFilterStatus => 'Филтер статуса';

  @override
  String get goalsEmptyFiltered => 'Ниједан циљ не одговара овом филтеру';

  @override
  String goalsDueOn(String date) {
    return 'Рок $date';
  }

  @override
  String get goalsDeadline => 'Рок (необавезно)';

  @override
  String get goalsNoDeadline => 'Без рока';

  @override
  String get goalsSetDeadline => 'Подеси рок';

  @override
  String get goalsRemoveDeadline => 'Уклони рок';

  @override
  String get goalsDescription => 'Опис (необавезно)';

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
  String get goalsReached => 'Циљ је достигнут';

  @override
  String get goalsLogged => 'Напредак је забележен';

  @override
  String get goalsEntryDeleted => 'Унос је уклоњен';

  @override
  String get goalsDeleteEntry => 'Уклони унос';

  @override
  String get goalsDeleted => 'Циљ је избрисан';

  @override
  String get goalsMarkActive => 'Означи као активан';

  @override
  String get goalsNotFound => 'Овај циљ више није доступан';

  @override
  String get goalsLinkTask => 'Повежи задатак';

  @override
  String get goalsNoLinkedTasks => 'Још нема повезаних задатака';

  @override
  String get goalsUnlinkTask => 'Раскини везу са задатком';

  @override
  String get goalsTaskOpen => 'Још није завршено';

  @override
  String get goalsTaskLinked => 'Задатак је повезан';

  @override
  String get goalsTaskUnlinked => 'Веза са задатком је раскинута';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count завршених повезаних задатака',
      few: '$count завршена повезана задатка',
      one: '$count завршени повезани задатак',
    );
    return 'Укључује $_temp0 у овом периоду';
  }

  @override
  String get goalsHistoryAllTime =>
      'Уноси из ранијих периода остају овде, али се рачунају само за свој период.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Данас обављено $done од $total';
  }

  @override
  String get habitsNothingToday => 'За данас нема заказаних навика';

  @override
  String get habitsDecrease => 'Уклони једну ознаку';

  @override
  String get habitsResetToday => 'Поништи данашњи дан';

  @override
  String get habitsCheckInHint => 'Дуго притисните за прилагођавање';

  @override
  String get habitsName => 'Назив';

  @override
  String get habitsColor => 'Боја';

  @override
  String get habitsValidationDays => 'Изаберите бар један дан';

  @override
  String habitsReminderAt(String time) {
    return 'Сваки дан у $time';
  }

  @override
  String get habitsSetReminder => 'Подеси време подсетника';

  @override
  String get habitsRemoveReminder => 'Уклони подсетник';

  @override
  String get habitsReminderNote =>
      'Подсетници се приказују заказаним данима ако су обавештења дозвољена.';

  @override
  String get habitsArchived => 'Навика је архивирана';

  @override
  String get habitsNotFound => 'Ова навика више није доступна';

  @override
  String get habitsLast30 => 'Последњих 30 дана';

  @override
  String get habitsConsistencyNone => 'Још нема довољно података';

  @override
  String get habitsCalendar => 'Историја ознака';

  @override
  String get habitsCalendarHint => 'Додирните дан да бисте га исправили.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count од $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Ознаке у последњих 90 дана. Доследност $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Ознаке у последњих 90 дана. Још нема довољно података.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дана',
      few: '$count дана',
      one: '$count дан',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Паузирани дани не утичу на ваш низ.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Архивирај навику';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пута дневно',
      few: '$count пута дневно',
      one: '$count пут дневно',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Остале белешке';

  @override
  String get notesAllNotebooks => 'Све бележнице';

  @override
  String get notesNotebookName => 'Назив бележнице';

  @override
  String get notesNotebookColor => 'Боја';

  @override
  String get notesDeleteNotebook => 'Избриши бележницу';

  @override
  String get notesDeleteNotebookMessage =>
      'Бележница се уклања. Њене белешке остају и приказују се под „Све бележнице“.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Закачите важне белешке да остану на врху.';

  @override
  String get notesEmptyFavorites => 'Белешке које означите као омиљене појавиће се овде.';

  @override
  String get notesEmptyArchived => 'Архивиране белешке појавиће се овде.';

  @override
  String get notesEmptyFiltered => 'Ниједна белешка не одговара овим филтерима.';

  @override
  String get notesArchivedSnack => 'Белешка је архивирана';

  @override
  String get notesUnarchivedSnack => 'Белешка је враћена међу ваше белешке';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Готово $done од $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Форматирање';

  @override
  String get notesWrite => 'Пиши';

  @override
  String get notesPreviewEmpty => 'Још нема ничега за преглед.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'На ову белешку још не упућује ниједна друга. Упутите на њу са [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Дајте белешци наслов да би друге белешке могле да упућују на њу.';

  @override
  String get notesLinkedTasksEmpty => 'Уз ову белешку нису повезани задаци.';

  @override
  String notesLinkMissing(String title) {
    return 'Још не постоји белешка са насловом „$title“.';
  }

  @override
  String get notesNotFound => 'Ова белешка више не постоји.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Ставка листе: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Отвори белешку $title';
  }

  @override
  String get notesTaskDone => 'Завршено';

  @override
  String get notifTimerDoneBody => 'Време које сте подесили је истекло.';

  @override
  String get onboardingPrivatePointDevice => 'Чува се само на овом уређају, шифровано';

  @override
  String get onboardingPrivatePointAccount => 'Није потребан налог';

  @override
  String get onboardingPrivatePointTracking => 'Без аналитике, без праћења';

  @override
  String get onboardingLanguageBody => 'Ово можете било када да промените у Подешавањима.';

  @override
  String get onboardingNext => 'Даље';

  @override
  String get projectsActive => 'Активни';

  @override
  String get projectNameHint => 'нпр. Лансирање производа';

  @override
  String get projectGoalHint => 'Како изгледа „готово“?';

  @override
  String get projectNoDeadline => 'Без рока';

  @override
  String get projectTasksOpen => 'Отворени задаци';

  @override
  String get projectTasksCompleted => 'Завршени задаци';

  @override
  String get projectAddTask => 'Додај задатак у пројекат';

  @override
  String get projectAddNote => 'Нова белешка пројекта';

  @override
  String get projectLinkedNotes => 'Белешке';

  @override
  String get projectNoTasks => 'У овом пројекту још нема задатака';

  @override
  String get projectArchivedBadge => 'Архивирано';

  @override
  String get projectDeleted => 'Пројекат је премештен у отпад';

  @override
  String get projectDeleteMessage => 'Задаци остају на вашој листи без пројекта.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, довршено $percent одсто';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count резултата',
      few: '$count резултата',
      one: '$count резултат',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Филтрирај по врсти';

  @override
  String searchRecentTap(String query) {
    return 'Поново претражи $query';
  }

  @override
  String get settingsLanguageHint =>
      'Изаберите језик целе апликације. Називи су приказани на сопственом језику.';

  @override
  String get settingsThemeHint => 'Светла, тамна или према систему';

  @override
  String settingsDecrease(String setting) {
    return 'Смањи: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Повећај: $setting';
  }

  @override
  String get settingsQuietStart => 'Почиње';

  @override
  String get settingsQuietEnd => 'Завршава се';

  @override
  String get settingsNotificationsHint =>
      'Ово чува ваш избор у апликацији. Систем може да затражи и дозволу.';

  @override
  String get settingsDashboardHint =>
      'Превуците да бисте променили редослед. Искључите делове који вам нису потребни.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Помери: $section';
  }

  @override
  String get settingsDashboardReset => 'Врати подразумевани редослед';

  @override
  String get settingsAssistantDesc =>
      'Необавезна помоћ при планирању. Ништа не напушта овај уређај осим ако не повежете услугу.';

  @override
  String get settingsAssistantSetup => 'Асистент и подешавање услуге';

  @override
  String get settingsTrashDesc => 'Вратите или трајно избришите уклоњене ставке';

  @override
  String get settingsEraseFirstBody =>
      'Ово се не може опозвати. Размислите о томе да прво направите шифровану резервну копију.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Унесите $word';
  }

  @override
  String get settingsEraseFailed => 'Подаци нису могли да се избришу. Ништа није промењено.';

  @override
  String get settingsAboutTagline => 'Приватан радни простор за продуктивност који ради локално.';

  @override
  String get backupShowPassword => 'Прикажи лозинку';

  @override
  String get backupHidePassword => 'Сакриј лозинку';

  @override
  String get backupSaved => 'Резервна копија је сачувана';

  @override
  String get backupFailed =>
      'Резервна копија није могла да се направи. Ваши подаци су непромењени.';

  @override
  String get backupReadFailed => 'Изабрана датотека није могла да се прочита.';

  @override
  String get backupRestoreFailed => 'Враћање није успело. Ништа није промењено.';

  @override
  String get backupShareSubject => 'Шифрована резервна копија Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сваких $count дана',
      few: 'Свака $count дана',
      one: 'Сваки $count. дан',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сваких $count недеља',
      few: 'Сваке $count недеље',
      one: 'Сваке $count. недеље',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сваких $count месеци',
      few: 'Сваких $count месеца',
      one: 'Сваког $count. месеца',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сваких $count година',
      few: 'Сваке $count године',
      one: 'Сваке $count. године',
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
    return 'у $days';
  }

  @override
  String get repeatEndsLabel => 'Завршава се';

  @override
  String get repeatEndsAfter => 'После одређеног броја пута';

  @override
  String get repeatCountLabel => 'Број понављања';

  @override
  String get reminderNone => 'Без подсетника';

  @override
  String get reminderCustomTime => 'У одређено време';

  @override
  String get a11yDecrease => 'Смањи';

  @override
  String get a11yIncrease => 'Повећај';

  @override
  String get pickTaskTitle => 'Изаберите задатак';

  @override
  String get pickTaskEmpty => 'Нема отворених задатака';

  @override
  String get tasksSearchTooltip => 'Претражи задатке';

  @override
  String get tasksSectionOverdue => 'Закаснели';

  @override
  String get tasksSectionToday => 'Данас';

  @override
  String get tasksRecurringSemantics => 'Понавља се';

  @override
  String get tasksFilterPriorityAtLeast => 'Најнижи приоритет';

  @override
  String get tasksFilterCategory => 'Категорија';

  @override
  String get tasksFilterAnyCategory => 'Било која категорија';

  @override
  String get tasksFilterLabel => 'Ознака';

  @override
  String get tasksFilterAnyLabel => 'Било која ознака';

  @override
  String get tasksFilterReset => 'Поништи филтере';

  @override
  String get tasksViewByProject => 'По пројекту';

  @override
  String get tasksViewByPriority => 'По приоритету';

  @override
  String get tasksViewByCategory => 'По категорији';

  @override
  String get tasksGroupNoCategory => 'Без категорије';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задатака',
      few: '$count задатка',
      one: '$count задатак',
    );
    return 'Блокира $_temp0';
  }

  @override
  String get taskBlockedWarning => 'Овај задатак блокирају недовршени задаци. Ипак га завршити?';

  @override
  String get taskStartFocus => 'Фокусирај се на овај задатак';

  @override
  String get taskRemoveDate => 'Уклони датум';

  @override
  String get taskAllDay => 'Без одређеног времена';

  @override
  String get taskSaved => 'Задатак је сачуван';

  @override
  String get taskCreated => 'Задатак је направљен';

  @override
  String get taskReminderNeedsDue => 'Подесите рок да бисте користили релативне подсетнике';

  @override
  String get taskLabelName => 'Назив ознаке';

  @override
  String get taskPlanning => 'Планирање';

  @override
  String get taskOrganize => 'Организација';

  @override
  String get taskBreakdown => 'Рашчлањивање';

  @override
  String get trashDeleteTaskTitle => 'Трајно избрисати овај задатак?';

  @override
  String get trashDeleteNoteTitle => 'Трајно избрисати ову белешку?';

  @override
  String get trashDeleteBody => 'Ово се не може опозвати.';

  @override
  String get trashEmptyTitle => 'Испразнити отпад?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ставки ће бити трајно избрисано.',
      few: '$count ставке ће бити трајно избрисане.',
      one: '$count ставка ће бити трајно избрисана.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Враћено';

  @override
  String get trashPurged => 'Трајно избрисано';

  @override
  String trashDeletedOn(String date) {
    return 'Избрисано $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ставки',
      few: '$count ставке',
      one: '$count ставка',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Прочитај наглас';

  @override
  String get flashcardsTtsUnavailable => 'Претварање текста у говор није доступно на овом уређају.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'За овај језик није инсталиран ниједан глас. Додајте га у Android подешавањима за претварање текста у говор.';

  @override
  String get calendarAgenda => 'Распоред';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Искра',
      'rocket': 'Ракета',
      'book': 'Књига',
      'work': 'Посао',
      'home': 'Дом',
      'heart': 'Срце',
      'code': 'Код',
      'palette': 'Палета',
      'fitness': 'Фитнес',
      'school': 'Школа',
      'travel': 'Путовања',
      'money': 'Штедња',
      'other': 'Икона',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Још поља';

  @override
  String get cardFieldExample => 'Пример';

  @override
  String get cardFieldExplanation => 'Објашњење';

  @override
  String get cardFieldPronunciation => 'Изговор';

  @override
  String get cardFieldNotes => 'Додатне белешке';

  @override
  String get projectMilestones => 'Прекретнице';

  @override
  String get milestoneAdd => 'Додај прекретницу';

  @override
  String get milestoneEdit => 'Измени прекретницу';

  @override
  String get milestoneTitleLabel => 'Прекретница';

  @override
  String get milestoneNoDate => 'Без датума';

  @override
  String get milestonesEmpty =>
      'Још нема прекретница. Додајте контролне тачке са датумима да бисте пратили пројекат у календару.';

  @override
  String get milestoneDeleted => 'Прекретница је избрисана';

  @override
  String milestoneDoneA11y(String title) {
    return 'Означи прекретницу „$title“ као готову';
  }

  @override
  String calendarMilestone(String project) {
    return 'Прекретница · $project';
  }

  @override
  String get tasksViewInbox => 'Примљено';

  @override
  String get tasksViewArchived => 'Архивирани';

  @override
  String get tasksEmptyInbox =>
      'Овде стижу задаци без пројекта или датума. Разврстајте их кад ухватите минут.';

  @override
  String get tasksEmptyArchived =>
      'Архивирани задаци се чувају овде, изван ваших листа и подсетника.';

  @override
  String get taskArchivedBadge => 'Архивиран';

  @override
  String get taskStatusInProgress => 'У току';

  @override
  String get taskArchived => 'Задатак је архивиран';

  @override
  String get taskUnarchived => 'Задатак је враћен из архиве';

  @override
  String get focusPlanTitle => 'План сесија';

  @override
  String focusPlanTotal(String duration) {
    return 'Укупно $duration';
  }

  @override
  String get focusPlanRounds => 'Сесије фокуса';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Дуга пауза после';

  @override
  String get focusPlanSkipLastBreak => 'Прескочи последњу паузу';

  @override
  String get focusPlanAutoBreaks => 'Аутоматски покрени паузе';

  @override
  String get focusPlanAutoFocus => 'Аутоматски покрени фокус после паузе';

  @override
  String get focusPlanSave => 'Сачувај план';

  @override
  String get focusPlanNameHint => 'нпр. Припрема за испит';

  @override
  String get focusPlanSaved => 'План је сачуван';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work мин фокуса, $rest мин паузе';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Смањи: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Повећај: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Сесија $current од $total';
  }

  @override
  String get focusSeriesComplete => 'Низ је завршен. Браво!';

  @override
  String get filterAll => 'Све';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Увезено: $added · прескочено дупликата: $duplicates · непотпуних редова: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Обустави картицу';

  @override
  String get flashcardsResume => 'Настави картицу';

  @override
  String get flashcardsSuspended => 'Картица је обустављена: неће се заказивати';

  @override
  String get flashcardsResumed => 'Картица је настављена';

  @override
  String get flashcardsSuspendedFilter => 'Обустављене';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown од $total картица';
  }

  @override
  String get flashcardsImportFile => 'Из датотеке';

  @override
  String get speechTitle => 'Говор';

  @override
  String get speechAppLanguage => 'Језик апликације';

  @override
  String get speechFrontLanguage => 'Језик предње стране';

  @override
  String get speechBackLanguage => 'Језик задње стране';

  @override
  String get speechRepeat => 'Понови свако читање';

  @override
  String get speechRate => 'Брзина';

  @override
  String get speechAutoRead => 'Аутоматски прочитај питање';

  @override
  String get speechHint =>
      'Користи гласове инсталиране на овом уређају, без интернета. Ако језик нема глас, бићете обавештени и ништа друго се неће користити уместо њега.';

  @override
  String get studyHowTitle => 'Како желите да учите?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Понови $count картица',
      few: 'Понови $count картице',
      one: 'Понови $count картицу',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Вежбај све картице (распоред се не мења)';

  @override
  String get studyPracticeMistakes => 'Вежбај недавне грешке';

  @override
  String get studyPracticeHint =>
      'Кругови вежбања никад не мењају када су картице на реду. Понављање ажурира распоред.';

  @override
  String get studyModeClassic => 'Класично';

  @override
  String get studyModeReverse => 'Обрнуто';

  @override
  String get studyModeMixed => 'У оба смера';

  @override
  String get studyModeTyped => 'Упиши одговор';

  @override
  String get studyModeChoice => 'Вишеструки избор';

  @override
  String get studyModeListening => 'Слушање';

  @override
  String get studyPractice => 'вежбање';

  @override
  String get studyNoMistakes => 'У овом шпилу нема недавних грешака. Одлично!';

  @override
  String get studyTypeAnswer => 'Упишите одговор';

  @override
  String get studyCheck => 'Провери';

  @override
  String get studyKnewIt => 'Знао сам';

  @override
  String get studyDidntKnow => 'Нисам знао';

  @override
  String studyMistakes(int count) {
    return 'Промашено ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Понови промашене картице';

  @override
  String get studyCorrect => 'Тачно';

  @override
  String get studyAlmost => 'Скоро — проверите правопис';

  @override
  String get studyWrong => 'Не баш';

  @override
  String get studyShowText => 'Прикажи текст';

  @override
  String get flashcardsImportFileFailed =>
      'Датотека није могла да се отвори. Уместо тога можете налепити њен садржај.';

  @override
  String get studyNoMatchingCards => 'Овом избору још не одговара ниједна картица.';

  @override
  String get studyPracticeNew => 'Само нове';

  @override
  String get studyPracticeHard => 'Тешке картице';

  @override
  String get studyPracticeFavorites => 'Омиљене';

  @override
  String get studySessionSize => 'Картица по сесији';

  @override
  String get studySessionAll => 'Све';

  @override
  String get studyOrder => 'Редослед';

  @override
  String get studyOrderDue => 'Прво најзакаснелије';

  @override
  String get studyOrderRandom => 'Насумично';

  @override
  String get studyOrderHardest => 'Прво најтеже';

  @override
  String get flashcardsHard => 'Тешке';

  @override
  String get flashcardsFavorites => 'Омиљене';

  @override
  String get flashcardsFavorite => 'Додај у омиљене';

  @override
  String get flashcardsUnfavorite => 'Уклони из омиљених';

  @override
  String get flashcardsDuplicate => 'Дуплирај';

  @override
  String get flashcardsMoveTo => 'Премести у шпил';

  @override
  String get flashcardsNoOtherDeck => 'Прво направите други шпил.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картица је премештено',
      few: '$count картице су премештене',
      one: '$count картица је премештена',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Додај ознаку';

  @override
  String get flashcardsTagHint => 'нпр. глаголи';

  @override
  String flashcardsSelected(int count) {
    return 'Изабрано: $count';
  }

  @override
  String get flashcardsSelectAll => 'Изабери све приказано';

  @override
  String flashcardsSelectCard(String front) {
    return 'Изабери $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Присећање $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Могући дупликат';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Овај шпил већ има „$front“ → „$back“. Ипак сачувати?';
  }

  @override
  String get flashcardsSaveAnyway => 'Ипак сачувај';

  @override
  String get flashcardsStats => 'Статистика';

  @override
  String get flashcardsStatTotal => 'Картице';

  @override
  String get flashcardsStatLearning => 'У учењу';

  @override
  String get flashcardsStatMatureCaption => 'Запамћено 21+ дана';

  @override
  String get flashcardsStatReviewsToday => 'Данашња понављања';

  @override
  String get flashcardsStatCorrect => 'Тачни одговори';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Последњи дани: $days';
  }

  @override
  String get flashcardsStatForget => 'Стопа заборављања';

  @override
  String get flashcardsStatForgetCaption => '„Поново“ код научених картица';

  @override
  String get flashcardsStatRecall => 'Присећање сада';

  @override
  String get flashcardsStatRecallCaption => 'FSRS процена, поновљене картице';

  @override
  String flashcardsStatActivity(int count) {
    return 'Понављања по дану · укупно $count';
  }

  @override
  String get flashcardsStatHistory => 'Најновији одговори';

  @override
  String get flashcardsStatNoHistory =>
      'Још нема понављања. Учите из шпила да бисте овде видели свој напредак.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Прочитај наглас: $field';
  }

  @override
  String get speechVoice => 'Глас';

  @override
  String get speechVoiceDefault => 'Аутоматски';

  @override
  String get speechVoiceOnline => 'потребан интернет';

  @override
  String get speechTest => 'Испробај глас';

  @override
  String get importNext => 'Преглед';

  @override
  String get importPreviewTitle => 'Повежи колоне са пољима';

  @override
  String get importIgnoreColumn => 'Занемари';

  @override
  String importColumn(int n) {
    return 'Колона $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Спремно картица: $ready · прескочиће се непотпуних редова: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Изаберите које колоне су предња, а које задња страна.';

  @override
  String get actionMoveUp => 'Помери нагоре';

  @override
  String get actionMoveDown => 'Помери надоле';

  @override
  String get flashcardsLayoutTitle => 'Изглед картице';

  @override
  String get flashcardsLayoutHint =>
      'Преименујте, сакријте или преуредите додатна поља овог шпила. Садржај картица се никад не мења.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Прикажи $field током учења';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Откривај одговор корак по корак';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Прво се приказује задња страна; свако додатно поље отвара се додиром.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Прикажи $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Ова датотека је већа од $mb MB.';
  }

  @override
  String get flashcardsImage => 'Слика';

  @override
  String get flashcardsAudio => 'Звук';

  @override
  String get flashcardsAddImage => 'Додај слику';

  @override
  String get flashcardsAddAudio => 'Додај звук';

  @override
  String get flashcardsPlayAudio => 'Пусти снимак';

  @override
  String get flashcardsAudioUnavailable => 'Овај снимак не може да се пусти на овом уређају.';

  @override
  String get flashcardsCustomFields => 'Ваша поља';

  @override
  String get flashcardsTemplates => 'Шаблони';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Поље $n';
  }

  @override
  String get flashcardsAddField => 'Додај поље';

  @override
  String get flashcardsFieldName => 'Назив поља';

  @override
  String get flashcardsFieldLangDefault => 'Језик стране';

  @override
  String get flashcardsTemplateConfirm =>
      'Шаблон одређује како се поља приказују и додаје своја поља. Ваше картице и постојећа поља остају каква јесу.';

  @override
  String get flashcardsApplyTemplate => 'Примени';

  @override
  String get templateVocabulary => 'Речник';

  @override
  String get templateTwoTranslations => 'Реч са два превода';

  @override
  String get templateQuestionAnswer => 'Питање и одговор';

  @override
  String get templateDefinition => 'Појам и дефиниција';

  @override
  String get templateGrammar => 'Граматичко правило';

  @override
  String get templateFieldPlural => 'Множина';

  @override
  String get templateFieldTranslation2 => 'Други превод';

  @override
  String get templateFieldSynonyms => 'Синоними';

  @override
  String get templateFieldRule => 'Правило';

  @override
  String get deckCategory => 'Ниво или тема';

  @override
  String get deckCategoryHint => 'нпр. A1, Медицина';

  @override
  String get flashcardsSearchAll => 'Претражи све картице';

  @override
  String get flashcardsSearchAllHint => 'Реч, превод, пример, белешка, ознака…';

  @override
  String get flashcardsAllDecks => 'Сви шпилови';

  @override
  String get flashcardsAllLanguages => 'Сви језици';

  @override
  String get flashcardsLangUnset => 'Језик није подешен';

  @override
  String get flashcardsLevelUnset => 'Без нивоа или теме';

  @override
  String get flashcardsByLanguage => 'Напредак по језику';

  @override
  String get flashcardsByLevel => 'Напредак по нивоу или теми';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Шпилова: $decks · картица: $cards · научених: $mature · за понављање: $due · тачно: $correct (30 дана)';
  }

  @override
  String get flashcardsRecord => 'Сними';

  @override
  String get flashcardsRecording => 'Снимање…';

  @override
  String get flashcardsRecordStop => 'Заустави и задржи';

  @override
  String get flashcardsMicDenied =>
      'Приступ микрофону је искључен. Дозволите га у подешавањима система да бисте снимали.';

  @override
  String get flashcardsRecordFailed => 'Снимање није доступно на овом уређају.';

  @override
  String get soundsTitle => 'Звуци';

  @override
  String get soundsNature => 'Природа';

  @override
  String get soundsNoise => 'Шум за фокус';

  @override
  String get soundRain => 'Киша';

  @override
  String get soundStorm => 'Олуја';

  @override
  String get soundRiver => 'Река';

  @override
  String get soundOcean => 'Морски таласи';

  @override
  String get soundFire => 'Логорска ватра';

  @override
  String get soundForest => 'Птице у шуми';

  @override
  String get soundNight => 'Летња ноћ';

  @override
  String get soundWhite => 'Бели шум';

  @override
  String get soundPink => 'Ружичасти шум';

  @override
  String get soundBrown => 'Браон шум';

  @override
  String get soundsPlay => 'Пусти';

  @override
  String get soundsSleep => 'Тајмер за спавање';

  @override
  String get soundsSleepOff => 'Искључено';

  @override
  String soundsSleepAt(String time) {
    return 'Зауставља се у $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Истовремено може да свира највише $count звукова.';
  }

  @override
  String get soundsHint =>
      'Додирните звук да бисте почели. Помешајте неколико и сваком подесите јачину.';

  @override
  String get soundsMixer => 'Микс';

  @override
  String soundsVolumeOf(String name) {
    return 'Јачина: $name';
  }

  @override
  String get soundsChannel => 'Звуци природе';

  @override
  String get settingsEndTone => 'Звук на крају тајмера';

  @override
  String get toneGentle => 'Нежни сигнали';

  @override
  String get toneBeeps => 'Сигнали';

  @override
  String get toneWood => 'Куцање по дрвету';

  @override
  String get toneBird => 'Зов птице';

  @override
  String get toneStream => 'Поточић';

  @override
  String get toneSystem => 'Звук телефона';

  @override
  String get speechOnPhone => 'На овом телефону';

  @override
  String get speechAllLanguages => 'Сви језици';

  @override
  String get speechSearchLanguage => 'Претражи језике';

  @override
  String get speechGetVoices => 'Преузми још гласова';

  @override
  String get speechGetVoicesHint =>
      'Гласове за друге језике можете преузети у подешавањима говора на телефону.';

  @override
  String get speechSettingsFailed => 'Подешавања говора на овом телефону нису могла да се отворе.';

  @override
  String get speechVoiceMissing => 'Глас није инсталиран';

  @override
  String get speechPause => 'Пауза између понављања';

  @override
  String speechSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String get speechExample => 'Прочитај пример уз одговор';

  @override
  String get flashListen => 'Слушај';

  @override
  String get flashListenNext => 'Следећа картица';

  @override
  String get flashListenEmpty => 'Нема картица за слушање.';

  @override
  String get flashViewTable => 'Табела';

  @override
  String get flashViewCards => 'Картице';

  @override
  String get flashSwapSides => 'Замени колоне';

  @override
  String get flashSort => 'Сортирај';

  @override
  String get flashSortNewest => 'Прво најновије';

  @override
  String get flashSortAlpha => 'Од А до Ш';

  @override
  String get flashSortDue => 'Прво за понављање';

  @override
  String get flashSortHard => 'Прво најтеже';

  @override
  String get flashPasteCards => 'Налепи картице';

  @override
  String get flashClipboardEmpty => 'У привременој меморији нема текста.';

  @override
  String get flashMenuAdd => 'Додај картице';

  @override
  String get flashMenuDeck => 'Шпил';

  @override
  String get flashToday => 'Данас';

  @override
  String get flashStudyNow => 'Учи';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count одговорених картица',
      few: '$count одговорене картице',
      one: '$count одговорена картица',
      zero: 'Нема одговорених картица',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Киша у шуми';

  @override
  String get autoBackupTitle => 'Аутоматске резервне копије';

  @override
  String get autoBackupDesc => 'Сваки дан на овом телефону; чува се последњих 7';

  @override
  String get autoBackupHint =>
      'Ове копије остају на овом телефону и бришу се ако деинсталирате апликацију. Да бисте прешли на нови телефон, сачувајте датотеку помоћу „Резервна копија“.';

  @override
  String get autoBackupNone => 'Још нема аутоматске резервне копије. Прва се прави данас.';

  @override
  String get autoBackupRestore => 'Врати';

  @override
  String autoBackupConfirm(String date) {
    return 'Заменити све тренутне податке резервном копијом од $date?';
  }

  @override
  String get autoBackupRestored => 'Враћено.';

  @override
  String get errorLogTitle => 'Евиденција грешака';

  @override
  String get errorLogHint =>
      'Ако нешто пође наопако, бележи се овде: само врста грешке и место у коду, никад ваш садржај. Поделите је да бисте помогли да се проблем реши.';

  @override
  String get errorLogEmpty => 'Нема забележених грешака.';

  @override
  String get errorLogClear => 'Обриши';

  @override
  String get soundsWithFocus => 'Пуштај током сесија фокуса';

  @override
  String get soundsWithFocusHint => 'Ваш микс почиње са сесијом фокуса и паузира се током пауза.';

  @override
  String get soundsSavedMixes => 'Сачувани миксеви';

  @override
  String get soundsSaveMix => 'Сачувај овај микс';

  @override
  String get soundsMixNameHint => 'Назив, нпр. Кишна библиотека';

  @override
  String soundsDeleteMix(String name) {
    return 'Избрисати микс „$name“?';
  }

  @override
  String get settingsReviewReminderHint => 'Једном дневно, само кад има картица за понављање';

  @override
  String get settingsReviewTime => 'Време подсетника';

  @override
  String get shortcutFocus => 'Фокус';

  @override
  String get shortcutNewTask => 'Нови задатак';

  @override
  String get shortcutReview => 'Понови картице';

  @override
  String get shortcutSounds => 'Звуци природе';

  @override
  String get myDayTitle => 'Започни мој дан';

  @override
  String get myDayHint => 'Ваш дан на први поглед, затим фокус једним додиром';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count задатака за данас',
      few: '$count задатка за данас',
      one: '$count задатак за данас',
      zero: 'Нема задатака за данас',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Данас више нема догађаја';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Следеће: $title у $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Преостало је $count навика',
      few: 'Преостале су $count навике',
      one: 'Преостала је $count навика',
      zero: 'Све навике су обављене',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Почните сесијом фокуса';

  @override
  String get hijriMonth1 => 'Мухарем';

  @override
  String get hijriMonth2 => 'Сафер';

  @override
  String get hijriMonth3 => 'Ребиул-евел';

  @override
  String get hijriMonth4 => 'Ребиул-ахир';

  @override
  String get hijriMonth5 => 'Џумадел-ула';

  @override
  String get hijriMonth6 => 'Џумадел-ухра';

  @override
  String get hijriMonth7 => 'Реџеб';

  @override
  String get hijriMonth8 => 'Шабан';

  @override
  String get hijriMonth9 => 'Рамазан';

  @override
  String get hijriMonth10 => 'Шевал';

  @override
  String get hijriMonth11 => 'Зул-каде';

  @override
  String get hijriMonth12 => 'Зул-хиџе';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day. $month $year. по Хиџри';
  }

  @override
  String get settingsHijri => 'Датуми по Хиџри';

  @override
  String get settingsHijriHint => 'Приказују се у календару и на почетном екрану (Умм ал-Кура)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дана',
      few: '$count дана',
      one: '$count дан',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Данас $done од $goal картица';
  }

  @override
  String get studyGoalReached => 'Дневни циљ је достигнут. Браво!';

  @override
  String get studyWeekTitle => 'Ваша недеља';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'За 7 дана $count одговорених картица',
      few: 'За 7 дана $count одговорене картице',
      one: 'За 7 дана $count одговорена картица',
      zero: 'За 7 дана нема одговорених картица',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration фокуса за 7 дана';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Низ: $current · Најбољи: $best';
  }

  @override
  String get studyGoalTitle => 'Дневни циљ (картице)';

  @override
  String get studyGoalOff => 'Искључено';

  @override
  String get focusDndTitle => 'Не узнемиравај током фокуса';

  @override
  String get focusDndHint => 'Укључује се за сваку сесију фокуса и искључује се током паузе';

  @override
  String get focusDndNeedsAccess =>
      'Да бисте ово користили, дозволите приступ у подешавањима телефона';

  @override
  String get voiceInput => 'Говорите да бисте куцали';

  @override
  String get voiceInputPrompt => 'Говорите сада';

  @override
  String get voiceInputUnavailable =>
      'Гласовни унос није доступан на овом телефону. Инсталирајте или укључите услугу за говор (на пример Google препознавање и синтезу говора).';

  @override
  String get prayerFajr => 'Сабах';

  @override
  String get prayerSunrise => 'Излазак сунца';

  @override
  String get prayerDhuhr => 'Подне';

  @override
  String get prayerAsr => 'Икиндија';

  @override
  String get prayerMaghrib => 'Акшам';

  @override
  String get prayerIsha => 'Јација';

  @override
  String get prayerMethodMwl => 'Муслиманска светска лига';

  @override
  String get prayerMethodUmmAlQura => 'Умм ал-Кура, Мека';

  @override
  String get prayerMethodEgypt => 'Египатско опште тело';

  @override
  String get prayerMethodJordan => 'Јордан, Министарство вакуфа';

  @override
  String get prayerMethodKarachi => 'Универзитет исламских наука, Карачи';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Регион Залива';

  @override
  String get prayerMethodKuwait => 'Кувајт';

  @override
  String get prayerMethodQatar => 'Катар';

  @override
  String get prayerMethodTurkey => 'Турска, Дијанет';

  @override
  String get prayerMethodSingapore => 'Сингапур, Малезија, Индонезија';

  @override
  String get prayerMethodFrance => 'Француска (12°)';

  @override
  String get prayerMethodRussia => 'Русија, Духовна управа';

  @override
  String prayerNotifTitle(String name) {
    return 'Време је за $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Време намаза · $time';
  }

  @override
  String get prayerTitle => 'Времена намаза';

  @override
  String get prayerOffHint =>
      'Изаберите свој град да бисте видели времена намаза. Израчунавају се на телефону; приступ локацији није потребан.';

  @override
  String get prayerChooseCity => 'Изабери град';

  @override
  String get prayerCity => 'Град';

  @override
  String get prayerCitySearch => 'Претражи град';

  @override
  String get prayerMethod => 'Метод израчунавања';

  @override
  String get prayerHanafiAsr => 'Ханефијска икиндија (касније време)';

  @override
  String get prayerReminders => 'Обавести у свако време намаза';

  @override
  String get prayerPauseFocus => 'Паузирај фокус у време намаза';

  @override
  String get prayerPauseFocusHint => 'Сесија у току се паузира; наставите после намаза';

  @override
  String get prayerTurnOff => 'Искључи времена намаза';

  @override
  String get prayerAccuracyNote =>
      'Израчуната времена могу се за неколико минута разликовати од ваше локалне џамије.';

  @override
  String prayerNext(String name, String time) {
    return '$name у $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Ова Anki датотека користи најновији формат. У Anki-ју је поново извезите са укљученом опцијом „Подржи старије верзије Anki-ја“, а затим увезите ту датотеку.';

  @override
  String get importTemplate => 'Шаблон табеле';

  @override
  String get importTemplateFront => 'јабука';

  @override
  String get importTemplateBack => 'округло воће';

  @override
  String get importTemplateExample => 'Сваки дан поједем јабуку.';

  @override
  String get importTemplateTag => 'храна';

  @override
  String get starterTitle => 'Почетни шпилови';

  @override
  String get starterHint =>
      'Додајте један да бисте одмах почели да учите. Касније га можете изменити или избрисати.';

  @override
  String get starterAdd => 'Додај';

  @override
  String get starterWords => 'Свакодневне енглеске речи (арапски)';

  @override
  String get starterCapitals => 'Главни градови света';

  @override
  String get starterElements => 'Хемијски елементи';

  @override
  String get settingsAccent => 'Боја наглашавања';

  @override
  String get accentViolet => 'Љубичаста';

  @override
  String get accentBlue => 'Плава';

  @override
  String get accentTeal => 'Тиркизна';

  @override
  String get accentGreen => 'Зелена';

  @override
  String get accentRose => 'Ружичаста';

  @override
  String get accentAmber => 'Ћилибарна';

  @override
  String get settingsFlashTextSize => 'Величина текста на картицама';

  @override
  String get settingsFlashTextSample => 'Пример';

  @override
  String get widgetStartFocus => 'Додирните за фокус';

  @override
  String widgetFocusUntil(String time) {
    return 'Фокус до $time';
  }

  @override
  String get widgetNoCardsDue => 'Картице: све је готово';

  @override
  String get faqMyDayQ => 'Шта ради „Започни мој дан“?';

  @override
  String get faqMyDayA =>
      'Једном дневно нуди га почетни екран: видите данашње задатке, следећи догађај, преостале навике и картице за понављање, а затим једним додиром покрећете сесију фокуса. Дуго притисните икону апликације за брзе радње или додајте виџет на почетни екран да бисте видели време фокуса и картице за понављање.';

  @override
  String get faqTasksQ => 'Како да додам задатак са подсетником?';

  @override
  String get faqTasksA =>
      'Додирните „Нови задатак“ на Почетној или „+“ у Задацима. Унесите наслов или га изговорите у микрофон, а затим подесите рок, време и подсетник. Закаснели задаци се приказују први.';

  @override
  String get faqFocusQ => 'Како ради тајмер фокуса?';

  @override
  String get faqFocusA =>
      'Изаберите Pomodoro, одбројавање или слободно време и притисните „Покрени“; паузе могу да уследе аутоматски. У Подешавањима можете изабрати завршни звук, укључити „Не узнемиравај“ током фокуса и пуштати звуке природе уз сваку сесију.';

  @override
  String get faqSoundsQ => 'Могу ли да мешам звуке природе?';

  @override
  String get faqSoundsA =>
      'Укључите до шест правих снимака, сваком подесите јачину и сачувајте микс под називом. Свирају у позадини, а тајмер за спавање може да их заустави. Музика се не користи.';

  @override
  String get faqCalendarQ => 'Може ли календар да приказује датуме по Хиџри?';

  @override
  String get faqCalendarA =>
      'Да. Датуми по Хиџри (Умм ал-Кура) аутоматски се приказују на арапском, а у Подешавањима их можете укључити за било који језик. Догађаји, задаци са роком и прекретнице пројеката приказују се заједно.';

  @override
  String get faqFlashcardsQ => 'Како понављање одлучује које ћу картице видети?';

  @override
  String get faqFlashcardsA =>
      'Картице које добро знате враћају се после дужих размака, а оне које промашите враћају се ускоро (понављање у размацима). Оцените сваки одговор са „Поново“, „Тешко“, „Добро“ или „Лако“. Подесите дневни циљ и одржите низ на картици „Данас“. Подесите датум испита у шпилу да видите колико је дана остало и колико нових картица дневно треба научити. Сортирајте по „Мој редослед“ да превучете картице на место, додирните звучник на било којој страни да је чујете, а брзину и понављања подесите у менију „Говор“.';

  @override
  String get faqImportQ => 'Могу ли да пренесем картице из Anki-ја или Excel-а?';

  @override
  String get faqImportA =>
      'Да. У шпилу изаберите „Увези“, затим датотеку: Anki (.apkg), Excel (.xlsx) или CSV, и повежите колоне. Помоћу „Шаблон табеле“ можете писати картице на рачунару. Слике и звуци у Anki датотекама се не увозе.';

  @override
  String get faqNotesQ => 'Шта могу белешке?';

  @override
  String get faqNotesA =>
      'Пишите слободно са листама провере и форматирањем, закачите или означите важне белешке као омиљене, додајте ознаке и повежите белешке са задацима. Дугметом микрофона можете да диктирате. Нова белешка може почети од шаблона (предавање, сажетак књиге, дневник, недељни план), а дугме за слику додаје фотографије.';

  @override
  String get faqHabitsQ => 'Како се броје низови навика?';

  @override
  String get faqHabitsA =>
      'Дан се рачуна када заказаног дана достигнете циљ навике. Паузирање навике чува низ. Свака навика може имати своје време подсетника.';

  @override
  String get faqGoalsQ => 'Како циљеви прате напредак?';

  @override
  String get faqGoalsA =>
      'Дајте циљу циљну вредност и јединицу, а затим бележите напредак. Његова картица показује докле сте стигли и колико је остало до рока.';

  @override
  String get faqProjectsQ => 'Чему служе пројекти?';

  @override
  String get faqProjectsA =>
      'Групишите задатке у пројекат, додајте прекретнице са датумима и пратите укупан напредак. Прекретнице се приказују и у календару.';

  @override
  String get faqInsightsQ => 'Шта приказују Увиди?';

  @override
  String get faqInsightsA =>
      'Ваше време фокуса, завршене задатке и учење по данима и недељама, уз нежне предлоге. Све се израчунава на вашем телефону.';

  @override
  String get faqSpacesQ => 'Где су сви делови?';

  @override
  String get faqSpacesA =>
      'Простори наводе све делове апликације (белешке, шпилове, навике, циљеве, пројекте, звуке и још много тога) како би главна трака остала једноставна.';

  @override
  String get faqBackupQ => 'Како се праве резервне копије мојих података?';

  @override
  String get faqBackupA =>
      'Апликација сваког дана тихо чува шифровану копију на овом телефону и задржава последњих 7. У Подешавањима можете и да извезете резервну копију заштићену лозинком и вратите је на другом телефону.';

  @override
  String get faqPrayerQ => 'Како раде времена намаза?';

  @override
  String get faqPrayerA =>
      'Изаберите свој град у Подешавања → Времена намаза. Времена се израчунавају на телефону методом која се тамо користи, а метод и мезхеб за икиндију можете да промените. Можете добити обавештење за сваки намаз, а сесија фокуса у току се паузира.';

  @override
  String get faqPrivacyQ => 'Где се чувају моји подаци?';

  @override
  String get faqPrivacyA =>
      'Само на вашем телефону, у шифрованој бази података. Без налога и без праћења. Интернет користе само функције које сами укључите, попут необавезног асистента.';

  @override
  String get faqAssistantQ => 'Шта је асистент?';

  @override
  String get faqAssistantA =>
      'Необавезни помоћник који у Подешавањима повезујете са сопственом услугом ВИ. Подразумевано је искључен и пита пре слања било каквог текста белешке.';

  @override
  String get tourPlanTitle => 'Испланирајте свој дан';

  @override
  String get tourPlanBody =>
      'Задаци, календар и навике на једном мирном месту. Почните свако јутро са „Започни мој дан“.';

  @override
  String get tourFocusTitle => 'Дубоко се фокусирајте';

  @override
  String get tourFocusBody =>
      'Сесије са тајмером, прави звуци природе, „Не узнемиравај“ и нежни завршни тонови.';

  @override
  String get tourLearnTitle => 'Учите заувек';

  @override
  String get tourLearnBody =>
      'Картице са понављањем у размацима, читање наглас на много језика и увоз из Anki-ја или Excel-а.';

  @override
  String get helpTitle => 'Помоћ и питања';

  @override
  String get helpOpen => 'Отвори';

  @override
  String get helpTour => 'Погледај обилазак';

  @override
  String get tourNext => 'Даље';

  @override
  String get tourDone => 'Кренимо';

  @override
  String get transferColTitle => 'Наслов';

  @override
  String get transferColNotes => 'Белешке';

  @override
  String get transferColBody => 'Текст';

  @override
  String get transferColDue => 'Рок';

  @override
  String get transferColPriority => 'Приоритет (0-3)';

  @override
  String get transferColDone => 'Готово';

  @override
  String get transferColProject => 'Пројекат';

  @override
  String get transferColCategory => 'Категорија';

  @override
  String get transferTitle => 'Увоз и извоз';

  @override
  String get transferSaveAs => 'Сачувај као';

  @override
  String get transferImport => 'Увези из датотеке';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV или табела у Word-у. Колоне: наслов, рок (2026-12-31), приоритет 0-3, готово, пројекат, белешке. Задаци који већ постоје у апликацији се прескачу.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown или текстуалне датотеке постају белешка. Excel или CSV: једна белешка по реду (наслов, текст).';

  @override
  String get transferSaved => 'Датотека је сачувана';

  @override
  String get transferFailed => 'Датотека није могла да се направи. Ништа није промењено.';

  @override
  String get transferUnsupported =>
      'Ова датотека не може да се прочита овде. Користите Excel, CSV, Word, Markdown или текст.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Додато је $added',
      few: 'Додате су $added',
      one: 'Додата је $added',
      zero: 'Нема ништа ново за додавање',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Текст';

  @override
  String get transferAllNotes => 'Све белешке';

  @override
  String get transferThisNote => 'Ова белешка';

  @override
  String get transferDeckFormats => 'Сачувај као Excel, Word или PDF';

  @override
  String get faqFilesQ => 'Могу ли да користим Excel, Word или PDF датотеке?';

  @override
  String get faqFilesA =>
      'Да. Задаци и Белешке имају дугме за увоз и извоз (две стрелице) на врху, а сваки шпил га има у свом менију. Сачувајте као Excel, CSV, Word или PDF или увезите Excel, CSV, Word, Markdown или текстуалне датотеке. Називи колона могу бити на било ком језику апликације, а сачуване датотеке увек можете поново да увезете.';

  @override
  String get tplLecture => 'Предавање';

  @override
  String get tplBook => 'Сажетак књиге';

  @override
  String get tplJournal => 'Дневник';

  @override
  String get tplWeek => 'Недељни план';

  @override
  String get tplLectureBody => '## Кључне тачке\n- \n\n## Питања\n- [ ] \n\n## Сажетак\n';

  @override
  String get tplBookBody =>
      '## Главна идеја\n\n## Шта сам научио\n- \n\n## Цитати\n> \n\n## За примену\n- [ ] \n';

  @override
  String get tplJournalBody => '## Захвалан сам за\n- \n\n## Данашњи фокус\n- [ ] \n\n## Белешке\n';

  @override
  String get tplWeekBody =>
      '## Циљеви ове недеље\n- [ ] \n\n### Субота\n- [ ] \n\n### Недеља\n- [ ] \n\n### Понедељак\n- [ ] \n\n### Уторак\n- [ ] \n\n### Среда\n- [ ] \n\n### Четвртак\n- [ ] \n\n### Петак\n- [ ] \n';

  @override
  String get tplHint => 'Почните од шаблона';

  @override
  String get noteImage => 'Слика';

  @override
  String get noteAddImage => 'Додај слику';

  @override
  String get noteImageUnreadable => 'Ова датотека није слика коју апликација може да прочита.';

  @override
  String get noteImageTooLarge => 'Ова слика је превелика.';

  @override
  String get examSet => 'Подеси датум испита';

  @override
  String get examDate => 'Датум испита';

  @override
  String get examToday => 'Испит је данас. Срећно!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Испит за $count дана',
      few: 'Испит за $count дана',
      one: 'Испит за $count дан',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'учите $count нових картица дневно',
      few: 'учите $count нове картице дневно',
      one: 'учите $count нову картицу дневно',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'све картице су научене, наставите са понављањем';

  @override
  String examRaiseLimit(int count) {
    return 'Прикажи нове картице дневно: $count';
  }

  @override
  String get backupDriveHint =>
      'Да бисте чували копију на мрежи, изаберите Google диск (или другу апликацију у облаку) на екрану за чување који се отвара следећи.';

  @override
  String get flashShareDeck => 'Подели шпил са пријатељем';

  @override
  String get flashSortManual => 'Мој редослед (превлачење)';

  @override
  String get flashReorderHint => 'Држите ручицу и превуците картицу да бисте је померили.';

  @override
  String get flashReorderNeedsAll => 'Обришите претрагу и филтере да бисте превлачили картице.';

  @override
  String get flashDragHandle => 'Превуците да померите';

  @override
  String get reportTitle => 'Месечни извештај';

  @override
  String get reportFocus => 'Време фокуса';

  @override
  String reportSessions(int count) {
    return 'Сесије: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Најбољи дан: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Активни дани: $count';
  }

  @override
  String get reportCards => 'Поновљене картице';

  @override
  String reportCardsKnown(String percent) {
    return 'Запамћено: $percent';
  }

  @override
  String get reportTasks => 'Завршени задаци';

  @override
  String get reportHabits => 'Обележене навике';

  @override
  String get reportEmpty => 'Овог месеца још ништа није забележено.';

  @override
  String get reportSave => 'Сачувај као PDF или Word';

  @override
  String get reportPrevMonth => 'Претходни месец';

  @override
  String get reportNextMonth => 'Следећи месец';

  @override
  String get careTitle => 'Брига о телефону и подацима';

  @override
  String get storageTitle => 'Меморија';

  @override
  String get storageSubtitle => 'Шта заузима простор и чишћење некоришћених слика';

  @override
  String get storagePictures => 'Слике у белешкама';

  @override
  String get storageCardMedia => 'Слике и звук на картицама';

  @override
  String get storageText => 'Текст белешки';

  @override
  String get storageFree => 'Слободно на телефону';

  @override
  String get storageLow =>
      'Телефон је скоро пун. Ослободите простор да би резервне копије и подсетници наставили да раде.';

  @override
  String storageUnused(int count, String size) {
    return 'Некоришћене слике: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Нема некоришћених слика. Све је уредно.';

  @override
  String get storageClean => 'Уклони некоришћене слике';

  @override
  String storageCleaned(int count) {
    return 'Уклоњене слике: $count';
  }

  @override
  String get storageHint =>
      'Слика се сматра некоришћеном само кад је ниједна белешка не приказује, укључујући белешке у отпаду.';

  @override
  String get batteryTitle => 'Нека подсетници раде';

  @override
  String get batterySubtitle => 'Неки телефони заустављају апликације у позадини. Проверите свој.';

  @override
  String get batteryStatusOk =>
      'Уштеда батерије не ограничава ову апликацију. Подсетници и звуци треба да стижу на време.';

  @override
  String get batteryStatusLimited =>
      'Уштеда батерије може да заустави ову апликацију у позадини, па подсетници и звуци могу да касне или изостану.';

  @override
  String get batteryOpen => 'Отвори подешавања батерије';

  @override
  String get batteryOpenApp => 'Отвори подешавања апликације';

  @override
  String get batteryGeneric =>
      'У подешавањима батерије изаберите ову апликацију и подесите „Без ограничења“ (или „Не оптимизуј“).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: отворите и Безбедност › Дозволе › Аутоматско покретање и укључите ову апликацију, а уштеду батерије подесите на „Без ограничења“.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: отворите Батерија › ова апликација и дозволите активност у позадини и аутоматско покретање; закључајте апликацију на листи недавних.';

  @override
  String get batterySamsung =>
      'Samsung: Батерија › Ограничења коришћења у позадини: уклоните ову апликацију са апликација у мировању и дубоком мировању.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Покретање апликација › ова апликација › ручно управљање и дозволите аутоматско покретање, секундарно покретање и рад у позадини.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Батерија › Потрошња енергије у позадини › дозволите ову апликацију и укључите аутоматско покретање у дозволама.';

  @override
  String get whatsNewTitle => 'Шта је ново';

  @override
  String get whatsNewSubtitle => 'Најновије промене у неколико редова';

  @override
  String get whatsNewDone => 'Важи';

  @override
  String get whatsNewOrderTitle => 'Превуците картице својим редоследом';

  @override
  String get whatsNewOrderBody =>
      'У шпилу изаберите Сортирање › Мој редослед, затим држите ручицу и превуците.';

  @override
  String get whatsNewSpeechTitle => 'Звучник на свакој страни картице';

  @override
  String get whatsNewSpeechBody =>
      'Додирните га да чујете реч или превод. Брзина, понављања и глас су у менију понављања. Језик се препознаје из текста.';

  @override
  String get whatsNewReportTitle => 'Месечни извештај';

  @override
  String get whatsNewReportBody =>
      'У Увидима додирните икону извештаја да бисте видели месец и сачували га као PDF или Word.';

  @override
  String get whatsNewCareTitle => 'Брига о телефону и подацима';

  @override
  String get whatsNewCareBody =>
      'Подешавања сада имају страницу меморије са чишћењем слика и водичем за батерију за марку вашег телефона.';

  @override
  String get whatsNewSoundTitle => 'Мирнији звуци';

  @override
  String get whatsNewSoundBody => 'Звуци природе су мекши и тиши, а картице са сликама лепше.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Проверено $date: најновија резервна копија се исправно отвара.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Проверено $date: пронађена је оштећена резервна копија и замењена новом.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Проверено $date: најновија резервна копија није могла да се отвори. Сами сачувајте датотеку резервне копије из Подешавања.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Обично учите око $time';
  }

  @override
  String get smartReviewTimeUse => 'Користи';

  @override
  String get widgetNewNote => 'Нова белешка';

  @override
  String get noteConnections => 'Ознаке, везе и задаци';

  @override
  String get navCards => 'Картице';

  @override
  String get studyAnswerWay => 'Како одговарати';

  @override
  String get studyMorePractice => 'Додатна вежба';

  @override
  String get studySessionSettings => 'Подешавања сесије';

  @override
  String get focusAdjustTitle => 'Ваша сесија';

  @override
  String get focusPresetsTitle => 'Готове';

  @override
  String get focusPresetStudy => 'Учење';

  @override
  String get focusPresetDeep => 'Дубински рад';

  @override
  String get focusPresetQuick => 'Брзи спринт';

  @override
  String get focusPresetReading => 'Читање';

  @override
  String get focusPresetWorkout => 'Рунде вежбања';

  @override
  String get focusAdjustMinutes => 'Трајање фокуса';

  @override
  String get focusAdjustBreak => 'Трајање паузе';

  @override
  String get focusAdjustRounds => 'Рунде';

  @override
  String get focusRoundsOpen => 'Без ограничења';

  @override
  String focusMinutesShort(String n) {
    return '$n мин';
  }

  @override
  String get focusTapToAdjust => 'Додирните да промените време';

  @override
  String get flashArrangeDecks => 'Распореди шпилове';

  @override
  String get flashDeckActions => 'Опције шпила';

  @override
  String get starterBrowse => 'Готови шпилови';

  @override
  String get starterBrowseHint => 'Додајте један једним додиром и почните да учите';

  @override
  String get dashOpenDecks => 'Отворите своје картице';

  @override
  String speechVoiceNumber(String n) {
    return 'Глас $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Одличан ток. Одмор од $m мин?';
  }

  @override
  String get focusFlowBreakStart => 'Започни паузу';

  @override
  String tasksFinishAt(String time) {
    return 'Почните сада и све ћете завршити до $time';
  }

  @override
  String get focusCalmPacing => 'Мирни ритам';

  @override
  String get focusCalmPacingHint => 'Само цели минути и прстен, без секунди';

  @override
  String get focusFlipHint => 'Окрените телефон екраном надоле да бисте почели';

  @override
  String get focusImmersive => 'Режим уроњености';

  @override
  String get focusImmersiveBlack => 'Потпуно црна (штеди батерију)';

  @override
  String get focusFlipToFocus => 'Окрени за фокус';

  @override
  String get focusFlipToFocusHint => 'У режиму уроњености: екраном надоле почиње, подизање паузира';

  @override
  String get guardTitle => 'Заштита од ометања';

  @override
  String get guardSubtitle => 'Паузирајте апликације које ометају док сте фокусирани';

  @override
  String get guardSwitch => 'Паузирај апликације које ометају';

  @override
  String get guardSwitchHint => 'Током сесија фокуса и у сатима Временске заштите';

  @override
  String get guardNeedsAccess => 'Потребан је прекидач приступачности: додирните да га укључите';

  @override
  String get guardDisclosureTitle => 'Како ради заштита';

  @override
  String get guardDisclosureBody =>
      'Да би паузирао апликације које изаберете, Deep Focus користи Android услугу приступачности да види која је апликација отворена. Када је укључено „Затвори Shorts и Reels“, проверава и да ли је на екрану плејер кратких видео снимака.\n\nНе чита никакав текст, не чува ништа што види и ништа никуда не шаље: све остаје на вашем телефону. Можете је искључити било када у подешавањима приступачности.';

  @override
  String get guardAgree => 'Прихвати и отвори подешавања';

  @override
  String get guardModeGentle => 'Благи';

  @override
  String get guardModeStrict => 'Строги';

  @override
  String get guardGentleHint => 'Пауза од 5 секунди за дисање, затим ви бирате';

  @override
  String get guardStrictHint => 'Изабране апликације остају затворене до краја фокуса';

  @override
  String get guardApps => 'Апликације за паузирање';

  @override
  String get guardAppsAllowed => 'Дозвољене апликације';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count апликација',
      few: '$count апликације',
      one: '$count апликација',
      zero: 'Још ништа није изабрано',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Дозволи само изабране апликације';

  @override
  String get guardAllowlistHint =>
      'Све остале апликације се паузирају; позиви, подешавања и тастатура увек раде';

  @override
  String get guardShorts => 'Затвори Shorts и Reels';

  @override
  String get guardShortsHint =>
      'Кад год је заштита укључена. Без гаранције: ове апликације се често мењају';

  @override
  String get guardSchedule => 'Временска заштита';

  @override
  String get guardScheduleHint =>
      'Штити и одређеним данима и у одређене сате, нпр. у школи или на послу';

  @override
  String get guardFrom => 'Од';

  @override
  String get guardTo => 'До';

  @override
  String get guardSearchApps => 'Претражи апликације';

  @override
  String get guardNoApps => 'Нема пронађених апликација';

  @override
  String get guardPrivacy =>
      'Ради само на вашем телефону: заштита види која је апликација отворена, никад шта је у њој, и ништа не шаље.';

  @override
  String get guardBreathe => 'Удахните… и издахните';

  @override
  String get guardQuestion => 'Да ли вам ова апликација треба сада?';

  @override
  String get guardBackToFocus => 'Назад на фокус';

  @override
  String get guardOpenFive => 'Отвори на 5 минута';

  @override
  String get guardStrictBody => 'Ова апликација је паузирана до краја времена фокуса.';

  @override
  String get guardShortsClosed => 'Кратки видео снимци се затварају док је заштита укључена';

  @override
  String get faqGuardQ => 'Како да зауставим апликације које ометају док сам фокусиран?';

  @override
  String get faqGuardA =>
      'Отворите Фокус → подешавања тајмера → Заштита од ометања. Изаберите апликације, а затим Благи (5 секунди дисања и питање „Да ли вам ова апликација треба сада?“) или Строги (остају затворене). Ради током сесија фокуса и, уз Временску заштиту, данима и сатима које подесите. „Дозволи само изабране апликације“ паузира све остало; позиви, подешавања и тастатура увек раде. Android вас једном тражи да укључите заштиту у подешавањима приступачности. Види само која је апликација отворена и ништа не шаље.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Премештено у „$name“';
  }

  @override
  String get notesDragHint => 'Држите белешку и превуците је на свеску';

  @override
  String get guardReviewCards => 'Боље понови картице';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Чека вас $count картица',
      few: 'Чекају вас $count картице',
      one: 'Чека вас $count картица',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Хитно: држите 10 секунди';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Наставите да држите… $n';
  }

  @override
  String get guardWeekTitle => 'Ове недеље';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пауза',
      few: '$count паузе',
      one: '$count пауза',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'повратак на фокус $count пута',
      few: 'повратак на фокус $count пута',
      one: 'повратак на фокус $count пут',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Преименуј речи';

  @override
  String get wordsSubtitle => 'Ваша реч за било који текст у апликацији';

  @override
  String get wordsHint =>
      'Додирните текст да бисте га променили. Ваше речи важе само за овај језик и чувају се у резервним копијама.';

  @override
  String get wordsSearch => 'Претражи текстове';

  @override
  String get wordsChangedOnly => 'Само промењени';

  @override
  String wordsOriginal(String text) {
    return 'Оригинал: $text';
  }

  @override
  String get wordsReset => 'Користи оригинал';

  @override
  String get wordsResetAll => 'Ресетуј све речи';

  @override
  String get wordsResetAllConfirm => 'Сви текстови на овом језику враћају се на оригинал.';

  @override
  String get wordsNone => 'Није пронађен текст';

  @override
  String get settingsLanguageSearch => 'Претражи језике';

  @override
  String get settingsLanguageNoMatch => 'Ниједан језик се не подудара';

  @override
  String get soundsMyMusic => 'Ваш аудио';

  @override
  String get soundsMusicHint =>
      'Пустите аудио датотеку са телефона. Ништа се не копира нити отпрема.';

  @override
  String get soundsChooseMusic => 'Изаберите аудио';

  @override
  String get soundsRemoveMusic => 'Уклони аудио';

  @override
  String get wordPacksTitle => 'Пакети речи';

  @override
  String get wordPacksHint =>
      'Спискови речи по темама. Преузмите само језик који желите, а затим слободно уређујте или бришите картице.';

  @override
  String get wordPacksFailed => 'Преузимање није успело. Проверите везу.';

  @override
  String get wordPacksEmpty => 'Речи за овај језик се још припремају.';
}
