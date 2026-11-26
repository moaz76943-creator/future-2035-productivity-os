// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Нүүр';

  @override
  String get navTasks => 'Даалгавар';

  @override
  String get navFocus => 'Төвлөрөл';

  @override
  String get navCalendar => 'Хуанли';

  @override
  String get navSpaces => 'Орон зай';

  @override
  String get moduleProjects => 'Төсөл';

  @override
  String get moduleNotes => 'Тэмдэглэл';

  @override
  String get moduleFlashcards => 'Карт';

  @override
  String get moduleGoals => 'Зорилго';

  @override
  String get moduleHabits => 'Дадал';

  @override
  String get moduleAnalytics => 'Шинжилгээ';

  @override
  String get moduleSearch => 'Хайлт';

  @override
  String get moduleAssistant => 'Туслах';

  @override
  String get moduleSettings => 'Тохиргоо';

  @override
  String get moduleTrash => 'Хогийн сав';

  @override
  String get actionSave => 'Хадгалах';

  @override
  String get actionCancel => 'Цуцлах';

  @override
  String get actionDelete => 'Устгах';

  @override
  String get actionEdit => 'Засах';

  @override
  String get actionDone => 'Болсон';

  @override
  String get actionAdd => 'Нэмэх';

  @override
  String get actionCreate => 'Үүсгэх';

  @override
  String get actionClose => 'Хаах';

  @override
  String get actionBack => 'Буцах';

  @override
  String get actionUndo => 'Буцаах';

  @override
  String get actionRestore => 'Сэргээх';

  @override
  String get actionRetry => 'Дахин оролдох';

  @override
  String get actionContinue => 'Үргэлжлүүлэх';

  @override
  String get actionSkip => 'Алгасах';

  @override
  String get actionArchive => 'Архивлах';

  @override
  String get actionUnarchive => 'Архиваас гаргах';

  @override
  String get actionPin => 'Бэхлэх';

  @override
  String get actionUnpin => 'Бэхлэлт авах';

  @override
  String get actionMore => 'Бусад сонголт';

  @override
  String get actionClear => 'Цэвэрлэх';

  @override
  String get actionSearch => 'Хайх';

  @override
  String get actionSort => 'Эрэмбэлэх';

  @override
  String get actionShare => 'Хуваалцах';

  @override
  String get actionImport => 'Импортлох';

  @override
  String get actionExport => 'Экспортлох';

  @override
  String get actionPause => 'Түр зогсоох';

  @override
  String get actionResume => 'Үргэлжлүүлэх';

  @override
  String get actionStart => 'Эхлэх';

  @override
  String get actionStop => 'Зогсоох';

  @override
  String get actionComplete => 'Дуусгах';

  @override
  String get actionDeleteForever => 'Бүрмөсөн устгах';

  @override
  String get actionEmptyTrash => 'Хогийн савыг хоослох';

  @override
  String get actionUnlink => 'Холбоосыг салгах';

  @override
  String get actionCustomize => 'Тохируулах';

  @override
  String get actionPreview => 'Урьдчилан харах';

  @override
  String get actionLog => 'Ахиц бүртгэх';

  @override
  String get stateLoading => 'Ачаалж байна…';

  @override
  String get stateSaving => 'Хадгалж байна…';

  @override
  String get stateSaved => 'Хадгалсан';

  @override
  String get stateUnsaved => 'Хадгалаагүй өөрчлөлт';

  @override
  String get errorGenericTitle => 'Алдаа гарлаа';

  @override
  String get errorGenericMessage => 'Таны өгөгдөл аюулгүй байна. Дахин оролдоно уу.';

  @override
  String get errorLoadFailed => 'Энэ агуулгыг ачаалж чадсангүй.';

  @override
  String get errorSaveFailed => 'Хадгалж чадсангүй. Таны өөрчлөлтүүд энд хэвээр байна.';

  @override
  String get validationRequired => 'Энэ талбар заавал';

  @override
  String get validationTitleRequired => 'Гарчиг оруулна уу';

  @override
  String get validationNameRequired => 'Нэр оруулна уу';

  @override
  String get validationTooLong => 'Хэт урт байна';

  @override
  String get validationEndBeforeStart => 'Төгсгөл нь эхлэлээс хойш байх ёстой';

  @override
  String get validationStartAfterDue => 'Эхлэх огноо нь хугацаанаас өмнө байх ёстой';

  @override
  String get validationPositiveNumber => 'Тэгээс их тоо оруулна уу';

  @override
  String get validationDependencyCycle => 'Энэ нь тойрог хамаарал үүсгэнэ';

  @override
  String get validationInvalidRepeat => 'Энэ давталтын дүрэм буруу байна';

  @override
  String get deletedItem => 'Хогийн сав руу зөөсөн';

  @override
  String get untitled => 'Гарчиггүй';

  @override
  String get noProject => 'Төсөлгүй';

  @override
  String get greetingMorning => 'Өглөөний мэнд';

  @override
  String get greetingAfternoon => 'Өдрийн мэнд';

  @override
  String get greetingEvening => 'Оройн мэнд';

  @override
  String get dashFocusToday => 'Өнөөдрийн төвлөрөл';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Төвлөрөл эхлүүлэх';

  @override
  String get dashFocusRunning => 'Сесс явагдаж байна';

  @override
  String get dashTodayTasks => 'Өнөөдөр дуусах';

  @override
  String get dashAgenda => 'Хөтөлбөр';

  @override
  String get dashHabits => 'Өнөөдрийн дадал';

  @override
  String get dashGoals => 'Зорилго';

  @override
  String get dashReview => 'Давталт';

  @override
  String get dashRecentNotes => 'Сүүлийн тэмдэглэл';

  @override
  String get dashInsight => 'Зөвлөмж';

  @override
  String get dashSeeAll => 'Бүгдийг харах';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Давтах $count карт',
      one: 'Давтах 1 карт',
      zero: 'Давтах карт алга',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Одоо давтах';

  @override
  String get dashCustomizeTitle => 'Нүүрний хэсгүүд';

  @override
  String get dashCustomizeHint => 'Нүүр дэлгэцэнд юу харагдахыг сонгоно уу.';

  @override
  String get dashSectionFocus => 'Төвлөрөл';

  @override
  String get dashSectionToday => 'Өнөөдөр дуусах даалгавар';

  @override
  String get dashSectionAgenda => 'Хөтөлбөр';

  @override
  String get dashSectionHabits => 'Дадал';

  @override
  String get dashSectionGoals => 'Зорилго';

  @override
  String get dashSectionReview => 'Картын давталт';

  @override
  String get dashSectionNotes => 'Сүүлийн тэмдэглэл';

  @override
  String get dashSectionInsight => 'Зөвлөмжүүд';

  @override
  String get quickAddTask => 'Шинэ даалгавар';

  @override
  String get quickAddNote => 'Шинэ тэмдэглэл';

  @override
  String get quickAddEvent => 'Шинэ үйл явдал';

  @override
  String get quickStartFocus => 'Төвлөрөл';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Танд хугацаа хэтэрсэн $count даалгавар байна. Хамгийн чухлаас нь эхлээрэй.',
      one: 'Танд хугацаа хэтэрсэн 1 даалгавар байна. Дахин төлөвлөх эсвэл эхлээд дуусгаарай.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Өдрийн төвлөрлийн зорилгодоо хүрэхэд $minutes минут дутуу байна.';
  }

  @override
  String get insightCardsDue => 'Картуудаа санаанд шинэ байхад нь одоо давтаарай.';

  @override
  String get insightAllClear =>
      'Бүх зүйл төлөвлөгөөний дагуу. Маргаашийг төлөвлөх эсвэл ухамсартай завсарлага аваарай.';

  @override
  String insightHabitStreak(String habit) {
    return 'Цувааг хадгалаарай: «$habit» өнөөдөр хараахан хийгдээгүй байна.';
  }

  @override
  String get focusTitle => 'Төвлөрөл';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Таймер';

  @override
  String get focusModeCountUp => 'Секундомер';

  @override
  String get focusModeOpen => 'Чөлөөт';

  @override
  String get focusPhaseWork => 'Төвлөрөл';

  @override
  String get focusPhaseShortBreak => 'Богино завсарлага';

  @override
  String get focusPhaseLongBreak => 'Урт завсарлага';

  @override
  String get focusReady => 'Бэлэн болохоор эхлээрэй';

  @override
  String get focusPaused => 'Түр зогссон';

  @override
  String get focusRunning => 'Төвлөрсөн';

  @override
  String get focusDuration => 'Үргэлжлэх хугацаа';

  @override
  String get focusLinkTask => 'Даалгавар холбох';

  @override
  String get focusLinkedTask => 'Ажиллаж буй';

  @override
  String get focusNoTask => 'Холбосон даалгавар алга';

  @override
  String focusCycle(int current, int total) {
    return 'Мөчлөг $current/$total';
  }

  @override
  String get focusSkipBreak => 'Завсарлагыг алгасах';

  @override
  String get focusStartBreak => 'Завсарлага эхлүүлэх';

  @override
  String get focusStartNext => 'Дараагийн төвлөрлийг эхлүүлэх';

  @override
  String get focusSessionComplete => 'Сесс дууслаа';

  @override
  String get focusSessionStopped => 'Сесс хадгалагдлаа';

  @override
  String focusSessionSummary(String duration) {
    return 'Та $duration төвлөрлөө.';
  }

  @override
  String get focusAddNote => 'Энэ сессийн талаар тэмдэглэл нэмэх';

  @override
  String get focusHistory => 'Түүх';

  @override
  String get focusNoHistory => 'Дууссан сессүүд энд харагдана';

  @override
  String get focusTargets => 'Зорилтууд';

  @override
  String get focusDailyTarget => 'Өдрийн зорилт';

  @override
  String get focusWeeklyTarget => 'Долоо хоногийн зорилт';

  @override
  String get focusOutcomeCompleted => 'Дууссан';

  @override
  String get focusOutcomeInterrupted => 'Эрт зогсоосон';

  @override
  String get focusRecovered => 'Апп хаалттай байхад таны сесс үргэлжилсэн.';

  @override
  String get focusCompletedWhileAway => 'Апп хаалттай байхад сесс дуусаж, хадгалагдсан.';

  @override
  String get focusNotificationsOff => 'Мэдэгдэл унтраалттай. Сесс дуусахад сануулга авахгүй.';

  @override
  String get focusBatteryHint =>
      'Зарим төхөөрөмж аппыг арын горимд түр зогсоодог. Таймер нарийвчлалтай хэвээр байх боловч сануулга хоцорч болно. Найдвартай сануулгын тулд батарейг хязгааргүй ашиглахыг зөвшөөрнө үү.';

  @override
  String get focusOpenSettings => 'Тохиргоо нээх';

  @override
  String get focusStopConfirmTitle => 'Энэ сессийг зогсоох уу?';

  @override
  String get focusStopConfirmMessage => 'Одоог хүртэлх төвлөрлийн хугацаа хадгалагдана.';

  @override
  String get focusDiscard => 'Хаях';

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
    return '$phase, $time үлдсэн';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time өнгөрсөн';
  }

  @override
  String get focusDeleteSession => 'Сессийг устгах';

  @override
  String get tasksTitle => 'Даалгавар';

  @override
  String get tasksViewToday => 'Өнөөдөр';

  @override
  String get tasksViewUpcoming => 'Удахгүй';

  @override
  String get tasksViewAll => 'Бүгд';

  @override
  String get tasksViewOverdue => 'Хугацаа хэтэрсэн';

  @override
  String get tasksViewCompleted => 'Дууссан';

  @override
  String get tasksQuickAddHint => 'Даалгавар нэмэх…';

  @override
  String get tasksEmptyTitle => 'Бүгд дууссан';

  @override
  String get tasksEmptyMessage => 'Өдрөө төлөвлөж эхлэхийн тулд даалгавар нэмнэ үү.';

  @override
  String get tasksEmptyCompleted => 'Дууссан даалгаврууд энд харагдана.';

  @override
  String get taskNew => 'Шинэ даалгавар';

  @override
  String get taskEdit => 'Даалгавар засах';

  @override
  String get taskTitleLabel => 'Гарчиг';

  @override
  String get taskTitleHint => 'Юу хийх вэ?';

  @override
  String get taskDescriptionLabel => 'Тайлбар';

  @override
  String get taskNotesLabel => 'Тэмдэглэл';

  @override
  String get taskPriority => 'Ач холбогдол';

  @override
  String get priorityNone => 'Байхгүй';

  @override
  String get priorityLow => 'Бага';

  @override
  String get priorityMedium => 'Дунд';

  @override
  String get priorityHigh => 'Өндөр';

  @override
  String get priorityUrgent => 'Яаралтай';

  @override
  String get taskDueDate => 'Дуусах хугацаа';

  @override
  String get taskStartDate => 'Эхлэх огноо';

  @override
  String get taskReminder => 'Сануулга';

  @override
  String get taskRepeat => 'Давтах';

  @override
  String get taskProject => 'Төсөл';

  @override
  String get taskCategory => 'Ангилал';

  @override
  String get taskCategoryHint => 'ж.нь Ажил, Гэр, Сурлага';

  @override
  String get taskEstimateMinutes => 'Тооцоолсон хугацаа (минут)';

  @override
  String get taskTracked => 'Хэмжсэн төвлөрөл';

  @override
  String get taskLabels => 'Шошго';

  @override
  String get taskAddLabel => 'Шинэ шошго';

  @override
  String get taskChecklist => 'Шалгах жагсаалт';

  @override
  String get taskAddChecklistItem => 'Зүйл нэмэх';

  @override
  String get taskSubtasks => 'Дэд даалгавар';

  @override
  String get taskAddSubtask => 'Дэд даалгавар нэмэх';

  @override
  String get taskDependencies => 'Хориглож буй';

  @override
  String get taskAddDependency => 'Хориглох даалгавар нэмэх';

  @override
  String get taskLinkedNotes => 'Холбосон тэмдэглэл';

  @override
  String get taskSetTime => 'Цаг тохируулах';

  @override
  String get taskNoDate => 'Огноогүй';

  @override
  String get taskCompleted => 'Даалгавар дууслаа';

  @override
  String get taskNextOccurrence => 'Дараагийн давталт үүслээ';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days өдөр хоцорсон',
      one: '1 өдөр хоцорсон',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '«$title»-г дууссан гэж тэмдэглэх';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '«$title»-г дуусаагүй гэж тэмдэглэх';
  }

  @override
  String get sortSmart => 'Ухаалаг';

  @override
  String get sortDueDate => 'Дуусах хугацаа';

  @override
  String get sortPriority => 'Ач холбогдол';

  @override
  String get sortCreated => 'Хамгийн шинэ';

  @override
  String get sortTitle => 'Гарчиг';

  @override
  String get filterAllProjects => 'Бүх төсөл';

  @override
  String get filterAnyPriority => 'Ямар ч ач холбогдол';

  @override
  String get filterTitle => 'Шүүх ба эрэмбэлэх';

  @override
  String get dateToday => 'Өнөөдөр';

  @override
  String get dateTomorrow => 'Маргааш';

  @override
  String get dateYesterday => 'Өчигдөр';

  @override
  String get repeatNever => 'Давтагдахгүй';

  @override
  String get repeatDaily => 'Өдөр бүр';

  @override
  String get repeatWeekdays => 'Ажлын өдөр бүр';

  @override
  String get repeatWeekly => 'Долоо хоног бүр';

  @override
  String get repeatMonthly => 'Сар бүр';

  @override
  String get repeatYearly => 'Жил бүр';

  @override
  String get repeatCustom => 'Захиалгат';

  @override
  String get repeatEvery => 'Давтамж';

  @override
  String get repeatOnDays => 'Өдрүүдэд';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'өдөр', one: 'өдөр');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'долоо хоног',
      one: 'долоо хоног',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'сар', one: 'сар');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'жил', one: 'жил');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count удаа',
      one: '1 удаа',
    );
    return '$_temp0 давтагдсаны дараа дуусна';
  }

  @override
  String get repeatEndsNever => 'Хэзээ ч дуусахгүй';

  @override
  String get reminderAtTime => 'Үйл явдлын цагт';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минутын өмнө',
      one: '1 минутын өмнө',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours цагийн өмнө',
      one: '1 цагийн өмнө',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 өдрийн өмнө';

  @override
  String get projectsTitle => 'Төсөл';

  @override
  String get projectsEmptyTitle => 'Одоогоор төсөл алга';

  @override
  String get projectsEmptyMessage =>
      'Холбоотой даалгавар, тэмдэглэл, төвлөрлийн цагийг бүлэглээрэй.';

  @override
  String get projectNew => 'Шинэ төсөл';

  @override
  String get projectEdit => 'Төсөл засах';

  @override
  String get projectName => 'Нэр';

  @override
  String get projectDescription => 'Тайлбар';

  @override
  String get projectGoal => 'Зорилго';

  @override
  String get projectDeadline => 'Эцсийн хугацаа';

  @override
  String get projectColor => 'Өнгө';

  @override
  String get projectIcon => 'Дүрс тэмдэг';

  @override
  String get projectProgress => 'Ахиц';

  @override
  String projectTasksDone(int done, int total) {
    return '$total даалгавраас $done нь дууссан';
  }

  @override
  String get projectFocusTime => 'Төвлөрлийн хугацаа';

  @override
  String get projectArchived => 'Архивласан төслүүд';

  @override
  String get projectShowArchived => 'Архивласныг харуулах';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days өдөр үлдсэн',
      one: '1 өдөр үлдсэн',
      zero: 'Өнөөдөр дуусна',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Хугацаа хэтэрсэн';

  @override
  String get calendarTitle => 'Хуанли';

  @override
  String get calendarMonth => 'Сар';

  @override
  String get calendarWeek => 'Долоо хоног';

  @override
  String get calendarDay => 'Өдөр';

  @override
  String get calendarToday => 'Өнөөдөр';

  @override
  String get calendarPrevious => 'Өмнөх';

  @override
  String get calendarNext => 'Дараах';

  @override
  String get calendarNoEvents => 'Юу ч төлөвлөөгүй';

  @override
  String get calendarAllDay => 'Бүтэн өдөр';

  @override
  String get eventNew => 'Шинэ үйл явдал';

  @override
  String get eventEdit => 'Үйл явдал засах';

  @override
  String get eventTitleHint => 'Үйл явдлын гарчиг';

  @override
  String get eventStarts => 'Эхлэх';

  @override
  String get eventEnds => 'Дуусах';

  @override
  String get eventKind => 'Төрөл';

  @override
  String get eventKindEvent => 'Үйл явдал';

  @override
  String get eventKindTimeBlock => 'Цагийн блок';

  @override
  String get eventKindFocus => 'Төвлөрлийн сесс';

  @override
  String get eventKindGoal => 'Хувийн зорилго';

  @override
  String get eventDescription => 'Дэлгэрэнгүй';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count үйл явдалтай давхцаж байна',
      one: '1 үйл явдалтай давхцаж байна',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Энэ өдөр хуваарийн зөрчил байна';

  @override
  String get calendarTaskDue => 'Даалгаврын хугацаа';

  @override
  String get calendarDragHint => 'Үйл явдлыг өөр цаг руу шилжүүлэхийн тулд удаан дарж чирнэ үү';

  @override
  String get calendarRescheduled => 'Үйл явдлыг зөөлөө';

  @override
  String get calendarScheduleTask => 'Цагийн блок болгон төлөвлөх';

  @override
  String get notesTitle => 'Тэмдэглэл';

  @override
  String get notesViewAll => 'Бүгд';

  @override
  String get notesViewPinned => 'Бэхэлсэн';

  @override
  String get notesViewFavorites => 'Дуртай';

  @override
  String get notesViewArchived => 'Архивласан';

  @override
  String get notesTags => 'Шошго';

  @override
  String get notesNewNotebook => 'Шинэ дэвтэр';

  @override
  String get notesNoNotebook => 'Дэвтэргүй';

  @override
  String get notesEmptyTitle => 'Цэвэр хуудас';

  @override
  String get notesEmptyMessage => 'Санаа, уулзалтын тэмдэглэл, мэдлэгээ бичиж аваарай.';

  @override
  String get noteTitleHint => 'Гарчиг';

  @override
  String get noteBodyHint =>
      'Бичиж эхлээрэй… Шошгонд #, тэмдэглэл холбоход [[Гарчиг]] ашиглана уу.';

  @override
  String get noteFavorite => 'Дуртай';

  @override
  String get noteUnfavorite => 'Дуртайгаас хасах';

  @override
  String get noteMoveTo => 'Дэвтэр рүү зөөх';

  @override
  String get noteBacklinks => 'Холбоос өгсөн';

  @override
  String get noteLinkedTasks => 'Холбосон даалгавар';

  @override
  String get noteLinkTask => 'Даалгавар холбох';

  @override
  String get noteLinkProject => 'Төсөл';

  @override
  String get noteFormatHeading => 'Гарчиг';

  @override
  String get noteFormatBold => 'Тод';

  @override
  String get noteFormatItalic => 'Налуу';

  @override
  String get noteFormatList => 'Цэгтэй жагсаалт';

  @override
  String get noteFormatChecklist => 'Шалгах жагсаалт';

  @override
  String get noteFormatLink => 'Холбоос';

  @override
  String noteEdited(String time) {
    return 'Зассан: $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count үг',
      one: '1 үг',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Карт';

  @override
  String get flashEmptyTitle => 'Анхны багцаа үүсгээрэй';

  @override
  String get flashEmptyMessage => 'Завсартай давталт карт бүрийг таныг мартахын өмнөхөн харуулдаг.';

  @override
  String get deckNew => 'Шинэ багц';

  @override
  String get deckEdit => 'Багц засах';

  @override
  String get deckName => 'Багцын нэр';

  @override
  String get deckDescription => 'Тайлбар';

  @override
  String get deckDailyNew => 'Өдөрт шинэ карт';

  @override
  String get deckDailyReview => 'Өдрийн давталтын зорилт';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карт',
      one: '1 карт',
      zero: 'Карт алга',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Давтах';

  @override
  String get deckNewCards => 'Шинэ';

  @override
  String get deckMature => 'Сурсан';

  @override
  String get deckStudy => 'Суралцах';

  @override
  String get deckNothingDue => 'Одоогоор давтах зүйл алга. Дараа эргэж ирээрэй.';

  @override
  String get deckEmptyCards => 'Суралцаж эхлэхийн тулд карт нэмнэ үү.';

  @override
  String get cardNew => 'Шинэ карт';

  @override
  String get cardEdit => 'Карт засах';

  @override
  String get cardFront => 'Нүүр тал';

  @override
  String get cardBack => 'Ар тал';

  @override
  String get cardFrontHint => 'Асуулт эсвэл нэр томьёо';

  @override
  String get cardBackHint => 'Хариулт эсвэл тодорхойлолт';

  @override
  String get cardTags => 'Шошго';

  @override
  String get cardAddAnother => 'Хадгалаад дахин нэмэх';

  @override
  String get reviewShowAnswer => 'Хариултыг харуулах';

  @override
  String get reviewAgain => 'Дахин';

  @override
  String get reviewHard => 'Хэцүү';

  @override
  String get reviewGood => 'Сайн';

  @override
  String get reviewEasy => 'Амархан';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => 'Сесс дууслаа';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Та $count карт давтлаа.',
      one: 'Та 1 карт давтлаа.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Хариултыг харахын тулд товшино уу';

  @override
  String get importCardsTitle => 'Карт импортлох';

  @override
  String get importCardsHint =>
      'Мөр бүрт нэг карт буулгана уу (нүүр, ар талыг таб эсвэл цэгтэй таслалаар тусгаарлана) эсвэл файл сонгоно уу: Excel (.xlsx), CSV, Anki багц (.apkg) эсвэл экспортолсон багц.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карт импортлогдлоо',
      one: '1 карт импортлогдлоо',
      zero: 'Ямар ч карт импортлогдсонгүй',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Энэ агуулгыг импортлож чадсангүй.';

  @override
  String get exportCopied => 'Багцыг экспортлолоо';

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
      other: '$count өдөр',
      one: '1 өдөр',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Зорилго';

  @override
  String get goalsEmptyTitle => 'Ямар нэг зүйлд тэмүүл';

  @override
  String get goalsEmptyMessage =>
      'Өдөр, долоо хоног, сар эсвэл урт хугацааны зорилго тавьж, бодит ахицаа хянаарай.';

  @override
  String get goalNew => 'Шинэ зорилго';

  @override
  String get goalEdit => 'Зорилго засах';

  @override
  String get goalTitleHint => 'Та юунд хүрэхийг хүсэж байна вэ?';

  @override
  String get goalPeriod => 'Хугацаа';

  @override
  String get goalPeriodDaily => 'Өдөр тутмын';

  @override
  String get goalPeriodWeekly => 'Долоо хоногийн';

  @override
  String get goalPeriodMonthly => 'Сарын';

  @override
  String get goalPeriodLongTerm => 'Урт хугацааны';

  @override
  String get goalTarget => 'Зорилт';

  @override
  String get goalUnit => 'Нэгж';

  @override
  String get goalUnitHint => 'ж.нь хуудас, км, цаг';

  @override
  String get goalStatusActive => 'Идэвхтэй';

  @override
  String get goalStatusPaused => 'Түр зогссон';

  @override
  String get goalStatusAchieved => 'Хүрсэн';

  @override
  String get goalPause => 'Зорилгыг түр зогсоох';

  @override
  String get goalResume => 'Зорилгыг үргэлжлүүлэх';

  @override
  String get goalMarkAchieved => 'Хүрсэн гэж тэмдэглэх';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => 'Хэмжээ';

  @override
  String get goalLogNote => 'Тэмдэглэл (заавал биш)';

  @override
  String get goalHistory => 'Түүх';

  @override
  String get goalNoHistory => 'Бүртгэсэн ахиц энд харагдана';

  @override
  String get goalLinkedTasks => 'Холбосон даалгавар';

  @override
  String get goalLinkedTasksHint =>
      'Холбосон даалгавар бүр дуусахад энэ зорилгод 1 гэж тооцогдоно.';

  @override
  String get goalThisPeriod => 'Энэ хугацаа';

  @override
  String get habitsTitle => 'Дадал';

  @override
  String get habitsEmptyTitle => 'Өдөр бүр жижиг алхам';

  @override
  String get habitsEmptyMessage => 'Дадал үүсгээд хийх болгондоо тэмдэглээрэй.';

  @override
  String get habitNew => 'Шинэ дадал';

  @override
  String get habitEdit => 'Дадал засах';

  @override
  String get habitNameHint => 'ж.нь 20 хуудас унших';

  @override
  String get habitDays => 'Хуваарь';

  @override
  String get habitEveryDay => 'Өдөр бүр';

  @override
  String get habitTargetPerDay => 'Өдөрт хэдэн удаа';

  @override
  String get habitReminder => 'Өдөр тутмын сануулга';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өдрийн цуваа',
      one: '1 өдрийн цуваа',
      zero: 'Цуваа алга',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Шилдэг цуваа';

  @override
  String get habitCurrentStreak => 'Одоогийн цуваа';

  @override
  String get habitConsistency => 'Тогтвортой байдал';

  @override
  String get habitLast90 => 'Сүүлийн 90 өдөр';

  @override
  String get habitPaused => 'Түр зогссон';

  @override
  String get habitPause => 'Дадлыг түр зогсоох';

  @override
  String get habitResume => 'Дадлыг үргэлжлүүлэх';

  @override
  String get habitDoneToday => 'Өнөөдөр хийсэн';

  @override
  String habitCountToday(int count, int target) {
    return 'Өнөөдөр $count / $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '«$name» тэмдэглэх';
  }

  @override
  String get habitNotScheduledToday => 'Өнөөдөр төлөвлөөгүй';

  @override
  String get analyticsTitle => 'Шинжилгээ';

  @override
  String get rangeWeek => '7 өдөр';

  @override
  String get rangeMonth => '30 өдөр';

  @override
  String get rangeQuarter => '90 өдөр';

  @override
  String get statFocusTime => 'Төвлөрлийн хугацаа';

  @override
  String get statSessions => 'Сесс';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed дууссан · $interrupted эрт зогсоосон';
  }

  @override
  String get statTasksDone => 'Дууссан даалгавар';

  @override
  String get statCompletionRate => 'Хугацаандаа дуусгасан';

  @override
  String get statHabitConsistency => 'Дадлын тогтвортой байдал';

  @override
  String get statRetention => 'Картыг санах';

  @override
  String get statReviews => 'Давталт';

  @override
  String get statActiveGoals => 'Идэвхтэй зорилго';

  @override
  String get statEstimated => 'Тооцоолсон гүйцэтгэсэн ажил';

  @override
  String get statEstimatedNote => 'Хэмжсэн хугацаа биш, таны тооцоонд үндэслэсэн';

  @override
  String get statMeasuredNote => 'Төвлөрлийн сессүүдээс хэмжсэн';

  @override
  String get chartFocusByDay => 'Өдөрт төвлөрсөн минут';

  @override
  String get chartTasksByDay => 'Өдөрт дууссан даалгавар';

  @override
  String get chartTimeByProject => 'Төсөл тус бүрийн хугацаа';

  @override
  String get chartProjectProgress => 'Төслүүдийн ахиц';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: нийт $total, шилдэг өдөр $best';
  }

  @override
  String get analyticsNoData => 'Одоогоор өгөгдөл хангалтгүй';

  @override
  String get analyticsUnassigned => 'Хуваарилаагүй';

  @override
  String get searchHint => 'Бүх зүйлээс хайх…';

  @override
  String get searchRecent => 'Сүүлийн хайлт';

  @override
  String get searchClearRecent => 'Сүүлийн хайлтыг цэвэрлэх';

  @override
  String searchNoResults(String query) {
    return '«$query»-д үр дүн алга';
  }

  @override
  String get searchStartTyping =>
      'Даалгавар, тэмдэглэл, карт, зорилго, үйл явдал болон бусдаас хайгаарай. Хайлт энэ төхөөрөмжид үлдэнэ.';

  @override
  String get searchCatTask => 'Даалгавар';

  @override
  String get searchCatProject => 'Төсөл';

  @override
  String get searchCatNote => 'Тэмдэглэл';

  @override
  String get searchCatFlashcard => 'Карт';

  @override
  String get searchCatDeck => 'Багц';

  @override
  String get searchCatGoal => 'Зорилго';

  @override
  String get searchCatHabit => 'Дадал';

  @override
  String get searchCatEvent => 'Үйл явдал';

  @override
  String get searchCatSession => 'Сесс';

  @override
  String get searchAll => 'Бүгд';

  @override
  String get assistantTitle => 'Туслах';

  @override
  String get assistantIntro =>
      'Таны төхөөрөмж дээр ажилладаг төлөвлөлтийн тусламж. Хүсвэл хураангуй болон агуулга үүсгэхэд өөрийн сонгосон хиймэл оюуны үйлчилгээ үзүүлэгчийг холбоорой.';

  @override
  String get assistantOnDevice => 'Төхөөрөмж дээр';

  @override
  String get assistantCloud => 'ХО үйлчилгээ үзүүлэгч';

  @override
  String get assistantPlanDay => 'Өдрөө төлөвлөх';

  @override
  String get assistantPlanDayDesc =>
      'Нээлттэй даалгавруудыг яаралтай байдал, ач холбогдол, тооцоогоор нь эрэмбэлж, таны үйл явдлуудын хооронд байршуулна.';

  @override
  String get assistantExtractTasks => 'Тэмдэглэлээс даалгавар гаргах';

  @override
  String get assistantExtractTasksDesc =>
      'Тэмдэглэл дэх шалгах жагсаалтын зүйл болон үйлдлийн мөрүүдийг олж даалгавар болгоно.';

  @override
  String get assistantMakeCards => 'Тэмдэглэлээс карт үүсгэх';

  @override
  String get assistantMakeCardsDesc =>
      '«нэр томьёо: тодорхойлолт» болон асуулт/хариултын мөрүүдийг карт болгоно.';

  @override
  String get assistantSummarize => 'Тэмдэглэлийг хураангуйлах';

  @override
  String get assistantSummarizeDesc =>
      'ХО үйлчилгээ үзүүлэгч шаардлагатай. Тэмдэглэлийг зөвхөн таныг баталгаажуулсны дараа илгээнэ.';

  @override
  String get assistantWorkload => 'Ачааллын тойм';

  @override
  String get assistantWorkloadDesc =>
      'Тооцоолсон ажлыг энэ долоо хоногийн чөлөөт цагтай тань харьцуулна.';

  @override
  String get assistantPlanEmpty => 'Төлөвлөх нээлттэй даалгавар алга. Чөлөөт цагаа таашаагаарай.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Өнөөдрийн чөлөөт төвлөрлийн цаг: $time';
  }

  @override
  String get assistantPlanOverflow => 'Эдгээр өнөөдөр багтахгүй байж магадгүй:';

  @override
  String get assistantChooseNote => 'Тэмдэглэл сонгох';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count даалгавар олдлоо',
      one: '1 даалгавар олдлоо',
      zero: 'Энэ тэмдэглэлээс даалгавар олдсонгүй',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карт олдлоо',
      one: '1 карт олдлоо',
      zero: 'Энэ тэмдэглэлээс карт олдсонгүй',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Багц сонгох';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Тооцоолсон ажил: $estimated. Чөлөөт цаг: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Та байгаа цагаасаа илүүг төлөвлөсөн байна. Ач холбогдол багатай даалгавруудыг шилжүүлэх талаар бодоорой.';

  @override
  String get assistantWorkloadOk => 'Таны төлөвлөгөө боломжит цагт багтаж байна.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count нээлттэй даалгаварт тооцоо алга.',
      one: '1 нээлттэй даалгаварт тооцоо алга.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'ХО үйлчилгээ үзүүлэгч';

  @override
  String get assistantProviderOff =>
      'Үйлчилгээ үзүүлэгч холбогдоогүй. Төхөөрөмжийн хэрэгслүүд ажилласаар байна.';

  @override
  String assistantProviderOn(String host) {
    return '$host-д холбогдсон';
  }

  @override
  String get assistantEndpoint => 'API төгсгөлийн цэг (HTTPS)';

  @override
  String get assistantModel => 'Загвар';

  @override
  String get assistantApiKey => 'API түлхүүр';

  @override
  String get assistantApiKeyStored => 'Энэ төхөөрөмжид аюулгүй хадгалагдана';

  @override
  String get assistantHttpsOnly => 'Зөвхөн HTTPS төгсгөлийн цэгийг зөвшөөрнө';

  @override
  String get assistantConsentTitle => 'Энэ агуулгыг ХО үйлчилгээ үзүүлэгч рүү илгээх үү?';

  @override
  String assistantConsentBody(String host) {
    return 'Сонгосон тэмдэглэлийн текст энэ төхөөрөмжөөс гарч, $host боловсруулна. Өөр юу ч илгээгдэхгүй.';
  }

  @override
  String get assistantConsentAlways => 'Энэ үйлчилгээ үзүүлэгчийн хувьд дахин бүү асуу';

  @override
  String get assistantSend => 'Илгээх';

  @override
  String get assistantUnavailable =>
      'ХО үйлчилгээ үзүүлэгчтэй холбогдож чадсангүй. Дараа дахин оролдоно уу.';

  @override
  String get assistantDisabledTitle => 'Туслах унтраалттай';

  @override
  String get assistantDisabledMessage =>
      'Төлөвлөлтийн хэрэгслийг ашиглахын тулд асаана уу. Та үйлчилгээ үзүүлэгч холбож, хүсэлт бүрийг баталгаажуулахгүй бол ямар ч өгөгдөл төхөөрөмжөөс гарахгүй.';

  @override
  String get assistantSummaryTitle => 'Хураангуй';

  @override
  String get assistantRemoveProvider => 'Үйлчилгээ үзүүлэгчийг хасах';

  @override
  String get settingsTitle => 'Тохиргоо';

  @override
  String get settingsGeneral => 'Ерөнхий';

  @override
  String get settingsLanguage => 'Хэл';

  @override
  String get settingsLanguageSystem => 'Төхөөрөмжийн хэл';

  @override
  String get settingsAppearance => 'Харагдах байдал';

  @override
  String get settingsTheme => 'Загвар';

  @override
  String get themeLight => 'Цайвар';

  @override
  String get themeDark => 'Бараан';

  @override
  String get themeSystem => 'Систем';

  @override
  String get settingsReduceMotion => 'Хөдөлгөөнийг багасгах';

  @override
  String get settingsReduceMotionDesc => 'Хөдөлгөөнт дүрс ба хөдөлгөөнт дэвсгэрийг багасгах';

  @override
  String get settingsFocus => 'Төвлөрлийн таймер';

  @override
  String get settingsWorkLength => 'Төвлөрлийн урт';

  @override
  String get settingsShortBreak => 'Богино завсарлага';

  @override
  String get settingsLongBreak => 'Урт завсарлага';

  @override
  String get settingsLongBreakEvery => 'Урт завсарлага ийм тооны дараа';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сесс',
      one: '1 сесс',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Завсарлагыг автоматаар эхлүүлэх';

  @override
  String get settingsSound => 'Дуусах дуу';

  @override
  String get settingsDailyFocusTarget => 'Өдрийн төвлөрлийн зорилт';

  @override
  String get settingsWeeklyFocusTarget => 'Долоо хоногийн төвлөрлийн зорилт';

  @override
  String get settingsNotifications => 'Мэдэгдэл';

  @override
  String get settingsNotificationsEnable => 'Сануулгыг зөвшөөрөх';

  @override
  String get settingsQuietHours => 'Чимээгүй цаг';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Дадал, зорилго, давталтын сануулга $start–$end хооронд чимээгүй';
  }

  @override
  String get settingsReviewReminder => 'Картын давталтын сануулга';

  @override
  String get settingsPermissionDenied => 'Мэдэгдлийг системийн тохиргоонд хориглосон байна.';

  @override
  String get settingsPrivacy => 'Нууцлал ба өгөгдөл';

  @override
  String get settingsPrivacyStatement =>
      'Таны өгөгдөл зөвхөн энэ төхөөрөмжид шифрлэгдэн хадгалагдана. Бүртгэл, аналитик, хяналт байхгүй.';

  @override
  String get settingsBackup => 'Шифрлэсэн нөөц хуулбар үүсгэх';

  @override
  String get settingsBackupDesc => 'Таны сонгосон нууц үгээр хамгаалагдсан';

  @override
  String get settingsRestore => 'Нөөц хуулбараас сэргээх';

  @override
  String get settingsRestoreDesc => 'Энэ төхөөрөмжийн бүх өгөгдлийг солино';

  @override
  String get settingsErase => 'Бүх өгөгдлийг арилгах';

  @override
  String get settingsEraseDesc => 'Энэ төхөөрөмж дээрх бүх зүйлийг бүрмөсөн устгах';

  @override
  String get settingsEraseConfirmTitle => 'Бүх өгөгдлийг арилгах уу?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Бүх даалгавар, тэмдэглэл, карт, зорилго, дадал, үйл явдал, сесс бүрмөсөн устгагдана. Баталгаажуулахын тулд $word гэж бичнэ үү.';
  }

  @override
  String get settingsEraseWord => 'АРИЛГАХ';

  @override
  String get settingsErased => 'Бүх өгөгдлийг арилгалаа';

  @override
  String get backupPassword => 'Нөөц хуулбарын нууц үг';

  @override
  String get backupPasswordConfirm => 'Нууц үгээ баталгаажуулах';

  @override
  String backupPasswordHint(int count) {
    return 'Хамгийн багадаа $count тэмдэгт. Гээвэл сэргээх боломжгүй.';
  }

  @override
  String get backupPasswordMismatch => 'Нууц үг таарахгүй байна';

  @override
  String get backupPasswordShort => 'Нууц үг хэт богино';

  @override
  String get backupCreating => 'Нөөц хуулбарыг шифрлэж байна…';

  @override
  String get backupCreated => 'Нөөц хуулбар хадгалахад бэлэн';

  @override
  String get backupRestoring => 'Шалгаж, сэргээж байна…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count зүйл сэргээгдлээ',
      one: '1 зүйл сэргээгдлээ',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Нууц үг буруу эсвэл файлыг өөрчилсөн байна.';

  @override
  String get backupNotABackup => 'Энэ файл Deep Focus-ийн нөөц хуулбар биш.';

  @override
  String get backupCorrupted => 'Нөөц хуулбарын файл гэмтсэн байна.';

  @override
  String get backupNewer =>
      'Энэ нөөц хуулбарыг аппын шинэ хувилбараар үүсгэсэн. Эхлээд шинэчилнэ үү.';

  @override
  String get backupRestoreConfirmTitle => 'Бүх өгөгдлийг солих уу?';

  @override
  String get backupRestoreConfirmBody =>
      'Энэ төхөөрөмж дээрх одоогийн бүх зүйл нөөц хуулбараар солигдоно. Сэргээлт амжилтгүй болбол юу ч өөрчлөгдөхгүй.';

  @override
  String get settingsAbout => 'Тухай';

  @override
  String settingsVersion(String version) {
    return 'Хувилбар $version';
  }

  @override
  String get settingsLicenses => 'Нээлттэй эхийн лиценз';

  @override
  String get settingsAssistant => 'Туслах';

  @override
  String get settingsAssistantEnable => 'Туслахыг идэвхжүүлэх';

  @override
  String get settingsDashboard => 'Нүүрний хэсгүүд';

  @override
  String get settingsTrash => 'Хогийн сав';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes мин';
  }

  @override
  String get trashEmpty => 'Хогийн сав хоосон';

  @override
  String get trashHint => 'Устгасан зүйлс таныг хасах хүртэл энд үлдэнэ.';

  @override
  String get trashTasks => 'Даалгавар';

  @override
  String get trashNotes => 'Тэмдэглэл';

  @override
  String get onboardWelcomeTitle => 'Ирээдүйн ажлын орчиндоо тавтай морил';

  @override
  String get onboardWelcomeBody =>
      'Даалгавар, төвлөрөл, хуанли, тэмдэглэл, карт, зорилго, дадал — хамтдаа, гоё бөгөөд энгийн.';

  @override
  String get onboardPrivateTitle => 'Нууцлалыг эхнээс нь';

  @override
  String get onboardPrivateBody =>
      'Бүх зүйл энэ төхөөрөмжид шифрлэгдэн үлдэнэ. Бүртгэлгүй. Хяналтгүй. Удирдлага таны гарт.';

  @override
  String get onboardLanguageTitle => 'Хэлээ сонгоно уу';

  @override
  String get onboardNotifTitle => 'Зөөлөн сануулга';

  @override
  String get onboardNotifBody =>
      'Даалгаврын сануулга болон төвлөрлийн мэдэгдэлд зөвшөөрөл өгнө үү. Үүнийг хүссэн үедээ өөрчилж болно.';

  @override
  String get onboardGetStarted => 'Эхлэх';

  @override
  String onboardStep(int current, int total) {
    return '$total-ийн $current-р алхам';
  }

  @override
  String get notifChannelReminders => 'Сануулга';

  @override
  String get notifChannelRemindersDesc => 'Даалгавар, үйл явдал, дадал, зорилгын сануулга';

  @override
  String get notifChannelFocus => 'Төвлөрлийн таймер';

  @override
  String get notifChannelFocusDesc => 'Төвлөрлийн сесс эсвэл завсарлага дуусахад мэдэгдэнэ';

  @override
  String get notifTaskTitle => 'Даалгаврын сануулга';

  @override
  String get notifEventTitle => 'Удахгүй болох үйл явдал';

  @override
  String notifEventBody(String title, String time) {
    return '$title, $time-д';
  }

  @override
  String get notifFocusDoneTitle => 'Төвлөрлийн сесс дууслаа';

  @override
  String get notifFocusDoneBody => 'Сайн ажиллалаа. Завсарлах цаг боллоо.';

  @override
  String get notifBreakDoneTitle => 'Завсарлага дууслаа';

  @override
  String get notifBreakDoneBody => 'Дараагийн төвлөрлийн сесст бэлэн үү?';

  @override
  String get notifHabitTitle => 'Дадлын сануулга';

  @override
  String get notifReviewTitle => 'Картууд бэлэн боллоо';

  @override
  String get notifReviewBody => 'Богино давталт санах ойг тань бэхжүүлнэ.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ц $minutes мин';
  }

  @override
  String durationHours(int hours) {
    return '$hours ц';
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
  String get weekdaysShort => 'Да,Мя,Лх,Пү,Ба,Бя,Ня';

  @override
  String a11yProgress(int value) {
    return 'Ахиц $value хувь';
  }

  @override
  String a11yPriority(String level) {
    return 'Ач холбогдол: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Өнгө $index';
  }

  @override
  String get analyticsRangeLabel => 'Хугацааны муж';

  @override
  String get analyticsRefresh => 'Шинэчлэх';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Хугацаатай $total даалгавраас $done нь хугацаандаа дууссан';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total даалгавраас $done нь дууссан';
  }

  @override
  String get analyticsNoProjects => 'Идэвхтэй төсөл алга';

  @override
  String get analyticsNoFocus => 'Энэ хугацаанд төвлөрлийн сесс алга';

  @override
  String get analyticsHabitsNone => 'Идэвхтэй дадал алга';

  @override
  String get analyticsRetentionNote => 'Санасан боловсорсон картын хувь';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Чөлөөт цагийг ажлын өдрүүдэд ($days) $start–$end хооронд, цаг тогтоосон үйл явдлыг хасч тооцно. Тооцоолсон ажил нь ирэх 7 хоногт хугацаа нь дуусах нээлттэй даалгавруудын тооцооны нийлбэр.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Даваа–Баасан';

  @override
  String get assistantWorkdaysSunThu => 'Ням–Пүрэв';

  @override
  String get assistantWorkloadDayOff => 'Амралтын өдөр';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated төлөвлөсөн · $free чөлөөтэй';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Одооноос $end хүртэл өнөөдрийн үйл явдлуудын эргэн тойронд төлөвлөсөн. Эхлээд хугацаа хэтэрсэн даалгавар, дараа нь ач холбогдол, хугацаа, тооцоо.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Цагийн блок болгон төлөвлөх';

  @override
  String get assistantScheduleConfirmTitle => 'Хуанлидаа цагийн блок нэмэх үү?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Өнөөдрийн хуанлид $count цагийн блок нэмэгдэнэ.',
      one: 'Өнөөдрийн хуанлид 1 цагийн блок нэмэгдэнэ.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count цагийн блок нэмэгдлээ',
      one: '1 цагийн блок нэмэгдлээ',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Хуанлид тань аль хэдийн байгаа';

  @override
  String get assistantPlanTimeline => 'Өнөөдөрт багтана';

  @override
  String get assistantNoEstimate => 'Төлөвлөхийн тулд тооцоо нэмнэ үү';

  @override
  String get assistantNoNotes => 'Одоогоор тэмдэглэл алга. Эхлээд тэмдэглэл бичнэ үү.';

  @override
  String get assistantNoteEmpty => 'Энэ тэмдэглэл хоосон байна.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count даалгавар үүслээ',
      one: '1 даалгавар үүслээ',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карт үүслээ',
      one: '1 карт үүслээ',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-ийг үүсгэх',
      one: '1-ийг үүсгэх',
      zero: 'Юу ч сонгоогүй',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Танигдана: тэмдэглээгүй «- [ ]» хайрцаг болон TODO: эсвэл To do:-ээр эхэлсэн мөрүүд';

  @override
  String get assistantCardsHint =>
      'Танигдана: «нэр томьёо: тодорхойлолт», «нэр томьёо — тодорхойлолт» болон Q:/A: мөрийн хос';

  @override
  String get assistantProviderHint =>
      'OpenAI-тэй нийцтэй дурын үйлчилгээг ашиглаарай. Түлхүүр энэ төхөөрөмжийн аюулгүй санд үлдэх ба нөөц хуулбарт хэзээ ч орохгүй.';

  @override
  String get assistantEndpointHelp => 'Жишээ нь https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Хадгалсан түлхүүрээ үлдээхийн тулд хоосон орхино уу';

  @override
  String get assistantApiKeyRequired => 'API түлхүүр оруулна уу';

  @override
  String get assistantProviderSaved => 'Үйлчилгээ үзүүлэгчийг хадгаллаа';

  @override
  String get assistantProviderRemoved => 'Үйлчилгээ үзүүлэгчийг хасаж, түлхүүрийг устгалаа';

  @override
  String get assistantRemoveProviderConfirm =>
      'Үйлчилгээ үзүүлэгчийг хасаж, хадгалсан API түлхүүрийг энэ төхөөрөмжөөс устгах уу?';

  @override
  String get assistantAskEveryTime => 'Хүсэлт бүрийн өмнө асуух';

  @override
  String get assistantSummarizing => 'Хураангуйлж байна…';

  @override
  String assistantSummaryNote(String host) {
    return '$host үүсгэсэн. Найдахаасаа өмнө шалгана уу.';
  }

  @override
  String get assistantCopy => 'Хуулах';

  @override
  String get assistantCopied => 'Хуулагдлаа';

  @override
  String get assistantConfigure => 'Үйлчилгээ үзүүлэгч тохируулах';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Энэ цувааны бүх үйл явдлыг зөөлөө';

  @override
  String get calendarEventReminder => 'Сануулга';

  @override
  String get calendarEventRepeat => 'Давтах';

  @override
  String get calendarEventColor => 'Өнгө';

  @override
  String get calendarDefaultColor => 'Төрлийн өнгийг ашиглах';

  @override
  String get calendarEventLinkedTask => 'Холбосон даалгавар';

  @override
  String get calendarEventNoTask => 'Холбосон даалгавар алга';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count үйл явдал',
      one: '1 үйл явдал',
      zero: 'Үйл явдал алга',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'хугацаа нь болсон $count даалгавар',
      one: 'хугацаа нь болсон 1 даалгавар',
      zero: 'хугацаа нь болсон даалгавар алга',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Энэ өдрийг төлөвлөхийн тулд үйл явдал эсвэл цагийн блок нэмнэ үү.';

  @override
  String get calendarNow => 'Одоогийн цаг';

  @override
  String get calendarRecurring => 'Давтагдана';

  @override
  String get calendarEventNotFound => 'Энэ үйл явдал байхгүй болсон';

  @override
  String get calendarEventLocalTime => 'Цагийг таны төхөөрөмжийн цагийн бүсээр харуулна';

  @override
  String get calendarEventDeleted => 'Үйл явдлыг хогийн сав руу зөөлөө';

  @override
  String get calendarConflictMarker => 'Өөр үйл явдалтай давхацна';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Өөрчлөлт энэ цувааны үйл явдал бүрт хамаарна';

  @override
  String get calendarDragHintSeries => 'Давтагдах үйл явдлыг чирвэл бүх цуваа зөөгдөнө';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, даалгаврын хугацаа';
  }

  @override
  String get startupErrorTitle => 'Таны өгөгдлийг нээж чадсангүй';

  @override
  String get startupErrorLocked =>
      'Энэ төхөөрөмжийн өгөгдлийн шифрлэлтийн түлхүүр олдохгүй байна. Юу ч устгагдаагүй. Төхөөрөмжийг дахин асаах нь ихэвчлэн тусалдаг. Хэрэв саяхан төхөөрөмжөө сэргээсэн бол өгөгдлөө шифрлэсэн нөөц хуулбараас сэргээнэ үү.';

  @override
  String get startupErrorCipher =>
      'Энэ төхөөрөмж аппад шаардлагатай шифрлэсэн хадгалалтыг дэмжихгүй байна. Шифрлээгүй хэлбэрээр юу ч хадгалаагүй.';

  @override
  String get startupErrorRetry => 'Дахин оролдох';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картыг давтах цаг боллоо',
      one: '1 картыг давтах цаг боллоо',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count хүлээгдэж буй';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count шинэ';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Боловсорсон карт: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 буюу түүнээс их оруулна уу';

  @override
  String get flashcardsSearchCards => 'Карт хайх';

  @override
  String get flashcardsSearchEmpty => 'Хайлтад тохирох карт алга';

  @override
  String get flashcardsCardAdded => 'Карт нэмэгдлээ';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Хугацаа $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Санах ойд хуулах';

  @override
  String get flashcardsExportTitle => 'Багц экспортлох';

  @override
  String get flashcardsDeleteDeck => 'Багц устгах';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, дараагийн давталт $interval-ийн дараа';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Асуулт: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Хариулт: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Асуултыг харуулах';

  @override
  String get flashcardsImportField => 'Импортлох карт';

  @override
  String get flashcardsNothingToStudy => 'Судлах зүйл алга';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Судлахад $count карт бэлэн',
      one: 'Судлахад 1 карт бэлэн',
      zero: 'Бэлэн карт алга',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Үнэлгээгээр';

  @override
  String get flashcardsDeckNotFound => 'Энэ багц байхгүй болсон.';

  @override
  String get focusSessionDeleted => 'Сесс устгагдлаа';

  @override
  String get focusDeleteConfirm =>
      'Энэ сессийг түүхээсээ устгах уу? Түүний хугацаа таны зорилтод тооцогдохгүй болно.';

  @override
  String get focusUnlinkTask => 'Холбосон даалгаврыг хасах';

  @override
  String get focusNoteHint => 'Юун дээр ажилласан бэ?';

  @override
  String get focusTargetCaption => 'Хадгалсан сессүүдээс хэмжсэн';

  @override
  String get focusModeLabel => 'Таймерын горим';

  @override
  String focusUpNext(String phase) {
    return 'Дараа нь: $phase';
  }

  @override
  String get focusStopwatchHint => 'Зогсоох хүртэл өсөж тоолно.';

  @override
  String get focusOpenHint => 'Хугацааны хязгааргүй. Дуусахдаа зогсооно уу.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Сануулгыг тохиргоонд унтраасан байна. Сесс дуусахад танд мэдэгдэхгүй.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Бүгд';

  @override
  String get goalsFilterPeriod => 'Хугацааны шүүлтүүр';

  @override
  String get goalsFilterStatus => 'Төлөвийн шүүлтүүр';

  @override
  String get goalsEmptyFiltered => 'Энэ шүүлтүүрт тохирох зорилго алга';

  @override
  String goalsDueOn(String date) {
    return 'Хугацаа $date';
  }

  @override
  String get goalsDeadline => 'Эцсийн хугацаа (заавал биш)';

  @override
  String get goalsNoDeadline => 'Эцсийн хугацаагүй';

  @override
  String get goalsSetDeadline => 'Эцсийн хугацаа тогтоох';

  @override
  String get goalsRemoveDeadline => 'Эцсийн хугацааг хасах';

  @override
  String get goalsDescription => 'Тайлбар (заавал биш)';

  @override
  String get goalsTitleLabel => 'Гарчиг';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Зорилтод хүрсэн';

  @override
  String get goalsLogged => 'Ахиц бүртгэгдлээ';

  @override
  String get goalsEntryDeleted => 'Бичилт хасагдлаа';

  @override
  String get goalsDeleteEntry => 'Бичилт хасах';

  @override
  String get goalsDeleted => 'Зорилго устгагдлаа';

  @override
  String get goalsMarkActive => 'Идэвхтэй болгох';

  @override
  String get goalsNotFound => 'Энэ зорилго байхгүй болсон';

  @override
  String get goalsLinkTask => 'Даалгавар холбох';

  @override
  String get goalsNoLinkedTasks => 'Одоогоор холбосон даалгавар алга';

  @override
  String get goalsUnlinkTask => 'Даалгаврын холбоосыг салгах';

  @override
  String get goalsTaskOpen => 'Хараахан дуусаагүй';

  @override
  String get goalsTaskLinked => 'Даалгавар холбогдлоо';

  @override
  String get goalsTaskUnlinked => 'Даалгаврын холбоос салгагдлаа';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'дууссан $count холбосон даалгавар',
      one: 'дууссан 1 холбосон даалгавар',
    );
    return 'Энэ хугацаанд $_temp0 багтсан';
  }

  @override
  String get goalsHistoryAllTime =>
      'Өмнөх хугацааны бичилтүүд энд хадгалагдах боловч зөвхөн өөрийн хугацаанд тооцогдоно.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Өнөөдөр $total-аас $done нь хийгдсэн';
  }

  @override
  String get habitsNothingToday => 'Өнөөдөр төлөвлөсөн дадал алга';

  @override
  String get habitsDecrease => 'Нэг тэмдэглэгээг хасах';

  @override
  String get habitsResetToday => 'Өнөөдрийг тэглэх';

  @override
  String get habitsCheckInHint => 'Тохируулахын тулд удаан дарна уу';

  @override
  String get habitsName => 'Нэр';

  @override
  String get habitsColor => 'Өнгө';

  @override
  String get habitsValidationDays => 'Хамгийн багадаа нэг өдөр сонгоно уу';

  @override
  String habitsReminderAt(String time) {
    return 'Өдөр бүр $time-д';
  }

  @override
  String get habitsSetReminder => 'Сануулах цаг тогтоох';

  @override
  String get habitsRemoveReminder => 'Сануулгыг хасах';

  @override
  String get habitsReminderNote => 'Мэдэгдлийг зөвшөөрсөн бол сануулга төлөвлөсөн өдрүүдэд гарна.';

  @override
  String get habitsArchived => 'Дадлыг архивласан';

  @override
  String get habitsNotFound => 'Энэ дадал байхгүй болсон';

  @override
  String get habitsLast30 => 'Сүүлийн 30 өдөр';

  @override
  String get habitsConsistencyNone => 'Одоогоор өгөгдөл хангалтгүй';

  @override
  String get habitsCalendar => 'Тэмдэглэгээний түүх';

  @override
  String get habitsCalendarHint => 'Засахын тулд өдөр дээр товшино уу.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $target-аас $count';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Сүүлийн 90 өдрийн тэмдэглэгээ. Тогтвортой байдал $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Сүүлийн 90 өдрийн тэмдэглэгээ. Одоогоор өгөгдөл хангалтгүй.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өдөр',
      one: '1 өдөр',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Түр зогссон өдрүүд таны цуваанд нөлөөлөхгүй.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Дадлыг архивлах';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Өдөрт $count удаа',
      one: 'Өдөрт нэг удаа',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Бусад тэмдэглэл';

  @override
  String get notesAllNotebooks => 'Бүх дэвтэр';

  @override
  String get notesNotebookName => 'Дэвтрийн нэр';

  @override
  String get notesNotebookColor => 'Өнгө';

  @override
  String get notesDeleteNotebook => 'Дэвтэр устгах';

  @override
  String get notesDeleteNotebookMessage =>
      'Дэвтэр хасагдана. Түүний тэмдэглэлүүд хадгалагдаж, «Бүх дэвтэр» хэсэгт харагдана.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Чухал тэмдэглэлээ дээр байлгахын тулд бэхлээрэй.';

  @override
  String get notesEmptyFavorites => 'Таны дуртай гэж тэмдэглэсэн тэмдэглэл энд харагдана.';

  @override
  String get notesEmptyArchived => 'Архивласан тэмдэглэл энд харагдана.';

  @override
  String get notesEmptyFiltered => 'Эдгээр шүүлтүүрт тохирох тэмдэглэл алга.';

  @override
  String get notesArchivedSnack => 'Тэмдэглэлийг архивласан';

  @override
  String get notesUnarchivedSnack => 'Тэмдэглэлийг буцаан тэмдэглэлүүд рүү шилжүүллээ';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total-аас $done нь хийгдсэн';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Форматлах';

  @override
  String get notesWrite => 'Бичих';

  @override
  String get notesPreviewEmpty => 'Урьдчилан харах зүйл одоогоор алга.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Одоогоор өөр тэмдэглэл энд холбоос хийгээгүй. Энэ тэмдэглэл рүү [[$title]]-ээр холбоос хийнэ үү.';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Бусад тэмдэглэл холбоос хийх боломжтой болохын тулд энэ тэмдэглэлд гарчиг өгнө үү.';

  @override
  String get notesLinkedTasksEmpty => 'Энэ тэмдэглэлд холбосон даалгавар алга.';

  @override
  String notesLinkMissing(String title) {
    return '«$title» гарчигтай тэмдэглэл одоогоор алга.';
  }

  @override
  String get notesNotFound => 'Энэ тэмдэглэл байхгүй болсон.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Шалгах жагсаалтын зүйл: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return '$title тэмдэглэлийг нээх';
  }

  @override
  String get notesTagsHint => 'Тэмдэглэлд #шошго гэж бичиж шошго нэмнэ үү.';

  @override
  String get notesTaskDone => 'Дууссан';

  @override
  String get notifTimerDoneBody => 'Таны тогтоосон цаг өнгөрсөн.';

  @override
  String get onboardingPrivatePointDevice => 'Зөвхөн энэ төхөөрөмжид шифрлэгдэн хадгалагдана';

  @override
  String get onboardingPrivatePointAccount => 'Бүртгэл шаардлагагүй';

  @override
  String get onboardingPrivatePointTracking => 'Аналитикгүй, хяналтгүй';

  @override
  String get onboardingLanguageBody => 'Үүнийг хүссэн үедээ Тохиргооноос өөрчилж болно.';

  @override
  String get onboardingNext => 'Дараах';

  @override
  String get projectsActive => 'Идэвхтэй';

  @override
  String get projectNameHint => 'ж.нь Бүтээгдэхүүн нээх';

  @override
  String get projectGoalHint => 'Дууссан үр дүн ямар байх вэ?';

  @override
  String get projectNoDeadline => 'Эцсийн хугацаагүй';

  @override
  String get projectTasksOpen => 'Нээлттэй даалгавар';

  @override
  String get projectTasksCompleted => 'Дууссан даалгавар';

  @override
  String get projectAddTask => 'Төсөлд даалгавар нэмэх';

  @override
  String get projectAddNote => 'Шинэ төслийн тэмдэглэл';

  @override
  String get projectLinkedNotes => 'Тэмдэглэл';

  @override
  String get projectNoTasks => 'Энэ төсөлд одоогоор даалгавар алга';

  @override
  String get projectArchivedBadge => 'Архивласан';

  @override
  String get projectDeleted => 'Төслийг хогийн сав руу зөөлөө';

  @override
  String get projectDeleteMessage => 'Даалгаврууд төсөлгүйгээр жагсаалтад тань үлдэнэ.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent хувь дууссан';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count үр дүн',
      one: '1 үр дүн',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Төрлөөр шүүх';

  @override
  String searchRecentTap(String query) {
    return '$query-г дахин хайх';
  }

  @override
  String get settingsLanguageHint =>
      'Бүх аппын хэлийг сонгоно уу. Нэрсийг өөрийн хэлээр нь харуулна.';

  @override
  String get settingsThemeHint => 'Цайвар, бараан эсвэл системийг дагах';

  @override
  String settingsDecrease(String setting) {
    return '$setting багасгах';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting нэмэгдүүлэх';
  }

  @override
  String get settingsQuietStart => 'Эхлэх';

  @override
  String get settingsQuietEnd => 'Дуусах';

  @override
  String get settingsNotificationsHint =>
      'Энэ нь таны сонголтыг аппад хадгална. Систем мөн зөвшөөрөл асууж магадгүй.';

  @override
  String get settingsDashboardHint =>
      'Дарааллыг өөрчлөхийн тулд чирнэ үү. Хэрэггүй хэсгүүдийг унтраана уу.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section-ийн дарааллыг өөрчлөх';
  }

  @override
  String get settingsDashboardReset => 'Анхдагч дарааллыг сэргээх';

  @override
  String get settingsAssistantDesc =>
      'Нэмэлт төлөвлөлтийн тусламж. Та үйлчилгээ үзүүлэгч холбохгүй бол юу ч төхөөрөмжөөс гарахгүй.';

  @override
  String get settingsAssistantSetup => 'Туслах болон үйлчилгээ үзүүлэгчийн тохиргоо';

  @override
  String get settingsTrashDesc => 'Устгасан зүйлсийг сэргээх эсвэл бүрмөсөн устгах';

  @override
  String get settingsEraseFirstBody =>
      'Үүнийг буцаах боломжгүй. Эхлээд шифрлэсэн нөөц хуулбар үүсгэх талаар бодоорой.';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word гэж бичнэ үү';
  }

  @override
  String get settingsEraseFailed => 'Өгөгдлийг арилгаж чадсангүй. Юу ч өөрчлөгдөөгүй.';

  @override
  String get settingsAboutTagline => 'Хувийн, төхөөрөмж дээр суурилсан бүтээмжийн ажлын орчин.';

  @override
  String get backupShowPassword => 'Нууц үгийг харуулах';

  @override
  String get backupHidePassword => 'Нууц үгийг нуух';

  @override
  String get backupSaved => 'Нөөц хуулбар хадгалагдлаа';

  @override
  String get backupFailed => 'Нөөц хуулбарыг үүсгэж чадсангүй. Таны өгөгдөл өөрчлөгдөөгүй.';

  @override
  String get backupReadFailed => 'Сонгосон файлыг уншиж чадсангүй.';

  @override
  String get backupRestoreFailed => 'Сэргээлт амжилтгүй боллоо. Юу ч өөрчлөгдөөгүй.';

  @override
  String get backupShareSubject => 'Deep Focus-ийн шифрлэсэн нөөц хуулбар';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өдөр тутам',
      one: 'Өдөр бүр',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count долоо хоног тутам',
      one: 'Долоо хоног бүр',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сар тутам',
      one: 'Сар бүр',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count жил тутам',
      one: 'Жил бүр',
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
    return '$days-д';
  }

  @override
  String get repeatEndsLabel => 'Дуусах';

  @override
  String get repeatEndsAfter => 'Тодорхой тооны дараа';

  @override
  String get repeatCountLabel => 'Давтамжийн тоо';

  @override
  String get reminderNone => 'Сануулгагүй';

  @override
  String get reminderCustomTime => 'Тодорхой цагт';

  @override
  String get a11yDecrease => 'Багасгах';

  @override
  String get a11yIncrease => 'Нэмэгдүүлэх';

  @override
  String get pickTaskTitle => 'Даалгавар сонгох';

  @override
  String get pickTaskEmpty => 'Нээлттэй даалгавар алга';

  @override
  String get tasksSearchTooltip => 'Даалгавар хайх';

  @override
  String get tasksSectionOverdue => 'Хугацаа хэтэрсэн';

  @override
  String get tasksSectionToday => 'Өнөөдөр';

  @override
  String get tasksRecurringSemantics => 'Давтагдана';

  @override
  String get tasksFilterPriorityAtLeast => 'Хамгийн бага ач холбогдол';

  @override
  String get tasksFilterCategory => 'Ангилал';

  @override
  String get tasksFilterAnyCategory => 'Дурын ангилал';

  @override
  String get tasksFilterLabel => 'Шошго';

  @override
  String get tasksFilterAnyLabel => 'Дурын шошго';

  @override
  String get tasksFilterReset => 'Шүүлтүүрийг цэвэрлэх';

  @override
  String get tasksViewByProject => 'Төслөөр';

  @override
  String get tasksViewByPriority => 'Ач холбогдлоор';

  @override
  String get tasksViewByCategory => 'Ангиллаар';

  @override
  String get tasksGroupNoCategory => 'Ангилалгүй';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count даалгавар',
      one: '1 даалгавар',
    );
    return '$_temp0 хаасан';
  }

  @override
  String get taskBlockedWarning =>
      'Энэ даалгаврыг дуусаагүй даалгаврууд хааж байна. Гэсэн ч дууссан гэж тэмдэглэх үү?';

  @override
  String get taskStartFocus => 'Энэ даалгаварт төвлөрөх';

  @override
  String get taskRemoveDate => 'Огноог хасах';

  @override
  String get taskAllDay => 'Тодорхой цаггүй';

  @override
  String get taskSaved => 'Даалгавар хадгалагдлаа';

  @override
  String get taskCreated => 'Даалгавар үүслээ';

  @override
  String get taskReminderNeedsDue => 'Харьцангуй сануулга ашиглахын тулд хугацаа тогтооно уу';

  @override
  String get taskSubtaskDetailsHint =>
      'Дэд даалгавар, шалгах жагсаалт, шошго, хамаарал нэмэхийн тулд эхлээд даалгавраа хадгална уу.';

  @override
  String get taskLabelName => 'Шошгоны нэр';

  @override
  String get taskMoreDetails => 'Дэлгэрэнгүй';

  @override
  String get taskPlanning => 'Төлөвлөлт';

  @override
  String get taskOrganize => 'Зохион байгуулах';

  @override
  String get taskBreakdown => 'Задаргаа';

  @override
  String get trashDeleteTaskTitle => 'Энэ даалгаврыг бүрмөсөн устгах уу?';

  @override
  String get trashDeleteNoteTitle => 'Энэ тэмдэглэлийг бүрмөсөн устгах уу?';

  @override
  String get trashDeleteBody => 'Үүнийг буцаах боломжгүй.';

  @override
  String get trashEmptyTitle => 'Хогийн савыг хоослох уу?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count зүйл бүрмөсөн устгагдана.',
      one: '1 зүйл бүрмөсөн устгагдана.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Сэргээгдлээ';

  @override
  String get trashPurged => 'Бүрмөсөн устгагдлаа';

  @override
  String trashDeletedOn(String date) {
    return '$date-нд устгасан';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count зүйл',
      one: '1 зүйл',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Чанга унших';

  @override
  String get flashcardsTtsUnavailable => 'Энэ төхөөрөмжид текстийг яриа болгох боломжгүй.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Энэ хэлэнд дуу хоолой суулгаагүй байна. Android-ийн текстийг яриа болгох тохиргооноос нэмнэ үү.';

  @override
  String get calendarAgenda => 'Хөтөлбөр';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Оч',
      'rocket': 'Пуужин',
      'book': 'Ном',
      'work': 'Ажил',
      'home': 'Гэр',
      'heart': 'Зүрх',
      'code': 'Код',
      'palette': 'Палитр',
      'fitness': 'Фитнес',
      'school': 'Сургууль',
      'travel': 'Аялал',
      'money': 'Хуримтлал',
      'other': 'Дүрс',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Нэмэлт талбар';

  @override
  String get cardFieldExample => 'Жишээ';

  @override
  String get cardFieldExplanation => 'Тайлбар';

  @override
  String get cardFieldPronunciation => 'Дуудлага';

  @override
  String get cardFieldNotes => 'Нэмэлт тэмдэглэл';

  @override
  String get projectMilestones => 'Үе шат';

  @override
  String get milestoneAdd => 'Үе шат нэмэх';

  @override
  String get milestoneEdit => 'Үе шат засах';

  @override
  String get milestoneTitleLabel => 'Үе шат';

  @override
  String get milestoneNoDate => 'Огноогүй';

  @override
  String get milestonesEmpty =>
      'Одоогоор үе шат алга. Төслийг хуанлид хянахын тулд огноотой хяналтын цэг нэмнэ үү.';

  @override
  String get milestoneDeleted => 'Үе шат устгагдлаа';

  @override
  String milestoneDoneA11y(String title) {
    return '«$title» үе шатыг дууссан гэж тэмдэглэх';
  }

  @override
  String calendarMilestone(String project) {
    return 'Үе шат · $project';
  }

  @override
  String get tasksViewInbox => 'Ирсэн';

  @override
  String get tasksViewArchived => 'Архивласан';

  @override
  String get tasksEmptyInbox =>
      'Төсөлгүй эсвэл огноогүй даалгаврууд энд ирнэ. Завтай үедээ ангилаарай.';

  @override
  String get tasksEmptyArchived =>
      'Архивласан даалгаврууд жагсаалт, сануулгаас гадуур энд хадгалагдана.';

  @override
  String get taskArchivedBadge => 'Архивласан';

  @override
  String get taskStatusInProgress => 'Хийгдэж буй';

  @override
  String get taskArchived => 'Даалгаврыг архивласан';

  @override
  String get taskUnarchived => 'Даалгаврыг архиваас сэргээлээ';

  @override
  String get focusPlanTitle => 'Сессийн төлөвлөгөө';

  @override
  String focusPlanTotal(String duration) {
    return 'Нийт $duration';
  }

  @override
  String get focusPlanRounds => 'Төвлөрлийн сесс';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Урт завсарлага ийм тооны дараа';

  @override
  String get focusPlanSkipLastBreak => 'Сүүлийн завсарлагыг алгасах';

  @override
  String get focusPlanAutoBreaks => 'Завсарлагыг автоматаар эхлүүлэх';

  @override
  String get focusPlanAutoFocus => 'Завсарлагын дараа төвлөрлийг автоматаар эхлүүлэх';

  @override
  String get focusPlanSave => 'Төлөвлөгөө хадгалах';

  @override
  String get focusPlanNameHint => 'ж.нь Шалгалтын бэлтгэл';

  @override
  String get focusPlanSaved => 'Төлөвлөгөө хадгалагдлаа';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work мин төвлөрөл, $rest мин завсарлага';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label багасгах';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label нэмэгдүүлэх';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '$total-ийн $current-р сесс';
  }

  @override
  String get focusSeriesComplete => 'Цуваа дууслаа. Сайн байна!';

  @override
  String get filterAll => 'Бүгд';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added импортлогдсон · $duplicates давхардлыг алгассан · $invalid дутуу мөр';
  }

  @override
  String get flashcardsSuspend => 'Картыг түр зогсоох';

  @override
  String get flashcardsResume => 'Картыг үргэлжлүүлэх';

  @override
  String get flashcardsSuspended => 'Картыг түр зогсоосон: төлөвлөгдөхгүй';

  @override
  String get flashcardsResumed => 'Карт үргэлжиллээ';

  @override
  String get flashcardsSuspendedFilter => 'Түр зогссон';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$total картаас $shown';
  }

  @override
  String get flashcardsImportFile => 'Файлаас';

  @override
  String get speechTitle => 'Яриа';

  @override
  String get speechAppLanguage => 'Аппын хэл';

  @override
  String get speechFrontLanguage => 'Нүүр талын хэл';

  @override
  String get speechBackLanguage => 'Ар талын хэл';

  @override
  String get speechRepeat => 'Уншилт бүрийг давтах';

  @override
  String get speechRate => 'Хурд';

  @override
  String get speechAutoRead => 'Асуултыг автоматаар унших';

  @override
  String get speechHint =>
      'Энэ төхөөрөмжид суулгасан дуу хоолойг офлайнаар ашиглана. Хэлэнд дуу хоолой байхгүй бол танд мэдэгдэх ба оронд нь өөр юу ч ашиглахгүй.';

  @override
  String get studyHowTitle => 'Хэрхэн судлахыг хүсч байна вэ?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картыг давтах',
      one: '1 картыг давтах',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Бүх картаар дасгал хийх (хуваарь өөрчлөгдөхгүй)';

  @override
  String get studyPracticeMistakes => 'Сүүлийн алдаагаар дасгал хийх';

  @override
  String get studyPracticeHint =>
      'Дасгалын шат картын хугацааг хэзээ ч өөрчлөхгүй. Давталт хуваарийг шинэчилнэ.';

  @override
  String get studyModeClassic => 'Сонгодог';

  @override
  String get studyModeReverse => 'Урвуу';

  @override
  String get studyModeMixed => 'Хоёр талаар';

  @override
  String get studyModeTyped => 'Хариултаа бичих';

  @override
  String get studyModeChoice => 'Олон сонголттой';

  @override
  String get studyModeListening => 'Сонсох';

  @override
  String get studyPractice => 'дасгал';

  @override
  String get studyNoMistakes => 'Энэ багцад сүүлийн алдаа алга. Сайн байна!';

  @override
  String get studyTypeAnswer => 'Хариултаа бичнэ үү';

  @override
  String get studyCheck => 'Шалгах';

  @override
  String get studyKnewIt => 'Мэдэж байсан';

  @override
  String get studyDidntKnow => 'Мэдээгүй';

  @override
  String studyMistakes(int count) {
    return 'Алдсан ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Алдсан картуудыг давтах';

  @override
  String get studyCorrect => 'Зөв';

  @override
  String get studyAlmost => 'Бараг — зөв бичгийг шалгана уу';

  @override
  String get studyWrong => 'Тийм ч биш';

  @override
  String get studyShowText => 'Текстийг харуулах';

  @override
  String get flashcardsImportFileFailed =>
      'Файлыг нээж чадсангүй. Оронд нь агуулгыг нь буулгаж болно.';

  @override
  String get studyNoMatchingCards => 'Энэ сонголтод тохирох карт одоогоор алга.';

  @override
  String get studyPracticeNew => 'Зөвхөн шинэ';

  @override
  String get studyPracticeHard => 'Хэцүү карт';

  @override
  String get studyPracticeFavorites => 'Дуртай';

  @override
  String get studySessionSize => 'Нэг сессийн карт';

  @override
  String get studySessionAll => 'Бүгд';

  @override
  String get studyOrder => 'Дараалал';

  @override
  String get studyOrderDue => 'Хамгийн их хоцорсныг эхэнд';

  @override
  String get studyOrderRandom => 'Санамсаргүй';

  @override
  String get studyOrderHardest => 'Хамгийн хэцүүг эхэнд';

  @override
  String get flashcardsHard => 'Хэцүү';

  @override
  String get flashcardsFavorites => 'Дуртай';

  @override
  String get flashcardsFavorite => 'Дуртайд нэмэх';

  @override
  String get flashcardsUnfavorite => 'Дуртайгаас хасах';

  @override
  String get flashcardsDuplicate => 'Хуулбарлах';

  @override
  String get flashcardsMoveTo => 'Багц руу зөөх';

  @override
  String get flashcardsNoOtherDeck => 'Эхлээд өөр багц үүсгэнэ үү.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карт зөөгдлөө',
      one: 'Карт зөөгдлөө',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Шошго нэмэх';

  @override
  String get flashcardsTagHint => 'ж.нь үйл үг';

  @override
  String flashcardsSelected(int count) {
    return '$count сонгосон';
  }

  @override
  String get flashcardsSelectAll => 'Харагдаж буй бүгдийг сонгох';

  @override
  String flashcardsSelectCard(String front) {
    return '$front-г сонгох';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Санах чадвар $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Давхардсан байж магадгүй';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Энэ багцад «$front» → «$back» аль хэдийн байна. Гэсэн ч хадгалах уу?';
  }

  @override
  String get flashcardsSaveAnyway => 'Гэсэн ч хадгалах';

  @override
  String get flashcardsStats => 'Статистик';

  @override
  String get flashcardsStatTotal => 'Карт';

  @override
  String get flashcardsStatLearning => 'Сурч буй';

  @override
  String get flashcardsStatMatureCaption => '21+ өдөр санасан';

  @override
  String get flashcardsStatReviewsToday => 'Өнөөдрийн давталт';

  @override
  String get flashcardsStatCorrect => 'Зөв хариулт';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Сүүлийн $days өдөр';
  }

  @override
  String get flashcardsStatForget => 'Мартах түвшин';

  @override
  String get flashcardsStatForgetCaption => 'Сурсан карт дээрх «Дахин»';

  @override
  String get flashcardsStatRecall => 'Одоогийн санах чадвар';

  @override
  String get flashcardsStatRecallCaption => 'FSRS тооцоо, давтсан карт';

  @override
  String flashcardsStatActivity(int count) {
    return 'Өдөрт давталт · нийт $count';
  }

  @override
  String get flashcardsStatHistory => 'Сүүлийн хариулт';

  @override
  String get flashcardsStatNoHistory =>
      'Одоогоор давталт алга. Ахицаа энд харахын тулд багцаа судлаарай.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field-г чанга унших';
  }

  @override
  String get speechVoice => 'Дуу хоолой';

  @override
  String get speechVoiceDefault => 'Автомат';

  @override
  String get speechVoiceOnline => 'интернэт шаардлагатай';

  @override
  String get speechTest => 'Дуу хоолойг турших';

  @override
  String get importNext => 'Урьдчилан харах';

  @override
  String get importPreviewTitle => 'Баганыг талбартай тааруулах';

  @override
  String get importIgnoreColumn => 'Үл тоомсорлох';

  @override
  String importColumn(int n) {
    return 'Багана $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready карт бэлэн · $invalid дутуу мөрийг алгасна';
  }

  @override
  String get importNeedFrontBack => 'Аль багана нүүр, аль нь ар тал болохыг сонгоно уу.';

  @override
  String get actionMoveUp => 'Дээш зөөх';

  @override
  String get actionMoveDown => 'Доош зөөх';

  @override
  String get flashcardsLayoutTitle => 'Картын бүтэц';

  @override
  String get flashcardsLayoutHint =>
      'Энэ багцын нэмэлт талбаруудын нэрийг өөрчлөх, нуух эсвэл дарааллыг өөрчлөх. Картын агуулга хэзээ ч өөрчлөгдөхгүй.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Судлах үед $field-г харуулах';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Хариултыг алхам алхмаар нээх';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Эхлээд ар тал гарна; нэмэлт талбар бүр товшиход нээгдэнэ.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field-г харуулах';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Энэ файл $mb МБ-аас том байна.';
  }

  @override
  String get flashcardsImage => 'Зураг';

  @override
  String get flashcardsAudio => 'Аудио';

  @override
  String get flashcardsAddImage => 'Зураг нэмэх';

  @override
  String get flashcardsAddAudio => 'Аудио нэмэх';

  @override
  String get flashcardsPlayAudio => 'Бичлэг тоглуулах';

  @override
  String get flashcardsAudioUnavailable => 'Энэ бичлэгийг энэ төхөөрөмж дээр тоглуулах боломжгүй.';

  @override
  String get flashcardsCustomFields => 'Таны талбарууд';

  @override
  String get flashcardsTemplates => 'Загвар';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Талбар $n';
  }

  @override
  String get flashcardsAddField => 'Талбар нэмэх';

  @override
  String get flashcardsFieldName => 'Талбарын нэр';

  @override
  String get flashcardsFieldLangDefault => 'Талын хэл';

  @override
  String get flashcardsTemplateConfirm =>
      'Загвар нь талбарууд хэрхэн харагдахыг тогтоож, өөрийн талбаруудыг нэмнэ. Таны карт болон байгаа талбарууд хэвээр үлдэнэ.';

  @override
  String get flashcardsApplyTemplate => 'Хэрэглэх';

  @override
  String get templateVocabulary => 'Үгсийн сан';

  @override
  String get templateTwoTranslations => 'Хоёр орчуулгатай үг';

  @override
  String get templateQuestionAnswer => 'Асуулт ба хариулт';

  @override
  String get templateDefinition => 'Нэр томьёо ба тодорхойлолт';

  @override
  String get templateGrammar => 'Дүрмийн дүрэм';

  @override
  String get templateFieldPlural => 'Олон тоо';

  @override
  String get templateFieldTranslation2 => 'Хоёр дахь орчуулга';

  @override
  String get templateFieldSynonyms => 'Ойролцоо үг';

  @override
  String get templateFieldRule => 'Дүрэм';

  @override
  String get deckCategory => 'Түвшин эсвэл сэдэв';

  @override
  String get deckCategoryHint => 'ж.нь A1, Анагаах ухаан';

  @override
  String get flashcardsSearchAll => 'Бүх картаас хайх';

  @override
  String get flashcardsSearchAllHint => 'Үг, орчуулга, жишээ, тэмдэглэл, шошго…';

  @override
  String get flashcardsAllDecks => 'Бүх багц';

  @override
  String get flashcardsAllLanguages => 'Бүх хэл';

  @override
  String get flashcardsLangUnset => 'Хэл тогтоогоогүй';

  @override
  String get flashcardsLevelUnset => 'Түвшин эсвэл сэдэвгүй';

  @override
  String get flashcardsByLanguage => 'Хэлээр ахиц';

  @override
  String get flashcardsByLevel => 'Түвшин эсвэл сэдвээр ахиц';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks багц · $cards карт · $mature боловсорсон · $due хүлээгдэж буй · $correct зөв (30 өдөр)';
  }

  @override
  String get flashcardsRecord => 'Бичих';

  @override
  String get flashcardsRecording => 'Бичиж байна…';

  @override
  String get flashcardsRecordStop => 'Зогсоож хадгалах';

  @override
  String get flashcardsMicDenied =>
      'Микрофоны хандалт унтраалттай. Бичихийн тулд системийн тохиргоонд зөвшөөрнө үү.';

  @override
  String get flashcardsRecordFailed => 'Энэ төхөөрөмжид бичлэг хийх боломжгүй.';

  @override
  String get soundsTitle => 'Дуу';

  @override
  String get soundsNature => 'Байгаль';

  @override
  String get soundsNoise => 'Төвлөрлийн шуугиан';

  @override
  String get soundRain => 'Бороо';

  @override
  String get soundStorm => 'Аянга';

  @override
  String get soundRiver => 'Гол';

  @override
  String get soundOcean => 'Далайн давалгаа';

  @override
  String get soundFire => 'Түүдэг гал';

  @override
  String get soundForest => 'Ойн шувуу';

  @override
  String get soundNight => 'Зуны шөнө';

  @override
  String get soundWhite => 'Цагаан шуугиан';

  @override
  String get soundPink => 'Ягаан шуугиан';

  @override
  String get soundBrown => 'Хүрэн шуугиан';

  @override
  String get soundsPlay => 'Тоглуулах';

  @override
  String get soundsSleep => 'Унтах таймер';

  @override
  String get soundsSleepOff => 'Унтраалттай';

  @override
  String soundsSleepAt(String time) {
    return '$time-д зогсоно';
  }

  @override
  String soundsMixFull(int count) {
    return 'Нэг зэрэг $count хүртэл дуу тоглож болно.';
  }

  @override
  String get soundsHint =>
      'Эхлүүлэхийн тулд дуу дээр товшино уу. Хэдийг холиод тус бүрийн дууны хэмжээг тохируулаарай.';

  @override
  String get soundsMixer => 'Холимог';

  @override
  String soundsVolumeOf(String name) {
    return '$name-ийн дууны хэмжээ';
  }

  @override
  String get soundsChannel => 'Байгалийн дуу';

  @override
  String get settingsEndTone => 'Таймер дуусах дуу';

  @override
  String get toneGentle => 'Зөөлөн дохио';

  @override
  String get toneBeeps => 'Дохио';

  @override
  String get toneWood => 'Модон тогшилт';

  @override
  String get toneBird => 'Шувууны дуу';

  @override
  String get toneStream => 'Горхи';

  @override
  String get toneSystem => 'Утасны дуу';

  @override
  String get speechOnPhone => 'Энэ утсан дээр';

  @override
  String get speechAllLanguages => 'Бүх хэл';

  @override
  String get speechSearchLanguage => 'Хэл хайх';

  @override
  String get speechGetVoices => 'Өөр дуу хоолой татах';

  @override
  String get speechGetVoicesHint => 'Дуу хоолойгүй хэлийг утасны ярианы тохиргооноос татаж болно.';

  @override
  String get speechSettingsFailed => 'Энэ утсан дээр ярианы тохиргоог нээж чадсангүй.';

  @override
  String get speechVoiceMissing => 'Дуу хоолой суулгаагүй';

  @override
  String get speechPause => 'Давталт хоорондын завсар';

  @override
  String speechSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String get speechExample => 'Жишээг хариулттай хамт унших';

  @override
  String get flashListen => 'Сонсох';

  @override
  String get flashListenNext => 'Дараагийн карт';

  @override
  String get flashListenEmpty => 'Сонсох карт алга.';

  @override
  String get flashViewTable => 'Хүснэгт';

  @override
  String get flashViewCards => 'Карт';

  @override
  String get flashSwapSides => 'Багана солих';

  @override
  String get flashSort => 'Эрэмбэлэх';

  @override
  String get flashSortNewest => 'Шинийг эхэнд';

  @override
  String get flashSortAlpha => 'А-аас Я хүртэл';

  @override
  String get flashSortDue => 'Хугацаа болсныг эхэнд';

  @override
  String get flashSortHard => 'Хамгийн хэцүүг эхэнд';

  @override
  String get flashPasteCards => 'Карт буулгах';

  @override
  String get flashClipboardEmpty => 'Санах ойд текст алга.';

  @override
  String get flashMenuAdd => 'Карт нэмэх';

  @override
  String get flashMenuDeck => 'Багц';

  @override
  String get flashToday => 'Өнөөдөр';

  @override
  String get flashStudyNow => 'Судлах';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count картад хариуллаа',
      one: '1 картад хариуллаа',
      zero: 'Хариулсан карт алга',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Ойн бороо';

  @override
  String get autoBackupTitle => 'Автомат нөөц хуулбар';

  @override
  String get autoBackupDesc => 'Өдөр бүр энэ утсан дээр; сүүлийн 7-г хадгална';

  @override
  String get autoBackupHint =>
      'Эдгээр хуулбар энэ утсан дээр үлдэх ба аппыг устгавал арилна. Шинэ утас руу шилжихийн тулд «Нөөц хуулбар»-аар файл хадгална уу.';

  @override
  String get autoBackupNone => 'Одоогоор автомат нөөц хуулбар алга. Эхнийх нь өнөөдөр үүснэ.';

  @override
  String get autoBackupRestore => 'Сэргээх';

  @override
  String autoBackupConfirm(String date) {
    return 'Одоогийн бүх өгөгдлийг $date-ний нөөц хуулбараар солих уу?';
  }

  @override
  String get autoBackupRestored => 'Сэргээгдлээ.';

  @override
  String get errorLogTitle => 'Алдааны бүртгэл';

  @override
  String get errorLogHint =>
      'Ямар нэг зүйл буруу болбол энд тэмдэглэгдэнэ: зөвхөн алдааны төрөл ба кодын байршил, таны агуулга хэзээ ч биш. Асуудлыг засахад туслахын тулд хуваалцаарай.';

  @override
  String get errorLogEmpty => 'Алдаа бүртгэгдээгүй.';

  @override
  String get errorLogClear => 'Цэвэрлэх';

  @override
  String get soundsWithFocus => 'Төвлөрлийн сесстэй хамт тоглуулах';

  @override
  String get soundsWithFocusHint =>
      'Таны холимог төвлөрлийн сессээр эхэлж, завсарлагаар түр зогсоно.';

  @override
  String get soundsSavedMixes => 'Хадгалсан холимог';

  @override
  String get soundsSaveMix => 'Энэ холимгийг хадгалах';

  @override
  String get soundsMixNameHint => 'Нэр, ж.нь Бороотой номын сан';

  @override
  String soundsDeleteMix(String name) {
    return '«$name» холимгийг устгах уу?';
  }

  @override
  String get settingsReviewReminderHint => 'Өдөрт нэг удаа, зөвхөн картын хугацаа болсон үед';

  @override
  String get settingsReviewTime => 'Сануулах цаг';

  @override
  String get shortcutFocus => 'Төвлөрөл';

  @override
  String get shortcutNewTask => 'Шинэ даалгавар';

  @override
  String get shortcutReview => 'Карт давтах';

  @override
  String get shortcutSounds => 'Байгалийн дуу';

  @override
  String get myDayTitle => 'Өдрөө эхлүүлэх';

  @override
  String get myDayHint => 'Өдрөө нэг харж, нэг товшилтоор төвлөрөх';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Өнөөдөр $count даалгавар',
      one: 'Өнөөдөр 1 даалгавар',
      zero: 'Өнөөдөр даалгавар алга',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Өнөөдөр өөр үйл явдал алга';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Дараа нь: $title, $time-д';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дадал үлдсэн',
      one: '1 дадал үлдсэн',
      zero: 'Бүх дадлыг хийсэн',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Төвлөрлийн сессээр эхлэх';

  @override
  String get hijriMonth1 => 'Мухаррам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Рабиъ ал-Аввал';

  @override
  String get hijriMonth4 => 'Рабиъ ас-Сани';

  @override
  String get hijriMonth5 => 'Жумада ал-Ула';

  @override
  String get hijriMonth6 => 'Жумада ал-Ахира';

  @override
  String get hijriMonth7 => 'Ражаб';

  @override
  String get hijriMonth8 => 'Шаъбан';

  @override
  String get hijriMonth9 => 'Рамадан';

  @override
  String get hijriMonth10 => 'Шаввал';

  @override
  String get hijriMonth11 => 'Зу ал-Каъда';

  @override
  String get hijriMonth12 => 'Зу ал-Хижжа';

  @override
  String hijriDate(int day, String month, int year) {
    return '$year он (хижра), $month, $day';
  }

  @override
  String get settingsHijri => 'Хижра огноо';

  @override
  String get settingsHijriHint => 'Хуанли болон нүүр дэлгэцэнд харагдана (Умм ал-Кура)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өдөр',
      one: '1 өдөр',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Өнөөдөр $goal-аас $done карт';
  }

  @override
  String get studyGoalReached => 'Өдрийн зорилгодоо хүрлээ. Сайн байна!';

  @override
  String get studyWeekTitle => 'Таны долоо хоног';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 хоногт $count картад хариулсан',
      one: '7 хоногт 1 картад хариулсан',
      zero: '7 хоногт хариулсан карт алга',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7 хоногт $duration төвлөрөл';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Цуваа: $current · Шилдэг: $best';
  }

  @override
  String get studyGoalTitle => 'Өдрийн зорилго (карт)';

  @override
  String get studyGoalOff => 'Унтраалттай';

  @override
  String get focusDndTitle => 'Төвлөрөх үед «Бүү саад бол»';

  @override
  String get focusDndHint => 'Төвлөрлийн сесс бүрт асаж, завсарлагаар унтарна';

  @override
  String get focusDndNeedsAccess => 'Үүнийг ашиглахын тулд утасны тохиргоонд хандах эрх олгоно уу';

  @override
  String get voiceInput => 'Ярьж бичих';

  @override
  String get voiceInputPrompt => 'Одоо ярина уу';

  @override
  String get voiceInputUnavailable =>
      'Энэ утсан дээр дуугаар бичих боломжгүй. Ярианы үйлчилгээ суулгах эсвэл асаана уу (жишээ нь Google-ийн Speech Recognition & Synthesis).';

  @override
  String get prayerFajr => 'Фажр';

  @override
  String get prayerSunrise => 'Нар мандах';

  @override
  String get prayerDhuhr => 'Зуһр';

  @override
  String get prayerAsr => 'Аср';

  @override
  String get prayerMaghrib => 'Магриб';

  @override
  String get prayerIsha => 'Иша';

  @override
  String get prayerMethodMwl => 'Лалын ертөнцийн лиг';

  @override
  String get prayerMethodUmmAlQura => 'Умм ал-Кура, Мекка';

  @override
  String get prayerMethodEgypt => 'Египетийн Ерөнхий газар';

  @override
  String get prayerMethodJordan => 'Йордан, Вакфын яам';

  @override
  String get prayerMethodKarachi => 'Исламын шинжлэх ухааны их сургууль, Карачи';

  @override
  String get prayerMethodIsna => 'Хойд Америкийн Исламын нийгэмлэг';

  @override
  String get prayerMethodGulf => 'Персийн булангийн бүс';

  @override
  String get prayerMethodKuwait => 'Кувейт';

  @override
  String get prayerMethodQatar => 'Катар';

  @override
  String get prayerMethodTurkey => 'Турк, Диянет';

  @override
  String get prayerMethodSingapore => 'Сингапур, Малайз, Индонез';

  @override
  String get prayerMethodFrance => 'Франц (12°)';

  @override
  String get prayerMethodRussia => 'Орос, Шашны захиргаа';

  @override
  String prayerNotifTitle(String name) {
    return '$name-ийн цаг';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Залбирлын цаг · $time';
  }

  @override
  String get prayerTitle => 'Залбирлын цаг';

  @override
  String get prayerOffHint =>
      'Залбирлын цагийг харахын тулд хотоо сонгоно уу. Цагийг утсан дээр тооцох тул байршлын эрх шаардлагагүй.';

  @override
  String get prayerChooseCity => 'Хот сонгох';

  @override
  String get prayerCity => 'Хот';

  @override
  String get prayerCitySearch => 'Хот хайх';

  @override
  String get prayerMethod => 'Тооцох арга';

  @override
  String get prayerHanafiAsr => 'Ханафи Аср (оройтсон цаг)';

  @override
  String get prayerReminders => 'Залбирлын цаг бүрт мэдэгдэх';

  @override
  String get prayerPauseFocus => 'Залбирлын цагт төвлөрлийг түр зогсоох';

  @override
  String get prayerPauseFocusHint =>
      'Явагдаж буй сесс түр зогсоно; залбирлын дараа үргэлжлүүлнэ үү';

  @override
  String get prayerTurnOff => 'Залбирлын цагийг унтраах';

  @override
  String get prayerAccuracyNote =>
      'Тооцоолсон цаг нь таны орон нутгийн сүмээс хэдэн минутаар зөрж болно.';

  @override
  String prayerNext(String name, String time) {
    return '$name, $time-д';
  }

  @override
  String get importAnkiNewFormat =>
      'Энэ Anki файл хамгийн шинэ форматыг ашигладаг. Anki дээр «Support older Anki versions»-ыг асаагаад дахин экспортлоод, тэр файлыг импортлоно уу.';

  @override
  String get importTemplate => 'Хүснэгтийн загвар';

  @override
  String get importTemplateFront => 'алим';

  @override
  String get importTemplateBack => 'бөөрөнхий жимс';

  @override
  String get importTemplateExample => 'Би өдөр бүр алим иддэг.';

  @override
  String get importTemplateTag => 'хоол';

  @override
  String get starterTitle => 'Эхлэлийн багц';

  @override
  String get starterHint =>
      'Шууд судалж үзэхийн тулд нэгийг нэмээрэй. Дараа нь засах эсвэл устгаж болно.';

  @override
  String get starterAdd => 'Нэмэх';

  @override
  String get starterWords => 'Өдөр тутмын англи үг (араб)';

  @override
  String get starterCapitals => 'Дэлхийн нийслэлүүд';

  @override
  String get starterElements => 'Химийн элементүүд';

  @override
  String get settingsAccent => 'Өргөлтийн өнгө';

  @override
  String get accentViolet => 'Нил ягаан';

  @override
  String get accentBlue => 'Цэнхэр';

  @override
  String get accentTeal => 'Ногоовтор цэнхэр';

  @override
  String get accentGreen => 'Ногоон';

  @override
  String get accentRose => 'Ягаан';

  @override
  String get accentAmber => 'Шаргал';

  @override
  String get settingsFlashTextSize => 'Картын текстийн хэмжээ';

  @override
  String get settingsFlashTextSample => 'Жишээ';

  @override
  String get widgetStartFocus => 'Төвлөрөхийн тулд товшино уу';

  @override
  String widgetFocusUntil(String time) {
    return '$time хүртэл төвлөрөх';
  }

  @override
  String get widgetNoCardsDue => 'Карт: бүгд дууссан';

  @override
  String get faqMyDayQ => '«Өдрөө эхлүүлэх» юу хийдэг вэ?';

  @override
  String get faqMyDayA =>
      'Нүүр дэлгэц үүнийг өдөрт нэг удаа санал болгоно: өнөөдрийн даалгавар, дараагийн үйл явдал, үлдсэн дадал, хугацаа болсон картыг хараад нэг товшилтоор төвлөрлийн сесс эхлүүлнэ. Шуурхай үйлдэлд аппын дүрс дээр удаан дарах, эсвэл төвлөрлийн цаг, картыг харахын тулд нүүр дэлгэцийн виджет нэмнэ үү.';

  @override
  String get faqTasksQ => 'Сануулгатай даалгаврыг хэрхэн нэмэх вэ?';

  @override
  String get faqTasksA =>
      'Нүүр хуудасны «Шинэ даалгавар» эсвэл «Даалгавар» доторх +-г товшино уу. Гарчгийг бичих эсвэл микрофоноор хэлээд, хугацаа, цаг, сануулга тогтооно уу. Хугацаа хэтэрсэн даалгавар эхэнд жагсана.';

  @override
  String get faqFocusQ => 'Төвлөрлийн таймер хэрхэн ажилладаг вэ?';

  @override
  String get faqFocusA =>
      'Помодоро, буурах тоолол эсвэл нээлттэй цагийг сонгоод «Эхлэх» дарна уу; завсарлага автоматаар үргэлжилж болно. Тохиргоонд дуусах дуугаа сонгох, төвлөрөх үед «Бүү саад бол»-ыг асаах, байгалийн дуугаа сесс бүртэй хамт тоглуулах боломжтой.';

  @override
  String get faqSoundsQ => 'Байгалийн дууг хольж болох уу?';

  @override
  String get faqSoundsA =>
      'Зургаа хүртэлх бодит бичлэгийг асааж, тус бүрийн дууны хэмжээг тохируулж, холимгийг нэрээр нь хадгална уу. Тэд арын горимд тоглосоор байх ба унтах таймер зогсоож чадна. Хөгжим ашигладаггүй.';

  @override
  String get faqCalendarQ => 'Хуанли хижра огноог харуулж чадах уу?';

  @override
  String get faqCalendarA =>
      'Тийм. Хижра огноо (Умм ал-Кура) араб хэлэнд автоматаар харагдах ба аль ч хэлэнд Тохиргооноос асааж болно. Үйл явдал, хугацаатай даалгавар, төслийн үе шат хамт харагдана.';

  @override
  String get faqFlashcardsQ => 'Давталт аль картыг харуулахыг хэрхэн шийддэг вэ?';

  @override
  String get faqFlashcardsA =>
      'Сайн мэддэг карт тань урт завсарлагын дараа, алдсан карт удахгүй эргэн ирнэ (зайтай давталт). Хариулт бүрийг «Дахин», «Хэцүү», «Сайн» эсвэл «Амархан» гэж үнэлнэ үү. Өдрийн зорилго тавьж, «Өнөөдөр» картанд цуваагаа хадгална уу. Үлдсэн өдөр болон өдөр бүр хэдэн шинэ карт сурахыг харахын тулд багцад шалгалтын огноо тогтооно уу. Картыг чирж байршуулахын тулд «Миний дараалал»-аар эрэмбэлж, сонсохын тулд аль ч талын чанга яригчийг товшиж, хурд болон давталтыг «Яриа» цэснээс тохируулна уу.';

  @override
  String get faqImportQ => 'Anki эсвэл Excel-ээс карт оруулж болох уу?';

  @override
  String get faqImportA =>
      'Тийм. Багц дотроос «Импорт»-ыг сонгоод файлаа сонгоно уу: Anki (.apkg), Excel (.xlsx) эсвэл CSV, дараа нь баганыг тааруулна. Компьютер дээр карт бичихийн тулд «Хүснэгтийн загвар»-ыг ашиглаарай. Anki файл доторх зураг, дуу импортлогдохгүй.';

  @override
  String get faqNotesQ => 'Тэмдэглэл юу хийж чадах вэ?';

  @override
  String get faqNotesA =>
      'Шалгах жагсаалт, форматтайгаар чөлөөтэй бичиж, чухал тэмдэглэлээ бэхлэх эсвэл дуртайд нэмж, шошго нэмж, тэмдэглэлийг даалгавартай холбоно. Микрофоны товчоор ярьж бичүүлж болно. Шинэ тэмдэглэлийг загвараас эхлүүлж болох ба (лекц, номын хураангуй, өдрийн тэмдэглэл, долоо хоногийн төлөвлөгөө), зургийн товч зураг нэмнэ.';

  @override
  String get faqHabitsQ => 'Дадлын цуваа хэрхэн тоологддог вэ?';

  @override
  String get faqHabitsA =>
      'Төлөвлөсөн өдөр дадлын зорилтод хүрвэл тэр өдөр тооцогдоно. Дадлыг түр зогсоох нь цувааг хамгаална. Дадал бүр өөрийн сануулах цагтай байж болно.';

  @override
  String get faqGoalsQ => 'Зорилго ахицыг хэрхэн хянадаг вэ?';

  @override
  String get faqGoalsA =>
      'Зорилгод зорилтот хэмжээ, нэгж өгөөд ахицаа бүртгэнэ үү. Түүний карт хэр хол явснаа болон эцсийн хугацаа хүртэл хэр их үлдсэнийг харуулна.';

  @override
  String get faqProjectsQ => 'Төсөл юунд хэрэгтэй вэ?';

  @override
  String get faqProjectsA =>
      'Даалгавруудыг төсөл дор бүлэглэж, огноотой үе шат нэмж, ерөнхий ахицыг хянана. Үе шатууд хуанлид ч харагдана.';

  @override
  String get faqInsightsQ => 'Шинжилгээ юуг харуулдаг вэ?';

  @override
  String get faqInsightsA =>
      'Өдөр, долоо хоногоор таны төвлөрлийн цаг, дууссан даалгавар, суралцалтыг зөөлөн зөвлөмжийн хамт. Бүгдийг утсан дээр тань тооцно.';

  @override
  String get faqSpacesQ => 'Бүх хэсэг хаана байна вэ?';

  @override
  String get faqSpacesA =>
      '«Орон зай» нь аппын хэсэг бүрийг (тэмдэглэл, багц, дадал, зорилго, төсөл, дуу гэх мэт) жагсаадаг тул үндсэн мөр энгийн хэвээр үлдэнэ.';

  @override
  String get faqBackupQ => 'Миний өгөгдлийн нөөц хуулбар хэрхэн хийгддэг вэ?';

  @override
  String get faqBackupA =>
      'Апп өдөр бүр энэ утсан дээр шифрлэсэн хуулбарыг чимээгүй хадгалж, сүүлийн 7-г үлдээнэ. Тохиргоонд нууц үгээр хамгаалсан нөөц файлыг экспортлоод өөр утсан дээр сэргээж ч болно.';

  @override
  String get faqPrayerQ => 'Залбирлын цаг хэрхэн ажилладаг вэ?';

  @override
  String get faqPrayerA =>
      'Тохиргоо → Залбирлын цаг хэсгээс хотоо сонгоно уу. Цагийг утсан дээр тэнд хэрэглэдэг аргаар тооцох ба аргыг болон Аср-ын урсгалыг өөрчилж болно. Залбирал бүрт мэдэгдэл авч болох ба явагдаж буй төвлөрлийн сесс түр зогсоно.';

  @override
  String get faqPrivacyQ => 'Миний өгөгдөл хаана хадгалагддаг вэ?';

  @override
  String get faqPrivacyA =>
      'Зөвхөн утсан дээр тань, шифрлэсэн мэдээллийн санд. Бүртгэл ч, хяналт ч байхгүй. Интернэтийг зөвхөн таны өөрөө асаасан функц, жишээ нь нэмэлт туслах ашиглана.';

  @override
  String get faqAssistantQ => 'Туслах гэж юу вэ?';

  @override
  String get faqAssistantA =>
      'Тохиргоонд өөрийн ХО үйлчилгээтэй холбодог нэмэлт туслах. Анхдагчаар унтраалттай бөгөөд тэмдэглэлийн текст илгээхээс өмнө асууна.';

  @override
  String get tourPlanTitle => 'Өдрөө төлөвлөөрэй';

  @override
  String get tourPlanBody =>
      'Даалгавар, хуанли, дадал нэг тайван газар. Өглөө бүрийг «Өдрөө эхлүүлэх»-ээр эхлээрэй.';

  @override
  String get tourFocusTitle => 'Гүн төвлөрөл';

  @override
  String get tourFocusBody =>
      'Бодит байгалийн дуу, «Бүү саад бол», зөөлөн дуусах аялгуутай цагтай сесс.';

  @override
  String get tourLearnTitle => 'Бат сураарай';

  @override
  String get tourLearnBody =>
      'Зайтай давталттай карт, олон хэлний яриа, Anki эсвэл Excel-ээс импорт.';

  @override
  String get helpTitle => 'Тусламж ба асуулт';

  @override
  String get helpOpen => 'Нээх';

  @override
  String get helpTour => 'Танилцуулгыг үзэх';

  @override
  String get tourNext => 'Дараах';

  @override
  String get tourDone => 'Эхэлцгээе';

  @override
  String get transferColTitle => 'Гарчиг';

  @override
  String get transferColNotes => 'Тэмдэглэл';

  @override
  String get transferColBody => 'Текст';

  @override
  String get transferColDue => 'Хугацаа';

  @override
  String get transferColPriority => 'Ач холбогдол (0-3)';

  @override
  String get transferColDone => 'Дууссан';

  @override
  String get transferColProject => 'Төсөл';

  @override
  String get transferColCategory => 'Ангилал';

  @override
  String get transferTitle => 'Импорт ба экспорт';

  @override
  String get transferSaveAs => 'Өөрөөр хадгалах';

  @override
  String get transferImport => 'Файлаас импортлох';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV эсвэл Word доторх хүснэгт. Багана: гарчиг, хугацаа (2026-12-31), ач холбогдол 0-3, дууссан, төсөл, тэмдэглэл. Аппад байгаа даалгаврыг алгасна.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown эсвэл текст файл тэмдэглэл болно. Excel эсвэл CSV: мөр бүрт нэг тэмдэглэл (гарчиг, текст).';

  @override
  String get transferSaved => 'Файл хадгалагдлаа';

  @override
  String get transferFailed => 'Файлыг үүсгэж чадсангүй. Юу ч өөрчлөгдөөгүй.';

  @override
  String get transferUnsupported =>
      'Энэ файлыг энд уншиж чадахгүй. Excel, CSV, Word, Markdown эсвэл текст ашиглана уу.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added нэмэгдлээ',
      one: '1 нэмэгдлээ',
      zero: 'Нэмэх шинэ зүйл алга',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Текст';

  @override
  String get transferAllNotes => 'Бүх тэмдэглэл';

  @override
  String get transferThisNote => 'Энэ тэмдэглэл';

  @override
  String get transferDeckFormats => 'Excel, Word эсвэл PDF болгон хадгалах';

  @override
  String get faqFilesQ => 'Excel, Word эсвэл PDF файл ашиглаж болох уу?';

  @override
  String get faqFilesA =>
      'Тийм. «Даалгавар» болон «Тэмдэглэл»-ийн дээд хэсэгт импорт ба экспортын товч (хоёр сум) байдаг ба багц бүрт энэ нь цэсэнд байна. Excel, CSV, Word эсвэл PDF болгон хадгалах, эсвэл Excel, CSV, Word, Markdown, текст файл оруулах боломжтой. Баганын нэр аппын аль ч хэл дээр байж болох ба хадгалсан файлаа үргэлж дахин импортлож болно.';

  @override
  String get tplLecture => 'Лекц';

  @override
  String get tplBook => 'Номын хураангуй';

  @override
  String get tplJournal => 'Өдрийн тэмдэглэл';

  @override
  String get tplWeek => 'Долоо хоногийн төлөвлөгөө';

  @override
  String get tplLectureBody => '## Гол санаанууд\n- \n\n## Асуулт\n- [ ] \n\n## Хураангуй\n';

  @override
  String get tplBookBody =>
      '## Гол санаа\n\n## Юу сурсан бэ\n- \n\n## Ишлэл\n> \n\n## Хэрэгжүүлэх\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Талархаж буй зүйл\n- \n\n## Өнөөдрийн төвлөрөл\n- [ ] \n\n## Тэмдэглэл\n';

  @override
  String get tplWeekBody =>
      '## Энэ долоо хоногийн зорилго\n- [ ] \n\n### Бямба\n- [ ] \n\n### Ням\n- [ ] \n\n### Даваа\n- [ ] \n\n### Мягмар\n- [ ] \n\n### Лхагва\n- [ ] \n\n### Пүрэв\n- [ ] \n\n### Баасан\n- [ ] \n';

  @override
  String get tplHint => 'Загвараас эхлэх';

  @override
  String get noteImage => 'Зураг';

  @override
  String get noteAddImage => 'Зураг нэмэх';

  @override
  String get noteImageUnreadable => 'Энэ файл аппын уншиж чадах зураг биш.';

  @override
  String get noteImageTooLarge => 'Энэ зураг хэт том байна.';

  @override
  String get examSet => 'Шалгалтын огноо тогтоох';

  @override
  String get examDate => 'Шалгалтын огноо';

  @override
  String get examToday => 'Шалгалт өнөөдөр. Амжилт хүсье!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Шалгалт $count хоногийн дараа',
      one: 'Шалгалт маргааш',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'өдөрт $count шинэ карт сурах',
      one: 'өдөрт 1 шинэ карт сурах',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'бүх картыг сурсан, давталтаа үргэлжлүүлээрэй';

  @override
  String examRaiseLimit(int count) {
    return 'Өдөрт $count шинэ карт харуулах';
  }

  @override
  String get backupDriveHint =>
      'Хуулбарыг онлайнаар хадгалахын тулд дараа нээгдэх хадгалах дэлгэцээс Google Drive (эсвэл өөр үүлэн апп)-ыг сонгоно уу.';

  @override
  String get flashShareDeck => 'Багцаа найзтайгаа хуваалцах';

  @override
  String get flashSortManual => 'Миний дараалал (чирэх)';

  @override
  String get flashReorderHint => 'Картыг зөөхийн тулд бариулаас нь бариад чирнэ үү.';

  @override
  String get flashReorderNeedsAll => 'Картыг чирэхийн тулд хайлт, шүүлтүүрийг цэвэрлэнэ үү.';

  @override
  String get flashDragHandle => 'Зөөхийн тулд чирнэ үү';

  @override
  String get reportTitle => 'Сарын тайлан';

  @override
  String get reportFocus => 'Төвлөрлийн хугацаа';

  @override
  String reportSessions(int count) {
    return '$count сесс';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Шилдэг өдөр: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count идэвхтэй өдөр';
  }

  @override
  String get reportCards => 'Давтсан карт';

  @override
  String reportCardsKnown(String percent) {
    return '$percent санасан';
  }

  @override
  String get reportTasks => 'Дууссан даалгавар';

  @override
  String get reportHabits => 'Дадлын тэмдэглэгээ';

  @override
  String get reportEmpty => 'Энэ сард одоогоор юу ч бүртгэгдээгүй.';

  @override
  String get reportSave => 'PDF эсвэл Word болгон хадгалах';

  @override
  String get reportPrevMonth => 'Өмнөх сар';

  @override
  String get reportNextMonth => 'Дараагийн сар';

  @override
  String get careTitle => 'Утас ба өгөгдлөө арчлах';

  @override
  String get storageTitle => 'Санах ой';

  @override
  String get storageSubtitle => 'Юу зай эзэлж буй болон ашиглагдаагүй зургийг цэвэрлэх';

  @override
  String get storagePictures => 'Тэмдэглэл дэх зураг';

  @override
  String get storageCardMedia => 'Карт дахь зураг ба аудио';

  @override
  String get storageText => 'Тэмдэглэлийн текст';

  @override
  String get storageFree => 'Утсан дээрх сул зай';

  @override
  String get storageLow =>
      'Таны утас бараг дүүрсэн байна. Нөөц хуулбар, сануулга ажилласаар байхын тулд зай гаргана уу.';

  @override
  String storageUnused(int count, String size) {
    return 'Ашиглагдаагүй $count зураг ($size)';
  }

  @override
  String get storageNoUnused => 'Ашиглагдаагүй зураг алга. Бүх зүйл цэгцтэй.';

  @override
  String get storageClean => 'Ашиглагдаагүй зургийг хасах';

  @override
  String storageCleaned(int count) {
    return '$count зураг хасагдлаа';
  }

  @override
  String get storageHint =>
      'Хогийн сав дахь тэмдэглэлийг оролцуулаад ямар ч тэмдэглэл харуулахгүй байгаа үед л зургийг ашиглагдаагүй гэж тооцно.';

  @override
  String get batteryTitle => 'Сануулгыг ажиллуулсаар байх';

  @override
  String get batterySubtitle =>
      'Зарим утас арын горимын аппыг зогсоодог. Өөрийнхөө утсыг шалгаарай.';

  @override
  String get batteryStatusOk =>
      'Батарей хэмнэлт энэ аппыг хязгаарлахгүй. Сануулга ба дуу цагтаа ирэх ёстой.';

  @override
  String get batteryStatusLimited =>
      'Батарей хэмнэлт энэ аппыг арын горимд зогсоож болзошгүй тул сануулга ба дуу хоцрох эсвэл ирэхгүй байж магадгүй.';

  @override
  String get batteryOpen => 'Батарейн тохиргоо нээх';

  @override
  String get batteryOpenApp => 'Аппын тохиргоо нээх';

  @override
  String get batteryGeneric =>
      'Батарейн тохиргооноос энэ аппыг сонгоод «Хязгааргүй» (эсвэл «Оновчлохгүй») болгоно уу.';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: мөн Аюулгүй байдал › Зөвшөөрөл › Автомат эхлүүлэлтийг нээж энэ аппыг асаагаад, Батарей хэмнэгчийг «Хязгаарлалтгүй» болгоно уу.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: Батарей › энэ апп-ыг нээж арын үйл ажиллагаа болон автомат эхлүүлэлтийг зөвшөөрнө үү; сүүлийн аппын жагсаалтад аппыг түгжинэ үү.';

  @override
  String get batterySamsung =>
      'Samsung: Батарей › Арын хэрэглээний хязгаар: энэ аппыг «Унтаж буй апп» болон «Гүн унтаж буй апп»-аас хасна уу.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Апп эхлүүлэх › энэ апп › гараар удирдах, дараа нь автомат эхлүүлэлт, хоёрдогч эхлүүлэлт, арын горимд ажиллахыг зөвшөөрнө үү.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Батарей › Арын эрчим хүчний хэрэглээ › энэ аппыг зөвшөөрч, зөвшөөрлүүдээс автомат эхлүүлэлтийг асаана уу.';

  @override
  String get whatsNewTitle => 'Шинэ зүйл';

  @override
  String get whatsNewSubtitle => 'Сүүлийн өөрчлөлтүүд хэдхэн мөрөөр';

  @override
  String get whatsNewDone => 'Ойлголоо';

  @override
  String get whatsNewOrderTitle => 'Картаа өөрийн дарааллаар чирж байрлуулах';

  @override
  String get whatsNewOrderBody =>
      'Багц дотроос Эрэмбэлэх › Миний дараалал-ыг сонгоод бариулаас нь бариад чирнэ үү.';

  @override
  String get whatsNewSpeechTitle => 'Картын тал бүрт чанга яригч';

  @override
  String get whatsNewSpeechBody =>
      'Үг эсвэл орчуулгыг сонсохын тулд товшино уу. Хурд, давталт, дуу хоолой нь давталтын цэсэнд байна. Хэлийг текстээс тодорхойлно.';

  @override
  String get whatsNewReportTitle => 'Сарын тайлан';

  @override
  String get whatsNewReportBody =>
      'Сарыг харж, PDF эсвэл Word болгон хадгалахын тулд «Шинжилгээ» дэх тайлангийн дүрсийг товшино уу.';

  @override
  String get whatsNewCareTitle => 'Утас ба өгөгдлөө арчлах';

  @override
  String get whatsNewCareBody =>
      'Тохиргоонд одоо зураг цэвэрлэх боломжтой санах ойн хуудас болон таны утасны брэндэд зориулсан батарейн заавар бий.';

  @override
  String get whatsNewSoundTitle => 'Илүү тайван дуу';

  @override
  String get whatsNewSoundBody =>
      'Байгалийн дуу илүү зөөлөн, нам гүм болж, зурагтай карт илүү гоё боллоо.';

  @override
  String autoBackupCheckOk(String date) {
    return '$date-нд шалгасан: сүүлийн нөөц хуулбар зөв нээгдэж байна.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date-нд шалгасан: гэмтсэн нөөц хуулбар олдож, шинээр солигдсон.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date-нд шалгасан: сүүлийн нөөц хуулбарыг нээж чадсангүй. Тохиргооноос нөөц файлаа өөрөө хадгална уу.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Та ихэвчлэн $time орчим судалдаг';
  }

  @override
  String get smartReviewTimeUse => 'Ашиглах';

  @override
  String get widgetNewNote => 'Шинэ тэмдэглэл';

  @override
  String get noteConnections => 'Шошго, холбоос, даалгавар';

  @override
  String get navCards => 'Карт';

  @override
  String get studyAnswerWay => 'Хэрхэн хариулах';

  @override
  String get studyMorePractice => 'Нэмэлт дасгал';

  @override
  String get studySessionSettings => 'Сессийн тохиргоо';

  @override
  String get focusAdjustTitle => 'Таны сесс';

  @override
  String get focusPresetsTitle => 'Бэлэн';

  @override
  String get focusPresetStudy => 'Суралцах';

  @override
  String get focusPresetDeep => 'Гүн ажил';

  @override
  String get focusPresetQuick => 'Хурдан спринт';

  @override
  String get focusPresetReading => 'Ном унших';

  @override
  String get focusPresetWorkout => 'Дасгалын шат';

  @override
  String get focusAdjustMinutes => 'Төвлөрлийн урт';

  @override
  String get focusAdjustBreak => 'Завсарлагын урт';

  @override
  String get focusAdjustRounds => 'Шат';

  @override
  String get focusRoundsOpen => 'Хязгааргүй';

  @override
  String focusMinutesShort(String n) {
    return '$n мин';
  }

  @override
  String get focusTapToAdjust => 'Цагийг өөрчлөхийн тулд товшино уу';

  @override
  String get flashArrangeDecks => 'Багцыг эрэмбэлэх';

  @override
  String get flashDeckActions => 'Багцын сонголт';

  @override
  String get starterBrowse => 'Бэлэн багц';

  @override
  String get starterBrowseHint => 'Нэг товшилтоор нэмээд суралцаж эхлээрэй';

  @override
  String get dashOpenDecks => 'Картаа нээх';

  @override
  String speechVoiceNumber(String n) {
    return 'Дуу хоолой $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Сайхан урсгал байлаа. $m мин амрах уу?';
  }

  @override
  String get focusFlowBreakStart => 'Завсарлага эхлүүлэх';

  @override
  String tasksFinishAt(String time) {
    return 'Одоо эхэлбэл бүгдийг $time гэхэд дуусгана';
  }

  @override
  String get focusCalmPacing => 'Тайван хэмнэл';

  @override
  String get focusCalmPacingHint => 'Зөвхөн бүтэн минут ба цагираг, цохилох секундгүй';

  @override
  String get focusFlipHint => 'Эхлүүлэхийн тулд утсаа нүүрээр нь доош харуулна уу';

  @override
  String get focusImmersive => 'Шумбалтын горим';

  @override
  String get focusImmersiveBlack => 'Цэвэр хар (батарей хэмнэнэ)';

  @override
  String get focusFlipToFocus => 'Эргүүлж төвлөрөх';

  @override
  String get focusFlipToFocusHint =>
      'Шумбалтын горимд: нүүрээр нь доош тавихад эхэлж, өргөхөд түр зогсоно';

  @override
  String get guardTitle => 'Анхаарал сарниулахаас хамгаалах';

  @override
  String get guardSubtitle => 'Төвлөрөх үед анхаарал сарниулах аппыг түр зогсоох';

  @override
  String get guardSwitch => 'Анхаарал сарниулах аппыг түр зогсоох';

  @override
  String get guardSwitchHint => 'Төвлөрлийн сесс болон «Цагийн хамгаалалт»-ын цагуудад';

  @override
  String get guardNeedsAccess => 'Хүртээмжийн унтраалга шаардлагатай: асаахын тулд товшино уу';

  @override
  String get guardDisclosureTitle => 'Хамгаалалт хэрхэн ажилладаг вэ';

  @override
  String get guardDisclosureBody =>
      'Таны сонгосон аппуудыг түр зогсоохын тулд Deep Focus аль апп нээлттэй байгааг харахаар Android-ийн хүртээмжийн үйлчилгээг ашигладаг. «Shorts ба Reels хаах» асаалттай бол дэлгэцэнд богино видео тоглуулагч байгаа эсэхийг мөн шалгана.\n\nЭнэ нь ямар ч текст уншихгүй, харсан зүйлээ хадгалахгүй, хаашаа ч юу ч илгээхгүй: бүх зүйл таны утсан дээр үлдэнэ. Та үүнийг хүссэн үедээ Хүртээмжийн тохиргооноос унтрааж болно.';

  @override
  String get guardAgree => 'Зөвшөөрч, тохиргоог нээх';

  @override
  String get guardModeGentle => 'Зөөлөн';

  @override
  String get guardModeStrict => 'Хатуу';

  @override
  String get guardGentleHint => '5 секундын амьсгалын завсар, дараа нь та өөрөө сонгоно';

  @override
  String get guardStrictHint => 'Сонгосон аппууд төвлөрлийн хугацаа дуустал хаалттай байна';

  @override
  String get guardApps => 'Түр зогсоох апп';

  @override
  String get guardAppsAllowed => 'Зөвшөөрсөн апп';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count апп',
      one: '1 апп',
      zero: 'Одоогоор юу ч сонгоогүй',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Зөвхөн сонгосон аппыг зөвшөөрөх';

  @override
  String get guardAllowlistHint =>
      'Бусад бүх аппыг түр зогсооно; дуудлага, тохиргоо, гар үргэлж ажиллана';

  @override
  String get guardShorts => 'Shorts ба Reels хаах';

  @override
  String get guardShortsHint =>
      'Хамгаалалт асаалттай үед хэзээ ч. Боломжийн хэрээр: эдгээр апп байнга өөрчлөгддөг';

  @override
  String get guardSchedule => 'Цагийн хамгаалалт';

  @override
  String get guardScheduleHint => 'Мөн сургууль, ажил гэх мэт тогтоосон өдөр, цагуудад хамгаална';

  @override
  String get guardFrom => 'Эхлэх';

  @override
  String get guardTo => 'Хүртэл';

  @override
  String get guardSearchApps => 'Апп хайх';

  @override
  String get guardNoApps => 'Апп олдсонгүй';

  @override
  String get guardPrivacy =>
      'Зөвхөн таны утсан дээр ажиллана: хамгаалалт аль апп нээлттэй байгааг хардаг, дотор нь юу байгааг хэзээ ч харахгүй, юу ч илгээхгүй.';

  @override
  String get guardBreathe => 'Амьсгаа аваад… гаргаарай';

  @override
  String get guardQuestion => 'Танд энэ апп одоо хэрэгтэй юу?';

  @override
  String get guardBackToFocus => 'Төвлөрөлд буцах';

  @override
  String get guardOpenFive => '5 минутаар нээх';

  @override
  String get guardStrictBody => 'Энэ аппыг таны төвлөрлийн хугацаа дуустал түр зогсоосон.';

  @override
  String get guardShortsClosed => 'Хамгаалалт асаалттай үед богино видео хаагдана';

  @override
  String get faqGuardQ => 'Төвлөрөх үед анхаарал сарниулах аппыг хэрхэн зогсоох вэ?';

  @override
  String get faqGuardA =>
      'Төвлөрөл → таймерын тохиргоо → Анхаарал сарниулахаас хамгаалах-ыг нээнэ үү. Аппуудаа сонгоод «Зөөлөн» (5 секундын амьсгал ба «Танд энэ апп одоо хэрэгтэй юу?» асуулт) эсвэл «Хатуу» (хаалттай хэвээр) горимыг сонгоно. Энэ нь төвлөрлийн сессийн үеэр, мөн «Цагийн хамгаалалт»-тай бол таны тогтоосон өдөр, цагуудад ажиллана. «Зөвхөн сонгосон аппыг зөвшөөрөх» бусад бүгдийг түр зогсооно; дуудлага, тохиргоо, гар үргэлж ажиллана. Android танаас хамгаалалтыг Хүртээмжийн тохиргоонд нэг удаа асаахыг хүснэ. Энэ нь зөвхөн аль апп нээлттэй байгааг харж, юу ч илгээхгүй.';

  @override
  String notesMovedToNotebook(String name) {
    return '$name руу зөөлөө';
  }

  @override
  String get notesDragHint => 'Тэмдэглэлийг бариад дэвтэр рүү чирнэ үү';

  @override
  String get guardReviewCards => 'Оронд нь карт давтах';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count карт таныг хүлээж байна',
      one: '1 карт таныг хүлээж байна',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Яаралтай: 10 секунд дарж байна уу';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Дарсаар байна уу… $n';
  }

  @override
  String get guardWeekTitle => 'Энэ долоо хоног';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count удаа зогсоосон',
      one: '1 удаа зогсоосон',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'төвлөрөлд $count удаа буцсан',
      one: 'төвлөрөлд нэг удаа буцсан',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Үгийг өөрчлөх';

  @override
  String get wordsSubtitle => 'Аппын аль ч текстэд өөрийн үгийг ашиглах';

  @override
  String get wordsHint =>
      'Өөрчлөхийн тулд текст дээр товшино уу. Таны үгс зөвхөн энэ хэлэнд хамаарах ба нөөц хуулбарт хадгалагдана.';

  @override
  String get wordsSearch => 'Текст хайх';

  @override
  String get wordsChangedOnly => 'Зөвхөн өөрчилсөн';

  @override
  String wordsOriginal(String text) {
    return 'Эх: $text';
  }

  @override
  String get wordsReset => 'Эхийг ашиглах';

  @override
  String get wordsResetAll => 'Бүх үгийг сэргээх';

  @override
  String get wordsResetAllConfirm => 'Энэ хэлний бүх текст эх хувилбар руугаа буцна.';

  @override
  String get wordsNone => 'Текст олдсонгүй';

  @override
  String get settingsLanguageSearch => 'Хэл хайх';

  @override
  String get settingsLanguageNoMatch => 'Тохирох хэл алга';

  @override
  String aiSmokeTest(int count) {
    return 'Таны төвлөрлийн цуврал $count өдөр болж нэмэгдлээ.';
  }
}
