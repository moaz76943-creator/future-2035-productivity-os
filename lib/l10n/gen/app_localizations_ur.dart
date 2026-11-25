// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'ہوم';

  @override
  String get navTasks => 'کام';

  @override
  String get navFocus => 'فوکس';

  @override
  String get navCalendar => 'کیلنڈر';

  @override
  String get navSpaces => 'اسپیسز';

  @override
  String get moduleProjects => 'پروجیکٹس';

  @override
  String get moduleNotes => 'نوٹس';

  @override
  String get moduleFlashcards => 'فلیش کارڈز';

  @override
  String get moduleGoals => 'اہداف';

  @override
  String get moduleHabits => 'عادات';

  @override
  String get moduleAnalytics => 'جائزہ';

  @override
  String get moduleSearch => 'تلاش';

  @override
  String get moduleAssistant => 'معاون';

  @override
  String get moduleSettings => 'ترتیبات';

  @override
  String get moduleTrash => 'ردی کی ٹوکری';

  @override
  String get actionSave => 'محفوظ کریں';

  @override
  String get actionCancel => 'منسوخ';

  @override
  String get actionDelete => 'حذف کریں';

  @override
  String get actionEdit => 'ترمیم';

  @override
  String get actionDone => 'ہو گیا';

  @override
  String get actionAdd => 'شامل کریں';

  @override
  String get actionCreate => 'بنائیں';

  @override
  String get actionClose => 'بند کریں';

  @override
  String get actionBack => 'واپس';

  @override
  String get actionUndo => 'واپس لیں';

  @override
  String get actionRestore => 'بحال کریں';

  @override
  String get actionRetry => 'دوبارہ کوشش کریں';

  @override
  String get actionContinue => 'جاری رکھیں';

  @override
  String get actionSkip => 'چھوڑیں';

  @override
  String get actionArchive => 'آرکائیو';

  @override
  String get actionUnarchive => 'آرکائیو سے نکالیں';

  @override
  String get actionPin => 'پن کریں';

  @override
  String get actionUnpin => 'پن ہٹائیں';

  @override
  String get actionMore => 'مزید اختیارات';

  @override
  String get actionClear => 'صاف کریں';

  @override
  String get actionSearch => 'تلاش';

  @override
  String get actionSort => 'ترتیب';

  @override
  String get actionShare => 'شیئر';

  @override
  String get actionImport => 'درآمد';

  @override
  String get actionExport => 'برآمد';

  @override
  String get actionPause => 'روکیں';

  @override
  String get actionResume => 'جاری کریں';

  @override
  String get actionStart => 'شروع';

  @override
  String get actionStop => 'ختم کریں';

  @override
  String get actionComplete => 'مکمل کریں';

  @override
  String get actionDeleteForever => 'ہمیشہ کے لیے حذف کریں';

  @override
  String get actionEmptyTrash => 'ٹوکری خالی کریں';

  @override
  String get actionUnlink => 'لنک ہٹائیں';

  @override
  String get actionCustomize => 'حسبِ منشا بنائیں';

  @override
  String get actionPreview => 'پیش منظر';

  @override
  String get actionLog => 'پیش رفت درج کریں';

  @override
  String get stateLoading => 'لوڈ ہو رہا ہے…';

  @override
  String get stateSaving => 'محفوظ ہو رہا ہے…';

  @override
  String get stateSaved => 'محفوظ ہو گیا';

  @override
  String get stateUnsaved => 'غیر محفوظ تبدیلیاں';

  @override
  String get errorGenericTitle => 'کچھ غلط ہو گیا';

  @override
  String get errorGenericMessage => 'آپ کا ڈیٹا محفوظ ہے۔ براہِ کرم دوبارہ کوشش کریں۔';

  @override
  String get errorLoadFailed => 'یہ مواد لوڈ نہیں ہو سکا۔';

  @override
  String get errorSaveFailed => 'محفوظ نہیں ہو سکا۔ آپ کی تبدیلیاں ابھی یہیں ہیں۔';

  @override
  String get validationRequired => 'یہ خانہ ضروری ہے';

  @override
  String get validationTitleRequired => 'براہِ کرم عنوان لکھیں';

  @override
  String get validationNameRequired => 'براہِ کرم نام لکھیں';

  @override
  String get validationTooLong => 'یہ بہت لمبا ہے';

  @override
  String get validationEndBeforeStart => 'اختتام آغاز کے بعد ہونا چاہیے';

  @override
  String get validationStartAfterDue => 'آغاز کی تاریخ آخری تاریخ سے پہلے ہونی چاہیے';

  @override
  String get validationPositiveNumber => 'صفر سے بڑا عدد لکھیں';

  @override
  String get validationDependencyCycle => 'اس سے ایک گول انحصار بن جائے گا';

  @override
  String get validationInvalidRepeat => 'تکرار کا یہ اصول درست نہیں';

  @override
  String get deletedItem => 'ٹوکری میں منتقل ہو گیا';

  @override
  String get untitled => 'بلا عنوان';

  @override
  String get noProject => 'کوئی پروجیکٹ نہیں';

  @override
  String get greetingMorning => 'صبح بخیر';

  @override
  String get greetingAfternoon => 'سہ پہر بخیر';

  @override
  String get greetingEvening => 'شام بخیر';

  @override
  String get dashFocusToday => 'آج کا فوکس';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$target میں سے $done';
  }

  @override
  String get dashStartFocus => 'فوکس شروع کریں';

  @override
  String get dashFocusRunning => 'سیشن جاری ہے';

  @override
  String get dashTodayTasks => 'آج مکمل کرنا ہے';

  @override
  String get dashAgenda => 'ایجنڈا';

  @override
  String get dashHabits => 'آج کی عادات';

  @override
  String get dashGoals => 'اہداف';

  @override
  String get dashReview => 'دہرائی';

  @override
  String get dashRecentNotes => 'حالیہ نوٹس';

  @override
  String get dashInsight => 'تجویز';

  @override
  String get dashSeeAll => 'سب دیکھیں';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ دہرانے ہیں',
      one: '1 کارڈ دہرانا ہے',
      zero: 'دہرانے کے لیے کوئی کارڈ نہیں',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'ابھی دہرائیں';

  @override
  String get dashCustomizeTitle => 'ہوم کے حصے';

  @override
  String get dashCustomizeHint => 'منتخب کریں کہ ہوم اسکرین پر کیا دکھے۔';

  @override
  String get dashSectionFocus => 'فوکس';

  @override
  String get dashSectionToday => 'آج کے کام';

  @override
  String get dashSectionAgenda => 'ایجنڈا';

  @override
  String get dashSectionHabits => 'عادات';

  @override
  String get dashSectionGoals => 'اہداف';

  @override
  String get dashSectionReview => 'فلیش کارڈ دہرائی';

  @override
  String get dashSectionNotes => 'حالیہ نوٹس';

  @override
  String get dashSectionInsight => 'تجاویز';

  @override
  String get quickAddTask => 'نیا کام';

  @override
  String get quickAddNote => 'نیا نوٹ';

  @override
  String get quickAddEvent => 'نئی تقریب';

  @override
  String get quickStartFocus => 'فوکس';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آپ کے $count کام وقت سے پیچھے ہیں۔ سب سے اہم سے شروع کریں۔',
      one: 'آپ کا 1 کام وقت سے پیچھے ہے۔ پہلے اسے نئے وقت پر رکھیں یا مکمل کریں۔',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'روزانہ فوکس ہدف تک پہنچنے میں $minutes منٹ باقی ہیں۔';
  }

  @override
  String get insightCardsDue => 'یاد تازہ ہے تو ابھی اپنے واجب الادا کارڈ دہرا لیں۔';

  @override
  String get insightAllClear =>
      'سب کچھ ٹھیک چل رہا ہے۔ کل کی منصوبہ بندی کریں یا سکون سے وقفہ لیں۔';

  @override
  String insightHabitStreak(String habit) {
    return 'تسلسل قائم رکھیں: آج $habit ابھی باقی ہے۔';
  }

  @override
  String get focusTitle => 'فوکس';

  @override
  String get focusModePomodoro => 'پومودورو';

  @override
  String get focusModeCountdown => 'ٹائمر';

  @override
  String get focusModeCountUp => 'اسٹاپ واچ';

  @override
  String get focusModeOpen => 'آزاد';

  @override
  String get focusPhaseWork => 'فوکس';

  @override
  String get focusPhaseShortBreak => 'مختصر وقفہ';

  @override
  String get focusPhaseLongBreak => 'طویل وقفہ';

  @override
  String get focusReady => 'جب آپ تیار ہوں';

  @override
  String get focusPaused => 'رکا ہوا';

  @override
  String get focusRunning => 'فوکس میں';

  @override
  String get focusDuration => 'دورانیہ';

  @override
  String get focusLinkTask => 'کام جوڑیں';

  @override
  String get focusLinkedTask => 'جس پر کام ہو رہا ہے';

  @override
  String get focusNoTask => 'کوئی کام جڑا نہیں';

  @override
  String focusCycle(int current, int total) {
    return 'چکر $current از $total';
  }

  @override
  String get focusSkipBreak => 'وقفہ چھوڑیں';

  @override
  String get focusStartBreak => 'وقفہ شروع کریں';

  @override
  String get focusStartNext => 'اگلا فوکس شروع کریں';

  @override
  String get focusSessionComplete => 'سیشن مکمل';

  @override
  String get focusSessionStopped => 'سیشن محفوظ ہو گیا';

  @override
  String focusSessionSummary(String duration) {
    return 'آپ نے $duration فوکس کیا۔';
  }

  @override
  String get focusAddNote => 'اس سیشن کے بارے میں نوٹ لکھیں';

  @override
  String get focusHistory => 'تاریخچہ';

  @override
  String get focusNoHistory => 'مکمل سیشن یہاں نظر آئیں گے';

  @override
  String get focusTargets => 'اہداف';

  @override
  String get focusDailyTarget => 'روزانہ ہدف';

  @override
  String get focusWeeklyTarget => 'ہفتہ وار ہدف';

  @override
  String get focusOutcomeCompleted => 'مکمل';

  @override
  String get focusOutcomeInterrupted => 'جلد روک دیا گیا';

  @override
  String get focusRecovered => 'ایپ بند ہونے کے دوران آپ کا سیشن جاری رہا۔';

  @override
  String get focusCompletedWhileAway =>
      'ایپ بند ہونے کے دوران ایک سیشن ختم ہوا اور محفوظ کر لیا گیا۔';

  @override
  String get focusNotificationsOff => 'اطلاعات بند ہیں۔ سیشن ختم ہونے پر آپ کو اطلاع نہیں ملے گی۔';

  @override
  String get focusBatteryHint =>
      'کچھ آلات پس منظر میں ایپس روک دیتے ہیں۔ ٹائمر درست رہتا ہے مگر اطلاعات دیر سے آ سکتی ہیں۔ قابلِ اعتماد اطلاعات کے لیے بیٹری کے غیر محدود استعمال کی اجازت دیں۔';

  @override
  String get focusOpenSettings => 'ترتیبات کھولیں';

  @override
  String get focusStopConfirmTitle => 'یہ سیشن روک دیں؟';

  @override
  String get focusStopConfirmMessage => 'اب تک کا فوکس وقت محفوظ ہو جائے گا۔';

  @override
  String get focusDiscard => 'رد کریں';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes منٹ',
      one: '1 منٹ',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase، $time باقی';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase، $time گزر گئے';
  }

  @override
  String get focusDeleteSession => 'سیشن حذف کریں';

  @override
  String get tasksTitle => 'کام';

  @override
  String get tasksViewToday => 'آج';

  @override
  String get tasksViewUpcoming => 'آنے والے';

  @override
  String get tasksViewAll => 'سب';

  @override
  String get tasksViewOverdue => 'تاخیر شدہ';

  @override
  String get tasksViewCompleted => 'مکمل';

  @override
  String get tasksQuickAddHint => 'کام شامل کریں…';

  @override
  String get tasksEmptyTitle => 'سب ہو گیا';

  @override
  String get tasksEmptyMessage => 'اپنے دن کو ترتیب دینے کے لیے ایک کام شامل کریں۔';

  @override
  String get tasksEmptyCompleted => 'مکمل کام یہاں نظر آئیں گے۔';

  @override
  String get taskNew => 'نیا کام';

  @override
  String get taskEdit => 'کام میں ترمیم';

  @override
  String get taskTitleLabel => 'عنوان';

  @override
  String get taskTitleHint => 'کیا کرنا ہے؟';

  @override
  String get taskDescriptionLabel => 'تفصیل';

  @override
  String get taskNotesLabel => 'نوٹس';

  @override
  String get taskPriority => 'ترجیح';

  @override
  String get priorityNone => 'کوئی نہیں';

  @override
  String get priorityLow => 'کم';

  @override
  String get priorityMedium => 'درمیانی';

  @override
  String get priorityHigh => 'زیادہ';

  @override
  String get priorityUrgent => 'فوری';

  @override
  String get taskDueDate => 'آخری تاریخ';

  @override
  String get taskStartDate => 'آغاز کی تاریخ';

  @override
  String get taskReminder => 'یاد دہانی';

  @override
  String get taskRepeat => 'دہرائیں';

  @override
  String get taskProject => 'پروجیکٹ';

  @override
  String get taskCategory => 'زمرہ';

  @override
  String get taskCategoryHint => 'مثلاً کام، گھر، پڑھائی';

  @override
  String get taskEstimateMinutes => 'اندازہ (منٹ)';

  @override
  String get taskTracked => 'ریکارڈ شدہ فوکس';

  @override
  String get taskLabels => 'لیبلز';

  @override
  String get taskAddLabel => 'نیا لیبل';

  @override
  String get taskChecklist => 'چیک لسٹ';

  @override
  String get taskAddChecklistItem => 'آئٹم شامل کریں';

  @override
  String get taskSubtasks => 'ذیلی کام';

  @override
  String get taskAddSubtask => 'ذیلی کام شامل کریں';

  @override
  String get taskDependencies => 'جس کی وجہ سے رکا ہے';

  @override
  String get taskAddDependency => 'رکاوٹ والا کام شامل کریں';

  @override
  String get taskLinkedNotes => 'جڑے نوٹس';

  @override
  String get taskSetTime => 'وقت مقرر کریں';

  @override
  String get taskNoDate => 'کوئی تاریخ نہیں';

  @override
  String get taskCompleted => 'کام مکمل ہو گیا';

  @override
  String get taskNextOccurrence => 'اگلی تکرار بن گئی';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days دن کی تاخیر',
      one: '1 دن کی تاخیر',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '\"$title\" کو مکمل نشان زد کریں';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '\"$title\" کو نامکمل نشان زد کریں';
  }

  @override
  String get sortSmart => 'سمارٹ';

  @override
  String get sortDueDate => 'آخری تاریخ';

  @override
  String get sortPriority => 'ترجیح';

  @override
  String get sortCreated => 'نئے ترین';

  @override
  String get sortTitle => 'عنوان';

  @override
  String get filterAllProjects => 'سب پروجیکٹس';

  @override
  String get filterAnyPriority => 'کوئی بھی ترجیح';

  @override
  String get filterTitle => 'فلٹر اور ترتیب';

  @override
  String get dateToday => 'آج';

  @override
  String get dateTomorrow => 'آئندہ کل';

  @override
  String get dateYesterday => 'گزشتہ کل';

  @override
  String get repeatNever => 'دہرایا نہیں جاتا';

  @override
  String get repeatDaily => 'ہر روز';

  @override
  String get repeatWeekdays => 'ہر کام کے دن';

  @override
  String get repeatWeekly => 'ہر ہفتے';

  @override
  String get repeatMonthly => 'ہر مہینے';

  @override
  String get repeatYearly => 'ہر سال';

  @override
  String get repeatCustom => 'حسبِ منشا';

  @override
  String get repeatEvery => 'ہر اتنے بعد دہرائیں';

  @override
  String get repeatOnDays => 'ان دنوں میں';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'دن', one: 'دن');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ہفتے', one: 'ہفتہ');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'مہینے', one: 'مہینہ');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'سال', one: 'سال');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بار',
      one: '1 بار',
    );
    return '$_temp0 کے بعد ختم';
  }

  @override
  String get repeatEndsNever => 'کبھی ختم نہیں ہوتا';

  @override
  String get reminderAtTime => 'تقریب کے وقت';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes منٹ پہلے',
      one: '1 منٹ پہلے',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours گھنٹے پہلے',
      one: '1 گھنٹہ پہلے',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 دن پہلے';

  @override
  String get projectsTitle => 'پروجیکٹس';

  @override
  String get projectsEmptyTitle => 'ابھی کوئی پروجیکٹ نہیں';

  @override
  String get projectsEmptyMessage => 'متعلقہ کام، نوٹس اور فوکس وقت ایک جگہ رکھیں۔';

  @override
  String get projectNew => 'نیا پروجیکٹ';

  @override
  String get projectEdit => 'پروجیکٹ میں ترمیم';

  @override
  String get projectName => 'نام';

  @override
  String get projectDescription => 'تفصیل';

  @override
  String get projectGoal => 'مقصد';

  @override
  String get projectDeadline => 'آخری مہلت';

  @override
  String get projectColor => 'رنگ';

  @override
  String get projectIcon => 'آئیکن';

  @override
  String get projectProgress => 'پیش رفت';

  @override
  String projectTasksDone(int done, int total) {
    return '$total میں سے $done کام مکمل';
  }

  @override
  String get projectFocusTime => 'فوکس وقت';

  @override
  String get projectArchived => 'آرکائیو شدہ پروجیکٹس';

  @override
  String get projectShowArchived => 'آرکائیو دکھائیں';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days دن باقی',
      one: '1 دن باقی',
      zero: 'آج آخری دن',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'مہلت گزر گئی';

  @override
  String get calendarTitle => 'کیلنڈر';

  @override
  String get calendarMonth => 'مہینہ';

  @override
  String get calendarWeek => 'ہفتہ';

  @override
  String get calendarDay => 'دن';

  @override
  String get calendarToday => 'آج';

  @override
  String get calendarPrevious => 'پچھلا';

  @override
  String get calendarNext => 'اگلا';

  @override
  String get calendarNoEvents => 'کچھ طے نہیں';

  @override
  String get calendarAllDay => 'سارا دن';

  @override
  String get eventNew => 'نئی تقریب';

  @override
  String get eventEdit => 'تقریب میں ترمیم';

  @override
  String get eventTitleHint => 'تقریب کا عنوان';

  @override
  String get eventStarts => 'آغاز';

  @override
  String get eventEnds => 'اختتام';

  @override
  String get eventKind => 'قسم';

  @override
  String get eventKindEvent => 'تقریب';

  @override
  String get eventKindTimeBlock => 'ٹائم بلاک';

  @override
  String get eventKindFocus => 'فوکس سیشن';

  @override
  String get eventKindGoal => 'ذاتی ہدف';

  @override
  String get eventDescription => 'تفصیلات';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تقریبات سے ٹکراتا ہے',
      one: '1 تقریب سے ٹکراتا ہے',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'اس دن شیڈول میں ٹکراؤ ہے';

  @override
  String get calendarTaskDue => 'آخری تاریخ والا کام';

  @override
  String get calendarDragHint => 'تقریب کو نئے وقت پر لے جانے کے لیے دبا کر گھسیٹیں';

  @override
  String get calendarRescheduled => 'تقریب منتقل ہو گئی';

  @override
  String get calendarScheduleTask => 'ٹائم بلاک کے طور پر رکھیں';

  @override
  String get notesTitle => 'نوٹس';

  @override
  String get notesViewAll => 'سب';

  @override
  String get notesViewPinned => 'پن شدہ';

  @override
  String get notesViewFavorites => 'پسندیدہ';

  @override
  String get notesViewArchived => 'آرکائیو شدہ';

  @override
  String get notesTags => 'ٹیگز';

  @override
  String get notesNewNotebook => 'نئی نوٹ بک';

  @override
  String get notesNoNotebook => 'کوئی نوٹ بک نہیں';

  @override
  String get notesEmptyTitle => 'ایک خالی صفحہ';

  @override
  String get notesEmptyMessage => 'خیالات، میٹنگ نوٹس اور معلومات لکھ لیں۔';

  @override
  String get noteTitleHint => 'عنوان';

  @override
  String get noteBodyHint =>
      'لکھنا شروع کریں… ٹیگ کے لیے # اور نوٹس جوڑنے کے لیے [[عنوان]] استعمال کریں۔';

  @override
  String get noteFavorite => 'پسندیدہ';

  @override
  String get noteUnfavorite => 'پسندیدہ سے ہٹائیں';

  @override
  String get noteMoveTo => 'نوٹ بک میں منتقل کریں';

  @override
  String get noteBacklinks => 'جہاں سے لنک کیا گیا';

  @override
  String get noteLinkedTasks => 'جڑے کام';

  @override
  String get noteLinkTask => 'کام جوڑیں';

  @override
  String get noteLinkProject => 'پروجیکٹ';

  @override
  String get noteFormatHeading => 'سرخی';

  @override
  String get noteFormatBold => 'موٹا';

  @override
  String get noteFormatItalic => 'ترچھا';

  @override
  String get noteFormatList => 'نقطہ دار فہرست';

  @override
  String get noteFormatChecklist => 'چیک لسٹ';

  @override
  String get noteFormatLink => 'لنک';

  @override
  String noteEdited(String time) {
    return '$time ترمیم ہوئی';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count الفاظ',
      one: '1 لفظ',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'فلیش کارڈز';

  @override
  String get flashEmptyTitle => 'اپنا پہلا ڈیک بنائیں';

  @override
  String get flashEmptyMessage => 'وقفے سے دہرائی ہر کارڈ کو بھولنے سے ذرا پہلے دکھاتی ہے۔';

  @override
  String get deckNew => 'نیا ڈیک';

  @override
  String get deckEdit => 'ڈیک میں ترمیم';

  @override
  String get deckName => 'ڈیک کا نام';

  @override
  String get deckDescription => 'تفصیل';

  @override
  String get deckDailyNew => 'روزانہ نئے کارڈ';

  @override
  String get deckDailyReview => 'روزانہ دہرائی کا ہدف';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ',
      one: '1 کارڈ',
      zero: 'کوئی کارڈ نہیں',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'واجب';

  @override
  String get deckNewCards => 'نئے';

  @override
  String get deckMature => 'پختہ';

  @override
  String get deckStudy => 'پڑھیں';

  @override
  String get deckNothingDue => 'ابھی کچھ دہرانا نہیں۔ بعد میں آئیں۔';

  @override
  String get deckEmptyCards => 'سیکھنا شروع کرنے کے لیے کارڈ شامل کریں۔';

  @override
  String get cardNew => 'نیا کارڈ';

  @override
  String get cardEdit => 'کارڈ میں ترمیم';

  @override
  String get cardFront => 'سامنے';

  @override
  String get cardBack => 'پیچھے';

  @override
  String get cardFrontHint => 'سوال یا اصطلاح';

  @override
  String get cardBackHint => 'جواب یا تعریف';

  @override
  String get cardTags => 'ٹیگز';

  @override
  String get cardAddAnother => 'محفوظ کریں اور ایک اور شامل کریں';

  @override
  String get reviewShowAnswer => 'جواب دکھائیں';

  @override
  String get reviewAgain => 'دوبارہ';

  @override
  String get reviewHard => 'مشکل';

  @override
  String get reviewGood => 'اچھا';

  @override
  String get reviewEasy => 'آسان';

  @override
  String reviewProgress(int done, int total) {
    return '$total میں سے $done';
  }

  @override
  String get reviewFinishedTitle => 'سیشن مکمل';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آپ نے $count کارڈ دہرائے۔',
      one: 'آپ نے 1 کارڈ دہرایا۔',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'جواب دیکھنے کے لیے تھپتھپائیں';

  @override
  String get importCardsTitle => 'کارڈ درآمد کریں';

  @override
  String get importCardsHint =>
      'ہر سطر میں ایک کارڈ چسپاں کریں (سامنے اور پیچھے کو ٹیب یا سیمی کولن سے الگ کریں)، یا فائل منتخب کریں: Excel (.xlsx)، CSV، Anki ڈیک (.apkg) یا برآمد شدہ ڈیک۔';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ درآمد ہوئے',
      one: '1 کارڈ درآمد ہوا',
      zero: 'کوئی کارڈ درآمد نہیں ہوا',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'یہ مواد درآمد نہیں ہو سکا۔';

  @override
  String get exportCopied => 'ڈیک برآمد ہو گیا';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count منٹ',
      one: '1 منٹ',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن',
      one: '1 دن',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'اہداف';

  @override
  String get goalsEmptyTitle => 'کسی چیز کا ہدف بنائیں';

  @override
  String get goalsEmptyMessage =>
      'روزانہ، ہفتہ وار، ماہانہ یا طویل مدتی اہداف مقرر کریں اور حقیقی پیش رفت دیکھیں۔';

  @override
  String get goalNew => 'نیا ہدف';

  @override
  String get goalEdit => 'ہدف میں ترمیم';

  @override
  String get goalTitleHint => 'آپ کیا حاصل کرنا چاہتے ہیں؟';

  @override
  String get goalPeriod => 'مدت';

  @override
  String get goalPeriodDaily => 'روزانہ';

  @override
  String get goalPeriodWeekly => 'ہفتہ وار';

  @override
  String get goalPeriodMonthly => 'ماہانہ';

  @override
  String get goalPeriodLongTerm => 'طویل مدتی';

  @override
  String get goalTarget => 'ہدف کی مقدار';

  @override
  String get goalUnit => 'اکائی';

  @override
  String get goalUnitHint => 'مثلاً صفحات، کلومیٹر، گھنٹے';

  @override
  String get goalStatusActive => 'فعال';

  @override
  String get goalStatusPaused => 'رکا ہوا';

  @override
  String get goalStatusAchieved => 'حاصل ہو گیا';

  @override
  String get goalPause => 'ہدف روکیں';

  @override
  String get goalResume => 'ہدف جاری کریں';

  @override
  String get goalMarkAchieved => 'حاصل شدہ نشان زد کریں';

  @override
  String goalProgressOf(String current, String target) {
    return '$target میں سے $current';
  }

  @override
  String get goalLogAmount => 'مقدار';

  @override
  String get goalLogNote => 'نوٹ (اختیاری)';

  @override
  String get goalHistory => 'تاریخچہ';

  @override
  String get goalNoHistory => 'درج کی گئی پیش رفت یہاں نظر آئے گی';

  @override
  String get goalLinkedTasks => 'جڑے کام';

  @override
  String get goalLinkedTasksHint => 'ہر مکمل جڑا کام اس ہدف میں 1 شمار ہوتا ہے۔';

  @override
  String get goalThisPeriod => 'یہ مدت';

  @override
  String get habitsTitle => 'عادات';

  @override
  String get habitsEmptyTitle => 'ہر روز چھوٹے قدم';

  @override
  String get habitsEmptyMessage => 'ایک عادت بنائیں اور کرنے پر نشان لگائیں۔';

  @override
  String get habitNew => 'نئی عادت';

  @override
  String get habitEdit => 'عادت میں ترمیم';

  @override
  String get habitNameHint => 'مثلاً 20 صفحے پڑھیں';

  @override
  String get habitDays => 'شیڈول';

  @override
  String get habitEveryDay => 'ہر روز';

  @override
  String get habitTargetPerDay => 'دن میں کتنی بار';

  @override
  String get habitReminder => 'روزانہ یاد دہانی';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن کا تسلسل',
      one: '1 دن کا تسلسل',
      zero: 'کوئی تسلسل نہیں',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'بہترین تسلسل';

  @override
  String get habitCurrentStreak => 'موجودہ تسلسل';

  @override
  String get habitConsistency => 'باقاعدگی';

  @override
  String get habitLast90 => 'پچھلے 90 دن';

  @override
  String get habitPaused => 'رکا ہوا';

  @override
  String get habitPause => 'عادت روکیں';

  @override
  String get habitResume => 'عادت جاری کریں';

  @override
  String get habitDoneToday => 'آج ہو گیا';

  @override
  String habitCountToday(int count, int target) {
    return 'آج $target میں سے $count';
  }

  @override
  String habitToggleSemantics(String name) {
    return '\"$name\" پر نشان لگائیں';
  }

  @override
  String get habitNotScheduledToday => 'آج شیڈول میں نہیں';

  @override
  String get analyticsTitle => 'جائزہ';

  @override
  String get rangeWeek => '7 دن';

  @override
  String get rangeMonth => '30 دن';

  @override
  String get rangeQuarter => '90 دن';

  @override
  String get statFocusTime => 'فوکس وقت';

  @override
  String get statSessions => 'سیشنز';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed مکمل · $interrupted جلد روکے گئے';
  }

  @override
  String get statTasksDone => 'مکمل کام';

  @override
  String get statCompletionRate => 'وقت پر مکمل';

  @override
  String get statHabitConsistency => 'عادات کی باقاعدگی';

  @override
  String get statRetention => 'کارڈز کی یادداشت';

  @override
  String get statReviews => 'دہرائیاں';

  @override
  String get statActiveGoals => 'فعال اہداف';

  @override
  String get statEstimated => 'اندازاً مکمل کام';

  @override
  String get statEstimatedNote => 'آپ کے اندازوں پر مبنی، ناپے گئے وقت پر نہیں';

  @override
  String get statMeasuredNote => 'فوکس سیشنز سے ناپا گیا';

  @override
  String get chartFocusByDay => 'روزانہ فوکس منٹ';

  @override
  String get chartTasksByDay => 'روزانہ مکمل کام';

  @override
  String get chartTimeByProject => 'پروجیکٹ کے لحاظ سے وقت';

  @override
  String get chartProjectProgress => 'پروجیکٹ کی پیش رفت';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: کل $total، بہترین دن $best';
  }

  @override
  String get analyticsNoData => 'ابھی کافی ڈیٹا نہیں';

  @override
  String get analyticsUnassigned => 'غیر مختص';

  @override
  String get searchHint => 'ہر چیز میں تلاش کریں…';

  @override
  String get searchRecent => 'حالیہ تلاشیں';

  @override
  String get searchClearRecent => 'حالیہ تلاشیں صاف کریں';

  @override
  String searchNoResults(String query) {
    return '\"$query\" کے لیے کوئی نتیجہ نہیں';
  }

  @override
  String get searchStartTyping =>
      'کاموں، نوٹس، کارڈز، اہداف، تقریبات وغیرہ میں تلاش کریں۔ تلاش اسی آلے پر رہتی ہے۔';

  @override
  String get searchCatTask => 'کام';

  @override
  String get searchCatProject => 'پروجیکٹس';

  @override
  String get searchCatNote => 'نوٹس';

  @override
  String get searchCatFlashcard => 'کارڈز';

  @override
  String get searchCatDeck => 'ڈیکس';

  @override
  String get searchCatGoal => 'اہداف';

  @override
  String get searchCatHabit => 'عادات';

  @override
  String get searchCatEvent => 'تقریبات';

  @override
  String get searchCatSession => 'سیشنز';

  @override
  String get searchAll => 'سب';

  @override
  String get assistantTitle => 'معاون';

  @override
  String get assistantIntro =>
      'منصوبہ بندی میں مدد جو آپ کے آلے پر کام کرتی ہے۔ چاہیں تو خلاصوں اور تخلیق کے لیے اپنی پسند کا AI فراہم کنندہ جوڑ لیں۔';

  @override
  String get assistantOnDevice => 'آلے پر';

  @override
  String get assistantCloud => 'AI فراہم کنندہ';

  @override
  String get assistantPlanDay => 'میرا دن ترتیب دیں';

  @override
  String get assistantPlanDayDesc =>
      'کھلے کاموں کو فوری ضرورت، ترجیح اور اندازے کے مطابق ترتیب دے کر آپ کی تقریبات کے بیچ رکھتا ہے۔';

  @override
  String get assistantExtractTasks => 'نوٹ سے کام نکالیں';

  @override
  String get assistantExtractTasksDesc =>
      'نوٹ میں چیک لسٹ آئٹمز اور عملی سطریں ڈھونڈ کر انہیں کاموں میں بدلتا ہے۔';

  @override
  String get assistantMakeCards => 'نوٹ سے فلیش کارڈ بنائیں';

  @override
  String get assistantMakeCardsDesc =>
      '\"اصطلاح: تعریف\" اور سوال/جواب والی سطروں کو کارڈز میں بدلتا ہے۔';

  @override
  String get assistantSummarize => 'نوٹ کا خلاصہ';

  @override
  String get assistantSummarizeDesc =>
      'AI فراہم کنندہ درکار ہے۔ نوٹ آپ کی تصدیق کے بعد ہی بھیجا جاتا ہے۔';

  @override
  String get assistantWorkload => 'کام کے بوجھ کا جائزہ';

  @override
  String get assistantWorkloadDesc => 'اس ہفتے کے اندازاً کام کا آپ کے فارغ وقت سے موازنہ کرتا ہے۔';

  @override
  String get assistantPlanEmpty => 'ترتیب دینے کو کوئی کھلا کام نہیں۔ فرصت کا لطف اٹھائیں۔';

  @override
  String assistantPlanCapacity(String time) {
    return 'آج فوکس کے لیے فارغ وقت: $time';
  }

  @override
  String get assistantPlanOverflow => 'یہ شاید آج نہ ہو سکیں:';

  @override
  String get assistantChooseNote => 'نوٹ منتخب کریں';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کام ملے',
      one: '1 کام ملا',
      zero: 'اس نوٹ میں کوئی کام نہیں ملا',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ ملے',
      one: '1 کارڈ ملا',
      zero: 'اس نوٹ میں کوئی کارڈ نہیں ملا',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'ڈیک منتخب کریں';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'اندازاً کام: $estimated۔ فارغ وقت: $free۔';
  }

  @override
  String get assistantWorkloadOver =>
      'آپ نے دستیاب وقت سے زیادہ منصوبہ بنایا ہے۔ کم ترجیح والے کام آگے بڑھانے پر غور کریں۔';

  @override
  String get assistantWorkloadOk => 'آپ کا منصوبہ دستیاب وقت میں سما جاتا ہے۔';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کھلے کاموں کا اندازہ نہیں۔',
      one: '1 کھلے کام کا اندازہ نہیں۔',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI فراہم کنندہ';

  @override
  String get assistantProviderOff =>
      'کوئی فراہم کنندہ جڑا نہیں۔ آلے کے اوزار پھر بھی کام کرتے ہیں۔';

  @override
  String assistantProviderOn(String host) {
    return '$host سے جڑا ہوا';
  }

  @override
  String get assistantEndpoint => 'API اینڈ پوائنٹ (HTTPS)';

  @override
  String get assistantModel => 'ماڈل';

  @override
  String get assistantApiKey => 'API کلید';

  @override
  String get assistantApiKeyStored => 'اس آلے پر محفوظ طریقے سے رکھی گئی';

  @override
  String get assistantHttpsOnly => 'صرف HTTPS اینڈ پوائنٹس کی اجازت ہے';

  @override
  String get assistantConsentTitle => 'یہ مواد اپنے AI فراہم کنندہ کو بھیجیں؟';

  @override
  String assistantConsentBody(String host) {
    return 'منتخب نوٹ کا متن اس آلے سے نکل کر $host پر پروسیس ہوگا۔ اس کے علاوہ کچھ نہیں بھیجا جاتا۔';
  }

  @override
  String get assistantConsentAlways => 'اس فراہم کنندہ کے لیے دوبارہ نہ پوچھیں';

  @override
  String get assistantSend => 'بھیجیں';

  @override
  String get assistantUnavailable =>
      'AI فراہم کنندہ تک رسائی نہیں ہو سکی۔ بعد میں دوبارہ کوشش کریں۔';

  @override
  String get assistantDisabledTitle => 'معاون بند ہے';

  @override
  String get assistantDisabledMessage =>
      'منصوبہ بندی کے اوزار استعمال کرنے کے لیے اسے آن کریں۔ جب تک آپ فراہم کنندہ نہ جوڑیں اور ہر درخواست کی تصدیق نہ کریں، کوئی ڈیٹا آلے سے باہر نہیں جاتا۔';

  @override
  String get assistantSummaryTitle => 'خلاصہ';

  @override
  String get assistantRemoveProvider => 'فراہم کنندہ ہٹائیں';

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get settingsGeneral => 'عمومی';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get settingsLanguageSystem => 'آلے کی زبان';

  @override
  String get settingsAppearance => 'ظاہری شکل';

  @override
  String get settingsTheme => 'تھیم';

  @override
  String get themeLight => 'ہلکا';

  @override
  String get themeDark => 'گہرا';

  @override
  String get themeSystem => 'سسٹم';

  @override
  String get settingsReduceMotion => 'حرکت کم کریں';

  @override
  String get settingsReduceMotionDesc => 'اینیمیشن اور حرکت کرتے پس منظر کم کریں';

  @override
  String get settingsFocus => 'فوکس ٹائمر';

  @override
  String get settingsWorkLength => 'فوکس کا دورانیہ';

  @override
  String get settingsShortBreak => 'مختصر وقفہ';

  @override
  String get settingsLongBreak => 'طویل وقفہ';

  @override
  String get settingsLongBreakEvery => 'طویل وقفہ اتنے کے بعد';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سیشن',
      one: '1 سیشن',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'وقفے خود بخود شروع کریں';

  @override
  String get settingsSound => 'اختتام کی آواز';

  @override
  String get settingsDailyFocusTarget => 'روزانہ فوکس ہدف';

  @override
  String get settingsWeeklyFocusTarget => 'ہفتہ وار فوکس ہدف';

  @override
  String get settingsNotifications => 'اطلاعات';

  @override
  String get settingsNotificationsEnable => 'یاد دہانیوں کی اجازت دیں';

  @override
  String get settingsQuietHours => 'خاموش اوقات';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'عادات، اہداف اور دہرائی کی یاد دہانیاں $start سے $end تک خاموش رہتی ہیں';
  }

  @override
  String get settingsReviewReminder => 'فلیش کارڈ دہرائی کی یاد دہانی';

  @override
  String get settingsPermissionDenied => 'سسٹم کی ترتیبات میں اطلاعات بند ہیں۔';

  @override
  String get settingsPrivacy => 'رازداری اور ڈیٹا';

  @override
  String get settingsPrivacyStatement =>
      'آپ کا ڈیٹا صرف اسی آلے پر انکرپٹ کر کے رکھا جاتا ہے۔ نہ اکاؤنٹ، نہ تجزیات، نہ ٹریکنگ۔';

  @override
  String get settingsBackup => 'انکرپٹڈ بیک اپ بنائیں';

  @override
  String get settingsBackupDesc => 'آپ کے منتخب کردہ پاس ورڈ سے محفوظ';

  @override
  String get settingsRestore => 'بیک اپ سے بحال کریں';

  @override
  String get settingsRestoreDesc => 'اس آلے کا تمام ڈیٹا بدل دیتا ہے';

  @override
  String get settingsErase => 'تمام ڈیٹا مٹائیں';

  @override
  String get settingsEraseDesc => 'اس آلے کی ہر چیز ہمیشہ کے لیے حذف کریں';

  @override
  String get settingsEraseConfirmTitle => 'تمام ڈیٹا مٹا دیں؟';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'تمام کام، نوٹس، کارڈز، اہداف، عادات، تقریبات اور سیشنز ہمیشہ کے لیے حذف ہو جائیں گے۔ تصدیق کے لیے $word لکھیں۔';
  }

  @override
  String get settingsEraseWord => 'مٹائیں';

  @override
  String get settingsErased => 'تمام ڈیٹا مٹا دیا گیا';

  @override
  String get backupPassword => 'بیک اپ پاس ورڈ';

  @override
  String get backupPasswordConfirm => 'پاس ورڈ کی تصدیق';

  @override
  String backupPasswordHint(int count) {
    return 'کم از کم $count حروف۔ کھو جانے پر واپس نہیں مل سکتا۔';
  }

  @override
  String get backupPasswordMismatch => 'پاس ورڈ ایک جیسے نہیں';

  @override
  String get backupPasswordShort => 'پاس ورڈ بہت چھوٹا ہے';

  @override
  String get backupCreating => 'بیک اپ انکرپٹ ہو رہا ہے…';

  @override
  String get backupCreated => 'بیک اپ محفوظ کرنے کے لیے تیار';

  @override
  String get backupRestoring => 'جانچ اور بحالی ہو رہی ہے…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آئٹمز بحال ہوئے',
      one: '1 آئٹم بحال ہوا',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'پاس ورڈ غلط ہے یا فائل بدلی گئی ہے۔';

  @override
  String get backupNotABackup => 'یہ فائل Deep Focus کا بیک اپ نہیں۔';

  @override
  String get backupCorrupted => 'بیک اپ فائل خراب ہے۔';

  @override
  String get backupNewer => 'یہ بیک اپ ایپ کے نئے ورژن سے بنا ہے۔ براہِ کرم پہلے اپ ڈیٹ کریں۔';

  @override
  String get backupRestoreConfirmTitle => 'تمام ڈیٹا بدل دیں؟';

  @override
  String get backupRestoreConfirmBody =>
      'اس آلے پر موجود ہر چیز بیک اپ سے بدل جائے گی۔ اگر بحالی ناکام ہو تو کچھ نہیں بدلتا۔';

  @override
  String get settingsAbout => 'تعارف';

  @override
  String settingsVersion(String version) {
    return 'ورژن $version';
  }

  @override
  String get settingsLicenses => 'اوپن سورس لائسنس';

  @override
  String get settingsAssistant => 'معاون';

  @override
  String get settingsAssistantEnable => 'معاون فعال کریں';

  @override
  String get settingsDashboard => 'ہوم کے حصے';

  @override
  String get settingsTrash => 'ردی کی ٹوکری';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes منٹ';
  }

  @override
  String get trashEmpty => 'ٹوکری خالی ہے';

  @override
  String get trashHint => 'حذف کی گئی اشیاء یہاں رہتی ہیں جب تک آپ انہیں نہ ہٹائیں۔';

  @override
  String get trashTasks => 'کام';

  @override
  String get trashNotes => 'نوٹس';

  @override
  String get onboardWelcomeTitle => 'اپنی نئی کام کی جگہ میں خوش آمدید';

  @override
  String get onboardWelcomeBody =>
      'کام، فوکس، کیلنڈر، نوٹس، فلیش کارڈز، اہداف اور عادات — سب ایک ساتھ، خوبصورت اور سادہ۔';

  @override
  String get onboardPrivateTitle => 'بنیاد سے نجی';

  @override
  String get onboardPrivateBody =>
      'سب کچھ اسی آلے پر انکرپٹڈ رہتا ہے۔ نہ اکاؤنٹ۔ نہ ٹریکنگ۔ اختیار آپ کے پاس۔';

  @override
  String get onboardLanguageTitle => 'اپنی زبان منتخب کریں';

  @override
  String get onboardNotifTitle => 'نرم یاد دہانیاں';

  @override
  String get onboardNotifBody =>
      'کاموں کی یاد دہانی اور فوکس اطلاعات کے لیے اجازت دیں۔ آپ اسے کبھی بھی بدل سکتے ہیں۔';

  @override
  String get onboardGetStarted => 'شروع کریں';

  @override
  String onboardStep(int current, int total) {
    return 'مرحلہ $current از $total';
  }

  @override
  String get notifChannelReminders => 'یاد دہانیاں';

  @override
  String get notifChannelRemindersDesc => 'کام، تقریب، عادت اور ہدف کی یاد دہانیاں';

  @override
  String get notifChannelFocus => 'فوکس ٹائمر';

  @override
  String get notifChannelFocusDesc => 'فوکس سیشن یا وقفہ ختم ہونے پر اطلاع';

  @override
  String get notifTaskTitle => 'کام کی یاد دہانی';

  @override
  String get notifEventTitle => 'آنے والی تقریب';

  @override
  String notifEventBody(String title, String time) {
    return '$title، $time بجے';
  }

  @override
  String get notifFocusDoneTitle => 'فوکس سیشن مکمل';

  @override
  String get notifFocusDoneBody => 'بہت خوب۔ اب وقفے کا وقت ہے۔';

  @override
  String get notifBreakDoneTitle => 'وقفہ ختم';

  @override
  String get notifBreakDoneBody => 'اگلے فوکس سیشن کے لیے تیار ہیں؟';

  @override
  String get notifHabitTitle => 'عادت کی یاد دہانی';

  @override
  String get notifReviewTitle => 'فلیش کارڈز تیار ہیں';

  @override
  String get notifReviewBody => 'مختصر دہرائی یادداشت مضبوط رکھتی ہے۔';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours گھنٹے $minutes منٹ';
  }

  @override
  String durationHours(int hours) {
    return '$hours گھنٹے';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes منٹ';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'پ,م,ب,ج,ج,ہ,ا';

  @override
  String a11yProgress(int value) {
    return 'پیش رفت $value فیصد';
  }

  @override
  String a11yPriority(String level) {
    return 'ترجیح: $level';
  }

  @override
  String a11yColor(int index) {
    return 'رنگ $index';
  }

  @override
  String get analyticsRangeLabel => 'وقت کی حد';

  @override
  String get analyticsRefresh => 'تازہ کریں';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'آخری تاریخ والے $total کاموں میں سے $done وقت پر مکمل';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total میں سے $done کام مکمل';
  }

  @override
  String get analyticsNoProjects => 'کوئی فعال پروجیکٹ نہیں';

  @override
  String get analyticsNoFocus => 'اس مدت میں کوئی فوکس سیشن نہیں';

  @override
  String get analyticsHabitsNone => 'کوئی فعال عادت نہیں';

  @override
  String get analyticsRetentionNote => 'پختہ کارڈز میں سے جتنے آپ کو یاد رہے';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'فارغ وقت کام کے دنوں ($days) میں $start–$end شمار ہوتا ہے، وقت والی تقریبات نکال کر۔ اندازاً کام اگلے 7 دنوں میں مکمل ہونے والے کھلے کاموں کے اندازوں کا مجموعہ ہے۔';
  }

  @override
  String get assistantWorkdaysMonFri => 'پیر–جمعہ';

  @override
  String get assistantWorkdaysSunThu => 'اتوار–جمعرات';

  @override
  String get assistantWorkloadDayOff => 'چھٹی کا دن';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated منصوبہ بند · $free فارغ';
  }

  @override
  String assistantPlanRule(String end) {
    return 'اب سے $end تک، آج کی تقریبات کے بیچ منصوبہ۔ پہلے تاخیر شدہ کام، پھر ترجیح، آخری تاریخ اور اندازہ۔';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'ٹائم بلاکس کے طور پر رکھیں';

  @override
  String get assistantScheduleConfirmTitle => 'کیلنڈر میں ٹائم بلاکس شامل کریں؟';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آج کے کیلنڈر میں $count ٹائم بلاکس شامل ہوں گے۔',
      one: 'آج کے کیلنڈر میں 1 ٹائم بلاک شامل ہوگا۔',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ٹائم بلاکس شامل ہوئے',
      one: '1 ٹائم بلاک شامل ہوا',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'پہلے سے کیلنڈر میں';

  @override
  String get assistantPlanTimeline => 'آج ہو سکتا ہے';

  @override
  String get assistantNoEstimate => 'منصوبہ بندی کے لیے اندازہ شامل کریں';

  @override
  String get assistantNoNotes => 'ابھی کوئی نوٹ نہیں۔ پہلے ایک نوٹ لکھیں۔';

  @override
  String get assistantNoteEmpty => 'یہ نوٹ خالی ہے۔';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کام بنائے گئے',
      one: '1 کام بنایا گیا',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ بنائے گئے',
      one: '1 کارڈ بنایا گیا',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بنائیں',
      zero: 'کچھ منتخب نہیں',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'پہچانے جاتے ہیں: بغیر نشان کے خانے \"- [ ]\" اور TODO: یا To do: سے شروع ہونے والی سطریں';

  @override
  String get assistantCardsHint =>
      'پہچانے جاتے ہیں: \"اصطلاح: تعریف\"، \"اصطلاح — تعریف\" اور Q: اور A: والی سطروں کے جوڑے';

  @override
  String get assistantProviderHint =>
      'کوئی بھی OpenAI سے مطابقت رکھنے والی سروس استعمال کریں۔ کلید اس آلے کے محفوظ ذخیرے میں رہتی ہے اور کبھی بیک اپ میں شامل نہیں ہوتی۔';

  @override
  String get assistantEndpointHelp => 'مثلاً https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'محفوظ کلید رکھنے کے لیے خالی چھوڑیں';

  @override
  String get assistantApiKeyRequired => 'API کلید لکھیں';

  @override
  String get assistantProviderSaved => 'فراہم کنندہ محفوظ ہو گیا';

  @override
  String get assistantProviderRemoved => 'فراہم کنندہ ہٹا دیا گیا اور کلید حذف ہو گئی';

  @override
  String get assistantRemoveProviderConfirm =>
      'فراہم کنندہ ہٹا کر محفوظ API کلید اس آلے سے حذف کریں؟';

  @override
  String get assistantAskEveryTime => 'ہر درخواست سے پہلے پوچھیں';

  @override
  String get assistantSummarizing => 'خلاصہ بن رہا ہے…';

  @override
  String assistantSummaryNote(String host) {
    return '$host نے بنایا۔ انحصار کرنے سے پہلے جانچ لیں۔';
  }

  @override
  String get assistantCopy => 'نقل کریں';

  @override
  String get assistantCopied => 'نقل ہو گیا';

  @override
  String get assistantConfigure => 'فراہم کنندہ سیٹ کریں';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'اس سلسلے کی تمام تقریبات منتقل ہو گئیں';

  @override
  String get calendarEventReminder => 'یاد دہانی';

  @override
  String get calendarEventRepeat => 'دہرائیں';

  @override
  String get calendarEventColor => 'رنگ';

  @override
  String get calendarDefaultColor => 'قسم کا رنگ استعمال کریں';

  @override
  String get calendarEventLinkedTask => 'جڑا کام';

  @override
  String get calendarEventNoTask => 'کوئی کام جڑا نہیں';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تقریبات',
      one: '1 تقریب',
      zero: 'کوئی تقریب نہیں',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کام واجب',
      one: '1 کام واجب',
      zero: 'کوئی کام واجب نہیں',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date۔ $events، $tasks';
  }

  @override
  String get calendarNoEventsHint => 'اس دن کی منصوبہ بندی کے لیے تقریب یا ٹائم بلاک شامل کریں۔';

  @override
  String get calendarNow => 'موجودہ وقت';

  @override
  String get calendarRecurring => 'دہرایا جاتا ہے';

  @override
  String get calendarEventNotFound => 'یہ تقریب اب موجود نہیں';

  @override
  String get calendarEventLocalTime => 'اوقات آپ کے آلے کے ٹائم زون میں دکھائے جاتے ہیں';

  @override
  String get calendarEventDeleted => 'تقریب ٹوکری میں منتقل ہو گئی';

  @override
  String get calendarConflictMarker => 'کسی اور تقریب سے ٹکراتی ہے';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title، $time';
  }

  @override
  String get calendarSeriesEditNote => 'تبدیلیاں اس سلسلے کی ہر تقریب پر لاگو ہوتی ہیں';

  @override
  String get calendarDragHintSeries =>
      'دہرائی جانے والی تقریب کو گھسیٹنے سے پورا سلسلہ منتقل ہوتا ہے';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title، کام واجب';
  }

  @override
  String get startupErrorTitle => 'آپ کا ڈیٹا نہیں کھل سکا';

  @override
  String get startupErrorLocked =>
      'اس آلے کے ڈیٹا کی انکرپشن کلید دستیاب نہیں۔ کچھ بھی حذف نہیں ہوا۔ آلہ دوبارہ شروع کرنے سے اکثر مسئلہ حل ہو جاتا ہے۔ اگر آپ نے حال ہی میں آلہ بحال کیا ہے تو انکرپٹڈ بیک اپ سے ڈیٹا بحال کریں۔';

  @override
  String get startupErrorCipher =>
      'یہ آلہ ایپ کے لیے ضروری انکرپٹڈ اسٹوریج کو سپورٹ نہیں کرتا۔ کچھ بھی بغیر انکرپشن کے محفوظ نہیں ہوا۔';

  @override
  String get startupErrorRetry => 'دوبارہ کوشش کریں';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ دہرائی کے لیے واجب ہیں',
      one: '1 کارڈ دہرائی کے لیے واجب ہے',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count واجب';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count نئے';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'پختہ کارڈز: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 یا زیادہ لکھیں';

  @override
  String get flashcardsSearchCards => 'کارڈز میں تلاش';

  @override
  String get flashcardsSearchEmpty => 'تلاش سے کوئی کارڈ نہیں ملا';

  @override
  String get flashcardsCardAdded => 'کارڈ شامل ہو گیا';

  @override
  String flashcardsCardDueOn(String date) {
    return 'واجب $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'کلپ بورڈ پر نقل کریں';

  @override
  String get flashcardsExportTitle => 'ڈیک برآمد کریں';

  @override
  String get flashcardsDeleteDeck => 'ڈیک حذف کریں';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating، اگلی دہرائی $interval میں';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'سوال: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'جواب: $text';
  }

  @override
  String get flashcardsShowQuestion => 'سوال دکھائیں';

  @override
  String get flashcardsImportField => 'درآمد کرنے والے کارڈ';

  @override
  String get flashcardsNothingToStudy => 'پڑھنے کو کچھ نہیں';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ پڑھنے کو تیار',
      one: '1 کارڈ پڑھنے کو تیار',
      zero: 'کوئی کارڈ تیار نہیں',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'درجہ بندی کے لحاظ سے';

  @override
  String get flashcardsDeckNotFound => 'یہ ڈیک اب دستیاب نہیں۔';

  @override
  String get focusSessionDeleted => 'سیشن حذف ہو گیا';

  @override
  String get focusDeleteConfirm =>
      'یہ سیشن تاریخچے سے حذف کریں؟ اس کا وقت اب آپ کے اہداف میں شمار نہیں ہوگا۔';

  @override
  String get focusUnlinkTask => 'جڑا کام ہٹائیں';

  @override
  String get focusNoteHint => 'آپ نے کس پر کام کیا؟';

  @override
  String get focusTargetCaption => 'محفوظ سیشنز سے ناپا گیا';

  @override
  String get focusModeLabel => 'ٹائمر موڈ';

  @override
  String focusUpNext(String phase) {
    return 'اگلا: $phase';
  }

  @override
  String get focusStopwatchHint => 'آپ کے روکنے تک گنتی آگے بڑھتی ہے۔';

  @override
  String get focusOpenHint => 'وقت کی کوئی حد نہیں۔ جب کام ختم ہو، روک دیں۔';

  @override
  String get focusNotificationsDisabledInApp =>
      'ترتیبات میں یاد دہانیاں بند ہیں۔ سیشن ختم ہونے پر آپ کو اطلاع نہیں ملے گی۔';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode، $duration، $when';
  }

  @override
  String get goalsFilterAll => 'سب';

  @override
  String get goalsFilterPeriod => 'مدت کا فلٹر';

  @override
  String get goalsFilterStatus => 'حالت کا فلٹر';

  @override
  String get goalsEmptyFiltered => 'اس فلٹر سے کوئی ہدف میل نہیں کھاتا';

  @override
  String goalsDueOn(String date) {
    return 'آخری تاریخ $date';
  }

  @override
  String get goalsDeadline => 'آخری مہلت (اختیاری)';

  @override
  String get goalsNoDeadline => 'کوئی مہلت نہیں';

  @override
  String get goalsSetDeadline => 'مہلت مقرر کریں';

  @override
  String get goalsRemoveDeadline => 'مہلت ہٹائیں';

  @override
  String get goalsDescription => 'تفصیل (اختیاری)';

  @override
  String get goalsTitleLabel => 'عنوان';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title، $progress، $status';
  }

  @override
  String get goalsReached => 'ہدف پورا ہو گیا';

  @override
  String get goalsLogged => 'پیش رفت درج ہو گئی';

  @override
  String get goalsEntryDeleted => 'اندراج ہٹا دیا گیا';

  @override
  String get goalsDeleteEntry => 'اندراج ہٹائیں';

  @override
  String get goalsDeleted => 'ہدف حذف ہو گیا';

  @override
  String get goalsMarkActive => 'فعال نشان زد کریں';

  @override
  String get goalsNotFound => 'یہ ہدف اب دستیاب نہیں';

  @override
  String get goalsLinkTask => 'کام جوڑیں';

  @override
  String get goalsNoLinkedTasks => 'ابھی کوئی کام جڑا نہیں';

  @override
  String get goalsUnlinkTask => 'کام کا ربط ہٹائیں';

  @override
  String get goalsTaskOpen => 'ابھی مکمل نہیں';

  @override
  String get goalsTaskLinked => 'کام جڑ گیا';

  @override
  String get goalsTaskUnlinked => 'کام کا ربط ہٹ گیا';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مکمل جڑے کام',
      one: '1 مکمل جڑا کام',
    );
    return 'اس مدت میں $_temp0 شامل ہیں';
  }

  @override
  String get goalsHistoryAllTime =>
      'پچھلی مدتوں کے اندراجات یہاں رہتے ہیں مگر صرف اپنی مدت میں شمار ہوتے ہیں۔';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'آج $total میں سے $done ہو گئیں';
  }

  @override
  String get habitsNothingToday => 'آج کوئی عادت شیڈول میں نہیں';

  @override
  String get habitsDecrease => 'ایک نشان کم کریں';

  @override
  String get habitsResetToday => 'آج کو صفر کریں';

  @override
  String get habitsCheckInHint => 'بدلنے کے لیے دبائے رکھیں';

  @override
  String get habitsName => 'نام';

  @override
  String get habitsColor => 'رنگ';

  @override
  String get habitsValidationDays => 'کم از کم ایک دن منتخب کریں';

  @override
  String habitsReminderAt(String time) {
    return 'ہر روز $time بجے';
  }

  @override
  String get habitsSetReminder => 'یاد دہانی کا وقت مقرر کریں';

  @override
  String get habitsRemoveReminder => 'یاد دہانی ہٹائیں';

  @override
  String get habitsReminderNote =>
      'اطلاعات کی اجازت ہو تو شیڈول والے دنوں میں یاد دہانیاں آتی ہیں۔';

  @override
  String get habitsArchived => 'عادت آرکائیو ہو گئی';

  @override
  String get habitsNotFound => 'یہ عادت اب دستیاب نہیں';

  @override
  String get habitsLast30 => 'پچھلے 30 دن';

  @override
  String get habitsConsistencyNone => 'ابھی کافی ڈیٹا نہیں';

  @override
  String get habitsCalendar => 'نشانات کا تاریخچہ';

  @override
  String get habitsCalendarHint => 'درست کرنے کے لیے کسی دن پر تھپتھپائیں۔';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $target میں سے $count';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'پچھلے 90 دنوں کے نشانات۔ باقاعدگی $percent۔';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'پچھلے 90 دنوں کے نشانات۔ ابھی کافی ڈیٹا نہیں۔';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن',
      one: '1 دن',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'رکے ہوئے دن آپ کے تسلسل پر اثر نہیں ڈالتے۔';

  @override
  String get habitsListSeparator => '، ';

  @override
  String get habitsArchive => 'عادت آرکائیو کریں';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'دن میں $count بار',
      one: 'دن میں ایک بار',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'دیگر نوٹس';

  @override
  String get notesAllNotebooks => 'تمام نوٹ بکس';

  @override
  String get notesNotebookName => 'نوٹ بک کا نام';

  @override
  String get notesNotebookColor => 'رنگ';

  @override
  String get notesDeleteNotebook => 'نوٹ بک حذف کریں';

  @override
  String get notesDeleteNotebookMessage =>
      'نوٹ بک ہٹا دی جائے گی۔ اس کے نوٹس باقی رہیں گے اور تمام نوٹ بکس میں نظر آئیں گے۔';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'اہم نوٹس کو پن کریں تاکہ وہ اوپر رہیں۔';

  @override
  String get notesEmptyFavorites => 'جن نوٹس کو آپ پسندیدہ بنائیں گے وہ یہاں نظر آئیں گے۔';

  @override
  String get notesEmptyArchived => 'آرکائیو شدہ نوٹس یہاں نظر آئیں گے۔';

  @override
  String get notesEmptyFiltered => 'ان فلٹرز سے کوئی نوٹ میل نہیں کھاتا۔';

  @override
  String get notesArchivedSnack => 'نوٹ آرکائیو ہو گیا';

  @override
  String get notesUnarchivedSnack => 'نوٹ واپس آپ کے نوٹس میں آ گیا';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total میں سے $done ہو گئے';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'فارمیٹنگ';

  @override
  String get notesWrite => 'لکھیں';

  @override
  String get notesPreviewEmpty => 'ابھی پیش منظر کے لیے کچھ نہیں۔';

  @override
  String notesBacklinksEmpty(String title) {
    return 'ابھی کوئی اور نوٹ یہاں لنک نہیں کرتا۔ اس نوٹ سے [[$title]] کے ذریعے لنک کریں۔';
  }

  @override
  String get notesBacklinksNeedTitle => 'اس نوٹ کو عنوان دیں تاکہ دوسرے نوٹس اس سے لنک کر سکیں۔';

  @override
  String get notesLinkedTasksEmpty => 'اس نوٹ سے کوئی کام جڑا نہیں۔';

  @override
  String notesLinkMissing(String title) {
    return '\"$title\" نام کا کوئی نوٹ ابھی موجود نہیں۔';
  }

  @override
  String get notesNotFound => 'یہ نوٹ اب موجود نہیں۔';

  @override
  String notesCheckboxSemantics(String label) {
    return 'چیک لسٹ آئٹم: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'نوٹ $title کھولیں';
  }

  @override
  String get notesTagsHint => 'نوٹ میں #ٹیگ لکھ کر ٹیگ شامل کریں۔';

  @override
  String get notesTaskDone => 'مکمل';

  @override
  String get notifTimerDoneBody => 'آپ کا مقرر کردہ وقت پورا ہو گیا۔';

  @override
  String get onboardingPrivatePointDevice => 'صرف اسی آلے پر، انکرپٹڈ';

  @override
  String get onboardingPrivatePointAccount => 'اکاؤنٹ کی ضرورت نہیں';

  @override
  String get onboardingPrivatePointTracking => 'نہ تجزیات، نہ ٹریکنگ';

  @override
  String get onboardingLanguageBody => 'آپ اسے ترتیبات میں کبھی بھی بدل سکتے ہیں۔';

  @override
  String get onboardingNext => 'اگلا';

  @override
  String get projectsActive => 'فعال';

  @override
  String get projectNameHint => 'مثلاً پروڈکٹ کا آغاز';

  @override
  String get projectGoalHint => 'مکمل ہونے پر کیسا نظر آئے گا؟';

  @override
  String get projectNoDeadline => 'کوئی مہلت نہیں';

  @override
  String get projectTasksOpen => 'کھلے کام';

  @override
  String get projectTasksCompleted => 'مکمل کام';

  @override
  String get projectAddTask => 'پروجیکٹ میں کام شامل کریں';

  @override
  String get projectAddNote => 'نیا پروجیکٹ نوٹ';

  @override
  String get projectLinkedNotes => 'نوٹس';

  @override
  String get projectNoTasks => 'اس پروجیکٹ میں ابھی کوئی کام نہیں';

  @override
  String get projectArchivedBadge => 'آرکائیو شدہ';

  @override
  String get projectDeleted => 'پروجیکٹ ٹوکری میں منتقل ہو گیا';

  @override
  String get projectDeleteMessage => 'کام بغیر پروجیکٹ کے آپ کی فہرست میں رہیں گے۔';

  @override
  String projectSemantics(String name, int percent) {
    return '$name، $percent فیصد مکمل';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نتائج',
      one: '1 نتیجہ',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'قسم کے لحاظ سے فلٹر';

  @override
  String searchRecentTap(String query) {
    return '$query دوبارہ تلاش کریں';
  }

  @override
  String get settingsLanguageHint =>
      'پوری ایپ کی زبان منتخب کریں۔ نام ان کی اپنی زبان میں دکھائے جاتے ہیں۔';

  @override
  String get settingsThemeHint => 'ہلکا، گہرا یا سسٹم کے مطابق';

  @override
  String settingsDecrease(String setting) {
    return '$setting کم کریں';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting بڑھائیں';
  }

  @override
  String get settingsQuietStart => 'آغاز';

  @override
  String get settingsQuietEnd => 'اختتام';

  @override
  String get settingsNotificationsHint =>
      'یہ ایپ میں آپ کی پسند محفوظ کرتا ہے۔ سسٹم الگ سے اجازت بھی مانگ سکتا ہے۔';

  @override
  String get settingsDashboardHint => 'ترتیب بدلنے کے لیے گھسیٹیں۔ غیر ضروری حصے بند کر دیں۔';

  @override
  String settingsDashboardReorder(String section) {
    return '$section کی ترتیب بدلیں';
  }

  @override
  String get settingsDashboardReset => 'پہلے والی ترتیب بحال کریں';

  @override
  String get settingsAssistantDesc =>
      'اختیاری منصوبہ بندی مدد۔ فراہم کنندہ جوڑے بغیر کچھ بھی اس آلے سے باہر نہیں جاتا۔';

  @override
  String get settingsAssistantSetup => 'معاون اور فراہم کنندہ کی ترتیب';

  @override
  String get settingsTrashDesc => 'ہٹائی گئی اشیاء بحال کریں یا ہمیشہ کے لیے حذف کریں';

  @override
  String get settingsEraseFirstBody =>
      'یہ واپس نہیں ہو سکتا۔ پہلے انکرپٹڈ بیک اپ بنانے پر غور کریں۔';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word لکھیں';
  }

  @override
  String get settingsEraseFailed => 'ڈیٹا نہیں مٹایا جا سکا۔ کچھ نہیں بدلا۔';

  @override
  String get settingsAboutTagline => 'ایک نجی، آلے پر چلنے والی پیداواری جگہ۔';

  @override
  String get backupShowPassword => 'پاس ورڈ دکھائیں';

  @override
  String get backupHidePassword => 'پاس ورڈ چھپائیں';

  @override
  String get backupSaved => 'بیک اپ محفوظ ہو گیا';

  @override
  String get backupFailed => 'بیک اپ نہیں بن سکا۔ آپ کا ڈیٹا ویسا ہی ہے۔';

  @override
  String get backupReadFailed => 'منتخب فائل پڑھی نہیں جا سکی۔';

  @override
  String get backupRestoreFailed => 'بحالی ناکام۔ کچھ نہیں بدلا۔';

  @override
  String get backupShareSubject => 'Deep Focus انکرپٹڈ بیک اپ';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ہر $count دن بعد',
      one: 'ہر روز',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ہر $count ہفتے بعد',
      one: 'ہر ہفتے',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ہر $count مہینے بعد',
      one: 'ہر مہینے',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ہر $count سال بعد',
      one: 'ہر سال',
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
    return '$days کو';
  }

  @override
  String get repeatEndsLabel => 'اختتام';

  @override
  String get repeatEndsAfter => 'ایک مقررہ تعداد کے بعد';

  @override
  String get repeatCountLabel => 'تعداد';

  @override
  String get reminderNone => 'کوئی یاد دہانی نہیں';

  @override
  String get reminderCustomTime => 'مخصوص وقت پر';

  @override
  String get a11yDecrease => 'کم کریں';

  @override
  String get a11yIncrease => 'بڑھائیں';

  @override
  String get pickTaskTitle => 'کام منتخب کریں';

  @override
  String get pickTaskEmpty => 'کوئی کھلا کام نہیں';

  @override
  String get tasksSearchTooltip => 'کام تلاش کریں';

  @override
  String get tasksSectionOverdue => 'تاخیر شدہ';

  @override
  String get tasksSectionToday => 'آج';

  @override
  String get tasksRecurringSemantics => 'دہرایا جاتا ہے';

  @override
  String get tasksFilterPriorityAtLeast => 'کم از کم ترجیح';

  @override
  String get tasksFilterCategory => 'زمرہ';

  @override
  String get tasksFilterAnyCategory => 'کوئی بھی زمرہ';

  @override
  String get tasksFilterLabel => 'لیبل';

  @override
  String get tasksFilterAnyLabel => 'کوئی بھی لیبل';

  @override
  String get tasksFilterReset => 'فلٹر صاف کریں';

  @override
  String get tasksViewByProject => 'پروجیکٹ کے لحاظ سے';

  @override
  String get tasksViewByPriority => 'ترجیح کے لحاظ سے';

  @override
  String get tasksViewByCategory => 'زمرے کے لحاظ سے';

  @override
  String get tasksGroupNoCategory => 'کوئی زمرہ نہیں';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کاموں',
      one: '1 کام',
    );
    return '$_temp0 کی وجہ سے رکا ہوا';
  }

  @override
  String get taskBlockedWarning => 'یہ کام نامکمل کاموں کی وجہ سے رکا ہے۔ پھر بھی مکمل کریں؟';

  @override
  String get taskStartFocus => 'اس کام پر فوکس کریں';

  @override
  String get taskRemoveDate => 'تاریخ ہٹائیں';

  @override
  String get taskAllDay => 'کوئی مخصوص وقت نہیں';

  @override
  String get taskSaved => 'کام محفوظ ہو گیا';

  @override
  String get taskCreated => 'کام بن گیا';

  @override
  String get taskReminderNeedsDue => 'نسبتی یاد دہانی کے لیے آخری تاریخ مقرر کریں';

  @override
  String get taskSubtaskDetailsHint =>
      'ذیلی کام، چیک لسٹ آئٹمز، لیبلز اور انحصار شامل کرنے کے لیے پہلے کام محفوظ کریں۔';

  @override
  String get taskLabelName => 'لیبل کا نام';

  @override
  String get taskMoreDetails => 'تفصیلات';

  @override
  String get taskPlanning => 'منصوبہ بندی';

  @override
  String get taskOrganize => 'ترتیب';

  @override
  String get taskBreakdown => 'تقسیم';

  @override
  String get trashDeleteTaskTitle => 'یہ کام ہمیشہ کے لیے حذف کریں؟';

  @override
  String get trashDeleteNoteTitle => 'یہ نوٹ ہمیشہ کے لیے حذف کریں؟';

  @override
  String get trashDeleteBody => 'یہ واپس نہیں ہو سکتا۔';

  @override
  String get trashEmptyTitle => 'ٹوکری خالی کریں؟';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آئٹمز ہمیشہ کے لیے حذف ہو جائیں گے۔',
      one: '1 آئٹم ہمیشہ کے لیے حذف ہو جائے گا۔',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'بحال ہو گیا';

  @override
  String get trashPurged => 'ہمیشہ کے لیے حذف';

  @override
  String trashDeletedOn(String date) {
    return '$date کو حذف ہوا';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آئٹمز',
      one: '1 آئٹم',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'بلند آواز سے پڑھیں';

  @override
  String get flashcardsTtsUnavailable => 'اس آلے پر متن سے آواز دستیاب نہیں۔';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'اس زبان کی کوئی آواز انسٹال نہیں۔ Android کی متن سے آواز کی ترتیبات میں شامل کریں۔';

  @override
  String get calendarAgenda => 'ایجنڈا';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'چنگاری',
      'rocket': 'راکٹ',
      'book': 'کتاب',
      'work': 'کام',
      'home': 'گھر',
      'heart': 'دل',
      'code': 'کوڈ',
      'palette': 'رنگ پٹی',
      'fitness': 'فٹنس',
      'school': 'اسکول',
      'travel': 'سفر',
      'money': 'بچت',
      'other': 'آئیکن',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'مزید خانے';

  @override
  String get cardFieldExample => 'مثال';

  @override
  String get cardFieldExplanation => 'وضاحت';

  @override
  String get cardFieldPronunciation => 'تلفظ';

  @override
  String get cardFieldNotes => 'اضافی نوٹس';

  @override
  String get projectMilestones => 'سنگ میل';

  @override
  String get milestoneAdd => 'سنگ میل شامل کریں';

  @override
  String get milestoneEdit => 'سنگ میل میں ترمیم';

  @override
  String get milestoneTitleLabel => 'سنگ میل';

  @override
  String get milestoneNoDate => 'کوئی تاریخ نہیں';

  @override
  String get milestonesEmpty =>
      'ابھی کوئی سنگ میل نہیں۔ کیلنڈر پر پروجیکٹ دیکھنے کے لیے تاریخ والے مراحل شامل کریں۔';

  @override
  String get milestoneDeleted => 'سنگ میل حذف ہو گیا';

  @override
  String milestoneDoneA11y(String title) {
    return 'سنگ میل \"$title\" کو مکمل نشان زد کریں';
  }

  @override
  String calendarMilestone(String project) {
    return 'سنگ میل · $project';
  }

  @override
  String get tasksViewInbox => 'ان باکس';

  @override
  String get tasksViewArchived => 'آرکائیو';

  @override
  String get tasksEmptyInbox =>
      'بغیر پروجیکٹ یا تاریخ کے کام یہاں آتے ہیں۔ فرصت ملے تو ترتیب دے دیں۔';

  @override
  String get tasksEmptyArchived =>
      'آرکائیو شدہ کام آپ کی فہرستوں اور یاد دہانیوں سے الگ یہاں رکھے جاتے ہیں۔';

  @override
  String get taskArchivedBadge => 'آرکائیو شدہ';

  @override
  String get taskStatusInProgress => 'جاری';

  @override
  String get taskArchived => 'کام آرکائیو ہو گیا';

  @override
  String get taskUnarchived => 'کام آرکائیو سے واپس آ گیا';

  @override
  String get focusPlanTitle => 'سیشن منصوبہ';

  @override
  String focusPlanTotal(String duration) {
    return 'کل $duration';
  }

  @override
  String get focusPlanRounds => 'فوکس سیشنز';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'طویل وقفہ اتنے کے بعد';

  @override
  String get focusPlanSkipLastBreak => 'آخری وقفہ چھوڑیں';

  @override
  String get focusPlanAutoBreaks => 'وقفے خود بخود شروع کریں';

  @override
  String get focusPlanAutoFocus => 'وقفے کے بعد فوکس خود بخود شروع کریں';

  @override
  String get focusPlanSave => 'منصوبہ محفوظ کریں';

  @override
  String get focusPlanNameHint => 'مثلاً امتحان کی تیاری';

  @override
  String get focusPlanSaved => 'منصوبہ محفوظ ہو گیا';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work منٹ فوکس، $rest منٹ وقفہ';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label کم کریں';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label بڑھائیں';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'سیشن $current از $total';
  }

  @override
  String get focusSeriesComplete => 'سلسلہ مکمل۔ شاباش!';

  @override
  String get filterAll => 'سب';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added درآمد · $duplicates دہرائے ہوئے چھوڑے · $invalid نامکمل سطریں';
  }

  @override
  String get flashcardsSuspend => 'کارڈ معطل کریں';

  @override
  String get flashcardsResume => 'کارڈ دوبارہ شروع کریں';

  @override
  String get flashcardsSuspended => 'کارڈ معطل: یہ شیڈول نہیں ہوگا';

  @override
  String get flashcardsResumed => 'کارڈ دوبارہ شروع ہو گیا';

  @override
  String get flashcardsSuspendedFilter => 'معطل';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$total میں سے $shown کارڈ';
  }

  @override
  String get flashcardsImportFile => 'فائل سے';

  @override
  String get speechTitle => 'آواز';

  @override
  String get speechAppLanguage => 'ایپ کی زبان';

  @override
  String get speechFrontLanguage => 'سامنے والی زبان';

  @override
  String get speechBackLanguage => 'پیچھے والی زبان';

  @override
  String get speechRepeat => 'ہر بار پڑھنا دہرائیں';

  @override
  String get speechRate => 'رفتار';

  @override
  String get speechAutoRead => 'سوال خود بخود پڑھیں';

  @override
  String get speechHint =>
      'اس آلے پر انسٹال آوازیں آف لائن استعمال کرتا ہے۔ اگر کسی زبان کی آواز نہ ہو تو آپ کو بتایا جائے گا اور اس کی جگہ کچھ اور استعمال نہیں ہوگا۔';

  @override
  String get studyHowTitle => 'آپ کیسے پڑھنا چاہتے ہیں؟';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ دہرائیں',
      one: '1 کارڈ دہرائیں',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'تمام کارڈز کی مشق (شیڈول نہیں بدلتا)';

  @override
  String get studyPracticeMistakes => 'حالیہ غلطیوں کی مشق';

  @override
  String get studyPracticeHint =>
      'مشق کبھی کارڈز کا شیڈول نہیں بدلتی۔ دہرائی شیڈول کو تازہ کرتی ہے۔';

  @override
  String get studyModeClassic => 'کلاسیکی';

  @override
  String get studyModeReverse => 'الٹا';

  @override
  String get studyModeMixed => 'دونوں طرف';

  @override
  String get studyModeTyped => 'جواب ٹائپ کریں';

  @override
  String get studyModeChoice => 'کثیر انتخابی';

  @override
  String get studyModeListening => 'سننا';

  @override
  String get studyPractice => 'مشق';

  @override
  String get studyNoMistakes => 'اس ڈیک میں حالیہ کوئی غلطی نہیں۔ بہت خوب!';

  @override
  String get studyTypeAnswer => 'اپنا جواب لکھیں';

  @override
  String get studyCheck => 'جانچیں';

  @override
  String get studyKnewIt => 'مجھے معلوم تھا';

  @override
  String get studyDidntKnow => 'معلوم نہیں تھا';

  @override
  String studyMistakes(int count) {
    return 'چھوٹے ہوئے ($count)';
  }

  @override
  String get studyRepeatMistakes => 'چھوٹے ہوئے کارڈ دہرائیں';

  @override
  String get studyCorrect => 'درست';

  @override
  String get studyAlmost => 'تقریباً — ہجے دیکھ لیں';

  @override
  String get studyWrong => 'ٹھیک نہیں';

  @override
  String get studyShowText => 'متن دکھائیں';

  @override
  String get flashcardsImportFileFailed =>
      'فائل نہیں کھل سکی۔ اس کی جگہ اس کا مواد چسپاں کر سکتے ہیں۔';

  @override
  String get studyNoMatchingCards => 'اس انتخاب کے مطابق ابھی کوئی کارڈ نہیں۔';

  @override
  String get studyPracticeNew => 'صرف نئے';

  @override
  String get studyPracticeHard => 'مشکل کارڈ';

  @override
  String get studyPracticeFavorites => 'پسندیدہ';

  @override
  String get studySessionSize => 'فی سیشن کارڈ';

  @override
  String get studySessionAll => 'سب';

  @override
  String get studyOrder => 'ترتیب';

  @override
  String get studyOrderDue => 'سب سے زیادہ تاخیر والے پہلے';

  @override
  String get studyOrderRandom => 'بے ترتیب';

  @override
  String get studyOrderHardest => 'سب سے مشکل پہلے';

  @override
  String get flashcardsHard => 'مشکل';

  @override
  String get flashcardsFavorites => 'پسندیدہ';

  @override
  String get flashcardsFavorite => 'پسندیدہ میں شامل کریں';

  @override
  String get flashcardsUnfavorite => 'پسندیدہ سے ہٹائیں';

  @override
  String get flashcardsDuplicate => 'نقل بنائیں';

  @override
  String get flashcardsMoveTo => 'ڈیک میں منتقل کریں';

  @override
  String get flashcardsNoOtherDeck => 'پہلے ایک اور ڈیک بنائیں۔';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ منتقل ہو گئے',
      one: 'کارڈ منتقل ہو گیا',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'ٹیگ شامل کریں';

  @override
  String get flashcardsTagHint => 'مثلاً افعال';

  @override
  String flashcardsSelected(int count) {
    return '$count منتخب';
  }

  @override
  String get flashcardsSelectAll => 'دکھائے گئے سب منتخب کریں';

  @override
  String flashcardsSelectCard(String front) {
    return '$front منتخب کریں';
  }

  @override
  String flashcardsRecall(String value) {
    return 'یاد $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'ممکنہ نقل';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'اس ڈیک میں پہلے سے “$front” → “$back” موجود ہے۔ پھر بھی محفوظ کریں؟';
  }

  @override
  String get flashcardsSaveAnyway => 'پھر بھی محفوظ کریں';

  @override
  String get flashcardsStats => 'اعداد و شمار';

  @override
  String get flashcardsStatTotal => 'کارڈز';

  @override
  String get flashcardsStatLearning => 'سیکھ رہے ہیں';

  @override
  String get flashcardsStatMatureCaption => '21+ دن یاد رہے';

  @override
  String get flashcardsStatReviewsToday => 'آج کی دہرائیاں';

  @override
  String get flashcardsStatCorrect => 'درست جوابات';

  @override
  String flashcardsStatLastDays(int days) {
    return 'پچھلے $days دن';
  }

  @override
  String get flashcardsStatForget => 'بھولنے کی شرح';

  @override
  String get flashcardsStatForgetCaption => 'سیکھے کارڈز پر “دوبارہ”';

  @override
  String get flashcardsStatRecall => 'ابھی یاد';

  @override
  String get flashcardsStatRecallCaption => 'FSRS اندازہ، دہرائے گئے کارڈ';

  @override
  String flashcardsStatActivity(int count) {
    return 'روزانہ دہرائیاں · کل $count';
  }

  @override
  String get flashcardsStatHistory => 'حالیہ جوابات';

  @override
  String get flashcardsStatNoHistory =>
      'ابھی کوئی دہرائی نہیں۔ اپنی پیش رفت یہاں دیکھنے کے لیے ڈیک پڑھیں۔';

  @override
  String flashcardsSpeakField(String field) {
    return '$field بلند آواز سے پڑھیں';
  }

  @override
  String get speechVoice => 'آواز';

  @override
  String get speechVoiceDefault => 'خودکار';

  @override
  String get speechVoiceOnline => 'انٹرنیٹ درکار';

  @override
  String get speechTest => 'آواز آزمائیں';

  @override
  String get importNext => 'پیش منظر';

  @override
  String get importPreviewTitle => 'کالموں کو خانوں سے ملائیں';

  @override
  String get importIgnoreColumn => 'نظر انداز کریں';

  @override
  String importColumn(int n) {
    return 'کالم $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready کارڈ تیار · $invalid نامکمل سطریں چھوڑ دی جائیں گی';
  }

  @override
  String get importNeedFrontBack => 'منتخب کریں کہ کون سے کالم سامنے اور پیچھے ہیں۔';

  @override
  String get actionMoveUp => 'اوپر لے جائیں';

  @override
  String get actionMoveDown => 'نیچے لے جائیں';

  @override
  String get flashcardsLayoutTitle => 'کارڈ کی ترتیب';

  @override
  String get flashcardsLayoutHint =>
      'اس ڈیک کے اضافی خانوں کا نام بدلیں، چھپائیں یا ترتیب دیں۔ کارڈ کا مواد کبھی نہیں بدلتا۔';

  @override
  String flashcardsLayoutShow(String field) {
    return 'پڑھتے وقت $field دکھائیں';
  }

  @override
  String get flashcardsLayoutStepReveal => 'جواب مرحلہ وار دکھائیں';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'پہلے پچھلا رخ آتا ہے؛ ہر اضافی خانہ ایک تھپتھپاہٹ سے کھلتا ہے۔';

  @override
  String flashcardsRevealNext(String field) {
    return '$field دکھائیں';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'یہ فائل $mb MB سے بڑی ہے۔';
  }

  @override
  String get flashcardsImage => 'تصویر';

  @override
  String get flashcardsAudio => 'آڈیو';

  @override
  String get flashcardsAddImage => 'تصویر شامل کریں';

  @override
  String get flashcardsAddAudio => 'آڈیو شامل کریں';

  @override
  String get flashcardsPlayAudio => 'ریکارڈنگ چلائیں';

  @override
  String get flashcardsAudioUnavailable => 'یہ ریکارڈنگ اس آلے پر نہیں چل سکتی۔';

  @override
  String get flashcardsCustomFields => 'آپ کے خانے';

  @override
  String get flashcardsTemplates => 'سانچے';

  @override
  String flashcardsNewFieldName(int n) {
    return 'خانہ $n';
  }

  @override
  String get flashcardsAddField => 'خانہ شامل کریں';

  @override
  String get flashcardsFieldName => 'خانے کا نام';

  @override
  String get flashcardsFieldLangDefault => 'رخ کی زبان';

  @override
  String get flashcardsTemplateConfirm =>
      'سانچہ طے کرتا ہے کہ خانے کیسے دکھیں اور اپنے خانے شامل کرتا ہے۔ آپ کے کارڈ اور موجودہ خانے ویسے ہی رہتے ہیں۔';

  @override
  String get flashcardsApplyTemplate => 'لاگو کریں';

  @override
  String get templateVocabulary => 'ذخیرۂ الفاظ';

  @override
  String get templateTwoTranslations => 'دو ترجموں والا لفظ';

  @override
  String get templateQuestionAnswer => 'سوال اور جواب';

  @override
  String get templateDefinition => 'اصطلاح اور تعریف';

  @override
  String get templateGrammar => 'گرامر کا اصول';

  @override
  String get templateFieldPlural => 'جمع';

  @override
  String get templateFieldTranslation2 => 'دوسرا ترجمہ';

  @override
  String get templateFieldSynonyms => 'مترادفات';

  @override
  String get templateFieldRule => 'اصول';

  @override
  String get deckCategory => 'سطح یا موضوع';

  @override
  String get deckCategoryHint => 'مثلاً A1، طب';

  @override
  String get flashcardsSearchAll => 'تمام کارڈز میں تلاش';

  @override
  String get flashcardsSearchAllHint => 'لفظ، ترجمہ، مثال، نوٹ، ٹیگ…';

  @override
  String get flashcardsAllDecks => 'تمام ڈیکس';

  @override
  String get flashcardsAllLanguages => 'تمام زبانیں';

  @override
  String get flashcardsLangUnset => 'زبان مقرر نہیں';

  @override
  String get flashcardsLevelUnset => 'کوئی سطح یا موضوع نہیں';

  @override
  String get flashcardsByLanguage => 'زبان کے لحاظ سے پیش رفت';

  @override
  String get flashcardsByLevel => 'سطح یا موضوع کے لحاظ سے پیش رفت';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks ڈیکس · $cards کارڈز · $mature پختہ · $due واجب · $correct درست (30 دن)';
  }

  @override
  String get flashcardsRecord => 'ریکارڈ';

  @override
  String get flashcardsRecording => 'ریکارڈنگ ہو رہی ہے…';

  @override
  String get flashcardsRecordStop => 'روکیں اور رکھیں';

  @override
  String get flashcardsMicDenied =>
      'مائیکروفون کی رسائی بند ہے۔ ریکارڈ کرنے کے لیے سسٹم کی ترتیبات میں اجازت دیں۔';

  @override
  String get flashcardsRecordFailed => 'اس آلے پر ریکارڈنگ دستیاب نہیں۔';

  @override
  String get soundsTitle => 'آوازیں';

  @override
  String get soundsNature => 'فطرت';

  @override
  String get soundsNoise => 'فوکس شور';

  @override
  String get soundRain => 'بارش';

  @override
  String get soundStorm => 'گرج چمک کا طوفان';

  @override
  String get soundRiver => 'دریا';

  @override
  String get soundOcean => 'سمندر کی لہریں';

  @override
  String get soundFire => 'الاؤ';

  @override
  String get soundForest => 'جنگل کے پرندے';

  @override
  String get soundNight => 'گرمیوں کی رات';

  @override
  String get soundWhite => 'سفید شور';

  @override
  String get soundPink => 'گلابی شور';

  @override
  String get soundBrown => 'بھورا شور';

  @override
  String get soundsPlay => 'چلائیں';

  @override
  String get soundsSleep => 'نیند ٹائمر';

  @override
  String get soundsSleepOff => 'بند';

  @override
  String soundsSleepAt(String time) {
    return '$time بجے رکے گا';
  }

  @override
  String soundsMixFull(int count) {
    return 'ایک ساتھ زیادہ سے زیادہ $count آوازیں چل سکتی ہیں۔';
  }

  @override
  String get soundsHint =>
      'شروع کرنے کے لیے کسی آواز پر تھپتھپائیں۔ کئی ملائیں اور ہر ایک کی آواز سیٹ کریں۔';

  @override
  String get soundsMixer => 'آمیزہ';

  @override
  String soundsVolumeOf(String name) {
    return '$name کی آواز';
  }

  @override
  String get soundsChannel => 'فطرت کی آوازیں';

  @override
  String get settingsEndTone => 'ٹائمر ختم ہونے کی آواز';

  @override
  String get toneGentle => 'نرم بیپ';

  @override
  String get toneBeeps => 'بیپ';

  @override
  String get toneWood => 'لکڑی پر دستک';

  @override
  String get toneBird => 'پرندے کی آواز';

  @override
  String get toneStream => 'ندی';

  @override
  String get toneSystem => 'فون کی آواز';

  @override
  String get speechOnPhone => 'اس فون پر';

  @override
  String get speechAllLanguages => 'تمام زبانیں';

  @override
  String get speechSearchLanguage => 'زبانیں تلاش کریں';

  @override
  String get speechGetVoices => 'مزید آوازیں ڈاؤن لوڈ کریں';

  @override
  String get speechGetVoicesHint =>
      'جن زبانوں کی آواز نہیں، وہ فون کی اسپیچ ترتیبات سے ڈاؤن لوڈ کی جا سکتی ہیں۔';

  @override
  String get speechSettingsFailed => 'اس فون پر اسپیچ ترتیبات نہیں کھل سکیں۔';

  @override
  String get speechVoiceMissing => 'کوئی آواز انسٹال نہیں';

  @override
  String get speechPause => 'دہرانے کے بیچ وقفہ';

  @override
  String speechSeconds(String seconds) {
    return '$seconds سیکنڈ';
  }

  @override
  String get speechExample => 'جواب کے ساتھ مثال پڑھیں';

  @override
  String get flashListen => 'سنیں';

  @override
  String get flashListenNext => 'اگلا کارڈ';

  @override
  String get flashListenEmpty => 'سننے کے لیے کوئی کارڈ نہیں۔';

  @override
  String get flashViewTable => 'جدول';

  @override
  String get flashViewCards => 'کارڈز';

  @override
  String get flashSwapSides => 'کالم بدلیں';

  @override
  String get flashSort => 'ترتیب';

  @override
  String get flashSortNewest => 'نئے پہلے';

  @override
  String get flashSortAlpha => 'حروفِ تہجی کے لحاظ سے';

  @override
  String get flashSortDue => 'واجب پہلے';

  @override
  String get flashSortHard => 'سب سے مشکل پہلے';

  @override
  String get flashPasteCards => 'کارڈ چسپاں کریں';

  @override
  String get flashClipboardEmpty => 'کلپ بورڈ میں کوئی متن نہیں۔';

  @override
  String get flashMenuAdd => 'کارڈ شامل کریں';

  @override
  String get flashMenuDeck => 'ڈیک';

  @override
  String get flashToday => 'آج';

  @override
  String get flashStudyNow => 'پڑھیں';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈز کے جواب دیے',
      one: '1 کارڈ کا جواب دیا',
      zero: 'کسی کارڈ کا جواب نہیں دیا',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'جنگل میں بارش';

  @override
  String get autoBackupTitle => 'خودکار بیک اپ';

  @override
  String get autoBackupDesc => 'ہر روز اسی فون پر؛ آخری 7 محفوظ رہتے ہیں';

  @override
  String get autoBackupHint =>
      'یہ کاپیاں اسی فون پر رہتی ہیں اور ایپ ہٹانے پر مٹ جاتی ہیں۔ نئے فون پر جانے کے لیے “بیک اپ” سے ایک فائل محفوظ کریں۔';

  @override
  String get autoBackupNone => 'ابھی کوئی خودکار بیک اپ نہیں۔ پہلا آج بنے گا۔';

  @override
  String get autoBackupRestore => 'بحال کریں';

  @override
  String autoBackupConfirm(String date) {
    return 'تمام موجودہ ڈیٹا کو $date کے بیک اپ سے بدل دیں؟';
  }

  @override
  String get autoBackupRestored => 'بحال ہو گیا۔';

  @override
  String get errorLogTitle => 'غلطیوں کا ریکارڈ';

  @override
  String get errorLogHint =>
      'اگر کچھ غلط ہو تو یہاں درج ہوتا ہے: صرف غلطی کی قسم اور کوڈ میں اس کی جگہ، کبھی آپ کا مواد نہیں۔ مسئلہ حل کرنے میں مدد کے لیے شیئر کریں۔';

  @override
  String get errorLogEmpty => 'کوئی غلطی درج نہیں۔';

  @override
  String get errorLogClear => 'صاف کریں';

  @override
  String get soundsWithFocus => 'فوکس سیشنز کے ساتھ چلائیں';

  @override
  String get soundsWithFocusHint =>
      'آپ کا آمیزہ فوکس سیشن کے ساتھ شروع ہوتا ہے اور وقفوں میں رک جاتا ہے۔';

  @override
  String get soundsSavedMixes => 'محفوظ آمیزے';

  @override
  String get soundsSaveMix => 'یہ آمیزہ محفوظ کریں';

  @override
  String get soundsMixNameHint => 'نام، مثلاً بارش والی لائبریری';

  @override
  String soundsDeleteMix(String name) {
    return 'آمیزہ “$name” حذف کریں؟';
  }

  @override
  String get settingsReviewReminderHint => 'دن میں ایک بار، صرف جب کارڈ واجب ہوں';

  @override
  String get settingsReviewTime => 'یاد دہانی کا وقت';

  @override
  String get shortcutFocus => 'فوکس';

  @override
  String get shortcutNewTask => 'نیا کام';

  @override
  String get shortcutReview => 'کارڈ دہرائیں';

  @override
  String get shortcutSounds => 'فطرت کی آوازیں';

  @override
  String get myDayTitle => 'میرا دن شروع کریں';

  @override
  String get myDayHint => 'ایک نظر میں آپ کا دن، پھر ایک تھپتھپاہٹ سے فوکس';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آج $count کام',
      one: 'آج 1 کام',
      zero: 'آج کوئی کام نہیں',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'آج مزید کوئی تقریب نہیں';

  @override
  String myDayNextEvent(String title, String time) {
    return 'اگلا: $title، $time بجے';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عادات باقی',
      one: '1 عادت باقی',
      zero: 'تمام عادات مکمل',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'فوکس سیشن سے شروع کریں';

  @override
  String get hijriMonth1 => 'محرم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربیع الاول';

  @override
  String get hijriMonth4 => 'ربیع الثانی';

  @override
  String get hijriMonth5 => 'جمادی الاول';

  @override
  String get hijriMonth6 => 'جمادی الثانی';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوال';

  @override
  String get hijriMonth11 => 'ذوالقعدہ';

  @override
  String get hijriMonth12 => 'ذوالحجہ';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year ہجری';
  }

  @override
  String get settingsHijri => 'ہجری تاریخیں';

  @override
  String get settingsHijriHint => 'کیلنڈر اور ہوم اسکرین پر دکھائی جاتی ہیں (ام القریٰ)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن',
      one: '1 دن',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'آج $goal میں سے $done کارڈ';
  }

  @override
  String get studyGoalReached => 'روزانہ ہدف پورا۔ شاباش!';

  @override
  String get studyWeekTitle => 'آپ کا ہفتہ';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 دن میں $count کارڈز کے جواب',
      one: '7 دن میں 1 کارڈ کا جواب',
      zero: '7 دن میں کسی کارڈ کا جواب نہیں',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7 دن میں $duration فوکس';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'تسلسل: $current · بہترین: $best';
  }

  @override
  String get studyGoalTitle => 'روزانہ ہدف (کارڈز)';

  @override
  String get studyGoalOff => 'بند';

  @override
  String get focusDndTitle => 'فوکس کے دوران ڈسٹرب نہ کریں';

  @override
  String get focusDndHint => 'ہر فوکس سیشن میں آن ہوتا ہے اور وقفے میں بند ہو جاتا ہے';

  @override
  String get focusDndNeedsAccess => 'اسے استعمال کرنے کے لیے فون کی ترتیبات میں رسائی کی اجازت دیں';

  @override
  String get voiceInput => 'بول کر لکھیں';

  @override
  String get voiceInputPrompt => 'اب بولیں';

  @override
  String get voiceInputUnavailable =>
      'اس فون پر آواز سے لکھنا دستیاب نہیں۔ کوئی اسپیچ سروس انسٹال یا آن کریں (مثلاً Google کی Speech Recognition & Synthesis)۔';

  @override
  String get prayerFajr => 'فجر';

  @override
  String get prayerSunrise => 'طلوعِ آفتاب';

  @override
  String get prayerDhuhr => 'ظہر';

  @override
  String get prayerAsr => 'عصر';

  @override
  String get prayerMaghrib => 'مغرب';

  @override
  String get prayerIsha => 'عشاء';

  @override
  String get prayerMethodMwl => 'مسلم ورلڈ لیگ';

  @override
  String get prayerMethodUmmAlQura => 'ام القریٰ، مکہ مکرمہ';

  @override
  String get prayerMethodEgypt => 'مصری جنرل اتھارٹی';

  @override
  String get prayerMethodJordan => 'اردن، وزارتِ اوقاف';

  @override
  String get prayerMethodKarachi => 'جامعہ علوم اسلامیہ، کراچی';

  @override
  String get prayerMethodIsna => 'اسلامک سوسائٹی آف نارتھ امریکہ';

  @override
  String get prayerMethodGulf => 'خلیجی خطہ';

  @override
  String get prayerMethodKuwait => 'کویت';

  @override
  String get prayerMethodQatar => 'قطر';

  @override
  String get prayerMethodTurkey => 'ترکیہ، دیانت';

  @override
  String get prayerMethodSingapore => 'سنگاپور، ملائیشیا، انڈونیشیا';

  @override
  String get prayerMethodFrance => 'فرانس (12°)';

  @override
  String get prayerMethodRussia => 'روس، روحانی انتظامیہ';

  @override
  String prayerNotifTitle(String name) {
    return '$name کا وقت';
  }

  @override
  String prayerNotifBody(String time) {
    return 'نماز کا وقت · $time';
  }

  @override
  String get prayerTitle => 'نماز کے اوقات';

  @override
  String get prayerOffHint =>
      'نماز کے اوقات دیکھنے کے لیے اپنا شہر منتخب کریں۔ اوقات فون پر ہی حساب ہوتے ہیں؛ مقام کی رسائی درکار نہیں۔';

  @override
  String get prayerChooseCity => 'شہر منتخب کریں';

  @override
  String get prayerCity => 'شہر';

  @override
  String get prayerCitySearch => 'شہر تلاش کریں';

  @override
  String get prayerMethod => 'حساب کا طریقہ';

  @override
  String get prayerHanafiAsr => 'حنفی عصر (بعد کا وقت)';

  @override
  String get prayerReminders => 'ہر نماز کے وقت اطلاع دیں';

  @override
  String get prayerPauseFocus => 'نماز کے وقت فوکس روکیں';

  @override
  String get prayerPauseFocusHint => 'جاری سیشن رک جائے گا؛ نماز کے بعد جاری رکھیں';

  @override
  String get prayerTurnOff => 'نماز کے اوقات بند کریں';

  @override
  String get prayerAccuracyNote => 'حساب شدہ اوقات آپ کی مقامی مسجد سے چند منٹ مختلف ہو سکتے ہیں۔';

  @override
  String prayerNext(String name, String time) {
    return '$name، $time بجے';
  }

  @override
  String get importAnkiNewFormat =>
      'یہ Anki فائل نیا ترین فارمیٹ استعمال کرتی ہے۔ Anki میں “Support older Anki versions” آن کر کے دوبارہ برآمد کریں، پھر وہ فائل درآمد کریں۔';

  @override
  String get importTemplate => 'اسپریڈشیٹ سانچہ';

  @override
  String get importTemplateFront => 'سیب';

  @override
  String get importTemplateBack => 'ایک گول پھل';

  @override
  String get importTemplateExample => 'میں ہر روز ایک سیب کھاتا ہوں۔';

  @override
  String get importTemplateTag => 'کھانا';

  @override
  String get starterTitle => 'ابتدائی ڈیکس';

  @override
  String get starterHint =>
      'فوراً پڑھائی آزمانے کے لیے ایک شامل کریں۔ بعد میں ترمیم یا حذف کر سکتے ہیں۔';

  @override
  String get starterAdd => 'شامل کریں';

  @override
  String get starterWords => 'روزمرہ انگریزی الفاظ (عربی معانی کے ساتھ)';

  @override
  String get starterCapitals => 'دنیا کے دارالحکومت';

  @override
  String get starterElements => 'کیمیائی عناصر';

  @override
  String get settingsAccent => 'نمایاں رنگ';

  @override
  String get accentViolet => 'بنفشی';

  @override
  String get accentBlue => 'نیلا';

  @override
  String get accentTeal => 'فیروزی';

  @override
  String get accentGreen => 'سبز';

  @override
  String get accentRose => 'گلابی';

  @override
  String get accentAmber => 'کہربائی';

  @override
  String get settingsFlashTextSize => 'فلیش کارڈ کے متن کا سائز';

  @override
  String get settingsFlashTextSample => 'مثال';

  @override
  String get widgetStartFocus => 'فوکس کے لیے تھپتھپائیں';

  @override
  String widgetFocusUntil(String time) {
    return '$time تک فوکس';
  }

  @override
  String get widgetNoCardsDue => 'کارڈز: سب مکمل';

  @override
  String get faqMyDayQ => '“میرا دن شروع کریں” کیا کرتا ہے؟';

  @override
  String get faqMyDayA =>
      'ہوم اسکرین اسے دن میں ایک بار پیش کرتی ہے: آج کے کام، اگلی تقریب، باقی عادات اور واجب کارڈز دیکھیں، پھر ایک تھپتھپاہٹ سے فوکس سیشن شروع کریں۔ فوری کاموں کے لیے ایپ آئیکن دبائے رکھیں، یا فوکس وقت اور واجب کارڈز دیکھنے کے لیے ہوم اسکرین ویجٹ شامل کریں۔';

  @override
  String get faqTasksQ => 'یاد دہانی کے ساتھ کام کیسے شامل کروں؟';

  @override
  String get faqTasksA =>
      'ہوم پر نیا کام یا کاموں میں + تھپتھپائیں۔ عنوان لکھیں یا مائیکروفون سے بولیں، پھر آخری تاریخ، وقت اور یاد دہانی مقرر کریں۔ تاخیر شدہ کام سب سے اوپر آتے ہیں۔';

  @override
  String get faqFocusQ => 'فوکس ٹائمر کیسے کام کرتا ہے؟';

  @override
  String get faqFocusA =>
      'پومودورو، الٹی گنتی یا آزاد وقت منتخب کر کے شروع دبائیں؛ وقفے خود بخود آ سکتے ہیں۔ ترتیبات میں اختتام کی آواز چن سکتے ہیں، فوکس کے دوران ڈسٹرب نہ کریں آن کر سکتے ہیں اور ہر سیشن کے ساتھ فطرت کی آوازیں چلا سکتے ہیں۔';

  @override
  String get faqSoundsQ => 'کیا میں فطرت کی آوازیں ملا سکتا ہوں؟';

  @override
  String get faqSoundsA =>
      'چھ تک اصل ریکارڈنگز آن کریں، ہر ایک کی آواز سیٹ کریں اور آمیزے کو نام سے محفوظ کریں۔ یہ پس منظر میں چلتی رہتی ہیں، اور نیند ٹائمر انہیں روک سکتا ہے۔ موسیقی استعمال نہیں ہوتی۔';

  @override
  String get faqCalendarQ => 'کیا کیلنڈر ہجری تاریخیں دکھا سکتا ہے؟';

  @override
  String get faqCalendarA =>
      'جی ہاں۔ ہجری تاریخیں (ام القریٰ) عربی میں خود بخود نظر آتی ہیں اور کسی بھی زبان کے لیے ترتیبات میں آن کی جا سکتی ہیں۔ تقریبات، آخری تاریخ والے کام اور پروجیکٹ کے سنگ میل ایک ساتھ نظر آتے ہیں۔';

  @override
  String get faqFlashcardsQ => 'دہرائی کیسے طے کرتی ہے کہ مجھے کون سے کارڈ دکھیں؟';

  @override
  String get faqFlashcardsA =>
      'جو کارڈ آپ اچھی طرح جانتے ہیں وہ لمبے وقفے کے بعد آتے ہیں اور جو بھول جائیں وہ جلد واپس آتے ہیں (وقفے سے دہرائی)۔ ہر جواب کو دوبارہ، مشکل، اچھا یا آسان سے درجہ دیں۔ روزانہ ہدف مقرر کریں اور آج کارڈ پر تسلسل برقرار رکھیں۔ باقی دن اور روزانہ کتنے نئے کارڈ سیکھنے ہیں دیکھنے کے لیے ڈیک میں امتحان کی تاریخ رکھیں۔ کارڈز گھسیٹ کر جگہ دینے کے لیے \"میری ترتیب\" سے ترتیب دیں، سننے کے لیے کسی بھی رخ پر اسپیکر تھپتھپائیں، اور رفتار اور دہرائی آواز کے مینو میں سیٹ کریں۔';

  @override
  String get faqImportQ => 'کیا میں Anki یا Excel سے کارڈ لا سکتا ہوں؟';

  @override
  String get faqImportA =>
      'جی ہاں۔ ڈیک میں درآمد منتخب کریں، پھر فائل چنیں: Anki (.apkg)، Excel (.xlsx) یا CSV، اور کالم ملائیں۔ کمپیوٹر پر کارڈ لکھنے کے لیے “اسپریڈشیٹ سانچہ” استعمال کریں۔ Anki فائلوں کی تصاویر اور آوازیں درآمد نہیں ہوتیں۔';

  @override
  String get faqNotesQ => 'نوٹس کیا کر سکتے ہیں؟';

  @override
  String get faqNotesA =>
      'چیک لسٹ اور فارمیٹنگ کے ساتھ آزادی سے لکھیں، اہم نوٹس پن یا پسندیدہ کریں، ٹیگز لگائیں اور نوٹس کو کاموں سے جوڑیں۔ مائیکروفون بٹن سے بول کر لکھ سکتے ہیں۔ نیا نوٹ کسی سانچے (لیکچر، کتاب کا خلاصہ، روزنامچہ، ہفتہ وار منصوبہ) سے شروع ہو سکتا ہے، اور تصویر کا بٹن تصاویر شامل کرتا ہے۔';

  @override
  String get faqHabitsQ => 'عادات کا تسلسل کیسے گنا جاتا ہے؟';

  @override
  String get faqHabitsA =>
      'شیڈول والے دن عادت کا ہدف پورا کرنے پر وہ دن شمار ہوتا ہے۔ عادت روکنے سے تسلسل محفوظ رہتا ہے۔ ہر عادت کی اپنی یاد دہانی کا وقت ہو سکتا ہے۔';

  @override
  String get faqGoalsQ => 'اہداف پیش رفت کیسے دیکھتے ہیں؟';

  @override
  String get faqGoalsA =>
      'ہدف کو ایک مقدار اور اکائی دیں، پھر پیش رفت درج کریں۔ اس کا کارڈ دکھاتا ہے کہ آپ کہاں تک پہنچے اور مہلت سے پہلے کتنا باقی ہے۔';

  @override
  String get faqProjectsQ => 'پروجیکٹس کس لیے ہیں؟';

  @override
  String get faqProjectsA =>
      'کاموں کو ایک پروجیکٹ میں رکھیں، تاریخ والے سنگ میل شامل کریں اور مجموعی پیش رفت دیکھیں۔ سنگ میل کیلنڈر میں بھی نظر آتے ہیں۔';

  @override
  String get faqInsightsQ => 'جائزہ کیا دکھاتا ہے؟';

  @override
  String get faqInsightsA =>
      'دنوں اور ہفتوں میں آپ کا فوکس وقت، مکمل کام اور پڑھائی، نرم تجاویز کے ساتھ۔ سب کچھ آپ کے فون پر حساب ہوتا ہے۔';

  @override
  String get faqSpacesQ => 'سارے حصے کہاں ہیں؟';

  @override
  String get faqSpacesA =>
      'اسپیسز میں ایپ کا ہر حصہ (نوٹس، ڈیکس، عادات، اہداف، پروجیکٹس، آوازیں اور مزید) موجود ہے تاکہ مرکزی پٹی سادہ رہے۔';

  @override
  String get faqBackupQ => 'میرے ڈیٹا کا بیک اپ کیسے ہوتا ہے؟';

  @override
  String get faqBackupA =>
      'ایپ ہر روز خاموشی سے اس فون پر ایک انکرپٹڈ کاپی رکھتی ہے اور آخری 7 محفوظ رکھتی ہے۔ ترتیبات میں آپ پاس ورڈ سے محفوظ بیک اپ فائل برآمد کر کے دوسرے فون پر بحال بھی کر سکتے ہیں۔';

  @override
  String get faqPrayerQ => 'نماز کے اوقات کیسے کام کرتے ہیں؟';

  @override
  String get faqPrayerA =>
      'ترتیبات → نماز کے اوقات میں اپنا شہر منتخب کریں۔ اوقات فون پر وہاں رائج طریقے سے حساب ہوتے ہیں، اور آپ طریقہ اور عصر کا مسلک بدل سکتے ہیں۔ ہر نماز پر اطلاع مل سکتی ہے، اور جاری فوکس سیشن رک جاتا ہے۔';

  @override
  String get faqPrivacyQ => 'میرا ڈیٹا کہاں محفوظ ہوتا ہے؟';

  @override
  String get faqPrivacyA =>
      'صرف آپ کے فون پر، ایک انکرپٹڈ ڈیٹا بیس میں۔ نہ اکاؤنٹ، نہ ٹریکنگ۔ انٹرنیٹ صرف وہ خصوصیات استعمال کرتی ہیں جو آپ خود آن کریں، جیسے اختیاری معاون۔';

  @override
  String get faqAssistantQ => 'معاون کیا ہے؟';

  @override
  String get faqAssistantA =>
      'ایک اختیاری مددگار جسے آپ ترتیبات میں اپنی AI سروس سے جوڑتے ہیں۔ یہ پہلے سے بند ہوتا ہے اور نوٹ کا متن بھیجنے سے پہلے پوچھتا ہے۔';

  @override
  String get tourPlanTitle => 'اپنے دن کی منصوبہ بندی کریں';

  @override
  String get tourPlanBody =>
      'کام، کیلنڈر اور عادات ایک پُرسکون جگہ پر۔ ہر صبح “میرا دن شروع کریں” سے آغاز کریں۔';

  @override
  String get tourFocusTitle => 'گہرا فوکس کریں';

  @override
  String get tourFocusBody =>
      'اصل فطری آوازوں، ڈسٹرب نہ کریں اور نرم اختتامی آوازوں کے ساتھ وقت بند سیشنز۔';

  @override
  String get tourLearnTitle => 'ہمیشہ کے لیے سیکھیں';

  @override
  String get tourLearnBody =>
      'وقفے سے دہرائی والے فلیش کارڈز، کئی زبانوں میں آواز، اور Anki یا Excel سے درآمد۔';

  @override
  String get helpTitle => 'مدد اور سوالات';

  @override
  String get helpOpen => 'کھولیں';

  @override
  String get helpTour => 'تعارف دیکھیں';

  @override
  String get tourNext => 'اگلا';

  @override
  String get tourDone => 'چلیں شروع کریں';

  @override
  String get transferColTitle => 'عنوان';

  @override
  String get transferColNotes => 'نوٹس';

  @override
  String get transferColBody => 'متن';

  @override
  String get transferColDue => 'آخری تاریخ';

  @override
  String get transferColPriority => 'ترجیح (0-3)';

  @override
  String get transferColDone => 'مکمل';

  @override
  String get transferColProject => 'پروجیکٹ';

  @override
  String get transferColCategory => 'زمرہ';

  @override
  String get transferTitle => 'درآمد اور برآمد';

  @override
  String get transferSaveAs => 'بطور محفوظ کریں';

  @override
  String get transferImport => 'فائل سے درآمد کریں';

  @override
  String get transferImportTasksHint =>
      'Excel، CSV یا Word میں جدول۔ کالم: عنوان، آخری تاریخ (2026-12-31)، ترجیح 0-3، مکمل، پروجیکٹ، نوٹس۔ ایپ میں پہلے سے موجود کام چھوڑ دیے جاتے ہیں۔';

  @override
  String get transferImportNotesHint =>
      'Word، Markdown یا متن کی فائلیں نوٹ بن جاتی ہیں۔ Excel یا CSV: ہر سطر ایک نوٹ (عنوان، متن)۔';

  @override
  String get transferSaved => 'فائل محفوظ ہو گئی';

  @override
  String get transferFailed => 'فائل نہیں بن سکی۔ کچھ نہیں بدلا۔';

  @override
  String get transferUnsupported =>
      'یہ فائل یہاں نہیں پڑھی جا سکتی۔ Excel، CSV، Word، Markdown یا متن استعمال کریں۔';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added شامل ہوئے',
      one: '1 شامل ہوا',
      zero: 'شامل کرنے کو کچھ نیا نہیں',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'متن';

  @override
  String get transferAllNotes => 'تمام نوٹس';

  @override
  String get transferThisNote => 'یہ نوٹ';

  @override
  String get transferDeckFormats => 'Excel، Word یا PDF کے طور پر محفوظ کریں';

  @override
  String get faqFilesQ => 'کیا میں Excel، Word یا PDF فائلیں استعمال کر سکتا ہوں؟';

  @override
  String get faqFilesA =>
      'جی ہاں۔ کاموں اور نوٹس کے اوپر درآمد اور برآمد کا بٹن (دو تیر) ہے، اور ہر ڈیک کے مینو میں بھی ہے۔ Excel، CSV، Word یا PDF کے طور پر محفوظ کریں، یا Excel، CSV، Word، Markdown یا متن کی فائلیں لائیں۔ کالموں کے نام ایپ کی کسی بھی زبان میں ہو سکتے ہیں، اور محفوظ کی گئی فائلیں ہمیشہ دوبارہ درآمد ہو سکتی ہیں۔';

  @override
  String get tplLecture => 'لیکچر';

  @override
  String get tplBook => 'کتاب کا خلاصہ';

  @override
  String get tplJournal => 'روزنامچہ';

  @override
  String get tplWeek => 'ہفتہ وار منصوبہ';

  @override
  String get tplLectureBody => '## اہم نکات\n- \n\n## سوالات\n- [ ] \n\n## خلاصہ\n';

  @override
  String get tplBookBody =>
      '## مرکزی خیال\n\n## میں نے کیا سیکھا\n- \n\n## اقتباسات\n> \n\n## عمل کرنا ہے\n- [ ] \n';

  @override
  String get tplJournalBody => '## شکر گزار ہوں\n- \n\n## آج کا فوکس\n- [ ] \n\n## نوٹس\n';

  @override
  String get tplWeekBody =>
      '## اس ہفتے کے اہداف\n- [ ] \n\n### ہفتہ\n- [ ] \n\n### اتوار\n- [ ] \n\n### پیر\n- [ ] \n\n### منگل\n- [ ] \n\n### بدھ\n- [ ] \n\n### جمعرات\n- [ ] \n\n### جمعہ\n- [ ] \n';

  @override
  String get tplHint => 'سانچے سے شروع کریں';

  @override
  String get noteImage => 'تصویر';

  @override
  String get noteAddImage => 'تصویر شامل کریں';

  @override
  String get noteImageUnreadable => 'یہ فائل ایسی تصویر نہیں جو ایپ پڑھ سکے۔';

  @override
  String get noteImageTooLarge => 'یہ تصویر بہت بڑی ہے۔';

  @override
  String get examSet => 'امتحان کی تاریخ مقرر کریں';

  @override
  String get examDate => 'امتحان کی تاریخ';

  @override
  String get examToday => 'آج امتحان ہے۔ گڈ لک!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'امتحان میں $count دن',
      one: 'کل امتحان',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'روزانہ $count نئے کارڈ سیکھیں',
      one: 'روزانہ 1 نیا کارڈ سیکھیں',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'تمام کارڈ سیکھ لیے، دہرائی جاری رکھیں';

  @override
  String examRaiseLimit(int count) {
    return 'روزانہ $count نئے کارڈ دکھائیں';
  }

  @override
  String get backupDriveHint =>
      'آن لائن کاپی رکھنے کے لیے اگلی محفوظ کرنے والی اسکرین پر Google Drive (یا کوئی اور کلاؤڈ ایپ) منتخب کریں۔';

  @override
  String get flashShareDeck => 'ڈیک کسی دوست سے شیئر کریں';

  @override
  String get flashSortManual => 'میری ترتیب (گھسیٹیں)';

  @override
  String get flashReorderHint => 'کارڈ منتقل کرنے کے لیے ہینڈل پکڑ کر گھسیٹیں۔';

  @override
  String get flashReorderNeedsAll => 'کارڈ گھسیٹنے کے لیے تلاش اور فلٹر صاف کریں۔';

  @override
  String get flashDragHandle => 'منتقل کرنے کے لیے گھسیٹیں';

  @override
  String get reportTitle => 'ماہانہ رپورٹ';

  @override
  String get reportFocus => 'فوکس وقت';

  @override
  String reportSessions(int count) {
    return '$count سیشنز';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'بہترین دن: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count فعال دن';
  }

  @override
  String get reportCards => 'دہرائے گئے کارڈز';

  @override
  String reportCardsKnown(String percent) {
    return '$percent یاد رہے';
  }

  @override
  String get reportTasks => 'مکمل کام';

  @override
  String get reportHabits => 'عادات کے نشانات';

  @override
  String get reportEmpty => 'اس مہینے ابھی کچھ درج نہیں۔';

  @override
  String get reportSave => 'PDF یا Word کے طور پر محفوظ کریں';

  @override
  String get reportPrevMonth => 'پچھلا مہینہ';

  @override
  String get reportNextMonth => 'اگلا مہینہ';

  @override
  String get careTitle => 'فون اور ڈیٹا کی دیکھ بھال';

  @override
  String get storageTitle => 'اسٹوریج';

  @override
  String get storageSubtitle => 'کیا جگہ لے رہا ہے اور غیر استعمال شدہ تصاویر کی صفائی';

  @override
  String get storagePictures => 'نوٹس میں تصاویر';

  @override
  String get storageCardMedia => 'کارڈز میں تصاویر اور آڈیو';

  @override
  String get storageText => 'نوٹس کا متن';

  @override
  String get storageFree => 'فون میں خالی جگہ';

  @override
  String get storageLow =>
      'آپ کا فون تقریباً بھر گیا ہے۔ کچھ جگہ خالی کریں تاکہ بیک اپ اور یاد دہانیاں کام کرتی رہیں۔';

  @override
  String storageUnused(int count, String size) {
    return '$count غیر استعمال شدہ تصاویر ($size)';
  }

  @override
  String get storageNoUnused => 'کوئی غیر استعمال شدہ تصویر نہیں۔ سب کچھ صاف ہے۔';

  @override
  String get storageClean => 'غیر استعمال شدہ تصاویر ہٹائیں';

  @override
  String storageCleaned(int count) {
    return '$count تصاویر ہٹا دی گئیں';
  }

  @override
  String get storageHint =>
      'تصویر تبھی غیر استعمال شدہ سمجھی جاتی ہے جب کوئی نوٹ اسے نہ دکھائے، ٹوکری والے نوٹس سمیت۔';

  @override
  String get batteryTitle => 'یاد دہانیاں چالو رکھیں';

  @override
  String get batterySubtitle => 'کچھ فون پس منظر میں ایپس روک دیتے ہیں۔ اپنا فون چیک کریں۔';

  @override
  String get batteryStatusOk =>
      'بیٹری بچت اس ایپ کو محدود نہیں کرتی۔ یاد دہانیاں اور آوازیں وقت پر آنی چاہئیں۔';

  @override
  String get batteryStatusLimited =>
      'بیٹری بچت پس منظر میں اس ایپ کو روک سکتی ہے، اس لیے یاد دہانیاں اور آوازیں دیر سے آ سکتی ہیں یا رہ سکتی ہیں۔';

  @override
  String get batteryOpen => 'بیٹری کی ترتیبات کھولیں';

  @override
  String get batteryOpenApp => 'ایپ کی ترتیبات کھولیں';

  @override
  String get batteryGeneric =>
      'بیٹری کی ترتیبات میں یہ ایپ منتخب کریں اور اسے غیر محدود (یا آپٹمائز نہ کریں) پر رکھیں۔';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: سیکیورٹی › اجازتیں › آٹو اسٹارٹ بھی کھولیں اور یہ ایپ آن کریں، اور بیٹری سیور کو کوئی پابندی نہیں پر رکھیں۔';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: بیٹری › یہ ایپ کھولیں اور پس منظر کی سرگرمی اور خودکار آغاز کی اجازت دیں؛ حالیہ ایپس کی فہرست میں ایپ لاک کریں۔';

  @override
  String get batterySamsung =>
      'Samsung: بیٹری › پس منظر کے استعمال کی حدود: یہ ایپ سوئی ہوئی ایپس اور گہری نیند والی ایپس سے ہٹائیں۔';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: ایپ لانچ › یہ ایپ › دستی طور پر منظم کریں، اور خودکار آغاز، ثانوی آغاز اور پس منظر میں چلنے کی اجازت دیں۔';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: بیٹری › پس منظر میں بجلی کا استعمال › اس ایپ کو اجازت دیں، اور اجازتوں میں آٹو اسٹارٹ آن کریں۔';

  @override
  String get whatsNewTitle => 'نیا کیا ہے';

  @override
  String get whatsNewSubtitle => 'تازہ تبدیلیاں چند سطروں میں';

  @override
  String get whatsNewDone => 'سمجھ گیا';

  @override
  String get whatsNewOrderTitle => 'کارڈز کو اپنی ترتیب میں گھسیٹیں';

  @override
  String get whatsNewOrderBody =>
      'ڈیک میں ترتیب › میری ترتیب منتخب کریں، پھر ہینڈل پکڑ کر گھسیٹیں۔';

  @override
  String get whatsNewSpeechTitle => 'کارڈ کے ہر رخ پر اسپیکر';

  @override
  String get whatsNewSpeechBody =>
      'لفظ یا ترجمہ سننے کے لیے تھپتھپائیں۔ رفتار، دہرائی اور آواز دہرائی کے مینو میں ہیں۔ زبان متن سے پہچانی جاتی ہے۔';

  @override
  String get whatsNewReportTitle => 'ماہانہ رپورٹ';

  @override
  String get whatsNewReportBody =>
      'جائزہ میں رپورٹ آئیکن تھپتھپا کر مہینہ دیکھیں اور PDF یا Word کے طور پر محفوظ کریں۔';

  @override
  String get whatsNewCareTitle => 'فون اور ڈیٹا کی دیکھ بھال';

  @override
  String get whatsNewCareBody =>
      'ترتیبات میں اب تصاویر کی صفائی والا اسٹوریج صفحہ اور آپ کے فون برانڈ کے لیے بیٹری گائیڈ ہے۔';

  @override
  String get whatsNewSoundTitle => 'زیادہ پُرسکون آوازیں';

  @override
  String get whatsNewSoundBody =>
      'فطرت کی آوازیں نرم اور دھیمی ہیں، اور تصویری کارڈز زیادہ خوبصورت ہیں۔';

  @override
  String autoBackupCheckOk(String date) {
    return '$date کو جانچا: تازہ ترین بیک اپ درست کھلتا ہے۔';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date کو جانچا: ایک خراب بیک اپ ملا اور نئے سے بدل دیا گیا۔';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date کو جانچا: تازہ ترین بیک اپ نہیں کھل سکا۔ ترتیبات سے خود بیک اپ فائل محفوظ کریں۔';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'آپ عموماً $time کے قریب پڑھتے ہیں';
  }

  @override
  String get smartReviewTimeUse => 'یہی رکھیں';

  @override
  String get widgetNewNote => 'نیا نوٹ';

  @override
  String get noteConnections => 'ٹیگز، لنکس اور کام';

  @override
  String get navCards => 'کارڈز';

  @override
  String get studyAnswerWay => 'جواب کیسے دیں';

  @override
  String get studyMorePractice => 'اضافی مشق';

  @override
  String get studySessionSettings => 'سیشن کی ترتیبات';

  @override
  String get focusAdjustTitle => 'آپ کا سیشن';

  @override
  String get focusPresetsTitle => 'تیار شدہ';

  @override
  String get focusPresetStudy => 'پڑھائی';

  @override
  String get focusPresetDeep => 'گہرا کام';

  @override
  String get focusPresetQuick => 'مختصر دوڑ';

  @override
  String get focusPresetReading => 'مطالعہ';

  @override
  String get focusPresetWorkout => 'ورزش کے راؤنڈ';

  @override
  String get focusAdjustMinutes => 'فوکس کا دورانیہ';

  @override
  String get focusAdjustBreak => 'وقفے کا دورانیہ';

  @override
  String get focusAdjustRounds => 'راؤنڈ';

  @override
  String get focusRoundsOpen => 'کوئی حد نہیں';

  @override
  String focusMinutesShort(String n) {
    return '$n منٹ';
  }

  @override
  String get focusTapToAdjust => 'وقت بدلنے کے لیے تھپتھپائیں';

  @override
  String get flashArrangeDecks => 'ڈیکس ترتیب دیں';

  @override
  String get flashDeckActions => 'ڈیک کے اختیارات';

  @override
  String get starterBrowse => 'تیار ڈیکس';

  @override
  String get starterBrowseHint => 'ایک تھپتھپاہٹ میں شامل کریں اور سیکھنا شروع کریں';

  @override
  String get dashOpenDecks => 'اپنے کارڈز کھولیں';

  @override
  String speechVoiceNumber(String n) {
    return 'آواز $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'اچھی روانی۔ $m منٹ وقفہ؟';
  }

  @override
  String get focusFlowBreakStart => 'وقفہ شروع کریں';

  @override
  String tasksFinishAt(String time) {
    return 'ابھی شروع کریں تو سب کچھ $time تک مکمل ہو جائے گا';
  }

  @override
  String get focusCalmPacing => 'پُرسکون رفتار';

  @override
  String get focusCalmPacingHint => 'صرف پورے منٹ اور حلقہ، چلتے سیکنڈ نہیں';

  @override
  String get focusFlipHint => 'شروع کرنے کے لیے فون الٹا رکھیں';

  @override
  String get focusImmersive => 'محویت موڈ';

  @override
  String get focusImmersiveBlack => 'مکمل سیاہ (بیٹری بچاتا ہے)';

  @override
  String get focusFlipToFocus => 'الٹا کر کے فوکس';

  @override
  String get focusFlipToFocusHint => 'محویت موڈ میں: الٹا رکھنے سے شروع، اٹھانے سے رک جاتا ہے';

  @override
  String get guardTitle => 'توجہ کا محافظ';

  @override
  String get guardSubtitle => 'فوکس کے دوران توجہ ہٹانے والی ایپس روکیں';

  @override
  String get guardSwitch => 'توجہ ہٹانے والی ایپس روکیں';

  @override
  String get guardSwitchHint => 'فوکس سیشنز اور آپ کے وقت کے محافظ کے اوقات میں';

  @override
  String get guardNeedsAccess => 'رسائی کا سوئچ درکار ہے: آن کرنے کے لیے تھپتھپائیں';

  @override
  String get guardDisclosureTitle => 'محافظ کیسے کام کرتا ہے';

  @override
  String get guardDisclosureBody =>
      'آپ کی منتخب ایپس روکنے کے لیے Deep Focus، Android کی رسائی سروس استعمال کر کے دیکھتا ہے کہ کون سی ایپ کھلی ہے۔ “Shorts اور Reels بند کریں” آن ہو تو یہ بھی دیکھتا ہے کہ اسکرین پر مختصر ویڈیو پلیئر ہے یا نہیں۔\n\nیہ کوئی متن نہیں پڑھتا، جو دیکھتا ہے محفوظ نہیں کرتا اور کہیں کچھ نہیں بھیجتا: سب کچھ آپ کے فون پر رہتا ہے۔ آپ اسے رسائی کی ترتیبات میں کبھی بھی بند کر سکتے ہیں۔';

  @override
  String get guardAgree => 'متفق ہوں اور ترتیبات کھولیں';

  @override
  String get guardModeGentle => 'نرم';

  @override
  String get guardModeStrict => 'سخت';

  @override
  String get guardGentleHint => '5 سیکنڈ کا سانس کا وقفہ، پھر آپ فیصلہ کریں';

  @override
  String get guardStrictHint => 'منتخب ایپس فوکس کا وقت ختم ہونے تک بند رہتی ہیں';

  @override
  String get guardApps => 'روکی جانے والی ایپس';

  @override
  String get guardAppsAllowed => 'اجازت والی ایپس';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ایپس',
      one: '1 ایپ',
      zero: 'ابھی کچھ منتخب نہیں',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'صرف منتخب ایپس کی اجازت دیں';

  @override
  String get guardAllowlistHint =>
      'باقی تمام ایپس روک دی جاتی ہیں؛ کالز، ترتیبات اور کی بورڈ ہمیشہ کام کرتے ہیں';

  @override
  String get guardShorts => 'Shorts اور Reels بند کریں';

  @override
  String get guardShortsHint => 'جب بھی محافظ آن ہو۔ بہترین کوشش: یہ ایپس اکثر بدلتی ہیں';

  @override
  String get guardSchedule => 'وقت کا محافظ';

  @override
  String get guardScheduleHint => 'مقررہ دنوں اور اوقات میں بھی حفاظت کریں، جیسے اسکول یا کام';

  @override
  String get guardFrom => 'سے';

  @override
  String get guardTo => 'تک';

  @override
  String get guardSearchApps => 'ایپس تلاش کریں';

  @override
  String get guardNoApps => 'کوئی ایپ نہیں ملی';

  @override
  String get guardPrivacy =>
      'صرف آپ کے فون پر کام کرتا ہے: محافظ دیکھتا ہے کہ کون سی ایپ کھلی ہے، اس کے اندر کیا ہے کبھی نہیں، اور کچھ نہیں بھیجتا۔';

  @override
  String get guardBreathe => 'سانس اندر… اور باہر';

  @override
  String get guardQuestion => 'کیا آپ کو ابھی یہ ایپ چاہیے؟';

  @override
  String get guardBackToFocus => 'فوکس پر واپس';

  @override
  String get guardOpenFive => '5 منٹ کے لیے کھولیں';

  @override
  String get guardStrictBody => 'آپ کا فوکس وقت ختم ہونے تک یہ ایپ رکی ہوئی ہے۔';

  @override
  String get guardShortsClosed => 'محافظ آن ہونے تک مختصر ویڈیوز بند ہیں';

  @override
  String get faqGuardQ => 'فوکس کے دوران توجہ ہٹانے والی ایپس کیسے روکوں؟';

  @override
  String get faqGuardA =>
      'فوکس → ٹائمر کی ترتیبات → توجہ کا محافظ کھولیں۔ ایپس منتخب کریں، پھر نرم (5 سیکنڈ سانس اور سوال “کیا آپ کو ابھی یہ ایپ چاہیے؟”) یا سخت (بند رہتی ہیں) چنیں۔ یہ فوکس سیشنز میں اور وقت کے محافظ کے ذریعے آپ کے مقرر کردہ دنوں اور اوقات میں کام کرتا ہے۔ “صرف منتخب ایپس کی اجازت دیں” باقی سب روک دیتا ہے؛ کالز، ترتیبات اور کی بورڈ ہمیشہ کام کرتے ہیں۔ Android آپ سے ایک بار رسائی کی ترتیبات میں محافظ آن کرنے کو کہے گا۔ یہ صرف دیکھتا ہے کہ کون سی ایپ کھلی ہے اور کچھ نہیں بھیجتا۔';

  @override
  String notesMovedToNotebook(String name) {
    return '$name میں منتقل ہو گیا';
  }

  @override
  String get notesDragHint => 'نوٹ کو دبائے رکھیں اور کسی نوٹ بک پر گھسیٹیں';

  @override
  String get guardReviewCards => 'اس کی جگہ کارڈ دہرائیں';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارڈ آپ کا انتظار کر رہے ہیں',
      one: '1 کارڈ آپ کا انتظار کر رہا ہے',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'ہنگامی: 10 سیکنڈ دبائے رکھیں';

  @override
  String guardEmergencyHolding(Object n) {
    return 'دبائے رکھیں… $n';
  }

  @override
  String get guardWeekTitle => 'یہ ہفتہ';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count وقفے',
      one: '1 وقفہ',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بار فوکس پر واپسی',
      one: 'ایک بار فوکس پر واپسی',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'الفاظ کے نام بدلیں';

  @override
  String get wordsSubtitle => 'ایپ کے کسی بھی متن کے لیے اپنا لفظ استعمال کریں';

  @override
  String get wordsHint =>
      'بدلنے کے لیے کسی متن پر تھپتھپائیں۔ آپ کے الفاظ صرف اس زبان پر لاگو ہوتے ہیں اور بیک اپ میں رہتے ہیں۔';

  @override
  String get wordsSearch => 'متن تلاش کریں';

  @override
  String get wordsChangedOnly => 'صرف بدلے ہوئے';

  @override
  String wordsOriginal(String text) {
    return 'اصل: $text';
  }

  @override
  String get wordsReset => 'اصل استعمال کریں';

  @override
  String get wordsResetAll => 'تمام الفاظ ری سیٹ کریں';

  @override
  String get wordsResetAllConfirm => 'اس زبان کا ہر متن اصل پر واپس آ جائے گا۔';

  @override
  String get wordsNone => 'کوئی متن نہیں ملا';
}
