// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'خانه';

  @override
  String get navTasks => 'کارها';

  @override
  String get navFocus => 'تمرکز';

  @override
  String get navCalendar => 'تقویم';

  @override
  String get navSpaces => 'فضاها';

  @override
  String get moduleProjects => 'پروژه‌ها';

  @override
  String get moduleNotes => 'یادداشت‌ها';

  @override
  String get moduleFlashcards => 'فلش‌کارت‌ها';

  @override
  String get moduleGoals => 'هدف‌ها';

  @override
  String get moduleHabits => 'عادت‌ها';

  @override
  String get moduleAnalytics => 'آمار';

  @override
  String get moduleSearch => 'جستجو';

  @override
  String get moduleAssistant => 'دستیار';

  @override
  String get moduleSettings => 'تنظیمات';

  @override
  String get moduleTrash => 'سطل زباله';

  @override
  String get actionSave => 'ذخیره';

  @override
  String get actionCancel => 'لغو';

  @override
  String get actionDelete => 'حذف';

  @override
  String get actionEdit => 'ویرایش';

  @override
  String get actionDone => 'تمام';

  @override
  String get actionAdd => 'افزودن';

  @override
  String get actionCreate => 'ایجاد';

  @override
  String get actionClose => 'بستن';

  @override
  String get actionBack => 'بازگشت';

  @override
  String get actionUndo => 'واگرد';

  @override
  String get actionRestore => 'بازیابی';

  @override
  String get actionRetry => 'تلاش دوباره';

  @override
  String get actionContinue => 'ادامه';

  @override
  String get actionSkip => 'رد شدن';

  @override
  String get actionArchive => 'بایگانی';

  @override
  String get actionUnarchive => 'خروج از بایگانی';

  @override
  String get actionPin => 'سنجاق';

  @override
  String get actionUnpin => 'برداشتن سنجاق';

  @override
  String get actionMore => 'گزینه‌های بیشتر';

  @override
  String get actionClear => 'پاک کردن';

  @override
  String get actionSearch => 'جستجو';

  @override
  String get actionSort => 'مرتب‌سازی';

  @override
  String get actionShare => 'اشتراک‌گذاری';

  @override
  String get actionImport => 'وارد کردن';

  @override
  String get actionExport => 'خروجی گرفتن';

  @override
  String get actionPause => 'مکث';

  @override
  String get actionResume => 'ادامه';

  @override
  String get actionStart => 'شروع';

  @override
  String get actionStop => 'توقف';

  @override
  String get actionComplete => 'تکمیل';

  @override
  String get actionDeleteForever => 'حذف همیشگی';

  @override
  String get actionEmptyTrash => 'خالی کردن سطل زباله';

  @override
  String get actionUnlink => 'قطع پیوند';

  @override
  String get actionCustomize => 'سفارشی‌سازی';

  @override
  String get actionPreview => 'پیش‌نمایش';

  @override
  String get actionLog => 'ثبت پیشرفت';

  @override
  String get stateLoading => 'در حال بارگیری…';

  @override
  String get stateSaving => 'در حال ذخیره…';

  @override
  String get stateSaved => 'ذخیره شد';

  @override
  String get stateUnsaved => 'تغییرات ذخیره‌نشده';

  @override
  String get errorGenericTitle => 'مشکلی پیش آمد';

  @override
  String get errorGenericMessage => 'داده‌های شما امن است. لطفاً دوباره تلاش کنید.';

  @override
  String get errorLoadFailed => 'این محتوا بارگیری نشد.';

  @override
  String get errorSaveFailed => 'ذخیره نشد. تغییرات شما هنوز اینجاست.';

  @override
  String get validationRequired => 'این فیلد الزامی است';

  @override
  String get validationTitleRequired => 'لطفاً عنوان را وارد کنید';

  @override
  String get validationNameRequired => 'لطفاً نام را وارد کنید';

  @override
  String get validationTooLong => 'بیش از حد طولانی است';

  @override
  String get validationEndBeforeStart => 'پایان باید بعد از شروع باشد';

  @override
  String get validationStartAfterDue => 'تاریخ شروع باید پیش از سررسید باشد';

  @override
  String get validationPositiveNumber => 'عددی بزرگ‌تر از صفر وارد کنید';

  @override
  String get validationDependencyCycle => 'این کار وابستگی چرخه‌ای ایجاد می‌کند';

  @override
  String get validationInvalidRepeat => 'این قانون تکرار معتبر نیست';

  @override
  String get deletedItem => 'به سطل زباله منتقل شد';

  @override
  String get untitled => 'بی‌عنوان';

  @override
  String get noProject => 'بدون پروژه';

  @override
  String get greetingMorning => 'صبح بخیر';

  @override
  String get greetingAfternoon => 'ظهر بخیر';

  @override
  String get greetingEvening => 'عصر بخیر';

  @override
  String get dashFocusToday => 'تمرکز امروز';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done از $target';
  }

  @override
  String get dashStartFocus => 'شروع تمرکز';

  @override
  String get dashFocusRunning => 'جلسه در جریان است';

  @override
  String get dashTodayTasks => 'سررسید امروز';

  @override
  String get dashAgenda => 'برنامه';

  @override
  String get dashHabits => 'عادت‌های امروز';

  @override
  String get dashGoals => 'هدف‌ها';

  @override
  String get dashReview => 'مرور';

  @override
  String get dashRecentNotes => 'یادداشت‌های اخیر';

  @override
  String get dashInsight => 'پیشنهاد';

  @override
  String get dashSeeAll => 'دیدن همه';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت برای مرور',
      one: '$count کارت برای مرور',
      zero: 'کارتی برای مرور نیست',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'همین حالا مرور کنید';

  @override
  String get dashCustomizeTitle => 'بخش‌های خانه';

  @override
  String get dashCustomizeHint => 'انتخاب کنید چه چیزی در صفحه خانه نمایش داده شود.';

  @override
  String get dashSectionFocus => 'تمرکز';

  @override
  String get dashSectionToday => 'کارهای سررسید امروز';

  @override
  String get dashSectionAgenda => 'برنامه';

  @override
  String get dashSectionHabits => 'عادت‌ها';

  @override
  String get dashSectionGoals => 'هدف‌ها';

  @override
  String get dashSectionReview => 'مرور فلش‌کارت';

  @override
  String get dashSectionNotes => 'یادداشت‌های اخیر';

  @override
  String get dashSectionInsight => 'پیشنهادها';

  @override
  String get quickAddTask => 'کار جدید';

  @override
  String get quickAddNote => 'یادداشت جدید';

  @override
  String get quickAddEvent => 'رویداد جدید';

  @override
  String get quickStartFocus => 'تمرکز';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کار عقب‌افتاده دارید. از مهم‌ترین شروع کنید.',
      one: '$count کار عقب‌افتاده دارید. اول زمانش را عوض کنید یا تمامش کنید.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return '$minutes دقیقه تا هدف تمرکز روزانه‌تان مانده است.';
  }

  @override
  String get insightCardsDue => 'تا ذهنتان تازه است، کارت‌های سررسیدشده را همین حالا مرور کنید.';

  @override
  String get insightAllClear =>
      'همه‌چیز طبق برنامه است. برای فردا برنامه بریزید یا یک استراحت آرام کنید.';

  @override
  String insightHabitStreak(String habit) {
    return 'زنجیره را حفظ کنید: $habit امروز هنوز انجام نشده است.';
  }

  @override
  String get focusTitle => 'تمرکز';

  @override
  String get focusModePomodoro => 'پومودورو';

  @override
  String get focusModeCountdown => 'تایمر';

  @override
  String get focusModeCountUp => 'کرنومتر';

  @override
  String get focusModeOpen => 'آزاد';

  @override
  String get focusPhaseWork => 'تمرکز';

  @override
  String get focusPhaseShortBreak => 'استراحت کوتاه';

  @override
  String get focusPhaseLongBreak => 'استراحت طولانی';

  @override
  String get focusReady => 'هر وقت آماده بودید';

  @override
  String get focusPaused => 'متوقف';

  @override
  String get focusRunning => 'در حال تمرکز';

  @override
  String get focusDuration => 'مدت';

  @override
  String get focusLinkTask => 'پیوند به کار';

  @override
  String get focusLinkedTask => 'در حال کار روی';

  @override
  String get focusNoTask => 'کاری پیوند نشده';

  @override
  String focusCycle(int current, int total) {
    return 'دور $current از $total';
  }

  @override
  String get focusSkipBreak => 'رد کردن استراحت';

  @override
  String get focusStartBreak => 'شروع استراحت';

  @override
  String get focusStartNext => 'شروع تمرکز بعدی';

  @override
  String get focusSessionComplete => 'جلسه تمام شد';

  @override
  String get focusSessionStopped => 'جلسه ذخیره شد';

  @override
  String focusSessionSummary(String duration) {
    return '$duration تمرکز کردید.';
  }

  @override
  String get focusAddNote => 'یادداشتی درباره این جلسه بنویسید';

  @override
  String get focusHistory => 'تاریخچه';

  @override
  String get focusNoHistory => 'جلسه‌های تمام‌شده اینجا نمایش داده می‌شوند';

  @override
  String get focusTargets => 'هدف‌ها';

  @override
  String get focusDailyTarget => 'هدف روزانه';

  @override
  String get focusWeeklyTarget => 'هدف هفتگی';

  @override
  String get focusOutcomeCompleted => 'تمام‌شده';

  @override
  String get focusOutcomeInterrupted => 'زودتر متوقف شد';

  @override
  String get focusRecovered => 'جلسه شما وقتی برنامه بسته بود ادامه پیدا کرد.';

  @override
  String get focusCompletedWhileAway => 'یک جلسه وقتی برنامه بسته بود تمام شد و ذخیره شد.';

  @override
  String get focusNotificationsOff => 'اعلان‌ها خاموش است. پایان جلسه به شما اطلاع داده نمی‌شود.';

  @override
  String get focusBatteryHint =>
      'برخی دستگاه‌ها برنامه‌های پس‌زمینه را متوقف می‌کنند. تایمر دقیق می‌ماند ولی اعلان‌ها ممکن است دیر برسند. برای اعلان‌های مطمئن، استفاده نامحدود از باتری را مجاز کنید.';

  @override
  String get focusOpenSettings => 'باز کردن تنظیمات';

  @override
  String get focusStopConfirmTitle => 'این جلسه متوقف شود؟';

  @override
  String get focusStopConfirmMessage => 'زمان تمرکز تا این لحظه ذخیره می‌شود.';

  @override
  String get focusDiscard => 'دور انداختن';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes دقیقه',
      one: '$minutes دقیقه',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase، $time مانده';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase، $time گذشته';
  }

  @override
  String get focusDeleteSession => 'حذف جلسه';

  @override
  String get tasksTitle => 'کارها';

  @override
  String get tasksViewToday => 'امروز';

  @override
  String get tasksViewUpcoming => 'پیش رو';

  @override
  String get tasksViewAll => 'همه';

  @override
  String get tasksViewOverdue => 'عقب‌افتاده';

  @override
  String get tasksViewCompleted => 'انجام‌شده';

  @override
  String get tasksQuickAddHint => 'افزودن کار…';

  @override
  String get tasksEmptyTitle => 'همه‌چیز انجام شد';

  @override
  String get tasksEmptyMessage => 'برای شکل دادن به روزتان یک کار اضافه کنید.';

  @override
  String get tasksEmptyCompleted => 'کارهای انجام‌شده اینجا نمایش داده می‌شوند.';

  @override
  String get taskNew => 'کار جدید';

  @override
  String get taskEdit => 'ویرایش کار';

  @override
  String get taskTitleLabel => 'عنوان';

  @override
  String get taskTitleHint => 'چه کاری باید انجام شود؟';

  @override
  String get taskDescriptionLabel => 'توضیحات';

  @override
  String get taskNotesLabel => 'یادداشت‌ها';

  @override
  String get taskPriority => 'اولویت';

  @override
  String get priorityNone => 'هیچ';

  @override
  String get priorityLow => 'کم';

  @override
  String get priorityMedium => 'متوسط';

  @override
  String get priorityHigh => 'زیاد';

  @override
  String get priorityUrgent => 'فوری';

  @override
  String get taskDueDate => 'سررسید';

  @override
  String get taskStartDate => 'تاریخ شروع';

  @override
  String get taskReminder => 'یادآوری';

  @override
  String get taskRepeat => 'تکرار';

  @override
  String get taskProject => 'پروژه';

  @override
  String get taskCategory => 'دسته';

  @override
  String get taskCategoryHint => 'مثلاً کار، خانه، درس';

  @override
  String get taskEstimateMinutes => 'برآورد (دقیقه)';

  @override
  String get taskTracked => 'تمرکز ثبت‌شده';

  @override
  String get taskLabels => 'برچسب‌ها';

  @override
  String get taskAddLabel => 'برچسب جدید';

  @override
  String get taskChecklist => 'چک‌لیست';

  @override
  String get taskAddChecklistItem => 'افزودن مورد';

  @override
  String get taskSubtasks => 'زیرکارها';

  @override
  String get taskAddSubtask => 'افزودن زیرکار';

  @override
  String get taskDependencies => 'وابسته به';

  @override
  String get taskAddDependency => 'افزودن کار پیش‌نیاز';

  @override
  String get taskLinkedNotes => 'یادداشت‌های پیوندشده';

  @override
  String get taskSetTime => 'تنظیم ساعت';

  @override
  String get taskNoDate => 'بدون تاریخ';

  @override
  String get taskCompleted => 'کار انجام شد';

  @override
  String get taskNextOccurrence => 'تکرار بعدی ساخته شد';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days روز تأخیر',
      one: '$days روز تأخیر',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'علامت‌گذاری «$title» به‌عنوان انجام‌شده';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'علامت‌گذاری «$title» به‌عنوان انجام‌نشده';
  }

  @override
  String get sortSmart => 'هوشمند';

  @override
  String get sortDueDate => 'سررسید';

  @override
  String get sortPriority => 'اولویت';

  @override
  String get sortCreated => 'جدیدترین';

  @override
  String get sortTitle => 'عنوان';

  @override
  String get filterAllProjects => 'همه پروژه‌ها';

  @override
  String get filterAnyPriority => 'هر اولویتی';

  @override
  String get filterTitle => 'فیلتر و مرتب‌سازی';

  @override
  String get dateToday => 'امروز';

  @override
  String get dateTomorrow => 'فردا';

  @override
  String get dateYesterday => 'دیروز';

  @override
  String get repeatNever => 'تکرار نمی‌شود';

  @override
  String get repeatDaily => 'هر روز';

  @override
  String get repeatWeekdays => 'هر روز کاری';

  @override
  String get repeatWeekly => 'هر هفته';

  @override
  String get repeatMonthly => 'هر ماه';

  @override
  String get repeatYearly => 'هر سال';

  @override
  String get repeatCustom => 'سفارشی';

  @override
  String get repeatEvery => 'تکرار هر';

  @override
  String get repeatOnDays => 'در روزهای';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'روز',
      one: 'روز',
      zero: 'روز',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هفته',
      one: 'هفته',
      zero: 'هفته',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ماه',
      one: 'ماه',
      zero: 'ماه',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'سال',
      one: 'سال',
      zero: 'سال',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بار',
      one: '$count بار',
    );
    return 'پایان پس از $_temp0';
  }

  @override
  String get repeatEndsNever => 'هرگز پایان نمی‌یابد';

  @override
  String get reminderAtTime => 'در زمان رویداد';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes دقیقه قبل',
      one: '$minutes دقیقه قبل',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours ساعت قبل',
      one: '$hours ساعت قبل',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 روز قبل';

  @override
  String get projectsTitle => 'پروژه‌ها';

  @override
  String get projectsEmptyTitle => 'هنوز پروژه‌ای نیست';

  @override
  String get projectsEmptyMessage => 'کارها، یادداشت‌ها و زمان تمرکز مرتبط را کنار هم بگذارید.';

  @override
  String get projectNew => 'پروژه جدید';

  @override
  String get projectEdit => 'ویرایش پروژه';

  @override
  String get projectName => 'نام';

  @override
  String get projectDescription => 'توضیحات';

  @override
  String get projectGoal => 'هدف';

  @override
  String get projectDeadline => 'مهلت';

  @override
  String get projectColor => 'رنگ';

  @override
  String get projectIcon => 'نماد';

  @override
  String get projectProgress => 'پیشرفت';

  @override
  String projectTasksDone(int done, int total) {
    return '$done از $total کار انجام شده';
  }

  @override
  String get projectFocusTime => 'زمان تمرکز';

  @override
  String get projectArchived => 'پروژه‌های بایگانی‌شده';

  @override
  String get projectShowArchived => 'نمایش بایگانی‌شده‌ها';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days روز مانده',
      one: '$days روز مانده',
      zero: 'سررسید امروز',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'مهلت گذشته';

  @override
  String get calendarTitle => 'تقویم';

  @override
  String get calendarMonth => 'ماه';

  @override
  String get calendarWeek => 'هفته';

  @override
  String get calendarDay => 'روز';

  @override
  String get calendarToday => 'امروز';

  @override
  String get calendarPrevious => 'قبلی';

  @override
  String get calendarNext => 'بعدی';

  @override
  String get calendarNoEvents => 'برنامه‌ای نیست';

  @override
  String get calendarAllDay => 'تمام روز';

  @override
  String get eventNew => 'رویداد جدید';

  @override
  String get eventEdit => 'ویرایش رویداد';

  @override
  String get eventTitleHint => 'عنوان رویداد';

  @override
  String get eventStarts => 'شروع';

  @override
  String get eventEnds => 'پایان';

  @override
  String get eventKind => 'نوع';

  @override
  String get eventKindEvent => 'رویداد';

  @override
  String get eventKindTimeBlock => 'بلوک زمانی';

  @override
  String get eventKindFocus => 'جلسه تمرکز';

  @override
  String get eventKindGoal => 'هدف شخصی';

  @override
  String get eventDescription => 'جزئیات';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'با $count رویداد هم‌پوشانی دارد',
      one: 'با $count رویداد هم‌پوشانی دارد',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'تداخل برنامه در این روز';

  @override
  String get calendarTaskDue => 'کار سررسیددار';

  @override
  String get calendarDragHint => 'برای جابه‌جایی رویداد، آن را نگه دارید و بکشید';

  @override
  String get calendarRescheduled => 'رویداد جابه‌جا شد';

  @override
  String get calendarScheduleTask => 'زمان‌بندی به‌صورت بلوک زمانی';

  @override
  String get notesTitle => 'یادداشت‌ها';

  @override
  String get notesViewAll => 'همه';

  @override
  String get notesViewPinned => 'سنجاق‌شده';

  @override
  String get notesViewFavorites => 'علاقه‌مندی‌ها';

  @override
  String get notesViewArchived => 'بایگانی‌شده';

  @override
  String get notesTags => 'برچسب‌ها';

  @override
  String get notesNewNotebook => 'دفترچه جدید';

  @override
  String get notesNoNotebook => 'بدون دفترچه';

  @override
  String get notesEmptyTitle => 'یک صفحه سفید';

  @override
  String get notesEmptyMessage => 'ایده‌ها، یادداشت‌های جلسه و دانسته‌ها را ثبت کنید.';

  @override
  String get noteTitleHint => 'عنوان';

  @override
  String get noteBodyHint =>
      'شروع به نوشتن کنید… برای برچسب از # و برای پیوند یادداشت‌ها از [[عنوان]] استفاده کنید.';

  @override
  String get noteFavorite => 'علاقه‌مندی';

  @override
  String get noteUnfavorite => 'حذف از علاقه‌مندی‌ها';

  @override
  String get noteMoveTo => 'انتقال به دفترچه';

  @override
  String get noteBacklinks => 'پیوندشده از';

  @override
  String get noteLinkedTasks => 'کارهای پیوندشده';

  @override
  String get noteLinkTask => 'پیوند به کار';

  @override
  String get noteLinkProject => 'پروژه';

  @override
  String get noteFormatHeading => 'سرتیتر';

  @override
  String get noteFormatBold => 'پررنگ';

  @override
  String get noteFormatItalic => 'کج';

  @override
  String get noteFormatList => 'فهرست نقطه‌ای';

  @override
  String get noteFormatChecklist => 'چک‌لیست';

  @override
  String get noteFormatLink => 'پیوند';

  @override
  String noteEdited(String time) {
    return 'ویرایش‌شده $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count واژه',
      one: '$count واژه',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'فلش‌کارت‌ها';

  @override
  String get flashEmptyTitle => 'اولین دسته کارتتان را بسازید';

  @override
  String get flashEmptyMessage => 'مرور فاصله‌دار هر کارت را درست پیش از فراموش‌شدن نشان می‌دهد.';

  @override
  String get deckNew => 'دسته جدید';

  @override
  String get deckEdit => 'ویرایش دسته';

  @override
  String get deckName => 'نام دسته';

  @override
  String get deckDescription => 'توضیحات';

  @override
  String get deckDailyNew => 'کارت جدید در روز';

  @override
  String get deckDailyReview => 'هدف مرور روزانه';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت',
      one: '$count کارت',
      zero: 'بدون کارت',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'سررسید';

  @override
  String get deckNewCards => 'جدید';

  @override
  String get deckMature => 'تثبیت‌شده';

  @override
  String get deckStudy => 'مطالعه';

  @override
  String get deckNothingDue => 'فعلاً چیزی برای مرور نیست. بعداً برگردید.';

  @override
  String get deckEmptyCards => 'برای شروع یادگیری کارت اضافه کنید.';

  @override
  String get cardNew => 'کارت جدید';

  @override
  String get cardEdit => 'ویرایش کارت';

  @override
  String get cardFront => 'رو';

  @override
  String get cardBack => 'پشت';

  @override
  String get cardFrontHint => 'پرسش یا اصطلاح';

  @override
  String get cardBackHint => 'پاسخ یا تعریف';

  @override
  String get cardTags => 'برچسب‌ها';

  @override
  String get cardAddAnother => 'ذخیره و افزودن کارت دیگر';

  @override
  String get reviewShowAnswer => 'نمایش پاسخ';

  @override
  String get reviewAgain => 'دوباره';

  @override
  String get reviewHard => 'سخت';

  @override
  String get reviewGood => 'خوب';

  @override
  String get reviewEasy => 'آسان';

  @override
  String reviewProgress(int done, int total) {
    return '$done از $total';
  }

  @override
  String get reviewFinishedTitle => 'جلسه تمام شد';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت مرور کردید.',
      one: '$count کارت مرور کردید.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'برای دیدن پاسخ ضربه بزنید';

  @override
  String get importCardsTitle => 'وارد کردن کارت‌ها';

  @override
  String get importCardsHint =>
      'در هر خط یک کارت بچسبانید (رو و پشت با تب یا نقطه‌ویرگول جدا شوند)، یا فایلی انتخاب کنید: Excel (.xlsx)، CSV، دسته Anki (.apkg) یا دسته‌ای که خروجی گرفته‌اید.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت وارد شد',
      one: '$count کارت وارد شد',
      zero: 'کارتی وارد نشد',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'این محتوا وارد نشد.';

  @override
  String get exportCopied => 'از دسته خروجی گرفته شد';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقیقه',
      one: '$count دقیقه',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: '$count روز',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'هدف‌ها';

  @override
  String get goalsEmptyTitle => 'هدفی بگذارید';

  @override
  String get goalsEmptyMessage =>
      'هدف‌های روزانه، هفتگی، ماهانه یا بلندمدت تعیین کنید و پیشرفت واقعی را دنبال کنید.';

  @override
  String get goalNew => 'هدف جدید';

  @override
  String get goalEdit => 'ویرایش هدف';

  @override
  String get goalTitleHint => 'می‌خواهید به چه چیزی برسید؟';

  @override
  String get goalPeriod => 'دوره';

  @override
  String get goalPeriodDaily => 'روزانه';

  @override
  String get goalPeriodWeekly => 'هفتگی';

  @override
  String get goalPeriodMonthly => 'ماهانه';

  @override
  String get goalPeriodLongTerm => 'بلندمدت';

  @override
  String get goalTarget => 'مقدار هدف';

  @override
  String get goalUnit => 'واحد';

  @override
  String get goalUnitHint => 'مثلاً صفحه، کیلومتر، ساعت';

  @override
  String get goalStatusActive => 'فعال';

  @override
  String get goalStatusPaused => 'متوقف';

  @override
  String get goalStatusAchieved => 'به دست آمده';

  @override
  String get goalPause => 'توقف هدف';

  @override
  String get goalResume => 'ادامه هدف';

  @override
  String get goalMarkAchieved => 'علامت‌گذاری به‌عنوان به‌دست‌آمده';

  @override
  String goalProgressOf(String current, String target) {
    return '$current از $target';
  }

  @override
  String get goalLogAmount => 'مقدار';

  @override
  String get goalLogNote => 'یادداشت (اختیاری)';

  @override
  String get goalHistory => 'تاریخچه';

  @override
  String get goalNoHistory => 'پیشرفت ثبت‌شده اینجا نمایش داده می‌شود';

  @override
  String get goalLinkedTasks => 'کارهای پیوندشده';

  @override
  String get goalLinkedTasksHint =>
      'هر کار پیوندشده‌ای که تمام شود، 1 واحد به این هدف اضافه می‌کند.';

  @override
  String get goalThisPeriod => 'این دوره';

  @override
  String get habitsTitle => 'عادت‌ها';

  @override
  String get habitsEmptyTitle => 'قدم‌های کوچک، هر روز';

  @override
  String get habitsEmptyMessage => 'عادتی بسازید و هر بار انجامش دادید تیک بزنید.';

  @override
  String get habitNew => 'عادت جدید';

  @override
  String get habitEdit => 'ویرایش عادت';

  @override
  String get habitNameHint => 'مثلاً 20 صفحه مطالعه';

  @override
  String get habitDays => 'برنامه';

  @override
  String get habitEveryDay => 'هر روز';

  @override
  String get habitTargetPerDay => 'دفعات در روز';

  @override
  String get habitReminder => 'یادآوری روزانه';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'زنجیره $count روزه',
      one: 'زنجیره $count روزه',
      zero: 'بدون زنجیره',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'بهترین زنجیره';

  @override
  String get habitCurrentStreak => 'زنجیره فعلی';

  @override
  String get habitConsistency => 'پیوستگی';

  @override
  String get habitLast90 => '90 روز گذشته';

  @override
  String get habitPaused => 'متوقف';

  @override
  String get habitPause => 'توقف عادت';

  @override
  String get habitResume => 'ادامه عادت';

  @override
  String get habitDoneToday => 'امروز انجام شد';

  @override
  String habitCountToday(int count, int target) {
    return 'امروز $count از $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'تیک زدن «$name»';
  }

  @override
  String get habitNotScheduledToday => 'امروز در برنامه نیست';

  @override
  String get analyticsTitle => 'آمار';

  @override
  String get rangeWeek => '7 روز';

  @override
  String get rangeMonth => '30 روز';

  @override
  String get rangeQuarter => '90 روز';

  @override
  String get statFocusTime => 'زمان تمرکز';

  @override
  String get statSessions => 'جلسه‌ها';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed تمام‌شده · $interrupted زودتر متوقف‌شده';
  }

  @override
  String get statTasksDone => 'کارهای انجام‌شده';

  @override
  String get statCompletionRate => 'انجام به‌موقع';

  @override
  String get statHabitConsistency => 'پیوستگی عادت‌ها';

  @override
  String get statRetention => 'به‌خاطرسپاری کارت‌ها';

  @override
  String get statReviews => 'مرورها';

  @override
  String get statActiveGoals => 'هدف‌های فعال';

  @override
  String get statEstimated => 'کار برآوردی انجام‌شده';

  @override
  String get statEstimatedNote => 'بر اساس برآوردهای شما، نه زمان اندازه‌گیری‌شده';

  @override
  String get statMeasuredNote => 'اندازه‌گیری‌شده از جلسه‌های تمرکز';

  @override
  String get chartFocusByDay => 'دقیقه تمرکز در روز';

  @override
  String get chartTasksByDay => 'کارهای انجام‌شده در روز';

  @override
  String get chartTimeByProject => 'زمان بر اساس پروژه';

  @override
  String get chartProjectProgress => 'پیشرفت پروژه‌ها';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: مجموع $total، بهترین روز $best';
  }

  @override
  String get analyticsNoData => 'هنوز داده کافی نیست';

  @override
  String get analyticsUnassigned => 'بدون پروژه';

  @override
  String get searchHint => 'جستجو در همه‌چیز…';

  @override
  String get searchRecent => 'جستجوهای اخیر';

  @override
  String get searchClearRecent => 'پاک کردن جستجوهای اخیر';

  @override
  String searchNoResults(String query) {
    return 'نتیجه‌ای برای «$query» نیست';
  }

  @override
  String get searchStartTyping =>
      'در کارها، یادداشت‌ها، کارت‌ها، هدف‌ها، رویدادها و بیشتر جستجو کنید. جستجو روی همین دستگاه انجام می‌شود.';

  @override
  String get searchCatTask => 'کارها';

  @override
  String get searchCatProject => 'پروژه‌ها';

  @override
  String get searchCatNote => 'یادداشت‌ها';

  @override
  String get searchCatFlashcard => 'کارت‌ها';

  @override
  String get searchCatDeck => 'دسته‌ها';

  @override
  String get searchCatGoal => 'هدف‌ها';

  @override
  String get searchCatHabit => 'عادت‌ها';

  @override
  String get searchCatEvent => 'رویدادها';

  @override
  String get searchCatSession => 'جلسه‌ها';

  @override
  String get searchAll => 'همه';

  @override
  String get assistantTitle => 'دستیار';

  @override
  String get assistantIntro =>
      'کمک برنامه‌ریزی که روی دستگاه شما کار می‌کند. در صورت تمایل، یک ارائه‌دهنده هوش مصنوعی دلخواه را برای خلاصه‌سازی و تولید متصل کنید.';

  @override
  String get assistantOnDevice => 'روی دستگاه';

  @override
  String get assistantCloud => 'ارائه‌دهنده هوش مصنوعی';

  @override
  String get assistantPlanDay => 'برنامه‌ریزی روزم';

  @override
  String get assistantPlanDayDesc =>
      'کارهای باز را بر اساس فوریت، اولویت و برآورد مرتب می‌کند و بین رویدادهایتان جا می‌دهد.';

  @override
  String get assistantExtractTasks => 'استخراج کار از یادداشت';

  @override
  String get assistantExtractTasksDesc =>
      'موارد چک‌لیست و خطوط اقدام را در یادداشت پیدا می‌کند و به کار تبدیل می‌کند.';

  @override
  String get assistantMakeCards => 'ساخت فلش‌کارت از یادداشت';

  @override
  String get assistantMakeCardsDesc => 'خطوط «اصطلاح: تعریف» و پرسش/پاسخ را به کارت تبدیل می‌کند.';

  @override
  String get assistantSummarize => 'خلاصه یادداشت';

  @override
  String get assistantSummarizeDesc =>
      'به ارائه‌دهنده هوش مصنوعی نیاز دارد. یادداشت فقط پس از تأیید شما ارسال می‌شود.';

  @override
  String get assistantWorkload => 'نمای کلی حجم کار';

  @override
  String get assistantWorkloadDesc => 'کار برآوردی را با وقت آزاد شما در این هفته مقایسه می‌کند.';

  @override
  String get assistantPlanEmpty => 'کار بازی برای برنامه‌ریزی نیست. از فرصت لذت ببرید.';

  @override
  String assistantPlanCapacity(String time) {
    return 'وقت آزاد تمرکز امروز: $time';
  }

  @override
  String get assistantPlanOverflow => 'شاید این‌ها امروز جا نشوند:';

  @override
  String get assistantChooseNote => 'انتخاب یادداشت';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کار پیدا شد',
      one: '$count کار پیدا شد',
      zero: 'کاری در این یادداشت پیدا نشد',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت پیدا شد',
      one: '$count کارت پیدا شد',
      zero: 'کارتی در این یادداشت پیدا نشد',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'انتخاب دسته';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'کار برآوردی: $estimated. وقت آزاد: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'بیشتر از وقت موجود برنامه‌ریزی کرده‌اید. جابه‌جا کردن کارهای کم‌اولویت‌تر را در نظر بگیرید.';

  @override
  String get assistantWorkloadOk => 'برنامه شما در وقت موجود جا می‌شود.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کار باز برآورد ندارند.',
      one: '$count کار باز برآورد ندارد.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'ارائه‌دهنده هوش مصنوعی';

  @override
  String get assistantProviderOff =>
      'ارائه‌دهنده‌ای متصل نیست. ابزارهای روی دستگاه همچنان کار می‌کنند.';

  @override
  String assistantProviderOn(String host) {
    return 'متصل به $host';
  }

  @override
  String get assistantEndpoint => 'نقطه پایانی API (HTTPS)';

  @override
  String get assistantModel => 'مدل';

  @override
  String get assistantApiKey => 'کلید API';

  @override
  String get assistantApiKeyStored => 'به‌صورت امن روی این دستگاه ذخیره می‌شود';

  @override
  String get assistantHttpsOnly => 'فقط نقاط پایانی HTTPS مجاز است';

  @override
  String get assistantConsentTitle => 'این محتوا برای ارائه‌دهنده هوش مصنوعی ارسال شود؟';

  @override
  String assistantConsentBody(String host) {
    return 'متن یادداشت انتخاب‌شده از این دستگاه خارج و توسط $host پردازش می‌شود. چیز دیگری ارسال نمی‌شود.';
  }

  @override
  String get assistantConsentAlways => 'برای این ارائه‌دهنده دیگر نپرس';

  @override
  String get assistantSend => 'ارسال';

  @override
  String get assistantUnavailable =>
      'دسترسی به ارائه‌دهنده هوش مصنوعی ممکن نشد. بعداً دوباره تلاش کنید.';

  @override
  String get assistantDisabledTitle => 'دستیار خاموش است';

  @override
  String get assistantDisabledMessage =>
      'برای استفاده از ابزارهای برنامه‌ریزی روشنش کنید. هیچ داده‌ای از دستگاه خارج نمی‌شود مگر اینکه ارائه‌دهنده‌ای متصل کنید و هر درخواست را تأیید کنید.';

  @override
  String get assistantSummaryTitle => 'خلاصه';

  @override
  String get assistantRemoveProvider => 'حذف ارائه‌دهنده';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String get settingsGeneral => 'عمومی';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get settingsLanguageSystem => 'زبان دستگاه';

  @override
  String get settingsAppearance => 'ظاهر';

  @override
  String get settingsTheme => 'پوسته';

  @override
  String get themeLight => 'روشن';

  @override
  String get themeDark => 'تیره';

  @override
  String get themeSystem => 'سیستم';

  @override
  String get settingsReduceMotion => 'کاهش حرکت';

  @override
  String get settingsReduceMotionDesc => 'کمینه کردن انیمیشن‌ها و پس‌زمینه‌های متحرک';

  @override
  String get settingsFocus => 'تایمر تمرکز';

  @override
  String get settingsWorkLength => 'مدت تمرکز';

  @override
  String get settingsShortBreak => 'استراحت کوتاه';

  @override
  String get settingsLongBreak => 'استراحت طولانی';

  @override
  String get settingsLongBreakEvery => 'استراحت طولانی پس از';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count جلسه',
      one: '$count جلسه',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'شروع خودکار استراحت‌ها';

  @override
  String get settingsSound => 'صدای پایان';

  @override
  String get settingsDailyFocusTarget => 'هدف تمرکز روزانه';

  @override
  String get settingsWeeklyFocusTarget => 'هدف تمرکز هفتگی';

  @override
  String get settingsNotifications => 'اعلان‌ها';

  @override
  String get settingsNotificationsEnable => 'اجازه یادآوری‌ها';

  @override
  String get settingsQuietHours => 'ساعت‌های سکوت';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'یادآوری‌های عادت، هدف و مرور از $start تا $end بی‌صدا هستند';
  }

  @override
  String get settingsReviewReminder => 'یادآوری مرور فلش‌کارت';

  @override
  String get settingsPermissionDenied => 'اعلان‌ها در تنظیمات سیستم مسدود شده‌اند.';

  @override
  String get settingsPrivacy => 'حریم خصوصی و داده‌ها';

  @override
  String get settingsPrivacyStatement =>
      'داده‌های شما فقط روی همین دستگاه و به‌صورت رمزگذاری‌شده ذخیره می‌شود. بدون حساب، بدون تحلیل، بدون ردیابی.';

  @override
  String get settingsBackup => 'ساخت پشتیبان رمزگذاری‌شده';

  @override
  String get settingsBackupDesc => 'محافظت‌شده با رمزی که خودتان انتخاب می‌کنید';

  @override
  String get settingsRestore => 'بازیابی از پشتیبان';

  @override
  String get settingsRestoreDesc => 'همه داده‌های این دستگاه را جایگزین می‌کند';

  @override
  String get settingsErase => 'پاک کردن همه داده‌ها';

  @override
  String get settingsEraseDesc => 'حذف همیشگی همه‌چیز از این دستگاه';

  @override
  String get settingsEraseConfirmTitle => 'همه داده‌ها پاک شود؟';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'همه کارها، یادداشت‌ها، کارت‌ها، هدف‌ها، عادت‌ها، رویدادها و جلسه‌ها برای همیشه حذف می‌شوند. برای تأیید $word را بنویسید.';
  }

  @override
  String get settingsEraseWord => 'پاک';

  @override
  String get settingsErased => 'همه داده‌ها پاک شد';

  @override
  String get backupPassword => 'رمز پشتیبان';

  @override
  String get backupPasswordConfirm => 'تکرار رمز';

  @override
  String backupPasswordHint(int count) {
    return 'دست‌کم $count نویسه. اگر فراموش شود، قابل بازیابی نیست.';
  }

  @override
  String get backupPasswordMismatch => 'رمزها یکسان نیستند';

  @override
  String get backupPasswordShort => 'رمز خیلی کوتاه است';

  @override
  String get backupCreating => 'در حال رمزگذاری پشتیبان…';

  @override
  String get backupCreated => 'پشتیبان آماده ذخیره است';

  @override
  String get backupRestoring => 'در حال بررسی و بازیابی…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مورد بازیابی شد',
      one: '$count مورد بازیابی شد',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'رمز اشتباه است یا فایل تغییر کرده است.';

  @override
  String get backupNotABackup => 'این فایل پشتیبان Deep Focus نیست.';

  @override
  String get backupCorrupted => 'فایل پشتیبان آسیب دیده است.';

  @override
  String get backupNewer =>
      'این پشتیبان با نسخه جدیدتری از برنامه ساخته شده است. لطفاً اول به‌روزرسانی کنید.';

  @override
  String get backupRestoreConfirmTitle => 'همه داده‌ها جایگزین شود؟';

  @override
  String get backupRestoreConfirmBody =>
      'هر چه اکنون روی این دستگاه است با پشتیبان جایگزین می‌شود. اگر بازیابی ناموفق باشد، چیزی تغییر نمی‌کند.';

  @override
  String get settingsAbout => 'درباره';

  @override
  String settingsVersion(String version) {
    return 'نسخه $version';
  }

  @override
  String get settingsLicenses => 'مجوزهای متن‌باز';

  @override
  String get settingsAssistant => 'دستیار';

  @override
  String get settingsAssistantEnable => 'فعال‌سازی دستیار';

  @override
  String get settingsDashboard => 'بخش‌های خانه';

  @override
  String get settingsTrash => 'سطل زباله';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes دقیقه';
  }

  @override
  String get trashEmpty => 'سطل زباله خالی است';

  @override
  String get trashHint => 'موارد حذف‌شده تا وقتی پاکشان نکنید اینجا می‌مانند.';

  @override
  String get trashTasks => 'کارها';

  @override
  String get trashNotes => 'یادداشت‌ها';

  @override
  String get onboardWelcomeTitle => 'به فضای کاری تازه‌تان خوش آمدید';

  @override
  String get onboardWelcomeBody =>
      'کارها، تمرکز، تقویم، یادداشت‌ها، فلش‌کارت‌ها، هدف‌ها و عادت‌ها — کنار هم، ساده و زیبا.';

  @override
  String get onboardPrivateTitle => 'خصوصی از پایه';

  @override
  String get onboardPrivateBody =>
      'همه‌چیز روی همین دستگاه و رمزگذاری‌شده می‌ماند. بدون حساب. بدون ردیابی. کنترل در دست شماست.';

  @override
  String get onboardLanguageTitle => 'زبان خود را انتخاب کنید';

  @override
  String get onboardNotifTitle => 'یادآوری‌های ملایم';

  @override
  String get onboardNotifBody =>
      'برای یادآوری کارها و اعلان‌های تمرکز، اجازه اعلان بدهید. هر زمان می‌توانید تغییرش دهید.';

  @override
  String get onboardGetStarted => 'شروع کنیم';

  @override
  String onboardStep(int current, int total) {
    return 'مرحله $current از $total';
  }

  @override
  String get notifChannelReminders => 'یادآوری‌ها';

  @override
  String get notifChannelRemindersDesc => 'یادآوری کارها، رویدادها، عادت‌ها و هدف‌ها';

  @override
  String get notifChannelFocus => 'تایمر تمرکز';

  @override
  String get notifChannelFocusDesc => 'اعلان پایان جلسه تمرکز یا استراحت';

  @override
  String get notifTaskTitle => 'یادآوری کار';

  @override
  String get notifEventTitle => 'رویداد پیش رو';

  @override
  String notifEventBody(String title, String time) {
    return '$title ساعت $time';
  }

  @override
  String get notifFocusDoneTitle => 'جلسه تمرکز تمام شد';

  @override
  String get notifFocusDoneBody => 'عالی بود. وقت استراحت است.';

  @override
  String get notifBreakDoneTitle => 'استراحت تمام شد';

  @override
  String get notifBreakDoneBody => 'برای جلسه تمرکز بعدی آماده‌اید؟';

  @override
  String get notifHabitTitle => 'یادآوری عادت';

  @override
  String get notifReviewTitle => 'فلش‌کارت‌ها آماده‌اند';

  @override
  String get notifReviewBody => 'یک مرور کوتاه حافظه‌تان را قوی نگه می‌دارد.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ساعت و $minutes دقیقه';
  }

  @override
  String durationHours(int hours) {
    return '$hours ساعت';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes دقیقه';
  }

  @override
  String percentValue(int value) {
    return '$value٪';
  }

  @override
  String get weekdaysShort => 'د,س,چ,پ,ج,ش,ی';

  @override
  String a11yProgress(int value) {
    return 'پیشرفت $value درصد';
  }

  @override
  String a11yPriority(String level) {
    return 'اولویت: $level';
  }

  @override
  String a11yColor(int index) {
    return 'رنگ $index';
  }

  @override
  String get analyticsRangeLabel => 'بازه زمانی';

  @override
  String get analyticsRefresh => 'به‌روزرسانی';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done از $total کار سررسیددار به‌موقع انجام شد';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done از $total کار انجام شد';
  }

  @override
  String get analyticsNoProjects => 'پروژه فعالی نیست';

  @override
  String get analyticsNoFocus => 'در این بازه جلسه تمرکزی نیست';

  @override
  String get analyticsHabitsNone => 'عادت فعالی نیست';

  @override
  String get analyticsRetentionNote => 'سهم کارت‌های تثبیت‌شده‌ای که به یاد آوردید';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'وقت آزاد در روزهای کاری ($days) از $start تا $end حساب می‌شود، منهای رویدادهای زمان‌دار. کار برآوردی مجموع برآورد کارهای بازی است که در 7 روز آینده سررسید دارند.';
  }

  @override
  String get assistantWorkdaysMonFri => 'دوشنبه تا جمعه';

  @override
  String get assistantWorkdaysSunThu => 'یکشنبه تا پنجشنبه';

  @override
  String get assistantWorkloadDayOff => 'روز تعطیل';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated برنامه‌ریزی‌شده · $free آزاد';
  }

  @override
  String assistantPlanRule(String end) {
    return 'از اکنون تا $end، در فاصله رویدادهای امروز برنامه‌ریزی شد. اول کارهای عقب‌افتاده، بعد اولویت، سررسید و برآورد.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'زمان‌بندی به‌صورت بلوک‌های زمانی';

  @override
  String get assistantScheduleConfirmTitle => 'بلوک‌های زمانی به تقویم اضافه شود؟';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بلوک زمانی به تقویم امروز اضافه می‌شود.',
      one: '$count بلوک زمانی به تقویم امروز اضافه می‌شود.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بلوک زمانی اضافه شد',
      one: '$count بلوک زمانی اضافه شد',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'از قبل در تقویم';

  @override
  String get assistantPlanTimeline => 'امروز جا می‌شود';

  @override
  String get assistantNoEstimate => 'برای برنامه‌ریزی برآورد اضافه کنید';

  @override
  String get assistantNoNotes => 'هنوز یادداشتی نیست. اول یک یادداشت بنویسید.';

  @override
  String get assistantNoteEmpty => 'این یادداشت خالی است.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کار ساخته شد',
      one: '$count کار ساخته شد',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت ساخته شد',
      one: '$count کارت ساخته شد',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ساختن $count مورد',
      zero: 'چیزی انتخاب نشده',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'شناخته می‌شود: کادرهای تیک‌نخورده «- [ ]» و خطوطی که با TODO: یا To do: شروع می‌شوند';

  @override
  String get assistantCardsHint =>
      'شناخته می‌شود: «اصطلاح: تعریف»، «اصطلاح — تعریف» و جفت خطوط Q: و A:';

  @override
  String get assistantProviderHint =>
      'از هر سرویس سازگار با OpenAI استفاده کنید. کلید در فضای امن این دستگاه می‌ماند و هرگز در پشتیبان‌ها قرار نمی‌گیرد.';

  @override
  String get assistantEndpointHelp => 'برای نمونه https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'برای حفظ کلید ذخیره‌شده خالی بگذارید';

  @override
  String get assistantApiKeyRequired => 'یک کلید API وارد کنید';

  @override
  String get assistantProviderSaved => 'ارائه‌دهنده ذخیره شد';

  @override
  String get assistantProviderRemoved => 'ارائه‌دهنده حذف و کلید پاک شد';

  @override
  String get assistantRemoveProviderConfirm =>
      'ارائه‌دهنده حذف شود و کلید API ذخیره‌شده از این دستگاه پاک شود؟';

  @override
  String get assistantAskEveryTime => 'پیش از هر درخواست بپرس';

  @override
  String get assistantSummarizing => 'در حال خلاصه‌سازی…';

  @override
  String assistantSummaryNote(String host) {
    return 'تولیدشده توسط $host. پیش از اتکا بازبینی کنید.';
  }

  @override
  String get assistantCopy => 'کپی';

  @override
  String get assistantCopied => 'کپی شد';

  @override
  String get assistantConfigure => 'راه‌اندازی ارائه‌دهنده';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'همه رویدادهای این سری جابه‌جا شدند';

  @override
  String get calendarEventReminder => 'یادآوری';

  @override
  String get calendarEventRepeat => 'تکرار';

  @override
  String get calendarEventColor => 'رنگ';

  @override
  String get calendarDefaultColor => 'استفاده از رنگ نوع';

  @override
  String get calendarEventLinkedTask => 'کار پیوندشده';

  @override
  String get calendarEventNoTask => 'کاری پیوند نشده';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count رویداد',
      one: '$count رویداد',
      zero: 'بدون رویداد',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کار سررسیددار',
      one: '$count کار سررسیددار',
      zero: 'کار سررسیدداری نیست',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events، $tasks';
  }

  @override
  String get calendarNoEventsHint => 'برای برنامه‌ریزی این روز، رویداد یا بلوک زمانی اضافه کنید.';

  @override
  String get calendarNow => 'زمان کنونی';

  @override
  String get calendarRecurring => 'تکرارشونده';

  @override
  String get calendarEventNotFound => 'این رویداد دیگر وجود ندارد';

  @override
  String get calendarEventLocalTime => 'زمان‌ها بر اساس منطقه زمانی دستگاه نمایش داده می‌شوند';

  @override
  String get calendarEventDeleted => 'رویداد به سطل زباله منتقل شد';

  @override
  String get calendarConflictMarker => 'با رویداد دیگری هم‌پوشانی دارد';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title، $time';
  }

  @override
  String get calendarSeriesEditNote => 'تغییرات روی همه رویدادهای این سری اعمال می‌شود';

  @override
  String get calendarDragHintSeries => 'کشیدن یک رویداد تکرارشونده کل سری را جابه‌جا می‌کند';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title، کار سررسیددار';
  }

  @override
  String get startupErrorTitle => 'داده‌های شما باز نشد';

  @override
  String get startupErrorLocked =>
      'کلید رمزگذاری داده‌های این دستگاه در دسترس نیست. چیزی حذف نشده است. راه‌اندازی دوباره دستگاه اغلب کمک می‌کند. اگر اخیراً دستگاه را بازیابی کرده‌اید، داده‌ها را از پشتیبان رمزگذاری‌شده بازیابی کنید.';

  @override
  String get startupErrorCipher =>
      'این دستگاه از فضای ذخیره رمزگذاری‌شده‌ای که برنامه نیاز دارد پشتیبانی نمی‌کند. چیزی بدون رمزگذاری ذخیره نشده است.';

  @override
  String get startupErrorRetry => 'تلاش دوباره';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت آماده مرور است',
      one: '$count کارت آماده مرور است',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count سررسید';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count جدید';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'کارت‌های تثبیت‌شده: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 یا بیشتر وارد کنید';

  @override
  String get flashcardsSearchCards => 'جستجوی کارت‌ها';

  @override
  String get flashcardsSearchEmpty => 'کارتی با جستجوی شما مطابقت ندارد';

  @override
  String get flashcardsCardAdded => 'کارت اضافه شد';

  @override
  String flashcardsCardDueOn(String date) {
    return 'سررسید $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'کپی در کلیپ‌بورد';

  @override
  String get flashcardsExportTitle => 'خروجی دسته';

  @override
  String get flashcardsDeleteDeck => 'حذف دسته';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating، مرور بعدی در $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'پرسش: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'پاسخ: $text';
  }

  @override
  String get flashcardsShowQuestion => 'نمایش پرسش';

  @override
  String get flashcardsImportField => 'کارت‌های واردشونده';

  @override
  String get flashcardsNothingToStudy => 'چیزی برای مطالعه نیست';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت آماده مطالعه',
      one: '$count کارت آماده مطالعه',
      zero: 'کارت آماده‌ای نیست',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'بر اساس امتیاز';

  @override
  String get flashcardsDeckNotFound => 'این دسته دیگر در دسترس نیست.';

  @override
  String get focusSessionDeleted => 'جلسه حذف شد';

  @override
  String get focusDeleteConfirm =>
      'این جلسه از تاریخچه حذف شود؟ زمانش دیگر در هدف‌هایتان حساب نمی‌شود.';

  @override
  String get focusUnlinkTask => 'برداشتن کار پیوندشده';

  @override
  String get focusNoteHint => 'روی چه کاری کار کردید؟';

  @override
  String get focusTargetCaption => 'اندازه‌گیری‌شده از جلسه‌های ذخیره‌شده';

  @override
  String get focusModeLabel => 'حالت تایمر';

  @override
  String focusUpNext(String phase) {
    return 'بعدی: $phase';
  }

  @override
  String get focusStopwatchHint => 'تا وقتی متوقفش کنید رو به جلو می‌شمارد.';

  @override
  String get focusOpenHint => 'بدون محدودیت زمانی. هر وقت تمام شد متوقف کنید.';

  @override
  String get focusNotificationsDisabledInApp =>
      'یادآوری‌ها در تنظیمات خاموش‌اند. پایان جلسه به شما اطلاع داده نمی‌شود.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode، $duration، $when';
  }

  @override
  String get goalsFilterAll => 'همه';

  @override
  String get goalsFilterPeriod => 'فیلتر دوره';

  @override
  String get goalsFilterStatus => 'فیلتر وضعیت';

  @override
  String get goalsEmptyFiltered => 'هدفی با این فیلتر مطابقت ندارد';

  @override
  String goalsDueOn(String date) {
    return 'سررسید $date';
  }

  @override
  String get goalsDeadline => 'مهلت (اختیاری)';

  @override
  String get goalsNoDeadline => 'بدون مهلت';

  @override
  String get goalsSetDeadline => 'تعیین مهلت';

  @override
  String get goalsRemoveDeadline => 'حذف مهلت';

  @override
  String get goalsDescription => 'توضیحات (اختیاری)';

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
  String get goalsReached => 'به مقدار هدف رسید';

  @override
  String get goalsLogged => 'پیشرفت ثبت شد';

  @override
  String get goalsEntryDeleted => 'مورد حذف شد';

  @override
  String get goalsDeleteEntry => 'حذف مورد';

  @override
  String get goalsDeleted => 'هدف حذف شد';

  @override
  String get goalsMarkActive => 'علامت‌گذاری به‌عنوان فعال';

  @override
  String get goalsNotFound => 'این هدف دیگر در دسترس نیست';

  @override
  String get goalsLinkTask => 'پیوند به کار';

  @override
  String get goalsNoLinkedTasks => 'هنوز کاری پیوند نشده';

  @override
  String get goalsUnlinkTask => 'قطع پیوند کار';

  @override
  String get goalsTaskOpen => 'هنوز انجام نشده';

  @override
  String get goalsTaskLinked => 'کار پیوند شد';

  @override
  String get goalsTaskUnlinked => 'پیوند کار قطع شد';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کار پیوندشده انجام‌شده',
      one: '$count کار پیوندشده انجام‌شده',
    );
    return 'شامل $_temp0 در این دوره';
  }

  @override
  String get goalsHistoryAllTime =>
      'موارد دوره‌های قبلی اینجا می‌مانند ولی فقط در دوره خودشان حساب می‌شوند.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'امروز $done از $total انجام شد';
  }

  @override
  String get habitsNothingToday => 'امروز عادتی در برنامه نیست';

  @override
  String get habitsDecrease => 'برداشتن یک تیک';

  @override
  String get habitsResetToday => 'بازنشانی امروز';

  @override
  String get habitsCheckInHint => 'برای تنظیم نگه دارید';

  @override
  String get habitsName => 'نام';

  @override
  String get habitsColor => 'رنگ';

  @override
  String get habitsValidationDays => 'دست‌کم یک روز انتخاب کنید';

  @override
  String habitsReminderAt(String time) {
    return 'هر روز ساعت $time';
  }

  @override
  String get habitsSetReminder => 'تعیین ساعت یادآوری';

  @override
  String get habitsRemoveReminder => 'حذف یادآوری';

  @override
  String get habitsReminderNote =>
      'اگر اعلان‌ها مجاز باشند، یادآوری‌ها در روزهای برنامه‌ریزی‌شده نمایش داده می‌شوند.';

  @override
  String get habitsArchived => 'عادت بایگانی شد';

  @override
  String get habitsNotFound => 'این عادت دیگر در دسترس نیست';

  @override
  String get habitsLast30 => '30 روز گذشته';

  @override
  String get habitsConsistencyNone => 'هنوز داده کافی نیست';

  @override
  String get habitsCalendar => 'تاریخچه تیک‌ها';

  @override
  String get habitsCalendarHint => 'برای اصلاح، روی یک روز ضربه بزنید.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count از $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'تیک‌های 90 روز گذشته. پیوستگی $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'تیک‌های 90 روز گذشته. هنوز داده کافی نیست.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: '$count روز',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'روزهای توقف روی زنجیره شما اثری ندارند.';

  @override
  String get habitsListSeparator => '، ';

  @override
  String get habitsArchive => 'بایگانی عادت';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'روزی $count بار',
      one: 'روزی یک بار',
      zero: 'روزی $count بار',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'یادداشت‌های دیگر';

  @override
  String get notesAllNotebooks => 'همه دفترچه‌ها';

  @override
  String get notesNotebookName => 'نام دفترچه';

  @override
  String get notesNotebookColor => 'رنگ';

  @override
  String get notesDeleteNotebook => 'حذف دفترچه';

  @override
  String get notesDeleteNotebookMessage =>
      'دفترچه حذف می‌شود. یادداشت‌هایش می‌مانند و در «همه دفترچه‌ها» نمایش داده می‌شوند.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'یادداشت‌های مهم را سنجاق کنید تا بالا بمانند.';

  @override
  String get notesEmptyFavorites => 'یادداشت‌هایی که علاقه‌مندی کنید اینجا نمایش داده می‌شوند.';

  @override
  String get notesEmptyArchived => 'یادداشت‌های بایگانی‌شده اینجا نمایش داده می‌شوند.';

  @override
  String get notesEmptyFiltered => 'یادداشتی با این فیلترها مطابقت ندارد.';

  @override
  String get notesArchivedSnack => 'یادداشت بایگانی شد';

  @override
  String get notesUnarchivedSnack => 'یادداشت به یادداشت‌هایتان برگشت';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done از $total انجام شد';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'قالب‌بندی';

  @override
  String get notesWrite => 'نوشتن';

  @override
  String get notesPreviewEmpty => 'هنوز چیزی برای پیش‌نمایش نیست.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'هنوز یادداشت دیگری به اینجا پیوند نداده است. با [[$title]] به این یادداشت پیوند دهید.';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'به این یادداشت عنوان بدهید تا یادداشت‌های دیگر بتوانند به آن پیوند دهند.';

  @override
  String get notesLinkedTasksEmpty => 'کاری به این یادداشت پیوند نشده است.';

  @override
  String notesLinkMissing(String title) {
    return 'هنوز یادداشتی با عنوان «$title» نیست.';
  }

  @override
  String get notesNotFound => 'این یادداشت دیگر وجود ندارد.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'مورد چک‌لیست: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'باز کردن یادداشت $title';
  }

  @override
  String get notesTaskDone => 'انجام‌شده';

  @override
  String get notifTimerDoneBody => 'زمانی که تعیین کرده بودید تمام شد.';

  @override
  String get onboardingPrivatePointDevice => 'فقط روی همین دستگاه، رمزگذاری‌شده';

  @override
  String get onboardingPrivatePointAccount => 'بدون نیاز به حساب';

  @override
  String get onboardingPrivatePointTracking => 'بدون تحلیل، بدون ردیابی';

  @override
  String get onboardingLanguageBody => 'هر زمان می‌توانید این را در تنظیمات تغییر دهید.';

  @override
  String get onboardingNext => 'بعدی';

  @override
  String get projectsActive => 'فعال';

  @override
  String get projectNameHint => 'مثلاً عرضه محصول';

  @override
  String get projectGoalHint => 'وقتی تمام شود، چه شکلی دارد؟';

  @override
  String get projectNoDeadline => 'بدون مهلت';

  @override
  String get projectTasksOpen => 'کارهای باز';

  @override
  String get projectTasksCompleted => 'کارهای انجام‌شده';

  @override
  String get projectAddTask => 'افزودن کار به پروژه';

  @override
  String get projectAddNote => 'یادداشت جدید پروژه';

  @override
  String get projectLinkedNotes => 'یادداشت‌ها';

  @override
  String get projectNoTasks => 'هنوز کاری در این پروژه نیست';

  @override
  String get projectArchivedBadge => 'بایگانی‌شده';

  @override
  String get projectDeleted => 'پروژه به سطل زباله منتقل شد';

  @override
  String get projectDeleteMessage => 'کارها بدون پروژه در فهرستتان می‌مانند.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name، $percent درصد انجام‌شده';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نتیجه',
      one: '$count نتیجه',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'فیلتر بر اساس نوع';

  @override
  String searchRecentTap(String query) {
    return 'جستجوی دوباره $query';
  }

  @override
  String get settingsLanguageHint =>
      'زبان کل برنامه را انتخاب کنید. نام‌ها به زبان خودشان نمایش داده می‌شوند.';

  @override
  String get settingsThemeHint => 'روشن، تیره یا مطابق سیستم';

  @override
  String settingsDecrease(String setting) {
    return 'کاهش $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'افزایش $setting';
  }

  @override
  String get settingsQuietStart => 'شروع';

  @override
  String get settingsQuietEnd => 'پایان';

  @override
  String get settingsNotificationsHint =>
      'این، انتخاب شما را در برنامه ذخیره می‌کند. ممکن است سیستم هم اجازه بخواهد.';

  @override
  String get settingsDashboardHint =>
      'برای مرتب‌سازی بکشید. بخش‌هایی را که لازم ندارید خاموش کنید.';

  @override
  String settingsDashboardReorder(String section) {
    return 'جابه‌جایی $section';
  }

  @override
  String get settingsDashboardReset => 'بازگشت به ترتیب پیش‌فرض';

  @override
  String get settingsAssistantDesc =>
      'کمک برنامه‌ریزی اختیاری. تا ارائه‌دهنده‌ای متصل نکنید، چیزی از این دستگاه خارج نمی‌شود.';

  @override
  String get settingsAssistantSetup => 'تنظیم دستیار و ارائه‌دهنده';

  @override
  String get settingsTrashDesc => 'بازیابی یا حذف همیشگی موارد حذف‌شده';

  @override
  String get settingsEraseFirstBody =>
      'این کار برگشت‌پذیر نیست. بهتر است اول یک پشتیبان رمزگذاری‌شده بسازید.';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word را بنویسید';
  }

  @override
  String get settingsEraseFailed => 'داده‌ها پاک نشد. چیزی تغییر نکرد.';

  @override
  String get settingsAboutTagline => 'فضای کاری خصوصی برای بهره‌وری که روی خود دستگاه کار می‌کند.';

  @override
  String get backupShowPassword => 'نمایش رمز';

  @override
  String get backupHidePassword => 'پنهان کردن رمز';

  @override
  String get backupSaved => 'پشتیبان ذخیره شد';

  @override
  String get backupFailed => 'پشتیبان ساخته نشد. داده‌هایتان تغییری نکرده است.';

  @override
  String get backupReadFailed => 'فایل انتخاب‌شده خوانده نشد.';

  @override
  String get backupRestoreFailed => 'بازیابی ناموفق بود. چیزی تغییر نکرد.';

  @override
  String get backupShareSubject => 'پشتیبان رمزگذاری‌شده Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هر $count روز',
      one: 'هر روز',
      zero: 'هر $count روز',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هر $count هفته',
      one: 'هر هفته',
      zero: 'هر $count هفته',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هر $count ماه',
      one: 'هر ماه',
      zero: 'هر $count ماه',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هر $count سال',
      one: 'هر سال',
      zero: 'هر $count سال',
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
    return 'در $days';
  }

  @override
  String get repeatEndsLabel => 'پایان';

  @override
  String get repeatEndsAfter => 'پس از چند بار';

  @override
  String get repeatCountLabel => 'تعداد دفعات';

  @override
  String get reminderNone => 'بدون یادآوری';

  @override
  String get reminderCustomTime => 'در زمانی مشخص';

  @override
  String get a11yDecrease => 'کاهش';

  @override
  String get a11yIncrease => 'افزایش';

  @override
  String get pickTaskTitle => 'انتخاب کار';

  @override
  String get pickTaskEmpty => 'کار بازی نیست';

  @override
  String get tasksSearchTooltip => 'جستجوی کارها';

  @override
  String get tasksSectionOverdue => 'عقب‌افتاده';

  @override
  String get tasksSectionToday => 'امروز';

  @override
  String get tasksRecurringSemantics => 'تکرارشونده';

  @override
  String get tasksFilterPriorityAtLeast => 'کمترین اولویت';

  @override
  String get tasksFilterCategory => 'دسته';

  @override
  String get tasksFilterAnyCategory => 'هر دسته‌ای';

  @override
  String get tasksFilterLabel => 'برچسب';

  @override
  String get tasksFilterAnyLabel => 'هر برچسبی';

  @override
  String get tasksFilterReset => 'بازنشانی فیلترها';

  @override
  String get tasksViewByProject => 'بر اساس پروژه';

  @override
  String get tasksViewByPriority => 'بر اساس اولویت';

  @override
  String get tasksViewByCategory => 'بر اساس دسته';

  @override
  String get tasksGroupNoCategory => 'بدون دسته';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کار',
      one: '$count کار',
    );
    return 'وابسته به $_temp0';
  }

  @override
  String get taskBlockedWarning => 'این کار به کارهای ناتمام وابسته است. با این حال تمامش کنیم؟';

  @override
  String get taskStartFocus => 'تمرکز روی این کار';

  @override
  String get taskRemoveDate => 'حذف تاریخ';

  @override
  String get taskAllDay => 'بدون ساعت مشخص';

  @override
  String get taskSaved => 'کار ذخیره شد';

  @override
  String get taskCreated => 'کار ساخته شد';

  @override
  String get taskReminderNeedsDue => 'برای یادآوری نسبی، سررسید تعیین کنید';

  @override
  String get taskSubtaskDetailsHint =>
      'برای افزودن زیرکار، مورد چک‌لیست، برچسب و وابستگی، اول کار را ذخیره کنید.';

  @override
  String get taskLabelName => 'نام برچسب';

  @override
  String get taskMoreDetails => 'جزئیات';

  @override
  String get taskPlanning => 'برنامه‌ریزی';

  @override
  String get taskOrganize => 'سازمان‌دهی';

  @override
  String get taskBreakdown => 'تقسیم کار';

  @override
  String get trashDeleteTaskTitle => 'این کار برای همیشه حذف شود؟';

  @override
  String get trashDeleteNoteTitle => 'این یادداشت برای همیشه حذف شود؟';

  @override
  String get trashDeleteBody => 'این کار برگشت‌پذیر نیست.';

  @override
  String get trashEmptyTitle => 'سطل زباله خالی شود؟';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مورد برای همیشه حذف می‌شود.',
      one: '$count مورد برای همیشه حذف می‌شود.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'بازیابی شد';

  @override
  String get trashPurged => 'برای همیشه حذف شد';

  @override
  String trashDeletedOn(String date) {
    return 'حذف‌شده در $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مورد',
      one: '$count مورد',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'خواندن با صدا';

  @override
  String get flashcardsTtsUnavailable => 'تبدیل متن به گفتار روی این دستگاه در دسترس نیست.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'برای این زبان صدایی نصب نیست. در تنظیمات تبدیل متن به گفتار Android یکی اضافه کنید.';

  @override
  String get calendarAgenda => 'فهرست برنامه‌ها';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'جرقه',
      'rocket': 'موشک',
      'book': 'کتاب',
      'work': 'کار',
      'home': 'خانه',
      'heart': 'قلب',
      'code': 'کد',
      'palette': 'پالت',
      'fitness': 'تناسب اندام',
      'school': 'مدرسه',
      'travel': 'سفر',
      'money': 'پس‌انداز',
      'other': 'نماد',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'فیلدهای بیشتر';

  @override
  String get cardFieldExample => 'مثال';

  @override
  String get cardFieldExplanation => 'توضیح';

  @override
  String get cardFieldPronunciation => 'تلفظ';

  @override
  String get cardFieldNotes => 'یادداشت‌های اضافی';

  @override
  String get projectMilestones => 'نقاط عطف';

  @override
  String get milestoneAdd => 'افزودن نقطه عطف';

  @override
  String get milestoneEdit => 'ویرایش نقطه عطف';

  @override
  String get milestoneTitleLabel => 'نقطه عطف';

  @override
  String get milestoneNoDate => 'بدون تاریخ';

  @override
  String get milestonesEmpty =>
      'هنوز نقطه عطفی نیست. برای دنبال کردن پروژه در تقویم، مراحل تاریخ‌دار اضافه کنید.';

  @override
  String get milestoneDeleted => 'نقطه عطف حذف شد';

  @override
  String milestoneDoneA11y(String title) {
    return 'علامت‌گذاری نقطه عطف «$title» به‌عنوان انجام‌شده';
  }

  @override
  String calendarMilestone(String project) {
    return 'نقطه عطف · $project';
  }

  @override
  String get tasksViewInbox => 'صندوق ورودی';

  @override
  String get tasksViewArchived => 'بایگانی';

  @override
  String get tasksEmptyInbox =>
      'کارهای بدون پروژه یا تاریخ اینجا می‌آیند. هر وقت فرصت داشتید مرتبشان کنید.';

  @override
  String get tasksEmptyArchived =>
      'کارهای بایگانی‌شده اینجا، بیرون از فهرست‌ها و یادآوری‌هایتان نگه داشته می‌شوند.';

  @override
  String get taskArchivedBadge => 'بایگانی‌شده';

  @override
  String get taskStatusInProgress => 'در حال انجام';

  @override
  String get taskArchived => 'کار بایگانی شد';

  @override
  String get taskUnarchived => 'کار از بایگانی برگشت';

  @override
  String get focusPlanTitle => 'برنامه جلسه‌ها';

  @override
  String focusPlanTotal(String duration) {
    return 'مجموع $duration';
  }

  @override
  String get focusPlanRounds => 'جلسه‌های تمرکز';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'استراحت طولانی پس از';

  @override
  String get focusPlanSkipLastBreak => 'رد کردن آخرین استراحت';

  @override
  String get focusPlanAutoBreaks => 'شروع خودکار استراحت‌ها';

  @override
  String get focusPlanAutoFocus => 'شروع خودکار تمرکز پس از استراحت';

  @override
  String get focusPlanSave => 'ذخیره برنامه';

  @override
  String get focusPlanNameHint => 'مثلاً آمادگی امتحان';

  @override
  String get focusPlanSaved => 'برنامه ذخیره شد';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work دقیقه تمرکز، $rest دقیقه استراحت';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'کاهش $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'افزایش $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'جلسه $current از $total';
  }

  @override
  String get focusSeriesComplete => 'مجموعه کامل شد. آفرین!';

  @override
  String get filterAll => 'همه';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added وارد شد · $duplicates تکراری رد شد · $invalid سطر ناقص';
  }

  @override
  String get flashcardsSuspend => 'تعلیق کارت';

  @override
  String get flashcardsResume => 'ادامه کارت';

  @override
  String get flashcardsSuspended => 'کارت معلق شد: زمان‌بندی نمی‌شود';

  @override
  String get flashcardsResumed => 'کارت ادامه یافت';

  @override
  String get flashcardsSuspendedFilter => 'معلق';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown از $total کارت';
  }

  @override
  String get flashcardsImportFile => 'از فایل';

  @override
  String get speechTitle => 'گفتار';

  @override
  String get speechAppLanguage => 'زبان برنامه';

  @override
  String get speechFrontLanguage => 'زبان رو';

  @override
  String get speechBackLanguage => 'زبان پشت';

  @override
  String get speechRepeat => 'تکرار هر خواندن';

  @override
  String get speechRate => 'سرعت';

  @override
  String get speechAutoRead => 'خواندن خودکار پرسش';

  @override
  String get speechHint =>
      'از صداهای نصب‌شده روی این دستگاه به‌صورت آفلاین استفاده می‌کند. اگر زبانی صدا نداشته باشد، به شما گفته می‌شود و چیز دیگری جایگزین نمی‌شود.';

  @override
  String get studyHowTitle => 'چطور می‌خواهید مطالعه کنید؟';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'مرور $count کارت',
      one: 'مرور $count کارت',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'تمرین همه کارت‌ها (زمان‌بندی تغییر نمی‌کند)';

  @override
  String get studyPracticeMistakes => 'تمرین اشتباه‌های اخیر';

  @override
  String get studyPracticeHint =>
      'دورهای تمرین هرگز سررسید کارت‌ها را تغییر نمی‌دهند. مرور، زمان‌بندی را به‌روز می‌کند.';

  @override
  String get studyModeClassic => 'کلاسیک';

  @override
  String get studyModeReverse => 'وارونه';

  @override
  String get studyModeMixed => 'هر دو طرف';

  @override
  String get studyModeTyped => 'تایپ پاسخ';

  @override
  String get studyModeChoice => 'چندگزینه‌ای';

  @override
  String get studyModeListening => 'شنیداری';

  @override
  String get studyPractice => 'تمرین';

  @override
  String get studyNoMistakes => 'در این دسته اشتباه اخیری نیست. عالی!';

  @override
  String get studyTypeAnswer => 'پاسخ خود را بنویسید';

  @override
  String get studyCheck => 'بررسی';

  @override
  String get studyKnewIt => 'بلد بودم';

  @override
  String get studyDidntKnow => 'بلد نبودم';

  @override
  String studyMistakes(int count) {
    return 'اشتباه‌ها ($count)';
  }

  @override
  String get studyRepeatMistakes => 'تکرار کارت‌های اشتباه';

  @override
  String get studyCorrect => 'درست';

  @override
  String get studyAlmost => 'تقریباً — املا را بررسی کنید';

  @override
  String get studyWrong => 'نه کاملاً';

  @override
  String get studyShowText => 'نمایش متن';

  @override
  String get flashcardsImportFileFailed => 'فایل باز نشد. به‌جایش می‌توانید محتوایش را بچسبانید.';

  @override
  String get studyNoMatchingCards => 'هنوز کارتی با این انتخاب مطابقت ندارد.';

  @override
  String get studyPracticeNew => 'فقط جدیدها';

  @override
  String get studyPracticeHard => 'کارت‌های سخت';

  @override
  String get studyPracticeFavorites => 'علاقه‌مندی‌ها';

  @override
  String get studySessionSize => 'کارت در هر جلسه';

  @override
  String get studySessionAll => 'همه';

  @override
  String get studyOrder => 'ترتیب';

  @override
  String get studyOrderDue => 'عقب‌افتاده‌ترین اول';

  @override
  String get studyOrderRandom => 'تصادفی';

  @override
  String get studyOrderHardest => 'سخت‌ترین اول';

  @override
  String get flashcardsHard => 'سخت';

  @override
  String get flashcardsFavorites => 'علاقه‌مندی‌ها';

  @override
  String get flashcardsFavorite => 'افزودن به علاقه‌مندی‌ها';

  @override
  String get flashcardsUnfavorite => 'حذف از علاقه‌مندی‌ها';

  @override
  String get flashcardsDuplicate => 'ساخت نسخه تکراری';

  @override
  String get flashcardsMoveTo => 'انتقال به دسته';

  @override
  String get flashcardsNoOtherDeck => 'اول یک دسته دیگر بسازید.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت منتقل شد',
      one: 'کارت منتقل شد',
      zero: '$count کارت منتقل شد',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'افزودن برچسب';

  @override
  String get flashcardsTagHint => 'مثلاً فعل‌ها';

  @override
  String flashcardsSelected(int count) {
    return '$count انتخاب‌شده';
  }

  @override
  String get flashcardsSelectAll => 'انتخاب همه موارد نمایش‌داده‌شده';

  @override
  String flashcardsSelectCard(String front) {
    return 'انتخاب $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'یادآوری $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'احتمالاً تکراری';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'این دسته از قبل «$front» → «$back» دارد. با این حال ذخیره شود؟';
  }

  @override
  String get flashcardsSaveAnyway => 'با این حال ذخیره کن';

  @override
  String get flashcardsStats => 'آمار';

  @override
  String get flashcardsStatTotal => 'کارت‌ها';

  @override
  String get flashcardsStatLearning => 'در حال یادگیری';

  @override
  String get flashcardsStatMatureCaption => 'بیش از 21 روز در یاد مانده';

  @override
  String get flashcardsStatReviewsToday => 'مرورهای امروز';

  @override
  String get flashcardsStatCorrect => 'پاسخ‌های درست';

  @override
  String flashcardsStatLastDays(int days) {
    return '$days روز گذشته';
  }

  @override
  String get flashcardsStatForget => 'نرخ فراموشی';

  @override
  String get flashcardsStatForgetCaption => '«دوباره» روی کارت‌های یادگرفته';

  @override
  String get flashcardsStatRecall => 'یادآوری فعلی';

  @override
  String get flashcardsStatRecallCaption => 'برآورد FSRS، کارت‌های مرورشده';

  @override
  String flashcardsStatActivity(int count) {
    return 'مرور در روز · مجموع $count';
  }

  @override
  String get flashcardsStatHistory => 'آخرین پاسخ‌ها';

  @override
  String get flashcardsStatNoHistory =>
      'هنوز مروری نیست. این دسته را مطالعه کنید تا پیشرفتتان را اینجا ببینید.';

  @override
  String flashcardsSpeakField(String field) {
    return 'خواندن $field با صدا';
  }

  @override
  String get speechVoice => 'صدا';

  @override
  String get speechVoiceDefault => 'خودکار';

  @override
  String get speechVoiceOnline => 'به اینترنت نیاز دارد';

  @override
  String get speechTest => 'آزمایش صدا';

  @override
  String get importNext => 'پیش‌نمایش';

  @override
  String get importPreviewTitle => 'تطبیق ستون‌ها با فیلدها';

  @override
  String get importIgnoreColumn => 'نادیده گرفتن';

  @override
  String importColumn(int n) {
    return 'ستون $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready کارت آماده · $invalid سطر ناقص رد می‌شود';
  }

  @override
  String get importNeedFrontBack => 'انتخاب کنید کدام ستون‌ها رو و پشت هستند.';

  @override
  String get actionMoveUp => 'بالا بردن';

  @override
  String get actionMoveDown => 'پایین بردن';

  @override
  String get flashcardsLayoutTitle => 'چیدمان کارت';

  @override
  String get flashcardsLayoutHint =>
      'فیلدهای اضافی این دسته را تغییر نام دهید، پنهان کنید یا مرتب کنید. محتوای کارت هرگز تغییر نمی‌کند.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'نمایش $field هنگام مطالعه';
  }

  @override
  String get flashcardsLayoutStepReveal => 'نمایش گام‌به‌گام پاسخ';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'اول پشت کارت نمایان می‌شود؛ هر فیلد اضافی با یک ضربه باز می‌شود.';

  @override
  String flashcardsRevealNext(String field) {
    return 'نمایش $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'این فایل بزرگ‌تر از $mb مگابایت است.';
  }

  @override
  String get flashcardsImage => 'تصویر';

  @override
  String get flashcardsAudio => 'صدا';

  @override
  String get flashcardsAddImage => 'افزودن تصویر';

  @override
  String get flashcardsAddAudio => 'افزودن صدا';

  @override
  String get flashcardsPlayAudio => 'پخش ضبط';

  @override
  String get flashcardsAudioUnavailable => 'این ضبط روی این دستگاه پخش نمی‌شود.';

  @override
  String get flashcardsCustomFields => 'فیلدهای شما';

  @override
  String get flashcardsTemplates => 'الگوها';

  @override
  String flashcardsNewFieldName(int n) {
    return 'فیلد $n';
  }

  @override
  String get flashcardsAddField => 'افزودن فیلد';

  @override
  String get flashcardsFieldName => 'نام فیلد';

  @override
  String get flashcardsFieldLangDefault => 'زبان این رو';

  @override
  String get flashcardsTemplateConfirm =>
      'الگو نحوه نمایش فیلدها را تعیین می‌کند و فیلدهای خودش را اضافه می‌کند. کارت‌ها و فیلدهای فعلی شما همان‌طور می‌مانند.';

  @override
  String get flashcardsApplyTemplate => 'اعمال';

  @override
  String get templateVocabulary => 'واژگان';

  @override
  String get templateTwoTranslations => 'واژه با دو ترجمه';

  @override
  String get templateQuestionAnswer => 'پرسش و پاسخ';

  @override
  String get templateDefinition => 'اصطلاح و تعریف';

  @override
  String get templateGrammar => 'قاعده دستوری';

  @override
  String get templateFieldPlural => 'جمع';

  @override
  String get templateFieldTranslation2 => 'ترجمه دوم';

  @override
  String get templateFieldSynonyms => 'مترادف‌ها';

  @override
  String get templateFieldRule => 'قاعده';

  @override
  String get deckCategory => 'سطح یا موضوع';

  @override
  String get deckCategoryHint => 'مثلاً A1، پزشکی';

  @override
  String get flashcardsSearchAll => 'جستجو در همه کارت‌ها';

  @override
  String get flashcardsSearchAllHint => 'واژه، ترجمه، مثال، یادداشت، برچسب…';

  @override
  String get flashcardsAllDecks => 'همه دسته‌ها';

  @override
  String get flashcardsAllLanguages => 'همه زبان‌ها';

  @override
  String get flashcardsLangUnset => 'زبان تعیین نشده';

  @override
  String get flashcardsLevelUnset => 'بدون سطح یا موضوع';

  @override
  String get flashcardsByLanguage => 'پیشرفت بر اساس زبان';

  @override
  String get flashcardsByLevel => 'پیشرفت بر اساس سطح یا موضوع';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks دسته · $cards کارت · $mature تثبیت‌شده · $due سررسید · $correct درست (30 روز)';
  }

  @override
  String get flashcardsRecord => 'ضبط';

  @override
  String get flashcardsRecording => 'در حال ضبط…';

  @override
  String get flashcardsRecordStop => 'توقف و نگه‌داشتن';

  @override
  String get flashcardsMicDenied =>
      'دسترسی به میکروفون خاموش است. برای ضبط، در تنظیمات سیستم اجازه دهید.';

  @override
  String get flashcardsRecordFailed => 'ضبط روی این دستگاه ممکن نیست.';

  @override
  String get soundsTitle => 'صداها';

  @override
  String get soundsNature => 'طبیعت';

  @override
  String get soundsNoise => 'نویز تمرکز';

  @override
  String get soundRain => 'باران';

  @override
  String get soundStorm => 'رعدوبرق';

  @override
  String get soundRiver => 'رودخانه';

  @override
  String get soundOcean => 'موج‌های دریا';

  @override
  String get soundFire => 'آتش اردو';

  @override
  String get soundForest => 'پرندگان جنگل';

  @override
  String get soundNight => 'شب تابستان';

  @override
  String get soundWhite => 'نویز سفید';

  @override
  String get soundPink => 'نویز صورتی';

  @override
  String get soundBrown => 'نویز قهوه‌ای';

  @override
  String get soundsPlay => 'پخش';

  @override
  String get soundsSleep => 'زمان‌سنج خواب';

  @override
  String get soundsSleepOff => 'خاموش';

  @override
  String soundsSleepAt(String time) {
    return 'در $time متوقف می‌شود';
  }

  @override
  String soundsMixFull(int count) {
    return 'حداکثر $count صدا هم‌زمان پخش می‌شود.';
  }

  @override
  String get soundsHint =>
      'برای شروع روی یک صدا ضربه بزنید. چند صدا را ترکیب کنید و بلندی هرکدام را تنظیم کنید.';

  @override
  String get soundsMixer => 'ترکیب';

  @override
  String soundsVolumeOf(String name) {
    return 'بلندی صدای $name';
  }

  @override
  String get soundsChannel => 'صداهای طبیعت';

  @override
  String get settingsEndTone => 'صدای پایان تایمر';

  @override
  String get toneGentle => 'بوق‌های ملایم';

  @override
  String get toneBeeps => 'بوق‌ها';

  @override
  String get toneWood => 'ضربه روی چوب';

  @override
  String get toneBird => 'آواز پرنده';

  @override
  String get toneStream => 'جویبار';

  @override
  String get toneSystem => 'صدای گوشی';

  @override
  String get speechOnPhone => 'روی این گوشی';

  @override
  String get speechAllLanguages => 'همه زبان‌ها';

  @override
  String get speechSearchLanguage => 'جستجوی زبان‌ها';

  @override
  String get speechGetVoices => 'دانلود صداهای بیشتر';

  @override
  String get speechGetVoicesHint =>
      'زبان‌های بدون صدا را می‌توان از تنظیمات گفتار گوشی دانلود کرد.';

  @override
  String get speechSettingsFailed => 'تنظیمات گفتار روی این گوشی باز نشد.';

  @override
  String get speechVoiceMissing => 'صدایی نصب نیست';

  @override
  String get speechPause => 'مکث بین تکرارها';

  @override
  String speechSeconds(String seconds) {
    return '$seconds ثانیه';
  }

  @override
  String get speechExample => 'خواندن مثال همراه پاسخ';

  @override
  String get flashListen => 'گوش دادن';

  @override
  String get flashListenNext => 'کارت بعدی';

  @override
  String get flashListenEmpty => 'کارتی برای گوش دادن نیست.';

  @override
  String get flashViewTable => 'جدول';

  @override
  String get flashViewCards => 'کارت‌ها';

  @override
  String get flashSwapSides => 'جابه‌جایی ستون‌ها';

  @override
  String get flashSort => 'مرتب‌سازی';

  @override
  String get flashSortNewest => 'جدیدترین اول';

  @override
  String get flashSortAlpha => 'الفبایی';

  @override
  String get flashSortDue => 'سررسیدها اول';

  @override
  String get flashSortHard => 'سخت‌ترین اول';

  @override
  String get flashPasteCards => 'چسباندن کارت‌ها';

  @override
  String get flashClipboardEmpty => 'کلیپ‌بورد متنی ندارد.';

  @override
  String get flashMenuAdd => 'افزودن کارت';

  @override
  String get flashMenuDeck => 'دسته';

  @override
  String get flashToday => 'امروز';

  @override
  String get flashStudyNow => 'مطالعه';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'به $count کارت پاسخ داده شد',
      one: 'به $count کارت پاسخ داده شد',
      zero: 'به هیچ کارتی پاسخ داده نشد',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'باران در جنگل';

  @override
  String get autoBackupTitle => 'پشتیبان‌گیری خودکار';

  @override
  String get autoBackupDesc => 'هر روز روی این گوشی؛ 7 نسخه آخر نگه داشته می‌شود';

  @override
  String get autoBackupHint =>
      'این نسخه‌ها روی همین گوشی می‌مانند و با حذف برنامه پاک می‌شوند. برای رفتن به گوشی جدید، با «پشتیبان‌گیری» یک فایل ذخیره کنید.';

  @override
  String get autoBackupNone => 'هنوز پشتیبان خودکاری نیست. اولین نسخه امروز ساخته می‌شود.';

  @override
  String get autoBackupRestore => 'بازیابی';

  @override
  String autoBackupConfirm(String date) {
    return 'همه داده‌های فعلی با پشتیبان $date جایگزین شود؟';
  }

  @override
  String get autoBackupRestored => 'بازیابی شد.';

  @override
  String get errorLogTitle => 'گزارش خطاها';

  @override
  String get errorLogHint =>
      'اگر مشکلی پیش بیاید اینجا ثبت می‌شود: فقط نوع خطا و جای آن در کد، هرگز محتوای شما. برای کمک به رفع مشکل آن را به اشتراک بگذارید.';

  @override
  String get errorLogEmpty => 'خطایی ثبت نشده است.';

  @override
  String get errorLogClear => 'پاک کردن';

  @override
  String get soundsWithFocus => 'پخش همراه جلسه‌های تمرکز';

  @override
  String get soundsWithFocusHint =>
      'ترکیب شما با جلسه تمرکز شروع می‌شود و در استراحت‌ها مکث می‌کند.';

  @override
  String get soundsSavedMixes => 'ترکیب‌های ذخیره‌شده';

  @override
  String get soundsSaveMix => 'ذخیره این ترکیب';

  @override
  String get soundsMixNameHint => 'نام، مثلاً کتابخانه بارانی';

  @override
  String soundsDeleteMix(String name) {
    return 'ترکیب «$name» حذف شود؟';
  }

  @override
  String get settingsReviewReminderHint => 'روزی یک بار، فقط وقتی کارت سررسید باشد';

  @override
  String get settingsReviewTime => 'ساعت یادآوری';

  @override
  String get shortcutFocus => 'تمرکز';

  @override
  String get shortcutNewTask => 'کار جدید';

  @override
  String get shortcutReview => 'مرور کارت‌ها';

  @override
  String get shortcutSounds => 'صداهای طبیعت';

  @override
  String get myDayTitle => 'شروع روزم';

  @override
  String get myDayHint => 'نگاهی کوتاه به روزتان، بعد با یک ضربه تمرکز';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کار برای امروز',
      one: '$count کار برای امروز',
      zero: 'امروز کاری نیست',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'امروز رویداد دیگری نیست';

  @override
  String myDayNextEvent(String title, String time) {
    return 'بعدی: $title ساعت $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عادت مانده',
      one: '$count عادت مانده',
      zero: 'همه عادت‌ها انجام شد',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'با یک جلسه تمرکز شروع کنید';

  @override
  String get hijriMonth1 => 'محرم';

  @override
  String get hijriMonth2 => 'صفر';

  @override
  String get hijriMonth3 => 'ربیع‌الاول';

  @override
  String get hijriMonth4 => 'ربیع‌الثانی';

  @override
  String get hijriMonth5 => 'جمادی‌الاول';

  @override
  String get hijriMonth6 => 'جمادی‌الثانی';

  @override
  String get hijriMonth7 => 'رجب';

  @override
  String get hijriMonth8 => 'شعبان';

  @override
  String get hijriMonth9 => 'رمضان';

  @override
  String get hijriMonth10 => 'شوال';

  @override
  String get hijriMonth11 => 'ذی‌القعده';

  @override
  String get hijriMonth12 => 'ذی‌الحجه';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year ق';
  }

  @override
  String get settingsHijri => 'تاریخ‌های قمری';

  @override
  String get settingsHijriHint => 'در تقویم و صفحه خانه نمایش داده می‌شود (ام‌القری)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: '$count روز',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'امروز $done از $goal کارت';
  }

  @override
  String get studyGoalReached => 'به هدف روزانه رسیدید. آفرین!';

  @override
  String get studyWeekTitle => 'هفته شما';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'در 7 روز به $count کارت پاسخ داده شد',
      one: 'در 7 روز به $count کارت پاسخ داده شد',
      zero: 'در 7 روز به کارتی پاسخ داده نشد',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration تمرکز در 7 روز';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'زنجیره: $current · بهترین: $best';
  }

  @override
  String get studyGoalTitle => 'هدف روزانه (کارت)';

  @override
  String get studyGoalOff => 'خاموش';

  @override
  String get focusDndTitle => 'مزاحم نشوید هنگام تمرکز';

  @override
  String get focusDndHint => 'برای هر جلسه تمرکز روشن و در استراحت خاموش می‌شود';

  @override
  String get focusDndNeedsAccess => 'برای استفاده، در تنظیمات گوشی اجازه دسترسی بدهید';

  @override
  String get voiceInput => 'بگویید تا تایپ شود';

  @override
  String get voiceInputPrompt => 'اکنون بگویید';

  @override
  String get voiceInputUnavailable =>
      'تایپ صوتی روی این گوشی در دسترس نیست. یک سرویس گفتار نصب یا روشن کنید (مثلاً تشخیص و ترکیب گفتار Google).';

  @override
  String get prayerFajr => 'صبح';

  @override
  String get prayerSunrise => 'طلوع آفتاب';

  @override
  String get prayerDhuhr => 'ظهر';

  @override
  String get prayerAsr => 'عصر';

  @override
  String get prayerMaghrib => 'مغرب';

  @override
  String get prayerIsha => 'عشا';

  @override
  String get prayerMethodMwl => 'اتحادیه جهان اسلام';

  @override
  String get prayerMethodUmmAlQura => 'ام‌القری، مکه';

  @override
  String get prayerMethodEgypt => 'سازمان عمومی مصر';

  @override
  String get prayerMethodJordan => 'اردن، وزارت اوقاف';

  @override
  String get prayerMethodKarachi => 'دانشگاه علوم اسلامی، کراچی';

  @override
  String get prayerMethodIsna => 'انجمن اسلامی آمریکای شمالی';

  @override
  String get prayerMethodGulf => 'منطقه خلیج فارس';

  @override
  String get prayerMethodKuwait => 'کویت';

  @override
  String get prayerMethodQatar => 'قطر';

  @override
  String get prayerMethodTurkey => 'ترکیه، دیانت';

  @override
  String get prayerMethodSingapore => 'سنگاپور، مالزی، اندونزی';

  @override
  String get prayerMethodFrance => 'فرانسه (12°)';

  @override
  String get prayerMethodRussia => 'روسیه، اداره روحانی';

  @override
  String prayerNotifTitle(String name) {
    return 'وقت $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'وقت نماز · $time';
  }

  @override
  String get prayerTitle => 'اوقات نماز';

  @override
  String get prayerOffHint =>
      'برای دیدن اوقات نماز شهر خود را انتخاب کنید. اوقات روی گوشی محاسبه می‌شوند و نیازی به دسترسی مکان نیست.';

  @override
  String get prayerChooseCity => 'انتخاب شهر';

  @override
  String get prayerCity => 'شهر';

  @override
  String get prayerCitySearch => 'جستجوی شهر';

  @override
  String get prayerMethod => 'روش محاسبه';

  @override
  String get prayerHanafiAsr => 'عصر حنفی (وقت دیرتر)';

  @override
  String get prayerReminders => 'اعلان در هر وقت نماز';

  @override
  String get prayerPauseFocus => 'مکث تمرکز در وقت نماز';

  @override
  String get prayerPauseFocusHint => 'جلسه در حال اجرا مکث می‌کند؛ پس از نماز ادامه دهید';

  @override
  String get prayerTurnOff => 'خاموش کردن اوقات نماز';

  @override
  String get prayerAccuracyNote =>
      'اوقات محاسبه‌شده ممکن است چند دقیقه با مسجد محل شما فرق داشته باشد.';

  @override
  String prayerNext(String name, String time) {
    return '$name ساعت $time';
  }

  @override
  String get importAnkiNewFormat =>
      'این فایل Anki از جدیدترین قالب استفاده می‌کند. در Anki با روشن بودن «Support older Anki versions» دوباره خروجی بگیرید و همان فایل را وارد کنید.';

  @override
  String get importTemplate => 'الگوی صفحه‌گسترده';

  @override
  String get importTemplateFront => 'سیب';

  @override
  String get importTemplateBack => 'یک میوه گرد';

  @override
  String get importTemplateExample => 'من هر روز یک سیب می‌خورم.';

  @override
  String get importTemplateTag => 'غذا';

  @override
  String get starterTitle => 'دسته‌های آماده برای شروع';

  @override
  String get starterHint =>
      'یکی اضافه کنید تا همین حالا مطالعه را امتحان کنید. بعداً می‌توانید ویرایش یا حذفش کنید.';

  @override
  String get starterAdd => 'افزودن';

  @override
  String get starterWords => 'واژه‌های روزمره انگلیسی (با معنای عربی)';

  @override
  String get starterCapitals => 'پایتخت‌های جهان';

  @override
  String get starterElements => 'عناصر شیمیایی';

  @override
  String get settingsAccent => 'رنگ تأکیدی';

  @override
  String get accentViolet => 'بنفش';

  @override
  String get accentBlue => 'آبی';

  @override
  String get accentTeal => 'سبزآبی';

  @override
  String get accentGreen => 'سبز';

  @override
  String get accentRose => 'صورتی';

  @override
  String get accentAmber => 'کهربایی';

  @override
  String get settingsFlashTextSize => 'اندازه متن فلش‌کارت';

  @override
  String get settingsFlashTextSample => 'مثال';

  @override
  String get widgetStartFocus => 'برای تمرکز ضربه بزنید';

  @override
  String widgetFocusUntil(String time) {
    return 'تمرکز تا $time';
  }

  @override
  String get widgetNoCardsDue => 'کارت‌ها: همه انجام شد';

  @override
  String get faqMyDayQ => '«شروع روزم» چه کار می‌کند؟';

  @override
  String get faqMyDayA =>
      'صفحه خانه روزی یک بار آن را پیشنهاد می‌دهد: کارهای امروز، رویداد بعدی، عادت‌های باقی‌مانده و کارت‌های سررسید را ببینید، بعد با یک ضربه جلسه تمرکز را شروع کنید. برای کارهای سریع نماد برنامه را نگه دارید، یا ابزارک صفحه اصلی را اضافه کنید تا زمان تمرکز و کارت‌های سررسید را ببینید.';

  @override
  String get faqTasksQ => 'چطور کاری با یادآوری اضافه کنم؟';

  @override
  String get faqTasksA =>
      'در خانه روی «کار جدید» یا در کارها روی + ضربه بزنید. عنوان را بنویسید یا با میکروفون بگویید، سپس سررسید، ساعت و یادآوری را تنظیم کنید. کارهای عقب‌افتاده اول فهرست می‌آیند.';

  @override
  String get faqFocusQ => 'تایمر تمرکز چطور کار می‌کند؟';

  @override
  String get faqFocusA =>
      'پومودورو، شمارش معکوس یا زمان آزاد را انتخاب کنید و شروع را بزنید؛ استراحت‌ها می‌توانند خودکار بیایند. در تنظیمات می‌توانید صدای پایان را انتخاب کنید، «مزاحم نشوید» را هنگام تمرکز روشن کنید و صداهای طبیعت را با هر جلسه پخش کنید.';

  @override
  String get faqSoundsQ => 'می‌توانم صداهای طبیعت را ترکیب کنم؟';

  @override
  String get faqSoundsA =>
      'تا شش ضبط واقعی را روشن کنید، بلندی هرکدام را تنظیم کنید و ترکیب را با یک نام ذخیره کنید. در پس‌زمینه پخش می‌شوند و زمان‌سنج خواب می‌تواند متوقفشان کند. از موسیقی استفاده نمی‌شود.';

  @override
  String get faqCalendarQ => 'تقویم می‌تواند تاریخ قمری نشان دهد؟';

  @override
  String get faqCalendarA =>
      'بله. تاریخ‌های قمری (ام‌القری) در عربی خودکار نمایش داده می‌شوند و برای هر زبانی در تنظیمات روشن می‌شوند. رویدادها، کارهای سررسیددار و نقاط عطف پروژه کنار هم نمایش داده می‌شوند.';

  @override
  String get faqFlashcardsQ => 'مرور چطور تعیین می‌کند کدام کارت‌ها را ببینم؟';

  @override
  String get faqFlashcardsA =>
      'کارت‌هایی که خوب بلدید با فاصله بیشتری برمی‌گردند و کارت‌هایی که فراموش می‌کنید زود برمی‌گردند (مرور فاصله‌دار). به هر پاسخ امتیاز دوباره، سخت، خوب یا آسان بدهید. هدف روزانه تعیین کنید و زنجیره را روی کارت امروز حفظ کنید. در یک دسته تاریخ امتحان بگذارید تا روزهای باقی‌مانده و تعداد کارت جدید روزانه را ببینید. با مرتب‌سازی «ترتیب من» کارت‌ها را بکشید، برای شنیدن روی بلندگوی هر طرف ضربه بزنید و سرعت و تکرار را در منوی گفتار تنظیم کنید.';

  @override
  String get faqImportQ => 'می‌توانم کارت‌ها را از Anki یا Excel بیاورم؟';

  @override
  String get faqImportA =>
      'بله. در یک دسته «وارد کردن» را بزنید و فایلی انتخاب کنید: Anki (.apkg)، Excel (.xlsx) یا CSV، و ستون‌ها را تطبیق دهید. برای نوشتن کارت در رایانه از «الگوی صفحه‌گسترده» استفاده کنید. تصاویر و صداهای درون فایل‌های Anki وارد نمی‌شوند.';

  @override
  String get faqNotesQ => 'یادداشت‌ها چه کارهایی می‌کنند؟';

  @override
  String get faqNotesA =>
      'آزادانه با چک‌لیست و قالب‌بندی بنویسید، یادداشت‌های مهم را سنجاق یا علاقه‌مندی کنید، برچسب بزنید و یادداشت‌ها را به کارها پیوند دهید. دکمه میکروفون امکان دیکته می‌دهد. یادداشت جدید می‌تواند از یک الگو (درس، خلاصه کتاب، روزنوشت، برنامه هفتگی) شروع شود و دکمه تصویر عکس اضافه می‌کند.';

  @override
  String get faqHabitsQ => 'زنجیره عادت‌ها چطور شمرده می‌شود؟';

  @override
  String get faqHabitsA =>
      'روزی شمرده می‌شود که در روز برنامه‌ریزی‌شده به هدف عادت برسید. توقف یک عادت زنجیره را حفظ می‌کند. هر عادت می‌تواند ساعت یادآوری خودش را داشته باشد.';

  @override
  String get faqGoalsQ => 'هدف‌ها پیشرفت را چطور دنبال می‌کنند؟';

  @override
  String get faqGoalsA =>
      'برای هدف مقدار و واحد تعیین کنید و پیشرفت را ثبت کنید. کارت آن نشان می‌دهد کجا هستید و تا مهلت چقدر مانده است.';

  @override
  String get faqProjectsQ => 'پروژه‌ها برای چیست؟';

  @override
  String get faqProjectsA =>
      'کارها را در یک پروژه جمع کنید، نقاط عطف تاریخ‌دار اضافه کنید و پیشرفت کلی را دنبال کنید. نقاط عطف در تقویم هم نمایش داده می‌شوند.';

  @override
  String get faqInsightsQ => 'آمار چه چیزهایی نشان می‌دهد؟';

  @override
  String get faqInsightsA =>
      'زمان تمرکز، کارهای انجام‌شده و مطالعه شما در روزها و هفته‌ها، همراه با پیشنهادهای ملایم. همه‌چیز روی گوشی شما محاسبه می‌شود.';

  @override
  String get faqSpacesQ => 'همه بخش‌ها کجا هستند؟';

  @override
  String get faqSpacesA =>
      '«فضاها» همه بخش‌های برنامه (یادداشت‌ها، دسته‌ها، عادت‌ها، هدف‌ها، پروژه‌ها، صداها و بیشتر) را فهرست می‌کند تا نوار اصلی ساده بماند.';

  @override
  String get faqBackupQ => 'از داده‌هایم چطور پشتیبان گرفته می‌شود؟';

  @override
  String get faqBackupA =>
      'برنامه هر روز بی‌صدا یک نسخه رمزگذاری‌شده روی این گوشی نگه می‌دارد و 7 نسخه آخر را حفظ می‌کند. در تنظیمات می‌توانید یک فایل پشتیبان با رمز هم خروجی بگیرید و روی گوشی دیگری بازیابی کنید.';

  @override
  String get faqPrayerQ => 'اوقات نماز چطور کار می‌کند؟';

  @override
  String get faqPrayerA =>
      'شهر خود را در تنظیمات → اوقات نماز انتخاب کنید. اوقات روی گوشی با روش رایج آن‌جا محاسبه می‌شود و می‌توانید روش و مذهب عصر را تغییر دهید. می‌توانید در هر نماز اعلان بگیرید و جلسه تمرکز در حال اجرا مکث می‌کند.';

  @override
  String get faqPrivacyQ => 'داده‌هایم کجا ذخیره می‌شوند؟';

  @override
  String get faqPrivacyA =>
      'فقط روی گوشی شما، در یک پایگاه داده رمزگذاری‌شده. نه حسابی هست و نه ردیابی. اینترنت فقط برای قابلیت‌هایی استفاده می‌شود که خودتان روشن کنید، مثل دستیار اختیاری.';

  @override
  String get faqAssistantQ => 'دستیار چیست؟';

  @override
  String get faqAssistantA =>
      'یک کمک‌کار اختیاری که در تنظیمات به سرویس هوش مصنوعی خودتان وصلش می‌کنید. به‌طور پیش‌فرض خاموش است و پیش از ارسال متن یادداشت می‌پرسد.';

  @override
  String get tourPlanTitle => 'روزتان را برنامه‌ریزی کنید';

  @override
  String get tourPlanBody =>
      'کارها، تقویم و عادت‌ها در یک جای آرام. هر صبح را با «شروع روزم» آغاز کنید.';

  @override
  String get tourFocusTitle => 'عمیق تمرکز کنید';

  @override
  String get tourFocusBody =>
      'جلسه‌های زمان‌دار با صداهای واقعی طبیعت، «مزاحم نشوید» و صداهای پایان ملایم.';

  @override
  String get tourLearnTitle => 'برای همیشه یاد بگیرید';

  @override
  String get tourLearnBody =>
      'فلش‌کارت با مرور فاصله‌دار، گفتار به زبان‌های بسیار و وارد کردن از Anki یا Excel.';

  @override
  String get helpTitle => 'راهنما و پرسش‌ها';

  @override
  String get helpOpen => 'باز کردن';

  @override
  String get helpTour => 'دیدن معرفی';

  @override
  String get tourNext => 'بعدی';

  @override
  String get tourDone => 'بیایید شروع کنیم';

  @override
  String get transferColTitle => 'عنوان';

  @override
  String get transferColNotes => 'یادداشت‌ها';

  @override
  String get transferColBody => 'متن';

  @override
  String get transferColDue => 'سررسید';

  @override
  String get transferColPriority => 'اولویت (0-3)';

  @override
  String get transferColDone => 'انجام‌شده';

  @override
  String get transferColProject => 'پروژه';

  @override
  String get transferColCategory => 'دسته';

  @override
  String get transferTitle => 'وارد کردن و خروجی گرفتن';

  @override
  String get transferSaveAs => 'ذخیره به‌صورت';

  @override
  String get transferImport => 'وارد کردن از فایل';

  @override
  String get transferImportTasksHint =>
      'Excel، CSV یا یک جدول در Word. ستون‌ها: عنوان، سررسید (2026-12-31)، اولویت 0-3، انجام‌شده، پروژه، یادداشت‌ها. کارهایی که از قبل در برنامه هستند رد می‌شوند.';

  @override
  String get transferImportNotesHint =>
      'فایل‌های Word، Markdown یا متنی به یادداشت تبدیل می‌شوند. Excel یا CSV: هر سطر یک یادداشت (عنوان، متن).';

  @override
  String get transferSaved => 'فایل ذخیره شد';

  @override
  String get transferFailed => 'فایل ساخته نشد. چیزی تغییر نکرد.';

  @override
  String get transferUnsupported =>
      'این فایل اینجا خوانده نمی‌شود. از Excel، CSV، Word، Markdown یا متن استفاده کنید.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added مورد اضافه شد',
      one: '$added مورد اضافه شد',
      zero: 'چیز تازه‌ای برای افزودن نیست',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'متن';

  @override
  String get transferAllNotes => 'همه یادداشت‌ها';

  @override
  String get transferThisNote => 'این یادداشت';

  @override
  String get transferDeckFormats => 'ذخیره به‌صورت Excel، Word یا PDF';

  @override
  String get faqFilesQ => 'می‌توانم از فایل‌های Excel، Word یا PDF استفاده کنم؟';

  @override
  String get faqFilesA =>
      'بله. کارها و یادداشت‌ها بالای صفحه یک دکمه وارد کردن و خروجی (دو پیکان) دارند و هر دسته هم آن را در منویش دارد. به‌صورت Excel، CSV، Word یا PDF ذخیره کنید، یا فایل‌های Excel، CSV، Word، Markdown یا متنی را بیاورید. نام ستون‌ها می‌تواند به هر یک از زبان‌های برنامه باشد و فایل‌های ذخیره‌شده همیشه دوباره وارد می‌شوند.';

  @override
  String get tplLecture => 'درس';

  @override
  String get tplBook => 'خلاصه کتاب';

  @override
  String get tplJournal => 'روزنوشت';

  @override
  String get tplWeek => 'برنامه هفتگی';

  @override
  String get tplLectureBody => '## نکته‌های کلیدی\n- \n\n## پرسش‌ها\n- [ ] \n\n## خلاصه\n';

  @override
  String get tplBookBody =>
      '## ایده اصلی\n\n## آنچه یاد گرفتم\n- \n\n## نقل‌قول‌ها\n> \n\n## برای به‌کار بستن\n- [ ] \n';

  @override
  String get tplJournalBody => '## سپاسگزارم برای\n- \n\n## تمرکز امروز\n- [ ] \n\n## یادداشت‌ها\n';

  @override
  String get tplWeekBody =>
      '## هدف‌های این هفته\n- [ ] \n\n### شنبه\n- [ ] \n\n### یکشنبه\n- [ ] \n\n### دوشنبه\n- [ ] \n\n### سه‌شنبه\n- [ ] \n\n### چهارشنبه\n- [ ] \n\n### پنجشنبه\n- [ ] \n\n### جمعه\n- [ ] \n';

  @override
  String get tplHint => 'شروع از یک الگو';

  @override
  String get noteImage => 'تصویر';

  @override
  String get noteAddImage => 'افزودن تصویر';

  @override
  String get noteImageUnreadable => 'این فایل تصویری نیست که برنامه بتواند بخواند.';

  @override
  String get noteImageTooLarge => 'این تصویر خیلی بزرگ است.';

  @override
  String get examSet => 'تعیین تاریخ امتحان';

  @override
  String get examDate => 'تاریخ امتحان';

  @override
  String get examToday => 'امتحان امروز است. موفق باشید!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز تا امتحان',
      one: 'امتحان فردا',
      zero: '$count روز تا امتحان',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'روزی $count کارت جدید یاد بگیرید',
      one: 'روزی $count کارت جدید یاد بگیرید',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'همه کارت‌ها یاد گرفته شد، مرور را ادامه دهید';

  @override
  String examRaiseLimit(int count) {
    return 'نمایش روزی $count کارت جدید';
  }

  @override
  String get backupDriveHint =>
      'برای نگه‌داشتن نسخه آنلاین، در صفحه ذخیره‌ای که باز می‌شود Google Drive (یا برنامه ابری دیگر) را انتخاب کنید.';

  @override
  String get flashShareDeck => 'اشتراک دسته با یک دوست';

  @override
  String get flashSortManual => 'ترتیب من (کشیدن)';

  @override
  String get flashReorderHint => 'دستگیره را نگه دارید و کارت را بکشید تا جابه‌جا شود.';

  @override
  String get flashReorderNeedsAll => 'برای کشیدن کارت‌ها، جستجو و فیلترها را پاک کنید.';

  @override
  String get flashDragHandle => 'برای جابه‌جایی بکشید';

  @override
  String get reportTitle => 'گزارش ماهانه';

  @override
  String get reportFocus => 'زمان تمرکز';

  @override
  String reportSessions(int count) {
    return '$count جلسه';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'بهترین روز: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count روز فعال';
  }

  @override
  String get reportCards => 'کارت‌های مرورشده';

  @override
  String reportCardsKnown(String percent) {
    return '$percent به یاد مانده';
  }

  @override
  String get reportTasks => 'کارهای انجام‌شده';

  @override
  String get reportHabits => 'تیک‌های عادت';

  @override
  String get reportEmpty => 'هنوز چیزی در این ماه ثبت نشده است.';

  @override
  String get reportSave => 'ذخیره به‌صورت PDF یا Word';

  @override
  String get reportPrevMonth => 'ماه قبل';

  @override
  String get reportNextMonth => 'ماه بعد';

  @override
  String get careTitle => 'مراقبت از گوشی و داده‌ها';

  @override
  String get storageTitle => 'فضای ذخیره‌سازی';

  @override
  String get storageSubtitle => 'چه چیزی فضا گرفته و پاک‌سازی تصاویر بلااستفاده';

  @override
  String get storagePictures => 'تصاویر یادداشت‌ها';

  @override
  String get storageCardMedia => 'تصویر و صدا در کارت‌ها';

  @override
  String get storageText => 'متن یادداشت‌ها';

  @override
  String get storageFree => 'فضای آزاد گوشی';

  @override
  String get storageLow =>
      'گوشی شما تقریباً پر است. کمی فضا آزاد کنید تا پشتیبان‌گیری و یادآوری‌ها کار کنند.';

  @override
  String storageUnused(int count, String size) {
    return '$count تصویر بلااستفاده ($size)';
  }

  @override
  String get storageNoUnused => 'تصویر بلااستفاده‌ای نیست. همه‌چیز مرتب است.';

  @override
  String get storageClean => 'حذف تصاویر بلااستفاده';

  @override
  String storageCleaned(int count) {
    return '$count تصویر حذف شد';
  }

  @override
  String get storageHint =>
      'تصویر فقط وقتی بلااستفاده حساب می‌شود که هیچ یادداشتی، حتی در سطل زباله، آن را نشان ندهد.';

  @override
  String get batteryTitle => 'یادآوری‌ها را فعال نگه دارید';

  @override
  String get batterySubtitle =>
      'برخی گوشی‌ها برنامه‌های پس‌زمینه را متوقف می‌کنند. گوشی خود را بررسی کنید.';

  @override
  String get batteryStatusOk =>
      'صرفه‌جویی باتری این برنامه را محدود نمی‌کند. یادآوری‌ها و صداها باید به‌موقع برسند.';

  @override
  String get batteryStatusLimited =>
      'صرفه‌جویی باتری ممکن است این برنامه را در پس‌زمینه متوقف کند، پس یادآوری‌ها و صداها ممکن است دیر برسند یا نرسند.';

  @override
  String get batteryOpen => 'باز کردن تنظیمات باتری';

  @override
  String get batteryOpenApp => 'باز کردن تنظیمات برنامه';

  @override
  String get batteryGeneric =>
      'در تنظیمات باتری این برنامه را انتخاب کنید و روی «نامحدود» (یا «بهینه نشود») بگذارید.';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: همچنین امنیت › مجوزها › شروع خودکار را باز کنید و این برنامه را روشن کنید، و صرفه‌جویی باتری را روی «بدون محدودیت» بگذارید.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: باتری › این برنامه را باز کنید و فعالیت پس‌زمینه و راه‌اندازی خودکار را مجاز کنید؛ برنامه را در فهرست برنامه‌های اخیر قفل کنید.';

  @override
  String get batterySamsung =>
      'Samsung: باتری › محدودیت استفاده در پس‌زمینه: این برنامه را از «برنامه‌های در حال خواب» و «برنامه‌های در خواب عمیق» خارج کنید.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: راه‌اندازی برنامه › این برنامه › مدیریت دستی، و راه‌اندازی خودکار، راه‌اندازی ثانویه و اجرا در پس‌زمینه را مجاز کنید.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: باتری › مصرف انرژی پس‌زمینه › این برنامه را مجاز کنید، و شروع خودکار را در مجوزها روشن کنید.';

  @override
  String get whatsNewTitle => 'تازه‌ها';

  @override
  String get whatsNewSubtitle => 'آخرین تغییرات در چند خط';

  @override
  String get whatsNewDone => 'متوجه شدم';

  @override
  String get whatsNewOrderTitle => 'کارت‌ها را به ترتیب دلخواه بکشید';

  @override
  String get whatsNewOrderBody =>
      'در یک دسته مرتب‌سازی › ترتیب من را انتخاب کنید، سپس دستگیره را نگه دارید و بکشید.';

  @override
  String get whatsNewSpeechTitle => 'بلندگو روی هر طرف کارت';

  @override
  String get whatsNewSpeechBody =>
      'برای شنیدن واژه یا ترجمه ضربه بزنید. سرعت، تکرار و صدا در منوی مرور هستند. زبان از روی متن تشخیص داده می‌شود.';

  @override
  String get whatsNewReportTitle => 'گزارش ماهانه';

  @override
  String get whatsNewReportBody =>
      'در آمار روی نماد گزارش ضربه بزنید تا ماه را ببینید و به‌صورت PDF یا Word ذخیره کنید.';

  @override
  String get whatsNewCareTitle => 'مراقبت از گوشی و داده‌ها';

  @override
  String get whatsNewCareBody =>
      'تنظیمات حالا صفحه فضای ذخیره‌سازی با پاک‌سازی تصاویر و راهنمای باتری برای برند گوشی شما دارد.';

  @override
  String get whatsNewSoundTitle => 'صداهای آرام‌تر';

  @override
  String get whatsNewSoundBody =>
      'صداهای طبیعت نرم‌تر و آهسته‌ترند و کارت‌های تصویری زیباتر شده‌اند.';

  @override
  String autoBackupCheckOk(String date) {
    return 'بررسی‌شده در $date: آخرین پشتیبان درست باز می‌شود.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'بررسی‌شده در $date: یک پشتیبان آسیب‌دیده پیدا و با نسخه تازه جایگزین شد.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'بررسی‌شده در $date: آخرین پشتیبان باز نشد. خودتان از تنظیمات یک فایل پشتیبان ذخیره کنید.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'معمولاً حدود ساعت $time مطالعه می‌کنید';
  }

  @override
  String get smartReviewTimeUse => 'همین را بگذار';

  @override
  String get widgetNewNote => 'یادداشت جدید';

  @override
  String get noteConnections => 'برچسب‌ها، پیوندها و کارها';

  @override
  String get navCards => 'کارت‌ها';

  @override
  String get studyAnswerWay => 'نحوه پاسخ دادن';

  @override
  String get studyMorePractice => 'تمرین بیشتر';

  @override
  String get studySessionSettings => 'تنظیمات جلسه';

  @override
  String get focusAdjustTitle => 'جلسه شما';

  @override
  String get focusPresetsTitle => 'آماده';

  @override
  String get focusPresetStudy => 'مطالعه';

  @override
  String get focusPresetDeep => 'کار عمیق';

  @override
  String get focusPresetQuick => 'دوی سرعت کوتاه';

  @override
  String get focusPresetReading => 'کتاب‌خوانی';

  @override
  String get focusPresetWorkout => 'دورهای ورزش';

  @override
  String get focusAdjustMinutes => 'مدت تمرکز';

  @override
  String get focusAdjustBreak => 'مدت استراحت';

  @override
  String get focusAdjustRounds => 'دورها';

  @override
  String get focusRoundsOpen => 'بدون محدودیت';

  @override
  String focusMinutesShort(String n) {
    return '$n دقیقه';
  }

  @override
  String get focusTapToAdjust => 'برای تغییر زمان ضربه بزنید';

  @override
  String get flashArrangeDecks => 'مرتب کردن دسته‌ها';

  @override
  String get flashDeckActions => 'گزینه‌های دسته';

  @override
  String get starterBrowse => 'دسته‌های آماده';

  @override
  String get starterBrowseHint => 'با یک ضربه اضافه کنید و یادگیری را شروع کنید';

  @override
  String get dashOpenDecks => 'باز کردن کارت‌ها';

  @override
  String speechVoiceNumber(String n) {
    return 'صدای $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'روند خوبی بود. $m دقیقه استراحت؟';
  }

  @override
  String get focusFlowBreakStart => 'شروع استراحت';

  @override
  String tasksFinishAt(String time) {
    return 'اگر همین حالا شروع کنید، همه‌چیز تا ساعت $time تمام می‌شود';
  }

  @override
  String get focusCalmPacing => 'آهنگ آرام';

  @override
  String get focusCalmPacingHint => 'فقط دقیقه‌های کامل و حلقه، بدون ثانیه‌شمار';

  @override
  String get focusFlipHint => 'برای شروع، گوشی را رو به پایین بگذارید';

  @override
  String get focusImmersive => 'حالت غوطه‌ور';

  @override
  String get focusImmersiveBlack => 'سیاه خالص (صرفه‌جویی باتری)';

  @override
  String get focusFlipToFocus => 'برگرداندن برای تمرکز';

  @override
  String get focusFlipToFocusHint => 'در حالت غوطه‌ور: رو به پایین شروع می‌کند، برداشتن مکث می‌کند';

  @override
  String get guardTitle => 'محافظ حواس‌پرتی';

  @override
  String get guardSubtitle => 'مکث برنامه‌های حواس‌پرت‌کن هنگام تمرکز';

  @override
  String get guardSwitch => 'مکث برنامه‌های حواس‌پرت‌کن';

  @override
  String get guardSwitchHint => 'در جلسه‌های تمرکز و ساعت‌های محافظ زمانی';

  @override
  String get guardNeedsAccess => 'کلید دسترس‌پذیری لازم است: برای روشن کردن ضربه بزنید';

  @override
  String get guardDisclosureTitle => 'محافظ چطور کار می‌کند';

  @override
  String get guardDisclosureBody =>
      'برای مکث برنامه‌هایی که انتخاب می‌کنید، Deep Focus از سرویس دسترس‌پذیری Android استفاده می‌کند تا ببیند کدام برنامه باز است. با روشن بودن «بستن Shorts و Reels» بررسی می‌کند که آیا پخش‌کننده ویدیوی کوتاه روی صفحه هست یا نه.\n\nهیچ متنی را نمی‌خواند، چیزی از آنچه می‌بیند ذخیره نمی‌کند و چیزی به جایی نمی‌فرستد: همه‌چیز روی گوشی شما می‌ماند. هر زمان می‌توانید آن را در تنظیمات دسترس‌پذیری خاموش کنید.';

  @override
  String get guardAgree => 'موافقم، تنظیمات را باز کن';

  @override
  String get guardModeGentle => 'ملایم';

  @override
  String get guardModeStrict => 'سخت‌گیر';

  @override
  String get guardGentleHint => '5 ثانیه مکث برای نفس، بعد خودتان انتخاب کنید';

  @override
  String get guardStrictHint => 'برنامه‌های انتخاب‌شده تا پایان زمان تمرکز بسته می‌مانند';

  @override
  String get guardApps => 'برنامه‌هایی که مکث می‌شوند';

  @override
  String get guardAppsAllowed => 'برنامه‌های مجاز';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count برنامه',
      one: '$count برنامه',
      zero: 'هنوز انتخاب نشده',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'فقط برنامه‌های انتخاب‌شده مجاز باشند';

  @override
  String get guardAllowlistHint =>
      'همه برنامه‌های دیگر مکث می‌شوند؛ تماس‌ها، تنظیمات و صفحه‌کلید همیشه کار می‌کنند';

  @override
  String get guardShorts => 'بستن Shorts و Reels';

  @override
  String get guardShortsHint =>
      'هر زمان محافظ روشن باشد. بدون تضمین: این برنامه‌ها زیاد تغییر می‌کنند';

  @override
  String get guardSchedule => 'محافظ زمانی';

  @override
  String get guardScheduleHint => 'در روزها و ساعت‌های مشخص هم محافظت کن، مثل مدرسه یا کار';

  @override
  String get guardFrom => 'از';

  @override
  String get guardTo => 'تا';

  @override
  String get guardSearchApps => 'جستجوی برنامه‌ها';

  @override
  String get guardNoApps => 'برنامه‌ای پیدا نشد';

  @override
  String get guardPrivacy =>
      'فقط روی گوشی شما کار می‌کند: محافظ می‌بیند کدام برنامه باز است، هرگز محتوای آن را نمی‌بیند و چیزی نمی‌فرستد.';

  @override
  String get guardBreathe => 'نفس بکشید… و رها کنید';

  @override
  String get guardQuestion => 'همین حالا به این برنامه نیاز دارید؟';

  @override
  String get guardBackToFocus => 'بازگشت به تمرکز';

  @override
  String get guardOpenFive => 'باز کردن برای 5 دقیقه';

  @override
  String get guardStrictBody => 'این برنامه تا پایان زمان تمرکز شما مکث شده است.';

  @override
  String get guardShortsClosed => 'تا وقتی محافظ روشن است، ویدیوهای کوتاه بسته می‌شوند';

  @override
  String get faqGuardQ => 'چطور برنامه‌های حواس‌پرت‌کن را هنگام تمرکز متوقف کنم؟';

  @override
  String get faqGuardA =>
      'تمرکز → تنظیمات تایمر → محافظ حواس‌پرتی را باز کنید. برنامه‌ها را انتخاب کنید، سپس ملایم (5 ثانیه نفس و پرسش «همین حالا به این برنامه نیاز دارید؟») یا سخت‌گیر (بسته می‌مانند) را برگزینید. در جلسه‌های تمرکز و با محافظ زمانی در روزها و ساعت‌هایی که تعیین می‌کنید کار می‌کند. «فقط برنامه‌های انتخاب‌شده مجاز باشند» بقیه را مکث می‌کند؛ تماس‌ها، تنظیمات و صفحه‌کلید همیشه کار می‌کنند. Android یک بار از شما می‌خواهد محافظ را در تنظیمات دسترس‌پذیری روشن کنید. فقط می‌بیند کدام برنامه باز است و چیزی نمی‌فرستد.';

  @override
  String notesMovedToNotebook(String name) {
    return 'به $name منتقل شد';
  }

  @override
  String get notesDragHint => 'یک یادداشت را نگه دارید و روی دفترچه بکشید';

  @override
  String get guardReviewCards => 'به‌جایش کارت مرور کنید';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارت منتظر شماست',
      one: '$count کارت منتظر شماست',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'اضطراری: 10 ثانیه نگه دارید';

  @override
  String guardEmergencyHolding(Object n) {
    return 'همچنان نگه دارید… $n';
  }

  @override
  String get guardWeekTitle => 'این هفته';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مکث',
      one: '$count مکث',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بار بازگشت به تمرکز',
      one: '$count بار بازگشت به تمرکز',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'تغییر نام واژه‌ها';

  @override
  String get wordsSubtitle => 'برای هر متنی در برنامه واژه خودتان را به کار ببرید';

  @override
  String get wordsHint =>
      'برای تغییر روی یک متن ضربه بزنید. واژه‌های شما فقط برای همین زبان اعمال می‌شوند و در پشتیبان‌ها ذخیره می‌شوند.';

  @override
  String get wordsSearch => 'جستجوی متن‌ها';

  @override
  String get wordsChangedOnly => 'فقط تغییرکرده‌ها';

  @override
  String wordsOriginal(String text) {
    return 'اصلی: $text';
  }

  @override
  String get wordsReset => 'استفاده از اصلی';

  @override
  String get wordsResetAll => 'بازنشانی همه واژه‌ها';

  @override
  String get wordsResetAllConfirm => 'همه متن‌های این زبان به حالت اصلی برمی‌گردند.';

  @override
  String get wordsNone => 'متنی پیدا نشد';

  @override
  String get settingsLanguageSearch => 'جستجوی زبان';

  @override
  String get settingsLanguageNoMatch => 'زبانی پیدا نشد';

  @override
  String get soundsMyMusic => 'موسیقی شما';

  @override
  String get soundsMusicHint => 'یک فایل صوتی از تلفن خود پخش کنید. چیزی کپی یا بارگذاری نمی‌شود.';

  @override
  String get soundsChooseMusic => 'انتخاب فایل صوتی';

  @override
  String get soundsRemoveMusic => 'حذف موسیقی';
}
