// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'होम';

  @override
  String get navTasks => 'कार्य';

  @override
  String get navFocus => 'फ़ोकस';

  @override
  String get navCalendar => 'कैलेंडर';

  @override
  String get navSpaces => 'स्पेस';

  @override
  String get moduleProjects => 'प्रोजेक्ट';

  @override
  String get moduleNotes => 'नोट्स';

  @override
  String get moduleFlashcards => 'फ़्लैशकार्ड';

  @override
  String get moduleGoals => 'लक्ष्य';

  @override
  String get moduleHabits => 'आदतें';

  @override
  String get moduleAnalytics => 'इनसाइट्स';

  @override
  String get moduleSearch => 'खोज';

  @override
  String get moduleAssistant => 'असिस्टेंट';

  @override
  String get moduleSettings => 'सेटिंग्स';

  @override
  String get moduleTrash => 'ट्रैश';

  @override
  String get actionSave => 'सहेजें';

  @override
  String get actionCancel => 'रद्द करें';

  @override
  String get actionDelete => 'हटाएँ';

  @override
  String get actionEdit => 'संपादित करें';

  @override
  String get actionDone => 'हो गया';

  @override
  String get actionAdd => 'जोड़ें';

  @override
  String get actionCreate => 'बनाएँ';

  @override
  String get actionClose => 'बंद करें';

  @override
  String get actionBack => 'वापस';

  @override
  String get actionUndo => 'पूर्ववत करें';

  @override
  String get actionRestore => 'पुनर्स्थापित करें';

  @override
  String get actionRetry => 'फिर से कोशिश करें';

  @override
  String get actionContinue => 'जारी रखें';

  @override
  String get actionSkip => 'छोड़ें';

  @override
  String get actionArchive => 'आर्काइव करें';

  @override
  String get actionUnarchive => 'आर्काइव से हटाएँ';

  @override
  String get actionPin => 'पिन करें';

  @override
  String get actionUnpin => 'अनपिन करें';

  @override
  String get actionMore => 'और विकल्प';

  @override
  String get actionClear => 'साफ़ करें';

  @override
  String get actionSearch => 'खोजें';

  @override
  String get actionSort => 'क्रम';

  @override
  String get actionShare => 'शेयर करें';

  @override
  String get actionImport => 'इंपोर्ट करें';

  @override
  String get actionExport => 'एक्सपोर्ट करें';

  @override
  String get actionPause => 'रोकें';

  @override
  String get actionResume => 'फिर शुरू करें';

  @override
  String get actionStart => 'शुरू करें';

  @override
  String get actionStop => 'बंद करें';

  @override
  String get actionComplete => 'पूरा करें';

  @override
  String get actionDeleteForever => 'हमेशा के लिए हटाएँ';

  @override
  String get actionEmptyTrash => 'ट्रैश खाली करें';

  @override
  String get actionUnlink => 'अनलिंक करें';

  @override
  String get actionCustomize => 'कस्टमाइज़ करें';

  @override
  String get actionPreview => 'प्रीव्यू';

  @override
  String get actionLog => 'प्रगति दर्ज करें';

  @override
  String get stateLoading => 'लोड हो रहा है…';

  @override
  String get stateSaving => 'सहेजा जा रहा है…';

  @override
  String get stateSaved => 'सहेजा गया';

  @override
  String get stateUnsaved => 'बदलाव सहेजे नहीं गए';

  @override
  String get errorGenericTitle => 'कुछ गड़बड़ हो गई';

  @override
  String get errorGenericMessage => 'आपका डेटा सुरक्षित है। कृपया फिर से कोशिश करें।';

  @override
  String get errorLoadFailed => 'यह सामग्री लोड नहीं हो सकी।';

  @override
  String get errorSaveFailed => 'सहेजा नहीं जा सका। आपके बदलाव अभी भी यहीं हैं।';

  @override
  String get validationRequired => 'यह फ़ील्ड ज़रूरी है';

  @override
  String get validationTitleRequired => 'कृपया शीर्षक दर्ज करें';

  @override
  String get validationNameRequired => 'कृपया नाम दर्ज करें';

  @override
  String get validationTooLong => 'यह बहुत लंबा है';

  @override
  String get validationEndBeforeStart => 'समाप्ति, शुरुआत के बाद होनी चाहिए';

  @override
  String get validationStartAfterDue => 'शुरुआत की तारीख, नियत तारीख से पहले होनी चाहिए';

  @override
  String get validationPositiveNumber => 'शून्य से बड़ी संख्या दर्ज करें';

  @override
  String get validationDependencyCycle => 'इससे एक चक्रीय निर्भरता बन जाएगी';

  @override
  String get validationInvalidRepeat => 'यह दोहराव नियम मान्य नहीं है';

  @override
  String get deletedItem => 'ट्रैश में भेजा गया';

  @override
  String get untitled => 'बिना शीर्षक';

  @override
  String get noProject => 'कोई प्रोजेक्ट नहीं';

  @override
  String get greetingMorning => 'सुप्रभात';

  @override
  String get greetingAfternoon => 'नमस्कार';

  @override
  String get greetingEvening => 'शुभ संध्या';

  @override
  String get dashFocusToday => 'आज का फ़ोकस';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$target में से $done';
  }

  @override
  String get dashStartFocus => 'फ़ोकस शुरू करें';

  @override
  String get dashFocusRunning => 'सत्र जारी है';

  @override
  String get dashTodayTasks => 'आज नियत';

  @override
  String get dashAgenda => 'एजेंडा';

  @override
  String get dashHabits => 'आज की आदतें';

  @override
  String get dashGoals => 'लक्ष्य';

  @override
  String get dashReview => 'रिव्यू';

  @override
  String get dashRecentNotes => 'हाल के नोट्स';

  @override
  String get dashInsight => 'सुझाव';

  @override
  String get dashSeeAll => 'सभी देखें';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड नियत',
      one: '1 कार्ड नियत',
      zero: 'कोई कार्ड नियत नहीं',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'अभी रिव्यू करें';

  @override
  String get dashCustomizeTitle => 'डैशबोर्ड सेक्शन';

  @override
  String get dashCustomizeHint => 'चुनें कि आपकी होम स्क्रीन पर क्या दिखे।';

  @override
  String get dashSectionFocus => 'फ़ोकस';

  @override
  String get dashSectionToday => 'आज नियत कार्य';

  @override
  String get dashSectionAgenda => 'एजेंडा';

  @override
  String get dashSectionHabits => 'आदतें';

  @override
  String get dashSectionGoals => 'लक्ष्य';

  @override
  String get dashSectionReview => 'फ़्लैशकार्ड रिव्यू';

  @override
  String get dashSectionNotes => 'हाल के नोट्स';

  @override
  String get dashSectionInsight => 'सुझाव';

  @override
  String get quickAddTask => 'नया कार्य';

  @override
  String get quickAddNote => 'नया नोट';

  @override
  String get quickAddEvent => 'नया इवेंट';

  @override
  String get quickStartFocus => 'फ़ोकस';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आपके $count कार्य समय से पीछे हैं। सबसे ज़रूरी कार्य से शुरुआत करें।',
      one: 'आपका 1 कार्य समय से पीछे है। इसे फिर से शेड्यूल करें या पहले पूरा करें।',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'आप अपने दैनिक फ़ोकस लक्ष्य से $minutes मिनट दूर हैं।';
  }

  @override
  String get insightCardsDue => 'अपने नियत फ़्लैशकार्ड अभी रिव्यू करें, जब तक वे याद ताज़ा हैं।';

  @override
  String get insightAllClear => 'सब कुछ सही दिशा में है। कल की योजना बनाएँ या सुकून भरा ब्रेक लें।';

  @override
  String insightHabitStreak(String habit) {
    return 'अपना स्ट्रीक बनाए रखें: “$habit” आज अभी बाकी है।';
  }

  @override
  String get focusTitle => 'फ़ोकस';

  @override
  String get focusModePomodoro => 'पोमोडोरो';

  @override
  String get focusModeCountdown => 'टाइमर';

  @override
  String get focusModeCountUp => 'स्टॉपवॉच';

  @override
  String get focusModeOpen => 'खुला';

  @override
  String get focusPhaseWork => 'फ़ोकस';

  @override
  String get focusPhaseShortBreak => 'छोटा ब्रेक';

  @override
  String get focusPhaseLongBreak => 'लंबा ब्रेक';

  @override
  String get focusReady => 'जब आप तैयार हों';

  @override
  String get focusPaused => 'रुका हुआ';

  @override
  String get focusRunning => 'फ़ोकस में';

  @override
  String get focusDuration => 'अवधि';

  @override
  String get focusLinkTask => 'कार्य लिंक करें';

  @override
  String get focusLinkedTask => 'इस पर काम चल रहा है';

  @override
  String get focusNoTask => 'कोई कार्य लिंक नहीं';

  @override
  String focusCycle(int current, int total) {
    return 'चक्र $current / $total';
  }

  @override
  String get focusSkipBreak => 'ब्रेक छोड़ें';

  @override
  String get focusStartBreak => 'ब्रेक शुरू करें';

  @override
  String get focusStartNext => 'अगला फ़ोकस शुरू करें';

  @override
  String get focusSessionComplete => 'सत्र पूरा हुआ';

  @override
  String get focusSessionStopped => 'सत्र सहेजा गया';

  @override
  String focusSessionSummary(String duration) {
    return 'आपने $duration तक फ़ोकस किया।';
  }

  @override
  String get focusAddNote => 'इस सत्र के बारे में नोट जोड़ें';

  @override
  String get focusHistory => 'इतिहास';

  @override
  String get focusNoHistory => 'पूरे हुए सत्र यहाँ दिखेंगे';

  @override
  String get focusTargets => 'लक्ष्य';

  @override
  String get focusDailyTarget => 'दैनिक लक्ष्य';

  @override
  String get focusWeeklyTarget => 'साप्ताहिक लक्ष्य';

  @override
  String get focusOutcomeCompleted => 'पूरा हुआ';

  @override
  String get focusOutcomeInterrupted => 'जल्दी रोका गया';

  @override
  String get focusRecovered => 'ऐप बंद होने के दौरान भी आपका सत्र जारी रहा।';

  @override
  String get focusCompletedWhileAway =>
      'ऐप बंद होने के दौरान एक सत्र पूरा हुआ और उसे सहेज लिया गया है।';

  @override
  String get focusNotificationsOff =>
      'नोटिफ़िकेशन बंद हैं। सत्र समाप्त होने पर आपको सूचना नहीं मिलेगी।';

  @override
  String get focusBatteryHint =>
      'कुछ डिवाइस बैकग्राउंड में ऐप्स को रोक देते हैं। टाइमर सटीक रहता है, लेकिन अलर्ट में देरी हो सकती है। भरोसेमंद अलर्ट के लिए बिना प्रतिबंध बैटरी उपयोग की अनुमति दें।';

  @override
  String get focusOpenSettings => 'सेटिंग्स खोलें';

  @override
  String get focusStopConfirmTitle => 'यह सत्र रोकें?';

  @override
  String get focusStopConfirmMessage => 'अब तक का फ़ोकस समय सहेज लिया जाएगा।';

  @override
  String get focusDiscard => 'छोड़ दें';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes मिनट',
      one: '1 मिनट',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time शेष';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time बीता';
  }

  @override
  String get focusDeleteSession => 'सत्र हटाएँ';

  @override
  String get tasksTitle => 'कार्य';

  @override
  String get tasksViewToday => 'आज';

  @override
  String get tasksViewUpcoming => 'आगामी';

  @override
  String get tasksViewAll => 'सभी';

  @override
  String get tasksViewOverdue => 'विलंबित';

  @override
  String get tasksViewCompleted => 'पूरे';

  @override
  String get tasksQuickAddHint => 'कार्य जोड़ें…';

  @override
  String get tasksEmptyTitle => 'सब साफ़ है';

  @override
  String get tasksEmptyMessage => 'अपने दिन को आकार देने के लिए एक कार्य जोड़ें।';

  @override
  String get tasksEmptyCompleted => 'पूरे किए गए कार्य यहाँ दिखेंगे।';

  @override
  String get taskNew => 'नया कार्य';

  @override
  String get taskEdit => 'कार्य संपादित करें';

  @override
  String get taskTitleLabel => 'शीर्षक';

  @override
  String get taskTitleHint => 'क्या करना है?';

  @override
  String get taskDescriptionLabel => 'विवरण';

  @override
  String get taskNotesLabel => 'नोट्स';

  @override
  String get taskPriority => 'प्राथमिकता';

  @override
  String get priorityNone => 'कोई नहीं';

  @override
  String get priorityLow => 'कम';

  @override
  String get priorityMedium => 'मध्यम';

  @override
  String get priorityHigh => 'उच्च';

  @override
  String get priorityUrgent => 'तत्काल';

  @override
  String get taskDueDate => 'नियत तारीख';

  @override
  String get taskStartDate => 'शुरुआत की तारीख';

  @override
  String get taskReminder => 'रिमाइंडर';

  @override
  String get taskRepeat => 'दोहराएँ';

  @override
  String get taskProject => 'प्रोजेक्ट';

  @override
  String get taskCategory => 'श्रेणी';

  @override
  String get taskCategoryHint => 'जैसे काम, घर, पढ़ाई';

  @override
  String get taskEstimateMinutes => 'अनुमान (मिनट)';

  @override
  String get taskTracked => 'दर्ज फ़ोकस';

  @override
  String get taskLabels => 'लेबल';

  @override
  String get taskAddLabel => 'नया लेबल';

  @override
  String get taskChecklist => 'चेकलिस्ट';

  @override
  String get taskAddChecklistItem => 'आइटम जोड़ें';

  @override
  String get taskSubtasks => 'उप-कार्य';

  @override
  String get taskAddSubtask => 'उप-कार्य जोड़ें';

  @override
  String get taskDependencies => 'इन पर निर्भर';

  @override
  String get taskAddDependency => 'अवरोधक कार्य जोड़ें';

  @override
  String get taskLinkedNotes => 'लिंक किए गए नोट्स';

  @override
  String get taskSetTime => 'समय तय करें';

  @override
  String get taskNoDate => 'कोई तारीख नहीं';

  @override
  String get taskCompleted => 'कार्य पूरा हुआ';

  @override
  String get taskNextOccurrence => 'अगली आवृत्ति बनाई गई';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिन विलंबित',
      one: '1 दिन विलंबित',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '“$title” को पूरा चिह्नित करें';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '“$title” को अधूरा चिह्नित करें';
  }

  @override
  String get sortSmart => 'स्मार्ट';

  @override
  String get sortDueDate => 'नियत तारीख';

  @override
  String get sortPriority => 'प्राथमिकता';

  @override
  String get sortCreated => 'नवीनतम';

  @override
  String get sortTitle => 'शीर्षक';

  @override
  String get filterAllProjects => 'सभी प्रोजेक्ट';

  @override
  String get filterAnyPriority => 'कोई भी प्राथमिकता';

  @override
  String get filterTitle => 'फ़िल्टर और क्रम';

  @override
  String get dateToday => 'आज';

  @override
  String get dateTomorrow => 'कल';

  @override
  String get dateYesterday => 'बीता कल';

  @override
  String get repeatNever => 'दोहराव नहीं';

  @override
  String get repeatDaily => 'हर दिन';

  @override
  String get repeatWeekdays => 'हर कार्यदिवस';

  @override
  String get repeatWeekly => 'हर हफ़्ते';

  @override
  String get repeatMonthly => 'हर महीने';

  @override
  String get repeatYearly => 'हर साल';

  @override
  String get repeatCustom => 'कस्टम';

  @override
  String get repeatEvery => 'हर बार दोहराएँ';

  @override
  String get repeatOnDays => 'इन दिनों में';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'दिन', one: 'दिन');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'हफ़्ते',
      one: 'हफ़्ता',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'महीने', one: 'महीना');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'साल', one: 'साल');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बार',
      one: '1 बार',
    );
    return '$_temp0 के बाद समाप्त';
  }

  @override
  String get repeatEndsNever => 'कभी समाप्त नहीं';

  @override
  String get reminderAtTime => 'इवेंट के समय';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes मिनट पहले',
      one: '1 मिनट पहले',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours घंटे पहले',
      one: '1 घंटा पहले',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 दिन पहले';

  @override
  String get projectsTitle => 'प्रोजेक्ट';

  @override
  String get projectsEmptyTitle => 'अभी कोई प्रोजेक्ट नहीं';

  @override
  String get projectsEmptyMessage => 'संबंधित कार्यों, नोट्स और फ़ोकस समय को एक साथ रखें।';

  @override
  String get projectNew => 'नया प्रोजेक्ट';

  @override
  String get projectEdit => 'प्रोजेक्ट संपादित करें';

  @override
  String get projectName => 'नाम';

  @override
  String get projectDescription => 'विवरण';

  @override
  String get projectGoal => 'लक्ष्य';

  @override
  String get projectDeadline => 'समय-सीमा';

  @override
  String get projectColor => 'रंग';

  @override
  String get projectIcon => 'आइकन';

  @override
  String get projectProgress => 'प्रगति';

  @override
  String projectTasksDone(int done, int total) {
    return '$total में से $done कार्य पूरे';
  }

  @override
  String get projectFocusTime => 'फ़ोकस समय';

  @override
  String get projectArchived => 'आर्काइव किए गए प्रोजेक्ट';

  @override
  String get projectShowArchived => 'आर्काइव किए गए दिखाएँ';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिन बाकी',
      one: '1 दिन बाकी',
      zero: 'आज नियत',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'समय-सीमा बीत गई';

  @override
  String get calendarTitle => 'कैलेंडर';

  @override
  String get calendarMonth => 'महीना';

  @override
  String get calendarWeek => 'हफ़्ता';

  @override
  String get calendarDay => 'दिन';

  @override
  String get calendarToday => 'आज';

  @override
  String get calendarPrevious => 'पिछला';

  @override
  String get calendarNext => 'अगला';

  @override
  String get calendarNoEvents => 'कुछ भी शेड्यूल नहीं';

  @override
  String get calendarAllDay => 'पूरे दिन';

  @override
  String get eventNew => 'नया इवेंट';

  @override
  String get eventEdit => 'इवेंट संपादित करें';

  @override
  String get eventTitleHint => 'इवेंट का शीर्षक';

  @override
  String get eventStarts => 'शुरू';

  @override
  String get eventEnds => 'समाप्त';

  @override
  String get eventKind => 'प्रकार';

  @override
  String get eventKindEvent => 'इवेंट';

  @override
  String get eventKindTimeBlock => 'टाइम ब्लॉक';

  @override
  String get eventKindFocus => 'फ़ोकस सत्र';

  @override
  String get eventKindGoal => 'निजी लक्ष्य';

  @override
  String get eventDescription => 'विवरण';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count इवेंट से टकराव',
      one: '1 इवेंट से टकराव',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'इस दिन शेड्यूल में टकराव हैं';

  @override
  String get calendarTaskDue => 'नियत कार्य';

  @override
  String get calendarDragHint => 'किसी इवेंट को फिर से शेड्यूल करने के लिए देर तक दबाकर खींचें';

  @override
  String get calendarRescheduled => 'इवेंट खिसकाया गया';

  @override
  String get calendarScheduleTask => 'टाइम ब्लॉक के रूप में शेड्यूल करें';

  @override
  String get notesTitle => 'नोट्स';

  @override
  String get notesViewAll => 'सभी';

  @override
  String get notesViewPinned => 'पिन किए गए';

  @override
  String get notesViewFavorites => 'पसंदीदा';

  @override
  String get notesViewArchived => 'आर्काइव किए गए';

  @override
  String get notesTags => 'टैग';

  @override
  String get notesNewNotebook => 'नई नोटबुक';

  @override
  String get notesNoNotebook => 'कोई नोटबुक नहीं';

  @override
  String get notesEmptyTitle => 'एक कोरा कैनवास';

  @override
  String get notesEmptyMessage => 'विचार, मीटिंग नोट्स और ज्ञान सहेजें।';

  @override
  String get noteTitleHint => 'शीर्षक';

  @override
  String get noteBodyHint =>
      'लिखना शुरू करें… टैग के लिए # और नोट्स लिंक करने के लिए [[शीर्षक]] का उपयोग करें।';

  @override
  String get noteFavorite => 'पसंदीदा में जोड़ें';

  @override
  String get noteUnfavorite => 'पसंदीदा से हटाएँ';

  @override
  String get noteMoveTo => 'नोटबुक में ले जाएँ';

  @override
  String get noteBacklinks => 'यहाँ से लिंक किया गया';

  @override
  String get noteLinkedTasks => 'लिंक किए गए कार्य';

  @override
  String get noteLinkTask => 'कार्य लिंक करें';

  @override
  String get noteLinkProject => 'प्रोजेक्ट';

  @override
  String get noteFormatHeading => 'हेडिंग';

  @override
  String get noteFormatBold => 'बोल्ड';

  @override
  String get noteFormatItalic => 'इटैलिक';

  @override
  String get noteFormatList => 'बुलेट सूची';

  @override
  String get noteFormatChecklist => 'चेकलिस्ट';

  @override
  String get noteFormatLink => 'लिंक';

  @override
  String noteEdited(String time) {
    return 'संपादित $time';
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
  String get flashTitle => 'फ़्लैशकार्ड';

  @override
  String get flashEmptyTitle => 'अपना पहला डेक बनाएँ';

  @override
  String get flashEmptyMessage =>
      'स्पेस्ड रिपीटिशन हर कार्ड को ठीक उस समय दिखाता है जब आप उसे भूलने वाले होते हैं।';

  @override
  String get deckNew => 'नया डेक';

  @override
  String get deckEdit => 'डेक संपादित करें';

  @override
  String get deckName => 'डेक का नाम';

  @override
  String get deckDescription => 'विवरण';

  @override
  String get deckDailyNew => 'प्रतिदिन नए कार्ड';

  @override
  String get deckDailyReview => 'दैनिक रिव्यू लक्ष्य';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड',
      one: '1 कार्ड',
      zero: 'कोई कार्ड नहीं',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'नियत';

  @override
  String get deckNewCards => 'नए';

  @override
  String get deckMature => 'परिपक्व';

  @override
  String get deckStudy => 'पढ़ें';

  @override
  String get deckNothingDue => 'अभी कुछ भी नियत नहीं। बाद में आएँ।';

  @override
  String get deckEmptyCards => 'सीखना शुरू करने के लिए कार्ड जोड़ें।';

  @override
  String get cardNew => 'नया कार्ड';

  @override
  String get cardEdit => 'कार्ड संपादित करें';

  @override
  String get cardFront => 'आगे';

  @override
  String get cardBack => 'पीछे';

  @override
  String get cardFrontHint => 'प्रश्न या शब्द';

  @override
  String get cardBackHint => 'उत्तर या परिभाषा';

  @override
  String get cardTags => 'टैग';

  @override
  String get cardAddAnother => 'सहेजें और एक और जोड़ें';

  @override
  String get reviewShowAnswer => 'उत्तर दिखाएँ';

  @override
  String get reviewAgain => 'फिर से';

  @override
  String get reviewHard => 'कठिन';

  @override
  String get reviewGood => 'अच्छा';

  @override
  String get reviewEasy => 'आसान';

  @override
  String reviewProgress(int done, int total) {
    return '$total में से $done';
  }

  @override
  String get reviewFinishedTitle => 'सत्र पूरा हुआ';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आपने $count कार्ड रिव्यू किए।',
      one: 'आपने 1 कार्ड रिव्यू किया।',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'उत्तर देखने के लिए टैप करें';

  @override
  String get importCardsTitle => 'कार्ड इंपोर्ट करें';

  @override
  String get importCardsHint =>
      'हर पंक्ति में एक कार्ड चिपकाएँ (आगे और पीछे के बीच टैब या अर्धविराम), या फ़ाइल चुनें: Excel (.xlsx), CSV, Anki डेक (.apkg) या निर्यात किया गया डेक।';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड इंपोर्ट हुए',
      one: '1 कार्ड इंपोर्ट हुआ',
      zero: 'कोई कार्ड इंपोर्ट नहीं हुआ',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'यह सामग्री इंपोर्ट नहीं की जा सकी।';

  @override
  String get exportCopied => 'डेक एक्सपोर्ट हो गया';

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
      other: '$count दिन',
      one: '1 दिन',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'लक्ष्य';

  @override
  String get goalsEmptyTitle => 'कोई लक्ष्य साधें';

  @override
  String get goalsEmptyMessage =>
      'दैनिक, साप्ताहिक, मासिक या दीर्घकालिक लक्ष्य तय करें और असली प्रगति ट्रैक करें।';

  @override
  String get goalNew => 'नया लक्ष्य';

  @override
  String get goalEdit => 'लक्ष्य संपादित करें';

  @override
  String get goalTitleHint => 'आप क्या हासिल करना चाहते हैं?';

  @override
  String get goalPeriod => 'अवधि';

  @override
  String get goalPeriodDaily => 'दैनिक';

  @override
  String get goalPeriodWeekly => 'साप्ताहिक';

  @override
  String get goalPeriodMonthly => 'मासिक';

  @override
  String get goalPeriodLongTerm => 'दीर्घकालिक';

  @override
  String get goalTarget => 'लक्ष्य मान';

  @override
  String get goalUnit => 'इकाई';

  @override
  String get goalUnitHint => 'जैसे पेज, किमी, घंटे';

  @override
  String get goalStatusActive => 'सक्रिय';

  @override
  String get goalStatusPaused => 'रुका हुआ';

  @override
  String get goalStatusAchieved => 'हासिल';

  @override
  String get goalPause => 'लक्ष्य रोकें';

  @override
  String get goalResume => 'लक्ष्य फिर शुरू करें';

  @override
  String get goalMarkAchieved => 'हासिल के रूप में चिह्नित करें';

  @override
  String goalProgressOf(String current, String target) {
    return '$target में से $current';
  }

  @override
  String get goalLogAmount => 'मात्रा';

  @override
  String get goalLogNote => 'नोट (वैकल्पिक)';

  @override
  String get goalHistory => 'इतिहास';

  @override
  String get goalNoHistory => 'दर्ज की गई प्रगति यहाँ दिखेगी';

  @override
  String get goalLinkedTasks => 'लिंक किए गए कार्य';

  @override
  String get goalLinkedTasksHint =>
      'हर पूरा हुआ लिंक्ड कार्य इस लक्ष्य में 1 के रूप में गिना जाता है।';

  @override
  String get goalThisPeriod => 'इस अवधि में';

  @override
  String get habitsTitle => 'आदतें';

  @override
  String get habitsEmptyTitle => 'छोटे कदम, हर दिन';

  @override
  String get habitsEmptyMessage => 'एक आदत बनाएँ और पूरा करने पर उसे चिह्नित करें।';

  @override
  String get habitNew => 'नई आदत';

  @override
  String get habitEdit => 'आदत संपादित करें';

  @override
  String get habitNameHint => 'जैसे 20 पेज पढ़ें';

  @override
  String get habitDays => 'शेड्यूल';

  @override
  String get habitEveryDay => 'हर दिन';

  @override
  String get habitTargetPerDay => 'प्रतिदिन बार';

  @override
  String get habitReminder => 'दैनिक रिमाइंडर';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन का स्ट्रीक',
      one: '1 दिन का स्ट्रीक',
      zero: 'कोई स्ट्रीक नहीं',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'सबसे लंबा स्ट्रीक';

  @override
  String get habitCurrentStreak => 'मौजूदा स्ट्रीक';

  @override
  String get habitConsistency => 'नियमितता';

  @override
  String get habitLast90 => 'पिछले 90 दिन';

  @override
  String get habitPaused => 'रुकी हुई';

  @override
  String get habitPause => 'आदत रोकें';

  @override
  String get habitResume => 'आदत फिर शुरू करें';

  @override
  String get habitDoneToday => 'आज पूरी हुई';

  @override
  String habitCountToday(int count, int target) {
    return 'आज $target में से $count';
  }

  @override
  String habitToggleSemantics(String name) {
    return '“$name” दर्ज करें';
  }

  @override
  String get habitNotScheduledToday => 'आज शेड्यूल नहीं';

  @override
  String get analyticsTitle => 'इनसाइट्स';

  @override
  String get rangeWeek => '7 दिन';

  @override
  String get rangeMonth => '30 दिन';

  @override
  String get rangeQuarter => '90 दिन';

  @override
  String get statFocusTime => 'फ़ोकस समय';

  @override
  String get statSessions => 'सत्र';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed पूरे · $interrupted जल्दी रोके गए';
  }

  @override
  String get statTasksDone => 'पूरे किए गए कार्य';

  @override
  String get statCompletionRate => 'समय पर पूरे';

  @override
  String get statHabitConsistency => 'आदतों की नियमितता';

  @override
  String get statRetention => 'कार्ड याद रहने की दर';

  @override
  String get statReviews => 'रिव्यू';

  @override
  String get statActiveGoals => 'सक्रिय लक्ष्य';

  @override
  String get statEstimated => 'पूरा किया गया अनुमानित काम';

  @override
  String get statEstimatedNote => 'आपके अनुमानों पर आधारित, मापा गया समय नहीं';

  @override
  String get statMeasuredNote => 'फ़ोकस सत्रों से मापा गया';

  @override
  String get chartFocusByDay => 'प्रतिदिन फ़ोकस मिनट';

  @override
  String get chartTasksByDay => 'प्रतिदिन पूरे किए गए कार्य';

  @override
  String get chartTimeByProject => 'प्रोजेक्ट के अनुसार समय';

  @override
  String get chartProjectProgress => 'प्रोजेक्ट की प्रगति';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: कुल $total, सबसे अच्छा दिन $best';
  }

  @override
  String get analyticsNoData => 'अभी पर्याप्त डेटा नहीं है';

  @override
  String get analyticsUnassigned => 'असाइन नहीं';

  @override
  String get searchHint => 'सब कुछ खोजें…';

  @override
  String get searchRecent => 'हाल की खोजें';

  @override
  String get searchClearRecent => 'हाल की खोजें साफ़ करें';

  @override
  String searchNoResults(String query) {
    return '“$query” के लिए कोई परिणाम नहीं';
  }

  @override
  String get searchStartTyping =>
      'कार्य, नोट्स, कार्ड, लक्ष्य, इवेंट और भी बहुत कुछ खोजें। खोज इसी डिवाइस पर रहती है।';

  @override
  String get searchCatTask => 'कार्य';

  @override
  String get searchCatProject => 'प्रोजेक्ट';

  @override
  String get searchCatNote => 'नोट्स';

  @override
  String get searchCatFlashcard => 'कार्ड';

  @override
  String get searchCatDeck => 'डेक';

  @override
  String get searchCatGoal => 'लक्ष्य';

  @override
  String get searchCatHabit => 'आदतें';

  @override
  String get searchCatEvent => 'इवेंट';

  @override
  String get searchCatSession => 'सत्र';

  @override
  String get searchAll => 'सभी';

  @override
  String get assistantTitle => 'असिस्टेंट';

  @override
  String get assistantIntro =>
      'योजना बनाने में मदद, जो आपके डिवाइस पर काम करती है। सारांश और जनरेशन के लिए आप चाहें तो अपनी पसंद का AI प्रदाता जोड़ सकते हैं।';

  @override
  String get assistantOnDevice => 'डिवाइस पर';

  @override
  String get assistantCloud => 'AI प्रदाता';

  @override
  String get assistantPlanDay => 'मेरे दिन की योजना';

  @override
  String get assistantPlanDayDesc =>
      'खुले कार्यों को तात्कालिकता, प्राथमिकता और अनुमान के अनुसार क्रम में लगाता है और उन्हें आपके इवेंट के बीच फ़िट करता है।';

  @override
  String get assistantExtractTasks => 'नोट से कार्य निकालें';

  @override
  String get assistantExtractTasksDesc =>
      'नोट में चेकलिस्ट आइटम और एक्शन पंक्तियाँ खोजकर उन्हें कार्यों में बदलता है।';

  @override
  String get assistantMakeCards => 'नोट से फ़्लैशकार्ड बनाएँ';

  @override
  String get assistantMakeCardsDesc =>
      '“शब्द: परिभाषा” और प्रश्न/उत्तर वाली पंक्तियों को कार्ड में बदलता है।';

  @override
  String get assistantSummarize => 'नोट का सारांश';

  @override
  String get assistantSummarizeDesc =>
      'AI प्रदाता ज़रूरी है। नोट आपकी पुष्टि के बाद ही भेजा जाता है।';

  @override
  String get assistantWorkload => 'कार्यभार का अवलोकन';

  @override
  String get assistantWorkloadDesc => 'अनुमानित काम की तुलना इस हफ़्ते आपके खाली समय से करता है।';

  @override
  String get assistantPlanEmpty => 'योजना के लिए कोई खुला कार्य नहीं। इस खाली समय का आनंद लें।';

  @override
  String assistantPlanCapacity(String time) {
    return 'आज खाली फ़ोकस समय: $time';
  }

  @override
  String get assistantPlanOverflow => 'ये शायद आज फ़िट न हों:';

  @override
  String get assistantChooseNote => 'एक नोट चुनें';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्य मिले',
      one: '1 कार्य मिला',
      zero: 'इस नोट में कोई कार्य नहीं मिला',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड मिले',
      one: '1 कार्ड मिला',
      zero: 'इस नोट में कोई कार्ड नहीं मिला',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'एक डेक चुनें';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'अनुमानित काम: $estimated। खाली समय: $free।';
  }

  @override
  String get assistantWorkloadOver =>
      'आपकी योजना उपलब्ध समय से ज़्यादा है। कम प्राथमिकता वाले कार्यों को आगे खिसकाने पर विचार करें।';

  @override
  String get assistantWorkloadOk => 'आपकी योजना उपलब्ध समय में फ़िट है।';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count खुले कार्यों का कोई अनुमान नहीं है।',
      one: '1 खुले कार्य का कोई अनुमान नहीं है।',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI प्रदाता';

  @override
  String get assistantProviderOff =>
      'कोई प्रदाता कनेक्ट नहीं है। डिवाइस पर चलने वाले टूल फिर भी काम करते हैं।';

  @override
  String assistantProviderOn(String host) {
    return '$host से कनेक्टेड';
  }

  @override
  String get assistantEndpoint => 'API एंडपॉइंट (HTTPS)';

  @override
  String get assistantModel => 'मॉडल';

  @override
  String get assistantApiKey => 'API कुंजी';

  @override
  String get assistantApiKeyStored => 'इस डिवाइस पर सुरक्षित रूप से संग्रहीत';

  @override
  String get assistantHttpsOnly => 'केवल HTTPS एंडपॉइंट की अनुमति है';

  @override
  String get assistantConsentTitle => 'यह सामग्री अपने AI प्रदाता को भेजें?';

  @override
  String assistantConsentBody(String host) {
    return 'चुने गए नोट का टेक्स्ट इस डिवाइस से बाहर जाएगा और $host द्वारा प्रोसेस किया जाएगा। इसके अलावा कुछ नहीं भेजा जाता।';
  }

  @override
  String get assistantConsentAlways => 'इस प्रदाता के लिए फिर से न पूछें';

  @override
  String get assistantSend => 'भेजें';

  @override
  String get assistantUnavailable => 'AI प्रदाता तक नहीं पहुँचा जा सका। बाद में फिर कोशिश करें।';

  @override
  String get assistantDisabledTitle => 'असिस्टेंट बंद है';

  @override
  String get assistantDisabledMessage =>
      'योजना टूल इस्तेमाल करने के लिए इसे चालू करें। जब तक आप कोई प्रदाता कनेक्ट करके हर अनुरोध की पुष्टि नहीं करते, कोई डेटा आपके डिवाइस से बाहर नहीं जाता।';

  @override
  String get assistantSummaryTitle => 'सारांश';

  @override
  String get assistantRemoveProvider => 'प्रदाता हटाएँ';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get settingsGeneral => 'सामान्य';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get settingsLanguageSystem => 'डिवाइस की भाषा';

  @override
  String get settingsAppearance => 'दिखावट';

  @override
  String get settingsTheme => 'थीम';

  @override
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get settingsReduceMotion => 'मोशन कम करें';

  @override
  String get settingsReduceMotionDesc => 'एनिमेशन और चलती पृष्ठभूमि कम करें';

  @override
  String get settingsFocus => 'फ़ोकस टाइमर';

  @override
  String get settingsWorkLength => 'फ़ोकस अवधि';

  @override
  String get settingsShortBreak => 'छोटा ब्रेक';

  @override
  String get settingsLongBreak => 'लंबा ब्रेक';

  @override
  String get settingsLongBreakEvery => 'लंबा ब्रेक इसके बाद';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सत्र',
      one: '1 सत्र',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'ब्रेक अपने-आप शुरू करें';

  @override
  String get settingsSound => 'पूरा होने की ध्वनि';

  @override
  String get settingsDailyFocusTarget => 'दैनिक फ़ोकस लक्ष्य';

  @override
  String get settingsWeeklyFocusTarget => 'साप्ताहिक फ़ोकस लक्ष्य';

  @override
  String get settingsNotifications => 'नोटिफ़िकेशन';

  @override
  String get settingsNotificationsEnable => 'रिमाइंडर की अनुमति दें';

  @override
  String get settingsQuietHours => 'शांत समय';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'आदत, लक्ष्य और रिव्यू रिमाइंडर $start से $end तक मौन रहते हैं';
  }

  @override
  String get settingsReviewReminder => 'फ़्लैशकार्ड रिव्यू रिमाइंडर';

  @override
  String get settingsPermissionDenied => 'सिस्टम सेटिंग्स में नोटिफ़िकेशन ब्लॉक हैं।';

  @override
  String get settingsPrivacy => 'गोपनीयता और डेटा';

  @override
  String get settingsPrivacyStatement =>
      'आपका डेटा केवल इसी डिवाइस पर एन्क्रिप्ट करके संग्रहीत है। कोई खाता नहीं, कोई एनालिटिक्स नहीं और कोई ट्रैकिंग नहीं।';

  @override
  String get settingsBackup => 'एन्क्रिप्टेड बैकअप बनाएँ';

  @override
  String get settingsBackupDesc => 'आपके चुने पासवर्ड से सुरक्षित';

  @override
  String get settingsRestore => 'बैकअप से पुनर्स्थापित करें';

  @override
  String get settingsRestoreDesc => 'इस डिवाइस का सारा डेटा बदल देता है';

  @override
  String get settingsErase => 'सारा डेटा मिटाएँ';

  @override
  String get settingsEraseDesc => 'इस डिवाइस से सब कुछ हमेशा के लिए हटाएँ';

  @override
  String get settingsEraseConfirmTitle => 'सारा डेटा मिटाएँ?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'हर कार्य, नोट, कार्ड, लक्ष्य, आदत, इवेंट और सत्र हमेशा के लिए हटा दिया जाएगा। पुष्टि के लिए $word टाइप करें।';
  }

  @override
  String get settingsEraseWord => 'मिटाएँ';

  @override
  String get settingsErased => 'सारा डेटा मिटा दिया गया';

  @override
  String get backupPassword => 'बैकअप पासवर्ड';

  @override
  String get backupPasswordConfirm => 'पासवर्ड की पुष्टि करें';

  @override
  String backupPasswordHint(int count) {
    return 'कम से कम $count अक्षर। खो जाने पर इसे वापस नहीं पाया जा सकता।';
  }

  @override
  String get backupPasswordMismatch => 'पासवर्ड मेल नहीं खाते';

  @override
  String get backupPasswordShort => 'पासवर्ड बहुत छोटा है';

  @override
  String get backupCreating => 'बैकअप एन्क्रिप्ट हो रहा है…';

  @override
  String get backupCreated => 'बैकअप सहेजने के लिए तैयार है';

  @override
  String get backupRestoring => 'जाँच और पुनर्स्थापना हो रही है…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आइटम पुनर्स्थापित हुए',
      one: '1 आइटम पुनर्स्थापित हुआ',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'गलत पासवर्ड, या फ़ाइल में बदलाव किया गया है।';

  @override
  String get backupNotABackup => 'यह फ़ाइल Deep Focus बैकअप नहीं है।';

  @override
  String get backupCorrupted => 'बैकअप फ़ाइल खराब है।';

  @override
  String get backupNewer => 'यह बैकअप ऐप के नए वर्ज़न से बनाया गया था। कृपया पहले अपडेट करें।';

  @override
  String get backupRestoreConfirmTitle => 'सारा डेटा बदलें?';

  @override
  String get backupRestoreConfirmBody =>
      'इस डिवाइस पर मौजूद सब कुछ बैकअप से बदल दिया जाएगा। अगर पुनर्स्थापना विफल होती है, तो कुछ नहीं बदलेगा।';

  @override
  String get settingsAbout => 'जानकारी';

  @override
  String settingsVersion(String version) {
    return 'वर्ज़न $version';
  }

  @override
  String get settingsLicenses => 'ओपन-सोर्स लाइसेंस';

  @override
  String get settingsAssistant => 'असिस्टेंट';

  @override
  String get settingsAssistantEnable => 'असिस्टेंट चालू करें';

  @override
  String get settingsDashboard => 'होम सेक्शन';

  @override
  String get settingsTrash => 'ट्रैश';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes मि';
  }

  @override
  String get trashEmpty => 'ट्रैश खाली है';

  @override
  String get trashHint => 'हटाए गए आइटम तब तक यहाँ रहते हैं जब तक आप उन्हें न हटाएँ।';

  @override
  String get trashTasks => 'कार्य';

  @override
  String get trashNotes => 'नोट्स';

  @override
  String get onboardWelcomeTitle => 'अपने भविष्य के वर्कस्पेस में आपका स्वागत है';

  @override
  String get onboardWelcomeBody =>
      'कार्य, फ़ोकस, कैलेंडर, नोट्स, फ़्लैशकार्ड, लक्ष्य और आदतें — सब एक साथ, बेहद सरल।';

  @override
  String get onboardPrivateTitle => 'शुरू से ही निजी';

  @override
  String get onboardPrivateBody =>
      'सब कुछ इसी डिवाइस पर एन्क्रिप्टेड रहता है। कोई खाता नहीं। कोई ट्रैकिंग नहीं। नियंत्रण आपके हाथ में।';

  @override
  String get onboardLanguageTitle => 'अपनी भाषा चुनें';

  @override
  String get onboardNotifTitle => 'सौम्य रिमाइंडर';

  @override
  String get onboardNotifBody =>
      'कार्य रिमाइंडर और फ़ोकस अलर्ट के लिए नोटिफ़िकेशन की अनुमति दें। आप इसे कभी भी बदल सकते हैं।';

  @override
  String get onboardGetStarted => 'शुरू करें';

  @override
  String onboardStep(int current, int total) {
    return 'चरण $current / $total';
  }

  @override
  String get notifChannelReminders => 'रिमाइंडर';

  @override
  String get notifChannelRemindersDesc => 'कार्य, इवेंट, आदत और लक्ष्य रिमाइंडर';

  @override
  String get notifChannelFocus => 'फ़ोकस टाइमर';

  @override
  String get notifChannelFocusDesc => 'फ़ोकस सत्र या ब्रेक समाप्त होने पर अलर्ट';

  @override
  String get notifTaskTitle => 'कार्य रिमाइंडर';

  @override
  String get notifEventTitle => 'आगामी इवेंट';

  @override
  String notifEventBody(String title, String time) {
    return '$time बजे $title';
  }

  @override
  String get notifFocusDoneTitle => 'फ़ोकस सत्र पूरा हुआ';

  @override
  String get notifFocusDoneBody => 'बढ़िया काम। अब ब्रेक का समय है।';

  @override
  String get notifBreakDoneTitle => 'ब्रेक खत्म हुआ';

  @override
  String get notifBreakDoneBody => 'अगले फ़ोकस सत्र के लिए तैयार हैं?';

  @override
  String get notifHabitTitle => 'आदत रिमाइंडर';

  @override
  String get notifReviewTitle => 'फ़्लैशकार्ड तैयार हैं';

  @override
  String get notifReviewBody => 'छोटा-सा रिव्यू आपकी याददाश्त मज़बूत रखता है।';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours घं $minutes मि';
  }

  @override
  String durationHours(int hours) {
    return '$hours घं';
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
    return 'प्रगति $value प्रतिशत';
  }

  @override
  String a11yPriority(String level) {
    return 'प्राथमिकता: $level';
  }

  @override
  String a11yColor(int index) {
    return 'रंग $index';
  }

  @override
  String get analyticsRangeLabel => 'समय अवधि';

  @override
  String get analyticsRefresh => 'रीफ़्रेश करें';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'समय पर पूरे हुए: $total में से $done कार्य';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total में से $done कार्य पूरे';
  }

  @override
  String get analyticsNoProjects => 'कोई सक्रिय प्रोजेक्ट नहीं';

  @override
  String get analyticsNoFocus => 'इस अवधि में कोई फ़ोकस सेशन नहीं';

  @override
  String get analyticsHabitsNone => 'कोई सक्रिय आदत नहीं';

  @override
  String get analyticsRetentionNote => 'आपको याद रहे परिपक्व कार्ड का अनुपात';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'खाली समय कार्यदिवसों ($days) में $start–$end तक गिना जाता है, समय-निर्धारित इवेंट घटाकर। अनुमानित काम अगले 7 दिनों में देय खुले कार्यों के अनुमानों का योग है।';
  }

  @override
  String get assistantWorkdaysMonFri => 'सोमवार–शुक्रवार';

  @override
  String get assistantWorkdaysSunThu => 'रविवार–गुरुवार';

  @override
  String get assistantWorkloadDayOff => 'छुट्टी';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated नियोजित · $free खाली';
  }

  @override
  String assistantPlanRule(String end) {
    return 'अभी से $end तक, आज के इवेंट को ध्यान में रखकर योजना बनाई गई। पहले देर हो चुके कार्य, फिर प्राथमिकता, नियत तिथि और अनुमान।';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'टाइम ब्लॉक के रूप में शेड्यूल करें';

  @override
  String get assistantScheduleConfirmTitle => 'क्या आपके कैलेंडर में टाइम ब्लॉक जोड़ें?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आज के कैलेंडर में $count टाइम ब्लॉक जोड़े जाएँगे।',
      one: 'आज के कैलेंडर में $count टाइम ब्लॉक जोड़ा जाएगा।',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count टाइम ब्लॉक जोड़े गए',
      one: '$count टाइम ब्लॉक जोड़ा गया',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'पहले से आपके कैलेंडर में';

  @override
  String get assistantPlanTimeline => 'आज समा जाएँगे';

  @override
  String get assistantNoEstimate => 'इनकी योजना बनाने के लिए अनुमान जोड़ें';

  @override
  String get assistantNoNotes => 'अभी कोई नोट नहीं है। पहले एक नोट लिखें।';

  @override
  String get assistantNoteEmpty => 'यह नोट खाली है।';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्य बनाए गए',
      one: '$count कार्य बनाया गया',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड बनाए गए',
      one: '$count कार्ड बनाया गया',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बनाएँ',
      one: '$count बनाएँ',
      zero: 'कुछ भी चुना नहीं गया',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'पहचाने जाते हैं: बिना टिक वाले चेकबॉक्स \"- [ ]\" और TODO: या To do: से शुरू होने वाली पंक्तियाँ';

  @override
  String get assistantCardsHint =>
      'पहचाने जाते हैं: \"शब्द: परिभाषा\", \"शब्द — परिभाषा\" और Q:/A: पंक्ति जोड़े';

  @override
  String get assistantProviderHint =>
      'किसी भी OpenAI-संगत सेवा का उपयोग करें। कुंजी इस डिवाइस के सुरक्षित स्टोरेज में रहती है और बैकअप में शामिल नहीं होती।';

  @override
  String get assistantEndpointHelp => 'उदाहरण: https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'सहेजी गई कुंजी रखने के लिए खाली छोड़ें';

  @override
  String get assistantApiKeyRequired => 'API कुंजी दर्ज करें';

  @override
  String get assistantProviderSaved => 'प्रदाता सहेजा गया';

  @override
  String get assistantProviderRemoved => 'प्रदाता हटाया गया और कुंजी मिटा दी गई';

  @override
  String get assistantRemoveProviderConfirm =>
      'प्रदाता को हटाएँ और इस डिवाइस से सहेजी गई API कुंजी मिटा दें?';

  @override
  String get assistantAskEveryTime => 'हर अनुरोध से पहले पूछें';

  @override
  String get assistantSummarizing => 'सारांश बन रहा है…';

  @override
  String assistantSummaryNote(String host) {
    return '$host द्वारा तैयार किया गया। भरोसा करने से पहले जाँच लें।';
  }

  @override
  String get assistantCopy => 'कॉपी करें';

  @override
  String get assistantCopied => 'कॉपी हो गया';

  @override
  String get assistantConfigure => 'प्रदाता सेट अप करें';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'इस श्रृंखला के सभी इवेंट खिसका दिए गए';

  @override
  String get calendarEventReminder => 'रिमाइंडर';

  @override
  String get calendarEventRepeat => 'दोहराव';

  @override
  String get calendarEventColor => 'रंग';

  @override
  String get calendarDefaultColor => 'प्रकार का रंग उपयोग करें';

  @override
  String get calendarEventLinkedTask => 'लिंक किया गया कार्य';

  @override
  String get calendarEventNoTask => 'कोई लिंक किया गया कार्य नहीं';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count इवेंट',
      one: '$count इवेंट',
      zero: 'कोई इवेंट नहीं',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्य देय',
      one: '$count कार्य देय',
      zero: 'कोई कार्य देय नहीं',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date। $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'इस दिन की योजना बनाने के लिए इवेंट या टाइम ब्लॉक जोड़ें।';

  @override
  String get calendarNow => 'वर्तमान समय';

  @override
  String get calendarRecurring => 'दोहराया जाता है';

  @override
  String get calendarEventNotFound => 'यह इवेंट अब मौजूद नहीं है';

  @override
  String get calendarEventLocalTime => 'समय आपके डिवाइस के समय क्षेत्र में दिखाए जाते हैं';

  @override
  String get calendarEventDeleted => 'इवेंट ट्रैश में भेजा गया';

  @override
  String get calendarConflictMarker => 'किसी अन्य इवेंट से टकराता है';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'बदलाव इस श्रृंखला के हर इवेंट पर लागू होंगे';

  @override
  String get calendarDragHintSeries =>
      'दोहराए जाने वाले इवेंट को खींचने से पूरी श्रृंखला खिसक जाती है';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, कार्य देय';
  }

  @override
  String get startupErrorTitle => 'आपका डेटा खोला नहीं जा सका';

  @override
  String get startupErrorLocked =>
      'इस डिवाइस के डेटा की एन्क्रिप्शन कुंजी उपलब्ध नहीं है। कुछ भी हटाया नहीं गया है। डिवाइस को रीस्टार्ट करने से अक्सर मदद मिलती है। यदि आपने हाल ही में डिवाइस रीस्टोर किया है, तो इसके बजाय एन्क्रिप्टेड बैकअप से अपना डेटा पुनर्स्थापित करें।';

  @override
  String get startupErrorCipher =>
      'यह डिवाइस ऐप के लिए आवश्यक एन्क्रिप्टेड स्टोरेज का समर्थन नहीं करता। कुछ भी बिना एन्क्रिप्शन के सहेजा नहीं गया है।';

  @override
  String get startupErrorRetry => 'फिर से कोशिश करें';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड की समीक्षा बाकी है',
      one: '$count कार्ड की समीक्षा बाकी है',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count बाकी';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count नए';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'परिपक्व कार्ड: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 या उससे अधिक दर्ज करें';

  @override
  String get flashcardsSearchCards => 'कार्ड खोजें';

  @override
  String get flashcardsSearchEmpty => 'आपकी खोज से कोई कार्ड मेल नहीं खाता';

  @override
  String get flashcardsCardAdded => 'कार्ड जोड़ा गया';

  @override
  String flashcardsCardDueOn(String date) {
    return 'देय $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'क्लिपबोर्ड पर कॉपी करें';

  @override
  String get flashcardsExportTitle => 'डेक एक्सपोर्ट करें';

  @override
  String get flashcardsDeleteDeck => 'डेक हटाएँ';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, अगली समीक्षा $interval में';
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
  String get flashcardsShowQuestion => 'प्रश्न दिखाएँ';

  @override
  String get flashcardsImportField => 'इंपोर्ट करने के लिए कार्ड';

  @override
  String get flashcardsNothingToStudy => 'पढ़ने के लिए कुछ नहीं';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड पढ़ने के लिए तैयार',
      one: '$count कार्ड पढ़ने के लिए तैयार',
      zero: 'कोई कार्ड तैयार नहीं',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'रेटिंग के अनुसार';

  @override
  String get flashcardsDeckNotFound => 'यह डेक अब उपलब्ध नहीं है।';

  @override
  String get focusSessionDeleted => 'सेशन हटाया गया';

  @override
  String get focusDeleteConfirm =>
      'इस सेशन को अपने इतिहास से हटाएँ? इसका समय अब आपके लक्ष्यों में नहीं गिना जाएगा।';

  @override
  String get focusUnlinkTask => 'लिंक किया गया कार्य हटाएँ';

  @override
  String get focusNoteHint => 'आपने किस पर काम किया?';

  @override
  String get focusTargetCaption => 'सहेजे गए सेशन से मापा गया';

  @override
  String get focusModeLabel => 'टाइमर मोड';

  @override
  String focusUpNext(String phase) {
    return 'आगे: $phase';
  }

  @override
  String get focusStopwatchHint => 'आपके रोकने तक ऊपर गिनता रहेगा।';

  @override
  String get focusOpenHint => 'कोई समय सीमा नहीं। पूरा होने पर कभी भी रोकें।';

  @override
  String get focusNotificationsDisabledInApp =>
      'सेटिंग्स में रिमाइंडर बंद हैं। सेशन खत्म होने पर आपको सूचना नहीं मिलेगी।';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'सभी';

  @override
  String get goalsFilterPeriod => 'अवधि फ़िल्टर';

  @override
  String get goalsFilterStatus => 'स्थिति फ़िल्टर';

  @override
  String get goalsEmptyFiltered => 'इस फ़िल्टर से कोई लक्ष्य मेल नहीं खाता';

  @override
  String goalsDueOn(String date) {
    return 'देय $date';
  }

  @override
  String get goalsDeadline => 'समय सीमा (वैकल्पिक)';

  @override
  String get goalsNoDeadline => 'कोई समय सीमा नहीं';

  @override
  String get goalsSetDeadline => 'समय सीमा तय करें';

  @override
  String get goalsRemoveDeadline => 'समय सीमा हटाएँ';

  @override
  String get goalsDescription => 'विवरण (वैकल्पिक)';

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
  String get goalsReached => 'लक्ष्य पूरा हुआ';

  @override
  String get goalsLogged => 'प्रगति दर्ज की गई';

  @override
  String get goalsEntryDeleted => 'प्रविष्टि हटाई गई';

  @override
  String get goalsDeleteEntry => 'प्रविष्टि हटाएँ';

  @override
  String get goalsDeleted => 'लक्ष्य हटाया गया';

  @override
  String get goalsMarkActive => 'सक्रिय के रूप में चिह्नित करें';

  @override
  String get goalsNotFound => 'यह लक्ष्य अब उपलब्ध नहीं है';

  @override
  String get goalsLinkTask => 'कार्य लिंक करें';

  @override
  String get goalsNoLinkedTasks => 'अभी कोई कार्य लिंक नहीं है';

  @override
  String get goalsUnlinkTask => 'कार्य अनलिंक करें';

  @override
  String get goalsTaskOpen => 'अभी पूरा नहीं हुआ';

  @override
  String get goalsTaskLinked => 'कार्य लिंक किया गया';

  @override
  String get goalsTaskUnlinked => 'कार्य अनलिंक किया गया';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पूरे हुए लिंक किए गए कार्य',
      one: '$count पूरे हुए लिंक किए गए कार्य',
    );
    return 'इस अवधि के $_temp0 शामिल हैं';
  }

  @override
  String get goalsHistoryAllTime =>
      'पिछली अवधियों की प्रविष्टियाँ यहाँ रखी जाती हैं, लेकिन केवल अपनी ही अवधि में गिनी जाती हैं।';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'आज $total में से $done पूरे';
  }

  @override
  String get habitsNothingToday => 'आज के लिए कोई आदत निर्धारित नहीं है';

  @override
  String get habitsDecrease => 'एक चेक-इन हटाएँ';

  @override
  String get habitsResetToday => 'आज रीसेट करें';

  @override
  String get habitsCheckInHint => 'बदलने के लिए देर तक दबाएँ';

  @override
  String get habitsName => 'नाम';

  @override
  String get habitsColor => 'रंग';

  @override
  String get habitsValidationDays => 'कम से कम एक दिन चुनें';

  @override
  String habitsReminderAt(String time) {
    return 'हर दिन $time बजे';
  }

  @override
  String get habitsSetReminder => 'रिमाइंडर का समय तय करें';

  @override
  String get habitsRemoveReminder => 'रिमाइंडर हटाएँ';

  @override
  String get habitsReminderNote =>
      'सूचनाओं की अनुमति होने पर रिमाइंडर निर्धारित दिनों में दिखाई देते हैं।';

  @override
  String get habitsArchived => 'आदत आर्काइव की गई';

  @override
  String get habitsNotFound => 'यह आदत अब उपलब्ध नहीं है';

  @override
  String get habitsLast30 => 'पिछले 30 दिन';

  @override
  String get habitsConsistencyNone => 'अभी पर्याप्त डेटा नहीं है';

  @override
  String get habitsCalendar => 'चेक-इन इतिहास';

  @override
  String get habitsCalendarHint => 'सुधारने के लिए किसी दिन पर टैप करें।';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $target में से $count';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'पिछले 90 दिनों के चेक-इन। निरंतरता $percent।';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'पिछले 90 दिनों के चेक-इन। अभी पर्याप्त डेटा नहीं है।';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '$count दिन',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'रोके गए दिन आपकी स्ट्रीक को प्रभावित नहीं करते।';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'आदत आर्काइव करें';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दिन में $count बार',
      one: 'दिन में एक बार',
      zero: 'दिन में $count बार',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'अन्य नोट्स';

  @override
  String get notesAllNotebooks => 'सभी नोटबुक';

  @override
  String get notesNotebookName => 'नोटबुक का नाम';

  @override
  String get notesNotebookColor => 'रंग';

  @override
  String get notesDeleteNotebook => 'नोटबुक हटाएँ';

  @override
  String get notesDeleteNotebookMessage =>
      'नोटबुक हटा दी जाएगी। इसके नोट्स रखे जाएँगे और सभी नोटबुक में दिखेंगे।';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'महत्वपूर्ण नोट्स को सबसे ऊपर रखने के लिए पिन करें।';

  @override
  String get notesEmptyFavorites => 'जिन नोट्स को आप पसंदीदा चिह्नित करेंगे वे यहाँ दिखेंगे।';

  @override
  String get notesEmptyArchived => 'आर्काइव किए गए नोट्स यहाँ दिखेंगे।';

  @override
  String get notesEmptyFiltered => 'इन फ़िल्टर से कोई नोट मेल नहीं खाता।';

  @override
  String get notesArchivedSnack => 'नोट आर्काइव किया गया';

  @override
  String get notesUnarchivedSnack => 'नोट आपके नोट्स में वापस ले जाया गया';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total में से $done पूरे';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'फ़ॉर्मैटिंग';

  @override
  String get notesWrite => 'लिखें';

  @override
  String get notesPreviewEmpty => 'अभी प्रीव्यू के लिए कुछ नहीं है।';

  @override
  String notesBacklinksEmpty(String title) {
    return 'अभी कोई अन्य नोट यहाँ लिंक नहीं करता। इस नोट को [[$title]] से लिंक करें।';
  }

  @override
  String get notesBacklinksNeedTitle => 'इस नोट को शीर्षक दें ताकि अन्य नोट इससे लिंक कर सकें।';

  @override
  String get notesLinkedTasksEmpty => 'इस नोट से कोई कार्य लिंक नहीं है।';

  @override
  String notesLinkMissing(String title) {
    return '\"$title\" शीर्षक वाला कोई नोट अभी नहीं है।';
  }

  @override
  String get notesNotFound => 'यह नोट अब मौजूद नहीं है।';

  @override
  String notesCheckboxSemantics(String label) {
    return 'चेकलिस्ट आइटम: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'नोट $title खोलें';
  }

  @override
  String get notesTagsHint => 'नोट में #टैग लिखकर टैग जोड़ें।';

  @override
  String get notesTaskDone => 'पूरा हुआ';

  @override
  String get notifTimerDoneBody => 'आपका तय किया समय बीत चुका है।';

  @override
  String get onboardingPrivatePointDevice =>
      'केवल इसी डिवाइस पर, एन्क्रिप्टेड रूप में सहेजा जाता है';

  @override
  String get onboardingPrivatePointAccount => 'खाते की आवश्यकता नहीं';

  @override
  String get onboardingPrivatePointTracking => 'कोई एनालिटिक्स नहीं, कोई ट्रैकिंग नहीं';

  @override
  String get onboardingLanguageBody => 'आप इसे कभी भी सेटिंग्स में बदल सकते हैं।';

  @override
  String get onboardingNext => 'आगे';

  @override
  String get projectsActive => 'सक्रिय';

  @override
  String get projectNameHint => 'जैसे प्रोडक्ट लॉन्च';

  @override
  String get projectGoalHint => 'पूरा होने का मतलब क्या है?';

  @override
  String get projectNoDeadline => 'कोई समय सीमा नहीं';

  @override
  String get projectTasksOpen => 'खुले कार्य';

  @override
  String get projectTasksCompleted => 'पूरे हुए कार्य';

  @override
  String get projectAddTask => 'प्रोजेक्ट में कार्य जोड़ें';

  @override
  String get projectAddNote => 'नया प्रोजेक्ट नोट';

  @override
  String get projectLinkedNotes => 'नोट्स';

  @override
  String get projectNoTasks => 'इस प्रोजेक्ट में अभी कोई कार्य नहीं';

  @override
  String get projectArchivedBadge => 'आर्काइव किया हुआ';

  @override
  String get projectDeleted => 'प्रोजेक्ट ट्रैश में भेजा गया';

  @override
  String get projectDeleteMessage => 'कार्य बिना प्रोजेक्ट के आपकी सूची में बने रहेंगे।';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent प्रतिशत पूरा';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count परिणाम',
      one: '$count परिणाम',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'प्रकार के अनुसार फ़िल्टर करें';

  @override
  String searchRecentTap(String query) {
    return '$query को फिर से खोजें';
  }

  @override
  String get settingsLanguageHint =>
      'पूरे ऐप की भाषा चुनें। नाम उनकी अपनी भाषा में दिखाए जाते हैं।';

  @override
  String get settingsThemeHint => 'लाइट, डार्क या सिस्टम के अनुसार';

  @override
  String settingsDecrease(String setting) {
    return '$setting घटाएँ';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting बढ़ाएँ';
  }

  @override
  String get settingsQuietStart => 'शुरू';

  @override
  String get settingsQuietEnd => 'समाप्त';

  @override
  String get settingsNotificationsHint =>
      'यह ऐप में आपकी पसंद सहेजता है। सिस्टम भी अनुमति माँग सकता है।';

  @override
  String get settingsDashboardHint =>
      'क्रम बदलने के लिए खींचें। जिन सेक्शन की ज़रूरत नहीं, उन्हें बंद करें।';

  @override
  String settingsDashboardReorder(String section) {
    return '$section का क्रम बदलें';
  }

  @override
  String get settingsDashboardReset => 'डिफ़ॉल्ट क्रम बहाल करें';

  @override
  String get settingsAssistantDesc =>
      'वैकल्पिक योजना सहायता। जब तक आप प्रदाता नहीं जोड़ते, कुछ भी इस डिवाइस से बाहर नहीं जाता।';

  @override
  String get settingsAssistantSetup => 'असिस्टेंट और प्रदाता सेटअप';

  @override
  String get settingsTrashDesc => 'हटाए गए आइटम पुनर्स्थापित करें या हमेशा के लिए हटाएँ';

  @override
  String get settingsEraseFirstBody =>
      'इसे पूर्ववत नहीं किया जा सकता। पहले एन्क्रिप्टेड बैकअप बनाने पर विचार करें।';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word टाइप करें';
  }

  @override
  String get settingsEraseFailed => 'डेटा मिटाया नहीं जा सका। कुछ भी नहीं बदला गया।';

  @override
  String get settingsAboutTagline => 'एक निजी, लोकल-फ़र्स्ट प्रोडक्टिविटी वर्कस्पेस।';

  @override
  String get backupShowPassword => 'पासवर्ड दिखाएँ';

  @override
  String get backupHidePassword => 'पासवर्ड छिपाएँ';

  @override
  String get backupSaved => 'बैकअप सहेजा गया';

  @override
  String get backupFailed => 'बैकअप नहीं बनाया जा सका। आपका डेटा जैसा था वैसा ही है।';

  @override
  String get backupReadFailed => 'चुनी गई फ़ाइल पढ़ी नहीं जा सकी।';

  @override
  String get backupRestoreFailed => 'पुनर्स्थापना विफल रही। कुछ भी नहीं बदला गया।';

  @override
  String get backupShareSubject => 'Deep Focus एन्क्रिप्टेड बैकअप';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'हर $count दिन',
      one: 'हर दिन',
      zero: 'हर $count दिन',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'हर $count सप्ताह',
      one: 'हर सप्ताह',
      zero: 'हर $count सप्ताह',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'हर $count महीने',
      one: 'हर महीने',
      zero: 'हर $count महीने',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'हर $count साल',
      one: 'हर साल',
      zero: 'हर $count साल',
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
    return '$days को';
  }

  @override
  String get repeatEndsLabel => 'समाप्ति';

  @override
  String get repeatEndsAfter => 'कुछ बार के बाद';

  @override
  String get repeatCountLabel => 'दोहराव की संख्या';

  @override
  String get reminderNone => 'कोई रिमाइंडर नहीं';

  @override
  String get reminderCustomTime => 'किसी विशेष समय पर';

  @override
  String get a11yDecrease => 'घटाएँ';

  @override
  String get a11yIncrease => 'बढ़ाएँ';

  @override
  String get pickTaskTitle => 'कार्य चुनें';

  @override
  String get pickTaskEmpty => 'कोई खुला कार्य नहीं';

  @override
  String get tasksSearchTooltip => 'कार्य खोजें';

  @override
  String get tasksSectionOverdue => 'देर हो चुकी';

  @override
  String get tasksSectionToday => 'आज';

  @override
  String get tasksRecurringSemantics => 'दोहराया जाता है';

  @override
  String get tasksFilterPriorityAtLeast => 'न्यूनतम प्राथमिकता';

  @override
  String get tasksFilterCategory => 'श्रेणी';

  @override
  String get tasksFilterAnyCategory => 'कोई भी श्रेणी';

  @override
  String get tasksFilterLabel => 'लेबल';

  @override
  String get tasksFilterAnyLabel => 'कोई भी लेबल';

  @override
  String get tasksFilterReset => 'फ़िल्टर रीसेट करें';

  @override
  String get tasksViewByProject => 'प्रोजेक्ट के अनुसार';

  @override
  String get tasksViewByPriority => 'प्राथमिकता के अनुसार';

  @override
  String get tasksViewByCategory => 'श्रेणी के अनुसार';

  @override
  String get tasksGroupNoCategory => 'कोई श्रेणी नहीं';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्य',
      one: '$count कार्य',
    );
    return '$_temp0 द्वारा रुका हुआ';
  }

  @override
  String get taskBlockedWarning => 'यह कार्य अधूरे कार्यों के कारण रुका हुआ है। फिर भी पूरा करें?';

  @override
  String get taskStartFocus => 'इस कार्य पर फ़ोकस करें';

  @override
  String get taskRemoveDate => 'तारीख़ हटाएँ';

  @override
  String get taskAllDay => 'कोई विशेष समय नहीं';

  @override
  String get taskSaved => 'कार्य सहेजा गया';

  @override
  String get taskCreated => 'कार्य बनाया गया';

  @override
  String get taskReminderNeedsDue => 'सापेक्ष रिमाइंडर के लिए नियत तिथि तय करें';

  @override
  String get taskSubtaskDetailsHint =>
      'उप-कार्य, चेकलिस्ट आइटम, लेबल और निर्भरताएँ जोड़ने के लिए पहले कार्य सहेजें।';

  @override
  String get taskLabelName => 'लेबल का नाम';

  @override
  String get taskMoreDetails => 'विवरण';

  @override
  String get taskPlanning => 'योजना';

  @override
  String get taskOrganize => 'व्यवस्थित करें';

  @override
  String get taskBreakdown => 'विभाजन';

  @override
  String get trashDeleteTaskTitle => 'इस कार्य को हमेशा के लिए हटाएँ?';

  @override
  String get trashDeleteNoteTitle => 'इस नोट को हमेशा के लिए हटाएँ?';

  @override
  String get trashDeleteBody => 'इसे पूर्ववत नहीं किया जा सकता।';

  @override
  String get trashEmptyTitle => 'ट्रैश खाली करें?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आइटम हमेशा के लिए हटा दिए जाएँगे।',
      one: '$count आइटम हमेशा के लिए हटा दिया जाएगा।',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'पुनर्स्थापित किया गया';

  @override
  String get trashPurged => 'हमेशा के लिए हटाया गया';

  @override
  String trashDeletedOn(String date) {
    return 'हटाया गया $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आइटम',
      one: '$count आइटम',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'ज़ोर से पढ़ें';

  @override
  String get flashcardsTtsUnavailable => 'इस डिवाइस पर टेक्स्ट-टू-स्पीच उपलब्ध नहीं है।';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'इस भाषा के लिए कोई आवाज़ इंस्टॉल नहीं है। Android की टेक्स्ट-टू-स्पीच सेटिंग में जोड़ें।';

  @override
  String get calendarAgenda => 'एजेंडा';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'चिंगारी',
      'rocket': 'रॉकेट',
      'book': 'किताब',
      'work': 'काम',
      'home': 'घर',
      'heart': 'दिल',
      'code': 'कोड',
      'palette': 'रंग-पट्टिका',
      'fitness': 'फ़िटनेस',
      'school': 'स्कूल',
      'travel': 'यात्रा',
      'money': 'बचत',
      'other': 'आइकन',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'और फ़ील्ड';

  @override
  String get cardFieldExample => 'उदाहरण';

  @override
  String get cardFieldExplanation => 'व्याख्या';

  @override
  String get cardFieldPronunciation => 'उच्चारण';

  @override
  String get cardFieldNotes => 'अतिरिक्त नोट्स';

  @override
  String get projectMilestones => 'माइलस्टोन';

  @override
  String get milestoneAdd => 'माइलस्टोन जोड़ें';

  @override
  String get milestoneEdit => 'माइलस्टोन संपादित करें';

  @override
  String get milestoneTitleLabel => 'माइलस्टोन';

  @override
  String get milestoneNoDate => 'कोई तारीख़ नहीं';

  @override
  String get milestonesEmpty =>
      'अभी कोई माइलस्टोन नहीं। कैलेंडर पर प्रोजेक्ट ट्रैक करने के लिए तारीख़ वाले पड़ाव जोड़ें।';

  @override
  String get milestoneDeleted => 'माइलस्टोन हटाया गया';

  @override
  String milestoneDoneA11y(String title) {
    return 'माइलस्टोन \"$title\" को पूरा चिह्नित करें';
  }

  @override
  String calendarMilestone(String project) {
    return 'माइलस्टोन · $project';
  }

  @override
  String get tasksViewInbox => 'इनबॉक्स';

  @override
  String get tasksViewArchived => 'संग्रहीत';

  @override
  String get tasksEmptyInbox =>
      'बिना प्रोजेक्ट या तारीख वाले कार्य यहाँ आते हैं। समय मिलने पर इन्हें व्यवस्थित करें।';

  @override
  String get tasksEmptyArchived =>
      'संग्रहीत कार्य यहाँ रखे जाते हैं, आपकी सूचियों और रिमाइंडर से अलग।';

  @override
  String get taskArchivedBadge => 'संग्रहीत';

  @override
  String get taskStatusInProgress => 'प्रगति में';

  @override
  String get taskArchived => 'कार्य संग्रहीत किया गया';

  @override
  String get taskUnarchived => 'कार्य संग्रह से वापस लाया गया';

  @override
  String get focusPlanTitle => 'सत्र योजना';

  @override
  String focusPlanTotal(String duration) {
    return 'कुल $duration';
  }

  @override
  String get focusPlanRounds => 'फोकस सत्र';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'लंबा ब्रेक इतने के बाद';

  @override
  String get focusPlanSkipLastBreak => 'आख़िरी ब्रेक छोड़ें';

  @override
  String get focusPlanAutoBreaks => 'ब्रेक अपने आप शुरू करें';

  @override
  String get focusPlanAutoFocus => 'ब्रेक के बाद फोकस अपने आप शुरू करें';

  @override
  String get focusPlanSave => 'योजना सहेजें';

  @override
  String get focusPlanNameHint => 'जैसे परीक्षा तैयारी';

  @override
  String get focusPlanSaved => 'योजना सहेजी गई';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work मिनट फोकस, $rest मिनट ब्रेक';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label घटाएँ';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label बढ़ाएँ';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'सत्र $current / $total';
  }

  @override
  String get focusSeriesComplete => 'श्रृंखला पूरी हुई। शाबाश!';

  @override
  String get filterAll => 'सभी';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added आयात · $duplicates दोहराव छोड़े · $invalid अधूरी पंक्तियाँ';
  }

  @override
  String get flashcardsSuspend => 'कार्ड रोकें';

  @override
  String get flashcardsResume => 'कार्ड फिर शुरू करें';

  @override
  String get flashcardsSuspended => 'कार्ड रोका गया: इसे शेड्यूल नहीं किया जाएगा';

  @override
  String get flashcardsResumed => 'कार्ड फिर शुरू';

  @override
  String get flashcardsSuspendedFilter => 'रुके हुए';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$total में से $shown कार्ड';
  }

  @override
  String get flashcardsImportFile => 'फ़ाइल से';

  @override
  String get speechTitle => 'वाणी';

  @override
  String get speechAppLanguage => 'ऐप की भाषा';

  @override
  String get speechFrontLanguage => 'सामने की भाषा';

  @override
  String get speechBackLanguage => 'पीछे की भाषा';

  @override
  String get speechRepeat => 'हर पठन दोहराएँ';

  @override
  String get speechRate => 'गति';

  @override
  String get speechAutoRead => 'प्रश्न अपने आप पढ़ें';

  @override
  String get speechHint =>
      'डिवाइस पर इंस्टॉल आवाज़ें ऑफ़लाइन उपयोग होती हैं। किसी भाषा की आवाज़ न हो तो आपको बताया जाएगा, कोई दूसरी भाषा नहीं ली जाएगी।';

  @override
  String get studyHowTitle => 'आप कैसे पढ़ना चाहते हैं?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड दोहराएँ',
      one: '$count कार्ड दोहराएँ',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'सभी कार्ड का अभ्यास (शेड्यूल नहीं बदलेगा)';

  @override
  String get studyPracticeMistakes => 'हाल की गलतियों का अभ्यास';

  @override
  String get studyPracticeHint =>
      'अभ्यास से कार्ड की तारीखें नहीं बदलतीं। दोहराने से शेड्यूल अपडेट होता है।';

  @override
  String get studyModeClassic => 'सामान्य';

  @override
  String get studyModeReverse => 'उल्टा';

  @override
  String get studyModeMixed => 'दोनों ओर';

  @override
  String get studyModeTyped => 'उत्तर लिखें';

  @override
  String get studyModeChoice => 'बहुविकल्प';

  @override
  String get studyModeListening => 'सुनना';

  @override
  String get studyPractice => 'अभ्यास';

  @override
  String get studyNoMistakes => 'इस डेक में हाल की कोई गलती नहीं। बढ़िया!';

  @override
  String get studyTypeAnswer => 'अपना उत्तर लिखें';

  @override
  String get studyCheck => 'जाँचें';

  @override
  String get studyKnewIt => 'मुझे पता था';

  @override
  String get studyDidntKnow => 'नहीं पता था';

  @override
  String studyMistakes(int count) {
    return 'गलत ($count)';
  }

  @override
  String get studyRepeatMistakes => 'गलत कार्ड दोहराएँ';

  @override
  String get studyCorrect => 'सही';

  @override
  String get studyAlmost => 'लगभग — वर्तनी जाँचें';

  @override
  String get studyWrong => 'सही नहीं';

  @override
  String get studyShowText => 'पाठ दिखाएँ';

  @override
  String get flashcardsImportFileFailed => 'फ़ाइल नहीं खुल सकी। आप उसकी सामग्री पेस्ट कर सकते हैं।';

  @override
  String get studyNoMatchingCards => 'इस विकल्प से मेल खाते कार्ड अभी नहीं हैं।';

  @override
  String get studyPracticeNew => 'केवल नए';

  @override
  String get studyPracticeHard => 'कठिन कार्ड';

  @override
  String get studyPracticeFavorites => 'पसंदीदा';

  @override
  String get studySessionSize => 'प्रति सत्र कार्ड';

  @override
  String get studySessionAll => 'सभी';

  @override
  String get studyOrder => 'क्रम';

  @override
  String get studyOrderDue => 'सबसे पुराने पहले';

  @override
  String get studyOrderRandom => 'यादृच्छिक';

  @override
  String get studyOrderHardest => 'सबसे कठिन पहले';

  @override
  String get flashcardsHard => 'कठिन';

  @override
  String get flashcardsFavorites => 'पसंदीदा';

  @override
  String get flashcardsFavorite => 'पसंदीदा में जोड़ें';

  @override
  String get flashcardsUnfavorite => 'पसंदीदा से हटाएँ';

  @override
  String get flashcardsDuplicate => 'प्रतिलिपि बनाएँ';

  @override
  String get flashcardsMoveTo => 'डेक में ले जाएँ';

  @override
  String get flashcardsNoOtherDeck => 'पहले दूसरा डेक बनाएँ।';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड ले जाए गए',
      one: 'कार्ड ले जाया गया',
      zero: '$count कार्ड ले जाए गए',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'टैग जोड़ें';

  @override
  String get flashcardsTagHint => 'जैसे क्रियाएँ';

  @override
  String flashcardsSelected(int count) {
    return '$count चुने गए';
  }

  @override
  String get flashcardsSelectAll => 'दिखाए गए सभी चुनें';

  @override
  String flashcardsSelectCard(String front) {
    return '$front चुनें';
  }

  @override
  String flashcardsRecall(String value) {
    return 'याद $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'संभावित दोहराव';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'इस डेक में पहले से “$front” → “$back” है। फिर भी सहेजें?';
  }

  @override
  String get flashcardsSaveAnyway => 'फिर भी सहेजें';

  @override
  String get flashcardsStats => 'आँकड़े';

  @override
  String get flashcardsStatTotal => 'कार्ड';

  @override
  String get flashcardsStatLearning => 'सीख रहे';

  @override
  String get flashcardsStatMatureCaption => '21+ दिन याद';

  @override
  String get flashcardsStatReviewsToday => 'आज की समीक्षाएँ';

  @override
  String get flashcardsStatCorrect => 'सही उत्तर';

  @override
  String flashcardsStatLastDays(int days) {
    return 'पिछले $days दिन';
  }

  @override
  String get flashcardsStatForget => 'भूलने की दर';

  @override
  String get flashcardsStatForgetCaption => 'सीखे कार्ड पर “फिर से”';

  @override
  String get flashcardsStatRecall => 'अभी याद';

  @override
  String get flashcardsStatRecallCaption => 'FSRS अनुमान, दोहराए कार्ड';

  @override
  String flashcardsStatActivity(int count) {
    return 'प्रतिदिन समीक्षाएँ · कुल $count';
  }

  @override
  String get flashcardsStatHistory => 'हाल के उत्तर';

  @override
  String get flashcardsStatNoHistory => 'अभी कोई समीक्षा नहीं। प्रगति देखने के लिए डेक पढ़ें।';

  @override
  String flashcardsSpeakField(String field) {
    return '$field पढ़कर सुनाएँ';
  }

  @override
  String get speechVoice => 'आवाज़';

  @override
  String get speechVoiceDefault => 'स्वचालित';

  @override
  String get speechVoiceOnline => 'इंटरनेट चाहिए';

  @override
  String get speechTest => 'आवाज़ जाँचें';

  @override
  String get importNext => 'पूर्वावलोकन';

  @override
  String get importPreviewTitle => 'कॉलम को फ़ील्ड से मिलाएँ';

  @override
  String get importIgnoreColumn => 'अनदेखा करें';

  @override
  String importColumn(int n) {
    return 'कॉलम $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready कार्ड तैयार · $invalid अधूरी पंक्तियाँ छोड़ी जाएँगी';
  }

  @override
  String get importNeedFrontBack => 'चुनें कि कौन से कॉलम सामने और पीछे हैं।';

  @override
  String get actionMoveUp => 'ऊपर ले जाएँ';

  @override
  String get actionMoveDown => 'नीचे ले जाएँ';

  @override
  String get flashcardsLayoutTitle => 'कार्ड लेआउट';

  @override
  String get flashcardsLayoutHint =>
      'इस डेक के अतिरिक्त फ़ील्ड का नाम बदलें, छिपाएँ या क्रम बदलें। सामग्री कभी नहीं बदलती।';

  @override
  String flashcardsLayoutShow(String field) {
    return 'पढ़ते समय $field दिखाएँ';
  }

  @override
  String get flashcardsLayoutStepReveal => 'उत्तर क्रम से दिखाएँ';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'पहले पिछला भाग; हर अतिरिक्त फ़ील्ड टैप से खुलता है।';

  @override
  String flashcardsRevealNext(String field) {
    return '$field दिखाएँ';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'यह फ़ाइल $mb MB से बड़ी है।';
  }

  @override
  String get flashcardsImage => 'चित्र';

  @override
  String get flashcardsAudio => 'ऑडियो';

  @override
  String get flashcardsAddImage => 'चित्र जोड़ें';

  @override
  String get flashcardsAddAudio => 'ऑडियो जोड़ें';

  @override
  String get flashcardsPlayAudio => 'रिकॉर्डिंग चलाएँ';

  @override
  String get flashcardsAudioUnavailable => 'यह रिकॉर्डिंग इस डिवाइस पर नहीं चल सकती।';

  @override
  String get flashcardsCustomFields => 'आपके फ़ील्ड';

  @override
  String get flashcardsTemplates => 'टेम्पलेट';

  @override
  String flashcardsNewFieldName(int n) {
    return 'फ़ील्ड $n';
  }

  @override
  String get flashcardsAddField => 'फ़ील्ड जोड़ें';

  @override
  String get flashcardsFieldName => 'फ़ील्ड का नाम';

  @override
  String get flashcardsFieldLangDefault => 'पक्ष की भाषा';

  @override
  String get flashcardsTemplateConfirm =>
      'टेम्पलेट फ़ील्ड दिखाने का तरीका तय करता है और अपने फ़ील्ड जोड़ता है। आपके कार्ड और फ़ील्ड वैसे ही रहते हैं।';

  @override
  String get flashcardsApplyTemplate => 'लागू करें';

  @override
  String get templateVocabulary => 'शब्दावली';

  @override
  String get templateTwoTranslations => 'दो अनुवाद वाला शब्द';

  @override
  String get templateQuestionAnswer => 'प्रश्न-उत्तर';

  @override
  String get templateDefinition => 'शब्द और परिभाषा';

  @override
  String get templateGrammar => 'व्याकरण नियम';

  @override
  String get templateFieldPlural => 'बहुवचन';

  @override
  String get templateFieldTranslation2 => 'दूसरा अनुवाद';

  @override
  String get templateFieldSynonyms => 'पर्यायवाची';

  @override
  String get templateFieldRule => 'नियम';

  @override
  String get deckCategory => 'स्तर या विषय';

  @override
  String get deckCategoryHint => 'जैसे A1, चिकित्सा';

  @override
  String get flashcardsSearchAll => 'सभी कार्ड खोजें';

  @override
  String get flashcardsSearchAllHint => 'शब्द, अनुवाद, उदाहरण, नोट, टैग…';

  @override
  String get flashcardsAllDecks => 'सभी डेक';

  @override
  String get flashcardsAllLanguages => 'सभी भाषाएँ';

  @override
  String get flashcardsLangUnset => 'भाषा तय नहीं';

  @override
  String get flashcardsLevelUnset => 'कोई स्तर या विषय नहीं';

  @override
  String get flashcardsByLanguage => 'भाषा के अनुसार प्रगति';

  @override
  String get flashcardsByLevel => 'स्तर/विषय के अनुसार प्रगति';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks डेक · $cards कार्ड · $mature पक्के · $due बाकी · $correct सही (30 दिन)';
  }

  @override
  String get flashcardsRecord => 'रिकॉर्ड करें';

  @override
  String get flashcardsRecording => 'रिकॉर्डिंग हो रही है…';

  @override
  String get flashcardsRecordStop => 'रोकें और रखें';

  @override
  String get flashcardsMicDenied =>
      'माइक्रोफ़ोन की अनुमति बंद है। रिकॉर्ड करने के लिए सिस्टम सेटिंग में इसकी अनुमति दें।';

  @override
  String get flashcardsRecordFailed => 'इस डिवाइस पर रिकॉर्डिंग उपलब्ध नहीं है।';

  @override
  String get soundsTitle => 'ध्वनियाँ';

  @override
  String get soundsNature => 'प्रकृति';

  @override
  String get soundsNoise => 'फ़ोकस नॉइज़';

  @override
  String get soundRain => 'बारिश';

  @override
  String get soundStorm => 'आंधी-तूफ़ान';

  @override
  String get soundRiver => 'नदी';

  @override
  String get soundOcean => 'समुद्र की लहरें';

  @override
  String get soundFire => 'अलाव';

  @override
  String get soundForest => 'जंगल के पक्षी';

  @override
  String get soundNight => 'गर्मियों की रात';

  @override
  String get soundWhite => 'व्हाइट नॉइज़';

  @override
  String get soundPink => 'पिंक नॉइज़';

  @override
  String get soundBrown => 'ब्राउन नॉइज़';

  @override
  String get soundsPlay => 'चलाएँ';

  @override
  String get soundsSleep => 'स्लीप टाइमर';

  @override
  String get soundsSleepOff => 'बंद';

  @override
  String soundsSleepAt(String time) {
    return '$time पर रुकेगा';
  }

  @override
  String soundsMixFull(int count) {
    return 'एक साथ अधिकतम $count ध्वनियाँ चल सकती हैं।';
  }

  @override
  String get soundsHint =>
      'शुरू करने के लिए किसी ध्वनि पर टैप करें। कई ध्वनियाँ मिलाएँ और हर एक की आवाज़ सेट करें।';

  @override
  String get soundsMixer => 'मिक्स';

  @override
  String soundsVolumeOf(String name) {
    return '$name की आवाज़';
  }

  @override
  String get soundsChannel => 'प्रकृति की ध्वनियाँ';

  @override
  String get settingsEndTone => 'टाइमर खत्म होने की ध्वनि';

  @override
  String get toneGentle => 'हल्की बीप';

  @override
  String get toneBeeps => 'बीप';

  @override
  String get toneWood => 'लकड़ी की खटखट';

  @override
  String get toneBird => 'चिड़िया की आवाज़';

  @override
  String get toneStream => 'झरना';

  @override
  String get toneSystem => 'फ़ोन की ध्वनि';

  @override
  String get speechOnPhone => 'इस फ़ोन पर';

  @override
  String get speechAllLanguages => 'सभी भाषाएँ';

  @override
  String get speechSearchLanguage => 'भाषा खोजें';

  @override
  String get speechGetVoices => 'और आवाज़ें डाउनलोड करें';

  @override
  String get speechGetVoicesHint =>
      'जिन भाषाओं की आवाज़ नहीं है, उन्हें फ़ोन की स्पीच सेटिंग में डाउनलोड करें।';

  @override
  String get speechSettingsFailed => 'इस फ़ोन की स्पीच सेटिंग नहीं खुल सकी।';

  @override
  String get speechVoiceMissing => 'कोई आवाज़ इंस्टॉल नहीं';

  @override
  String get speechPause => 'दोहराव के बीच विराम';

  @override
  String speechSeconds(String seconds) {
    return '$seconds से.';
  }

  @override
  String get speechExample => 'उत्तर के साथ उदाहरण पढ़ें';

  @override
  String get flashListen => 'सुनें';

  @override
  String get flashListenNext => 'अगला कार्ड';

  @override
  String get flashListenEmpty => 'सुनने के लिए कोई कार्ड नहीं।';

  @override
  String get flashViewTable => 'तालिका';

  @override
  String get flashViewCards => 'कार्ड';

  @override
  String get flashSwapSides => 'कॉलम बदलें';

  @override
  String get flashSort => 'क्रम';

  @override
  String get flashSortNewest => 'नए पहले';

  @override
  String get flashSortAlpha => 'वर्णानुक्रम';

  @override
  String get flashSortDue => 'देय पहले';

  @override
  String get flashSortHard => 'कठिन पहले';

  @override
  String get flashPasteCards => 'कार्ड पेस्ट करें';

  @override
  String get flashClipboardEmpty => 'क्लिपबोर्ड में कोई टेक्स्ट नहीं है।';

  @override
  String get flashMenuAdd => 'कार्ड जोड़ें';

  @override
  String get flashMenuDeck => 'डेक';

  @override
  String get flashToday => 'आज';

  @override
  String get flashStudyNow => 'पढ़ें';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड हल किए',
      one: '$count कार्ड हल किया',
      zero: 'कोई कार्ड हल नहीं',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'जंगल में बारिश';

  @override
  String get autoBackupTitle => 'स्वचालित बैकअप';

  @override
  String get autoBackupDesc => 'हर दिन इस फ़ोन पर; आख़िरी 7 रखे जाते हैं';

  @override
  String get autoBackupHint =>
      'ये प्रतियाँ इसी फ़ोन पर रहती हैं और ऐप हटाने पर मिट जाती हैं। नए फ़ोन पर जाने के लिए “बैकअप” से फ़ाइल सहेजें।';

  @override
  String get autoBackupNone => 'अभी कोई स्वचालित बैकअप नहीं। पहला आज बनेगा।';

  @override
  String get autoBackupRestore => 'पुनर्स्थापित करें';

  @override
  String autoBackupConfirm(String date) {
    return 'क्या सारा मौजूदा डेटा $date के बैकअप से बदलें?';
  }

  @override
  String get autoBackupRestored => 'पुनर्स्थापित हो गया।';

  @override
  String get errorLogTitle => 'त्रुटि लॉग';

  @override
  String get errorLogHint =>
      'कोई गड़बड़ी होने पर यहाँ दर्ज होती है: सिर्फ़ त्रुटि का प्रकार और कोड में जगह, आपकी सामग्री कभी नहीं। समस्या ठीक कराने के लिए इसे साझा करें।';

  @override
  String get errorLogEmpty => 'कोई त्रुटि दर्ज नहीं।';

  @override
  String get errorLogClear => 'साफ़ करें';

  @override
  String get soundsWithFocus => 'फ़ोकस सत्र के साथ चलाएँ';

  @override
  String get soundsWithFocusHint =>
      'आपका मिक्स फ़ोकस सत्र के साथ शुरू होता है और ब्रेक में रुकता है।';

  @override
  String get soundsSavedMixes => 'सहेजे गए मिक्स';

  @override
  String get soundsSaveMix => 'यह मिक्स सहेजें';

  @override
  String get soundsMixNameHint => 'नाम, जैसे बारिश वाली लाइब्रेरी';

  @override
  String soundsDeleteMix(String name) {
    return 'मिक्स “$name” हटाएँ?';
  }

  @override
  String get settingsReviewReminderHint => 'दिन में एक बार, केवल जब कार्ड बाकी हों';

  @override
  String get settingsReviewTime => 'रिमाइंडर का समय';

  @override
  String get shortcutFocus => 'फ़ोकस';

  @override
  String get shortcutNewTask => 'नया कार्य';

  @override
  String get shortcutReview => 'कार्ड दोहराएँ';

  @override
  String get shortcutSounds => 'प्रकृति की ध्वनियाँ';

  @override
  String get myDayTitle => 'मेरा दिन शुरू करें';

  @override
  String get myDayHint => 'एक नज़र में आपका दिन, फिर फ़ोकस के लिए एक टैप';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आज $count कार्य',
      one: 'आज $count कार्य',
      zero: 'आज कोई कार्य नहीं',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'आज और कोई कार्यक्रम नहीं';

  @override
  String myDayNextEvent(String title, String time) {
    return 'अगला: $title, $time बजे';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आदतें बाकी',
      one: '$count आदत बाकी',
      zero: 'सभी आदतें पूरी',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'फ़ोकस सत्र से शुरू करें';

  @override
  String get hijriMonth1 => 'मुहर्रम';

  @override
  String get hijriMonth2 => 'सफ़र';

  @override
  String get hijriMonth3 => 'रबी उल-अव्वल';

  @override
  String get hijriMonth4 => 'रबी उस-सानी';

  @override
  String get hijriMonth5 => 'जुमादा अल-ऊला';

  @override
  String get hijriMonth6 => 'जुमादा अल-आख़िरा';

  @override
  String get hijriMonth7 => 'रजब';

  @override
  String get hijriMonth8 => 'शाबान';

  @override
  String get hijriMonth9 => 'रमज़ान';

  @override
  String get hijriMonth10 => 'शव्वाल';

  @override
  String get hijriMonth11 => 'ज़ुल-क़ादा';

  @override
  String get hijriMonth12 => 'ज़ुल-हिज्जा';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year हि.';
  }

  @override
  String get settingsHijri => 'हिजरी तिथियाँ';

  @override
  String get settingsHijriHint => 'कैलेंडर और होम पर दिखती हैं (उम्म अल-क़ुरा)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '$count दिन',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'आज $goal में से $done कार्ड';
  }

  @override
  String get studyGoalReached => 'आज का लक्ष्य पूरा। बहुत बढ़िया!';

  @override
  String get studyWeekTitle => 'आपका सप्ताह';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 दिनों में $count कार्ड',
      one: '7 दिनों में $count कार्ड',
      zero: '7 दिनों में कोई कार्ड नहीं',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7 दिनों में $duration फ़ोकस';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'लगातार: $current · सर्वश्रेष्ठ: $best';
  }

  @override
  String get studyGoalTitle => 'दैनिक लक्ष्य (कार्ड)';

  @override
  String get studyGoalOff => 'बंद';

  @override
  String get focusDndTitle => 'फ़ोकस के दौरान परेशान न करें';

  @override
  String get focusDndHint => 'हर फ़ोकस सत्र में चालू और ब्रेक पर वापस बंद';

  @override
  String get focusDndNeedsAccess => 'इसके लिए फ़ोन सेटिंग में अनुमति दें';

  @override
  String get voiceInput => 'बोलकर लिखें';

  @override
  String get voiceInputPrompt => 'अब बोलिए';

  @override
  String get voiceInputUnavailable =>
      'इस फ़ोन पर बोलकर लिखना उपलब्ध नहीं है। कोई वाक् सेवा इंस्टॉल या चालू करें (जैसे Google की)।';

  @override
  String get prayerFajr => 'फ़ज्र';

  @override
  String get prayerSunrise => 'सूर्योदय';

  @override
  String get prayerDhuhr => 'ज़ुहर';

  @override
  String get prayerAsr => 'अस्र';

  @override
  String get prayerMaghrib => 'मग़रिब';

  @override
  String get prayerIsha => 'इशा';

  @override
  String get prayerMethodMwl => 'मुस्लिम वर्ल्ड लीग';

  @override
  String get prayerMethodUmmAlQura => 'उम्म अल-क़ुरा, मक्का';

  @override
  String get prayerMethodEgypt => 'मिस्र प्राधिकरण';

  @override
  String get prayerMethodJordan => 'जॉर्डन, औक़ाफ़ मंत्रालय';

  @override
  String get prayerMethodKarachi => 'इस्लामी विज्ञान विश्वविद्यालय, कराची';

  @override
  String get prayerMethodIsna => 'इस्लामिक सोसाइटी ऑफ़ नॉर्थ अमेरिका';

  @override
  String get prayerMethodGulf => 'खाड़ी क्षेत्र';

  @override
  String get prayerMethodKuwait => 'कुवैत';

  @override
  String get prayerMethodQatar => 'क़तर';

  @override
  String get prayerMethodTurkey => 'तुर्किये, दियानत';

  @override
  String get prayerMethodSingapore => 'सिंगापुर, मलेशिया, इंडोनेशिया';

  @override
  String get prayerMethodFrance => 'फ़्रांस (12°)';

  @override
  String get prayerMethodRussia => 'रूस, आध्यात्मिक प्रशासन';

  @override
  String prayerNotifTitle(String name) {
    return '$name का समय';
  }

  @override
  String prayerNotifBody(String time) {
    return 'नमाज़ का समय · $time';
  }

  @override
  String get prayerTitle => 'नमाज़ के समय';

  @override
  String get prayerOffHint =>
      'नमाज़ के समय देखने के लिए अपना शहर चुनें। समय फ़ोन पर ही निकाला जाता है, लोकेशन की ज़रूरत नहीं।';

  @override
  String get prayerChooseCity => 'शहर चुनें';

  @override
  String get prayerCity => 'शहर';

  @override
  String get prayerCitySearch => 'शहर खोजें';

  @override
  String get prayerMethod => 'गणना विधि';

  @override
  String get prayerHanafiAsr => 'हनफ़ी अस्र (बाद का समय)';

  @override
  String get prayerReminders => 'हर नमाज़ के समय सूचना';

  @override
  String get prayerPauseFocus => 'नमाज़ के समय फ़ोकस रोकें';

  @override
  String get prayerPauseFocusHint => 'चालू सत्र रुकेगा; नमाज़ के बाद जारी रखें';

  @override
  String get prayerTurnOff => 'नमाज़ के समय बंद करें';

  @override
  String get prayerAccuracyNote =>
      'गणना किए गए समय आपकी स्थानीय मस्जिद से कुछ मिनट अलग हो सकते हैं।';

  @override
  String prayerNext(String name, String time) {
    return '$name, $time बजे';
  }

  @override
  String get importAnkiNewFormat =>
      'यह Anki फ़ाइल नवीनतम प्रारूप में है। Anki में “पुराने Anki संस्करणों का समर्थन” चालू करके फिर से निर्यात करें।';

  @override
  String get importTemplate => 'स्प्रेडशीट टेम्पलेट';

  @override
  String get importTemplateFront => 'सेब';

  @override
  String get importTemplateBack => 'एक गोल फल';

  @override
  String get importTemplateExample => 'मैं हर दिन एक सेब खाता हूँ।';

  @override
  String get importTemplateTag => 'भोजन';

  @override
  String get starterTitle => 'शुरुआती डेक';

  @override
  String get starterHint => 'तुरंत पढ़ाई आज़माने के लिए एक जोड़ें। बाद में बदल या हटा सकते हैं।';

  @override
  String get starterAdd => 'जोड़ें';

  @override
  String get starterWords => 'रोज़मर्रा के अंग्रेज़ी शब्द (अरबी)';

  @override
  String get starterCapitals => 'विश्व की राजधानियाँ';

  @override
  String get starterElements => 'रासायनिक तत्व';

  @override
  String get settingsAccent => 'मुख्य रंग';

  @override
  String get accentViolet => 'बैंगनी';

  @override
  String get accentBlue => 'नीला';

  @override
  String get accentTeal => 'हरा-नीला';

  @override
  String get accentGreen => 'हरा';

  @override
  String get accentRose => 'गुलाबी';

  @override
  String get accentAmber => 'कहरुवा';

  @override
  String get settingsFlashTextSize => 'कार्ड के अक्षरों का आकार';

  @override
  String get settingsFlashTextSample => 'उदाहरण';

  @override
  String get widgetStartFocus => 'फ़ोकस के लिए टैप करें';

  @override
  String widgetFocusUntil(String time) {
    return '$time तक फ़ोकस';
  }

  @override
  String get widgetNoCardsDue => 'कार्ड: सब पूरा';

  @override
  String get faqMyDayQ => '“मेरा दिन शुरू करें” क्या करता है?';

  @override
  String get faqMyDayA =>
      'होम पर दिन में एक बार दिखता है: आज के कार्य, अगला कार्यक्रम, बाकी आदतें और बाकी कार्ड देखें, फिर एक टैप में फ़ोकस सत्र शुरू करें। शॉर्टकट के लिए ऐप आइकन दबाकर रखें, या होम स्क्रीन विजेट जोड़ें।';

  @override
  String get faqTasksQ => 'रिमाइंडर के साथ कार्य कैसे जोड़ूँ?';

  @override
  String get faqTasksA =>
      'होम पर “नया कार्य” या कार्य में + दबाएँ। शीर्षक लिखें या माइक्रोफ़ोन से बोलें, फिर तारीख, समय और रिमाइंडर चुनें। देर वाले कार्य सबसे ऊपर दिखते हैं।';

  @override
  String get faqFocusQ => 'फ़ोकस टाइमर कैसे काम करता है?';

  @override
  String get faqFocusA =>
      'पोमोडोरो, उलटी गिनती या खुला समय चुनें और शुरू दबाएँ; ब्रेक अपने आप शुरू हो सकते हैं। सेटिंग में समाप्ति ध्वनि चुनें, फ़ोकस के दौरान परेशान न करें चालू करें और हर सत्र में प्रकृति की ध्वनियाँ चलाएँ।';

  @override
  String get faqSoundsQ => 'क्या मैं प्रकृति की ध्वनियाँ मिला सकता हूँ?';

  @override
  String get faqSoundsA =>
      'छह तक असली रिकॉर्डिंग चालू करें, हर एक की आवाज़ सेट करें और मिश्रण को नाम से सहेजें। ये पृष्ठभूमि में चलती रहती हैं और स्लीप टाइमर इन्हें रोक सकता है। कोई संगीत नहीं है।';

  @override
  String get faqCalendarQ => 'क्या कैलेंडर हिजरी तिथियाँ दिखाता है?';

  @override
  String get faqCalendarA =>
      'हाँ। अरबी में हिजरी तिथियाँ (उम्म अल-क़ुरा) अपने आप दिखती हैं, और किसी भी भाषा के लिए सेटिंग में चालू की जा सकती हैं। कार्यक्रम, तारीख वाले कार्य और प्रोजेक्ट पड़ाव साथ दिखते हैं।';

  @override
  String get faqFlashcardsQ => 'दोहराने में कौन-से कार्ड दिखें, यह कैसे तय होता है?';

  @override
  String get faqFlashcardsA =>
      'अच्छी तरह याद कार्ड लंबे अंतराल के बाद लौटते हैं और गलत वाले जल्दी (अंतराल पुनरावृत्ति)। हर उत्तर को फिर से, कठिन, अच्छा या आसान रेट करें। दैनिक लक्ष्य रखें और “आज” कार्ड पर अपनी लगातार गिनती बनाए रखें। डेक में परीक्षा की तारीख़ रखें, ताकि बचे दिन और रोज़ सीखने वाले नए कार्ड दिखें। \"मेरा क्रम\" से छाँटकर कार्ड खींचकर जमाएँ, हर तरफ़ के स्पीकर को दबाकर सुनें, और गति व दोहराव बोली मेनू में तय करें।';

  @override
  String get faqImportQ => 'क्या मैं Anki या Excel से कार्ड ला सकता हूँ?';

  @override
  String get faqImportA =>
      'हाँ। डेक में आयात चुनें, फिर फ़ाइल चुनें: Anki (.apkg), Excel (.xlsx) या CSV, और कॉलम मिलाएँ। कंप्यूटर पर कार्ड लिखने के लिए “स्प्रेडशीट टेम्पलेट” इस्तेमाल करें। Anki फ़ाइलों की तस्वीरें और ध्वनियाँ आयात नहीं होतीं।';

  @override
  String get faqNotesQ => 'नोट्स में क्या कर सकते हैं?';

  @override
  String get faqNotesA =>
      'चेकलिस्ट और फ़ॉर्मैटिंग के साथ लिखें, ज़रूरी नोट्स पिन या पसंदीदा करें, टैग जोड़ें और नोट्स को कार्यों से जोड़ें। माइक्रोफ़ोन बटन से बोलकर लिखें। नया नोट किसी टेम्पलेट (व्याख्यान, पुस्तक सारांश, डायरी, साप्ताहिक योजना) से शुरू हो सकता है, और चित्र बटन से फ़ोटो जोड़ें।';

  @override
  String get faqHabitsQ => 'आदतों की लगातार गिनती कैसे होती है?';

  @override
  String get faqHabitsA =>
      'निर्धारित दिन आदत का लक्ष्य पूरा होने पर वह दिन गिना जाता है। आदत रोकने से गिनती सुरक्षित रहती है। हर आदत का अपना रिमाइंडर समय हो सकता है।';

  @override
  String get faqGoalsQ => 'लक्ष्य प्रगति कैसे दिखाते हैं?';

  @override
  String get faqGoalsA =>
      'लक्ष्य को मात्रा और इकाई दें, फिर प्रगति दर्ज करें। उसका कार्ड बताता है कि आप कहाँ हैं और समय सीमा से पहले कितना बाकी है।';

  @override
  String get faqProjectsQ => 'प्रोजेक्ट किसलिए हैं?';

  @override
  String get faqProjectsA =>
      'कार्यों को प्रोजेक्ट में समूहित करें, तारीख वाले पड़ाव जोड़ें और कुल प्रगति देखें। पड़ाव कैलेंडर में भी दिखते हैं।';

  @override
  String get faqInsightsQ => 'इनसाइट्स में क्या दिखता है?';

  @override
  String get faqInsightsA =>
      'दिनों और हफ़्तों में आपका फ़ोकस समय, पूरे कार्य और पढ़ाई, हल्के सुझावों के साथ। सब कुछ आपके फ़ोन पर ही निकाला जाता है।';

  @override
  String get faqSpacesQ => 'सभी अनुभाग कहाँ हैं?';

  @override
  String get faqSpacesA =>
      'स्पेसेज़ में ऐप के सभी हिस्से हैं (नोट्स, डेक, आदतें, लक्ष्य, प्रोजेक्ट, ध्वनियाँ आदि), ताकि मुख्य पट्टी सरल रहे।';

  @override
  String get faqBackupQ => 'मेरे डेटा का बैकअप कैसे होता है?';

  @override
  String get faqBackupA =>
      'ऐप हर दिन चुपचाप इस फ़ोन पर एन्क्रिप्टेड कॉपी रखता है और आख़िरी 7 बचाता है। सेटिंग में आप पासवर्ड वाली बैकअप फ़ाइल भी निर्यात कर सकते हैं और दूसरे फ़ोन पर बहाल कर सकते हैं।';

  @override
  String get faqPrayerQ => 'नमाज़ के समय कैसे काम करते हैं?';

  @override
  String get faqPrayerA =>
      'सेटिंग → नमाज़ के समय में अपना शहर चुनें। समय फ़ोन पर वहाँ की विधि से निकलते हैं, और आप विधि व अस्र का मसलक बदल सकते हैं। हर नमाज़ पर सूचना मिल सकती है और चालू फ़ोकस सत्र रुक जाता है।';

  @override
  String get faqPrivacyQ => 'मेरा डेटा कहाँ रहता है?';

  @override
  String get faqPrivacyA =>
      'सिर्फ़ आपके फ़ोन पर, एन्क्रिप्टेड डेटाबेस में। कोई खाता नहीं, कोई ट्रैकिंग नहीं। इंटरनेट केवल उन सुविधाओं के लिए है जिन्हें आप ख़ुद चालू करें, जैसे वैकल्पिक सहायक।';

  @override
  String get faqAssistantQ => 'सहायक क्या है?';

  @override
  String get faqAssistantA =>
      'एक वैकल्पिक सहायक जिसे आप सेटिंग में अपनी AI सेवा से जोड़ते हैं। यह शुरू में बंद रहता है और नोट का कोई भी पाठ भेजने से पहले पूछता है।';

  @override
  String get tourPlanTitle => 'अपना दिन योजनाबद्ध करें';

  @override
  String get tourPlanBody =>
      'कार्य, कैलेंडर और आदतें एक शांत जगह पर। हर सुबह “मेरा दिन शुरू करें” से शुरुआत करें।';

  @override
  String get tourFocusTitle => 'गहराई से फ़ोकस करें';

  @override
  String get tourFocusBody =>
      'असली प्रकृति ध्वनियों, परेशान न करें और हल्की समाप्ति ध्वनियों के साथ समयबद्ध सत्र।';

  @override
  String get tourLearnTitle => 'हमेशा के लिए सीखें';

  @override
  String get tourLearnBody =>
      'अंतराल पुनरावृत्ति वाले कार्ड, कई भाषाओं में उच्चारण, और Anki या Excel से आयात।';

  @override
  String get helpTitle => 'सहायता और प्रश्न';

  @override
  String get helpOpen => 'खोलें';

  @override
  String get helpTour => 'परिचय देखें';

  @override
  String get tourNext => 'आगे';

  @override
  String get tourDone => 'शुरू करें';

  @override
  String get transferColTitle => 'शीर्षक';

  @override
  String get transferColNotes => 'टिप्पणियाँ';

  @override
  String get transferColBody => 'पाठ';

  @override
  String get transferColDue => 'नियत तारीख';

  @override
  String get transferColPriority => 'प्राथमिकता (0-3)';

  @override
  String get transferColDone => 'पूरा';

  @override
  String get transferColProject => 'प्रोजेक्ट';

  @override
  String get transferColCategory => 'श्रेणी';

  @override
  String get transferTitle => 'आयात और निर्यात';

  @override
  String get transferSaveAs => 'इस रूप में सहेजें';

  @override
  String get transferImport => 'फ़ाइल से आयात';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV या Word की तालिका। कॉलम: शीर्षक, नियत तारीख (2026-12-31), प्राथमिकता 0-3, पूरा, प्रोजेक्ट, टिप्पणियाँ। पहले से मौजूद कार्य छोड़ दिए जाते हैं।';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown या टेक्स्ट फ़ाइल एक नोट बनती है। Excel या CSV: हर पंक्ति एक नोट (शीर्षक, पाठ)।';

  @override
  String get transferSaved => 'फ़ाइल सहेजी गई';

  @override
  String get transferFailed => 'फ़ाइल नहीं बन सकी। कुछ नहीं बदला।';

  @override
  String get transferUnsupported =>
      'यह फ़ाइल यहाँ नहीं पढ़ी जा सकती। Excel, CSV, Word, Markdown या टेक्स्ट इस्तेमाल करें।';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added जोड़े गए',
      one: '$added जोड़ा गया',
      zero: 'जोड़ने को कुछ नया नहीं',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'टेक्स्ट';

  @override
  String get transferAllNotes => 'सभी नोट्स';

  @override
  String get transferThisNote => 'यह नोट';

  @override
  String get transferDeckFormats => 'Excel, Word या PDF के रूप में सहेजें';

  @override
  String get faqFilesQ => 'क्या मैं Excel, Word या PDF फ़ाइलें इस्तेमाल कर सकता हूँ?';

  @override
  String get faqFilesA =>
      'हाँ। कार्य और नोट्स में ऊपर आयात-निर्यात बटन (दो तीर) है, और हर डेक के मेनू में भी। Excel, CSV, Word या PDF के रूप में सहेजें, या Excel, CSV, Word, Markdown या टेक्स्ट फ़ाइलें लाएँ। कॉलम के नाम ऐप की किसी भी भाषा में हो सकते हैं, और सहेजी फ़ाइलें फिर से आयात हो सकती हैं।';

  @override
  String get tplLecture => 'व्याख्यान';

  @override
  String get tplBook => 'पुस्तक सारांश';

  @override
  String get tplJournal => 'डायरी';

  @override
  String get tplWeek => 'साप्ताहिक योजना';

  @override
  String get tplLectureBody => '## मुख्य बातें\n- \n\n## प्रश्न\n- [ ] \n\n## सारांश\n';

  @override
  String get tplBookBody =>
      '## मुख्य विचार\n\n## मैंने क्या सीखा\n- \n\n## उद्धरण\n> \n\n## अमल में लाना\n- [ ] \n';

  @override
  String get tplJournalBody => '## आभारी हूँ\n- \n\n## आज का फ़ोकस\n- [ ] \n\n## नोट्स\n';

  @override
  String get tplWeekBody =>
      '## इस सप्ताह के लक्ष्य\n- [ ] \n\n### शनिवार\n- [ ] \n\n### रविवार\n- [ ] \n\n### सोमवार\n- [ ] \n\n### मंगलवार\n- [ ] \n\n### बुधवार\n- [ ] \n\n### गुरुवार\n- [ ] \n\n### शुक्रवार\n- [ ] \n';

  @override
  String get tplHint => 'टेम्पलेट से शुरू करें';

  @override
  String get noteImage => 'चित्र';

  @override
  String get noteAddImage => 'चित्र जोड़ें';

  @override
  String get noteImageUnreadable => 'यह फ़ाइल ऐसा चित्र नहीं है जिसे ऐप पढ़ सके।';

  @override
  String get noteImageTooLarge => 'यह चित्र बहुत बड़ा है।';

  @override
  String get examSet => 'परीक्षा की तारीख़ तय करें';

  @override
  String get examDate => 'परीक्षा की तारीख़';

  @override
  String get examToday => 'परीक्षा आज है। शुभकामनाएँ!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'परीक्षा $count दिन में',
      one: 'परीक्षा कल',
      zero: 'परीक्षा $count दिन में',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'रोज़ $count नए कार्ड सीखें',
      one: 'रोज़ $count नया कार्ड सीखें',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'सभी कार्ड सीख लिए, दोहराते रहें';

  @override
  String examRaiseLimit(int count) {
    return 'रोज़ $count नए कार्ड दिखाएँ';
  }

  @override
  String get backupDriveHint =>
      'ऑनलाइन कॉपी रखने के लिए, अगली सेव स्क्रीन में Google Drive (या कोई और क्लाउड ऐप) चुनें।';

  @override
  String get flashShareDeck => 'डेक किसी दोस्त के साथ साझा करें';

  @override
  String get flashSortManual => 'मेरा क्रम (खींचें)';

  @override
  String get flashReorderHint => 'हैंडल को दबाकर कार्ड खींचें और जगह बदलें।';

  @override
  String get flashReorderNeedsAll => 'कार्ड खींचने के लिए खोज और फ़िल्टर हटाएँ।';

  @override
  String get flashDragHandle => 'खींचकर हिलाएँ';

  @override
  String get reportTitle => 'मासिक रिपोर्ट';

  @override
  String get reportFocus => 'फ़ोकस समय';

  @override
  String reportSessions(int count) {
    return '$count सत्र';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'सबसे अच्छा दिन: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count सक्रिय दिन';
  }

  @override
  String get reportCards => 'दोहराए गए कार्ड';

  @override
  String reportCardsKnown(String percent) {
    return '$percent याद रहे';
  }

  @override
  String get reportTasks => 'पूरे किए गए कार्य';

  @override
  String get reportHabits => 'आदत दर्ज';

  @override
  String get reportEmpty => 'इस महीने अभी कुछ दर्ज नहीं है।';

  @override
  String get reportSave => 'PDF या Word में सहेजें';

  @override
  String get reportPrevMonth => 'पिछला महीना';

  @override
  String get reportNextMonth => 'अगला महीना';

  @override
  String get careTitle => 'फ़ोन और डेटा की देखभाल';

  @override
  String get storageTitle => 'स्टोरेज';

  @override
  String get storageSubtitle => 'क्या जगह घेर रहा है और अनुपयोगी चित्रों की सफ़ाई';

  @override
  String get storagePictures => 'नोट्स में चित्र';

  @override
  String get storageCardMedia => 'कार्ड में चित्र और ऑडियो';

  @override
  String get storageText => 'नोट्स का टेक्स्ट';

  @override
  String get storageFree => 'आपके फ़ोन में खाली';

  @override
  String get storageLow =>
      'आपका फ़ोन लगभग भर गया है। जगह खाली करें ताकि बैकअप और रिमाइंडर चलते रहें।';

  @override
  String storageUnused(int count, String size) {
    return '$count अनुपयोगी चित्र ($size)';
  }

  @override
  String get storageNoUnused => 'कोई अनुपयोगी चित्र नहीं। सब व्यवस्थित है।';

  @override
  String get storageClean => 'अनुपयोगी चित्र हटाएँ';

  @override
  String storageCleaned(int count) {
    return '$count चित्र हटाए गए';
  }

  @override
  String get storageHint =>
      'चित्र तभी अनुपयोगी माना जाता है जब कोई नोट उसे न दिखाए, ट्रैश वाले नोट भी गिने जाते हैं।';

  @override
  String get batteryTitle => 'रिमाइंडर चालू रखें';

  @override
  String get batterySubtitle => 'कुछ फ़ोन बैकग्राउंड ऐप्स रोक देते हैं। अपना जाँचें।';

  @override
  String get batteryStatusOk =>
      'बैटरी बचत इस ऐप को सीमित नहीं करती। रिमाइंडर और आवाज़ें समय पर आनी चाहिए।';

  @override
  String get batteryStatusLimited =>
      'बैटरी बचत ऐप को बैकग्राउंड में रोक सकती है, इसलिए रिमाइंडर और आवाज़ें देर से आ सकती हैं या नहीं आएँगी।';

  @override
  String get batteryOpen => 'बैटरी सेटिंग खोलें';

  @override
  String get batteryOpenApp => 'ऐप सेटिंग खोलें';

  @override
  String get batteryGeneric =>
      'बैटरी सेटिंग में इस ऐप को चुनें और «अप्रतिबंधित» (या «ऑप्टिमाइज़ न करें») रखें।';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: सुरक्षा › अनुमतियाँ › ऑटोस्टार्ट में ऐप चालू करें और बैटरी सेवर «कोई प्रतिबंध नहीं» रखें।';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: बैटरी › यह ऐप खोलें, बैकग्राउंड गतिविधि और ऑटो-लॉन्च की अनुमति दें; हाल के ऐप्स में ऐप को लॉक करें।';

  @override
  String get batterySamsung =>
      'Samsung: बैटरी › बैकग्राउंड उपयोग सीमाएँ: ऐप को स्लीपिंग और डीप स्लीपिंग ऐप्स से हटाएँ।';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: ऐप लॉन्च › यह ऐप › मैन्युअल प्रबंधन, और ऑटो-लॉन्च, सेकेंडरी लॉन्च व बैकग्राउंड चलने दें।';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: बैटरी › बैकग्राउंड बिजली खपत › इस ऐप को अनुमति दें और अनुमतियों में ऑटो-स्टार्ट चालू करें।';

  @override
  String get whatsNewTitle => 'नया क्या है';

  @override
  String get whatsNewSubtitle => 'हाल के बदलाव कुछ पंक्तियों में';

  @override
  String get whatsNewDone => 'समझ गया';

  @override
  String get whatsNewOrderTitle => 'कार्ड खींचकर अपने क्रम में रखें';

  @override
  String get whatsNewOrderBody => 'डेक में क्रम › मेरा क्रम चुनें, फिर हैंडल पकड़कर खींचें।';

  @override
  String get whatsNewSpeechTitle => 'हर पक्ष पर स्पीकर';

  @override
  String get whatsNewSpeechBody =>
      'शब्द या अनुवाद सुनने के लिए दबाएँ। गति, दोहराव और आवाज़ रिव्यू मेनू में हैं। भाषा टेक्स्ट से पहचानी जाती है।';

  @override
  String get whatsNewReportTitle => 'मासिक रिपोर्ट';

  @override
  String get whatsNewReportBody =>
      'इनसाइट्स में रिपोर्ट आइकन दबाकर महीना देखें और PDF या Word में सहेजें।';

  @override
  String get whatsNewCareTitle => 'फ़ोन और डेटा की देखभाल';

  @override
  String get whatsNewCareBody =>
      'सेटिंग में अब स्टोरेज पेज (चित्र सफ़ाई के साथ) और आपके फ़ोन ब्रांड के लिए बैटरी गाइड है।';

  @override
  String get whatsNewSoundTitle => 'शांत आवाज़ें';

  @override
  String get whatsNewSoundBody =>
      'प्रकृति की आवाज़ें ज़्यादा नरम और धीमी हैं, और चित्र कार्ड बेहतर हैं।';

  @override
  String autoBackupCheckOk(String date) {
    return 'जाँच $date: नवीनतम बैकअप सही खुलता है।';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'जाँच $date: खराब बैकअप मिला और नए से बदल दिया गया।';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'जाँच $date: नवीनतम बैकअप खुल नहीं सका। सेटिंग से खुद बैकअप फ़ाइल सहेजें।';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'आप आमतौर पर $time के आसपास पढ़ते हैं';
  }

  @override
  String get smartReviewTimeUse => 'उपयोग करें';

  @override
  String get widgetNewNote => 'नया नोट';

  @override
  String get noteConnections => 'टैग, लिंक और कार्य';

  @override
  String get navCards => 'कार्ड';

  @override
  String get studyAnswerWay => 'उत्तर देने का तरीका';

  @override
  String get studyMorePractice => 'अतिरिक्त अभ्यास';

  @override
  String get studySessionSettings => 'सत्र सेटिंग';

  @override
  String get focusAdjustTitle => 'आपका सत्र';

  @override
  String get focusPresetsTitle => 'तैयार';

  @override
  String get focusPresetStudy => 'पढ़ाई';

  @override
  String get focusPresetDeep => 'गहन काम';

  @override
  String get focusPresetQuick => 'छोटा सत्र';

  @override
  String get focusPresetReading => 'पढ़ना';

  @override
  String get focusPresetWorkout => 'व्यायाम राउंड';

  @override
  String get focusAdjustMinutes => 'फ़ोकस की अवधि';

  @override
  String get focusAdjustBreak => 'विराम की अवधि';

  @override
  String get focusAdjustRounds => 'राउंड';

  @override
  String get focusRoundsOpen => 'कोई सीमा नहीं';

  @override
  String focusMinutesShort(String n) {
    return '$n मिनट';
  }

  @override
  String get focusTapToAdjust => 'समय बदलने के लिए टैप करें';

  @override
  String get flashArrangeDecks => 'समूह क्रमबद्ध करें';

  @override
  String get flashDeckActions => 'समूह विकल्प';

  @override
  String get starterBrowse => 'तैयार समूह';

  @override
  String get starterBrowseHint => 'एक टैप में जोड़ें और सीखना शुरू करें';

  @override
  String get dashOpenDecks => 'अपने कार्ड खोलें';

  @override
  String speechVoiceNumber(String n) {
    return 'आवाज़ $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'बढ़िया फ़ोकस। $m मिनट आराम?';
  }

  @override
  String get focusFlowBreakStart => 'विराम शुरू करें';

  @override
  String tasksFinishAt(String time) {
    return 'अभी शुरू करें तो सब $time तक पूरा';
  }

  @override
  String get focusCalmPacing => 'शांत गति';

  @override
  String get focusCalmPacingHint => 'केवल पूरे मिनट और घेरा, टिकते सेकंड नहीं';

  @override
  String get focusFlipHint => 'शुरू करने के लिए फ़ोन उल्टा रखें';

  @override
  String get focusImmersive => 'इमर्सिव मोड';

  @override
  String get focusImmersiveBlack => 'शुद्ध काला (बैटरी बचाए)';

  @override
  String get focusFlipToFocus => 'पलटें और फ़ोकस करें';

  @override
  String get focusFlipToFocusHint => 'इमर्सिव मोड में: उल्टा रखने पर शुरू, उठाने पर रुकता है';

  @override
  String get guardTitle => 'ध्यान-भटकाव रक्षक';

  @override
  String get guardSubtitle => 'फ़ोकस के समय ध्यान भटकाने वाली ऐप्स रोकें';

  @override
  String get guardSwitch => 'ध्यान भटकाने वाली ऐप्स रोकें';

  @override
  String get guardSwitchHint => 'फ़ोकस सत्रों और आपके तय समय के दौरान';

  @override
  String get guardNeedsAccess => 'सुलभता स्विच चाहिए: चालू करने के लिए टैप करें';

  @override
  String get guardDisclosureTitle => 'रक्षक कैसे काम करता है';

  @override
  String get guardDisclosureBody =>
      'आपकी चुनी ऐप्स रोकने के लिए Deep Focus Android की सुलभता सेवा से देखता है कि कौन सा ऐप खुला है। \"Shorts और Reels बंद करें\" चालू होने पर यह यह भी देखता है कि स्क्रीन पर छोटा वीडियो प्लेयर है या नहीं।\n\nयह कोई टेक्स्ट नहीं पढ़ता, जो देखता है उसे सहेजता नहीं और कहीं कुछ नहीं भेजता: सब कुछ आपके फ़ोन पर रहता है। आप इसे सुलभता सेटिंग में कभी भी बंद कर सकते हैं।';

  @override
  String get guardAgree => 'सहमत हूँ, सेटिंग खोलें';

  @override
  String get guardModeGentle => 'सौम्य';

  @override
  String get guardModeStrict => 'सख़्त';

  @override
  String get guardGentleHint => '5 सेकंड का साँस विराम, फिर आप चुनें';

  @override
  String get guardStrictHint => 'चुनी ऐप्स फ़ोकस समय ख़त्म होने तक बंद रहती हैं';

  @override
  String get guardApps => 'रोकी जाने वाली ऐप्स';

  @override
  String get guardAppsAllowed => 'अनुमत ऐप्स';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ऐप्स',
      one: '$count ऐप',
      zero: 'अभी कोई नहीं चुनी',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'केवल चुनी ऐप्स की अनुमति';

  @override
  String get guardAllowlistHint => 'बाक़ी सभी ऐप्स रुकेंगी; कॉल, सेटिंग और कीबोर्ड हमेशा चलेंगे';

  @override
  String get guardShorts => 'Shorts और Reels बंद करें';

  @override
  String get guardShortsHint => 'जब भी रक्षक चालू हो। पूरी कोशिश: ये ऐप्स अक्सर बदलती हैं';

  @override
  String get guardSchedule => 'समय रक्षक';

  @override
  String get guardScheduleHint => 'तय दिनों और घंटों में भी, जैसे स्कूल या काम';

  @override
  String get guardFrom => 'से';

  @override
  String get guardTo => 'तक';

  @override
  String get guardSearchApps => 'ऐप्स खोजें';

  @override
  String get guardNoApps => 'कोई ऐप नहीं मिली';

  @override
  String get guardPrivacy =>
      'सिर्फ़ आपके फ़ोन पर: रक्षक देखता है कि कौन सा ऐप खुला है, उसके अंदर क्या है कभी नहीं, और कुछ नहीं भेजता।';

  @override
  String get guardBreathe => 'साँस लें… और छोड़ें';

  @override
  String get guardQuestion => 'क्या आपको अभी यह ऐप चाहिए?';

  @override
  String get guardBackToFocus => 'फ़ोकस पर लौटें';

  @override
  String get guardOpenFive => '5 मिनट के लिए खोलें';

  @override
  String get guardStrictBody => 'यह ऐप आपके फ़ोकस समय के ख़त्म होने तक रुका है।';

  @override
  String get guardShortsClosed => 'रक्षक चालू रहने तक छोटे वीडियो बंद हैं';

  @override
  String get faqGuardQ => 'फ़ोकस करते समय ध्यान भटकाने वाली ऐप्स कैसे रोकूँ?';

  @override
  String get faqGuardA =>
      'फ़ोकस → टाइमर सेटिंग → ध्यान-भटकाव रक्षक खोलें। ऐप्स चुनें, फिर सौम्य (5 सेकंड साँस और सवाल \"क्या आपको अभी यह ऐप चाहिए?\") या सख़्त (वे बंद रहती हैं)। यह फ़ोकस सत्रों में और समय रक्षक के साथ आपके तय दिनों और घंटों में काम करता है। \"केवल चुनी ऐप्स की अनुमति\" बाक़ी सब रोकता है; कॉल, सेटिंग और कीबोर्ड हमेशा चलते हैं। Android एक बार सुलभता सेटिंग में इसे चालू करने को कहता है। यह सिर्फ़ देखता है कि कौन सा ऐप खुला है और कुछ नहीं भेजता।';

  @override
  String notesMovedToNotebook(String name) {
    return '$name में ले जाया गया';
  }

  @override
  String get notesDragHint => 'किसी नोट को दबाए रखें और नोटबुक पर खींचें';

  @override
  String get guardReviewCards => 'इसके बजाय कार्ड दोहराएँ';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count कार्ड आपका इंतज़ार कर रहे हैं',
      one: '$count कार्ड आपका इंतज़ार कर रहा है',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'आपात स्थिति: 10 सेकंड दबाए रखें';

  @override
  String guardEmergencyHolding(Object n) {
    return 'दबाए रखें… $n';
  }

  @override
  String get guardWeekTitle => 'इस सप्ताह';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count विराम',
      one: '$count विराम',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बार फ़ोकस पर लौटे',
      one: '$count बार फ़ोकस पर लौटे',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'शब्द बदलें';

  @override
  String get wordsSubtitle => 'ऐप के किसी भी टेक्स्ट के लिए अपना शब्द रखें';

  @override
  String get wordsHint =>
      'किसी टेक्स्ट को बदलने के लिए टैप करें। आपके शब्द सिर्फ़ इसी भाषा में लागू होते हैं और बैकअप में रहते हैं।';

  @override
  String get wordsSearch => 'टेक्स्ट खोजें';

  @override
  String get wordsChangedOnly => 'सिर्फ़ बदले हुए';

  @override
  String wordsOriginal(String text) {
    return 'मूल: $text';
  }

  @override
  String get wordsReset => 'मूल इस्तेमाल करें';

  @override
  String get wordsResetAll => 'सभी शब्द रीसेट करें';

  @override
  String get wordsResetAllConfirm => 'इस भाषा का हर टेक्स्ट मूल पर लौट जाएगा।';

  @override
  String get wordsNone => 'कोई टेक्स्ट नहीं मिला';

  @override
  String get settingsLanguageSearch => 'भाषा खोजें';

  @override
  String get settingsLanguageNoMatch => 'कोई मेल खाती भाषा नहीं';
}
