// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'მთავარი';

  @override
  String get navTasks => 'ამოცანები';

  @override
  String get navFocus => 'ფოკუსი';

  @override
  String get navCalendar => 'კალენდარი';

  @override
  String get navSpaces => 'სივრცეები';

  @override
  String get moduleProjects => 'პროექტები';

  @override
  String get moduleNotes => 'ჩანაწერები';

  @override
  String get moduleFlashcards => 'ბარათები';

  @override
  String get moduleGoals => 'მიზნები';

  @override
  String get moduleHabits => 'ჩვევები';

  @override
  String get moduleAnalytics => 'ანალიტიკა';

  @override
  String get moduleSearch => 'ძიება';

  @override
  String get moduleAssistant => 'ასისტენტი';

  @override
  String get moduleSettings => 'პარამეტრები';

  @override
  String get moduleTrash => 'ნაგავი';

  @override
  String get actionSave => 'შენახვა';

  @override
  String get actionCancel => 'გაუქმება';

  @override
  String get actionDelete => 'წაშლა';

  @override
  String get actionEdit => 'რედაქტირება';

  @override
  String get actionDone => 'მზადაა';

  @override
  String get actionAdd => 'დამატება';

  @override
  String get actionCreate => 'შექმნა';

  @override
  String get actionClose => 'დახურვა';

  @override
  String get actionBack => 'უკან';

  @override
  String get actionUndo => 'დაბრუნება';

  @override
  String get actionRestore => 'აღდგენა';

  @override
  String get actionRetry => 'ხელახლა ცდა';

  @override
  String get actionContinue => 'გაგრძელება';

  @override
  String get actionSkip => 'გამოტოვება';

  @override
  String get actionArchive => 'დაარქივება';

  @override
  String get actionUnarchive => 'არქივიდან ამოღება';

  @override
  String get actionPin => 'ჩამაგრება';

  @override
  String get actionUnpin => 'ჩამაგრების მოხსნა';

  @override
  String get actionMore => 'მეტი ვარიანტი';

  @override
  String get actionClear => 'გასუფთავება';

  @override
  String get actionSearch => 'ძიება';

  @override
  String get actionSort => 'დალაგება';

  @override
  String get actionShare => 'გაზიარება';

  @override
  String get actionImport => 'იმპორტი';

  @override
  String get actionExport => 'ექსპორტი';

  @override
  String get actionPause => 'პაუზა';

  @override
  String get actionResume => 'გაგრძელება';

  @override
  String get actionStart => 'დაწყება';

  @override
  String get actionStop => 'შეჩერება';

  @override
  String get actionComplete => 'დასრულება';

  @override
  String get actionDeleteForever => 'სამუდამოდ წაშლა';

  @override
  String get actionEmptyTrash => 'ნაგვის დაცლა';

  @override
  String get actionUnlink => 'კავშირის გაწყვეტა';

  @override
  String get actionCustomize => 'მორგება';

  @override
  String get actionPreview => 'გადახედვა';

  @override
  String get actionLog => 'პროგრესის ჩაწერა';

  @override
  String get stateLoading => 'იტვირთება…';

  @override
  String get stateSaving => 'ინახება…';

  @override
  String get stateSaved => 'შენახულია';

  @override
  String get stateUnsaved => 'შეუნახავი ცვლილებები';

  @override
  String get errorGenericTitle => 'რაღაც შეცდომა მოხდა';

  @override
  String get errorGenericMessage => 'თქვენი მონაცემები უსაფრთხოდაა. სცადეთ ხელახლა.';

  @override
  String get errorLoadFailed => 'ამ შიგთავსის ჩატვირთვა ვერ მოხერხდა.';

  @override
  String get errorSaveFailed => 'შენახვა ვერ მოხერხდა. თქვენი ცვლილებები ისევ აქ არის.';

  @override
  String get validationRequired => 'ეს ველი სავალდებულოა';

  @override
  String get validationTitleRequired => 'შეიყვანეთ სათაური';

  @override
  String get validationNameRequired => 'შეიყვანეთ სახელი';

  @override
  String get validationTooLong => 'ზედმეტად გრძელია';

  @override
  String get validationEndBeforeStart => 'დასასრული დაწყების შემდეგ უნდა იყოს';

  @override
  String get validationStartAfterDue => 'დაწყების თარიღი ვადამდე უნდა იყოს';

  @override
  String get validationPositiveNumber => 'შეიყვანეთ ნულზე მეტი რიცხვი';

  @override
  String get validationDependencyCycle => 'ეს წრიულ დამოკიდებულებას შექმნიდა';

  @override
  String get validationInvalidRepeat => 'გამეორების ეს წესი არასწორია';

  @override
  String get deletedItem => 'გადატანილია ნაგავში';

  @override
  String get untitled => 'უსათაურო';

  @override
  String get noProject => 'პროექტის გარეშე';

  @override
  String get greetingMorning => 'დილა მშვიდობისა';

  @override
  String get greetingAfternoon => 'შუადღე მშვიდობისა';

  @override
  String get greetingEvening => 'საღამო მშვიდობისა';

  @override
  String get dashFocusToday => 'დღევანდელი ფოკუსი';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'ფოკუსის დაწყება';

  @override
  String get dashFocusRunning => 'სესია მიმდინარეობს';

  @override
  String get dashTodayTasks => 'ვადა დღეს';

  @override
  String get dashAgenda => 'დღის წესრიგი';

  @override
  String get dashHabits => 'დღევანდელი ჩვევები';

  @override
  String get dashGoals => 'მიზნები';

  @override
  String get dashReview => 'გამეორება';

  @override
  String get dashRecentNotes => 'ბოლო ჩანაწერები';

  @override
  String get dashInsight => 'რჩევა';

  @override
  String get dashSeeAll => 'ყველას ნახვა';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ბარათი გასამეორებლად',
      one: '1 ბარათი გასამეორებლად',
      zero: 'გასამეორებელი ბარათი არ არის',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'ახლა გამეორება';

  @override
  String get dashCustomizeTitle => 'მთავარი გვერდის სექციები';

  @override
  String get dashCustomizeHint => 'აირჩიეთ, რა გამოჩნდეს მთავარ ეკრანზე.';

  @override
  String get dashSectionFocus => 'ფოკუსი';

  @override
  String get dashSectionToday => 'დღეს ვადიანი ამოცანები';

  @override
  String get dashSectionAgenda => 'დღის წესრიგი';

  @override
  String get dashSectionHabits => 'ჩვევები';

  @override
  String get dashSectionGoals => 'მიზნები';

  @override
  String get dashSectionReview => 'ბარათების გამეორება';

  @override
  String get dashSectionNotes => 'ბოლო ჩანაწერები';

  @override
  String get dashSectionInsight => 'რჩევები';

  @override
  String get quickAddTask => 'ახალი ამოცანა';

  @override
  String get quickAddNote => 'ახალი ჩანაწერი';

  @override
  String get quickAddEvent => 'ახალი მოვლენა';

  @override
  String get quickStartFocus => 'ფოკუსი';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'გაქვთ $count ვადაგადაცილებული ამოცანა. დაიწყეთ ყველაზე მნიშვნელოვნით.',
      one: 'გაქვთ 1 ვადაგადაცილებული ამოცანა. გადაგეგმეთ ან ჯერ დაასრულეთ.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'დღიურ ფოკუსის მიზნამდე $minutes წუთი დაგრჩათ.';
  }

  @override
  String get insightCardsDue => 'გაიმეორეთ ბარათები ახლა, სანამ მეხსიერებაში ახალია.';

  @override
  String get insightAllClear =>
      'ყველაფერი გეგმის მიხედვით მიდის. დაგეგმეთ ხვალინდელი დღე ან გააკეთეთ გაცნობიერებული შესვენება.';

  @override
  String insightHabitStreak(String habit) {
    return 'შეინარჩუნეთ სერია: „$habit“ დღეს ჯერ არ შესრულებულა.';
  }

  @override
  String get focusTitle => 'ფოკუსი';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'ტაიმერი';

  @override
  String get focusModeCountUp => 'წამზომი';

  @override
  String get focusModeOpen => 'თავისუფალი';

  @override
  String get focusPhaseWork => 'ფოკუსი';

  @override
  String get focusPhaseShortBreak => 'მოკლე შესვენება';

  @override
  String get focusPhaseLongBreak => 'ხანგრძლივი შესვენება';

  @override
  String get focusReady => 'დაიწყეთ, როცა მზად იქნებით';

  @override
  String get focusPaused => 'პაუზაზეა';

  @override
  String get focusRunning => 'ფოკუსში';

  @override
  String get focusDuration => 'ხანგრძლივობა';

  @override
  String get focusLinkTask => 'ამოცანის მიბმა';

  @override
  String get focusLinkedTask => 'მუშაობა';

  @override
  String get focusNoTask => 'ამოცანა არ არის მიბმული';

  @override
  String focusCycle(int current, int total) {
    return 'ციკლი $current/$total';
  }

  @override
  String get focusSkipBreak => 'შესვენების გამოტოვება';

  @override
  String get focusStartBreak => 'შესვენების დაწყება';

  @override
  String get focusStartNext => 'შემდეგი ფოკუსის დაწყება';

  @override
  String get focusSessionComplete => 'სესია დასრულდა';

  @override
  String get focusSessionStopped => 'სესია შენახულია';

  @override
  String focusSessionSummary(String duration) {
    return 'თქვენ ფოკუსირებული იყავით $duration.';
  }

  @override
  String get focusAddNote => 'დაამატეთ ჩანაწერი ამ სესიის შესახებ';

  @override
  String get focusHistory => 'ისტორია';

  @override
  String get focusNoHistory => 'დასრულებული სესიები აქ გამოჩნდება';

  @override
  String get focusTargets => 'სამიზნეები';

  @override
  String get focusDailyTarget => 'დღიური სამიზნე';

  @override
  String get focusWeeklyTarget => 'კვირის სამიზნე';

  @override
  String get focusOutcomeCompleted => 'დასრულებული';

  @override
  String get focusOutcomeInterrupted => 'ადრე შეჩერებული';

  @override
  String get focusRecovered => 'სესია გაგრძელდა, სანამ აპი დახურული იყო.';

  @override
  String get focusCompletedWhileAway => 'სესია დასრულდა, სანამ აპი დახურული იყო, და შეინახა.';

  @override
  String get focusNotificationsOff =>
      'შეტყობინებები გამორთულია. სესიის დასრულებისას გაფრთხილებას ვერ მიიღებთ.';

  @override
  String get focusBatteryHint =>
      'ზოგი მოწყობილობა აპებს ფონურ რეჟიმში აჩერებს. ტაიმერი ზუსტი რჩება, მაგრამ გაფრთხილებები შეიძლება დაგვიანდეს. საიმედო გაფრთხილებებისთვის დაუშვით ბატარეის შეუზღუდავი გამოყენება.';

  @override
  String get focusOpenSettings => 'პარამეტრების გახსნა';

  @override
  String get focusStopConfirmTitle => 'შეჩერდეს ეს სესია?';

  @override
  String get focusStopConfirmMessage => 'აქამდე დაგროვილი ფოკუსის დრო შეინახება.';

  @override
  String get focusDiscard => 'უარყოფა';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes წუთი',
      one: '1 წუთი',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, დარჩა $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, გავიდა $time';
  }

  @override
  String get focusDeleteSession => 'სესიის წაშლა';

  @override
  String get tasksTitle => 'ამოცანები';

  @override
  String get tasksViewToday => 'დღეს';

  @override
  String get tasksViewUpcoming => 'მომავალი';

  @override
  String get tasksViewAll => 'ყველა';

  @override
  String get tasksViewOverdue => 'ვადაგადაცილებული';

  @override
  String get tasksViewCompleted => 'შესრულებული';

  @override
  String get tasksQuickAddHint => 'დაამატეთ ამოცანა…';

  @override
  String get tasksEmptyTitle => 'ყველაფერი შესრულდა';

  @override
  String get tasksEmptyMessage => 'დაამატეთ ამოცანა, რომ დღის დაგეგმვა დაიწყოთ.';

  @override
  String get tasksEmptyCompleted => 'შესრულებული ამოცანები აქ გამოჩნდება.';

  @override
  String get taskNew => 'ახალი ამოცანა';

  @override
  String get taskEdit => 'ამოცანის რედაქტირება';

  @override
  String get taskTitleLabel => 'სათაური';

  @override
  String get taskTitleHint => 'რა უნდა გაკეთდეს?';

  @override
  String get taskDescriptionLabel => 'აღწერა';

  @override
  String get taskNotesLabel => 'ჩანაწერები';

  @override
  String get taskPriority => 'პრიორიტეტი';

  @override
  String get priorityNone => 'არცერთი';

  @override
  String get priorityLow => 'დაბალი';

  @override
  String get priorityMedium => 'საშუალო';

  @override
  String get priorityHigh => 'მაღალი';

  @override
  String get priorityUrgent => 'სასწრაფო';

  @override
  String get taskDueDate => 'ვადა';

  @override
  String get taskStartDate => 'დაწყების თარიღი';

  @override
  String get taskReminder => 'შეხსენება';

  @override
  String get taskRepeat => 'გამეორება';

  @override
  String get taskProject => 'პროექტი';

  @override
  String get taskCategory => 'კატეგორია';

  @override
  String get taskCategoryHint => 'მაგ. სამსახური, სახლი, სწავლა';

  @override
  String get taskEstimateMinutes => 'შეფასება (წუთი)';

  @override
  String get taskTracked => 'გაზომილი ფოკუსი';

  @override
  String get taskLabels => 'იარლიყები';

  @override
  String get taskAddLabel => 'ახალი იარლიყი';

  @override
  String get taskChecklist => 'სამოწმებელი სია';

  @override
  String get taskAddChecklistItem => 'პუნქტის დამატება';

  @override
  String get taskSubtasks => 'ქვეამოცანები';

  @override
  String get taskAddSubtask => 'ქვეამოცანის დამატება';

  @override
  String get taskDependencies => 'ბლოკავს';

  @override
  String get taskAddDependency => 'დამბლოკავი ამოცანის დამატება';

  @override
  String get taskLinkedNotes => 'მიბმული ჩანაწერები';

  @override
  String get taskSetTime => 'დროის დაყენება';

  @override
  String get taskNoDate => 'თარიღის გარეშე';

  @override
  String get taskCompleted => 'ამოცანა შესრულდა';

  @override
  String get taskNextOccurrence => 'შეიქმნა შემდეგი გამეორება';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days დღით დაგვიანებული',
      one: '1 დღით დაგვიანებული',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '„$title“ შესრულებულად მონიშვნა';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '„$title“ შეუსრულებლად მონიშვნა';
  }

  @override
  String get sortSmart => 'ჭკვიანი';

  @override
  String get sortDueDate => 'ვადა';

  @override
  String get sortPriority => 'პრიორიტეტი';

  @override
  String get sortCreated => 'უახლესი';

  @override
  String get sortTitle => 'სათაური';

  @override
  String get filterAllProjects => 'ყველა პროექტი';

  @override
  String get filterAnyPriority => 'ნებისმიერი პრიორიტეტი';

  @override
  String get filterTitle => 'ფილტრი და დალაგება';

  @override
  String get dateToday => 'დღეს';

  @override
  String get dateTomorrow => 'ხვალ';

  @override
  String get dateYesterday => 'გუშინ';

  @override
  String get repeatNever => 'არ მეორდება';

  @override
  String get repeatDaily => 'ყოველდღე';

  @override
  String get repeatWeekdays => 'ყოველ სამუშაო დღეს';

  @override
  String get repeatWeekly => 'ყოველკვირა';

  @override
  String get repeatMonthly => 'ყოველთვე';

  @override
  String get repeatYearly => 'ყოველწლიურად';

  @override
  String get repeatCustom => 'მორგებული';

  @override
  String get repeatEvery => 'გამეორება ყოველ';

  @override
  String get repeatOnDays => 'დღეებში';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'დღე', one: 'დღე');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'კვირა', one: 'კვირა');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'თვე', one: 'თვე');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'წელი', one: 'წელი');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count გამეორების',
      one: '1 გამეორების',
    );
    return 'სრულდება $_temp0 შემდეგ';
  }

  @override
  String get repeatEndsNever => 'არასოდეს სრულდება';

  @override
  String get reminderAtTime => 'მოვლენის დროს';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes წუთით ადრე',
      one: '1 წუთით ადრე',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours საათით ადრე',
      one: '1 საათით ადრე',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 დღით ადრე';

  @override
  String get projectsTitle => 'პროექტები';

  @override
  String get projectsEmptyTitle => 'პროექტები ჯერ არ არის';

  @override
  String get projectsEmptyMessage =>
      'დააჯგუფეთ დაკავშირებული ამოცანები, ჩანაწერები და ფოკუსის დრო.';

  @override
  String get projectNew => 'ახალი პროექტი';

  @override
  String get projectEdit => 'პროექტის რედაქტირება';

  @override
  String get projectName => 'სახელი';

  @override
  String get projectDescription => 'აღწერა';

  @override
  String get projectGoal => 'მიზანი';

  @override
  String get projectDeadline => 'საბოლოო ვადა';

  @override
  String get projectColor => 'ფერი';

  @override
  String get projectIcon => 'ხატულა';

  @override
  String get projectProgress => 'პროგრესი';

  @override
  String projectTasksDone(int done, int total) {
    return 'შესრულებულია $total-დან $done ამოცანა';
  }

  @override
  String get projectFocusTime => 'ფოკუსის დრო';

  @override
  String get projectArchived => 'დაარქივებული პროექტები';

  @override
  String get projectShowArchived => 'დაარქივებულების ჩვენება';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'დარჩა $days დღე',
      one: 'დარჩა 1 დღე',
      zero: 'ვადა დღესაა',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'ვადა გავიდა';

  @override
  String get calendarTitle => 'კალენდარი';

  @override
  String get calendarMonth => 'თვე';

  @override
  String get calendarWeek => 'კვირა';

  @override
  String get calendarDay => 'დღე';

  @override
  String get calendarToday => 'დღეს';

  @override
  String get calendarPrevious => 'წინა';

  @override
  String get calendarNext => 'შემდეგი';

  @override
  String get calendarNoEvents => 'არაფერია დაგეგმილი';

  @override
  String get calendarAllDay => 'მთელი დღე';

  @override
  String get eventNew => 'ახალი მოვლენა';

  @override
  String get eventEdit => 'მოვლენის რედაქტირება';

  @override
  String get eventTitleHint => 'მოვლენის სათაური';

  @override
  String get eventStarts => 'იწყება';

  @override
  String get eventEnds => 'მთავრდება';

  @override
  String get eventKind => 'ტიპი';

  @override
  String get eventKindEvent => 'მოვლენა';

  @override
  String get eventKindTimeBlock => 'დროის ბლოკი';

  @override
  String get eventKindFocus => 'ფოკუსის სესია';

  @override
  String get eventKindGoal => 'პირადი მიზანი';

  @override
  String get eventDescription => 'დეტალები';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ემთხვევა $count მოვლენას',
      one: 'ემთხვევა 1 მოვლენას',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'ამ დღეს განრიგის კონფლიქტებია';

  @override
  String get calendarTaskDue => 'ამოცანის ვადა';

  @override
  String get calendarDragHint => 'მოვლენის გადასატანად ხანგრძლივად დააჭირეთ და გადაათრიეთ';

  @override
  String get calendarRescheduled => 'მოვლენა გადატანილია';

  @override
  String get calendarScheduleTask => 'დროის ბლოკად დაგეგმვა';

  @override
  String get notesTitle => 'ჩანაწერები';

  @override
  String get notesViewAll => 'ყველა';

  @override
  String get notesViewPinned => 'ჩამაგრებული';

  @override
  String get notesViewFavorites => 'რჩეული';

  @override
  String get notesViewArchived => 'დაარქივებული';

  @override
  String get notesTags => 'ტეგები';

  @override
  String get notesNewNotebook => 'ახალი რვეული';

  @override
  String get notesNoNotebook => 'რვეულის გარეშე';

  @override
  String get notesEmptyTitle => 'სუფთა ფურცელი';

  @override
  String get notesEmptyMessage => 'ჩაიწერეთ იდეები, შეხვედრების ჩანაწერები და ცოდნა.';

  @override
  String get noteTitleHint => 'სათაური';

  @override
  String get noteBodyHint =>
      'დაიწყეთ წერა… გამოიყენეთ # ტეგებისთვის და [[სათაური]] ჩანაწერების დასაკავშირებლად.';

  @override
  String get noteFavorite => 'რჩეული';

  @override
  String get noteUnfavorite => 'რჩეულებიდან ამოღება';

  @override
  String get noteMoveTo => 'რვეულში გადატანა';

  @override
  String get noteBacklinks => 'ბმულები აქედან';

  @override
  String get noteLinkedTasks => 'მიბმული ამოცანები';

  @override
  String get noteLinkTask => 'ამოცანის მიბმა';

  @override
  String get noteLinkProject => 'პროექტი';

  @override
  String get noteFormatHeading => 'სათაური';

  @override
  String get noteFormatBold => 'მუქი';

  @override
  String get noteFormatItalic => 'დახრილი';

  @override
  String get noteFormatList => 'ბურთულებიანი სია';

  @override
  String get noteFormatChecklist => 'სამოწმებელი სია';

  @override
  String get noteFormatLink => 'ბმული';

  @override
  String noteEdited(String time) {
    return 'რედაქტირდა $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count სიტყვა',
      one: '1 სიტყვა',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'ბარათები';

  @override
  String get flashEmptyTitle => 'შექმენით პირველი დასტა';

  @override
  String get flashEmptyMessage =>
      'ინტერვალური გამეორება თითოეულ ბარათს გაჩვენებთ ზუსტად მანამ, სანამ დაივიწყებდით.';

  @override
  String get deckNew => 'ახალი დასტა';

  @override
  String get deckEdit => 'დასტის რედაქტირება';

  @override
  String get deckName => 'დასტის სახელი';

  @override
  String get deckDescription => 'აღწერა';

  @override
  String get deckDailyNew => 'ახალი ბარათები დღეში';

  @override
  String get deckDailyReview => 'დღიური გამეორების სამიზნე';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ბარათი',
      one: '1 ბარათი',
      zero: 'ბარათები არ არის',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'გასამეორებელი';

  @override
  String get deckNewCards => 'ახალი';

  @override
  String get deckMature => 'ათვისებული';

  @override
  String get deckStudy => 'სწავლა';

  @override
  String get deckNothingDue => 'ახლა გასამეორებელი არაფერია. მოგვიანებით დაბრუნდით.';

  @override
  String get deckEmptyCards => 'დაამატეთ ბარათები, რომ სწავლა დაიწყოთ.';

  @override
  String get cardNew => 'ახალი ბარათი';

  @override
  String get cardEdit => 'ბარათის რედაქტირება';

  @override
  String get cardFront => 'წინა მხარე';

  @override
  String get cardBack => 'უკანა მხარე';

  @override
  String get cardFrontHint => 'კითხვა ან ტერმინი';

  @override
  String get cardBackHint => 'პასუხი ან განმარტება';

  @override
  String get cardTags => 'ტეგები';

  @override
  String get cardAddAnother => 'შენახვა და კიდევ დამატება';

  @override
  String get reviewShowAnswer => 'პასუხის ჩვენება';

  @override
  String get reviewAgain => 'ხელახლა';

  @override
  String get reviewHard => 'რთული';

  @override
  String get reviewGood => 'კარგი';

  @override
  String get reviewEasy => 'მარტივი';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => 'სესია დასრულდა';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'თქვენ გაიმეორეთ $count ბარათი.',
      one: 'თქვენ გაიმეორეთ 1 ბარათი.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'შეეხეთ პასუხის სანახავად';

  @override
  String get importCardsTitle => 'ბარათების იმპორტი';

  @override
  String get importCardsHint =>
      'ჩასვით თითო ბარათი თითო ხაზზე (წინა და უკანა მხარე ტაბით ან წერტილ-მძიმით გამოყოფილი) ან აირჩიეთ ფაილი: Excel (.xlsx), CSV, Anki-ს დასტა (.apkg) ან ექსპორტირებული დასტა.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'შემოვიდა $count ბარათი',
      one: 'შემოვიდა 1 ბარათი',
      zero: 'არცერთი ბარათი არ შემოვიდა',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'ამ შიგთავსის იმპორტი ვერ მოხერხდა.';

  @override
  String get exportCopied => 'დასტა ექსპორტირებულია';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count წთ',
      one: '1 წთ',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count დღე',
      one: '1 დღე',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'მიზნები';

  @override
  String get goalsEmptyTitle => 'მიისწრაფეთ რაღაცისკენ';

  @override
  String get goalsEmptyMessage =>
      'დასახეთ დღიური, კვირის, თვის ან გრძელვადიანი მიზნები და თვალი ადევნეთ რეალურ პროგრესს.';

  @override
  String get goalNew => 'ახალი მიზანი';

  @override
  String get goalEdit => 'მიზნის რედაქტირება';

  @override
  String get goalTitleHint => 'რისი მიღწევა გსურთ?';

  @override
  String get goalPeriod => 'პერიოდი';

  @override
  String get goalPeriodDaily => 'დღიური';

  @override
  String get goalPeriodWeekly => 'კვირის';

  @override
  String get goalPeriodMonthly => 'თვის';

  @override
  String get goalPeriodLongTerm => 'გრძელვადიანი';

  @override
  String get goalTarget => 'სამიზნე';

  @override
  String get goalUnit => 'ერთეული';

  @override
  String get goalUnitHint => 'მაგ. გვერდები, კმ, საათები';

  @override
  String get goalStatusActive => 'აქტიური';

  @override
  String get goalStatusPaused => 'პაუზაზე';

  @override
  String get goalStatusAchieved => 'მიღწეული';

  @override
  String get goalPause => 'მიზნის შეჩერება';

  @override
  String get goalResume => 'მიზნის გაგრძელება';

  @override
  String get goalMarkAchieved => 'მიღწეულად მონიშვნა';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => 'რაოდენობა';

  @override
  String get goalLogNote => 'ჩანაწერი (არასავალდებულო)';

  @override
  String get goalHistory => 'ისტორია';

  @override
  String get goalNoHistory => 'ჩაწერილი პროგრესი აქ გამოჩნდება';

  @override
  String get goalLinkedTasks => 'მიბმული ამოცანები';

  @override
  String get goalLinkedTasksHint =>
      'თითოეული შესრულებული მიბმული ამოცანა ამ მიზნისთვის 1-ად ითვლება.';

  @override
  String get goalThisPeriod => 'ეს პერიოდი';

  @override
  String get habitsTitle => 'ჩვევები';

  @override
  String get habitsEmptyTitle => 'პატარა ნაბიჯები ყოველდღე';

  @override
  String get habitsEmptyMessage => 'შექმენით ჩვევა და მონიშნეთ, როცა შეასრულებთ.';

  @override
  String get habitNew => 'ახალი ჩვევა';

  @override
  String get habitEdit => 'ჩვევის რედაქტირება';

  @override
  String get habitNameHint => 'მაგ. 20 გვერდის წაკითხვა';

  @override
  String get habitDays => 'განრიგი';

  @override
  String get habitEveryDay => 'ყოველდღე';

  @override
  String get habitTargetPerDay => 'დღეში რამდენჯერ';

  @override
  String get habitReminder => 'ყოველდღიური შეხსენება';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-დღიანი სერია',
      one: '1-დღიანი სერია',
      zero: 'სერია არ არის',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'საუკეთესო სერია';

  @override
  String get habitCurrentStreak => 'მიმდინარე სერია';

  @override
  String get habitConsistency => 'თანმიმდევრულობა';

  @override
  String get habitLast90 => 'ბოლო 90 დღე';

  @override
  String get habitPaused => 'პაუზაზეა';

  @override
  String get habitPause => 'ჩვევის შეჩერება';

  @override
  String get habitResume => 'ჩვევის გაგრძელება';

  @override
  String get habitDoneToday => 'დღეს შესრულდა';

  @override
  String habitCountToday(int count, int target) {
    return 'დღეს $count / $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '„$name“ მონიშვნა';
  }

  @override
  String get habitNotScheduledToday => 'დღეს არ არის დაგეგმილი';

  @override
  String get analyticsTitle => 'ანალიტიკა';

  @override
  String get rangeWeek => '7 დღე';

  @override
  String get rangeMonth => '30 დღე';

  @override
  String get rangeQuarter => '90 დღე';

  @override
  String get statFocusTime => 'ფოკუსის დრო';

  @override
  String get statSessions => 'სესიები';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed დასრულდა · $interrupted ადრე შეჩერდა';
  }

  @override
  String get statTasksDone => 'შესრულებული ამოცანები';

  @override
  String get statCompletionRate => 'დროულად შესრულება';

  @override
  String get statHabitConsistency => 'ჩვევების თანმიმდევრულობა';

  @override
  String get statRetention => 'ბარათების დამახსოვრება';

  @override
  String get statReviews => 'გამეორებები';

  @override
  String get statActiveGoals => 'აქტიური მიზნები';

  @override
  String get statEstimated => 'სავარაუდოდ შესრულებული სამუშაო';

  @override
  String get statEstimatedNote => 'თქვენს შეფასებებზე დაყრდნობით, არა გაზომილ დროზე';

  @override
  String get statMeasuredNote => 'გაზომილია ფოკუსის სესიებით';

  @override
  String get chartFocusByDay => 'ფოკუსის წუთები დღეში';

  @override
  String get chartTasksByDay => 'შესრულებული ამოცანები დღეში';

  @override
  String get chartTimeByProject => 'დრო პროექტების მიხედვით';

  @override
  String get chartProjectProgress => 'პროექტების პროგრესი';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: სულ $total, საუკეთესო დღე $best';
  }

  @override
  String get analyticsNoData => 'ჯერ საკმარისი მონაცემი არ არის';

  @override
  String get analyticsUnassigned => 'მიუკუთვნებელი';

  @override
  String get searchHint => 'ძიება ყველგან…';

  @override
  String get searchRecent => 'ბოლო ძიებები';

  @override
  String get searchClearRecent => 'ბოლო ძიებების გასუფთავება';

  @override
  String searchNoResults(String query) {
    return '„$query“-ზე შედეგი არ არის';
  }

  @override
  String get searchStartTyping =>
      'მოძებნეთ ამოცანებში, ჩანაწერებში, ბარათებში, მიზნებში, მოვლენებსა და სხვაგან. ძიება ამ მოწყობილობაზე რჩება.';

  @override
  String get searchCatTask => 'ამოცანები';

  @override
  String get searchCatProject => 'პროექტები';

  @override
  String get searchCatNote => 'ჩანაწერები';

  @override
  String get searchCatFlashcard => 'ბარათები';

  @override
  String get searchCatDeck => 'დასტები';

  @override
  String get searchCatGoal => 'მიზნები';

  @override
  String get searchCatHabit => 'ჩვევები';

  @override
  String get searchCatEvent => 'მოვლენები';

  @override
  String get searchCatSession => 'სესიები';

  @override
  String get searchAll => 'ყველა';

  @override
  String get assistantTitle => 'ასისტენტი';

  @override
  String get assistantIntro =>
      'დაგეგმვის დახმარება, რომელიც თქვენს მოწყობილობაზე მუშაობს. სურვილისამებრ, შეჯამებისა და გენერირებისთვის დააკავშირეთ თქვენ მიერ არჩეული ხელოვნური ინტელექტის მომწოდებელი.';

  @override
  String get assistantOnDevice => 'მოწყობილობაზე';

  @override
  String get assistantCloud => 'ხი მომწოდებელი';

  @override
  String get assistantPlanDay => 'ჩემი დღის დაგეგმვა';

  @override
  String get assistantPlanDayDesc =>
      'ალაგებს ღია ამოცანებს სისწრაფის, პრიორიტეტისა და შეფასების მიხედვით და ათავსებს თქვენს მოვლენებს შორის.';

  @override
  String get assistantExtractTasks => 'ჩანაწერიდან ამოცანების ამოღება';

  @override
  String get assistantExtractTasksDesc =>
      'პოულობს ჩანაწერში სამოწმებელი სიის პუნქტებსა და მოქმედების ხაზებს და ამოცანებად აქცევს.';

  @override
  String get assistantMakeCards => 'ჩანაწერიდან ბარათების შექმნა';

  @override
  String get assistantMakeCardsDesc =>
      '„ტერმინი: განმარტება“ და კითხვა/პასუხის ხაზებს ბარათებად აქცევს.';

  @override
  String get assistantSummarize => 'ჩანაწერის შეჯამება';

  @override
  String get assistantSummarizeDesc =>
      'საჭიროა ხი მომწოდებელი. ჩანაწერი მხოლოდ თქვენი დადასტურების შემდეგ იგზავნება.';

  @override
  String get assistantWorkload => 'დატვირთვის მიმოხილვა';

  @override
  String get assistantWorkloadDesc => 'ადარებს სავარაუდო სამუშაოს ამ კვირის თავისუფალ დროს.';

  @override
  String get assistantPlanEmpty => 'დასაგეგმი ღია ამოცანები არ არის. ისიამოვნეთ თავისუფალი დროით.';

  @override
  String assistantPlanCapacity(String time) {
    return 'დღევანდელი თავისუფალი ფოკუსის დრო: $time';
  }

  @override
  String get assistantPlanOverflow => 'ესენი შეიძლება დღეს ვერ ჩაეტიოს:';

  @override
  String get assistantChooseNote => 'აირჩიეთ ჩანაწერი';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'მოიძებნა $count ამოცანა',
      one: 'მოიძებნა 1 ამოცანა',
      zero: 'ამ ჩანაწერში ამოცანები ვერ მოიძებნა',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'მოიძებნა $count ბარათი',
      one: 'მოიძებნა 1 ბარათი',
      zero: 'ამ ჩანაწერში ბარათები ვერ მოიძებნა',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'აირჩიეთ დასტა';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'სავარაუდო სამუშაო: $estimated. თავისუფალი დრო: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'ხელმისაწვდომ დროზე მეტი დაგეგმეთ. განიხილეთ დაბალი პრიორიტეტის ამოცანების გადატანა.';

  @override
  String get assistantWorkloadOk => 'თქვენი გეგმა ხელმისაწვდომ დროში ეტევა.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ღია ამოცანას შეფასება არ აქვს.',
      one: '1 ღია ამოცანას შეფასება არ აქვს.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'ხი მომწოდებელი';

  @override
  String get assistantProviderOff =>
      'მომწოდებელი არ არის დაკავშირებული. მოწყობილობის ხელსაწყოები მაინც მუშაობს.';

  @override
  String assistantProviderOn(String host) {
    return 'დაკავშირებულია $host-თან';
  }

  @override
  String get assistantEndpoint => 'API-ს ბოლო წერტილი (HTTPS)';

  @override
  String get assistantModel => 'მოდელი';

  @override
  String get assistantApiKey => 'API გასაღები';

  @override
  String get assistantApiKeyStored => 'უსაფრთხოდ ინახება ამ მოწყობილობაზე';

  @override
  String get assistantHttpsOnly => 'დაშვებულია მხოლოდ HTTPS ბოლო წერტილები';

  @override
  String get assistantConsentTitle => 'გაეგზავნოს ეს შიგთავსი თქვენს ხი მომწოდებელს?';

  @override
  String assistantConsentBody(String host) {
    return 'არჩეული ჩანაწერის ტექსტი დატოვებს ამ მოწყობილობას და მას $host დაამუშავებს. სხვა არაფერი იგზავნება.';
  }

  @override
  String get assistantConsentAlways => 'აღარ მკითხო ამ მომწოდებლისთვის';

  @override
  String get assistantSend => 'გაგზავნა';

  @override
  String get assistantUnavailable =>
      'ხი მომწოდებელთან დაკავშირება ვერ მოხერხდა. სცადეთ მოგვიანებით.';

  @override
  String get assistantDisabledTitle => 'ასისტენტი გამორთულია';

  @override
  String get assistantDisabledMessage =>
      'ჩართეთ, რომ დაგეგმვის ხელსაწყოები გამოიყენოთ. მონაცემები მოწყობილობას არ ტოვებს, თუ მომწოდებელს არ დააკავშირებთ და თითოეულ მოთხოვნას არ დაადასტურებთ.';

  @override
  String get assistantSummaryTitle => 'შეჯამება';

  @override
  String get assistantRemoveProvider => 'მომწოდებლის წაშლა';

  @override
  String get settingsTitle => 'პარამეტრები';

  @override
  String get settingsGeneral => 'ზოგადი';

  @override
  String get settingsLanguage => 'ენა';

  @override
  String get settingsLanguageSystem => 'მოწყობილობის ენა';

  @override
  String get settingsAppearance => 'იერსახე';

  @override
  String get settingsTheme => 'თემა';

  @override
  String get themeLight => 'ღია';

  @override
  String get themeDark => 'მუქი';

  @override
  String get themeSystem => 'სისტემური';

  @override
  String get settingsReduceMotion => 'მოძრაობის შემცირება';

  @override
  String get settingsReduceMotionDesc => 'ანიმაციებისა და მოძრავი ფონების მინიმუმამდე დაყვანა';

  @override
  String get settingsFocus => 'ფოკუსის ტაიმერი';

  @override
  String get settingsWorkLength => 'ფოკუსის ხანგრძლივობა';

  @override
  String get settingsShortBreak => 'მოკლე შესვენება';

  @override
  String get settingsLongBreak => 'ხანგრძლივი შესვენება';

  @override
  String get settingsLongBreakEvery => 'ხანგრძლივი შესვენება ამდენის შემდეგ';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count სესია',
      one: '1 სესია',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'შესვენებების ავტომატური დაწყება';

  @override
  String get settingsSound => 'დასრულების ხმა';

  @override
  String get settingsDailyFocusTarget => 'დღიური ფოკუსის სამიზნე';

  @override
  String get settingsWeeklyFocusTarget => 'კვირის ფოკუსის სამიზნე';

  @override
  String get settingsNotifications => 'შეტყობინებები';

  @override
  String get settingsNotificationsEnable => 'შეხსენებების დაშვება';

  @override
  String get settingsQuietHours => 'მყუდრო საათები';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'ჩვევების, მიზნებისა და გამეორების შეხსენებები დადუმებულია $start–$end';
  }

  @override
  String get settingsReviewReminder => 'ბარათების გამეორების შეხსენება';

  @override
  String get settingsPermissionDenied => 'შეტყობინებები დაბლოკილია სისტემის პარამეტრებში.';

  @override
  String get settingsPrivacy => 'კონფიდენციალურობა და მონაცემები';

  @override
  String get settingsPrivacyStatement =>
      'თქვენი მონაცემები მხოლოდ ამ მოწყობილობაზე ინახება და დაშიფრულია. არ არის ანგარიში, ანალიტიკა ან თვალთვალი.';

  @override
  String get settingsBackup => 'დაშიფრული სარეზერვო ასლის შექმნა';

  @override
  String get settingsBackupDesc => 'დაცულია თქვენ მიერ არჩეული პაროლით';

  @override
  String get settingsRestore => 'სარეზერვო ასლიდან აღდგენა';

  @override
  String get settingsRestoreDesc => 'ანაცვლებს ამ მოწყობილობის ყველა მონაცემს';

  @override
  String get settingsErase => 'ყველა მონაცემის წაშლა';

  @override
  String get settingsEraseDesc => 'ამ მოწყობილობაზე ყველაფრის სამუდამოდ წაშლა';

  @override
  String get settingsEraseConfirmTitle => 'წაიშალოს ყველა მონაცემი?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'ყველა ამოცანა, ჩანაწერი, ბარათი, მიზანი, ჩვევა, მოვლენა და სესია სამუდამოდ წაიშლება. დასადასტურებლად აკრიფეთ $word.';
  }

  @override
  String get settingsEraseWord => 'წაშლა';

  @override
  String get settingsErased => 'ყველა მონაცემი წაიშალა';

  @override
  String get backupPassword => 'სარეზერვო ასლის პაროლი';

  @override
  String get backupPasswordConfirm => 'დაადასტურეთ პაროლი';

  @override
  String backupPasswordHint(int count) {
    return 'მინიმუმ $count სიმბოლო. დაკარგვის შემთხვევაში აღდგენა შეუძლებელია.';
  }

  @override
  String get backupPasswordMismatch => 'პაროლები არ ემთხვევა';

  @override
  String get backupPasswordShort => 'პაროლი ზედმეტად მოკლეა';

  @override
  String get backupCreating => 'სარეზერვო ასლი იშიფრება…';

  @override
  String get backupCreated => 'სარეზერვო ასლი მზადაა შესანახად';

  @override
  String get backupRestoring => 'მოწმდება და აღდგება…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'აღდგა $count ელემენტი',
      one: 'აღდგა 1 ელემენტი',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'არასწორი პაროლი, ან ფაილი შეცვლილია.';

  @override
  String get backupNotABackup => 'ეს ფაილი Deep Focus-ის სარეზერვო ასლი არ არის.';

  @override
  String get backupCorrupted => 'სარეზერვო ფაილი დაზიანებულია.';

  @override
  String get backupNewer => 'ეს სარეზერვო ასლი აპის უფრო ახალმა ვერსიამ შექმნა. ჯერ განაახლეთ.';

  @override
  String get backupRestoreConfirmTitle => 'ჩანაცვლდეს ყველა მონაცემი?';

  @override
  String get backupRestoreConfirmBody =>
      'ყველაფერი, რაც ახლა ამ მოწყობილობაზეა, სარეზერვო ასლით ჩანაცვლდება. თუ აღდგენა ვერ მოხერხდა, არაფერი შეიცვლება.';

  @override
  String get settingsAbout => 'შესახებ';

  @override
  String settingsVersion(String version) {
    return 'ვერსია $version';
  }

  @override
  String get settingsLicenses => 'ღია კოდის ლიცენზიები';

  @override
  String get settingsAssistant => 'ასისტენტი';

  @override
  String get settingsAssistantEnable => 'ასისტენტის ჩართვა';

  @override
  String get settingsDashboard => 'მთავარი გვერდის სექციები';

  @override
  String get settingsTrash => 'ნაგავი';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes წთ';
  }

  @override
  String get trashEmpty => 'ნაგავი ცარიელია';

  @override
  String get trashHint => 'წაშლილი ელემენტები აქ რჩება, სანამ არ მოაშორებთ.';

  @override
  String get trashTasks => 'ამოცანები';

  @override
  String get trashNotes => 'ჩანაწერები';

  @override
  String get onboardWelcomeTitle => 'კეთილი იყოს თქვენი მობრძანება მომავლის სამუშაო სივრცეში';

  @override
  String get onboardWelcomeBody =>
      'ამოცანები, ფოკუსი, კალენდარი, ჩანაწერები, ბარათები, მიზნები და ჩვევები — ერთად, ლამაზად და მარტივად.';

  @override
  String get onboardPrivateTitle => 'კონფიდენციალური ბუნებით';

  @override
  String get onboardPrivateBody =>
      'ყველაფერი ამ მოწყობილობაზე რჩება, დაშიფრული. ანგარიშის გარეშე. თვალთვალის გარეშე. მართვა თქვენ ხელშია.';

  @override
  String get onboardLanguageTitle => 'აირჩიეთ ენა';

  @override
  String get onboardNotifTitle => 'რბილი შეხსენებები';

  @override
  String get onboardNotifBody =>
      'დაუშვით შეტყობინებები ამოცანების შეხსენებებისა და ფოკუსის გაფრთხილებებისთვის. ამის შეცვლა ნებისმიერ დროს შეგიძლიათ.';

  @override
  String get onboardGetStarted => 'დაწყება';

  @override
  String onboardStep(int current, int total) {
    return 'ნაბიჯი $current / $total';
  }

  @override
  String get notifChannelReminders => 'შეხსენებები';

  @override
  String get notifChannelRemindersDesc =>
      'ამოცანების, მოვლენების, ჩვევებისა და მიზნების შეხსენებები';

  @override
  String get notifChannelFocus => 'ფოკუსის ტაიმერი';

  @override
  String get notifChannelFocusDesc => 'გაფრთხილება ფოკუსის სესიის ან შესვენების დასრულებისას';

  @override
  String get notifTaskTitle => 'ამოცანის შეხსენება';

  @override
  String get notifEventTitle => 'მომავალი მოვლენა';

  @override
  String notifEventBody(String title, String time) {
    return '$title, $time';
  }

  @override
  String get notifFocusDoneTitle => 'ფოკუსის სესია დასრულდა';

  @override
  String get notifFocusDoneBody => 'შესანიშნავი სამუშაო. შესვენების დროა.';

  @override
  String get notifBreakDoneTitle => 'შესვენება დასრულდა';

  @override
  String get notifBreakDoneBody => 'მზად ხართ შემდეგი ფოკუსის სესიისთვის?';

  @override
  String get notifHabitTitle => 'ჩვევის შეხსენება';

  @override
  String get notifReviewTitle => 'ბარათები მზადაა';

  @override
  String get notifReviewBody => 'მოკლე გამეორება მეხსიერებას აძლიერებს.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours სთ $minutes წთ';
  }

  @override
  String durationHours(int hours) {
    return '$hours სთ';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes წთ';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'ორ,სა,ოთ,ხუ,პა,შა,კვ';

  @override
  String a11yProgress(int value) {
    return 'პროგრესი $value პროცენტი';
  }

  @override
  String a11yPriority(String level) {
    return 'პრიორიტეტი: $level';
  }

  @override
  String a11yColor(int index) {
    return 'ფერი $index';
  }

  @override
  String get analyticsRangeLabel => 'დროის დიაპაზონი';

  @override
  String get analyticsRefresh => 'განახლება';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'ვადიანი $total ამოცანიდან $done დროულად შესრულდა';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total ამოცანიდან $done შესრულდა';
  }

  @override
  String get analyticsNoProjects => 'აქტიური პროექტები არ არის';

  @override
  String get analyticsNoFocus => 'ამ დიაპაზონში ფოკუსის სესიები არ არის';

  @override
  String get analyticsHabitsNone => 'აქტიური ჩვევები არ არის';

  @override
  String get analyticsRetentionNote => 'დამახსოვრებული მომწიფებული ბარათების წილი';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'თავისუფალი დრო ითვლება სამუშაო დღეებში ($days) $start–$end, დროში განსაზღვრული მოვლენების გამოკლებით. სავარაუდო სამუშაო არის მომდევნო 7 დღეში ვადიანი ღია ამოცანების შეფასებების ჯამი.';
  }

  @override
  String get assistantWorkdaysMonFri => 'ორშაბათი–პარასკევი';

  @override
  String get assistantWorkdaysSunThu => 'კვირა–ხუთშაბათი';

  @override
  String get assistantWorkloadDayOff => 'დასვენების დღე';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated დაგეგმილი · $free თავისუფალი';
  }

  @override
  String assistantPlanRule(String end) {
    return 'დაგეგმილია ახლიდან $end-მდე, დღევანდელი მოვლენების გარშემო. ჯერ ვადაგადაცილებული ამოცანები, შემდეგ პრიორიტეტი, ვადა და შეფასება.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'დროის ბლოკებად დაგეგმვა';

  @override
  String get assistantScheduleConfirmTitle => 'დაემატოს დროის ბლოკები კალენდარს?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დღევანდელ კალენდარს დაემატება $count დროის ბლოკი.',
      one: 'დღევანდელ კალენდარს დაემატება 1 დროის ბლოკი.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დაემატა $count დროის ბლოკი',
      one: 'დაემატა 1 დროის ბლოკი',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'უკვე თქვენს კალენდარშია';

  @override
  String get assistantPlanTimeline => 'დღეს ეტევა';

  @override
  String get assistantNoEstimate => 'დასაგეგმად დაამატეთ შეფასება';

  @override
  String get assistantNoNotes => 'ჯერ ჩანაწერები არ არის. ჯერ დაწერეთ ჩანაწერი.';

  @override
  String get assistantNoteEmpty => 'ეს ჩანაწერი ცარიელია.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'შეიქმნა $count ამოცანა',
      one: 'შეიქმნა 1 ამოცანა',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'შეიქმნა $count ბარათი',
      one: 'შეიქმნა 1 ბარათი',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-ის შექმნა',
      one: '1-ის შექმნა',
      zero: 'არაფერია არჩეული',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'ამოიცნობა: მოუნიშნავი „- [ ]“ ველები და TODO:-ით ან To do:-ით დაწყებული ხაზები';

  @override
  String get assistantCardsHint =>
      'ამოიცნობა: „ტერმინი: განმარტება“, „ტერმინი — განმარტება“ და Q:/A: ხაზების წყვილები';

  @override
  String get assistantProviderHint =>
      'გამოიყენეთ OpenAI-თან თავსებადი ნებისმიერი სერვისი. გასაღები რჩება ამ მოწყობილობის დაცულ საცავში და არასოდეს შედის სარეზერვო ასლებში.';

  @override
  String get assistantEndpointHelp => 'მაგალითად https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'შენახული გასაღების დასატოვებლად დატოვეთ ცარიელი';

  @override
  String get assistantApiKeyRequired => 'შეიყვანეთ API გასაღები';

  @override
  String get assistantProviderSaved => 'მომწოდებელი შენახულია';

  @override
  String get assistantProviderRemoved => 'მომწოდებელი წაიშალა და გასაღები წაიშალა';

  @override
  String get assistantRemoveProviderConfirm =>
      'წაიშალოს მომწოდებელი და შენახული API გასაღები ამ მოწყობილობიდან?';

  @override
  String get assistantAskEveryTime => 'ყოველი მოთხოვნის წინ კითხვა';

  @override
  String get assistantSummarizing => 'მიმდინარეობს შეჯამება…';

  @override
  String assistantSummaryNote(String host) {
    return 'შექმნილია $host-ის მიერ. ენდობამდე გადაამოწმეთ.';
  }

  @override
  String get assistantCopy => 'კოპირება';

  @override
  String get assistantCopied => 'დაკოპირდა';

  @override
  String get assistantConfigure => 'მომწოდებლის დაყენება';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'ამ სერიის ყველა მოვლენა გადაიტანეს';

  @override
  String get calendarEventReminder => 'შეხსენება';

  @override
  String get calendarEventRepeat => 'გამეორება';

  @override
  String get calendarEventColor => 'ფერი';

  @override
  String get calendarDefaultColor => 'ტიპის ფერის გამოყენება';

  @override
  String get calendarEventLinkedTask => 'მიბმული ამოცანა';

  @override
  String get calendarEventNoTask => 'მიბმული ამოცანა არ არის';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count მოვლენა',
      one: '1 მოვლენა',
      zero: 'მოვლენები არ არის',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ვადიანი ამოცანა',
      one: '1 ვადიანი ამოცანა',
      zero: 'ვადიანი ამოცანები არ არის',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'ამ დღის დასაგეგმად დაამატეთ მოვლენა ან დროის ბლოკი.';

  @override
  String get calendarNow => 'მიმდინარე დრო';

  @override
  String get calendarRecurring => 'მეორდება';

  @override
  String get calendarEventNotFound => 'ეს მოვლენა აღარ არსებობს';

  @override
  String get calendarEventLocalTime => 'დრო ნაჩვენებია თქვენი მოწყობილობის სასაათო სარტყელში';

  @override
  String get calendarEventDeleted => 'მოვლენა გადავიდა ნაგავში';

  @override
  String get calendarConflictMarker => 'ფარავს სხვა მოვლენას';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'ცვლილებები ამ სერიის ყველა მოვლენაზე ვრცელდება';

  @override
  String get calendarDragHintSeries => 'განმეორებადი მოვლენის გადათრევა მთელ სერიას გადაიტანს';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, ამოცანის ვადა';
  }

  @override
  String get startupErrorTitle => 'თქვენი მონაცემების გახსნა ვერ მოხერხდა';

  @override
  String get startupErrorLocked =>
      'ამ მოწყობილობის მონაცემების დაშიფვრის გასაღები მიუწვდომელია. არაფერი წაშლილა. მოწყობილობის გადატვირთვა ხშირად გეხმარებათ. თუ ახლახან აღადგინეთ მოწყობილობა, აღადგინეთ მონაცემები დაშიფრული სარეზერვო ასლიდან.';

  @override
  String get startupErrorCipher =>
      'ეს მოწყობილობა არ უჭერს მხარს აპისთვის საჭირო დაშიფრულ საცავს. დაუშიფრავად არაფერი შენახულა.';

  @override
  String get startupErrorRetry => 'ხელახლა ცდა';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ბარათის გამეორების დროა',
      one: '1 ბარათის გამეორების დროა',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count ვადიანი';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count ახალი';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'მომწიფებული ბარათები: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'შეიყვანეთ 0 ან მეტი';

  @override
  String get flashcardsSearchCards => 'ბარათების ძიება';

  @override
  String get flashcardsSearchEmpty => 'ძიებას ბარათი არ შეესაბამება';

  @override
  String get flashcardsCardAdded => 'ბარათი დაემატა';

  @override
  String flashcardsCardDueOn(String date) {
    return 'ვადა $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'ბუფერში კოპირება';

  @override
  String get flashcardsExportTitle => 'დასტის ექსპორტი';

  @override
  String get flashcardsDeleteDeck => 'დასტის წაშლა';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, შემდეგი გამეორება $interval-ში';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'კითხვა: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'პასუხი: $text';
  }

  @override
  String get flashcardsShowQuestion => 'კითხვის ჩვენება';

  @override
  String get flashcardsImportField => 'იმპორტირებადი ბარათები';

  @override
  String get flashcardsNothingToStudy => 'შესასწავლი არაფერია';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ბარათი მზადაა შესასწავლად',
      one: '1 ბარათი მზადაა შესასწავლად',
      zero: 'მზა ბარათები არ არის',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'შეფასების მიხედვით';

  @override
  String get flashcardsDeckNotFound => 'ეს დასტა აღარ არის ხელმისაწვდომი.';

  @override
  String get focusSessionDeleted => 'სესია წაიშალა';

  @override
  String get focusDeleteConfirm =>
      'წაიშალოს ეს სესია ისტორიიდან? მისი დრო აღარ ჩაითვლება თქვენს სამიზნეებში.';

  @override
  String get focusUnlinkTask => 'მიბმული ამოცანის მოხსნა';

  @override
  String get focusNoteHint => 'რაზე იმუშავეთ?';

  @override
  String get focusTargetCaption => 'გაზომილია შენახული სესიებით';

  @override
  String get focusModeLabel => 'ტაიმერის რეჟიმი';

  @override
  String focusUpNext(String phase) {
    return 'შემდეგი: $phase';
  }

  @override
  String get focusStopwatchHint => 'ითვლის ზემოთ, სანამ არ გააჩერებთ.';

  @override
  String get focusOpenHint => 'დროის ლიმიტი არ არის. გააჩერეთ, როცა დაასრულებთ.';

  @override
  String get focusNotificationsDisabledInApp =>
      'შეხსენებები გამორთულია პარამეტრებში. სესიის დასრულებისას გაფრთხილებას არ მიიღებთ.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'ყველა';

  @override
  String get goalsFilterPeriod => 'პერიოდის ფილტრი';

  @override
  String get goalsFilterStatus => 'სტატუსის ფილტრი';

  @override
  String get goalsEmptyFiltered => 'ამ ფილტრს მიზანი არ შეესაბამება';

  @override
  String goalsDueOn(String date) {
    return 'ვადა $date';
  }

  @override
  String get goalsDeadline => 'ბოლო ვადა (არასავალდებულო)';

  @override
  String get goalsNoDeadline => 'ბოლო ვადა არ არის';

  @override
  String get goalsSetDeadline => 'ბოლო ვადის დაყენება';

  @override
  String get goalsRemoveDeadline => 'ბოლო ვადის მოხსნა';

  @override
  String get goalsDescription => 'აღწერა (არასავალდებულო)';

  @override
  String get goalsTitleLabel => 'სათაური';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'სამიზნე მიღწეულია';

  @override
  String get goalsLogged => 'პროგრესი ჩაიწერა';

  @override
  String get goalsEntryDeleted => 'ჩანაწერი მოიხსნა';

  @override
  String get goalsDeleteEntry => 'ჩანაწერის მოხსნა';

  @override
  String get goalsDeleted => 'მიზანი წაიშალა';

  @override
  String get goalsMarkActive => 'აქტიურად მონიშვნა';

  @override
  String get goalsNotFound => 'ეს მიზანი აღარ არის ხელმისაწვდომი';

  @override
  String get goalsLinkTask => 'ამოცანის მიბმა';

  @override
  String get goalsNoLinkedTasks => 'ჯერ მიბმული ამოცანები არ არის';

  @override
  String get goalsUnlinkTask => 'ამოცანის მოხსნა';

  @override
  String get goalsTaskOpen => 'ჯერ არ შესრულებულა';

  @override
  String get goalsTaskLinked => 'ამოცანა მიება';

  @override
  String get goalsTaskUnlinked => 'ამოცანა მოიხსნა';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count შესრულებულ მიბმულ ამოცანას',
      one: '1 შესრულებულ მიბმულ ამოცანას',
    );
    return 'ამ პერიოდში მოიცავს $_temp0';
  }

  @override
  String get goalsHistoryAllTime =>
      'წინა პერიოდების ჩანაწერები აქ ინახება, მაგრამ მხოლოდ საკუთარ პერიოდში ითვლება.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'დღეს $total-დან $done შესრულდა';
  }

  @override
  String get habitsNothingToday => 'დღეისთვის ჩვევები არ არის დაგეგმილი';

  @override
  String get habitsDecrease => 'ერთი მონიშვნის მოხსნა';

  @override
  String get habitsResetToday => 'დღევანდელის განულება';

  @override
  String get habitsCheckInHint => 'დასარეგულირებლად ხანგრძლივად დააჭირეთ';

  @override
  String get habitsName => 'სახელი';

  @override
  String get habitsColor => 'ფერი';

  @override
  String get habitsValidationDays => 'აირჩიეთ ერთი დღე მაინც';

  @override
  String habitsReminderAt(String time) {
    return 'ყოველდღე $time-ზე';
  }

  @override
  String get habitsSetReminder => 'შეხსენების დროის დაყენება';

  @override
  String get habitsRemoveReminder => 'შეხსენების მოხსნა';

  @override
  String get habitsReminderNote =>
      'შეხსენებები დაგეგმილ დღეებში გამოჩნდება, თუ შეტყობინებები დაშვებულია.';

  @override
  String get habitsArchived => 'ჩვევა დაარქივდა';

  @override
  String get habitsNotFound => 'ეს ჩვევა აღარ არის ხელმისაწვდომი';

  @override
  String get habitsLast30 => 'ბოლო 30 დღე';

  @override
  String get habitsConsistencyNone => 'ჯერ საკმარისი მონაცემი არ არის';

  @override
  String get habitsCalendar => 'მონიშვნების ისტორია';

  @override
  String get habitsCalendarHint => 'გასასწორებლად შეეხეთ დღეს.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count / $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'მონიშვნები ბოლო 90 დღეში. თანმიმდევრულობა $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'მონიშვნები ბოლო 90 დღეში. ჯერ საკმარისი მონაცემი არ არის.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count დღე',
      one: '1 დღე',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'შეჩერებული დღეები თქვენს სერიაზე გავლენას არ ახდენს.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'ჩვევის დაარქივება';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დღეში $count-ჯერ',
      one: 'დღეში ერთხელ',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'სხვა ჩანაწერები';

  @override
  String get notesAllNotebooks => 'ყველა რვეული';

  @override
  String get notesNotebookName => 'რვეულის სახელი';

  @override
  String get notesNotebookColor => 'ფერი';

  @override
  String get notesDeleteNotebook => 'რვეულის წაშლა';

  @override
  String get notesDeleteNotebookMessage =>
      'რვეული წაიშლება. მისი ჩანაწერები შენარჩუნდება და გამოჩნდება „ყველა რვეულში“.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'მნიშვნელოვანი ჩანაწერები ზემოთ რომ დარჩეს, მიამაგრეთ.';

  @override
  String get notesEmptyFavorites => 'რჩეულად მონიშნული ჩანაწერები აქ გამოჩნდება.';

  @override
  String get notesEmptyArchived => 'დაარქივებული ჩანაწერები აქ გამოჩნდება.';

  @override
  String get notesEmptyFiltered => 'ამ ფილტრებს ჩანაწერი არ შეესაბამება.';

  @override
  String get notesArchivedSnack => 'ჩანაწერი დაარქივდა';

  @override
  String get notesUnarchivedSnack => 'ჩანაწერი დაბრუნდა თქვენს ჩანაწერებში';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total-დან $done შესრულდა';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'ფორმატირება';

  @override
  String get notesWrite => 'წერა';

  @override
  String get notesPreviewEmpty => 'გადასახედი ჯერ არაფერია.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'ჯერ სხვა ჩანაწერები აქ არ მიუთითებს. მიუთითეთ ამ ჩანაწერზე [[$title]]-ით.';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'მიეცით ამ ჩანაწერს სათაური, რომ სხვა ჩანაწერებმა მასზე მიუთითონ.';

  @override
  String get notesLinkedTasksEmpty => 'ამ ჩანაწერზე მიბმული ამოცანები არ არის.';

  @override
  String notesLinkMissing(String title) {
    return 'ჩანაწერი სათაურით „$title“ ჯერ არ არსებობს.';
  }

  @override
  String get notesNotFound => 'ეს ჩანაწერი აღარ არსებობს.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'სიის პუნქტი: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'ჩანაწერის გახსნა: $title';
  }

  @override
  String get notesTaskDone => 'შესრულებული';

  @override
  String get notifTimerDoneBody => 'თქვენ მიერ დაყენებული დრო გავიდა.';

  @override
  String get onboardingPrivatePointDevice => 'ინახება მხოლოდ ამ მოწყობილობაზე, დაშიფრულად';

  @override
  String get onboardingPrivatePointAccount => 'ანგარიში საჭირო არ არის';

  @override
  String get onboardingPrivatePointTracking => 'ანალიტიკის გარეშე, თვალთვალის გარეშე';

  @override
  String get onboardingLanguageBody => 'ამის შეცვლა ნებისმიერ დროს შეგიძლიათ პარამეტრებში.';

  @override
  String get onboardingNext => 'შემდეგი';

  @override
  String get projectsActive => 'აქტიური';

  @override
  String get projectNameHint => 'მაგ. პროდუქტის გაშვება';

  @override
  String get projectGoalHint => 'როგორ გამოიყურება დასრულებული შედეგი?';

  @override
  String get projectNoDeadline => 'ბოლო ვადა არ არის';

  @override
  String get projectTasksOpen => 'ღია ამოცანები';

  @override
  String get projectTasksCompleted => 'შესრულებული ამოცანები';

  @override
  String get projectAddTask => 'ამოცანის დამატება პროექტში';

  @override
  String get projectAddNote => 'პროექტის ახალი ჩანაწერი';

  @override
  String get projectLinkedNotes => 'ჩანაწერები';

  @override
  String get projectNoTasks => 'ამ პროექტში ჯერ ამოცანები არ არის';

  @override
  String get projectArchivedBadge => 'დაარქივებული';

  @override
  String get projectDeleted => 'პროექტი გადავიდა ნაგავში';

  @override
  String get projectDeleteMessage => 'ამოცანები თქვენს სიაში რჩება პროექტის გარეშე.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent პროცენტი შესრულებულია';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count შედეგი',
      one: '1 შედეგი',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'ტიპის მიხედვით გაფილტვრა';

  @override
  String searchRecentTap(String query) {
    return 'ხელახლა ძიება: $query';
  }

  @override
  String get settingsLanguageHint =>
      'აირჩიეთ ენა მთელი აპისთვის. სახელები ნაჩვენებია საკუთარ ენაზე.';

  @override
  String get settingsThemeHint => 'ღია, მუქი ან სისტემის მიხედვით';

  @override
  String settingsDecrease(String setting) {
    return 'შემცირება: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'გაზრდა: $setting';
  }

  @override
  String get settingsQuietStart => 'იწყება';

  @override
  String get settingsQuietEnd => 'მთავრდება';

  @override
  String get settingsNotificationsHint =>
      'ეს ინახავს თქვენს არჩევანს აპში. სისტემამ შეიძლება ნებართვაც მოითხოვოს.';

  @override
  String get settingsDashboardHint =>
      'რიგის შესაცვლელად გადაათრიეთ. გამორთეთ სექციები, რომლებიც არ გჭირდებათ.';

  @override
  String settingsDashboardReorder(String section) {
    return 'რიგის შეცვლა: $section';
  }

  @override
  String get settingsDashboardReset => 'ნაგულისხმევი რიგის აღდგენა';

  @override
  String get settingsAssistantDesc =>
      'არასავალდებულო დაგეგმვის დახმარება. მომწოდებლის დაკავშირების გარეშე არაფერი ტოვებს მოწყობილობას.';

  @override
  String get settingsAssistantSetup => 'ასისტენტისა და მომწოდებლის დაყენება';

  @override
  String get settingsTrashDesc => 'წაშლილი ელემენტების აღდგენა ან სამუდამოდ წაშლა';

  @override
  String get settingsEraseFirstBody =>
      'ამის გაუქმება შეუძლებელია. ჯერ დაშიფრული სარეზერვო ასლის შექმნა განიხილეთ.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'აკრიფეთ $word';
  }

  @override
  String get settingsEraseFailed => 'მონაცემების წაშლა ვერ მოხერხდა. არაფერი შეცვლილა.';

  @override
  String get settingsAboutTagline =>
      'პირადი, ლოკალურზე ორიენტირებული პროდუქტიულობის სამუშაო სივრცე.';

  @override
  String get backupShowPassword => 'პაროლის ჩვენება';

  @override
  String get backupHidePassword => 'პაროლის დამალვა';

  @override
  String get backupSaved => 'სარეზერვო ასლი შენახულია';

  @override
  String get backupFailed => 'სარეზერვო ასლის შექმნა ვერ მოხერხდა. თქვენი მონაცემები უცვლელია.';

  @override
  String get backupReadFailed => 'არჩეული ფაილის წაკითხვა ვერ მოხერხდა.';

  @override
  String get backupRestoreFailed => 'აღდგენა ვერ მოხერხდა. არაფერი შეცვლილა.';

  @override
  String get backupShareSubject => 'Deep Focus-ის დაშიფრული სარეზერვო ასლი';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ყოველ $count დღეში',
      one: 'ყოველდღე',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ყოველ $count კვირაში',
      one: 'ყოველკვირა',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ყოველ $count თვეში',
      one: 'ყოველთვე',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ყოველ $count წელიწადში',
      one: 'ყოველწლიურად',
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
    return 'დღეებში: $days';
  }

  @override
  String get repeatEndsLabel => 'მთავრდება';

  @override
  String get repeatEndsAfter => 'გარკვეული რაოდენობის შემდეგ';

  @override
  String get repeatCountLabel => 'გამეორებები';

  @override
  String get reminderNone => 'შეხსენების გარეშე';

  @override
  String get reminderCustomTime => 'კონკრეტულ დროს';

  @override
  String get a11yDecrease => 'შემცირება';

  @override
  String get a11yIncrease => 'გაზრდა';

  @override
  String get pickTaskTitle => 'აირჩიეთ ამოცანა';

  @override
  String get pickTaskEmpty => 'ღია ამოცანები არ არის';

  @override
  String get tasksSearchTooltip => 'ამოცანების ძიება';

  @override
  String get tasksSectionOverdue => 'ვადაგადაცილებული';

  @override
  String get tasksSectionToday => 'დღეს';

  @override
  String get tasksRecurringSemantics => 'მეორდება';

  @override
  String get tasksFilterPriorityAtLeast => 'მინიმალური პრიორიტეტი';

  @override
  String get tasksFilterCategory => 'კატეგორია';

  @override
  String get tasksFilterAnyCategory => 'ნებისმიერი კატეგორია';

  @override
  String get tasksFilterLabel => 'იარლიყი';

  @override
  String get tasksFilterAnyLabel => 'ნებისმიერი იარლიყი';

  @override
  String get tasksFilterReset => 'ფილტრების გადაყენება';

  @override
  String get tasksViewByProject => 'პროექტის მიხედვით';

  @override
  String get tasksViewByPriority => 'პრიორიტეტის მიხედვით';

  @override
  String get tasksViewByCategory => 'კატეგორიის მიხედვით';

  @override
  String get tasksGroupNoCategory => 'კატეგორიის გარეშე';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ამოცანა',
      one: '1 ამოცანა',
    );
    return 'დაბლოკილია: $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'ეს ამოცანა დაბლოკილია დაუსრულებელი ამოცანებით. მაინც მოინიშნოს შესრულებულად?';

  @override
  String get taskStartFocus => 'ამ ამოცანაზე ფოკუსირება';

  @override
  String get taskRemoveDate => 'თარიღის მოხსნა';

  @override
  String get taskAllDay => 'კონკრეტული დროის გარეშე';

  @override
  String get taskSaved => 'ამოცანა შენახულია';

  @override
  String get taskCreated => 'ამოცანა შეიქმნა';

  @override
  String get taskReminderNeedsDue => 'ფარდობითი შეხსენებებისთვის დააყენეთ ვადა';

  @override
  String get taskSubtaskDetailsHint =>
      'ქვეამოცანების, სიის, იარლიყებისა და დამოკიდებულებების დასამატებლად ჯერ შეინახეთ ამოცანა.';

  @override
  String get taskLabelName => 'იარლიყის სახელი';

  @override
  String get taskMoreDetails => 'დეტალები';

  @override
  String get taskPlanning => 'დაგეგმვა';

  @override
  String get taskOrganize => 'ორგანიზება';

  @override
  String get taskBreakdown => 'დაშლა';

  @override
  String get trashDeleteTaskTitle => 'წაიშალოს ეს ამოცანა სამუდამოდ?';

  @override
  String get trashDeleteNoteTitle => 'წაიშალოს ეს ჩანაწერი სამუდამოდ?';

  @override
  String get trashDeleteBody => 'ამის გაუქმება შეუძლებელია.';

  @override
  String get trashEmptyTitle => 'დაიცალოს ნაგავი?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ელემენტი სამუდამოდ წაიშლება.',
      one: '1 ელემენტი სამუდამოდ წაიშლება.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'აღდგა';

  @override
  String get trashPurged => 'სამუდამოდ წაიშალა';

  @override
  String trashDeletedOn(String date) {
    return 'წაშლილია $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ელემენტი',
      one: '1 ელემენტი',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'ხმამაღლა წაკითხვა';

  @override
  String get flashcardsTtsUnavailable =>
      'ტექსტის მეტყველებად გარდაქმნა ამ მოწყობილობაზე მიუწვდომელია.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'ამ ენისთვის ხმა არ არის დაყენებული. დაამატეთ Android-ის ტექსტის მეტყველებად გარდაქმნის პარამეტრებში.';

  @override
  String get calendarAgenda => 'დღის წესრიგი';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'ნაპერწკალი',
      'rocket': 'რაკეტა',
      'book': 'წიგნი',
      'work': 'სამსახური',
      'home': 'სახლი',
      'heart': 'გული',
      'code': 'კოდი',
      'palette': 'პალიტრა',
      'fitness': 'ფიტნესი',
      'school': 'სკოლა',
      'travel': 'მოგზაურობა',
      'money': 'დანაზოგი',
      'other': 'ხატულა',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'მეტი ველი';

  @override
  String get cardFieldExample => 'მაგალითი';

  @override
  String get cardFieldExplanation => 'განმარტება';

  @override
  String get cardFieldPronunciation => 'წარმოთქმა';

  @override
  String get cardFieldNotes => 'დამატებითი შენიშვნები';

  @override
  String get projectMilestones => 'ეტაპები';

  @override
  String get milestoneAdd => 'ეტაპის დამატება';

  @override
  String get milestoneEdit => 'ეტაპის რედაქტირება';

  @override
  String get milestoneTitleLabel => 'ეტაპი';

  @override
  String get milestoneNoDate => 'თარიღის გარეშე';

  @override
  String get milestonesEmpty =>
      'ჯერ ეტაპები არ არის. დაამატეთ თარიღიანი საკონტროლო წერტილები, რომ პროექტს კალენდარში თვალი ადევნოთ.';

  @override
  String get milestoneDeleted => 'ეტაპი წაიშალა';

  @override
  String milestoneDoneA11y(String title) {
    return 'ეტაპის „$title“ მონიშვნა შესრულებულად';
  }

  @override
  String calendarMilestone(String project) {
    return 'ეტაპი · $project';
  }

  @override
  String get tasksViewInbox => 'შემოსულები';

  @override
  String get tasksViewArchived => 'დაარქივებული';

  @override
  String get tasksEmptyInbox =>
      'ამოცანები პროექტისა და თარიღის გარეშე აქ ხვდება. დაალაგეთ, როცა წუთი გექნებათ.';

  @override
  String get tasksEmptyArchived =>
      'დაარქივებული ამოცანები აქ ინახება, სიებისა და შეხსენებების გარეთ.';

  @override
  String get taskArchivedBadge => 'დაარქივებული';

  @override
  String get taskStatusInProgress => 'მიმდინარე';

  @override
  String get taskArchived => 'ამოცანა დაარქივდა';

  @override
  String get taskUnarchived => 'ამოცანა აღდგა არქივიდან';

  @override
  String get focusPlanTitle => 'სესიის გეგმა';

  @override
  String focusPlanTotal(String duration) {
    return 'სულ $duration';
  }

  @override
  String get focusPlanRounds => 'ფოკუსის სესიები';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'ხანგრძლივი შესვენება ამდენის შემდეგ';

  @override
  String get focusPlanSkipLastBreak => 'ბოლო შესვენების გამოტოვება';

  @override
  String get focusPlanAutoBreaks => 'შესვენებების ავტომატური დაწყება';

  @override
  String get focusPlanAutoFocus => 'ფოკუსის ავტომატური დაწყება შესვენების შემდეგ';

  @override
  String get focusPlanSave => 'გეგმის შენახვა';

  @override
  String get focusPlanNameHint => 'მაგ. გამოცდისთვის მზადება';

  @override
  String get focusPlanSaved => 'გეგმა შენახულია';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work წთ ფოკუსი, $rest წთ შესვენება';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'შემცირება: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'გაზრდა: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'სესია $current / $total';
  }

  @override
  String get focusSeriesComplete => 'სერია დასრულდა. ყოჩაღ!';

  @override
  String get filterAll => 'ყველა';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added იმპორტირდა · $duplicates დუბლიკატი გამოტოვდა · $invalid არასრული ხაზი';
  }

  @override
  String get flashcardsSuspend => 'ბარათის შეჩერება';

  @override
  String get flashcardsResume => 'ბარათის გაგრძელება';

  @override
  String get flashcardsSuspended => 'ბარათი შეჩერდა: ის არ დაიგეგმება';

  @override
  String get flashcardsResumed => 'ბარათი გაგრძელდა';

  @override
  String get flashcardsSuspendedFilter => 'შეჩერებული';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown / $total ბარათი';
  }

  @override
  String get flashcardsImportFile => 'ფაილიდან';

  @override
  String get speechTitle => 'მეტყველება';

  @override
  String get speechAppLanguage => 'აპის ენა';

  @override
  String get speechFrontLanguage => 'წინა მხარის ენა';

  @override
  String get speechBackLanguage => 'უკანა მხარის ენა';

  @override
  String get speechRepeat => 'თითოეული წაკითხვის გამეორება';

  @override
  String get speechRate => 'სიჩქარე';

  @override
  String get speechAutoRead => 'კითხვის ავტომატური წაკითხვა';

  @override
  String get speechHint =>
      'იყენებს ამ მოწყობილობაზე დაყენებულ ხმებს, ოფლაინ. თუ ენას ხმა არ აქვს, გეცნობებათ და მის ნაცვლად სხვა არაფერი გამოიყენება.';

  @override
  String get studyHowTitle => 'როგორ გსურთ სწავლა?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ბარათის გამეორება',
      one: '1 ბარათის გამეორება',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'ყველა ბარათის ვარჯიში (განრიგი არ იცვლება)';

  @override
  String get studyPracticeMistakes => 'ბოლო შეცდომების ვარჯიში';

  @override
  String get studyPracticeHint =>
      'სავარჯიშო რაუნდები არასოდეს ცვლის ბარათების ვადებს. გამეორება განრიგს აახლებს.';

  @override
  String get studyModeClassic => 'კლასიკური';

  @override
  String get studyModeReverse => 'შებრუნებული';

  @override
  String get studyModeMixed => 'ორივე მიმართულებით';

  @override
  String get studyModeTyped => 'პასუხის აკრეფა';

  @override
  String get studyModeChoice => 'რამდენიმე არჩევანი';

  @override
  String get studyModeListening => 'მოსმენა';

  @override
  String get studyPractice => 'ვარჯიში';

  @override
  String get studyNoMistakes => 'ამ დასტაში ბოლო შეცდომები არ არის. შესანიშნავია!';

  @override
  String get studyTypeAnswer => 'აკრიფეთ პასუხი';

  @override
  String get studyCheck => 'შემოწმება';

  @override
  String get studyKnewIt => 'ვიცოდი';

  @override
  String get studyDidntKnow => 'არ ვიცოდი';

  @override
  String studyMistakes(int count) {
    return 'გამოტოვებული ($count)';
  }

  @override
  String get studyRepeatMistakes => 'გამოტოვებული ბარათების გამეორება';

  @override
  String get studyCorrect => 'სწორია';

  @override
  String get studyAlmost => 'თითქმის — შეამოწმეთ მართლწერა';

  @override
  String get studyWrong => 'არც თუ ისე';

  @override
  String get studyShowText => 'ტექსტის ჩვენება';

  @override
  String get flashcardsImportFileFailed =>
      'ფაილის გახსნა ვერ მოხერხდა. სანაცვლოდ შეგიძლიათ მისი შიგთავსი ჩასვათ.';

  @override
  String get studyNoMatchingCards => 'ამ არჩევანს ბარათი ჯერ არ შეესაბამება.';

  @override
  String get studyPracticeNew => 'მხოლოდ ახალი';

  @override
  String get studyPracticeHard => 'რთული ბარათები';

  @override
  String get studyPracticeFavorites => 'რჩეულები';

  @override
  String get studySessionSize => 'ბარათები ერთ სესიაში';

  @override
  String get studySessionAll => 'ყველა';

  @override
  String get studyOrder => 'რიგი';

  @override
  String get studyOrderDue => 'ჯერ ყველაზე მეტად ვადაგადაცილებული';

  @override
  String get studyOrderRandom => 'შემთხვევითი';

  @override
  String get studyOrderHardest => 'ჯერ ყველაზე რთული';

  @override
  String get flashcardsHard => 'რთული';

  @override
  String get flashcardsFavorites => 'რჩეულები';

  @override
  String get flashcardsFavorite => 'რჩეულებში დამატება';

  @override
  String get flashcardsUnfavorite => 'რჩეულებიდან ამოღება';

  @override
  String get flashcardsDuplicate => 'დუბლირება';

  @override
  String get flashcardsMoveTo => 'დასტაში გადატანა';

  @override
  String get flashcardsNoOtherDeck => 'ჯერ შექმენით სხვა დასტა.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'გადაიტანეს $count ბარათი',
      one: 'ბარათი გადაიტანეს',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'ტეგის დამატება';

  @override
  String get flashcardsTagHint => 'მაგ. ზმნები';

  @override
  String flashcardsSelected(int count) {
    return 'არჩეულია $count';
  }

  @override
  String get flashcardsSelectAll => 'ყველა ნაჩვენების არჩევა';

  @override
  String flashcardsSelectCard(String front) {
    return 'არჩევა: $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'დამახსოვრება $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'შესაძლო დუბლიკატი';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'ამ დასტაში უკვე არის „$front“ → „$back“. მაინც შეინახოს?';
  }

  @override
  String get flashcardsSaveAnyway => 'მაინც შენახვა';

  @override
  String get flashcardsStats => 'სტატისტიკა';

  @override
  String get flashcardsStatTotal => 'ბარათები';

  @override
  String get flashcardsStatLearning => 'სწავლის პროცესში';

  @override
  String get flashcardsStatMatureCaption => 'დამახსოვრებულია 21+ დღე';

  @override
  String get flashcardsStatReviewsToday => 'დღევანდელი გამეორებები';

  @override
  String get flashcardsStatCorrect => 'სწორი პასუხები';

  @override
  String flashcardsStatLastDays(int days) {
    return 'ბოლო $days დღე';
  }

  @override
  String get flashcardsStatForget => 'დავიწყების მაჩვენებელი';

  @override
  String get flashcardsStatForgetCaption => '„ხელახლა“ ნასწავლ ბარათებზე';

  @override
  String get flashcardsStatRecall => 'ამჟამინდელი დამახსოვრება';

  @override
  String get flashcardsStatRecallCaption => 'FSRS შეფასება, გამეორებული ბარათები';

  @override
  String flashcardsStatActivity(int count) {
    return 'გამეორებები დღეში · სულ $count';
  }

  @override
  String get flashcardsStatHistory => 'ბოლო პასუხები';

  @override
  String get flashcardsStatNoHistory =>
      'ჯერ გამეორებები არ არის. ისწავლეთ დასტა, რომ პროგრესი აქ ნახოთ.';

  @override
  String flashcardsSpeakField(String field) {
    return 'ხმამაღლა წაკითხვა: $field';
  }

  @override
  String get speechVoice => 'ხმა';

  @override
  String get speechVoiceDefault => 'ავტომატური';

  @override
  String get speechVoiceOnline => 'საჭიროა ინტერნეტი';

  @override
  String get speechTest => 'ხმის გამოცდა';

  @override
  String get importNext => 'გადახედვა';

  @override
  String get importPreviewTitle => 'სვეტების ველებთან შესაბამისობა';

  @override
  String get importIgnoreColumn => 'იგნორირება';

  @override
  String importColumn(int n) {
    return 'სვეტი $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready ბარათი მზადაა · $invalid არასრული ხაზი გამოტოვდება';
  }

  @override
  String get importNeedFrontBack => 'აირჩიეთ, რომელი სვეტებია წინა და უკანა მხარე.';

  @override
  String get actionMoveUp => 'ზემოთ გადატანა';

  @override
  String get actionMoveDown => 'ქვემოთ გადატანა';

  @override
  String get flashcardsLayoutTitle => 'ბარათის განლაგება';

  @override
  String get flashcardsLayoutHint =>
      'გადაარქვით სახელი, დამალეთ ან შეცვალეთ ამ დასტის დამატებითი ველების რიგი. ბარათის შიგთავსი არასოდეს იცვლება.';

  @override
  String flashcardsLayoutShow(String field) {
    return '$field-ის ჩვენება სწავლისას';
  }

  @override
  String get flashcardsLayoutStepReveal => 'პასუხის ეტაპობრივად გახსნა';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'ჯერ უკანა მხარე ჩანს; თითოეული დამატებითი ველი შეხებით იხსნება.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field-ის ჩვენება';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'ეს ფაილი $mb მბ-ზე დიდია.';
  }

  @override
  String get flashcardsImage => 'სურათი';

  @override
  String get flashcardsAudio => 'აუდიო';

  @override
  String get flashcardsAddImage => 'სურათის დამატება';

  @override
  String get flashcardsAddAudio => 'აუდიოს დამატება';

  @override
  String get flashcardsPlayAudio => 'ჩანაწერის დაკვრა';

  @override
  String get flashcardsAudioUnavailable => 'ამ ჩანაწერის დაკვრა ამ მოწყობილობაზე შეუძლებელია.';

  @override
  String get flashcardsCustomFields => 'თქვენი ველები';

  @override
  String get flashcardsTemplates => 'შაბლონები';

  @override
  String flashcardsNewFieldName(int n) {
    return 'ველი $n';
  }

  @override
  String get flashcardsAddField => 'ველის დამატება';

  @override
  String get flashcardsFieldName => 'ველის სახელი';

  @override
  String get flashcardsFieldLangDefault => 'მხარის ენა';

  @override
  String get flashcardsTemplateConfirm =>
      'შაბლონი განსაზღვრავს, როგორ გამოჩნდება ველები, და ამატებს თავის ველებს. თქვენი ბარათები და არსებული ველები უცვლელი რჩება.';

  @override
  String get flashcardsApplyTemplate => 'გამოყენება';

  @override
  String get templateVocabulary => 'ლექსიკა';

  @override
  String get templateTwoTranslations => 'სიტყვა ორი თარგმანით';

  @override
  String get templateQuestionAnswer => 'კითხვა და პასუხი';

  @override
  String get templateDefinition => 'ტერმინი და განმარტება';

  @override
  String get templateGrammar => 'გრამატიკული წესი';

  @override
  String get templateFieldPlural => 'მრავლობითი';

  @override
  String get templateFieldTranslation2 => 'მეორე თარგმანი';

  @override
  String get templateFieldSynonyms => 'სინონიმები';

  @override
  String get templateFieldRule => 'წესი';

  @override
  String get deckCategory => 'დონე ან თემა';

  @override
  String get deckCategoryHint => 'მაგ. A1, მედიცინა';

  @override
  String get flashcardsSearchAll => 'ძიება ყველა ბარათში';

  @override
  String get flashcardsSearchAllHint => 'სიტყვა, თარგმანი, მაგალითი, ჩანაწერი, ტეგი…';

  @override
  String get flashcardsAllDecks => 'ყველა დასტა';

  @override
  String get flashcardsAllLanguages => 'ყველა ენა';

  @override
  String get flashcardsLangUnset => 'ენა არ არის მითითებული';

  @override
  String get flashcardsLevelUnset => 'დონის ან თემის გარეშე';

  @override
  String get flashcardsByLanguage => 'პროგრესი ენების მიხედვით';

  @override
  String get flashcardsByLevel => 'პროგრესი დონის ან თემის მიხედვით';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks დასტა · $cards ბარათი · $mature მომწიფებული · $due ვადიანი · $correct სწორი (30 დღე)';
  }

  @override
  String get flashcardsRecord => 'ჩაწერა';

  @override
  String get flashcardsRecording => 'მიმდინარეობს ჩაწერა…';

  @override
  String get flashcardsRecordStop => 'შეჩერება და შენახვა';

  @override
  String get flashcardsMicDenied =>
      'მიკროფონზე წვდომა გამორთულია. ჩასაწერად დაუშვით სისტემის პარამეტრებში.';

  @override
  String get flashcardsRecordFailed => 'ჩაწერა ამ მოწყობილობაზე მიუწვდომელია.';

  @override
  String get soundsTitle => 'ხმები';

  @override
  String get soundsNature => 'ბუნება';

  @override
  String get soundsNoise => 'ფოკუსის ხმაური';

  @override
  String get soundRain => 'წვიმა';

  @override
  String get soundStorm => 'ჭექა-ქუხილი';

  @override
  String get soundRiver => 'მდინარე';

  @override
  String get soundOcean => 'ზღვის ტალღები';

  @override
  String get soundFire => 'კოცონი';

  @override
  String get soundForest => 'ტყის ფრინველები';

  @override
  String get soundNight => 'ზაფხულის ღამე';

  @override
  String get soundWhite => 'თეთრი ხმაური';

  @override
  String get soundPink => 'ვარდისფერი ხმაური';

  @override
  String get soundBrown => 'ყავისფერი ხმაური';

  @override
  String get soundsPlay => 'დაკვრა';

  @override
  String get soundsSleep => 'ძილის ტაიმერი';

  @override
  String get soundsSleepOff => 'გამორთული';

  @override
  String soundsSleepAt(String time) {
    return 'ჩერდება $time-ზე';
  }

  @override
  String soundsMixFull(int count) {
    return 'ერთდროულად შეიძლება $count-მდე ხმა ჟღერდეს.';
  }

  @override
  String get soundsHint =>
      'დასაწყებად შეეხეთ ხმას. შეურიეთ რამდენიმე და დააყენეთ თითოეულის ხმის სიმაღლე.';

  @override
  String get soundsMixer => 'მიქსი';

  @override
  String soundsVolumeOf(String name) {
    return '$name: ხმის სიმაღლე';
  }

  @override
  String get soundsChannel => 'ბუნების ხმები';

  @override
  String get settingsEndTone => 'ტაიმერის დასრულების ხმა';

  @override
  String get toneGentle => 'რბილი სიგნალები';

  @override
  String get toneBeeps => 'სიგნალები';

  @override
  String get toneWood => 'ხის კაკუნი';

  @override
  String get toneBird => 'ფრინველის ძახილი';

  @override
  String get toneStream => 'ნაკადული';

  @override
  String get toneSystem => 'ტელეფონის ხმა';

  @override
  String get speechOnPhone => 'ამ ტელეფონზე';

  @override
  String get speechAllLanguages => 'ყველა ენა';

  @override
  String get speechSearchLanguage => 'ენების ძიება';

  @override
  String get speechGetVoices => 'მეტი ხმის ჩამოტვირთვა';

  @override
  String get speechGetVoicesHint =>
      'ხმის არმქონე ენების ჩამოტვირთვა შესაძლებელია ტელეფონის მეტყველების პარამეტრებში.';

  @override
  String get speechSettingsFailed => 'ამ ტელეფონზე მეტყველების პარამეტრების გახსნა ვერ მოხერხდა.';

  @override
  String get speechVoiceMissing => 'ხმა არ არის დაყენებული';

  @override
  String get speechPause => 'პაუზა გამეორებებს შორის';

  @override
  String speechSeconds(String seconds) {
    return '$seconds წმ';
  }

  @override
  String get speechExample => 'მაგალითის წაკითხვა პასუხთან ერთად';

  @override
  String get flashListen => 'მოსმენა';

  @override
  String get flashListenNext => 'შემდეგი ბარათი';

  @override
  String get flashListenEmpty => 'მოსასმენი ბარათები არ არის.';

  @override
  String get flashViewTable => 'ცხრილი';

  @override
  String get flashViewCards => 'ბარათები';

  @override
  String get flashSwapSides => 'სვეტების გაცვლა';

  @override
  String get flashSort => 'დალაგება';

  @override
  String get flashSortNewest => 'ჯერ უახლესი';

  @override
  String get flashSortAlpha => 'ა-დან ჰ-მდე';

  @override
  String get flashSortDue => 'ჯერ ვადიანი';

  @override
  String get flashSortHard => 'ჯერ ყველაზე რთული';

  @override
  String get flashPasteCards => 'ბარათების ჩასმა';

  @override
  String get flashClipboardEmpty => 'ბუფერში ტექსტი არ არის.';

  @override
  String get flashMenuAdd => 'ბარათების დამატება';

  @override
  String get flashMenuDeck => 'დასტა';

  @override
  String get flashToday => 'დღეს';

  @override
  String get flashStudyNow => 'სწავლა';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'პასუხი გაეცა $count ბარათს',
      one: 'პასუხი გაეცა 1 ბარათს',
      zero: 'პასუხგაცემული ბარათები არ არის',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'წვიმა ტყეში';

  @override
  String get autoBackupTitle => 'ავტომატური სარეზერვო ასლები';

  @override
  String get autoBackupDesc => 'ყოველდღე ამ ტელეფონზე; ინახება ბოლო 7';

  @override
  String get autoBackupHint =>
      'ეს ასლები ამ ტელეფონზე რჩება და წაიშლება, თუ აპს წაშლით. ახალ ტელეფონზე გადასასვლელად ფაილის შესანახად გამოიყენეთ „სარეზერვო ასლი“.';

  @override
  String get autoBackupNone => 'ავტომატური სარეზერვო ასლი ჯერ არ არის. პირველი დღეს შეიქმნება.';

  @override
  String get autoBackupRestore => 'აღდგენა';

  @override
  String autoBackupConfirm(String date) {
    return 'ჩანაცვლდეს ყველა მიმდინარე მონაცემი $date-ის სარეზერვო ასლით?';
  }

  @override
  String get autoBackupRestored => 'აღდგა.';

  @override
  String get errorLogTitle => 'შეცდომების ჟურნალი';

  @override
  String get errorLogHint =>
      'თუ რამე არასწორად წავა, აქ აღინიშნება: მხოლოდ შეცდომის ტიპი და ადგილი კოდში, არასოდეს თქვენი შიგთავსი. გააზიარეთ, რომ პრობლემის გამოსწორებაში დაგვეხმაროთ.';

  @override
  String get errorLogEmpty => 'შეცდომები არ დაფიქსირებულა.';

  @override
  String get errorLogClear => 'გასუფთავება';

  @override
  String get soundsWithFocus => 'ფოკუსის სესიებთან ერთად დაკვრა';

  @override
  String get soundsWithFocusHint => 'თქვენი მიქსი იწყება ფოკუსის სესიით და ჩერდება შესვენებებზე.';

  @override
  String get soundsSavedMixes => 'შენახული მიქსები';

  @override
  String get soundsSaveMix => 'ამ მიქსის შენახვა';

  @override
  String get soundsMixNameHint => 'სახელი, მაგ. წვიმიანი ბიბლიოთეკა';

  @override
  String soundsDeleteMix(String name) {
    return 'წაიშალოს მიქსი „$name“?';
  }

  @override
  String get settingsReviewReminderHint => 'დღეში ერთხელ, მხოლოდ როცა ბარათების ვადაა';

  @override
  String get settingsReviewTime => 'შეხსენების დრო';

  @override
  String get shortcutFocus => 'ფოკუსი';

  @override
  String get shortcutNewTask => 'ახალი ამოცანა';

  @override
  String get shortcutReview => 'ბარათების გამეორება';

  @override
  String get shortcutSounds => 'ბუნების ხმები';

  @override
  String get myDayTitle => 'ჩემი დღის დაწყება';

  @override
  String get myDayHint => 'თქვენი დღე ერთი შეხედვით, შემდეგ ერთი შეხებით ფოკუსი';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ამოცანა დღეისთვის',
      one: '1 ამოცანა დღეისთვის',
      zero: 'დღეისთვის ამოცანები არ არის',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'დღეს მეტი მოვლენა არ არის';

  @override
  String myDayNextEvent(String title, String time) {
    return 'შემდეგი: $title, $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დარჩა $count ჩვევა',
      one: 'დარჩა 1 ჩვევა',
      zero: 'ყველა ჩვევა შესრულდა',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'დაიწყეთ ფოკუსის სესიით';

  @override
  String get hijriMonth1 => 'მუჰარამი';

  @override
  String get hijriMonth2 => 'საფარი';

  @override
  String get hijriMonth3 => 'რაბი ალ-ავალი';

  @override
  String get hijriMonth4 => 'რაბი ას-სანი';

  @override
  String get hijriMonth5 => 'ჯუმადა ალ-ულა';

  @override
  String get hijriMonth6 => 'ჯუმადა ალ-ახირა';

  @override
  String get hijriMonth7 => 'რაჯაბი';

  @override
  String get hijriMonth8 => 'შაბანი';

  @override
  String get hijriMonth9 => 'რამადანი';

  @override
  String get hijriMonth10 => 'შავალი';

  @override
  String get hijriMonth11 => 'ზულ-კაადა';

  @override
  String get hijriMonth12 => 'ზულ-ჰიჯა';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month, $year ჰ.';
  }

  @override
  String get settingsHijri => 'ჰიჯრის თარიღები';

  @override
  String get settingsHijriHint => 'ნაჩვენებია კალენდარსა და მთავარ ეკრანზე (უმ ალ-ყურა)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count დღე',
      one: '1 დღე',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'დღეს $done / $goal ბარათი';
  }

  @override
  String get studyGoalReached => 'დღიური მიზანი მიღწეულია. ყოჩაღ!';

  @override
  String get studyWeekTitle => 'თქვენი კვირა';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 დღეში პასუხი გაეცა $count ბარათს',
      one: '7 დღეში პასუხი გაეცა 1 ბარათს',
      zero: '7 დღეში პასუხგაცემული ბარათები არ არის',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration ფოკუსი 7 დღეში';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'სერია: $current · საუკეთესო: $best';
  }

  @override
  String get studyGoalTitle => 'დღიური მიზანი (ბარათები)';

  @override
  String get studyGoalOff => 'გამორთული';

  @override
  String get focusDndTitle => '„არ შემაწუხოთ“ ფოკუსისას';

  @override
  String get focusDndHint => 'ირთვება ყოველ ფოკუსის სესიაზე და ითიშება შესვენებისას';

  @override
  String get focusDndNeedsAccess => 'ამის გამოსაყენებლად დაუშვით წვდომა ტელეფონის პარამეტრებში';

  @override
  String get voiceInput => 'ხმით აკრეფა';

  @override
  String get voiceInputPrompt => 'ილაპარაკეთ ახლა';

  @override
  String get voiceInputUnavailable =>
      'ხმით აკრეფა ამ ტელეფონზე მიუწვდომელია. დააყენეთ ან ჩართეთ მეტყველების სერვისი (მაგალითად, Google-ის Speech Recognition & Synthesis).';

  @override
  String get prayerFajr => 'ფაჯრი';

  @override
  String get prayerSunrise => 'მზის ამოსვლა';

  @override
  String get prayerDhuhr => 'ზუჰრი';

  @override
  String get prayerAsr => 'ასრი';

  @override
  String get prayerMaghrib => 'მაღრიბი';

  @override
  String get prayerIsha => 'იშა';

  @override
  String get prayerMethodMwl => 'მუსლიმური სამყაროს ლიგა';

  @override
  String get prayerMethodUmmAlQura => 'უმ ალ-ყურა, მექა';

  @override
  String get prayerMethodEgypt => 'ეგვიპტის გენერალური ორგანო';

  @override
  String get prayerMethodJordan => 'იორდანია, ვაკფების სამინისტრო';

  @override
  String get prayerMethodKarachi => 'ისლამური მეცნიერებების უნივერსიტეტი, კარაჩი';

  @override
  String get prayerMethodIsna => 'ჩრდილოეთ ამერიკის ისლამური საზოგადოება';

  @override
  String get prayerMethodGulf => 'სპარსეთის ყურის რეგიონი';

  @override
  String get prayerMethodKuwait => 'ქუვეითი';

  @override
  String get prayerMethodQatar => 'კატარი';

  @override
  String get prayerMethodTurkey => 'თურქეთი, დიანეთი';

  @override
  String get prayerMethodSingapore => 'სინგაპური, მალაიზია, ინდონეზია';

  @override
  String get prayerMethodFrance => 'საფრანგეთი (12°)';

  @override
  String get prayerMethodRussia => 'რუსეთი, სულიერი სამმართველო';

  @override
  String prayerNotifTitle(String name) {
    return '$name-ის დრო';
  }

  @override
  String prayerNotifBody(String time) {
    return 'ლოცვის დრო · $time';
  }

  @override
  String get prayerTitle => 'ლოცვის დრო';

  @override
  String get prayerOffHint =>
      'ლოცვის დროის სანახავად აირჩიეთ ქალაქი. დრო ითვლება ტელეფონზე; მდებარეობაზე წვდომა საჭირო არ არის.';

  @override
  String get prayerChooseCity => 'ქალაქის არჩევა';

  @override
  String get prayerCity => 'ქალაქი';

  @override
  String get prayerCitySearch => 'ქალაქის ძიება';

  @override
  String get prayerMethod => 'გამოთვლის მეთოდი';

  @override
  String get prayerHanafiAsr => 'ჰანაფიტური ასრი (გვიანი დრო)';

  @override
  String get prayerReminders => 'შეტყობინება ყოველი ლოცვის დროს';

  @override
  String get prayerPauseFocus => 'ფოკუსის შეჩერება ლოცვის დროს';

  @override
  String get prayerPauseFocusHint => 'მიმდინარე სესია ჩერდება; გააგრძელეთ ლოცვის შემდეგ';

  @override
  String get prayerTurnOff => 'ლოცვის დროის გამორთვა';

  @override
  String get prayerAccuracyNote =>
      'გამოთვლილი დრო შეიძლება რამდენიმე წუთით განსხვავდებოდეს თქვენი ადგილობრივი მეჩეთისგან.';

  @override
  String prayerNext(String name, String time) {
    return '$name, $time';
  }

  @override
  String get importAnkiNewFormat =>
      'ეს Anki ფაილი უახლეს ფორმატს იყენებს. Anki-ში ხელახლა გააკეთეთ ექსპორტი ჩართული „Support older Anki versions“-ით, შემდეგ კი ის ფაილი შემოიტანეთ.';

  @override
  String get importTemplate => 'ცხრილის შაბლონი';

  @override
  String get importTemplateFront => 'ვაშლი';

  @override
  String get importTemplateBack => 'მრგვალი ხილი';

  @override
  String get importTemplateExample => 'ყოველდღე ვჭამ ვაშლს.';

  @override
  String get importTemplateTag => 'საკვები';

  @override
  String get starterTitle => 'საწყისი დასტები';

  @override
  String get starterHint =>
      'დაამატეთ ერთი, რომ სწავლა მაშინვე სცადოთ. მოგვიანებით შეგიძლიათ მისი რედაქტირება ან წაშლა.';

  @override
  String get starterAdd => 'დამატება';

  @override
  String get starterWords => 'ყოველდღიური ინგლისური სიტყვები (არაბულად)';

  @override
  String get starterCapitals => 'მსოფლიოს დედაქალაქები';

  @override
  String get starterElements => 'ქიმიური ელემენტები';

  @override
  String get settingsAccent => 'აქცენტის ფერი';

  @override
  String get accentViolet => 'იისფერი';

  @override
  String get accentBlue => 'ლურჯი';

  @override
  String get accentTeal => 'ზღვისფერი';

  @override
  String get accentGreen => 'მწვანე';

  @override
  String get accentRose => 'ვარდისფერი';

  @override
  String get accentAmber => 'ქარვისფერი';

  @override
  String get settingsFlashTextSize => 'ბარათის ტექსტის ზომა';

  @override
  String get settingsFlashTextSample => 'მაგალითი';

  @override
  String get widgetStartFocus => 'შეეხეთ ფოკუსისთვის';

  @override
  String widgetFocusUntil(String time) {
    return 'ფოკუსი $time-მდე';
  }

  @override
  String get widgetNoCardsDue => 'ბარათები: ყველაფერი შესრულდა';

  @override
  String get faqMyDayQ => 'რას აკეთებს „ჩემი დღის დაწყება“?';

  @override
  String get faqMyDayA =>
      'მთავარი ეკრანი მას დღეში ერთხელ გთავაზობთ: ნახეთ დღევანდელი ამოცანები, შემდეგი მოვლენა, დარჩენილი ჩვევები და ვადიანი ბარათები, შემდეგ კი ერთი შეხებით დაიწყეთ ფოკუსის სესია. სწრაფი მოქმედებებისთვის ხანგრძლივად დააჭირეთ აპის ხატულას, ან დაამატეთ მთავარი ეკრანის ვიჯეტი ფოკუსის დროისა და ბარათების სანახავად.';

  @override
  String get faqTasksQ => 'როგორ დავამატო ამოცანა შეხსენებით?';

  @override
  String get faqTasksA =>
      'შეეხეთ „ახალ ამოცანას“ მთავარ გვერდზე ან +-ს ამოცანებში. აკრიფეთ სათაური ან თქვით მიკროფონით, შემდეგ დააყენეთ ვადა, დრო და შეხსენება. ვადაგადაცილებული ამოცანები პირველია.';

  @override
  String get faqFocusQ => 'როგორ მუშაობს ფოკუსის ტაიმერი?';

  @override
  String get faqFocusA =>
      'აირჩიეთ პომოდორო, უკუთვლა ან ღია დრო და დააჭირეთ „დაწყებას“; შესვენებები შეიძლება ავტომატურად მოჰყვეს. პარამეტრებში შეგიძლიათ აირჩიოთ დასრულების ხმა, ჩართოთ „არ შემაწუხოთ“ ფოკუსისას და დაუკრათ ბუნების ხმები ყოველ სესიაზე.';

  @override
  String get faqSoundsQ => 'შეიძლება ბუნების ხმების შერევა?';

  @override
  String get faqSoundsA =>
      'ჩართეთ ექვსამდე ნამდვილი ჩანაწერი, დააყენეთ თითოეულის ხმის სიმაღლე და შეინახეთ მიქსი სახელით. ისინი ფონზე აგრძელებენ ჟღერადობას, ხოლო ძილის ტაიმერს შეუძლია მათი გაჩერება. მუსიკა არ გამოიყენება.';

  @override
  String get faqCalendarQ => 'შეუძლია კალენდარს ჰიჯრის თარიღების ჩვენება?';

  @override
  String get faqCalendarA =>
      'დიახ. ჰიჯრის თარიღები (უმ ალ-ყურა) არაბულად ავტომატურად ჩანს და ნებისმიერი ენისთვის შეიძლება ჩაირთოს პარამეტრებში. მოვლენები, ვადიანი ამოცანები და პროექტის ეტაპები ერთად ჩანს.';

  @override
  String get faqFlashcardsQ => 'როგორ წყვეტს გამეორება, რომელ ბარათებს ვნახავ?';

  @override
  String get faqFlashcardsA =>
      'კარგად ნაცნობი ბარათები უფრო გრძელი ინტერვალის შემდეგ ბრუნდება, გამოტოვებული კი მალე (ინტერვალური გამეორება). შეაფასეთ თითოეული პასუხი: „ხელახლა“, „რთული“, „კარგი“ ან „მარტივი“. დააყენეთ დღიური მიზანი და შეინარჩუნეთ სერია „დღეს“ ბარათზე. დასტაში გამოცდის თარიღი დააყენეთ, რომ ნახოთ დარჩენილი დღეები და რამდენი ახალი ბარათი უნდა ისწავლოთ დღეში. ბარათების გადასაადგილებლად დაალაგეთ „ჩემი რიგით“, მოსასმენად შეეხეთ დინამიკს ნებისმიერ მხარეს, ხოლო სიჩქარე და გამეორებები დააყენეთ „მეტყველების“ მენიუში.';

  @override
  String get faqImportQ => 'შემიძლია ბარათების შემოტანა Anki-დან ან Excel-დან?';

  @override
  String get faqImportA =>
      'დიახ. დასტაში აირჩიეთ „იმპორტი“, შემდეგ აირჩიეთ ფაილი: Anki (.apkg), Excel (.xlsx) ან CSV და შეუსაბამეთ სვეტები. კომპიუტერზე ბარათების დასაწერად გამოიყენეთ „ცხრილის შაბლონი“. Anki ფაილებში არსებული სურათები და ხმები არ შემოიტანება.';

  @override
  String get faqNotesQ => 'რა შეუძლია ჩანაწერებს?';

  @override
  String get faqNotesA =>
      'წერეთ თავისუფლად სიებითა და ფორმატირებით, მიამაგრეთ ან რჩეულებში დაამატეთ მნიშვნელოვანი ჩანაწერები, დაამატეთ ტეგები და მიაბით ჩანაწერები ამოცანებს. მიკროფონის ღილაკით შეგიძლიათ კარნახი. ახალი ჩანაწერი შეიძლება შაბლონით დაიწყოს (ლექცია, წიგნის შეჯამება, დღიური, კვირის გეგმა), ხოლო სურათის ღილაკი ფოტოებს ამატებს.';

  @override
  String get faqHabitsQ => 'როგორ ითვლება ჩვევების სერიები?';

  @override
  String get faqHabitsA =>
      'დღე ითვლება, როცა დაგეგმილ დღეს ჩვევის სამიზნეს მიაღწევთ. ჩვევის შეჩერება სერიას იცავს. თითოეულ ჩვევას შეიძლება ჰქონდეს საკუთარი შეხსენების დრო.';

  @override
  String get faqGoalsQ => 'როგორ ადევნებენ მიზნები პროგრესს თვალს?';

  @override
  String get faqGoalsA =>
      'მიეცით მიზანს სამიზნე რაოდენობა და ერთეული, შემდეგ კი ჩაწერეთ პროგრესი. მისი ბარათი გაჩვენებთ, რამდენად წინ ხართ და რამდენი დარჩა ვადამდე.';

  @override
  String get faqProjectsQ => 'რისთვისაა პროექტები?';

  @override
  String get faqProjectsA =>
      'დააჯგუფეთ ამოცანები პროექტში, დაამატეთ თარიღიანი ეტაპები და თვალი ადევნეთ საერთო პროგრესს. ეტაპები კალენდარშიც ჩანს.';

  @override
  String get faqInsightsQ => 'რას აჩვენებს ანალიტიკა?';

  @override
  String get faqInsightsA =>
      'თქვენს ფოკუსის დროს, შესრულებულ ამოცანებსა და სწავლას დღეებისა და კვირების მიხედვით, რბილი რჩევებით. ყველაფერი თქვენს ტელეფონზე ითვლება.';

  @override
  String get faqSpacesQ => 'სად არის ყველა სექცია?';

  @override
  String get faqSpacesA =>
      '„სივრცეები“ ჩამოთვლის აპის ყველა ნაწილს (ჩანაწერები, დასტები, ჩვევები, მიზნები, პროექტები, ხმები და სხვა), ასე რომ მთავარი ზოლი მარტივი რჩება.';

  @override
  String get faqBackupQ => 'როგორ იქმნება ჩემი მონაცემების სარეზერვო ასლი?';

  @override
  String get faqBackupA =>
      'აპი ყოველდღე ჩუმად ინახავს დაშიფრულ ასლს ამ ტელეფონზე და ტოვებს ბოლო 7-ს. პარამეტრებში ასევე შეგიძლიათ პაროლით დაცული სარეზერვო ფაილის ექსპორტი და მისი აღდგენა სხვა ტელეფონზე.';

  @override
  String get faqPrayerQ => 'როგორ მუშაობს ლოცვის დრო?';

  @override
  String get faqPrayerA =>
      'აირჩიეთ ქალაქი პარამეტრებში → ლოცვის დრო. დრო ითვლება ტელეფონზე იქ გამოყენებული მეთოდით, ხოლო მეთოდისა და ასრის სკოლის შეცვლა შეგიძლიათ. შეგიძლიათ შეტყობინება მიიღოთ ყოველ ლოცვაზე, ხოლო მიმდინარე ფოკუსის სესია შეჩერდება.';

  @override
  String get faqPrivacyQ => 'სად ინახება ჩემი მონაცემები?';

  @override
  String get faqPrivacyA =>
      'მხოლოდ თქვენს ტელეფონზე, დაშიფრულ მონაცემთა ბაზაში. არ არის ანგარიში და არც თვალთვალი. ინტერნეტს მხოლოდ თქვენ მიერ ჩართული ფუნქციები იყენებს, მაგალითად, არასავალდებულო ასისტენტი.';

  @override
  String get faqAssistantQ => 'რა არის ასისტენტი?';

  @override
  String get faqAssistantA =>
      'არასავალდებულო დამხმარე, რომელსაც პარამეტრებში საკუთარ ხი სერვისს უკავშირებთ. ნაგულისხმევად გამორთულია და ჩანაწერის ტექსტის გაგზავნამდე გეკითხებათ.';

  @override
  String get tourPlanTitle => 'დაგეგმეთ თქვენი დღე';

  @override
  String get tourPlanBody =>
      'ამოცანები, კალენდარი და ჩვევები ერთ მშვიდ ადგილას. ყოველი დილა დაიწყეთ „ჩემი დღის დაწყებით“.';

  @override
  String get tourFocusTitle => 'ღრმა ფოკუსი';

  @override
  String get tourFocusBody =>
      'დროში გაწერილი სესიები ნამდვილი ბუნების ხმებით, „არ შემაწუხოთ“ რეჟიმით და რბილი დასრულების ტონებით.';

  @override
  String get tourLearnTitle => 'ისწავლეთ სამუდამოდ';

  @override
  String get tourLearnBody =>
      'ბარათები ინტერვალური გამეორებით, მეტყველება ბევრ ენაზე და იმპორტი Anki-დან ან Excel-დან.';

  @override
  String get helpTitle => 'დახმარება და კითხვები';

  @override
  String get helpOpen => 'გახსნა';

  @override
  String get helpTour => 'ტურის გავლა';

  @override
  String get tourNext => 'შემდეგი';

  @override
  String get tourDone => 'დავიწყოთ';

  @override
  String get transferColTitle => 'სათაური';

  @override
  String get transferColNotes => 'შენიშვნები';

  @override
  String get transferColBody => 'ტექსტი';

  @override
  String get transferColDue => 'ვადა';

  @override
  String get transferColPriority => 'პრიორიტეტი (0-3)';

  @override
  String get transferColDone => 'შესრულებული';

  @override
  String get transferColProject => 'პროექტი';

  @override
  String get transferColCategory => 'კატეგორია';

  @override
  String get transferTitle => 'იმპორტი და ექსპორტი';

  @override
  String get transferSaveAs => 'შენახვა როგორც';

  @override
  String get transferImport => 'ფაილიდან იმპორტი';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV ან ცხრილი Word-ში. სვეტები: სათაური, ვადა (2026-12-31), პრიორიტეტი 0-3, შესრულებული, პროექტი, შენიშვნები. აპში უკვე არსებული ამოცანები გამოტოვდება.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown ან ტექსტური ფაილები ჩანაწერად იქცევა. Excel ან CSV: თითო ჩანაწერი თითო ხაზზე (სათაური, ტექსტი).';

  @override
  String get transferSaved => 'ფაილი შენახულია';

  @override
  String get transferFailed => 'ფაილის შექმნა ვერ მოხერხდა. არაფერი შეცვლილა.';

  @override
  String get transferUnsupported =>
      'ამ ფაილის აქ წაკითხვა შეუძლებელია. გამოიყენეთ Excel, CSV, Word, Markdown ან ტექსტი.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'დაემატა $added',
      one: 'დაემატა 1',
      zero: 'დასამატებელი ახალი არაფერია',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'ტექსტი';

  @override
  String get transferAllNotes => 'ყველა ჩანაწერი';

  @override
  String get transferThisNote => 'ეს ჩანაწერი';

  @override
  String get transferDeckFormats => 'შენახვა Excel, Word ან PDF ფორმატში';

  @override
  String get faqFilesQ => 'შემიძლია Excel, Word ან PDF ფაილების გამოყენება?';

  @override
  String get faqFilesA =>
      'დიახ. ამოცანებსა და ჩანაწერებს ზედა ნაწილში აქვს იმპორტისა და ექსპორტის ღილაკი (ორი ისარი), ხოლო ყველა დასტას ის მენიუში აქვს. შეინახეთ Excel, CSV, Word ან PDF ფორმატში, ან შემოიტანეთ Excel, CSV, Word, Markdown ან ტექსტური ფაილები. სვეტების სახელები შეიძლება იყოს აპის ნებისმიერ ენაზე, ხოლო შენახული ფაილების ხელახლა იმპორტი ყოველთვის შეიძლება.';

  @override
  String get tplLecture => 'ლექცია';

  @override
  String get tplBook => 'წიგნის შეჯამება';

  @override
  String get tplJournal => 'დღიური';

  @override
  String get tplWeek => 'კვირის გეგმა';

  @override
  String get tplLectureBody => '## მთავარი პუნქტები\n- \n\n## კითხვები\n- [ ] \n\n## შეჯამება\n';

  @override
  String get tplBookBody =>
      '## მთავარი იდეა\n\n## რა ვისწავლე\n- \n\n## ციტატები\n> \n\n## გამოსაყენებლად\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## მადლიერი ვარ\n- \n\n## დღევანდელი ფოკუსი\n- [ ] \n\n## შენიშვნები\n';

  @override
  String get tplWeekBody =>
      '## ამ კვირის მიზნები\n- [ ] \n\n### შაბათი\n- [ ] \n\n### კვირა\n- [ ] \n\n### ორშაბათი\n- [ ] \n\n### სამშაბათი\n- [ ] \n\n### ოთხშაბათი\n- [ ] \n\n### ხუთშაბათი\n- [ ] \n\n### პარასკევი\n- [ ] \n';

  @override
  String get tplHint => 'დაიწყეთ შაბლონით';

  @override
  String get noteImage => 'სურათი';

  @override
  String get noteAddImage => 'სურათის დამატება';

  @override
  String get noteImageUnreadable => 'ეს ფაილი არ არის სურათი, რომელსაც აპი წაიკითხავს.';

  @override
  String get noteImageTooLarge => 'ეს სურათი ზედმეტად დიდია.';

  @override
  String get examSet => 'გამოცდის თარიღის დაყენება';

  @override
  String get examDate => 'გამოცდის თარიღი';

  @override
  String get examToday => 'გამოცდა დღესაა. წარმატებები!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'გამოცდამდე $count დღე',
      one: 'გამოცდა ხვალაა',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ისწავლეთ $count ახალი ბარათი დღეში',
      one: 'ისწავლეთ 1 ახალი ბარათი დღეში',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'ყველა ბარათი ნასწავლია, განაგრძეთ გამეორება';

  @override
  String examRaiseLimit(int count) {
    return 'დღეში $count ახალი ბარათის ჩვენება';
  }

  @override
  String get backupDriveHint =>
      'ასლის ონლაინ შესანახად შემდეგ გახსნილ შენახვის ეკრანზე აირჩიეთ Google Drive (ან სხვა ღრუბლოვანი აპი).';

  @override
  String get flashShareDeck => 'დასტის გაზიარება მეგობართან';

  @override
  String get flashSortManual => 'ჩემი რიგი (გადათრევა)';

  @override
  String get flashReorderHint => 'ბარათის გადასაადგილებლად დაიჭირეთ სახელური და გადაათრიეთ.';

  @override
  String get flashReorderNeedsAll => 'ბარათების გადასათრევად გაასუფთავეთ ძიება და ფილტრები.';

  @override
  String get flashDragHandle => 'გადაათრიეთ გადასაადგილებლად';

  @override
  String get reportTitle => 'თვის ანგარიში';

  @override
  String get reportFocus => 'ფოკუსის დრო';

  @override
  String reportSessions(int count) {
    return '$count სესია';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'საუკეთესო დღე: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count აქტიური დღე';
  }

  @override
  String get reportCards => 'გამეორებული ბარათები';

  @override
  String reportCardsKnown(String percent) {
    return '$percent დამახსოვრებული';
  }

  @override
  String get reportTasks => 'შესრულებული ამოცანები';

  @override
  String get reportHabits => 'ჩვევების მონიშვნები';

  @override
  String get reportEmpty => 'ამ თვეში ჯერ არაფერი ჩაწერილა.';

  @override
  String get reportSave => 'შენახვა PDF ან Word ფორმატში';

  @override
  String get reportPrevMonth => 'წინა თვე';

  @override
  String get reportNextMonth => 'შემდეგი თვე';

  @override
  String get careTitle => 'ტელეფონისა და მონაცემების მოვლა';

  @override
  String get storageTitle => 'მეხსიერება';

  @override
  String get storageSubtitle => 'რა იკავებს ადგილს და გამოუყენებელი სურათების გასუფთავება';

  @override
  String get storagePictures => 'სურათები ჩანაწერებში';

  @override
  String get storageCardMedia => 'სურათები და აუდიო ბარათებში';

  @override
  String get storageText => 'ჩანაწერების ტექსტი';

  @override
  String get storageFree => 'თავისუფალი ადგილი ტელეფონზე';

  @override
  String get storageLow =>
      'ტელეფონი თითქმის სავსეა. გაათავისუფლეთ ადგილი, რომ სარეზერვო ასლებმა და შეხსენებებმა მუშაობა გააგრძელონ.';

  @override
  String storageUnused(int count, String size) {
    return '$count გამოუყენებელი სურათი ($size)';
  }

  @override
  String get storageNoUnused => 'გამოუყენებელი სურათები არ არის. ყველაფერი მოწესრიგებულია.';

  @override
  String get storageClean => 'გამოუყენებელი სურათების წაშლა';

  @override
  String storageCleaned(int count) {
    return 'წაიშალა $count სურათი';
  }

  @override
  String get storageHint =>
      'სურათი გამოუყენებლად ითვლება მხოლოდ მაშინ, როცა მას არცერთი ჩანაწერი არ აჩვენებს, ნაგავში არსებული ჩანაწერების ჩათვლით.';

  @override
  String get batteryTitle => 'შეხსენებების მუშაობის შენარჩუნება';

  @override
  String get batterySubtitle => 'ზოგი ტელეფონი ფონზე აჩერებს აპებს. შეამოწმეთ თქვენი.';

  @override
  String get batteryStatusOk =>
      'ბატარეის დაზოგვა ამ აპს არ ზღუდავს. შეხსენებები და ხმები დროულად უნდა მოვიდეს.';

  @override
  String get batteryStatusLimited =>
      'ბატარეის დაზოგვამ შეიძლება ფონზე შეაჩეროს ეს აპი, ამიტომ შეხსენებები და ხმები შეიძლება დაგვიანდეს ან არ მოვიდეს.';

  @override
  String get batteryOpen => 'ბატარეის პარამეტრების გახსნა';

  @override
  String get batteryOpenApp => 'აპის პარამეტრების გახსნა';

  @override
  String get batteryGeneric =>
      'ბატარეის პარამეტრებში აირჩიეთ ეს აპი და დააყენეთ „შეუზღუდავი“ (ან „არ მოხდეს ოპტიმიზაცია“).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: ასევე გახსენით უსაფრთხოება › ნებართვები › ავტოგაშვება და ჩართეთ ეს აპი, ხოლო ბატარეის დამზოგი დააყენეთ „შეზღუდვების გარეშე“.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: გახსენით ბატარეა › ეს აპი და დაუშვით ფონური აქტივობა და ავტოგაშვება; ჩაკეტეთ აპი ბოლო აპების სიაში.';

  @override
  String get batterySamsung =>
      'Samsung: ბატარეა › ფონური გამოყენების ლიმიტები: ამოიღეთ ეს აპი „მძინარე აპებიდან“ და „ღრმად მძინარე აპებიდან“.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: აპის გაშვება › ეს აპი › ხელით მართვა, შემდეგ დაუშვით ავტოგაშვება, მეორადი გაშვება და ფონზე მუშაობა.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: ბატარეა › ფონური ენერგომოხმარება › დაუშვით ეს აპი და ჩართეთ ავტოგაშვება ნებართვებში.';

  @override
  String get whatsNewTitle => 'რა არის ახალი';

  @override
  String get whatsNewSubtitle => 'ბოლო ცვლილებები რამდენიმე ხაზში';

  @override
  String get whatsNewDone => 'გასაგებია';

  @override
  String get whatsNewOrderTitle => 'დაალაგეთ ბარათები საკუთარი რიგით';

  @override
  String get whatsNewOrderBody =>
      'დასტაში აირჩიეთ დალაგება › ჩემი რიგი, შემდეგ დაიჭირეთ სახელური და გადაათრიეთ.';

  @override
  String get whatsNewSpeechTitle => 'დინამიკი ბარათის ყველა მხარეს';

  @override
  String get whatsNewSpeechBody =>
      'შეეხეთ მას სიტყვის ან თარგმანის მოსასმენად. სიჩქარე, გამეორებები და ხმა გამეორების მენიუშია. ენა ტექსტით დგინდება.';

  @override
  String get whatsNewReportTitle => 'თვის ანგარიში';

  @override
  String get whatsNewReportBody =>
      'ანალიტიკაში შეეხეთ ანგარიშის ხატულას, რომ თვე ნახოთ და შეინახოთ PDF ან Word ფორმატში.';

  @override
  String get whatsNewCareTitle => 'ტელეფონისა და მონაცემების მოვლა';

  @override
  String get whatsNewCareBody =>
      'პარამეტრებში ახლა არის მეხსიერების გვერდი სურათების გასუფთავებით და ბატარეის სახელმძღვანელო თქვენი ტელეფონის ბრენდისთვის.';

  @override
  String get whatsNewSoundTitle => 'უფრო მშვიდი ხმები';

  @override
  String get whatsNewSoundBody =>
      'ბუნების ხმები უფრო რბილი და ჩუმია, სურათიანი ბარათები კი უფრო ლამაზი.';

  @override
  String autoBackupCheckOk(String date) {
    return 'შემოწმდა $date: ბოლო სარეზერვო ასლი სწორად იხსნება.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'შემოწმდა $date: აღმოჩნდა დაზიანებული სარეზერვო ასლი და შეიცვალა ახლით.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'შემოწმდა $date: ბოლო სარეზერვო ასლის გახსნა ვერ მოხერხდა. შეინახეთ სარეზერვო ფაილი თავად პარამეტრებიდან.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'ჩვეულებრივ სწავლობთ დაახლოებით $time-ზე';
  }

  @override
  String get smartReviewTimeUse => 'გამოყენება';

  @override
  String get widgetNewNote => 'ახალი ჩანაწერი';

  @override
  String get noteConnections => 'ტეგები, ბმულები და ამოცანები';

  @override
  String get navCards => 'ბარათები';

  @override
  String get studyAnswerWay => 'როგორ ვუპასუხო';

  @override
  String get studyMorePractice => 'დამატებითი ვარჯიში';

  @override
  String get studySessionSettings => 'სესიის პარამეტრები';

  @override
  String get focusAdjustTitle => 'თქვენი სესია';

  @override
  String get focusPresetsTitle => 'მზა';

  @override
  String get focusPresetStudy => 'სწავლა';

  @override
  String get focusPresetDeep => 'ღრმა მუშაობა';

  @override
  String get focusPresetQuick => 'სწრაფი სპრინტი';

  @override
  String get focusPresetReading => 'კითხვა';

  @override
  String get focusPresetWorkout => 'ვარჯიშის რაუნდები';

  @override
  String get focusAdjustMinutes => 'ფოკუსის ხანგრძლივობა';

  @override
  String get focusAdjustBreak => 'შესვენების ხანგრძლივობა';

  @override
  String get focusAdjustRounds => 'რაუნდები';

  @override
  String get focusRoundsOpen => 'ლიმიტის გარეშე';

  @override
  String focusMinutesShort(String n) {
    return '$n წთ';
  }

  @override
  String get focusTapToAdjust => 'შეეხეთ დროის შესაცვლელად';

  @override
  String get flashArrangeDecks => 'დასტების დალაგება';

  @override
  String get flashDeckActions => 'დასტის პარამეტრები';

  @override
  String get starterBrowse => 'მზა დასტები';

  @override
  String get starterBrowseHint => 'დაამატეთ ერთი შეხებით და დაიწყეთ სწავლა';

  @override
  String get dashOpenDecks => 'თქვენი ბარათების გახსნა';

  @override
  String speechVoiceNumber(String n) {
    return 'ხმა $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'კარგი ნაკადია. დაისვენებთ $m წთ?';
  }

  @override
  String get focusFlowBreakStart => 'შესვენების დაწყება';

  @override
  String tasksFinishAt(String time) {
    return 'ახლა თუ დაიწყებთ, ყველაფერს $time-მდე დაასრულებთ';
  }

  @override
  String get focusCalmPacing => 'მშვიდი ტემპი';

  @override
  String get focusCalmPacingHint => 'მხოლოდ სრული წუთები და რგოლი, წამების ტიკტიკის გარეშე';

  @override
  String get focusFlipHint => 'დასაწყებად ტელეფონი ეკრანით ქვემოთ დადეთ';

  @override
  String get focusImmersive => 'ჩაძირვის რეჟიმი';

  @override
  String get focusImmersiveBlack => 'სუფთა შავი (ზოგავს ბატარეას)';

  @override
  String get focusFlipToFocus => 'გადაბრუნებით ფოკუსი';

  @override
  String get focusFlipToFocusHint =>
      'ჩაძირვის რეჟიმში: ეკრანით ქვემოთ დადება იწყებს, აღება აჩერებს';

  @override
  String get guardTitle => 'ყურადღების დაცვა';

  @override
  String get guardSubtitle => 'გამფანტავი აპების შეჩერება ფოკუსისას';

  @override
  String get guardSwitch => 'გამფანტავი აპების შეჩერება';

  @override
  String get guardSwitchHint => 'ფოკუსის სესიებისა და „დროის მცველის“ საათებში';

  @override
  String get guardNeedsAccess =>
      'საჭიროა სპეციალური შესაძლებლობების გადამრთველი: შეეხეთ ჩასართავად';

  @override
  String get guardDisclosureTitle => 'როგორ მუშაობს დაცვა';

  @override
  String get guardDisclosureBody =>
      'თქვენ მიერ არჩეული აპების შესაჩერებლად Deep Focus იყენებს Android-ის სპეციალური შესაძლებლობების სერვისს, რომ დაინახოს, რომელი აპია გახსნილი. ჩართული „Shorts-ისა და Reels-ის დახურვით“ ის ასევე ამოწმებს, არის თუ არა ეკრანზე მოკლე ვიდეოს ფლეერი.\n\nის არ კითხულობს ტექსტს, არ ინახავს იმას, რასაც ხედავს, და არსად არაფერს აგზავნის: ყველაფერი თქვენს ტელეფონზე რჩება. მისი გამორთვა ნებისმიერ დროს შეგიძლიათ სპეციალური შესაძლებლობების პარამეტრებში.';

  @override
  String get guardAgree => 'ვეთანხმები და პარამეტრების გახსნა';

  @override
  String get guardModeGentle => 'რბილი';

  @override
  String get guardModeStrict => 'მკაცრი';

  @override
  String get guardGentleHint => '5-წამიანი სუნთქვის პაუზა, შემდეგ თქვენ ირჩევთ';

  @override
  String get guardStrictHint => 'არჩეული აპები დახურული რჩება ფოკუსის დროის დასრულებამდე';

  @override
  String get guardApps => 'შესაჩერებელი აპები';

  @override
  String get guardAppsAllowed => 'დაშვებული აპები';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count აპი',
      one: '1 აპი',
      zero: 'ჯერ არაფერია არჩეული',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'მხოლოდ არჩეული აპების დაშვება';

  @override
  String get guardAllowlistHint =>
      'ყველა სხვა აპი ჩერდება; ზარები, პარამეტრები და კლავიატურა ყოველთვის მუშაობს';

  @override
  String get guardShorts => 'Shorts-ისა და Reels-ის დახურვა';

  @override
  String get guardShortsHint =>
      'ნებისმიერ დროს, როცა დაცვა ჩართულია. შეძლებისდაგვარად: ეს აპები ხშირად იცვლება';

  @override
  String get guardSchedule => 'დროის მცველი';

  @override
  String get guardScheduleHint =>
      'დაცვა ასევე დადგენილ დღეებსა და საათებში, მაგალითად, სკოლაში ან სამსახურში';

  @override
  String get guardFrom => 'დან';

  @override
  String get guardTo => 'მდე';

  @override
  String get guardSearchApps => 'აპების ძიება';

  @override
  String get guardNoApps => 'აპები ვერ მოიძებნა';

  @override
  String get guardPrivacy =>
      'მუშაობს მხოლოდ თქვენს ტელეფონზე: დაცვა ხედავს, რომელი აპია გახსნილი, არასოდეს — რა არის მასში, და არაფერს აგზავნის.';

  @override
  String get guardBreathe => 'ჩაისუნთქეთ… და ამოისუნთქეთ';

  @override
  String get guardQuestion => 'ახლა გჭირდებათ ეს აპი?';

  @override
  String get guardBackToFocus => 'ფოკუსზე დაბრუნება';

  @override
  String get guardOpenFive => '5 წუთით გახსნა';

  @override
  String get guardStrictBody => 'ეს აპი შეჩერებულია ფოკუსის დროის დასრულებამდე.';

  @override
  String get guardShortsClosed => 'მოკლე ვიდეოები დახურულია, სანამ დაცვა ჩართულია';

  @override
  String get faqGuardQ => 'როგორ შევაჩერო გამფანტავი აპები ფოკუსისას?';

  @override
  String get faqGuardA =>
      'გახსენით ფოკუსი → ტაიმერის პარამეტრები → ყურადღების დაცვა. აირჩიეთ აპები, შემდეგ „რბილი“ (5-წამიანი სუნთქვა და კითხვა „ახლა გჭირდებათ ეს აპი?“) ან „მკაცრი“ (ისინი დახურული რჩება). ის მუშაობს ფოკუსის სესიებისას, ხოლო „დროის მცველით“ — თქვენ მიერ დადგენილ დღეებსა და საათებში. „მხოლოდ არჩეული აპების დაშვება“ ყველაფერ დანარჩენს აჩერებს; ზარები, პარამეტრები და კლავიატურა ყოველთვის მუშაობს. Android ერთხელ გთხოვთ დაცვის ჩართვას სპეციალური შესაძლებლობების პარამეტრებში. ის მხოლოდ ხედავს, რომელი აპია გახსნილი, და არაფერს აგზავნის.';

  @override
  String notesMovedToNotebook(String name) {
    return 'გადავიდა: $name';
  }

  @override
  String get notesDragHint => 'დაიჭირეთ ჩანაწერი და გადაათრიეთ რვეულზე';

  @override
  String get guardReviewCards => 'სანაცვლოდ ბარათების გამეორება';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ბარათი გელოდებათ',
      one: '1 ბარათი გელოდებათ',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'საგანგებო: დააჭირეთ 10 წამი';

  @override
  String guardEmergencyHolding(Object n) {
    return 'განაგრძეთ დაჭერა… $n';
  }

  @override
  String get guardWeekTitle => 'ეს კვირა';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count შეჩერება',
      one: '1 შეჩერება',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ფოკუსზე დაბრუნება $count-ჯერ',
      one: 'ფოკუსზე დაბრუნება ერთხელ',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'სიტყვების გადარქმევა';

  @override
  String get wordsSubtitle => 'გამოიყენეთ საკუთარი სიტყვა აპის ნებისმიერი ტექსტისთვის';

  @override
  String get wordsHint =>
      'შეეხეთ ტექსტს მის შესაცვლელად. თქვენი სიტყვები მხოლოდ ამ ენაზე ვრცელდება და სარეზერვო ასლებში ინახება.';

  @override
  String get wordsSearch => 'ტექსტების ძიება';

  @override
  String get wordsChangedOnly => 'მხოლოდ შეცვლილი';

  @override
  String wordsOriginal(String text) {
    return 'ორიგინალი: $text';
  }

  @override
  String get wordsReset => 'ორიგინალის გამოყენება';

  @override
  String get wordsResetAll => 'ყველა სიტყვის გადაყენება';

  @override
  String get wordsResetAllConfirm => 'ამ ენის ყველა ტექსტი ორიგინალს დაუბრუნდება.';

  @override
  String get wordsNone => 'ტექსტი ვერ მოიძებნა';

  @override
  String get settingsLanguageSearch => 'ენების ძიება';

  @override
  String get settingsLanguageNoMatch => 'შესაბამისი ენა არ არის';

  @override
  String get soundsMyMusic => 'თქვენი აუდიო';

  @override
  String get soundsMusicHint => 'დაუკარით აუდიოფაილი ტელეფონიდან. არაფერი კოპირდება ან იტვირთება.';

  @override
  String get soundsChooseMusic => 'აუდიოს არჩევა';

  @override
  String get soundsRemoveMusic => 'აუდიოს წაშლა';

  @override
  String get wordPacksTitle => 'სიტყვების პაკეტები';

  @override
  String get wordPacksHint =>
      'სიტყვების სიები თემების მიხედვით. ჩამოტვირთეთ მხოლოდ სასურველი ენა და შემდეგ თავისუფლად შეცვალეთ ან წაშალეთ ბარათები.';

  @override
  String get wordPacksFailed => 'ჩამოტვირთვა ვერ მოხერხდა. შეამოწმეთ კავშირი.';

  @override
  String get wordPacksEmpty => 'ამ ენის სიტყვები ჯერ კიდევ მზადდება.';
}
