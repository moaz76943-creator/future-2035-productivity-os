// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'मुख्यपृष्ठ';

  @override
  String get navTasks => 'कार्ये';

  @override
  String get navFocus => 'लक्ष';

  @override
  String get navCalendar => 'दिनदर्शिका';

  @override
  String get navSpaces => 'विभाग';

  @override
  String get moduleProjects => 'प्रकल्प';

  @override
  String get moduleNotes => 'टिपा';

  @override
  String get moduleFlashcards => 'फ्लॅशकार्ड';

  @override
  String get moduleGoals => 'उद्दिष्टे';

  @override
  String get moduleHabits => 'सवयी';

  @override
  String get moduleAnalytics => 'अंतर्दृष्टी';

  @override
  String get moduleSearch => 'शोध';

  @override
  String get moduleAssistant => 'सहाय्यक';

  @override
  String get moduleSettings => 'सेटिंग्ज';

  @override
  String get moduleTrash => 'कचरापेटी';

  @override
  String get actionSave => 'जतन करा';

  @override
  String get actionCancel => 'रद्द करा';

  @override
  String get actionDelete => 'हटवा';

  @override
  String get actionEdit => 'संपादित करा';

  @override
  String get actionDone => 'पूर्ण';

  @override
  String get actionAdd => 'जोडा';

  @override
  String get actionCreate => 'तयार करा';

  @override
  String get actionClose => 'बंद करा';

  @override
  String get actionBack => 'मागे';

  @override
  String get actionUndo => 'पूर्ववत करा';

  @override
  String get actionRestore => 'पुनर्संचयित करा';

  @override
  String get actionRetry => 'पुन्हा प्रयत्न करा';

  @override
  String get actionContinue => 'सुरू ठेवा';

  @override
  String get actionSkip => 'वगळा';

  @override
  String get actionArchive => 'संग्रहित करा';

  @override
  String get actionUnarchive => 'संग्रहातून काढा';

  @override
  String get actionPin => 'पिन करा';

  @override
  String get actionUnpin => 'पिन काढा';

  @override
  String get actionMore => 'अधिक पर्याय';

  @override
  String get actionClear => 'साफ करा';

  @override
  String get actionSearch => 'शोधा';

  @override
  String get actionSort => 'क्रमवारी लावा';

  @override
  String get actionShare => 'शेअर करा';

  @override
  String get actionImport => 'आयात करा';

  @override
  String get actionExport => 'निर्यात करा';

  @override
  String get actionPause => 'विराम द्या';

  @override
  String get actionResume => 'पुन्हा सुरू करा';

  @override
  String get actionStart => 'सुरू करा';

  @override
  String get actionStop => 'थांबवा';

  @override
  String get actionComplete => 'पूर्ण करा';

  @override
  String get actionDeleteForever => 'कायमचे हटवा';

  @override
  String get actionEmptyTrash => 'कचरापेटी रिकामी करा';

  @override
  String get actionUnlink => 'दुवा काढा';

  @override
  String get actionCustomize => 'सानुकूलित करा';

  @override
  String get actionPreview => 'पूर्वावलोकन';

  @override
  String get actionLog => 'प्रगती नोंदवा';

  @override
  String get stateLoading => 'लोड होत आहे…';

  @override
  String get stateSaving => 'जतन होत आहे…';

  @override
  String get stateSaved => 'जतन केले';

  @override
  String get stateUnsaved => 'जतन न केलेले बदल';

  @override
  String get errorGenericTitle => 'काहीतरी चुकले';

  @override
  String get errorGenericMessage => 'तुमचा डेटा सुरक्षित आहे. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get errorLoadFailed => 'ही सामग्री लोड करता आली नाही.';

  @override
  String get errorSaveFailed => 'जतन करता आले नाही. तुमचे बदल अजूनही इथे आहेत.';

  @override
  String get validationRequired => 'हे फील्ड आवश्यक आहे';

  @override
  String get validationTitleRequired => 'कृपया शीर्षक टाका';

  @override
  String get validationNameRequired => 'कृपया नाव टाका';

  @override
  String get validationTooLong => 'हे खूप लांब आहे';

  @override
  String get validationEndBeforeStart => 'शेवट सुरुवातीनंतर असायला हवा';

  @override
  String get validationStartAfterDue => 'सुरुवातीची तारीख अंतिम तारखेपूर्वी असायला हवी';

  @override
  String get validationPositiveNumber => 'शून्यापेक्षा मोठी संख्या टाका';

  @override
  String get validationDependencyCycle => 'यामुळे चक्राकार अवलंबित्व तयार होईल';

  @override
  String get validationInvalidRepeat => 'हा पुनरावृत्ती नियम वैध नाही';

  @override
  String get deletedItem => 'कचरापेटीत हलवले';

  @override
  String get untitled => 'शीर्षकहीन';

  @override
  String get noProject => 'प्रकल्प नाही';

  @override
  String get greetingMorning => 'सुप्रभात';

  @override
  String get greetingAfternoon => 'शुभ दुपार';

  @override
  String get greetingEvening => 'शुभ संध्याकाळ';

  @override
  String get dashFocusToday => 'आजचे लक्ष';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$target पैकी $done';
  }

  @override
  String get dashStartFocus => 'लक्ष सुरू करा';

  @override
  String get dashFocusRunning => 'सत्र सुरू आहे';

  @override
  String get dashTodayTasks => 'आज अंतिम मुदत';

  @override
  String get dashAgenda => 'कार्यसूची';

  @override
  String get dashHabits => 'आजच्या सवयी';

  @override
  String get dashGoals => 'उद्दिष्टे';

  @override
  String get dashReview => 'उजळणी';

  @override
  String get dashRecentNotes => 'अलीकडील टिपा';

  @override
  String get dashInsight => 'सूचना';

  @override
  String get dashSeeAll => 'सर्व पहा';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड उजळणीसाठी',
      one: '1 कार्ड उजळणीसाठी',
      zero: 'उजळणीसाठी कार्ड नाहीत',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'आता उजळणी करा';

  @override
  String get dashCustomizeTitle => 'डॅशबोर्ड विभाग';

  @override
  String get dashCustomizeHint => 'तुमच्या मुख्य स्क्रीनवर काय दिसावे ते निवडा.';

  @override
  String get dashSectionFocus => 'लक्ष';

  @override
  String get dashSectionToday => 'आज अंतिम मुदत असलेली कार्ये';

  @override
  String get dashSectionAgenda => 'कार्यसूची';

  @override
  String get dashSectionHabits => 'सवयी';

  @override
  String get dashSectionGoals => 'उद्दिष्टे';

  @override
  String get dashSectionReview => 'फ्लॅशकार्ड उजळणी';

  @override
  String get dashSectionNotes => 'अलीकडील टिपा';

  @override
  String get dashSectionInsight => 'सूचना';

  @override
  String get quickAddTask => 'नवीन कार्य';

  @override
  String get quickAddNote => 'नवीन टीप';

  @override
  String get quickAddEvent => 'नवीन कार्यक्रम';

  @override
  String get quickStartFocus => 'लक्ष';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'तुमची $count कार्ये मुदत उलटलेली आहेत. सर्वात महत्त्वाच्या कार्यापासून सुरुवात करा.',
      one: 'तुमचे 1 कार्य मुदत उलटलेले आहे. ते पुन्हा नियोजित करा किंवा आधी पूर्ण करा.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'तुमच्या दैनिक लक्ष उद्दिष्टापासून तुम्ही $minutes मिनिटे दूर आहात.';
  }

  @override
  String get insightCardsDue => 'स्मृती ताजी असतानाच देय फ्लॅशकार्डची आता उजळणी करा.';

  @override
  String get insightAllClear =>
      'सर्व काही ठीक चालले आहे. उद्याचे नियोजन करा किंवा शांतपणे विश्रांती घ्या.';

  @override
  String insightHabitStreak(String habit) {
    return 'तुमची सलगता टिकवा: $habit आज अजून बाकी आहे.';
  }

  @override
  String get focusTitle => 'लक्ष';

  @override
  String get focusModePomodoro => 'पोमोडोरो';

  @override
  String get focusModeCountdown => 'टायमर';

  @override
  String get focusModeCountUp => 'स्टॉपवॉच';

  @override
  String get focusModeOpen => 'मुक्त';

  @override
  String get focusPhaseWork => 'लक्ष';

  @override
  String get focusPhaseShortBreak => 'छोटा विराम';

  @override
  String get focusPhaseLongBreak => 'मोठा विराम';

  @override
  String get focusReady => 'तुम्ही तयार असाल तेव्हा';

  @override
  String get focusPaused => 'विराम दिला';

  @override
  String get focusRunning => 'लक्ष केंद्रित';

  @override
  String get focusDuration => 'कालावधी';

  @override
  String get focusLinkTask => 'कार्य जोडा';

  @override
  String get focusLinkedTask => 'यावर काम सुरू';

  @override
  String get focusNoTask => 'कोणतेही कार्य जोडलेले नाही';

  @override
  String focusCycle(int current, int total) {
    return 'चक्र $current / $total';
  }

  @override
  String get focusSkipBreak => 'विराम वगळा';

  @override
  String get focusStartBreak => 'विराम सुरू करा';

  @override
  String get focusStartNext => 'पुढील लक्ष सुरू करा';

  @override
  String get focusSessionComplete => 'सत्र पूर्ण झाले';

  @override
  String get focusSessionStopped => 'सत्र जतन केले';

  @override
  String focusSessionSummary(String duration) {
    return 'तुम्ही $duration लक्ष केंद्रित केले.';
  }

  @override
  String get focusAddNote => 'या सत्राबद्दल टीप जोडा';

  @override
  String get focusHistory => 'इतिहास';

  @override
  String get focusNoHistory => 'पूर्ण झालेली सत्रे इथे दिसतील';

  @override
  String get focusOutcomeCompleted => 'पूर्ण';

  @override
  String get focusOutcomeInterrupted => 'लवकर थांबवले';

  @override
  String get focusRecovered => 'ॲप बंद असतानाही तुमचे सत्र सुरू राहिले.';

  @override
  String get focusCompletedWhileAway => 'ॲप बंद असताना एक सत्र पूर्ण झाले आणि जतन केले गेले.';

  @override
  String get focusNotificationsOff =>
      'सूचना बंद आहेत. सत्र संपल्यावर तुम्हाला सूचित केले जाणार नाही.';

  @override
  String get focusBatteryHint =>
      'काही डिव्हाइस पार्श्वभूमीत ॲप्सना विराम देतात. टायमर अचूक राहतो, पण सूचना उशिरा येऊ शकतात. विश्वसनीय सूचनांसाठी अप्रतिबंधित बॅटरी वापराला परवानगी द्या.';

  @override
  String get focusOpenSettings => 'सेटिंग्ज उघडा';

  @override
  String get focusStopConfirmTitle => 'हे सत्र थांबवायचे?';

  @override
  String get focusStopConfirmMessage => 'आतापर्यंत लक्ष केंद्रित केलेला वेळ जतन केला जाईल.';

  @override
  String get focusDiscard => 'टाकून द्या';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes मिनिटे',
      one: '1 मिनिट',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time बाकी';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time झाले';
  }

  @override
  String get focusDeleteSession => 'सत्र हटवा';

  @override
  String get tasksTitle => 'कार्ये';

  @override
  String get tasksViewToday => 'आज';

  @override
  String get tasksViewUpcoming => 'आगामी';

  @override
  String get tasksViewAll => 'सर्व';

  @override
  String get tasksViewOverdue => 'मुदत उलटलेली';

  @override
  String get tasksViewCompleted => 'पूर्ण झालेली';

  @override
  String get tasksQuickAddHint => 'कार्य जोडा…';

  @override
  String get tasksEmptyTitle => 'सर्व पूर्ण';

  @override
  String get tasksEmptyMessage => 'तुमच्या दिवसाला आकार देण्यासाठी कार्य जोडा.';

  @override
  String get tasksEmptyCompleted => 'पूर्ण झालेली कार्ये इथे दिसतील.';

  @override
  String get taskNew => 'नवीन कार्य';

  @override
  String get taskEdit => 'कार्य संपादित करा';

  @override
  String get taskTitleLabel => 'शीर्षक';

  @override
  String get taskTitleHint => 'काय करायचे आहे?';

  @override
  String get taskDescriptionLabel => 'वर्णन';

  @override
  String get taskNotesLabel => 'टिपा';

  @override
  String get taskPriority => 'प्राधान्य';

  @override
  String get priorityNone => 'काहीही नाही';

  @override
  String get priorityLow => 'कमी';

  @override
  String get priorityMedium => 'मध्यम';

  @override
  String get priorityHigh => 'उच्च';

  @override
  String get priorityUrgent => 'तातडीचे';

  @override
  String get taskDueDate => 'अंतिम तारीख';

  @override
  String get taskStartDate => 'सुरुवातीची तारीख';

  @override
  String get taskReminder => 'स्मरणपत्र';

  @override
  String get taskRepeat => 'पुनरावृत्ती';

  @override
  String get taskProject => 'प्रकल्प';

  @override
  String get taskCategory => 'श्रेणी';

  @override
  String get taskCategoryHint => 'उदा. काम, घर, अभ्यास';

  @override
  String get taskEstimateMinutes => 'अंदाज (मिनिटे)';

  @override
  String get taskTracked => 'नोंदवलेले लक्ष';

  @override
  String get taskLabels => 'लेबल';

  @override
  String get taskAddLabel => 'नवीन लेबल';

  @override
  String get taskChecklist => 'तपासणी सूची';

  @override
  String get taskAddChecklistItem => 'आयटम जोडा';

  @override
  String get taskSubtasks => 'उपकार्ये';

  @override
  String get taskAddSubtask => 'उपकार्य जोडा';

  @override
  String get taskDependencies => 'यामुळे अडवलेले';

  @override
  String get taskAddDependency => 'अडवणारे कार्य जोडा';

  @override
  String get taskLinkedNotes => 'जोडलेल्या टिपा';

  @override
  String get taskSetTime => 'वेळ सेट करा';

  @override
  String get taskNoDate => 'तारीख नाही';

  @override
  String get taskCompleted => 'कार्य पूर्ण झाले';

  @override
  String get taskNextOccurrence => 'पुढील पुनरावृत्ती तयार केली';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिवस उशीर',
      one: '1 दिवस उशीर',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '\"$title\" पूर्ण म्हणून चिन्हांकित करा';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '\"$title\" अपूर्ण म्हणून चिन्हांकित करा';
  }

  @override
  String get sortSmart => 'स्मार्ट';

  @override
  String get sortDueDate => 'अंतिम तारीख';

  @override
  String get sortPriority => 'प्राधान्य';

  @override
  String get sortCreated => 'नवीनतम';

  @override
  String get sortTitle => 'शीर्षक';

  @override
  String get filterAllProjects => 'सर्व प्रकल्प';

  @override
  String get filterAnyPriority => 'कोणतेही प्राधान्य';

  @override
  String get filterTitle => 'फिल्टर आणि क्रमवारी';

  @override
  String get dateToday => 'आज';

  @override
  String get dateTomorrow => 'उद्या';

  @override
  String get dateYesterday => 'काल';

  @override
  String get repeatNever => 'पुनरावृत्ती नाही';

  @override
  String get repeatDaily => 'दररोज';

  @override
  String get repeatWeekdays => 'प्रत्येक कामाच्या दिवशी';

  @override
  String get repeatWeekly => 'दर आठवड्याला';

  @override
  String get repeatMonthly => 'दर महिन्याला';

  @override
  String get repeatYearly => 'दरवर्षी';

  @override
  String get repeatCustom => 'सानुकूल';

  @override
  String get repeatEvery => 'इतक्या अंतराने पुनरावृत्ती';

  @override
  String get repeatOnDays => 'या दिवशी';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'दिवस', one: 'दिवस');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'आठवडे', one: 'आठवडा');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'महिने', one: 'महिना');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'वर्षे', one: 'वर्ष');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वेळा नंतर संपते',
      one: '1 वेळा नंतर संपते',
    );
    return '$_temp0';
  }

  @override
  String get repeatEndsNever => 'कधीच संपत नाही';

  @override
  String get reminderAtTime => 'कार्यक्रमाच्या वेळी';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes मिनिटे आधी',
      one: '1 मिनिट आधी',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours तास आधी',
      one: '1 तास आधी',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 दिवस आधी';

  @override
  String get projectsTitle => 'प्रकल्प';

  @override
  String get projectsEmptyTitle => 'अजून प्रकल्प नाहीत';

  @override
  String get projectsEmptyMessage => 'संबंधित कार्ये, टिपा आणि लक्षाचा वेळ एकत्र गटबद्ध करा.';

  @override
  String get projectNew => 'नवीन प्रकल्प';

  @override
  String get projectEdit => 'प्रकल्प संपादित करा';

  @override
  String get projectName => 'नाव';

  @override
  String get projectDescription => 'वर्णन';

  @override
  String get projectGoal => 'उद्दिष्ट';

  @override
  String get projectDeadline => 'अंतिम मुदत';

  @override
  String get projectColor => 'रंग';

  @override
  String get projectIcon => 'चिन्ह';

  @override
  String get projectProgress => 'प्रगती';

  @override
  String projectTasksDone(int done, int total) {
    return '$total पैकी $done कार्ये पूर्ण';
  }

  @override
  String get projectFocusTime => 'लक्षाचा वेळ';

  @override
  String get projectArchived => 'संग्रहित प्रकल्प';

  @override
  String get projectShowArchived => 'संग्रहित दाखवा';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिवस बाकी',
      one: '1 दिवस बाकी',
      zero: 'आज अंतिम मुदत',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'अंतिम मुदत उलटली';

  @override
  String get calendarTitle => 'दिनदर्शिका';

  @override
  String get calendarMonth => 'महिना';

  @override
  String get calendarWeek => 'आठवडा';

  @override
  String get calendarDay => 'दिवस';

  @override
  String get calendarToday => 'आज';

  @override
  String get calendarPrevious => 'मागील';

  @override
  String get calendarNext => 'पुढील';

  @override
  String get calendarNoEvents => 'काहीही नियोजित नाही';

  @override
  String get calendarAllDay => 'संपूर्ण दिवस';

  @override
  String get eventNew => 'नवीन कार्यक्रम';

  @override
  String get eventEdit => 'कार्यक्रम संपादित करा';

  @override
  String get eventTitleHint => 'कार्यक्रमाचे शीर्षक';

  @override
  String get eventStarts => 'सुरू';

  @override
  String get eventEnds => 'समाप्त';

  @override
  String get eventKind => 'प्रकार';

  @override
  String get eventKindEvent => 'कार्यक्रम';

  @override
  String get eventKindTimeBlock => 'वेळ खंड';

  @override
  String get eventKindFocus => 'लक्ष सत्र';

  @override
  String get eventKindGoal => 'वैयक्तिक उद्दिष्ट';

  @override
  String get eventDescription => 'तपशील';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्यक्रमांशी आच्छादित',
      one: '1 कार्यक्रमाशी आच्छादित',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'या दिवशी वेळापत्रक संघर्ष';

  @override
  String get calendarTaskDue => 'कार्याची मुदत';

  @override
  String get calendarDragHint => 'पुन्हा नियोजित करण्यासाठी कार्यक्रम दीर्घकाळ दाबून ओढा';

  @override
  String get calendarRescheduled => 'कार्यक्रम हलवला';

  @override
  String get calendarScheduleTask => 'वेळ खंड म्हणून नियोजित करा';

  @override
  String get notesTitle => 'टिपा';

  @override
  String get notesViewAll => 'सर्व';

  @override
  String get notesViewPinned => 'पिन केलेल्या';

  @override
  String get notesViewFavorites => 'आवडत्या';

  @override
  String get notesViewArchived => 'संग्रहित';

  @override
  String get notesTags => 'टॅग';

  @override
  String get notesNewNotebook => 'नवीन वही';

  @override
  String get notesNoNotebook => 'वही नाही';

  @override
  String get notesEmptyTitle => 'कोरा कॅनव्हास';

  @override
  String get notesEmptyMessage => 'कल्पना, बैठकीच्या टिपा आणि ज्ञान नोंदवा.';

  @override
  String get noteTitleHint => 'शीर्षक';

  @override
  String get noteBodyHint =>
      'लिहायला सुरुवात करा… टॅगसाठी # आणि टिपा जोडण्यासाठी [[शीर्षक]] वापरा.';

  @override
  String get noteFavorite => 'आवडती';

  @override
  String get noteUnfavorite => 'आवडत्यांतून काढा';

  @override
  String get noteMoveTo => 'वहीत हलवा';

  @override
  String get noteBacklinks => 'इथून जोडलेले';

  @override
  String get noteLinkedTasks => 'जोडलेली कार्ये';

  @override
  String get noteLinkTask => 'कार्य जोडा';

  @override
  String get noteLinkProject => 'प्रकल्प';

  @override
  String get noteFormatHeading => 'शीर्षक';

  @override
  String get noteFormatBold => 'ठळक';

  @override
  String get noteFormatItalic => 'तिरपे';

  @override
  String get noteFormatList => 'बुलेट सूची';

  @override
  String get noteFormatChecklist => 'तपासणी सूची';

  @override
  String get noteFormatLink => 'दुवा';

  @override
  String noteEdited(String time) {
    return '$time संपादित';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शब्द',
      one: '1 शब्द',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'फ्लॅशकार्ड';

  @override
  String get flashEmptyTitle => 'तुमचा पहिला संच तयार करा';

  @override
  String get flashEmptyMessage =>
      'अंतरित पुनरावृत्ती प्रत्येक कार्ड तुम्ही विसरण्याच्या अगदी आधी दाखवते.';

  @override
  String get deckNew => 'नवीन संच';

  @override
  String get deckEdit => 'संच संपादित करा';

  @override
  String get deckName => 'संचाचे नाव';

  @override
  String get deckDescription => 'वर्णन';

  @override
  String get deckDailyNew => 'दररोज नवीन कार्ड';

  @override
  String get deckDailyReview => 'दैनिक उजळणी उद्दिष्ट';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड',
      one: '1 कार्ड',
      zero: 'कार्ड नाहीत',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'देय';

  @override
  String get deckNewCards => 'नवीन';

  @override
  String get deckMature => 'परिपक्व';

  @override
  String get deckStudy => 'अभ्यास करा';

  @override
  String get deckNothingDue => 'सध्या काहीही देय नाही. नंतर परत या.';

  @override
  String get deckEmptyCards => 'शिकायला सुरुवात करण्यासाठी कार्ड जोडा.';

  @override
  String get cardNew => 'नवीन कार्ड';

  @override
  String get cardEdit => 'कार्ड संपादित करा';

  @override
  String get cardFront => 'पुढची बाजू';

  @override
  String get cardBack => 'मागची बाजू';

  @override
  String get cardFrontHint => 'प्रश्न किंवा संज्ञा';

  @override
  String get cardBackHint => 'उत्तर किंवा व्याख्या';

  @override
  String get cardTags => 'टॅग';

  @override
  String get cardAddAnother => 'जतन करा आणि आणखी जोडा';

  @override
  String get reviewShowAnswer => 'उत्तर दाखवा';

  @override
  String get reviewAgain => 'पुन्हा';

  @override
  String get reviewHard => 'कठीण';

  @override
  String get reviewGood => 'चांगले';

  @override
  String get reviewEasy => 'सोपे';

  @override
  String reviewProgress(int done, int total) {
    return '$total पैकी $done';
  }

  @override
  String get reviewFinishedTitle => 'सत्र पूर्ण झाले';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'तुम्ही $count कार्डची उजळणी केली.',
      one: 'तुम्ही 1 कार्डची उजळणी केली.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'उत्तर पाहण्यासाठी टॅप करा';

  @override
  String get importCardsTitle => 'कार्ड आयात करा';

  @override
  String get importCardsHint =>
      'प्रत्येक ओळीत एक कार्ड पेस्ट करा (पुढची आणि मागची बाजू टॅब किंवा अर्धविरामाने वेगळी), किंवा फाइल निवडा: Excel (.xlsx), CSV, Anki संच (.apkg) किंवा निर्यात केलेला संच.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड आयात झाले',
      one: '1 कार्ड आयात झाले',
      zero: 'कोणतेही कार्ड आयात झाले नाही',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'ही सामग्री आयात करता आली नाही.';

  @override
  String get exportCopied => 'संच निर्यात केला';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मि',
      one: '1 मि',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवस',
      one: '1 दिवस',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'उद्दिष्टे';

  @override
  String get goalsEmptyTitle => 'काहीतरी साध्य करा';

  @override
  String get goalsEmptyMessage =>
      'दैनिक, साप्ताहिक, मासिक किंवा दीर्घकालीन उद्दिष्टे ठरवा आणि खरी प्रगती ट्रॅक करा.';

  @override
  String get goalNew => 'नवीन उद्दिष्ट';

  @override
  String get goalEdit => 'उद्दिष्ट संपादित करा';

  @override
  String get goalTitleHint => 'तुम्हाला काय साध्य करायचे आहे?';

  @override
  String get goalPeriod => 'कालावधी';

  @override
  String get goalPeriodDaily => 'दैनिक';

  @override
  String get goalPeriodWeekly => 'साप्ताहिक';

  @override
  String get goalPeriodMonthly => 'मासिक';

  @override
  String get goalPeriodLongTerm => 'दीर्घकालीन';

  @override
  String get goalTarget => 'लक्ष्य';

  @override
  String get goalUnit => 'एकक';

  @override
  String get goalUnitHint => 'उदा. पाने, किमी, तास';

  @override
  String get goalStatusActive => 'सक्रिय';

  @override
  String get goalStatusPaused => 'विराम दिलेले';

  @override
  String get goalStatusAchieved => 'साध्य झाले';

  @override
  String get goalPause => 'उद्दिष्टाला विराम द्या';

  @override
  String get goalResume => 'उद्दिष्ट पुन्हा सुरू करा';

  @override
  String get goalMarkAchieved => 'साध्य म्हणून चिन्हांकित करा';

  @override
  String goalProgressOf(String current, String target) {
    return '$target पैकी $current';
  }

  @override
  String get goalLogAmount => 'प्रमाण';

  @override
  String get goalLogNote => 'टीप (पर्यायी)';

  @override
  String get goalHistory => 'इतिहास';

  @override
  String get goalNoHistory => 'नोंदवलेली प्रगती इथे दिसेल';

  @override
  String get goalLinkedTasks => 'जोडलेली कार्ये';

  @override
  String get goalLinkedTasksHint =>
      'प्रत्येक पूर्ण झालेले जोडलेले कार्य या उद्दिष्टासाठी 1 म्हणून मोजले जाते.';

  @override
  String get goalThisPeriod => 'हा कालावधी';

  @override
  String get habitsTitle => 'सवयी';

  @override
  String get habitsEmptyTitle => 'दररोज छोटी पावले';

  @override
  String get habitsEmptyMessage => 'सवय तयार करा आणि ती केल्यावर चिन्हांकित करा.';

  @override
  String get habitNew => 'नवीन सवय';

  @override
  String get habitEdit => 'सवय संपादित करा';

  @override
  String get habitNameHint => 'उदा. 20 पाने वाचा';

  @override
  String get habitDays => 'वेळापत्रक';

  @override
  String get habitEveryDay => 'दररोज';

  @override
  String get habitTargetPerDay => 'दिवसातून किती वेळा';

  @override
  String get habitReminder => 'दैनिक स्मरणपत्र';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवसांची सलगता',
      one: '1 दिवसाची सलगता',
      zero: 'सलगता नाही',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'सर्वोत्तम सलगता';

  @override
  String get habitCurrentStreak => 'सध्याची सलगता';

  @override
  String get habitConsistency => 'सातत्य';

  @override
  String get habitLast90 => 'मागील 90 दिवस';

  @override
  String get habitPaused => 'विराम दिलेली';

  @override
  String get habitPause => 'सवयीला विराम द्या';

  @override
  String get habitResume => 'सवय पुन्हा सुरू करा';

  @override
  String get habitDoneToday => 'आज केले';

  @override
  String habitCountToday(int count, int target) {
    return 'आज $count / $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '$name चिन्हांकित करा';
  }

  @override
  String get habitNotScheduledToday => 'आज नियोजित नाही';

  @override
  String get analyticsTitle => 'अंतर्दृष्टी';

  @override
  String get rangeWeek => '7 दिवस';

  @override
  String get rangeMonth => '30 दिवस';

  @override
  String get rangeQuarter => '90 दिवस';

  @override
  String get statFocusTime => 'लक्षाचा वेळ';

  @override
  String get statSessions => 'सत्रे';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed पूर्ण · $interrupted लवकर थांबवली';
  }

  @override
  String get statTasksDone => 'पूर्ण झालेली कार्ये';

  @override
  String get statCompletionRate => 'वेळेवर पूर्णता';

  @override
  String get statHabitConsistency => 'सवयींचे सातत्य';

  @override
  String get statRetention => 'कार्ड स्मरण';

  @override
  String get statReviews => 'उजळण्या';

  @override
  String get statActiveGoals => 'सक्रिय उद्दिष्टे';

  @override
  String get statEstimated => 'अंदाजे पूर्ण झालेले काम';

  @override
  String get statEstimatedNote => 'मोजलेल्या वेळेवर नव्हे, तर तुमच्या अंदाजांवर आधारित';

  @override
  String get statMeasuredNote => 'लक्ष सत्रांवरून मोजलेले';

  @override
  String get chartFocusByDay => 'दररोज लक्षाची मिनिटे';

  @override
  String get chartTasksByDay => 'दररोज पूर्ण झालेली कार्ये';

  @override
  String get chartTimeByProject => 'प्रकल्पानुसार वेळ';

  @override
  String get chartProjectProgress => 'प्रकल्पांची प्रगती';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: एकूण $total, सर्वोत्तम दिवस $best';
  }

  @override
  String get analyticsNoData => 'अजून पुरेसा डेटा नाही';

  @override
  String get analyticsUnassigned => 'नियुक्त नाही';

  @override
  String get searchHint => 'सर्वत्र शोधा…';

  @override
  String get searchRecent => 'अलीकडील शोध';

  @override
  String get searchClearRecent => 'अलीकडील शोध साफ करा';

  @override
  String searchNoResults(String query) {
    return '\"$query\" साठी कोणतेही परिणाम नाहीत';
  }

  @override
  String get searchStartTyping =>
      'कार्ये, टिपा, कार्ड, उद्दिष्टे, कार्यक्रम आणि अधिक यांमध्ये शोधा. शोध याच डिव्हाइसवर राहतो.';

  @override
  String get searchCatTask => 'कार्ये';

  @override
  String get searchCatProject => 'प्रकल्प';

  @override
  String get searchCatNote => 'टिपा';

  @override
  String get searchCatFlashcard => 'फ्लॅशकार्ड';

  @override
  String get searchCatDeck => 'संच';

  @override
  String get searchCatGoal => 'उद्दिष्टे';

  @override
  String get searchCatHabit => 'सवयी';

  @override
  String get searchCatEvent => 'कार्यक्रम';

  @override
  String get searchCatSession => 'सत्रे';

  @override
  String get searchAll => 'सर्व';

  @override
  String get assistantTitle => 'सहाय्यक';

  @override
  String get assistantIntro =>
      'तुमच्या डिव्हाइसवर चालणारी नियोजन मदत. हवे असल्यास, सारांश आणि निर्मितीसाठी तुम्ही निवडलेला AI प्रदाता जोडा.';

  @override
  String get assistantOnDevice => 'डिव्हाइसवर';

  @override
  String get assistantCloud => 'AI प्रदाता';

  @override
  String get assistantPlanDay => 'माझ्या दिवसाचे नियोजन करा';

  @override
  String get assistantPlanDayDesc =>
      'खुली कार्ये तातडी, प्राधान्य आणि अंदाजानुसार क्रमाने लावून तुमच्या कार्यक्रमांमध्ये बसवते.';

  @override
  String get assistantExtractTasks => 'टिपेतून कार्ये काढा';

  @override
  String get assistantExtractTasksDesc =>
      'टिपेतील तपासणी सूचीचे आयटम आणि कृती ओळी शोधून त्यांना कार्यांत बदलते.';

  @override
  String get assistantMakeCards => 'टिपेतून फ्लॅशकार्ड तयार करा';

  @override
  String get assistantMakeCardsDesc =>
      '\"संज्ञा: व्याख्या\" आणि प्रश्न/उत्तर ओळी कार्डमध्ये बदलते.';

  @override
  String get assistantSummarize => 'टिपेचा सारांश करा';

  @override
  String get assistantSummarizeDesc =>
      'AI प्रदाता आवश्यक आहे. तुम्ही पुष्टी केल्यावरच टीप पाठवली जाते.';

  @override
  String get assistantWorkload => 'कामाच्या भाराचा आढावा';

  @override
  String get assistantWorkloadDesc =>
      'अंदाजे कामाची या आठवड्यातील तुमच्या मोकळ्या वेळेशी तुलना करते.';

  @override
  String get assistantPlanEmpty => 'नियोजनासाठी कोणतेही खुले कार्य नाही. मोकळ्या वेळेचा आनंद घ्या.';

  @override
  String assistantPlanCapacity(String time) {
    return 'आजचा मोकळा लक्षाचा वेळ: $time';
  }

  @override
  String get assistantPlanOverflow => 'ही आज बसणार नाहीत कदाचित:';

  @override
  String get assistantChooseNote => 'टीप निवडा';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ये सापडली',
      one: '1 कार्य सापडले',
      zero: 'या टिपेत कार्ये सापडली नाहीत',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count फ्लॅशकार्ड सापडले',
      one: '1 फ्लॅशकार्ड सापडले',
      zero: 'या टिपेत फ्लॅशकार्ड सापडले नाहीत',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'संच निवडा';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'अंदाजे काम: $estimated. मोकळा वेळ: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'उपलब्ध वेळेपेक्षा जास्त नियोजन केले आहे. कमी प्राधान्याची कार्ये हलवण्याचा विचार करा.';

  @override
  String get assistantWorkloadOk => 'तुमचे नियोजन उपलब्ध वेळेत बसते.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count खुल्या कार्यांना अंदाज नाही.',
      one: '1 खुल्या कार्याला अंदाज नाही.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI प्रदाता';

  @override
  String get assistantProviderOff =>
      'कोणताही प्रदाता जोडलेला नाही. डिव्हाइसवरील साधने चालू राहतात.';

  @override
  String assistantProviderOn(String host) {
    return '$host शी जोडलेले';
  }

  @override
  String get assistantEndpoint => 'API एंडपॉइंट (HTTPS)';

  @override
  String get assistantModel => 'मॉडेल';

  @override
  String get assistantApiKey => 'API की';

  @override
  String get assistantApiKeyStored => 'या डिव्हाइसवर सुरक्षितपणे साठवले जाते';

  @override
  String get assistantHttpsOnly => 'फक्त HTTPS एंडपॉइंटना परवानगी आहे';

  @override
  String get assistantConsentTitle => 'ही सामग्री तुमच्या AI प्रदात्याला पाठवायची?';

  @override
  String assistantConsentBody(String host) {
    return 'निवडलेल्या टिपेचा मजकूर हे डिव्हाइस सोडेल आणि $host द्वारे प्रक्रिया केली जाईल. दुसरे काहीही पाठवले जात नाही.';
  }

  @override
  String get assistantConsentAlways => 'या प्रदात्यासाठी पुन्हा विचारू नका';

  @override
  String get assistantSend => 'पाठवा';

  @override
  String get assistantUnavailable =>
      'AI प्रदात्यापर्यंत पोहोचता आले नाही. नंतर पुन्हा प्रयत्न करा.';

  @override
  String get assistantDisabledTitle => 'सहाय्यक बंद आहे';

  @override
  String get assistantDisabledMessage =>
      'नियोजन साधने वापरण्यासाठी ते सुरू करा. तुम्ही प्रदाता जोडून प्रत्येक विनंतीची पुष्टी केल्याशिवाय कोणताही डेटा डिव्हाइस सोडत नाही.';

  @override
  String get assistantSummaryTitle => 'सारांश';

  @override
  String get assistantRemoveProvider => 'प्रदाता काढा';

  @override
  String get settingsTitle => 'सेटिंग्ज';

  @override
  String get settingsGeneral => 'सामान्य';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get settingsLanguageSystem => 'डिव्हाइसची भाषा';

  @override
  String get settingsAppearance => 'स्वरूप';

  @override
  String get settingsTheme => 'थीम';

  @override
  String get themeLight => 'हलकी';

  @override
  String get themeDark => 'गडद';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get settingsReduceMotion => 'हालचाल कमी करा';

  @override
  String get settingsReduceMotionDesc => 'ॲनिमेशन आणि हलणारी पार्श्वभूमी कमी करा';

  @override
  String get settingsFocus => 'लक्ष टायमर';

  @override
  String get settingsWorkLength => 'लक्षाचा कालावधी';

  @override
  String get settingsShortBreak => 'छोटा विराम';

  @override
  String get settingsLongBreak => 'मोठा विराम';

  @override
  String get settingsLongBreakEvery => 'इतक्यानंतर मोठा विराम';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सत्रे',
      one: '1 सत्र',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'विराम आपोआप सुरू करा';

  @override
  String get settingsSound => 'पूर्णता ध्वनी';

  @override
  String get settingsDailyFocusTarget => 'दैनिक लक्ष उद्दिष्ट';

  @override
  String get settingsWeeklyFocusTarget => 'साप्ताहिक लक्ष उद्दिष्ट';

  @override
  String get settingsNotifications => 'सूचना';

  @override
  String get settingsNotificationsEnable => 'स्मरणपत्रांना परवानगी द्या';

  @override
  String get settingsQuietHours => 'शांत तास';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'सवय, उद्दिष्ट आणि उजळणी स्मरणपत्रे $start–$end दरम्यान शांत असतात';
  }

  @override
  String get settingsReviewReminder => 'फ्लॅशकार्ड उजळणी स्मरणपत्र';

  @override
  String get settingsPermissionDenied => 'सिस्टम सेटिंग्जमध्ये सूचना अवरोधित आहेत.';

  @override
  String get settingsPrivacy => 'गोपनीयता आणि डेटा';

  @override
  String get settingsPrivacyStatement =>
      'तुमचा डेटा फक्त या डिव्हाइसवर साठवला जातो आणि कूटबद्ध असतो. खाते, विश्लेषण किंवा ट्रॅकिंग नाही.';

  @override
  String get settingsBackup => 'कूटबद्ध बॅकअप तयार करा';

  @override
  String get settingsBackupDesc => 'तुम्ही निवडलेल्या पासवर्डने संरक्षित';

  @override
  String get settingsRestore => 'बॅकअपमधून पुनर्संचयित करा';

  @override
  String get settingsRestoreDesc => 'या डिव्हाइसवरील सर्व डेटा बदलतो';

  @override
  String get settingsErase => 'सर्व डेटा मिटवा';

  @override
  String get settingsEraseDesc => 'या डिव्हाइसवरील सर्व काही कायमचे काढा';

  @override
  String get settingsEraseConfirmTitle => 'सर्व डेटा मिटवायचा?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'सर्व कार्ये, टिपा, कार्ड, उद्दिष्टे, सवयी, कार्यक्रम आणि सत्रे कायमची हटवली जातील. पुष्टी करण्यासाठी $word टाइप करा.';
  }

  @override
  String get settingsEraseWord => 'मिटवा';

  @override
  String get settingsErased => 'सर्व डेटा मिटवला';

  @override
  String get backupPassword => 'बॅकअप पासवर्ड';

  @override
  String get backupPasswordConfirm => 'पासवर्डची पुष्टी करा';

  @override
  String backupPasswordHint(int count) {
    return 'किमान $count वर्ण. हरवल्यास परत मिळवता येत नाही.';
  }

  @override
  String get backupPasswordMismatch => 'पासवर्ड जुळत नाहीत';

  @override
  String get backupPasswordShort => 'पासवर्ड खूप लहान आहे';

  @override
  String get backupCreating => 'बॅकअप कूटबद्ध होत आहे…';

  @override
  String get backupCreated => 'बॅकअप जतन करण्यासाठी तयार';

  @override
  String get backupRestoring => 'पडताळणी आणि पुनर्संचयन सुरू…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आयटम पुनर्संचयित केले',
      one: '1 आयटम पुनर्संचयित केला',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'चुकीचा पासवर्ड, किंवा फाइल बदलली आहे.';

  @override
  String get backupNotABackup => 'ही फाइल Deep Focus बॅकअप नाही.';

  @override
  String get backupCorrupted => 'बॅकअप फाइल खराब झाली आहे.';

  @override
  String get backupNewer => 'हा बॅकअप ॲपच्या नवीन आवृत्तीने तयार केला आहे. आधी अपडेट करा.';

  @override
  String get backupRestoreConfirmTitle => 'सर्व डेटा बदलायचा?';

  @override
  String get backupRestoreConfirmBody =>
      'सध्या या डिव्हाइसवर असलेले सर्व काही बॅकअपने बदलले जाईल. पुनर्संचयन अयशस्वी झाल्यास काहीही बदलणार नाही.';

  @override
  String get settingsAbout => 'माहिती';

  @override
  String settingsVersion(String version) {
    return 'आवृत्ती $version';
  }

  @override
  String get settingsLicenses => 'मुक्त स्रोत परवाने';

  @override
  String get settingsAssistant => 'सहाय्यक';

  @override
  String get settingsAssistantEnable => 'सहाय्यक सक्षम करा';

  @override
  String get settingsDashboard => 'मुख्यपृष्ठ विभाग';

  @override
  String get settingsTrash => 'कचरापेटी';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes मि';
  }

  @override
  String get trashEmpty => 'कचरापेटी रिकामी आहे';

  @override
  String get trashHint => 'हटवलेले आयटम तुम्ही काढेपर्यंत इथे राहतात.';

  @override
  String get trashTasks => 'कार्ये';

  @override
  String get trashNotes => 'टिपा';

  @override
  String get onboardWelcomeTitle => 'भविष्यातील तुमच्या कार्यक्षेत्रात स्वागत आहे';

  @override
  String get onboardWelcomeBody =>
      'कार्ये, लक्ष, दिनदर्शिका, टिपा, फ्लॅशकार्ड, उद्दिष्टे आणि सवयी — एकत्र, सुंदर आणि साधे.';

  @override
  String get onboardPrivateTitle => 'रचनेतच खासगी';

  @override
  String get onboardPrivateBody =>
      'सर्व काही या डिव्हाइसवर, कूटबद्ध स्वरूपात राहते. खाते नाही. ट्रॅकिंग नाही. नियंत्रण तुमच्या हातात.';

  @override
  String get onboardLanguageTitle => 'तुमची भाषा निवडा';

  @override
  String get onboardNotifTitle => 'सौम्य स्मरणपत्रे';

  @override
  String get onboardNotifBody =>
      'कार्य स्मरणपत्रे आणि लक्ष सूचनांसाठी सूचनांना परवानगी द्या. हे तुम्ही कधीही बदलू शकता.';

  @override
  String get onboardGetStarted => 'सुरू करा';

  @override
  String onboardStep(int current, int total) {
    return 'पायरी $current / $total';
  }

  @override
  String get notifChannelReminders => 'स्मरणपत्रे';

  @override
  String get notifChannelRemindersDesc => 'कार्य, कार्यक्रम, सवय आणि उद्दिष्ट स्मरणपत्रे';

  @override
  String get notifChannelFocus => 'लक्ष टायमर';

  @override
  String get notifChannelFocusDesc => 'लक्ष सत्र किंवा विराम संपल्यावर सूचना';

  @override
  String get notifTaskTitle => 'कार्य स्मरणपत्र';

  @override
  String get notifEventTitle => 'आगामी कार्यक्रम';

  @override
  String notifEventBody(String title, String time) {
    return '$title, $time वाजता';
  }

  @override
  String get notifFocusDoneTitle => 'लक्ष सत्र पूर्ण झाले';

  @override
  String get notifFocusDoneBody => 'उत्तम काम. विरामाची वेळ.';

  @override
  String get notifBreakDoneTitle => 'विराम संपला';

  @override
  String get notifBreakDoneBody => 'पुढील लक्ष सत्रासाठी तयार?';

  @override
  String get notifHabitTitle => 'सवय स्मरणपत्र';

  @override
  String get notifReviewTitle => 'फ्लॅशकार्ड तयार आहेत';

  @override
  String get notifReviewBody => 'छोटी उजळणी तुमची स्मृती मजबूत ठेवते.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ता $minutes मि';
  }

  @override
  String durationHours(int hours) {
    return '$hours ता';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes मि';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'सो,मं,बु,गु,शु,श,र';

  @override
  String a11yProgress(int value) {
    return 'प्रगती $value टक्के';
  }

  @override
  String a11yPriority(String level) {
    return 'प्राधान्य: $level';
  }

  @override
  String a11yColor(int index) {
    return 'रंग $index';
  }

  @override
  String get analyticsRangeLabel => 'कालमर्यादा';

  @override
  String get analyticsRefresh => 'रीफ्रेश करा';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'मुदत असलेल्या $total पैकी $done कार्ये वेळेवर पूर्ण';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total पैकी $done कार्ये पूर्ण';
  }

  @override
  String get analyticsNoProjects => 'सक्रिय प्रकल्प नाहीत';

  @override
  String get analyticsNoFocus => 'या कालावधीत लक्ष सत्रे नाहीत';

  @override
  String get analyticsHabitsNone => 'सक्रिय सवयी नाहीत';

  @override
  String get analyticsRetentionNote => 'लक्षात राहिलेल्या परिपक्व कार्डचा वाटा';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'मोकळा वेळ कामाच्या दिवशी ($days) $start–$end दरम्यान, वेळ ठरलेले कार्यक्रम वजा करून मोजला जातो. अंदाजे काम म्हणजे पुढील 7 दिवसांत मुदत असलेल्या खुल्या कार्यांच्या अंदाजांची बेरीज.';
  }

  @override
  String get assistantWorkdaysMonFri => 'सोमवार–शुक्रवार';

  @override
  String get assistantWorkdaysSunThu => 'रविवार–गुरुवार';

  @override
  String get assistantWorkloadDayOff => 'सुट्टीचा दिवस';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated नियोजित · $free मोकळा';
  }

  @override
  String assistantPlanRule(String end) {
    return 'आतापासून $end पर्यंत, आजच्या कार्यक्रमांभोवती नियोजित. आधी मुदत उलटलेली कार्ये, नंतर प्राधान्य, अंतिम तारीख आणि अंदाज.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'वेळ खंड म्हणून नियोजित करा';

  @override
  String get assistantScheduleConfirmTitle => 'तुमच्या दिनदर्शिकेत वेळ खंड जोडायचे?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आजच्या दिनदर्शिकेत $count वेळ खंड जोडले जातील.',
      one: 'आजच्या दिनदर्शिकेत 1 वेळ खंड जोडला जाईल.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वेळ खंड जोडले',
      one: '1 वेळ खंड जोडला',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'आधीच तुमच्या दिनदर्शिकेत';

  @override
  String get assistantPlanTimeline => 'आज बसते';

  @override
  String get assistantNoEstimate => 'यांचे नियोजन करण्यासाठी अंदाज जोडा';

  @override
  String get assistantNoNotes => 'अजून टिपा नाहीत. आधी टीप लिहा.';

  @override
  String get assistantNoteEmpty => 'ही टीप रिकामी आहे.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ये तयार केली',
      one: '1 कार्य तयार केले',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड तयार केले',
      one: '1 कार्ड तयार केले',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count तयार करा',
      one: '1 तयार करा',
      zero: 'काहीही निवडलेले नाही',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'ओळखले जाते: न टिकलेले \"- [ ]\" चेकबॉक्स आणि TODO: किंवा To do: ने सुरू होणाऱ्या ओळी';

  @override
  String get assistantCardsHint =>
      'ओळखले जाते: \"संज्ञा: व्याख्या\", \"संज्ञा — व्याख्या\" आणि Q:/A: ओळींच्या जोड्या';

  @override
  String get assistantProviderHint =>
      'OpenAI शी सुसंगत कोणतीही सेवा वापरा. की या डिव्हाइसच्या सुरक्षित संग्रहात राहते आणि बॅकअपमध्ये कधीही समाविष्ट केली जात नाही.';

  @override
  String get assistantEndpointHelp => 'उदाहरणार्थ https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'साठवलेली की ठेवण्यासाठी रिकामे ठेवा';

  @override
  String get assistantApiKeyRequired => 'API की टाका';

  @override
  String get assistantProviderSaved => 'प्रदाता जतन केला';

  @override
  String get assistantProviderRemoved => 'प्रदाता काढला आणि की हटवली';

  @override
  String get assistantRemoveProviderConfirm =>
      'प्रदाता काढून साठवलेली API की या डिव्हाइसवरून हटवायची?';

  @override
  String get assistantAskEveryTime => 'प्रत्येक विनंतीपूर्वी विचारा';

  @override
  String get assistantSummarizing => 'सारांश होत आहे…';

  @override
  String assistantSummaryNote(String host) {
    return '$host ने तयार केले. विसंबून राहण्यापूर्वी तपासा.';
  }

  @override
  String get assistantCopy => 'कॉपी करा';

  @override
  String get assistantCopied => 'कॉपी केले';

  @override
  String get assistantConfigure => 'प्रदाता सेट करा';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'या मालिकेतील सर्व कार्यक्रम हलवले';

  @override
  String get calendarEventReminder => 'स्मरणपत्र';

  @override
  String get calendarEventRepeat => 'पुनरावृत्ती';

  @override
  String get calendarEventColor => 'रंग';

  @override
  String get calendarDefaultColor => 'प्रकाराचा रंग वापरा';

  @override
  String get calendarEventLinkedTask => 'जोडलेले कार्य';

  @override
  String get calendarEventNoTask => 'जोडलेले कार्य नाही';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्यक्रम',
      one: '1 कार्यक्रम',
      zero: 'कार्यक्रम नाहीत',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्यांची मुदत',
      one: '1 कार्याची मुदत',
      zero: 'मुदत असलेली कार्ये नाहीत',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'या दिवसाचे नियोजन करण्यासाठी कार्यक्रम किंवा वेळ खंड जोडा.';

  @override
  String get calendarNow => 'सध्याची वेळ';

  @override
  String get calendarRecurring => 'पुनरावृत्ती होते';

  @override
  String get calendarEventNotFound => 'हा कार्यक्रम आता अस्तित्वात नाही';

  @override
  String get calendarEventLocalTime => 'वेळा तुमच्या डिव्हाइसच्या टाइम झोनमध्ये दाखवल्या जातात';

  @override
  String get calendarEventDeleted => 'कार्यक्रम कचरापेटीत हलवला';

  @override
  String get calendarConflictMarker => 'दुसऱ्या कार्यक्रमाशी आच्छादित';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'बदल या मालिकेतील प्रत्येक कार्यक्रमाला लागू होतात';

  @override
  String get calendarDragHintSeries => 'पुनरावृत्ती होणारा कार्यक्रम ओढल्यास संपूर्ण मालिका हलते';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, कार्याची मुदत';
  }

  @override
  String get startupErrorTitle => 'तुमचा डेटा उघडता आला नाही';

  @override
  String get startupErrorLocked =>
      'या डिव्हाइसच्या डेटाची कूटबद्धीकरण की उपलब्ध नाही. काहीही हटवले गेले नाही. डिव्हाइस रीस्टार्ट केल्याने अनेकदा मदत होते. तुम्ही अलीकडे डिव्हाइस पुनर्संचयित केले असल्यास, कूटबद्ध बॅकअपमधून डेटा पुनर्संचयित करा.';

  @override
  String get startupErrorCipher =>
      'हे डिव्हाइस ॲपला आवश्यक असलेल्या कूटबद्ध संग्रहाला समर्थन देत नाही. काहीही कूटबद्धीकरणाशिवाय जतन केले गेले नाही.';

  @override
  String get startupErrorRetry => 'पुन्हा प्रयत्न करा';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड उजळणीसाठी देय',
      one: '1 कार्ड उजळणीसाठी देय',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count देय';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count नवीन';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'परिपक्व कार्ड: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 किंवा अधिक टाका';

  @override
  String get flashcardsSearchCards => 'कार्ड शोधा';

  @override
  String get flashcardsSearchEmpty => 'शोधाशी जुळणारे कार्ड नाहीत';

  @override
  String get flashcardsCardAdded => 'कार्ड जोडले';

  @override
  String flashcardsCardDueOn(String date) {
    return 'देय $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'क्लिपबोर्डवर कॉपी करा';

  @override
  String get flashcardsExportTitle => 'संच निर्यात करा';

  @override
  String get flashcardsDeleteDeck => 'संच हटवा';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, पुढील उजळणी $interval मध्ये';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'प्रश्न: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'उत्तर: $text';
  }

  @override
  String get flashcardsShowQuestion => 'प्रश्न दाखवा';

  @override
  String get flashcardsImportField => 'आयात करायची कार्ड';

  @override
  String get flashcardsNothingToStudy => 'अभ्यासासाठी काहीही नाही';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'अभ्यासासाठी $count कार्ड तयार',
      one: 'अभ्यासासाठी 1 कार्ड तयार',
      zero: 'तयार कार्ड नाहीत',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'रेटिंगनुसार';

  @override
  String get flashcardsDeckNotFound => 'हा संच आता उपलब्ध नाही.';

  @override
  String get focusSessionDeleted => 'सत्र हटवले';

  @override
  String get focusDeleteConfirm =>
      'हे सत्र तुमच्या इतिहासातून हटवायचे? त्याचा वेळ यापुढे तुमच्या उद्दिष्टांमध्ये मोजला जाणार नाही.';

  @override
  String get focusUnlinkTask => 'जोडलेले कार्य काढा';

  @override
  String get focusNoteHint => 'तुम्ही कशावर काम केले?';

  @override
  String get focusModeLabel => 'टायमर मोड';

  @override
  String focusUpNext(String phase) {
    return 'पुढे: $phase';
  }

  @override
  String get focusStopwatchHint => 'तुम्ही थांबवेपर्यंत वर मोजते.';

  @override
  String get focusOpenHint => 'वेळेची मर्यादा नाही. पूर्ण झाल्यावर थांबवा.';

  @override
  String get focusNotificationsDisabledInApp =>
      'सेटिंग्जमध्ये स्मरणपत्रे बंद आहेत. सत्र संपल्यावर तुम्हाला सूचित केले जाणार नाही.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'सर्व';

  @override
  String get goalsFilterPeriod => 'कालावधी फिल्टर';

  @override
  String get goalsFilterStatus => 'स्थिती फिल्टर';

  @override
  String get goalsEmptyFiltered => 'या फिल्टरशी जुळणारी उद्दिष्टे नाहीत';

  @override
  String goalsDueOn(String date) {
    return 'देय $date';
  }

  @override
  String get goalsDeadline => 'अंतिम मुदत (पर्यायी)';

  @override
  String get goalsNoDeadline => 'अंतिम मुदत नाही';

  @override
  String get goalsSetDeadline => 'अंतिम मुदत सेट करा';

  @override
  String get goalsRemoveDeadline => 'अंतिम मुदत काढा';

  @override
  String get goalsDescription => 'वर्णन (पर्यायी)';

  @override
  String get goalsTitleLabel => 'शीर्षक';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'लक्ष्य गाठले';

  @override
  String get goalsLogged => 'प्रगती नोंदवली';

  @override
  String get goalsEntryDeleted => 'नोंद काढली';

  @override
  String get goalsDeleteEntry => 'नोंद काढा';

  @override
  String get goalsDeleted => 'उद्दिष्ट हटवले';

  @override
  String get goalsMarkActive => 'सक्रिय म्हणून चिन्हांकित करा';

  @override
  String get goalsNotFound => 'हे उद्दिष्ट आता उपलब्ध नाही';

  @override
  String get goalsLinkTask => 'कार्य जोडा';

  @override
  String get goalsNoLinkedTasks => 'अजून जोडलेली कार्ये नाहीत';

  @override
  String get goalsUnlinkTask => 'कार्याचा दुवा काढा';

  @override
  String get goalsTaskOpen => 'अजून पूर्ण नाही';

  @override
  String get goalsTaskLinked => 'कार्य जोडले';

  @override
  String get goalsTaskUnlinked => 'कार्याचा दुवा काढला';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पूर्ण झालेली जोडलेली कार्ये',
      one: '1 पूर्ण झालेले जोडलेले कार्य',
    );
    return 'या कालावधीत $_temp0 समाविष्ट';
  }

  @override
  String get goalsHistoryAllTime =>
      'मागील कालावधींच्या नोंदी इथे ठेवल्या जातात, पण फक्त त्यांच्या स्वतःच्या कालावधीत मोजल्या जातात.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'आज $total पैकी $done पूर्ण';
  }

  @override
  String get habitsNothingToday => 'आजसाठी कोणतीही सवय नियोजित नाही';

  @override
  String get habitsDecrease => 'एक चेक-इन काढा';

  @override
  String get habitsResetToday => 'आजचे रीसेट करा';

  @override
  String get habitsCheckInHint => 'समायोजित करण्यासाठी दीर्घकाळ दाबा';

  @override
  String get habitsName => 'नाव';

  @override
  String get habitsColor => 'रंग';

  @override
  String get habitsValidationDays => 'किमान एक दिवस निवडा';

  @override
  String habitsReminderAt(String time) {
    return 'दररोज $time वाजता';
  }

  @override
  String get habitsSetReminder => 'स्मरणपत्राची वेळ सेट करा';

  @override
  String get habitsRemoveReminder => 'स्मरणपत्र काढा';

  @override
  String get habitsReminderNote => 'सूचनांना परवानगी असल्यास नियोजित दिवशी स्मरणपत्रे दिसतात.';

  @override
  String get habitsArchived => 'सवय संग्रहित केली';

  @override
  String get habitsNotFound => 'ही सवय आता उपलब्ध नाही';

  @override
  String get habitsLast30 => 'मागील 30 दिवस';

  @override
  String get habitsConsistencyNone => 'अजून पुरेसा डेटा नाही';

  @override
  String get habitsCalendar => 'चेक-इन इतिहास';

  @override
  String get habitsCalendarHint => 'दुरुस्त करण्यासाठी दिवसावर टॅप करा.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $target पैकी $count';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'मागील 90 दिवसांतील चेक-इन. सातत्य $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'मागील 90 दिवसांतील चेक-इन. अजून पुरेसा डेटा नाही.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवस',
      one: '1 दिवस',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'विराम दिलेले दिवस तुमच्या सलगतेवर परिणाम करत नाहीत.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'सवय संग्रहित करा';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दिवसातून $count वेळा',
      one: 'दिवसातून एकदा',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'इतर टिपा';

  @override
  String get notesAllNotebooks => 'सर्व वह्या';

  @override
  String get notesNotebookName => 'वहीचे नाव';

  @override
  String get notesNotebookColor => 'रंग';

  @override
  String get notesDeleteNotebook => 'वही हटवा';

  @override
  String get notesDeleteNotebookMessage =>
      'वही काढली जाईल. तिच्या टिपा ठेवल्या जातील आणि सर्व वह्या अंतर्गत दिसतील.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'महत्त्वाच्या टिपा वर ठेवण्यासाठी पिन करा.';

  @override
  String get notesEmptyFavorites => 'तुम्ही आवडत्या म्हणून चिन्हांकित केलेल्या टिपा इथे दिसतात.';

  @override
  String get notesEmptyArchived => 'संग्रहित टिपा इथे दिसतात.';

  @override
  String get notesEmptyFiltered => 'या फिल्टरशी जुळणाऱ्या टिपा नाहीत.';

  @override
  String get notesArchivedSnack => 'टीप संग्रहित केली';

  @override
  String get notesUnarchivedSnack => 'टीप तुमच्या टिपांमध्ये परत हलवली';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total पैकी $done पूर्ण';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'स्वरूपण';

  @override
  String get notesWrite => 'लिहा';

  @override
  String get notesPreviewEmpty => 'पूर्वावलोकनासाठी अजून काहीही नाही.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'अजून इतर कोणत्याही टिपा इथे जोडलेल्या नाहीत. [[$title]] वापरून या टिपेशी जोडा.';
  }

  @override
  String get notesBacklinksNeedTitle => 'इतर टिपा जोडू शकतील म्हणून या टिपेला शीर्षक द्या.';

  @override
  String get notesLinkedTasksEmpty => 'या टिपेशी कोणतीही कार्ये जोडलेली नाहीत.';

  @override
  String notesLinkMissing(String title) {
    return '\"$title\" शीर्षकाची टीप अजून नाही.';
  }

  @override
  String get notesNotFound => 'ही टीप आता अस्तित्वात नाही.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'तपासणी सूची आयटम: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return '$title टीप उघडा';
  }

  @override
  String get notesTaskDone => 'पूर्ण';

  @override
  String get notifTimerDoneBody => 'तुम्ही ठरवलेली वेळ उलटून गेली आहे.';

  @override
  String get onboardingPrivatePointDevice => 'फक्त या डिव्हाइसवर, कूटबद्ध स्वरूपात साठवले जाते';

  @override
  String get onboardingPrivatePointAccount => 'खात्याची गरज नाही';

  @override
  String get onboardingPrivatePointTracking => 'विश्लेषण नाही, ट्रॅकिंग नाही';

  @override
  String get onboardingLanguageBody => 'हे तुम्ही कधीही सेटिंग्जमध्ये बदलू शकता.';

  @override
  String get onboardingNext => 'पुढे';

  @override
  String get projectsActive => 'सक्रिय';

  @override
  String get projectNameHint => 'उदा. उत्पादन लाँच';

  @override
  String get projectGoalHint => 'पूर्ण झाल्यावर कसे दिसेल?';

  @override
  String get projectNoDeadline => 'अंतिम मुदत नाही';

  @override
  String get projectTasksOpen => 'खुली कार्ये';

  @override
  String get projectTasksCompleted => 'पूर्ण झालेली कार्ये';

  @override
  String get projectAddTask => 'प्रकल्पात कार्य जोडा';

  @override
  String get projectAddNote => 'नवीन प्रकल्प टीप';

  @override
  String get projectLinkedNotes => 'टिपा';

  @override
  String get projectNoTasks => 'या प्रकल्पात अजून कार्ये नाहीत';

  @override
  String get projectArchivedBadge => 'संग्रहित';

  @override
  String get projectDeleted => 'प्रकल्प कचरापेटीत हलवला';

  @override
  String get projectDeleteMessage => 'कार्ये प्रकल्पाशिवाय तुमच्या सूचीत राहतात.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent टक्के पूर्ण';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count परिणाम',
      one: '1 परिणाम',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'प्रकारानुसार फिल्टर करा';

  @override
  String searchRecentTap(String query) {
    return '$query पुन्हा शोधा';
  }

  @override
  String get settingsLanguageHint =>
      'संपूर्ण ॲपसाठी भाषा निवडा. नावे त्यांच्या स्वतःच्या भाषेत दाखवली जातात.';

  @override
  String get settingsThemeHint => 'हलकी, गडद किंवा सिस्टमनुसार';

  @override
  String settingsDecrease(String setting) {
    return '$setting कमी करा';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting वाढवा';
  }

  @override
  String get settingsQuietStart => 'सुरू';

  @override
  String get settingsQuietEnd => 'समाप्त';

  @override
  String get settingsNotificationsHint =>
      'हे तुमची पसंती ॲपमध्ये जतन करते. सिस्टमही परवानगी मागू शकते.';

  @override
  String get settingsDashboardHint => 'क्रम बदलण्यासाठी ओढा. गरज नसलेले विभाग बंद करा.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section चा क्रम बदला';
  }

  @override
  String get settingsDashboardReset => 'डीफॉल्ट क्रम पुनर्संचयित करा';

  @override
  String get settingsAssistantDesc =>
      'पर्यायी नियोजन मदत. तुम्ही प्रदाता जोडल्याशिवाय काहीही हे डिव्हाइस सोडत नाही.';

  @override
  String get settingsAssistantSetup => 'सहाय्यक आणि प्रदाता सेटअप';

  @override
  String get settingsTrashDesc => 'काढलेले आयटम पुनर्संचयित करा किंवा कायमचे हटवा';

  @override
  String get settingsEraseFirstBody =>
      'हे पूर्ववत करता येत नाही. आधी कूटबद्ध बॅकअप तयार करण्याचा विचार करा.';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word टाइप करा';
  }

  @override
  String get settingsEraseFailed => 'डेटा मिटवता आला नाही. काहीही बदलले नाही.';

  @override
  String get settingsAboutTagline => 'खासगी, स्थानिक-प्रथम उत्पादकता कार्यक्षेत्र.';

  @override
  String get backupShowPassword => 'पासवर्ड दाखवा';

  @override
  String get backupHidePassword => 'पासवर्ड लपवा';

  @override
  String get backupSaved => 'बॅकअप जतन केला';

  @override
  String get backupFailed => 'बॅकअप तयार करता आला नाही. तुमचा डेटा अपरिवर्तित आहे.';

  @override
  String get backupReadFailed => 'निवडलेली फाइल वाचता आली नाही.';

  @override
  String get backupRestoreFailed => 'पुनर्संचयन अयशस्वी. काहीही बदलले नाही.';

  @override
  String get backupShareSubject => 'Deep Focus कूटबद्ध बॅकअप';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दर $count दिवसांनी',
      one: 'दररोज',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दर $count आठवड्यांनी',
      one: 'दर आठवड्याला',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दर $count महिन्यांनी',
      one: 'दर महिन्याला',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दर $count वर्षांनी',
      one: 'दरवर्षी',
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
    return '$days रोजी';
  }

  @override
  String get repeatEndsLabel => 'समाप्त';

  @override
  String get repeatEndsAfter => 'ठराविक वेळांनंतर';

  @override
  String get repeatCountLabel => 'पुनरावृत्ती संख्या';

  @override
  String get reminderNone => 'स्मरणपत्र नाही';

  @override
  String get reminderCustomTime => 'विशिष्ट वेळी';

  @override
  String get a11yDecrease => 'कमी करा';

  @override
  String get a11yIncrease => 'वाढवा';

  @override
  String get pickTaskTitle => 'कार्य निवडा';

  @override
  String get pickTaskEmpty => 'खुली कार्ये नाहीत';

  @override
  String get tasksSearchTooltip => 'कार्ये शोधा';

  @override
  String get tasksSectionOverdue => 'मुदत उलटलेली';

  @override
  String get tasksSectionToday => 'आज';

  @override
  String get tasksRecurringSemantics => 'पुनरावृत्ती होते';

  @override
  String get tasksFilterPriorityAtLeast => 'किमान प्राधान्य';

  @override
  String get tasksFilterCategory => 'श्रेणी';

  @override
  String get tasksFilterAnyCategory => 'कोणतीही श्रेणी';

  @override
  String get tasksFilterLabel => 'लेबल';

  @override
  String get tasksFilterAnyLabel => 'कोणतेही लेबल';

  @override
  String get tasksFilterReset => 'फिल्टर रीसेट करा';

  @override
  String get tasksViewByProject => 'प्रकल्पानुसार';

  @override
  String get tasksViewByPriority => 'प्राधान्यानुसार';

  @override
  String get tasksViewByCategory => 'श्रेणीनुसार';

  @override
  String get tasksGroupNoCategory => 'श्रेणी नाही';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्यांमुळे',
      one: '1 कार्यामुळे',
    );
    return '$_temp0 अडवलेले';
  }

  @override
  String get taskBlockedWarning => 'हे कार्य अपूर्ण कार्यांमुळे अडवलेले आहे. तरीही पूर्ण करायचे?';

  @override
  String get taskStartFocus => 'या कार्यावर लक्ष केंद्रित करा';

  @override
  String get taskRemoveDate => 'तारीख काढा';

  @override
  String get taskAllDay => 'विशिष्ट वेळ नाही';

  @override
  String get taskSaved => 'कार्य जतन केले';

  @override
  String get taskCreated => 'कार्य तयार केले';

  @override
  String get taskReminderNeedsDue => 'सापेक्ष स्मरणपत्रे वापरण्यासाठी अंतिम तारीख सेट करा';

  @override
  String get taskLabelName => 'लेबलचे नाव';

  @override
  String get taskPlanning => 'नियोजन';

  @override
  String get taskOrganize => 'व्यवस्थित करा';

  @override
  String get taskBreakdown => 'विभागणी';

  @override
  String get trashDeleteTaskTitle => 'हे कार्य कायमचे हटवायचे?';

  @override
  String get trashDeleteNoteTitle => 'ही टीप कायमची हटवायची?';

  @override
  String get trashDeleteBody => 'हे पूर्ववत करता येत नाही.';

  @override
  String get trashEmptyTitle => 'कचरापेटी रिकामी करायची?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आयटम कायमचे हटवले जातील.',
      one: '1 आयटम कायमचा हटवला जाईल.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'पुनर्संचयित केले';

  @override
  String get trashPurged => 'कायमचे हटवले';

  @override
  String trashDeletedOn(String date) {
    return '$date रोजी हटवले';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आयटम',
      one: '1 आयटम',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'मोठ्याने वाचा';

  @override
  String get flashcardsTtsUnavailable => 'या डिव्हाइसवर मजकूर-ते-भाषण उपलब्ध नाही.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'या भाषेसाठी आवाज स्थापित नाही. Android मजकूर-ते-भाषण सेटिंग्जमध्ये जोडा.';

  @override
  String get calendarAgenda => 'कार्यसूची';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'ठिणगी',
      'rocket': 'रॉकेट',
      'book': 'पुस्तक',
      'work': 'काम',
      'home': 'घर',
      'heart': 'हृदय',
      'code': 'कोड',
      'palette': 'रंगपट',
      'fitness': 'फिटनेस',
      'school': 'शाळा',
      'travel': 'प्रवास',
      'money': 'बचत',
      'other': 'चिन्ह',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'अधिक फील्ड';

  @override
  String get cardFieldExample => 'उदाहरण';

  @override
  String get cardFieldExplanation => 'स्पष्टीकरण';

  @override
  String get cardFieldPronunciation => 'उच्चार';

  @override
  String get cardFieldNotes => 'अतिरिक्त टिपा';

  @override
  String get projectMilestones => 'टप्पे';

  @override
  String get milestoneAdd => 'टप्पा जोडा';

  @override
  String get milestoneEdit => 'टप्पा संपादित करा';

  @override
  String get milestoneTitleLabel => 'टप्पा';

  @override
  String get milestoneNoDate => 'तारीख नाही';

  @override
  String get milestonesEmpty =>
      'अजून टप्पे नाहीत. दिनदर्शिकेत प्रकल्पाचा मागोवा घेण्यासाठी तारखांसह तपासणी बिंदू जोडा.';

  @override
  String get milestoneDeleted => 'टप्पा हटवला';

  @override
  String milestoneDoneA11y(String title) {
    return '\"$title\" टप्पा पूर्ण म्हणून चिन्हांकित करा';
  }

  @override
  String calendarMilestone(String project) {
    return 'टप्पा · $project';
  }

  @override
  String get tasksViewInbox => 'इनबॉक्स';

  @override
  String get tasksViewArchived => 'संग्रहित';

  @override
  String get tasksEmptyInbox =>
      'प्रकल्प किंवा तारीख नसलेली कार्ये इथे येतात. वेळ मिळाल्यावर त्यांची व्यवस्था करा.';

  @override
  String get tasksEmptyArchived =>
      'संग्रहित कार्ये तुमच्या सूची आणि स्मरणपत्रांपासून दूर इथे ठेवली जातात.';

  @override
  String get taskArchivedBadge => 'संग्रहित';

  @override
  String get taskStatusInProgress => 'प्रगतीपथावर';

  @override
  String get taskArchived => 'कार्य संग्रहित केले';

  @override
  String get taskUnarchived => 'कार्य संग्रहातून पुनर्संचयित केले';

  @override
  String get focusPlanTitle => 'सत्र योजना';

  @override
  String focusPlanTotal(String duration) {
    return 'एकूण $duration';
  }

  @override
  String get focusPlanRounds => 'लक्ष सत्रे';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'इतक्यानंतर मोठा विराम';

  @override
  String get focusPlanSkipLastBreak => 'शेवटचा विराम वगळा';

  @override
  String get focusPlanAutoBreaks => 'विराम आपोआप सुरू करा';

  @override
  String get focusPlanAutoFocus => 'विरामानंतर लक्ष आपोआप सुरू करा';

  @override
  String get focusPlanSave => 'योजना जतन करा';

  @override
  String get focusPlanNameHint => 'उदा. परीक्षेची तयारी';

  @override
  String get focusPlanSaved => 'योजना जतन केली';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work मि लक्ष, $rest मि विराम';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label कमी करा';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label वाढवा';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'सत्र $current / $total';
  }

  @override
  String get focusSeriesComplete => 'मालिका पूर्ण झाली. शाब्बास!';

  @override
  String get filterAll => 'सर्व';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added आयात केले · $duplicates पुनरावृत्त वगळले · $invalid अपूर्ण ओळी';
  }

  @override
  String get flashcardsSuspend => 'कार्ड निलंबित करा';

  @override
  String get flashcardsResume => 'कार्ड पुन्हा सुरू करा';

  @override
  String get flashcardsSuspended => 'कार्ड निलंबित: ते नियोजित केले जाणार नाही';

  @override
  String get flashcardsResumed => 'कार्ड पुन्हा सुरू केले';

  @override
  String get flashcardsSuspendedFilter => 'निलंबित';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$total पैकी $shown कार्ड';
  }

  @override
  String get flashcardsImportFile => 'फाइलमधून';

  @override
  String get speechTitle => 'भाषण';

  @override
  String get speechAppLanguage => 'ॲपची भाषा';

  @override
  String get speechFrontLanguage => 'पुढच्या बाजूची भाषा';

  @override
  String get speechBackLanguage => 'मागच्या बाजूची भाषा';

  @override
  String get speechRepeat => 'प्रत्येक वाचन पुन्हा करा';

  @override
  String get speechRate => 'वेग';

  @override
  String get speechAutoRead => 'प्रश्न आपोआप वाचा';

  @override
  String get speechHint =>
      'या डिव्हाइसवर स्थापित आवाज ऑफलाइन वापरते. एखाद्या भाषेला आवाज नसल्यास तुम्हाला सांगितले जाईल आणि त्याऐवजी दुसरे काहीही वापरले जाणार नाही.';

  @override
  String get studyHowTitle => 'तुम्हाला कसा अभ्यास करायचा आहे?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्डची उजळणी करा',
      one: '1 कार्डची उजळणी करा',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'सर्व कार्डचा सराव करा (वेळापत्रक बदलत नाही)';

  @override
  String get studyPracticeMistakes => 'अलीकडील चुकांचा सराव करा';

  @override
  String get studyPracticeHint =>
      'सराव फेऱ्या कार्ड कधी देय आहेत ते कधीही बदलत नाहीत. उजळणी वेळापत्रक अपडेट करते.';

  @override
  String get studyModeClassic => 'क्लासिक';

  @override
  String get studyModeReverse => 'उलट';

  @override
  String get studyModeMixed => 'दोन्ही बाजूंनी';

  @override
  String get studyModeTyped => 'उत्तर टाइप करा';

  @override
  String get studyModeChoice => 'बहुपर्यायी';

  @override
  String get studyModeListening => 'ऐकणे';

  @override
  String get studyPractice => 'सराव';

  @override
  String get studyNoMistakes => 'या संचात अलीकडील चुका नाहीत. छान!';

  @override
  String get studyTypeAnswer => 'तुमचे उत्तर टाइप करा';

  @override
  String get studyCheck => 'तपासा';

  @override
  String get studyKnewIt => 'मला माहीत होते';

  @override
  String get studyDidntKnow => 'माहीत नव्हते';

  @override
  String studyMistakes(int count) {
    return 'चुकलेले ($count)';
  }

  @override
  String get studyRepeatMistakes => 'चुकलेली कार्ड पुन्हा करा';

  @override
  String get studyCorrect => 'बरोबर';

  @override
  String get studyAlmost => 'जवळजवळ — शुद्धलेखन तपासा';

  @override
  String get studyWrong => 'पूर्णपणे नाही';

  @override
  String get studyShowText => 'मजकूर दाखवा';

  @override
  String get flashcardsImportFileFailed =>
      'फाइल उघडता आली नाही. त्याऐवजी तुम्ही तिची सामग्री पेस्ट करू शकता.';

  @override
  String get studyNoMatchingCards => 'या निवडीशी जुळणारी कार्ड अजून नाहीत.';

  @override
  String get studyPracticeNew => 'फक्त नवीन';

  @override
  String get studyPracticeHard => 'कठीण कार्ड';

  @override
  String get studyPracticeFavorites => 'आवडती';

  @override
  String get studySessionSize => 'प्रति सत्र कार्ड';

  @override
  String get studySessionAll => 'सर्व';

  @override
  String get studyOrder => 'क्रम';

  @override
  String get studyOrderDue => 'सर्वाधिक उशीर झालेली आधी';

  @override
  String get studyOrderRandom => 'यादृच्छिक';

  @override
  String get studyOrderHardest => 'सर्वात कठीण आधी';

  @override
  String get flashcardsHard => 'कठीण';

  @override
  String get flashcardsFavorites => 'आवडती';

  @override
  String get flashcardsFavorite => 'आवडत्यांमध्ये जोडा';

  @override
  String get flashcardsUnfavorite => 'आवडत्यांतून काढा';

  @override
  String get flashcardsDuplicate => 'प्रत बनवा';

  @override
  String get flashcardsMoveTo => 'संचात हलवा';

  @override
  String get flashcardsNoOtherDeck => 'आधी दुसरा संच तयार करा.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड हलवले',
      one: 'कार्ड हलवले',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'टॅग जोडा';

  @override
  String get flashcardsTagHint => 'उदा. क्रियापदे';

  @override
  String flashcardsSelected(int count) {
    return '$count निवडले';
  }

  @override
  String get flashcardsSelectAll => 'दाखवलेले सर्व निवडा';

  @override
  String flashcardsSelectCard(String front) {
    return '$front निवडा';
  }

  @override
  String flashcardsRecall(String value) {
    return 'स्मरण $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'संभाव्य पुनरावृत्ती';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'या संचात आधीच “$front” → “$back” आहे. तरीही जतन करायचे?';
  }

  @override
  String get flashcardsSaveAnyway => 'तरीही जतन करा';

  @override
  String get flashcardsStats => 'आकडेवारी';

  @override
  String get flashcardsStatTotal => 'कार्ड';

  @override
  String get flashcardsStatLearning => 'शिकत आहे';

  @override
  String get flashcardsStatMatureCaption => '21+ दिवस लक्षात';

  @override
  String get flashcardsStatReviewsToday => 'आजच्या उजळण्या';

  @override
  String get flashcardsStatCorrect => 'बरोबर उत्तरे';

  @override
  String flashcardsStatLastDays(int days) {
    return 'मागील $days दिवस';
  }

  @override
  String get flashcardsStatForget => 'विसरण्याचा दर';

  @override
  String get flashcardsStatForgetCaption => 'शिकलेल्या कार्डवर “पुन्हा”';

  @override
  String get flashcardsStatRecall => 'सध्याचे स्मरण';

  @override
  String get flashcardsStatRecallCaption => 'FSRS अंदाज, उजळणी केलेली कार्ड';

  @override
  String flashcardsStatActivity(int count) {
    return 'दररोज उजळण्या · एकूण $count';
  }

  @override
  String get flashcardsStatHistory => 'अलीकडील उत्तरे';

  @override
  String get flashcardsStatNoHistory =>
      'अजून उजळण्या नाहीत. तुमची प्रगती इथे पाहण्यासाठी संचाचा अभ्यास करा.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field मोठ्याने वाचा';
  }

  @override
  String get speechVoice => 'आवाज';

  @override
  String get speechVoiceDefault => 'स्वयंचलित';

  @override
  String get speechVoiceOnline => 'इंटरनेट आवश्यक';

  @override
  String get speechTest => 'आवाज तपासा';

  @override
  String get importNext => 'पूर्वावलोकन';

  @override
  String get importPreviewTitle => 'स्तंभ फील्डशी जुळवा';

  @override
  String get importIgnoreColumn => 'दुर्लक्ष करा';

  @override
  String importColumn(int n) {
    return 'स्तंभ $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready कार्ड तयार · $invalid अपूर्ण ओळी वगळल्या जातील';
  }

  @override
  String get importNeedFrontBack => 'कोणते स्तंभ पुढची आणि मागची बाजू आहेत ते निवडा.';

  @override
  String get actionMoveUp => 'वर हलवा';

  @override
  String get actionMoveDown => 'खाली हलवा';

  @override
  String get flashcardsLayoutTitle => 'कार्ड मांडणी';

  @override
  String get flashcardsLayoutHint =>
      'या संचाच्या अतिरिक्त फील्डचे नाव बदला, लपवा किंवा क्रम बदला. कार्डची सामग्री कधीही बदलत नाही.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'अभ्यास करताना $field दाखवा';
  }

  @override
  String get flashcardsLayoutStepReveal => 'उत्तर टप्प्याटप्प्याने उघड करा';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'आधी मागची बाजू दिसते; प्रत्येक अतिरिक्त फील्ड टॅपने उघडते.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field दाखवा';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'ही फाइल $mb MB पेक्षा मोठी आहे.';
  }

  @override
  String get flashcardsImage => 'प्रतिमा';

  @override
  String get flashcardsAudio => 'ऑडिओ';

  @override
  String get flashcardsAddImage => 'प्रतिमा जोडा';

  @override
  String get flashcardsAddAudio => 'ऑडिओ जोडा';

  @override
  String get flashcardsPlayAudio => 'रेकॉर्डिंग प्ले करा';

  @override
  String get flashcardsAudioUnavailable => 'हे रेकॉर्डिंग या डिव्हाइसवर प्ले होऊ शकत नाही.';

  @override
  String get flashcardsCustomFields => 'तुमची फील्ड';

  @override
  String get flashcardsTemplates => 'साचे';

  @override
  String flashcardsNewFieldName(int n) {
    return 'फील्ड $n';
  }

  @override
  String get flashcardsAddField => 'फील्ड जोडा';

  @override
  String get flashcardsFieldName => 'फील्डचे नाव';

  @override
  String get flashcardsFieldLangDefault => 'बाजूची भाषा';

  @override
  String get flashcardsTemplateConfirm =>
      'साचा फील्ड कसे दिसतील ते ठरवतो आणि त्याची फील्ड जोडतो. तुमची कार्ड आणि विद्यमान फील्ड जशीच्या तशी राहतात.';

  @override
  String get flashcardsApplyTemplate => 'लागू करा';

  @override
  String get templateVocabulary => 'शब्दसंग्रह';

  @override
  String get templateTwoTranslations => 'दोन भाषांतरांसह शब्द';

  @override
  String get templateQuestionAnswer => 'प्रश्न आणि उत्तर';

  @override
  String get templateDefinition => 'संज्ञा आणि व्याख्या';

  @override
  String get templateGrammar => 'व्याकरण नियम';

  @override
  String get templateFieldPlural => 'अनेकवचन';

  @override
  String get templateFieldTranslation2 => 'दुसरे भाषांतर';

  @override
  String get templateFieldSynonyms => 'समानार्थी शब्द';

  @override
  String get templateFieldRule => 'नियम';

  @override
  String get deckCategory => 'स्तर किंवा विषय';

  @override
  String get deckCategoryHint => 'उदा. A1, वैद्यकशास्त्र';

  @override
  String get flashcardsSearchAll => 'सर्व कार्डमध्ये शोधा';

  @override
  String get flashcardsSearchAllHint => 'शब्द, भाषांतर, उदाहरण, टीप, टॅग…';

  @override
  String get flashcardsAllDecks => 'सर्व संच';

  @override
  String get flashcardsAllLanguages => 'सर्व भाषा';

  @override
  String get flashcardsLangUnset => 'भाषा सेट नाही';

  @override
  String get flashcardsLevelUnset => 'स्तर किंवा विषय नाही';

  @override
  String get flashcardsByLanguage => 'भाषेनुसार प्रगती';

  @override
  String get flashcardsByLevel => 'स्तर किंवा विषयानुसार प्रगती';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks संच · $cards कार्ड · $mature परिपक्व · $due देय · $correct बरोबर (30 दिवस)';
  }

  @override
  String get flashcardsRecord => 'रेकॉर्ड करा';

  @override
  String get flashcardsRecording => 'रेकॉर्ड होत आहे…';

  @override
  String get flashcardsRecordStop => 'थांबवा आणि ठेवा';

  @override
  String get flashcardsMicDenied =>
      'मायक्रोफोन प्रवेश बंद आहे. रेकॉर्ड करण्यासाठी सिस्टम सेटिंग्जमध्ये परवानगी द्या.';

  @override
  String get flashcardsRecordFailed => 'या डिव्हाइसवर रेकॉर्डिंग उपलब्ध नाही.';

  @override
  String get soundsTitle => 'ध्वनी';

  @override
  String get soundsNature => 'निसर्ग';

  @override
  String get soundsNoise => 'लक्ष ध्वनी';

  @override
  String get soundRain => 'पाऊस';

  @override
  String get soundStorm => 'वादळी पाऊस';

  @override
  String get soundRiver => 'नदी';

  @override
  String get soundOcean => 'समुद्राच्या लाटा';

  @override
  String get soundFire => 'शेकोटी';

  @override
  String get soundForest => 'जंगलातील पक्षी';

  @override
  String get soundNight => 'उन्हाळी रात्र';

  @override
  String get soundWhite => 'श्वेत ध्वनी';

  @override
  String get soundPink => 'गुलाबी ध्वनी';

  @override
  String get soundBrown => 'तपकिरी ध्वनी';

  @override
  String get soundsPlay => 'प्ले करा';

  @override
  String get soundsSleep => 'झोप टायमर';

  @override
  String get soundsSleepOff => 'बंद';

  @override
  String soundsSleepAt(String time) {
    return '$time वाजता थांबेल';
  }

  @override
  String soundsMixFull(int count) {
    return 'एकाच वेळी $count पर्यंत ध्वनी वाजू शकतात.';
  }

  @override
  String get soundsHint =>
      'सुरू करण्यासाठी ध्वनीवर टॅप करा. अनेक मिसळा आणि प्रत्येकाचा आवाज सेट करा.';

  @override
  String get soundsMixer => 'मिश्रण';

  @override
  String soundsVolumeOf(String name) {
    return '$name आवाज';
  }

  @override
  String get soundsChannel => 'निसर्ग ध्वनी';

  @override
  String get settingsEndTone => 'टायमर समाप्ती ध्वनी';

  @override
  String get toneGentle => 'सौम्य बीप';

  @override
  String get toneBeeps => 'बीप';

  @override
  String get toneWood => 'लाकडावर टकटक';

  @override
  String get toneBird => 'पक्ष्याची हाक';

  @override
  String get toneStream => 'ओढा';

  @override
  String get toneSystem => 'फोनचा ध्वनी';

  @override
  String get speechOnPhone => 'या फोनवर';

  @override
  String get speechAllLanguages => 'सर्व भाषा';

  @override
  String get speechSearchLanguage => 'भाषा शोधा';

  @override
  String get speechGetVoices => 'अधिक आवाज डाउनलोड करा';

  @override
  String get speechGetVoicesHint =>
      'आवाज नसलेल्या भाषा फोनच्या भाषण सेटिंग्जमध्ये डाउनलोड करता येतात.';

  @override
  String get speechSettingsFailed => 'या फोनवर भाषण सेटिंग्ज उघडता आल्या नाहीत.';

  @override
  String get speechVoiceMissing => 'आवाज स्थापित नाही';

  @override
  String get speechPause => 'पुनरावृत्तींमधील विराम';

  @override
  String speechSeconds(String seconds) {
    return '$seconds से';
  }

  @override
  String get speechExample => 'उत्तरासह उदाहरण वाचा';

  @override
  String get flashListen => 'ऐका';

  @override
  String get flashListenNext => 'पुढील कार्ड';

  @override
  String get flashListenEmpty => 'ऐकण्यासाठी कार्ड नाहीत.';

  @override
  String get flashViewTable => 'तक्ता';

  @override
  String get flashViewCards => 'कार्ड';

  @override
  String get flashSwapSides => 'स्तंभ अदलाबदल करा';

  @override
  String get flashSort => 'क्रमवारी लावा';

  @override
  String get flashSortNewest => 'नवीनतम आधी';

  @override
  String get flashSortAlpha => 'A ते Z';

  @override
  String get flashSortDue => 'देय आधी';

  @override
  String get flashSortHard => 'सर्वात कठीण आधी';

  @override
  String get flashPasteCards => 'कार्ड पेस्ट करा';

  @override
  String get flashClipboardEmpty => 'क्लिपबोर्डवर मजकूर नाही.';

  @override
  String get flashMenuAdd => 'कार्ड जोडा';

  @override
  String get flashMenuDeck => 'संच';

  @override
  String get flashToday => 'आज';

  @override
  String get flashStudyNow => 'अभ्यास करा';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्डची उत्तरे दिली',
      one: '1 कार्डचे उत्तर दिले',
      zero: 'उत्तर दिलेली कार्ड नाहीत',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'जंगलातील पाऊस';

  @override
  String get autoBackupTitle => 'स्वयंचलित बॅकअप';

  @override
  String get autoBackupDesc => 'दररोज या फोनवर; शेवटचे 7 ठेवले जातात';

  @override
  String get autoBackupHint =>
      'या प्रती या फोनवर राहतात आणि ॲप अनइंस्टॉल केल्यास काढल्या जातात. नवीन फोनवर जाण्यासाठी, फाइल जतन करण्यासाठी “बॅकअप” वापरा.';

  @override
  String get autoBackupNone => 'अजून स्वयंचलित बॅकअप नाही. पहिला आज तयार होईल.';

  @override
  String get autoBackupRestore => 'पुनर्संचयित करा';

  @override
  String autoBackupConfirm(String date) {
    return 'सर्व सध्याचा डेटा $date च्या बॅकअपने बदलायचा?';
  }

  @override
  String get autoBackupRestored => 'पुनर्संचयित केले.';

  @override
  String get errorLogTitle => 'त्रुटी नोंद';

  @override
  String get errorLogHint =>
      'काही चुकल्यास इथे नोंद होते: फक्त त्रुटीचा प्रकार आणि कोडमधील ठिकाण, तुमची सामग्री कधीही नाही. समस्या सोडवण्यात मदत करण्यासाठी ते शेअर करा.';

  @override
  String get errorLogEmpty => 'कोणतीही त्रुटी नोंदलेली नाही.';

  @override
  String get errorLogClear => 'साफ करा';

  @override
  String get soundsWithFocus => 'लक्ष सत्रांसह प्ले करा';

  @override
  String get soundsWithFocusHint => 'तुमचे मिश्रण लक्ष सत्राने सुरू होते आणि विरामात थांबते.';

  @override
  String get soundsSavedMixes => 'जतन केलेली मिश्रणे';

  @override
  String get soundsSaveMix => 'हे मिश्रण जतन करा';

  @override
  String get soundsMixNameHint => 'नाव, उदा. पावसाळी ग्रंथालय';

  @override
  String soundsDeleteMix(String name) {
    return '“$name” मिश्रण हटवायचे?';
  }

  @override
  String get settingsReviewReminderHint => 'दिवसातून एकदा, फक्त कार्ड देय असताना';

  @override
  String get settingsReviewTime => 'स्मरणपत्राची वेळ';

  @override
  String get shortcutFocus => 'लक्ष';

  @override
  String get shortcutNewTask => 'नवीन कार्य';

  @override
  String get shortcutReview => 'कार्डची उजळणी करा';

  @override
  String get shortcutSounds => 'निसर्ग ध्वनी';

  @override
  String get myDayTitle => 'माझा दिवस सुरू करा';

  @override
  String get myDayHint => 'तुमचा दिवस एका नजरेत, मग एका टॅपने लक्ष';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आजसाठी $count कार्ये',
      one: 'आजसाठी 1 कार्य',
      zero: 'आजसाठी कार्ये नाहीत',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'आज आणखी कार्यक्रम नाहीत';

  @override
  String myDayNextEvent(String title, String time) {
    return 'पुढे: $title, $time वाजता';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सवयी बाकी',
      one: '1 सवय बाकी',
      zero: 'सर्व सवयी पूर्ण',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'लक्ष सत्राने सुरुवात करा';

  @override
  String get hijriMonth1 => 'मोहरम';

  @override
  String get hijriMonth2 => 'सफर';

  @override
  String get hijriMonth3 => 'रबी-उल-अव्वल';

  @override
  String get hijriMonth4 => 'रबी-उल-आखिर';

  @override
  String get hijriMonth5 => 'जमादि-उल-अव्वल';

  @override
  String get hijriMonth6 => 'जमादि-उल-आखिर';

  @override
  String get hijriMonth7 => 'रजब';

  @override
  String get hijriMonth8 => 'शाबान';

  @override
  String get hijriMonth9 => 'रमजान';

  @override
  String get hijriMonth10 => 'शव्वाल';

  @override
  String get hijriMonth11 => 'जिल-काद';

  @override
  String get hijriMonth12 => 'जिल-हिज्ज';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year हि.';
  }

  @override
  String get settingsHijri => 'हिजरी तारखा';

  @override
  String get settingsHijriHint => 'दिनदर्शिका आणि मुख्य स्क्रीनवर दाखवल्या जातात (उम्म अल-कुरा)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवस',
      one: '1 दिवस',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'आज $goal पैकी $done कार्ड';
  }

  @override
  String get studyGoalReached => 'दैनिक उद्दिष्ट गाठले. शाब्बास!';

  @override
  String get studyWeekTitle => 'तुमचा आठवडा';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 दिवसांत $count कार्डची उत्तरे दिली',
      one: '7 दिवसांत 1 कार्डचे उत्तर दिले',
      zero: '7 दिवसांत उत्तर दिलेली कार्ड नाहीत',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7 दिवसांत $duration लक्ष';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'सलगता: $current · सर्वोत्तम: $best';
  }

  @override
  String get studyGoalTitle => 'दैनिक उद्दिष्ट (कार्ड)';

  @override
  String get studyGoalOff => 'बंद';

  @override
  String get focusDndTitle => 'लक्ष केंद्रित करताना व्यत्यय आणू नका';

  @override
  String get focusDndHint => 'प्रत्येक लक्ष सत्रासाठी सुरू होते आणि विरामात बंद होते';

  @override
  String get focusDndNeedsAccess => 'हे वापरण्यासाठी फोन सेटिंग्जमध्ये प्रवेशाला परवानगी द्या';

  @override
  String get voiceInput => 'बोलून टाइप करा';

  @override
  String get voiceInputPrompt => 'आता बोला';

  @override
  String get voiceInputUnavailable =>
      'या फोनवर आवाजाने टाइपिंग उपलब्ध नाही. भाषण सेवा स्थापित करा किंवा सुरू करा (उदाहरणार्थ Google ची Speech Recognition & Synthesis).';

  @override
  String get prayerFajr => 'फज्र';

  @override
  String get prayerSunrise => 'सूर्योदय';

  @override
  String get prayerDhuhr => 'जुहर';

  @override
  String get prayerAsr => 'असर';

  @override
  String get prayerMaghrib => 'मगरिब';

  @override
  String get prayerIsha => 'इशा';

  @override
  String get prayerMethodMwl => 'मुस्लिम वर्ल्ड लीग';

  @override
  String get prayerMethodUmmAlQura => 'उम्म अल-कुरा, मक्का';

  @override
  String get prayerMethodEgypt => 'इजिप्शियन जनरल ऑथॉरिटी';

  @override
  String get prayerMethodJordan => 'जॉर्डन, औकाफ मंत्रालय';

  @override
  String get prayerMethodKarachi => 'इस्लामिक विज्ञान विद्यापीठ, कराची';

  @override
  String get prayerMethodIsna => 'इस्लामिक सोसायटी ऑफ नॉर्थ अमेरिका';

  @override
  String get prayerMethodGulf => 'आखाती प्रदेश';

  @override
  String get prayerMethodKuwait => 'कुवेत';

  @override
  String get prayerMethodQatar => 'कतार';

  @override
  String get prayerMethodTurkey => 'तुर्किये, दियानेत';

  @override
  String get prayerMethodSingapore => 'सिंगापूर, मलेशिया, इंडोनेशिया';

  @override
  String get prayerMethodFrance => 'फ्रान्स (12°)';

  @override
  String get prayerMethodRussia => 'रशिया, आध्यात्मिक प्रशासन';

  @override
  String prayerNotifTitle(String name) {
    return '$name ची वेळ';
  }

  @override
  String prayerNotifBody(String time) {
    return 'नमाजाची वेळ · $time';
  }

  @override
  String get prayerTitle => 'नमाजाच्या वेळा';

  @override
  String get prayerOffHint =>
      'नमाजाच्या वेळा पाहण्यासाठी तुमचे शहर निवडा. त्या फोनवरच मोजल्या जातात; स्थान प्रवेशाची गरज नाही.';

  @override
  String get prayerChooseCity => 'शहर निवडा';

  @override
  String get prayerCity => 'शहर';

  @override
  String get prayerCitySearch => 'शहर शोधा';

  @override
  String get prayerMethod => 'गणना पद्धत';

  @override
  String get prayerHanafiAsr => 'हनफी असर (नंतरची वेळ)';

  @override
  String get prayerReminders => 'प्रत्येक नमाजाच्या वेळी सूचित करा';

  @override
  String get prayerPauseFocus => 'नमाजाच्या वेळी लक्षाला विराम द्या';

  @override
  String get prayerPauseFocusHint => 'चालू सत्र थांबते; नमाजानंतर सुरू ठेवा';

  @override
  String get prayerTurnOff => 'नमाजाच्या वेळा बंद करा';

  @override
  String get prayerAccuracyNote =>
      'मोजलेल्या वेळा तुमच्या स्थानिक मशिदीपेक्षा काही मिनिटांनी वेगळ्या असू शकतात.';

  @override
  String prayerNext(String name, String time) {
    return '$name, $time वाजता';
  }

  @override
  String get importAnkiNewFormat =>
      'ही Anki फाइल नवीनतम स्वरूप वापरते. Anki मध्ये “Support older Anki versions” सुरू करून पुन्हा निर्यात करा, मग ती फाइल आयात करा.';

  @override
  String get importTemplate => 'स्प्रेडशीट साचा';

  @override
  String get importTemplateFront => 'सफरचंद';

  @override
  String get importTemplateBack => 'एक गोल फळ';

  @override
  String get importTemplateExample => 'मी दररोज एक सफरचंद खातो.';

  @override
  String get importTemplateTag => 'अन्न';

  @override
  String get starterTitle => 'सुरुवातीचे संच';

  @override
  String get starterHint =>
      'लगेच अभ्यास करून पाहण्यासाठी एक जोडा. नंतर तुम्ही ते संपादित करू किंवा हटवू शकता.';

  @override
  String get starterAdd => 'जोडा';

  @override
  String get starterWords => 'दैनंदिन इंग्रजी शब्द (अरबी)';

  @override
  String get starterCapitals => 'जगातील राजधान्या';

  @override
  String get starterElements => 'रासायनिक मूलद्रव्ये';

  @override
  String get settingsAccent => 'ॲक्सेंट रंग';

  @override
  String get accentViolet => 'जांभळा';

  @override
  String get accentBlue => 'निळा';

  @override
  String get accentTeal => 'हिरवट निळा';

  @override
  String get accentGreen => 'हिरवा';

  @override
  String get accentRose => 'गुलाबी';

  @override
  String get accentAmber => 'अंबर';

  @override
  String get settingsFlashTextSize => 'फ्लॅशकार्ड मजकुराचा आकार';

  @override
  String get settingsFlashTextSample => 'उदाहरण';

  @override
  String get widgetStartFocus => 'लक्षासाठी टॅप करा';

  @override
  String widgetFocusUntil(String time) {
    return '$time पर्यंत लक्ष';
  }

  @override
  String get widgetNoCardsDue => 'कार्ड: सर्व पूर्ण';

  @override
  String get faqMyDayQ => '“माझा दिवस सुरू करा” काय करते?';

  @override
  String get faqMyDayA =>
      'मुख्य स्क्रीन ते दिवसातून एकदा देते: आजची कार्ये, पुढील कार्यक्रम, बाकी सवयी आणि देय कार्ड पाहा, मग एका टॅपने लक्ष सत्र सुरू करा. झटपट कृतींसाठी ॲप चिन्ह दीर्घकाळ दाबा, किंवा लक्षाचा वेळ आणि देय कार्ड पाहण्यासाठी मुख्य स्क्रीन विजेट जोडा.';

  @override
  String get faqTasksQ => 'स्मरणपत्रासह कार्य कसे जोडू?';

  @override
  String get faqTasksA =>
      'मुख्यपृष्ठावर नवीन कार्य किंवा कार्ये मध्ये + वर टॅप करा. शीर्षक टाइप करा किंवा मायक्रोफोनने सांगा, मग अंतिम तारीख, वेळ आणि स्मरणपत्र सेट करा. मुदत उलटलेली कार्ये आधी दिसतात.';

  @override
  String get faqFocusQ => 'लक्ष टायमर कसा काम करतो?';

  @override
  String get faqFocusA =>
      'पोमोडोरो, उलटगणती किंवा मुक्त वेळ निवडा आणि सुरू करा दाबा; विराम आपोआप येऊ शकतात. सेटिंग्जमध्ये पूर्णता ध्वनी निवडू शकता, लक्ष केंद्रित करताना व्यत्यय आणू नका सुरू करू शकता आणि प्रत्येक सत्रासोबत निसर्ग ध्वनी वाजवू शकता.';

  @override
  String get faqSoundsQ => 'मी निसर्ग ध्वनी मिसळू शकतो का?';

  @override
  String get faqSoundsA =>
      'सहापर्यंत खरी रेकॉर्डिंग सुरू करा, प्रत्येकाचा आवाज सेट करा आणि मिश्रण नावाने जतन करा. ती पार्श्वभूमीत वाजत राहतात आणि झोप टायमर ती थांबवू शकतो. संगीत वापरले जात नाही.';

  @override
  String get faqCalendarQ => 'दिनदर्शिका हिजरी तारखा दाखवू शकते का?';

  @override
  String get faqCalendarA =>
      'हो. हिजरी तारखा (उम्म अल-कुरा) अरबीमध्ये आपोआप दिसतात आणि कोणत्याही भाषेसाठी सेटिंग्जमध्ये सुरू करता येतात. कार्यक्रम, अंतिम तारीख असलेली कार्ये आणि प्रकल्प टप्पे एकत्र दिसतात.';

  @override
  String get faqFlashcardsQ => 'उजळणी मी कोणती कार्ड पाहीन हे कसे ठरवते?';

  @override
  String get faqFlashcardsA =>
      'चांगली माहीत असलेली कार्ड जास्त अंतराने परत येतात आणि चुकलेली कार्ड लवकर परत येतात (अंतरित पुनरावृत्ती). प्रत्येक उत्तराला पुन्हा, कठीण, चांगले किंवा सोपे असे रेटिंग द्या. दैनिक उद्दिष्ट ठरवा आणि आज कार्डवर तुमची सलगता टिकवा. उरलेले दिवस आणि दररोज किती नवीन कार्ड शिकायची हे पाहण्यासाठी संचात परीक्षेची तारीख ठरवा. कार्ड ओढून जागी ठेवण्यासाठी \"माझा क्रम\" नुसार क्रमवारी लावा, ऐकण्यासाठी कोणत्याही बाजूच्या स्पीकरवर टॅप करा आणि वेग व पुनरावृत्ती भाषण मेनूमध्ये सेट करा.';

  @override
  String get faqImportQ => 'मी Anki किंवा Excel मधून कार्ड आणू शकतो का?';

  @override
  String get faqImportA =>
      'हो. संचात आयात निवडा, मग फाइल निवडा: Anki (.apkg), Excel (.xlsx) किंवा CSV, आणि स्तंभ जुळवा. संगणकावर कार्ड लिहिण्यासाठी “स्प्रेडशीट साचा” वापरा. Anki फाइलमधील चित्रे आणि ध्वनी आयात होत नाहीत.';

  @override
  String get faqNotesQ => 'टिपा काय करू शकतात?';

  @override
  String get faqNotesA =>
      'तपासणी सूची आणि स्वरूपणासह मोकळेपणाने लिहा, महत्त्वाच्या टिपा पिन करा किंवा आवडत्या करा, टॅग जोडा आणि टिपा कार्यांशी जोडा. मायक्रोफोन बटणाने बोलून लिहिता येते. नवीन टीप साच्यातून सुरू होऊ शकते (व्याख्यान, पुस्तक सारांश, दैनंदिनी, साप्ताहिक योजना), आणि चित्र बटण फोटो जोडते.';

  @override
  String get faqHabitsQ => 'सवयींची सलगता कशी मोजली जाते?';

  @override
  String get faqHabitsA =>
      'नियोजित दिवशी सवयीचे लक्ष्य गाठल्यास तो दिवस मोजला जातो. सवयीला विराम दिल्यास सलगता सुरक्षित राहते. प्रत्येक सवयीची स्वतःची स्मरणपत्र वेळ असू शकते.';

  @override
  String get faqGoalsQ => 'उद्दिष्टे प्रगती कशी ट्रॅक करतात?';

  @override
  String get faqGoalsA =>
      'उद्दिष्टाला लक्ष्य प्रमाण आणि एकक द्या, मग प्रगती नोंदवा. त्याचे कार्ड तुम्ही किती पुढे आहात आणि अंतिम मुदतीपूर्वी किती बाकी आहे ते दाखवते.';

  @override
  String get faqProjectsQ => 'प्रकल्प कशासाठी आहेत?';

  @override
  String get faqProjectsA =>
      'कार्ये प्रकल्पाखाली गटबद्ध करा, तारखांसह टप्पे जोडा आणि एकूण प्रगतीचा मागोवा घ्या. टप्पे दिनदर्शिकेतही दिसतात.';

  @override
  String get faqInsightsQ => 'अंतर्दृष्टी काय दाखवते?';

  @override
  String get faqInsightsA =>
      'दिवस आणि आठवड्यांनुसार तुमचा लक्षाचा वेळ, पूर्ण झालेली कार्ये आणि अभ्यास, सौम्य सूचनांसह. सर्व काही तुमच्या फोनवरच मोजले जाते.';

  @override
  String get faqSpacesQ => 'सर्व विभाग कुठे आहेत?';

  @override
  String get faqSpacesA =>
      'विभाग ॲपचा प्रत्येक भाग (टिपा, संच, सवयी, उद्दिष्टे, प्रकल्प, ध्वनी आणि अधिक) दाखवतात, त्यामुळे मुख्य पट्टी साधी राहते.';

  @override
  String get faqBackupQ => 'माझ्या डेटाचा बॅकअप कसा घेतला जातो?';

  @override
  String get faqBackupA =>
      'ॲप दररोज शांतपणे या फोनवर कूटबद्ध प्रत ठेवते आणि शेवटच्या 7 ठेवते. सेटिंग्जमध्ये पासवर्ड-संरक्षित बॅकअप फाइल निर्यात करून दुसऱ्या फोनवर पुनर्संचयित करू शकता.';

  @override
  String get faqPrayerQ => 'नमाजाच्या वेळा कशा काम करतात?';

  @override
  String get faqPrayerA =>
      'सेटिंग्ज → नमाजाच्या वेळा मध्ये तुमचे शहर निवडा. वेळा तिथे वापरल्या जाणाऱ्या पद्धतीने फोनवर मोजल्या जातात, आणि पद्धत व असर मजहब बदलू शकता. प्रत्येक नमाजाला सूचना मिळू शकते, आणि चालू लक्ष सत्र थांबते.';

  @override
  String get faqPrivacyQ => 'माझा डेटा कुठे साठवला जातो?';

  @override
  String get faqPrivacyA =>
      'फक्त तुमच्या फोनवर, कूटबद्ध डेटाबेसमध्ये. खाते नाही आणि ट्रॅकिंग नाही. इंटरनेट फक्त तुम्ही स्वतः सुरू केलेली वैशिष्ट्ये वापरतात, जसे पर्यायी सहाय्यक.';

  @override
  String get faqAssistantQ => 'सहाय्यक काय आहे?';

  @override
  String get faqAssistantA =>
      'सेटिंग्जमध्ये तुमच्या स्वतःच्या AI सेवेशी जोडता येणारा पर्यायी मदतनीस. तो डीफॉल्टनुसार बंद असतो आणि टिपेचा मजकूर पाठवण्यापूर्वी विचारतो.';

  @override
  String get tourPlanTitle => 'तुमच्या दिवसाचे नियोजन करा';

  @override
  String get tourPlanBody =>
      'कार्ये, दिनदर्शिका आणि सवयी एका शांत ठिकाणी. प्रत्येक सकाळ “माझा दिवस सुरू करा” ने सुरू करा.';

  @override
  String get tourFocusTitle => 'खोल लक्ष केंद्रित करा';

  @override
  String get tourFocusBody =>
      'खरे निसर्ग ध्वनी, व्यत्यय आणू नका आणि सौम्य समाप्ती स्वरांसह वेळबद्ध सत्रे.';

  @override
  String get tourLearnTitle => 'कायमचे शिका';

  @override
  String get tourLearnBody =>
      'अंतरित पुनरावृत्तीसह फ्लॅशकार्ड, अनेक भाषांमध्ये भाषण आणि Anki किंवा Excel मधून आयात.';

  @override
  String get helpTitle => 'मदत आणि प्रश्न';

  @override
  String get helpOpen => 'उघडा';

  @override
  String get helpTour => 'परिचय पाहा';

  @override
  String get tourNext => 'पुढे';

  @override
  String get tourDone => 'चला सुरू करूया';

  @override
  String get transferColTitle => 'शीर्षक';

  @override
  String get transferColNotes => 'टिपा';

  @override
  String get transferColBody => 'मजकूर';

  @override
  String get transferColDue => 'अंतिम तारीख';

  @override
  String get transferColPriority => 'प्राधान्य (0-3)';

  @override
  String get transferColDone => 'पूर्ण';

  @override
  String get transferColProject => 'प्रकल्प';

  @override
  String get transferColCategory => 'श्रेणी';

  @override
  String get transferTitle => 'आयात आणि निर्यात';

  @override
  String get transferSaveAs => 'म्हणून जतन करा';

  @override
  String get transferImport => 'फाइलमधून आयात करा';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV किंवा Word मधील तक्ता. स्तंभ: शीर्षक, अंतिम तारीख (2026-12-31), प्राधान्य 0-3, पूर्ण, प्रकल्प, टिपा. ॲपमध्ये आधीच असलेली कार्ये वगळली जातात.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown किंवा मजकूर फाइल टीप बनतात. Excel किंवा CSV: प्रत्येक ओळीसाठी एक टीप (शीर्षक, मजकूर).';

  @override
  String get transferSaved => 'फाइल जतन केली';

  @override
  String get transferFailed => 'फाइल तयार करता आली नाही. काहीही बदलले नाही.';

  @override
  String get transferUnsupported =>
      'ही फाइल इथे वाचता येत नाही. Excel, CSV, Word, Markdown किंवा मजकूर वापरा.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added जोडले',
      one: '1 जोडले',
      zero: 'जोडण्यासाठी नवीन काहीही नाही',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'मजकूर';

  @override
  String get transferAllNotes => 'सर्व टिपा';

  @override
  String get transferThisNote => 'ही टीप';

  @override
  String get transferDeckFormats => 'Excel, Word किंवा PDF म्हणून जतन करा';

  @override
  String get faqFilesQ => 'मी Excel, Word किंवा PDF फाइल वापरू शकतो का?';

  @override
  String get faqFilesA =>
      'हो. कार्ये आणि टिपांच्या वर आयात-निर्यात बटण (दोन बाण) आहे, आणि प्रत्येक संचात ते मेनूमध्ये आहे. Excel, CSV, Word किंवा PDF म्हणून जतन करा, किंवा Excel, CSV, Word, Markdown किंवा मजकूर फाइल आणा. स्तंभांची नावे ॲपच्या कोणत्याही भाषेत असू शकतात, आणि जतन केलेल्या फाइल नेहमी पुन्हा आयात करता येतात.';

  @override
  String get tplLecture => 'व्याख्यान';

  @override
  String get tplBook => 'पुस्तक सारांश';

  @override
  String get tplJournal => 'दैनंदिनी';

  @override
  String get tplWeek => 'साप्ताहिक योजना';

  @override
  String get tplLectureBody => '## मुख्य मुद्दे\n- \n\n## प्रश्न\n- [ ] \n\n## सारांश\n';

  @override
  String get tplBookBody =>
      '## मुख्य कल्पना\n\n## मी काय शिकलो\n- \n\n## अवतरणे\n> \n\n## अंमलात आणण्यासाठी\n- [ ] \n';

  @override
  String get tplJournalBody => '## कृतज्ञता\n- \n\n## आजचे लक्ष\n- [ ] \n\n## टिपा\n';

  @override
  String get tplWeekBody =>
      '## या आठवड्याची उद्दिष्टे\n- [ ] \n\n### शनिवार\n- [ ] \n\n### रविवार\n- [ ] \n\n### सोमवार\n- [ ] \n\n### मंगळवार\n- [ ] \n\n### बुधवार\n- [ ] \n\n### गुरुवार\n- [ ] \n\n### शुक्रवार\n- [ ] \n';

  @override
  String get tplHint => 'साच्यापासून सुरू करा';

  @override
  String get noteImage => 'चित्र';

  @override
  String get noteAddImage => 'चित्र जोडा';

  @override
  String get noteImageUnreadable => 'ही फाइल ॲप वाचू शकेल असे चित्र नाही.';

  @override
  String get noteImageTooLarge => 'हे चित्र खूप मोठे आहे.';

  @override
  String get examSet => 'परीक्षेची तारीख सेट करा';

  @override
  String get examDate => 'परीक्षेची तारीख';

  @override
  String get examToday => 'आज परीक्षा. शुभेच्छा!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवसांत परीक्षा',
      one: 'उद्या परीक्षा',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दररोज $count नवीन कार्ड शिका',
      one: 'दररोज 1 नवीन कार्ड शिका',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'सर्व कार्ड शिकून झाली, उजळणी सुरू ठेवा';

  @override
  String examRaiseLimit(int count) {
    return 'दररोज $count नवीन कार्ड दाखवा';
  }

  @override
  String get backupDriveHint =>
      'ऑनलाइन प्रत ठेवण्यासाठी, पुढे उघडणाऱ्या जतन स्क्रीनवर Google Drive (किंवा दुसरे क्लाउड ॲप) निवडा.';

  @override
  String get flashShareDeck => 'मित्रासोबत संच शेअर करा';

  @override
  String get flashSortManual => 'माझा क्रम (ओढा)';

  @override
  String get flashReorderHint => 'कार्ड हलवण्यासाठी हँडल धरून ओढा.';

  @override
  String get flashReorderNeedsAll => 'कार्ड ओढण्यासाठी शोध आणि फिल्टर साफ करा.';

  @override
  String get flashDragHandle => 'हलवण्यासाठी ओढा';

  @override
  String get reportTitle => 'मासिक अहवाल';

  @override
  String get reportFocus => 'लक्षाचा वेळ';

  @override
  String reportSessions(int count) {
    return '$count सत्रे';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'सर्वोत्तम दिवस: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count सक्रिय दिवस';
  }

  @override
  String get reportCards => 'उजळणी केलेली कार्ड';

  @override
  String reportCardsKnown(String percent) {
    return '$percent लक्षात';
  }

  @override
  String get reportTasks => 'पूर्ण झालेली कार्ये';

  @override
  String get reportHabits => 'सवयी चेक-इन';

  @override
  String get reportEmpty => 'या महिन्यात अजून काहीही नोंदलेले नाही.';

  @override
  String get reportSave => 'PDF किंवा Word म्हणून जतन करा';

  @override
  String get reportPrevMonth => 'मागील महिना';

  @override
  String get reportNextMonth => 'पुढील महिना';

  @override
  String get careTitle => 'तुमच्या फोन आणि डेटाची काळजी';

  @override
  String get storageTitle => 'संग्रह';

  @override
  String get storageSubtitle => 'काय जागा घेते आणि न वापरलेल्या चित्रांची साफसफाई';

  @override
  String get storagePictures => 'टिपांमधील चित्रे';

  @override
  String get storageCardMedia => 'कार्डमधील प्रतिमा आणि ऑडिओ';

  @override
  String get storageText => 'टिपांचा मजकूर';

  @override
  String get storageFree => 'फोनवरील मोकळी जागा';

  @override
  String get storageLow =>
      'तुमचा फोन जवळजवळ भरला आहे. बॅकअप आणि स्मरणपत्रे काम करत राहण्यासाठी थोडी जागा मोकळी करा.';

  @override
  String storageUnused(int count, String size) {
    return '$count न वापरलेली चित्रे ($size)';
  }

  @override
  String get storageNoUnused => 'न वापरलेली चित्रे नाहीत. सर्व काही नीटनेटके आहे.';

  @override
  String get storageClean => 'न वापरलेली चित्रे काढा';

  @override
  String storageCleaned(int count) {
    return '$count चित्रे काढली';
  }

  @override
  String get storageHint =>
      'कचरापेटीतील टिपांसह कोणतीही टीप चित्र दाखवत नसेल तेव्हाच ते न वापरलेले मानले जाते.';

  @override
  String get batteryTitle => 'स्मरणपत्रे चालू ठेवा';

  @override
  String get batterySubtitle => 'काही फोन पार्श्वभूमीत ॲप्स थांबवतात. तुमचा तपासा.';

  @override
  String get batteryStatusOk =>
      'बॅटरी बचत हे ॲप मर्यादित करत नाही. स्मरणपत्रे आणि ध्वनी वेळेवर यायला हवेत.';

  @override
  String get batteryStatusLimited =>
      'बॅटरी बचत हे ॲप पार्श्वभूमीत थांबवू शकते, त्यामुळे स्मरणपत्रे आणि ध्वनी उशिरा येऊ शकतात किंवा येणार नाहीत.';

  @override
  String get batteryOpen => 'बॅटरी सेटिंग्ज उघडा';

  @override
  String get batteryOpenApp => 'ॲप सेटिंग्ज उघडा';

  @override
  String get batteryGeneric =>
      'बॅटरी सेटिंग्जमध्ये हे ॲप निवडा आणि ते अप्रतिबंधित (किंवा ऑप्टिमाइझ करू नका) वर सेट करा.';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: सुरक्षा › परवानग्या › ऑटोस्टार्ट उघडून हे ॲप सुरू करा, आणि बॅटरी सेव्हर निर्बंध नाहीत वर सेट करा.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: बॅटरी › हे ॲप उघडा आणि पार्श्वभूमी क्रियाकलाप व ऑटो-लाँचला परवानगी द्या; अलीकडील ॲप्स सूचीत ॲप लॉक करा.';

  @override
  String get batterySamsung =>
      'Samsung: बॅटरी › पार्श्वभूमी वापर मर्यादा: हे ॲप झोपलेले ॲप्स आणि गाढ झोपलेले ॲप्स मधून काढा.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: ॲप लाँच › हे ॲप › मॅन्युअली व्यवस्थापित करा, आणि ऑटो-लाँच, दुय्यम लाँच व पार्श्वभूमीत चालण्याला परवानगी द्या.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: बॅटरी › पार्श्वभूमी ऊर्जा वापर › हे ॲप परवानगी द्या, आणि परवानग्यांमध्ये ऑटो-स्टार्ट सक्षम करा.';

  @override
  String get whatsNewTitle => 'नवीन काय';

  @override
  String get whatsNewSubtitle => 'नवीनतम बदल काही ओळींमध्ये';

  @override
  String get whatsNewDone => 'समजले';

  @override
  String get whatsNewOrderTitle => 'कार्ड तुमच्या स्वतःच्या क्रमाने ओढा';

  @override
  String get whatsNewOrderBody => 'संचात क्रमवारी › माझा क्रम निवडा, मग हँडल धरून ओढा.';

  @override
  String get whatsNewSpeechTitle => 'प्रत्येक कार्ड बाजूवर स्पीकर';

  @override
  String get whatsNewSpeechBody =>
      'शब्द किंवा भाषांतर ऐकण्यासाठी त्यावर टॅप करा. वेग, पुनरावृत्ती आणि आवाज उजळणी मेनूमध्ये आहेत. भाषा मजकुरावरून ओळखली जाते.';

  @override
  String get whatsNewReportTitle => 'मासिक अहवाल';

  @override
  String get whatsNewReportBody =>
      'अंतर्दृष्टीमध्ये अहवाल चिन्हावर टॅप करून महिना पाहा आणि तो PDF किंवा Word म्हणून जतन करा.';

  @override
  String get whatsNewCareTitle => 'तुमच्या फोन आणि डेटाची काळजी';

  @override
  String get whatsNewCareBody =>
      'सेटिंग्जमध्ये आता चित्र साफसफाईसह संग्रह पृष्ठ आणि तुमच्या फोन ब्रँडसाठी बॅटरी मार्गदर्शक आहे.';

  @override
  String get whatsNewSoundTitle => 'अधिक शांत ध्वनी';

  @override
  String get whatsNewSoundBody =>
      'निसर्ग ध्वनी अधिक मऊ आणि शांत आहेत, आणि चित्र कार्ड अधिक सुंदर आहेत.';

  @override
  String autoBackupCheckOk(String date) {
    return '$date रोजी तपासले: नवीनतम बॅकअप योग्यरित्या उघडतो.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date रोजी तपासले: खराब बॅकअप सापडला आणि नवीनने बदलला.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date रोजी तपासले: नवीनतम बॅकअप उघडता आला नाही. सेटिंग्जमधून स्वतः बॅकअप फाइल जतन करा.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'तुम्ही सहसा सुमारे $time वाजता अभ्यास करता';
  }

  @override
  String get smartReviewTimeUse => 'वापरा';

  @override
  String get widgetNewNote => 'नवीन टीप';

  @override
  String get noteConnections => 'टॅग, दुवे आणि कार्ये';

  @override
  String get navCards => 'कार्ड';

  @override
  String get studyAnswerWay => 'उत्तर कसे द्यावे';

  @override
  String get studyMorePractice => 'अतिरिक्त सराव';

  @override
  String get studySessionSettings => 'सत्र सेटिंग्ज';

  @override
  String get focusAdjustTitle => 'तुमचे सत्र';

  @override
  String get focusPresetsTitle => 'तयार';

  @override
  String get focusPresetStudy => 'अभ्यास';

  @override
  String get focusPresetDeep => 'सखोल काम';

  @override
  String get focusPresetQuick => 'झटपट स्प्रिंट';

  @override
  String get focusPresetReading => 'वाचन';

  @override
  String get focusPresetWorkout => 'व्यायाम फेऱ्या';

  @override
  String get focusAdjustMinutes => 'लक्षाचा कालावधी';

  @override
  String get focusAdjustBreak => 'विरामाचा कालावधी';

  @override
  String get focusAdjustRounds => 'फेऱ्या';

  @override
  String get focusRoundsOpen => 'मर्यादा नाही';

  @override
  String focusMinutesShort(String n) {
    return '$n मि';
  }

  @override
  String get focusTapToAdjust => 'वेळ बदलण्यासाठी टॅप करा';

  @override
  String get flashArrangeDecks => 'संच व्यवस्थित करा';

  @override
  String get flashDeckActions => 'संच पर्याय';

  @override
  String get starterBrowse => 'तयार संच';

  @override
  String get starterBrowseHint => 'एका टॅपने जोडा आणि शिकायला सुरुवात करा';

  @override
  String get dashOpenDecks => 'तुमची कार्ड उघडा';

  @override
  String speechVoiceNumber(String n) {
    return 'आवाज $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'छान प्रवाह. $m मि विश्रांती घ्यायची?';
  }

  @override
  String get focusFlowBreakStart => 'विराम सुरू करा';

  @override
  String tasksFinishAt(String time) {
    return 'आता सुरू केल्यास तुम्ही सर्व काही $time पर्यंत पूर्ण कराल';
  }

  @override
  String get focusCalmPacing => 'शांत गती';

  @override
  String get focusCalmPacingHint => 'फक्त पूर्ण मिनिटे आणि वर्तुळ, टिकटिकणारे सेकंद नाहीत';

  @override
  String get focusFlipHint => 'सुरू करण्यासाठी फोन उपडा ठेवा';

  @override
  String get focusImmersive => 'तल्लीन मोड';

  @override
  String get focusImmersiveBlack => 'शुद्ध काळा (बॅटरी वाचवतो)';

  @override
  String get focusFlipToFocus => 'उलटून लक्ष';

  @override
  String get focusFlipToFocusHint => 'तल्लीन मोडमध्ये: उपडा ठेवल्यास सुरू होते, उचलल्यास विराम';

  @override
  String get guardTitle => 'विचलन संरक्षण';

  @override
  String get guardSubtitle => 'लक्ष केंद्रित करताना विचलित करणाऱ्या ॲप्सना विराम द्या';

  @override
  String get guardSwitch => 'विचलित करणाऱ्या ॲप्सना विराम द्या';

  @override
  String get guardSwitchHint => 'लक्ष सत्रे आणि तुमच्या टाइम गार्ड तासांमध्ये';

  @override
  String get guardNeedsAccess => 'सुलभता स्विच आवश्यक: सुरू करण्यासाठी टॅप करा';

  @override
  String get guardDisclosureTitle => 'संरक्षण कसे काम करते';

  @override
  String get guardDisclosureBody =>
      'तुम्ही निवडलेल्या ॲप्सना विराम देण्यासाठी, कोणते ॲप उघडे आहे हे पाहण्यासाठी Deep Focus Android ची सुलभता सेवा वापरते. \"Shorts आणि Reels बंद करा\" सुरू असल्यास, स्क्रीनवर शॉर्ट-व्हिडिओ प्लेयर आहे का हेही तपासते.\n\nते कोणताही मजकूर वाचत नाही, जे दिसते ते साठवत नाही आणि कुठेही काहीही पाठवत नाही: सर्व काही तुमच्या फोनवर राहते. सुलभता सेटिंग्जमध्ये तुम्ही ते कधीही बंद करू शकता.';

  @override
  String get guardAgree => 'सहमत व्हा आणि सेटिंग्ज उघडा';

  @override
  String get guardModeGentle => 'सौम्य';

  @override
  String get guardModeStrict => 'कठोर';

  @override
  String get guardGentleHint => '5 सेकंदांचा श्वासविराम, मग तुम्ही निवडा';

  @override
  String get guardStrictHint => 'निवडलेली ॲप्स लक्षाचा वेळ संपेपर्यंत बंद राहतात';

  @override
  String get guardApps => 'विराम द्यायची ॲप्स';

  @override
  String get guardAppsAllowed => 'परवानगी असलेली ॲप्स';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ॲप्स',
      one: '1 ॲप',
      zero: 'अजून काहीही निवडलेले नाही',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'फक्त निवडलेल्या ॲप्सना परवानगी द्या';

  @override
  String get guardAllowlistHint =>
      'इतर सर्व ॲप्सना विराम दिला जातो; कॉल, सेटिंग्ज आणि कीबोर्ड नेहमी काम करतात';

  @override
  String get guardShorts => 'Shorts आणि Reels बंद करा';

  @override
  String get guardShortsHint => 'संरक्षण सुरू असताना कधीही. शक्य तितके: ही ॲप्स वारंवार बदलतात';

  @override
  String get guardSchedule => 'टाइम गार्ड';

  @override
  String get guardScheduleHint =>
      'शाळा किंवा कामासारख्या ठरवलेल्या दिवशी आणि तासांमध्येही संरक्षण करा';

  @override
  String get guardFrom => 'पासून';

  @override
  String get guardTo => 'पर्यंत';

  @override
  String get guardSearchApps => 'ॲप्स शोधा';

  @override
  String get guardNoApps => 'ॲप्स सापडली नाहीत';

  @override
  String get guardPrivacy =>
      'फक्त तुमच्या फोनवर काम करते: संरक्षण कोणते ॲप उघडे आहे ते पाहते, त्यात काय आहे ते कधीच नाही, आणि काहीही पाठवत नाही.';

  @override
  String get guardBreathe => 'श्वास घ्या… आणि सोडा';

  @override
  String get guardQuestion => 'तुम्हाला आता हे ॲप हवे आहे का?';

  @override
  String get guardBackToFocus => 'लक्षाकडे परत';

  @override
  String get guardOpenFive => '5 मिनिटांसाठी उघडा';

  @override
  String get guardStrictBody => 'तुमचा लक्षाचा वेळ संपेपर्यंत या ॲपला विराम दिला आहे.';

  @override
  String get guardShortsClosed => 'संरक्षण सुरू असताना शॉर्ट व्हिडिओ बंद केले जातात';

  @override
  String get faqGuardQ => 'लक्ष केंद्रित करताना विचलित करणारी ॲप्स कशी थांबवू?';

  @override
  String get faqGuardA =>
      'लक्ष → टायमर सेटिंग्ज → विचलन संरक्षण उघडा. ॲप्स निवडा, मग सौम्य (5 सेकंदांचा श्वास आणि \"तुम्हाला आता हे ॲप हवे आहे का?\" हा प्रश्न) किंवा कठोर (ती बंद राहतात) निवडा. ते लक्ष सत्रांमध्ये आणि टाइम गार्डसह तुम्ही ठरवलेल्या दिवशी व तासांमध्ये काम करते. \"फक्त निवडलेल्या ॲप्सना परवानगी द्या\" बाकी सर्वांना विराम देते; कॉल, सेटिंग्ज आणि कीबोर्ड नेहमी काम करतात. Android तुम्हाला एकदा सुलभता सेटिंग्जमध्ये संरक्षण सुरू करण्यास सांगते. ते फक्त कोणते ॲप उघडे आहे ते पाहते आणि काहीही पाठवत नाही.';

  @override
  String notesMovedToNotebook(String name) {
    return '$name मध्ये हलवले';
  }

  @override
  String get notesDragHint => 'टीप धरून वहीवर ओढा';

  @override
  String get guardReviewCards => 'त्याऐवजी कार्डची उजळणी करा';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड तुमची वाट पाहत आहेत',
      one: '1 कार्ड तुमची वाट पाहत आहे',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'आणीबाणी: 10 सेकंद दाबून धरा';

  @override
  String guardEmergencyHolding(Object n) {
    return 'धरून ठेवा… $n';
  }

  @override
  String get guardWeekTitle => 'हा आठवडा';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count विराम',
      one: '1 विराम',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वेळा लक्षाकडे परतले',
      one: 'एकदा लक्षाकडे परतले',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'शब्दांचे नाव बदला';

  @override
  String get wordsSubtitle => 'ॲपमधील कोणत्याही मजकुरासाठी तुमचा स्वतःचा शब्द वापरा';

  @override
  String get wordsHint =>
      'बदलण्यासाठी मजकुरावर टॅप करा. तुमचे शब्द फक्त या भाषेला लागू होतात आणि बॅकअपमध्ये ठेवले जातात.';

  @override
  String get wordsSearch => 'मजकूर शोधा';

  @override
  String get wordsChangedOnly => 'फक्त बदललेले';

  @override
  String wordsOriginal(String text) {
    return 'मूळ: $text';
  }

  @override
  String get wordsReset => 'मूळ वापरा';

  @override
  String get wordsResetAll => 'सर्व शब्द रीसेट करा';

  @override
  String get wordsResetAllConfirm => 'या भाषेतील प्रत्येक मजकूर मूळकडे परत जाईल.';

  @override
  String get wordsNone => 'मजकूर सापडला नाही';

  @override
  String get settingsLanguageSearch => 'भाषा शोधा';

  @override
  String get settingsLanguageNoMatch => 'जुळणारी भाषा नाही';

  @override
  String get soundsMyMusic => 'तुमचा ऑडिओ';

  @override
  String get soundsMusicHint =>
      'तुमच्या फोनमधील ऑडिओ फाइल वाजवा. काहीही कॉपी किंवा अपलोड होत नाही.';

  @override
  String get soundsChooseMusic => 'ऑडिओ निवडा';

  @override
  String get soundsRemoveMusic => 'ऑडिओ काढा';

  @override
  String get wordPacksTitle => 'भाषा शिका';

  @override
  String get wordPacksHint =>
      'विषयानुसार शब्दांच्या याद्या. फक्त हवी ती भाषा डाउनलोड करा, मग कार्ड मोकळेपणाने संपादित करा किंवा हटवा.';

  @override
  String get wordPacksFailed => 'डाउनलोड करता आले नाही. कनेक्शन तपासा.';

  @override
  String get wordPacksEmpty => 'या भाषेतील शब्द अजून तयार होत आहेत.';
}
