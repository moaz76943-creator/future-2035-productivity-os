// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Kreu';

  @override
  String get navTasks => 'Detyrat';

  @override
  String get navFocus => 'Përqendrimi';

  @override
  String get navCalendar => 'Kalendari';

  @override
  String get navSpaces => 'Hapësirat';

  @override
  String get moduleProjects => 'Projektet';

  @override
  String get moduleNotes => 'Shënimet';

  @override
  String get moduleFlashcards => 'Kartat';

  @override
  String get moduleGoals => 'Synimet';

  @override
  String get moduleHabits => 'Zakonet';

  @override
  String get moduleAnalytics => 'Analizat';

  @override
  String get moduleSearch => 'Kërkimi';

  @override
  String get moduleAssistant => 'Asistenti';

  @override
  String get moduleSettings => 'Cilësimet';

  @override
  String get moduleTrash => 'Koshi';

  @override
  String get actionSave => 'Ruaj';

  @override
  String get actionCancel => 'Anulo';

  @override
  String get actionDelete => 'Fshi';

  @override
  String get actionEdit => 'Redakto';

  @override
  String get actionDone => 'U krye';

  @override
  String get actionAdd => 'Shto';

  @override
  String get actionCreate => 'Krijo';

  @override
  String get actionClose => 'Mbyll';

  @override
  String get actionBack => 'Prapa';

  @override
  String get actionUndo => 'Zhbëj';

  @override
  String get actionRestore => 'Rikthe';

  @override
  String get actionRetry => 'Provo përsëri';

  @override
  String get actionContinue => 'Vazhdo';

  @override
  String get actionSkip => 'Kapërce';

  @override
  String get actionArchive => 'Arkivo';

  @override
  String get actionUnarchive => 'Hiq nga arkivi';

  @override
  String get actionPin => 'Fiksoje';

  @override
  String get actionUnpin => 'Zgjidhe';

  @override
  String get actionMore => 'Më shumë opsione';

  @override
  String get actionClear => 'Pastro';

  @override
  String get actionSearch => 'Kërko';

  @override
  String get actionSort => 'Rendit';

  @override
  String get actionShare => 'Ndaj';

  @override
  String get actionImport => 'Importo';

  @override
  String get actionExport => 'Eksporto';

  @override
  String get actionPause => 'Pauzë';

  @override
  String get actionResume => 'Vazhdo';

  @override
  String get actionStart => 'Fillo';

  @override
  String get actionStop => 'Ndalo';

  @override
  String get actionComplete => 'Përfundo';

  @override
  String get actionDeleteForever => 'Fshi përgjithmonë';

  @override
  String get actionEmptyTrash => 'Zbraz koshin';

  @override
  String get actionUnlink => 'Shkëput';

  @override
  String get actionCustomize => 'Personalizo';

  @override
  String get actionPreview => 'Pamja paraprake';

  @override
  String get actionLog => 'Regjistro përparimin';

  @override
  String get stateLoading => 'Po ngarkohet…';

  @override
  String get stateSaving => 'Po ruhet…';

  @override
  String get stateSaved => 'U ruajt';

  @override
  String get stateUnsaved => 'Ndryshime të paruajtura';

  @override
  String get errorGenericTitle => 'Diçka shkoi keq';

  @override
  String get errorGenericMessage => 'Të dhënat e tua janë të sigurta. Provo përsëri.';

  @override
  String get errorLoadFailed => 'Kjo përmbajtje nuk mund të ngarkohej.';

  @override
  String get errorSaveFailed => 'Nuk u ruajt dot. Ndryshimet e tua janë ende këtu.';

  @override
  String get validationRequired => 'Kjo fushë është e detyrueshme';

  @override
  String get validationTitleRequired => 'Shkruaj një titull';

  @override
  String get validationNameRequired => 'Shkruaj një emër';

  @override
  String get validationTooLong => 'Është shumë e gjatë';

  @override
  String get validationEndBeforeStart => 'Mbarimi duhet të jetë pas fillimit';

  @override
  String get validationStartAfterDue => 'Data e fillimit duhet të jetë para afatit';

  @override
  String get validationPositiveNumber => 'Shkruaj një numër më të madh se zero';

  @override
  String get validationDependencyCycle => 'Kjo do të krijonte një varësi rrethore';

  @override
  String get validationInvalidRepeat => 'Ky rregull përsëritjeje nuk është i vlefshëm';

  @override
  String get deletedItem => 'U zhvendos në kosh';

  @override
  String get untitled => 'Pa titull';

  @override
  String get noProject => 'Pa projekt';

  @override
  String get greetingMorning => 'Mirëmëngjes';

  @override
  String get greetingAfternoon => 'Mirëdita';

  @override
  String get greetingEvening => 'Mirëmbrëma';

  @override
  String get dashFocusToday => 'Përqendrimi i sotëm';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done nga $target';
  }

  @override
  String get dashStartFocus => 'Fillo përqendrimin';

  @override
  String get dashFocusRunning => 'Seanca në vazhdim';

  @override
  String get dashTodayTasks => 'Me afat sot';

  @override
  String get dashAgenda => 'Axhenda';

  @override
  String get dashHabits => 'Zakonet e sotme';

  @override
  String get dashGoals => 'Synimet';

  @override
  String get dashReview => 'Përsëritja';

  @override
  String get dashRecentNotes => 'Shënimet e fundit';

  @override
  String get dashInsight => 'Sugjerim';

  @override
  String get dashSeeAll => 'Shiko të gjitha';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karta për përsëritje',
      one: '1 kartë për përsëritje',
      zero: 'Asnjë kartë për përsëritje',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Përsërit tani';

  @override
  String get dashCustomizeTitle => 'Seksionet e kreut';

  @override
  String get dashCustomizeHint => 'Zgjidh çfarë shfaqet në ekranin kryesor.';

  @override
  String get dashSectionFocus => 'Përqendrimi';

  @override
  String get dashSectionToday => 'Detyrat me afat sot';

  @override
  String get dashSectionAgenda => 'Axhenda';

  @override
  String get dashSectionHabits => 'Zakonet';

  @override
  String get dashSectionGoals => 'Synimet';

  @override
  String get dashSectionReview => 'Përsëritja e kartave';

  @override
  String get dashSectionNotes => 'Shënimet e fundit';

  @override
  String get dashSectionInsight => 'Sugjerime';

  @override
  String get quickAddTask => 'Detyrë e re';

  @override
  String get quickAddNote => 'Shënim i ri';

  @override
  String get quickAddEvent => 'Ngjarje e re';

  @override
  String get quickStartFocus => 'Përqendrimi';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ke $count detyra të vonuara. Fillo me më të rëndësishmen.',
      one: 'Ke 1 detyrë të vonuar. Riplanifikoje ose përfundoje në fillim.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Të mungojnë $minutes minuta për synimin ditor të përqendrimit.';
  }

  @override
  String get insightCardsDue => 'Përsërit kartat tani, sa janë ende të freskëta.';

  @override
  String get insightAllClear =>
      'Gjithçka është në rregull. Planifiko nesërmen ose bëj një pushim të vetëdijshëm.';

  @override
  String insightHabitStreak(String habit) {
    return 'Mbaje serinë: $habit nuk është bërë ende sot.';
  }

  @override
  String get focusTitle => 'Përqendrimi';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Kohëmatësi';

  @override
  String get focusModeCountUp => 'Kronometri';

  @override
  String get focusModeOpen => 'I lirë';

  @override
  String get focusPhaseWork => 'Përqendrim';

  @override
  String get focusPhaseShortBreak => 'Pushim i shkurtër';

  @override
  String get focusPhaseLongBreak => 'Pushim i gjatë';

  @override
  String get focusReady => 'Gati kur të jesh gati';

  @override
  String get focusPaused => 'Në pauzë';

  @override
  String get focusRunning => 'Në përqendrim';

  @override
  String get focusDuration => 'Kohëzgjatja';

  @override
  String get focusLinkTask => 'Lidh një detyrë';

  @override
  String get focusLinkedTask => 'Duke punuar me';

  @override
  String get focusNoTask => 'Asnjë detyrë e lidhur';

  @override
  String focusCycle(int current, int total) {
    return 'Cikli $current nga $total';
  }

  @override
  String get focusSkipBreak => 'Kapërce pushimin';

  @override
  String get focusStartBreak => 'Fillo pushimin';

  @override
  String get focusStartNext => 'Fillo përqendrimin tjetër';

  @override
  String get focusSessionComplete => 'Seanca përfundoi';

  @override
  String get focusSessionStopped => 'Seanca u ruajt';

  @override
  String focusSessionSummary(String duration) {
    return 'U përqendrove për $duration.';
  }

  @override
  String get focusAddNote => 'Shto një shënim për këtë seancë';

  @override
  String get focusHistory => 'Historiku';

  @override
  String get focusNoHistory => 'Seancat e përfunduara do të shfaqen këtu';

  @override
  String get focusTargets => 'Objektivat';

  @override
  String get focusDailyTarget => 'Objektivi ditor';

  @override
  String get focusWeeklyTarget => 'Objektivi javor';

  @override
  String get focusOutcomeCompleted => 'E përfunduar';

  @override
  String get focusOutcomeInterrupted => 'U ndal herët';

  @override
  String get focusRecovered => 'Seanca vazhdoi ndërsa aplikacioni ishte i mbyllur.';

  @override
  String get focusCompletedWhileAway =>
      'Një seancë përfundoi ndërsa aplikacioni ishte i mbyllur dhe u ruajt.';

  @override
  String get focusNotificationsOff =>
      'Njoftimet janë çaktivizuar. Nuk do të paralajmërohesh kur të përfundojë një seancë.';

  @override
  String get focusBatteryHint =>
      'Disa pajisje e vendosin aplikacionin në pauzë në sfond. Kohëmatësi mbetet i saktë, por sinjalet mund të vonohen. Lejo përdorimin e pakufizuar të baterisë për sinjale të besueshme.';

  @override
  String get focusOpenSettings => 'Hap cilësimet';

  @override
  String get focusStopConfirmTitle => 'Të ndalohet kjo seancë?';

  @override
  String get focusStopConfirmMessage => 'Koha e përqendrimit deri tani do të ruhet.';

  @override
  String get focusDiscard => 'Hidh poshtë';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuta',
      one: '1 minutë',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, mbeten $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, kanë kaluar $time';
  }

  @override
  String get focusDeleteSession => 'Fshi seancën';

  @override
  String get tasksTitle => 'Detyrat';

  @override
  String get tasksViewToday => 'Sot';

  @override
  String get tasksViewUpcoming => 'Të ardhshme';

  @override
  String get tasksViewAll => 'Të gjitha';

  @override
  String get tasksViewOverdue => 'Të vonuara';

  @override
  String get tasksViewCompleted => 'Të përfunduara';

  @override
  String get tasksQuickAddHint => 'Shto një detyrë…';

  @override
  String get tasksEmptyTitle => 'Gjithçka gati';

  @override
  String get tasksEmptyMessage => 'Shto një detyrë për të filluar të formësosh ditën.';

  @override
  String get tasksEmptyCompleted => 'Detyrat e përfunduara do të shfaqen këtu.';

  @override
  String get taskNew => 'Detyrë e re';

  @override
  String get taskEdit => 'Redakto detyrën';

  @override
  String get taskTitleLabel => 'Titulli';

  @override
  String get taskTitleHint => 'Çfarë duhet bërë?';

  @override
  String get taskDescriptionLabel => 'Përshkrimi';

  @override
  String get taskNotesLabel => 'Shënime';

  @override
  String get taskPriority => 'Përparësia';

  @override
  String get priorityNone => 'Asnjë';

  @override
  String get priorityLow => 'E ulët';

  @override
  String get priorityMedium => 'Mesatare';

  @override
  String get priorityHigh => 'E lartë';

  @override
  String get priorityUrgent => 'Urgjente';

  @override
  String get taskDueDate => 'Afati';

  @override
  String get taskStartDate => 'Data e fillimit';

  @override
  String get taskReminder => 'Kujtesa';

  @override
  String get taskRepeat => 'Përsëritja';

  @override
  String get taskProject => 'Projekti';

  @override
  String get taskCategory => 'Kategoria';

  @override
  String get taskCategoryHint => 'p.sh. Punë, Shtëpi, Studime';

  @override
  String get taskEstimateMinutes => 'Vlerësimi (minuta)';

  @override
  String get taskTracked => 'Përqendrimi i matur';

  @override
  String get taskLabels => 'Etiketat';

  @override
  String get taskAddLabel => 'Etiketë e re';

  @override
  String get taskChecklist => 'Lista e kontrollit';

  @override
  String get taskAddChecklistItem => 'Shto një element';

  @override
  String get taskSubtasks => 'Nëndetyrat';

  @override
  String get taskAddSubtask => 'Shto një nëndetyrë';

  @override
  String get taskDependencies => 'E bllokuar nga';

  @override
  String get taskAddDependency => 'Shto një detyrë bllokuese';

  @override
  String get taskLinkedNotes => 'Shënime të lidhura';

  @override
  String get taskSetTime => 'Cakto orën';

  @override
  String get taskNoDate => 'Pa datë';

  @override
  String get taskCompleted => 'Detyra u përfundua';

  @override
  String get taskNextOccurrence => 'U krijua përsëritja e radhës';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ditë vonesë',
      one: '1 ditë vonesë',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Shëno „$title“ si të kryer';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Shëno „$title“ si të pakryer';
  }

  @override
  String get sortSmart => 'I zgjuar';

  @override
  String get sortDueDate => 'Afati';

  @override
  String get sortPriority => 'Përparësia';

  @override
  String get sortCreated => 'Më të rejat';

  @override
  String get sortTitle => 'Titulli';

  @override
  String get filterAllProjects => 'Të gjitha projektet';

  @override
  String get filterAnyPriority => 'Çdo përparësi';

  @override
  String get filterTitle => 'Filtro dhe rendit';

  @override
  String get dateToday => 'Sot';

  @override
  String get dateTomorrow => 'Nesër';

  @override
  String get dateYesterday => 'Dje';

  @override
  String get repeatNever => 'Nuk përsëritet';

  @override
  String get repeatDaily => 'Çdo ditë';

  @override
  String get repeatWeekdays => 'Çdo ditë pune';

  @override
  String get repeatWeekly => 'Çdo javë';

  @override
  String get repeatMonthly => 'Çdo muaj';

  @override
  String get repeatYearly => 'Çdo vit';

  @override
  String get repeatCustom => 'E personalizuar';

  @override
  String get repeatEvery => 'Përsërit çdo';

  @override
  String get repeatOnDays => 'Në ditët';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ditë', one: 'ditë');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'javë', one: 'javë');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'muaj', one: 'muaj');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'vjet', one: 'vit');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count përsëritjesh',
      one: '1 përsëritjeje',
    );
    return 'Përfundon pas $_temp0';
  }

  @override
  String get repeatEndsNever => 'Nuk përfundon kurrë';

  @override
  String get reminderAtTime => 'Në kohën e ngjarjes';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuta më parë',
      one: '1 minutë më parë',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours orë më parë',
      one: '1 orë më parë',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 ditë më parë';

  @override
  String get projectsTitle => 'Projektet';

  @override
  String get projectsEmptyTitle => 'Ende nuk ka projekte';

  @override
  String get projectsEmptyMessage => 'Grupo detyra, shënime dhe kohë përqendrimi të lidhura.';

  @override
  String get projectNew => 'Projekt i ri';

  @override
  String get projectEdit => 'Redakto projektin';

  @override
  String get projectName => 'Emri';

  @override
  String get projectDescription => 'Përshkrimi';

  @override
  String get projectGoal => 'Qëllimi';

  @override
  String get projectDeadline => 'Afati përfundimtar';

  @override
  String get projectColor => 'Ngjyra';

  @override
  String get projectIcon => 'Ikona';

  @override
  String get projectProgress => 'Përparimi';

  @override
  String projectTasksDone(int done, int total) {
    return '$done nga $total detyra të kryera';
  }

  @override
  String get projectFocusTime => 'Koha e përqendrimit';

  @override
  String get projectArchived => 'Projektet e arkivuara';

  @override
  String get projectShowArchived => 'Shfaq të arkivuarat';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Mbeten $days ditë',
      one: 'Mbetet 1 ditë',
      zero: 'Afati sot',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Afati ka kaluar';

  @override
  String get calendarTitle => 'Kalendari';

  @override
  String get calendarMonth => 'Muaj';

  @override
  String get calendarWeek => 'Javë';

  @override
  String get calendarDay => 'Ditë';

  @override
  String get calendarToday => 'Sot';

  @override
  String get calendarPrevious => 'E mëparshmja';

  @override
  String get calendarNext => 'Tjetra';

  @override
  String get calendarNoEvents => 'Asgjë e planifikuar';

  @override
  String get calendarAllDay => 'Gjithë ditën';

  @override
  String get eventNew => 'Ngjarje e re';

  @override
  String get eventEdit => 'Redakto ngjarjen';

  @override
  String get eventTitleHint => 'Titulli i ngjarjes';

  @override
  String get eventStarts => 'Fillon';

  @override
  String get eventEnds => 'Mbaron';

  @override
  String get eventKind => 'Lloji';

  @override
  String get eventKindEvent => 'Ngjarje';

  @override
  String get eventKindTimeBlock => 'Bllok kohor';

  @override
  String get eventKindFocus => 'Seancë përqendrimi';

  @override
  String get eventKindGoal => 'Synim personal';

  @override
  String get eventDescription => 'Detaje';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mbivendoset me $count ngjarje',
      one: 'Mbivendoset me 1 ngjarje',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Konflikte në plan për këtë ditë';

  @override
  String get calendarTaskDue => 'Detyrë me afat';

  @override
  String get calendarDragHint => 'Shtyp gjatë dhe tërhiq një ngjarje për ta riplanifikuar';

  @override
  String get calendarRescheduled => 'Ngjarja u zhvendos';

  @override
  String get calendarScheduleTask => 'Planifiko si bllok kohor';

  @override
  String get notesTitle => 'Shënimet';

  @override
  String get notesViewAll => 'Të gjitha';

  @override
  String get notesViewPinned => 'Të fiksuara';

  @override
  String get notesViewFavorites => 'Të preferuara';

  @override
  String get notesViewArchived => 'Të arkivuara';

  @override
  String get notesTags => 'Etiketat';

  @override
  String get notesNewNotebook => 'Fletore e re';

  @override
  String get notesNoNotebook => 'Pa fletore';

  @override
  String get notesEmptyTitle => 'Një fletë e bardhë';

  @override
  String get notesEmptyMessage => 'Mbaj shënim ide, shënime takimesh dhe njohuri.';

  @override
  String get noteTitleHint => 'Titulli';

  @override
  String get noteBodyHint =>
      'Fillo të shkruash… Përdor # për etiketa dhe [[Titulli]] për të lidhur shënimet.';

  @override
  String get noteFavorite => 'E preferuar';

  @override
  String get noteUnfavorite => 'Hiq nga të preferuarat';

  @override
  String get noteMoveTo => 'Zhvendos në fletore';

  @override
  String get noteBacklinks => 'Lidhur nga';

  @override
  String get noteLinkedTasks => 'Detyra të lidhura';

  @override
  String get noteLinkTask => 'Lidh një detyrë';

  @override
  String get noteLinkProject => 'Projekti';

  @override
  String get noteFormatHeading => 'Titull';

  @override
  String get noteFormatBold => 'Të trasha';

  @override
  String get noteFormatItalic => 'Të pjerrëta';

  @override
  String get noteFormatList => 'Listë me pika';

  @override
  String get noteFormatChecklist => 'Listë kontrolli';

  @override
  String get noteFormatLink => 'Lidhje';

  @override
  String noteEdited(String time) {
    return 'Redaktuar $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fjalë',
      one: '1 fjalë',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kartat';

  @override
  String get flashEmptyTitle => 'Krijo paketën tënde të parë';

  @override
  String get flashEmptyMessage =>
      'Përsëritja me intervale të shfaq çdo kartë pikërisht para se ta harrosh.';

  @override
  String get deckNew => 'Paketë e re';

  @override
  String get deckEdit => 'Redakto paketën';

  @override
  String get deckName => 'Emri i paketës';

  @override
  String get deckDescription => 'Përshkrimi';

  @override
  String get deckDailyNew => 'Karta të reja në ditë';

  @override
  String get deckDailyReview => 'Objektivi ditor i përsëritjes';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karta',
      one: '1 kartë',
      zero: 'Asnjë kartë',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Për përsëritje';

  @override
  String get deckNewCards => 'Të reja';

  @override
  String get deckMature => 'Të mësuara';

  @override
  String get deckStudy => 'Studio';

  @override
  String get deckNothingDue => 'Tani nuk ka asgjë për përsëritje. Kthehu më vonë.';

  @override
  String get deckEmptyCards => 'Shto karta për të filluar mësimin.';

  @override
  String get cardNew => 'Kartë e re';

  @override
  String get cardEdit => 'Redakto kartën';

  @override
  String get cardFront => 'Para';

  @override
  String get cardBack => 'Prapa';

  @override
  String get cardFrontHint => 'Pyetje ose term';

  @override
  String get cardBackHint => 'Përgjigje ose përkufizim';

  @override
  String get cardTags => 'Etiketat';

  @override
  String get cardAddAnother => 'Ruaj dhe shto një tjetër';

  @override
  String get reviewShowAnswer => 'Shfaq përgjigjen';

  @override
  String get reviewAgain => 'Përsëri';

  @override
  String get reviewHard => 'E vështirë';

  @override
  String get reviewGood => 'Mirë';

  @override
  String get reviewEasy => 'E lehtë';

  @override
  String reviewProgress(int done, int total) {
    return '$done nga $total';
  }

  @override
  String get reviewFinishedTitle => 'Seanca përfundoi';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Përsërite $count karta.',
      one: 'Përsërite 1 kartë.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Prek për të parë përgjigjen';

  @override
  String get importCardsTitle => 'Importo karta';

  @override
  String get importCardsHint =>
      'Ngjit një kartë për rresht (pjesa e parme dhe e pasme të ndara me tab ose pikëpresje) ose zgjidh një skedar: Excel (.xlsx), CSV, paketë Anki (.apkg) ose paketë të eksportuar.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U importuan $count karta',
      one: 'U importua 1 kartë',
      zero: 'Asnjë kartë nuk u importua',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Kjo përmbajtje nuk mund të importohej.';

  @override
  String get exportCopied => 'Paketa u eksportua';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count min',
      one: '1 min',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ditë',
      one: '1 ditë',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Synimet';

  @override
  String get goalsEmptyTitle => 'Synoji diçkaje';

  @override
  String get goalsEmptyMessage =>
      'Vendos synime ditore, javore, mujore ose afatgjata dhe ndiq përparimin e vërtetë.';

  @override
  String get goalNew => 'Synim i ri';

  @override
  String get goalEdit => 'Redakto synimin';

  @override
  String get goalTitleHint => 'Çfarë dëshiron të arrish?';

  @override
  String get goalPeriod => 'Periudha';

  @override
  String get goalPeriodDaily => 'Ditor';

  @override
  String get goalPeriodWeekly => 'Javor';

  @override
  String get goalPeriodMonthly => 'Mujor';

  @override
  String get goalPeriodLongTerm => 'Afatgjatë';

  @override
  String get goalTarget => 'Objektivi';

  @override
  String get goalUnit => 'Njësia';

  @override
  String get goalUnitHint => 'p.sh. faqe, km, orë';

  @override
  String get goalStatusActive => 'Aktiv';

  @override
  String get goalStatusPaused => 'Në pauzë';

  @override
  String get goalStatusAchieved => 'I arritur';

  @override
  String get goalPause => 'Vendos synimin në pauzë';

  @override
  String get goalResume => 'Rifillo synimin';

  @override
  String get goalMarkAchieved => 'Shëno si të arritur';

  @override
  String goalProgressOf(String current, String target) {
    return '$current nga $target';
  }

  @override
  String get goalLogAmount => 'Sasia';

  @override
  String get goalLogNote => 'Shënim (opsional)';

  @override
  String get goalHistory => 'Historiku';

  @override
  String get goalNoHistory => 'Përparimi i regjistruar do të shfaqet këtu';

  @override
  String get goalLinkedTasks => 'Detyra të lidhura';

  @override
  String get goalLinkedTasksHint =>
      'Çdo detyrë e lidhur e përfunduar llogaritet si 1 për këtë synim.';

  @override
  String get goalThisPeriod => 'Kjo periudhë';

  @override
  String get habitsTitle => 'Zakonet';

  @override
  String get habitsEmptyTitle => 'Hapa të vegjël, çdo ditë';

  @override
  String get habitsEmptyMessage => 'Krijo një zakon dhe shënoje kur e bën.';

  @override
  String get habitNew => 'Zakon i ri';

  @override
  String get habitEdit => 'Redakto zakonin';

  @override
  String get habitNameHint => 'p.sh. Lexo 20 faqe';

  @override
  String get habitDays => 'Orari';

  @override
  String get habitEveryDay => 'Çdo ditë';

  @override
  String get habitTargetPerDay => 'Herë në ditë';

  @override
  String get habitReminder => 'Kujtesë ditore';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Seri $count-ditore',
      one: 'Seri 1-ditore',
      zero: 'Pa seri',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Seria më e mirë';

  @override
  String get habitCurrentStreak => 'Seria aktuale';

  @override
  String get habitConsistency => 'Qëndrueshmëria';

  @override
  String get habitLast90 => '90 ditët e fundit';

  @override
  String get habitPaused => 'Në pauzë';

  @override
  String get habitPause => 'Vendos zakonin në pauzë';

  @override
  String get habitResume => 'Rifillo zakonin';

  @override
  String get habitDoneToday => 'U bë sot';

  @override
  String habitCountToday(int count, int target) {
    return '$count nga $target sot';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Shëno „$name“';
  }

  @override
  String get habitNotScheduledToday => 'Nuk është planifikuar sot';

  @override
  String get analyticsTitle => 'Analizat';

  @override
  String get rangeWeek => '7 ditë';

  @override
  String get rangeMonth => '30 ditë';

  @override
  String get rangeQuarter => '90 ditë';

  @override
  String get statFocusTime => 'Koha e përqendrimit';

  @override
  String get statSessions => 'Seancat';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed të përfunduara · $interrupted të ndalura herët';
  }

  @override
  String get statTasksDone => 'Detyra të përfunduara';

  @override
  String get statCompletionRate => 'Përfundim në kohë';

  @override
  String get statHabitConsistency => 'Qëndrueshmëria e zakoneve';

  @override
  String get statRetention => 'Mbajtja mend e kartave';

  @override
  String get statReviews => 'Përsëritjet';

  @override
  String get statActiveGoals => 'Synime aktive';

  @override
  String get statEstimated => 'Puna e vlerësuar e kryer';

  @override
  String get statEstimatedNote => 'Bazuar në vlerësimet e tua, jo në kohën e matur';

  @override
  String get statMeasuredNote => 'Matur nga seancat e përqendrimit';

  @override
  String get chartFocusByDay => 'Minuta përqendrimi në ditë';

  @override
  String get chartTasksByDay => 'Detyra të përfunduara në ditë';

  @override
  String get chartTimeByProject => 'Koha sipas projektit';

  @override
  String get chartProjectProgress => 'Përparimi i projekteve';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: gjithsej $total, dita më e mirë $best';
  }

  @override
  String get analyticsNoData => 'Ende nuk ka të dhëna të mjaftueshme';

  @override
  String get analyticsUnassigned => 'Pa caktuar';

  @override
  String get searchHint => 'Kërko gjithçka…';

  @override
  String get searchRecent => 'Kërkimet e fundit';

  @override
  String get searchClearRecent => 'Pastro kërkimet e fundit';

  @override
  String searchNoResults(String query) {
    return 'Nuk ka rezultate për „$query“';
  }

  @override
  String get searchStartTyping =>
      'Kërko në detyra, shënime, karta, synime, ngjarje dhe të tjera. Kërkimi mbetet në këtë pajisje.';

  @override
  String get searchCatTask => 'Detyrat';

  @override
  String get searchCatProject => 'Projektet';

  @override
  String get searchCatNote => 'Shënimet';

  @override
  String get searchCatFlashcard => 'Kartat';

  @override
  String get searchCatDeck => 'Paketat';

  @override
  String get searchCatGoal => 'Synimet';

  @override
  String get searchCatHabit => 'Zakonet';

  @override
  String get searchCatEvent => 'Ngjarjet';

  @override
  String get searchCatSession => 'Seancat';

  @override
  String get searchAll => 'Të gjitha';

  @override
  String get assistantTitle => 'Asistenti';

  @override
  String get assistantIntro =>
      'Ndihmë për planifikim që punon në pajisjen tënde. Sipas dëshirës, lidh një ofrues IA që zgjedh ti për përmbledhje dhe gjenerim.';

  @override
  String get assistantOnDevice => 'Në pajisje';

  @override
  String get assistantCloud => 'Ofruesi IA';

  @override
  String get assistantPlanDay => 'Planifiko ditën time';

  @override
  String get assistantPlanDayDesc =>
      'Rendit detyrat e hapura sipas urgjencës, përparësisë dhe vlerësimit, dhe i përshtat rreth ngjarjeve të tua.';

  @override
  String get assistantExtractTasks => 'Nxirr detyra nga një shënim';

  @override
  String get assistantExtractTasksDesc =>
      'Gjen elementet e listës së kontrollit dhe rreshtat e veprimeve në një shënim dhe i kthen në detyra.';

  @override
  String get assistantMakeCards => 'Krijo karta nga një shënim';

  @override
  String get assistantMakeCardsDesc =>
      'Kthen rreshtat „term: përkufizim“ dhe pyetje/përgjigje në karta.';

  @override
  String get assistantSummarize => 'Përmblidh një shënim';

  @override
  String get assistantSummarizeDesc =>
      'Kërkon një ofrues IA. Shënimi dërgohet vetëm pasi ta konfirmosh.';

  @override
  String get assistantWorkload => 'Pasqyra e ngarkesës';

  @override
  String get assistantWorkloadDesc =>
      'Krahason punën e vlerësuar me kohën tënde të lirë këtë javë.';

  @override
  String get assistantPlanEmpty => 'Nuk ka detyra të hapura për të planifikuar. Shijoje hapësirën.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Koha e lirë për përqendrim sot: $time';
  }

  @override
  String get assistantPlanOverflow => 'Këto mund të mos përshtaten sot:';

  @override
  String get assistantChooseNote => 'Zgjidh një shënim';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U gjetën $count detyra',
      one: 'U gjet 1 detyrë',
      zero: 'Nuk u gjetën detyra në këtë shënim',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U gjetën $count karta',
      one: 'U gjet 1 kartë',
      zero: 'Nuk u gjetën karta në këtë shënim',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Zgjidh një paketë';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Puna e vlerësuar: $estimated. Koha e lirë: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Ke planifikuar më shumë se koha që ke. Mendo të zhvendosësh detyrat me përparësi më të ulët.';

  @override
  String get assistantWorkloadOk => 'Plani yt përshtatet në kohën e disponueshme.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detyra të hapura nuk kanë vlerësim.',
      one: '1 detyrë e hapur nuk ka vlerësim.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Ofruesi IA';

  @override
  String get assistantProviderOff =>
      'Asnjë ofrues i lidhur. Mjetet në pajisje vazhdojnë të punojnë.';

  @override
  String assistantProviderOn(String host) {
    return 'I lidhur me $host';
  }

  @override
  String get assistantEndpoint => 'Pika fundore e API-së (HTTPS)';

  @override
  String get assistantModel => 'Modeli';

  @override
  String get assistantApiKey => 'Çelësi i API-së';

  @override
  String get assistantApiKeyStored => 'Ruhet në mënyrë të sigurt në këtë pajisje';

  @override
  String get assistantHttpsOnly => 'Lejohen vetëm pika fundore HTTPS';

  @override
  String get assistantConsentTitle => 'Ta dërgosh këtë përmbajtje te ofruesi yt IA?';

  @override
  String assistantConsentBody(String host) {
    return 'Teksti i zgjedhur i shënimit do të largohet nga kjo pajisje dhe do të përpunohet nga $host. Asgjë tjetër nuk dërgohet.';
  }

  @override
  String get assistantConsentAlways => 'Mos pyet më për këtë ofrues';

  @override
  String get assistantSend => 'Dërgo';

  @override
  String get assistantUnavailable => 'Ofruesi IA nuk u arrit. Provo përsëri më vonë.';

  @override
  String get assistantDisabledTitle => 'Asistenti është i çaktivizuar';

  @override
  String get assistantDisabledMessage =>
      'Aktivizoje për të përdorur mjetet e planifikimit. Asnjë e dhënë nuk largohet nga pajisja nëse nuk lidh një ofrues dhe nuk konfirmon çdo kërkesë.';

  @override
  String get assistantSummaryTitle => 'Përmbledhje';

  @override
  String get assistantRemoveProvider => 'Hiq ofruesin';

  @override
  String get settingsTitle => 'Cilësimet';

  @override
  String get settingsGeneral => 'Të përgjithshme';

  @override
  String get settingsLanguage => 'Gjuha';

  @override
  String get settingsLanguageSystem => 'Gjuha e pajisjes';

  @override
  String get settingsAppearance => 'Pamja';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'E çelët';

  @override
  String get themeDark => 'E errët';

  @override
  String get themeSystem => 'E sistemit';

  @override
  String get settingsReduceMotion => 'Ul lëvizjet';

  @override
  String get settingsReduceMotionDesc => 'Minimizo animacionet dhe sfondet lëvizëse';

  @override
  String get settingsFocus => 'Kohëmatësi i përqendrimit';

  @override
  String get settingsWorkLength => 'Kohëzgjatja e përqendrimit';

  @override
  String get settingsShortBreak => 'Pushim i shkurtër';

  @override
  String get settingsLongBreak => 'Pushim i gjatë';

  @override
  String get settingsLongBreakEvery => 'Pushim i gjatë pas';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seancash',
      one: '1 seance',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Fillo pushimet automatikisht';

  @override
  String get settingsSound => 'Tingulli i përfundimit';

  @override
  String get settingsDailyFocusTarget => 'Objektivi ditor i përqendrimit';

  @override
  String get settingsWeeklyFocusTarget => 'Objektivi javor i përqendrimit';

  @override
  String get settingsNotifications => 'Njoftimet';

  @override
  String get settingsNotificationsEnable => 'Lejo kujtesat';

  @override
  String get settingsQuietHours => 'Orët e qeta';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Kujtesat për zakone, synime dhe përsëritje heshtin nga $start deri në $end';
  }

  @override
  String get settingsReviewReminder => 'Kujtesa për përsëritjen e kartave';

  @override
  String get settingsPermissionDenied => 'Njoftimet janë bllokuar në cilësimet e sistemit.';

  @override
  String get settingsPrivacy => 'Privatësia dhe të dhënat';

  @override
  String get settingsPrivacyStatement =>
      'Të dhënat e tua ruhen vetëm në këtë pajisje dhe janë të enkriptuara. Nuk ka llogari, analitikë apo gjurmim.';

  @override
  String get settingsBackup => 'Krijo kopje rezervë të enkriptuar';

  @override
  String get settingsBackupDesc => 'E mbrojtur me fjalëkalim që zgjedh ti';

  @override
  String get settingsRestore => 'Rikthe nga kopja rezervë';

  @override
  String get settingsRestoreDesc => 'Zëvendëson të gjitha të dhënat në këtë pajisje';

  @override
  String get settingsErase => 'Fshi të gjitha të dhënat';

  @override
  String get settingsEraseDesc => 'Fshi përgjithmonë gjithçka në këtë pajisje';

  @override
  String get settingsEraseConfirmTitle => 'Të fshihen të gjitha të dhënat?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Çdo detyrë, shënim, kartë, synim, zakon, ngjarje dhe seancë do të fshihet përgjithmonë. Shkruaj $word për ta konfirmuar.';
  }

  @override
  String get settingsEraseWord => 'FSHI';

  @override
  String get settingsErased => 'Të gjitha të dhënat u fshinë';

  @override
  String get backupPassword => 'Fjalëkalimi i kopjes rezervë';

  @override
  String get backupPasswordConfirm => 'Konfirmo fjalëkalimin';

  @override
  String backupPasswordHint(int count) {
    return 'Të paktën $count karaktere. Nuk mund të rikthehet nëse humbet.';
  }

  @override
  String get backupPasswordMismatch => 'Fjalëkalimet nuk përputhen';

  @override
  String get backupPasswordShort => 'Fjalëkalimi është shumë i shkurtër';

  @override
  String get backupCreating => 'Po enkriptohet kopja rezervë…';

  @override
  String get backupCreated => 'Kopja rezervë është gati për t’u ruajtur';

  @override
  String get backupRestoring => 'Po verifikohet dhe rikthehet…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U rikthyen $count elemente',
      one: 'U rikthye 1 element',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Fjalëkalim i gabuar ose skedari është ndryshuar.';

  @override
  String get backupNotABackup => 'Ky skedar nuk është kopje rezervë e Deep Focus.';

  @override
  String get backupCorrupted => 'Skedari i kopjes rezervë është i dëmtuar.';

  @override
  String get backupNewer =>
      'Kjo kopje rezervë u krijua nga një version më i ri i aplikacionit. Përditëso në fillim.';

  @override
  String get backupRestoreConfirmTitle => 'Të zëvendësohen të gjitha të dhënat?';

  @override
  String get backupRestoreConfirmBody =>
      'Gjithçka që është tani në këtë pajisje do të zëvendësohet nga kopja rezervë. Nëse rikthimi dështon, asgjë nuk ndryshon.';

  @override
  String get settingsAbout => 'Rreth';

  @override
  String settingsVersion(String version) {
    return 'Versioni $version';
  }

  @override
  String get settingsLicenses => 'Licencat me burim të hapur';

  @override
  String get settingsAssistant => 'Asistenti';

  @override
  String get settingsAssistantEnable => 'Aktivizo asistentin';

  @override
  String get settingsDashboard => 'Seksionet e kreut';

  @override
  String get settingsTrash => 'Koshi';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Koshi është bosh';

  @override
  String get trashHint => 'Elementet e fshira mbeten këtu derisa t’i heqësh.';

  @override
  String get trashTasks => 'Detyrat';

  @override
  String get trashNotes => 'Shënimet';

  @override
  String get onboardWelcomeTitle => 'Mirë se vjen në hapësirën tënde të punës së së ardhmes';

  @override
  String get onboardWelcomeBody =>
      'Detyra, përqendrim, kalendar, shënime, karta, synime dhe zakone — së bashku, bukur dhe thjesht.';

  @override
  String get onboardPrivateTitle => 'Privat që në krijim';

  @override
  String get onboardPrivateBody =>
      'Gjithçka mbetet në këtë pajisje, e enkriptuar. Pa llogari. Pa gjurmim. Ti ke kontrollin.';

  @override
  String get onboardLanguageTitle => 'Zgjidh gjuhën';

  @override
  String get onboardNotifTitle => 'Kujtesa të buta';

  @override
  String get onboardNotifBody =>
      'Lejo njoftimet për kujtesat e detyrave dhe sinjalet e përqendrimit. Mund ta ndryshosh kurdo.';

  @override
  String get onboardGetStarted => 'Fillo';

  @override
  String onboardStep(int current, int total) {
    return 'Hapi $current nga $total';
  }

  @override
  String get notifChannelReminders => 'Kujtesat';

  @override
  String get notifChannelRemindersDesc => 'Kujtesa për detyra, ngjarje, zakone dhe synime';

  @override
  String get notifChannelFocus => 'Kohëmatësi i përqendrimit';

  @override
  String get notifChannelFocusDesc => 'Sinjale kur përfundon një seancë përqendrimi ose një pushim';

  @override
  String get notifTaskTitle => 'Kujtesë për detyrën';

  @override
  String get notifEventTitle => 'Ngjarje e afërt';

  @override
  String notifEventBody(String title, String time) {
    return '$title në $time';
  }

  @override
  String get notifFocusDoneTitle => 'Seanca e përqendrimit përfundoi';

  @override
  String get notifFocusDoneBody => 'Punë e shkëlqyer. Koha për një pushim.';

  @override
  String get notifBreakDoneTitle => 'Pushimi mbaroi';

  @override
  String get notifBreakDoneBody => 'Gati për seancën tjetër të përqendrimit?';

  @override
  String get notifHabitTitle => 'Kujtesë për zakonin';

  @override
  String get notifReviewTitle => 'Kartat janë gati';

  @override
  String get notifReviewBody => 'Një përsëritje e shkurtër e mban kujtesën të fortë.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours orë $minutes min';
  }

  @override
  String durationHours(int hours) {
    return '$hours orë';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'H,M,M,E,P,S,D';

  @override
  String a11yProgress(int value) {
    return 'Përparimi $value përqind';
  }

  @override
  String a11yPriority(String level) {
    return 'Përparësia: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Ngjyra $index';
  }

  @override
  String get analyticsRangeLabel => 'Periudha kohore';

  @override
  String get analyticsRefresh => 'Rifresko';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done nga $total detyra me afat të kryera në kohë';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done nga $total detyra të kryera';
  }

  @override
  String get analyticsNoProjects => 'Nuk ka projekte aktive';

  @override
  String get analyticsNoFocus => 'Nuk ka seanca përqendrimi në këtë periudhë';

  @override
  String get analyticsHabitsNone => 'Nuk ka zakone aktive';

  @override
  String get analyticsRetentionNote => 'Pjesa e kartave të mësuara që i mbajte mend';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Koha e lirë llogaritet $start–$end në ditët e punës ($days), pa ngjarjet me orar. Puna e vlerësuar është shuma e vlerësimeve të detyrave të hapura me afat në 7 ditët e ardhshme.';
  }

  @override
  String get assistantWorkdaysMonFri => 'E hënë–e premte';

  @override
  String get assistantWorkdaysSunThu => 'E diel–e enjte';

  @override
  String get assistantWorkloadDayOff => 'Ditë pushimi';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated të planifikuara · $free e lirë';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planifikuar nga tani deri në $end, rreth ngjarjeve të sotme. Fillimisht detyrat e vonuara, pastaj përparësia, afati dhe vlerësimi.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Planifiko si blloqe kohore';

  @override
  String get assistantScheduleConfirmTitle => 'Të shtohen blloqe kohore në kalendar?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blloqe kohore do të shtohen në kalendarin e sotëm.',
      one: '1 bllok kohor do të shtohet në kalendarin e sotëm.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U shtuan $count blloqe kohore',
      one: 'U shtua 1 bllok kohor',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Tashmë në kalendarin tënd';

  @override
  String get assistantPlanTimeline => 'Përshtatet sot';

  @override
  String get assistantNoEstimate => 'Shto një vlerësim për t’i planifikuar';

  @override
  String get assistantNoNotes => 'Ende nuk ka shënime. Shkruaj fillimisht një shënim.';

  @override
  String get assistantNoteEmpty => 'Ky shënim është bosh.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U krijuan $count detyra',
      one: 'U krijua 1 detyrë',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U krijuan $count karta',
      one: 'U krijua 1 kartë',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Krijo $count',
      one: 'Krijo 1',
      zero: 'Asgjë e zgjedhur',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Njihen: kutitë e pashënuara „- [ ]“ dhe rreshtat që fillojnë me TODO: ose To do:';

  @override
  String get assistantCardsHint =>
      'Njihen: „term: përkufizim“, „term — përkufizim“ dhe çiftet e rreshtave Q:/A:';

  @override
  String get assistantProviderHint =>
      'Përdor çdo shërbim të përputhshëm me OpenAI. Çelësi mbetet në hapësirën e sigurt të kësaj pajisjeje dhe nuk përfshihet kurrë në kopjet rezervë.';

  @override
  String get assistantEndpointHelp => 'Për shembull https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Lëre bosh për të mbajtur çelësin e ruajtur';

  @override
  String get assistantApiKeyRequired => 'Shkruaj një çelës API';

  @override
  String get assistantProviderSaved => 'Ofruesi u ruajt';

  @override
  String get assistantProviderRemoved => 'Ofruesi u hoq dhe çelësi u fshi';

  @override
  String get assistantRemoveProviderConfirm =>
      'Të hiqet ofruesi dhe të fshihet çelësi API i ruajtur nga kjo pajisje?';

  @override
  String get assistantAskEveryTime => 'Pyet para çdo kërkese';

  @override
  String get assistantSummarizing => 'Po përmblidhet…';

  @override
  String assistantSummaryNote(String host) {
    return 'Gjeneruar nga $host. Rishikoje para se të mbështetesh tek ajo.';
  }

  @override
  String get assistantCopy => 'Kopjo';

  @override
  String get assistantCopied => 'U kopjua';

  @override
  String get assistantConfigure => 'Konfiguro ofruesin';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Të gjitha ngjarjet e kësaj serie u zhvendosën';

  @override
  String get calendarEventReminder => 'Kujtesa';

  @override
  String get calendarEventRepeat => 'Përsëritja';

  @override
  String get calendarEventColor => 'Ngjyra';

  @override
  String get calendarDefaultColor => 'Përdor ngjyrën e llojit';

  @override
  String get calendarEventLinkedTask => 'Detyra e lidhur';

  @override
  String get calendarEventNoTask => 'Asnjë detyrë e lidhur';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ngjarje',
      one: '1 ngjarje',
      zero: 'Asnjë ngjarje',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detyra me afat',
      one: '1 detyrë me afat',
      zero: 'asnjë detyrë me afat',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Shto një ngjarje ose një bllok kohor për të planifikuar këtë ditë.';

  @override
  String get calendarNow => 'Ora aktuale';

  @override
  String get calendarRecurring => 'Përsëritet';

  @override
  String get calendarEventNotFound => 'Kjo ngjarje nuk ekziston më';

  @override
  String get calendarEventLocalTime => 'Orët shfaqen në brezin orar të pajisjes';

  @override
  String get calendarEventDeleted => 'Ngjarja u zhvendos në kosh';

  @override
  String get calendarConflictMarker => 'Mbivendoset me një ngjarje tjetër';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Ndryshimet zbatohen për çdo ngjarje të kësaj serie';

  @override
  String get calendarDragHintSeries =>
      'Tërheqja e një ngjarjeje që përsëritet zhvendos gjithë serinë';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, detyrë me afat';
  }

  @override
  String get startupErrorTitle => 'Të dhënat e tua nuk u hapën dot';

  @override
  String get startupErrorLocked =>
      'Çelësi i enkriptimit për të dhënat e kësaj pajisjeje nuk është i disponueshëm. Asgjë nuk është fshirë. Rinisja e pajisjes shpesh ndihmon. Nëse e ke rikthyer pajisjen së fundi, rikthe të dhënat nga një kopje rezervë e enkriptuar.';

  @override
  String get startupErrorCipher =>
      'Kjo pajisje nuk mbështet hapësirën e enkriptuar që i duhet aplikacionit. Asgjë nuk është ruajtur pa enkriptim.';

  @override
  String get startupErrorRetry => 'Provo përsëri';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karta presin përsëritjen',
      one: '1 kartë pret përsëritjen',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count për përsëritje';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count të reja';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Karta të mësuara: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Shkruaj 0 ose më shumë';

  @override
  String get flashcardsSearchCards => 'Kërko karta';

  @override
  String get flashcardsSearchEmpty => 'Asnjë kartë nuk përputhet me kërkimin';

  @override
  String get flashcardsCardAdded => 'Karta u shtua';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Për përsëritje $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopjo në kujtesën e fragmenteve';

  @override
  String get flashcardsExportTitle => 'Eksporto paketën';

  @override
  String get flashcardsDeleteDeck => 'Fshi paketën';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, përsëritja tjetër pas $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Pyetja: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Përgjigjja: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Shfaq pyetjen';

  @override
  String get flashcardsImportField => 'Karta për t’u importuar';

  @override
  String get flashcardsNothingToStudy => 'Asgjë për të studiuar';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karta gati për studim',
      one: '1 kartë gati për studim',
      zero: 'Asnjë kartë gati',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Sipas vlerësimit';

  @override
  String get flashcardsDeckNotFound => 'Kjo paketë nuk është më e disponueshme.';

  @override
  String get focusSessionDeleted => 'Seanca u fshi';

  @override
  String get focusDeleteConfirm =>
      'Ta fshish këtë seancë nga historiku? Koha e saj nuk do të llogaritet më për objektivat e tua.';

  @override
  String get focusUnlinkTask => 'Hiq detyrën e lidhur';

  @override
  String get focusNoteHint => 'Me çfarë punove?';

  @override
  String get focusTargetCaption => 'Matur nga seancat e ruajtura';

  @override
  String get focusModeLabel => 'Modaliteti i kohëmatësit';

  @override
  String focusUpNext(String phase) {
    return 'Në vijim: $phase';
  }

  @override
  String get focusStopwatchHint => 'Numëron përpara derisa ta ndalosh.';

  @override
  String get focusOpenHint => 'Pa kufi kohe. Ndalo kur të mbarosh.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Kujtesat janë çaktivizuar në cilësime. Nuk do të paralajmërohesh kur të përfundojë seanca.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Të gjitha';

  @override
  String get goalsFilterPeriod => 'Filtri i periudhës';

  @override
  String get goalsFilterStatus => 'Filtri i statusit';

  @override
  String get goalsEmptyFiltered => 'Asnjë synim nuk përputhet me këtë filtër';

  @override
  String goalsDueOn(String date) {
    return 'Afati $date';
  }

  @override
  String get goalsDeadline => 'Afati (opsional)';

  @override
  String get goalsNoDeadline => 'Pa afat';

  @override
  String get goalsSetDeadline => 'Cakto afatin';

  @override
  String get goalsRemoveDeadline => 'Hiq afatin';

  @override
  String get goalsDescription => 'Përshkrimi (opsional)';

  @override
  String get goalsTitleLabel => 'Titulli';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Objektivi u arrit';

  @override
  String get goalsLogged => 'Përparimi u regjistrua';

  @override
  String get goalsEntryDeleted => 'Hyrja u hoq';

  @override
  String get goalsDeleteEntry => 'Hiq hyrjen';

  @override
  String get goalsDeleted => 'Synimi u fshi';

  @override
  String get goalsMarkActive => 'Shëno si aktiv';

  @override
  String get goalsNotFound => 'Ky synim nuk është më i disponueshëm';

  @override
  String get goalsLinkTask => 'Lidh një detyrë';

  @override
  String get goalsNoLinkedTasks => 'Ende nuk ka detyra të lidhura';

  @override
  String get goalsUnlinkTask => 'Shkëput detyrën';

  @override
  String get goalsTaskOpen => 'Ende e pakryer';

  @override
  String get goalsTaskLinked => 'Detyra u lidh';

  @override
  String get goalsTaskUnlinked => 'Detyra u shkëput';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detyra të lidhura të përfunduara',
      one: '1 detyrë të lidhur të përfunduar',
    );
    return 'Përfshin $_temp0 në këtë periudhë';
  }

  @override
  String get goalsHistoryAllTime =>
      'Hyrjet nga periudhat e mëparshme ruhen këtu, por llogariten vetëm për periudhën e tyre.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done nga $total të bëra sot';
  }

  @override
  String get habitsNothingToday => 'Asnjë zakon nuk është planifikuar për sot';

  @override
  String get habitsDecrease => 'Hiq një shënim';

  @override
  String get habitsResetToday => 'Rivendos ditën e sotme';

  @override
  String get habitsCheckInHint => 'Shtyp gjatë për të rregulluar';

  @override
  String get habitsName => 'Emri';

  @override
  String get habitsColor => 'Ngjyra';

  @override
  String get habitsValidationDays => 'Zgjidh të paktën një ditë';

  @override
  String habitsReminderAt(String time) {
    return 'Çdo ditë në $time';
  }

  @override
  String get habitsSetReminder => 'Cakto orën e kujtesës';

  @override
  String get habitsRemoveReminder => 'Hiq kujtesën';

  @override
  String get habitsReminderNote =>
      'Kujtesat shfaqen në ditët e planifikuara kur njoftimet lejohen.';

  @override
  String get habitsArchived => 'Zakoni u arkivua';

  @override
  String get habitsNotFound => 'Ky zakon nuk është më i disponueshëm';

  @override
  String get habitsLast30 => '30 ditët e fundit';

  @override
  String get habitsConsistencyNone => 'Ende nuk ka të dhëna të mjaftueshme';

  @override
  String get habitsCalendar => 'Historiku i shënimeve';

  @override
  String get habitsCalendarHint => 'Prek një ditë për ta korrigjuar.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count nga $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Shënimet në 90 ditët e fundit. Qëndrueshmëria $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Shënimet në 90 ditët e fundit. Ende nuk ka të dhëna të mjaftueshme.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ditë',
      one: '1 ditë',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Ditët në pauzë nuk ndikojnë në serinë tënde.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arkivo zakonin';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count herë në ditë',
      one: 'Një herë në ditë',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Shënime të tjera';

  @override
  String get notesAllNotebooks => 'Të gjitha fletoret';

  @override
  String get notesNotebookName => 'Emri i fletores';

  @override
  String get notesNotebookColor => 'Ngjyra';

  @override
  String get notesDeleteNotebook => 'Fshi fletoren';

  @override
  String get notesDeleteNotebookMessage =>
      'Fletorja hiqet. Shënimet e saj ruhen dhe shfaqen te Të gjitha fletoret.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fikso shënimet e rëndësishme që të mbeten lart.';

  @override
  String get notesEmptyFavorites => 'Shënimet që i shënon si të preferuara shfaqen këtu.';

  @override
  String get notesEmptyArchived => 'Shënimet e arkivuara shfaqen këtu.';

  @override
  String get notesEmptyFiltered => 'Asnjë shënim nuk përputhet me këto filtra.';

  @override
  String get notesArchivedSnack => 'Shënimi u arkivua';

  @override
  String get notesUnarchivedSnack => 'Shënimi u kthye te shënimet e tua';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done nga $total të kryera';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatimi';

  @override
  String get notesWrite => 'Shkruaj';

  @override
  String get notesPreviewEmpty => 'Ende asgjë për të parë paraprakisht.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Ende asnjë shënim tjetër nuk lidhet këtu. Lidhu me këtë shënim me [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Jepi këtij shënimi një titull që shënimet e tjera të lidhen me të.';

  @override
  String get notesLinkedTasksEmpty => 'Asnjë detyrë e lidhur me këtë shënim.';

  @override
  String notesLinkMissing(String title) {
    return 'Ende nuk ka shënim me titull „$title“.';
  }

  @override
  String get notesNotFound => 'Ky shënim nuk ekziston më.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Element i listës: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Hap shënimin $title';
  }

  @override
  String get notesTaskDone => 'E përfunduar';

  @override
  String get notifTimerDoneBody => 'Koha që caktove ka kaluar.';

  @override
  String get onboardingPrivatePointDevice => 'Ruhet vetëm në këtë pajisje, e enkriptuar';

  @override
  String get onboardingPrivatePointAccount => 'Nuk nevojitet llogari';

  @override
  String get onboardingPrivatePointTracking => 'Pa analitikë, pa gjurmim';

  @override
  String get onboardingLanguageBody => 'Mund ta ndryshosh kurdo te Cilësimet.';

  @override
  String get onboardingNext => 'Para';

  @override
  String get projectsActive => 'Aktive';

  @override
  String get projectNameHint => 'p.sh. Lansimi i produktit';

  @override
  String get projectGoalHint => 'Si duket e përfunduara?';

  @override
  String get projectNoDeadline => 'Pa afat';

  @override
  String get projectTasksOpen => 'Detyra të hapura';

  @override
  String get projectTasksCompleted => 'Detyra të përfunduara';

  @override
  String get projectAddTask => 'Shto detyrë në projekt';

  @override
  String get projectAddNote => 'Shënim i ri projekti';

  @override
  String get projectLinkedNotes => 'Shënimet';

  @override
  String get projectNoTasks => 'Ende nuk ka detyra në këtë projekt';

  @override
  String get projectArchivedBadge => 'I arkivuar';

  @override
  String get projectDeleted => 'Projekti u zhvendos në kosh';

  @override
  String get projectDeleteMessage => 'Detyrat mbeten në listën tënde pa projekt.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent përqind e përfunduar';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultate',
      one: '1 rezultat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtro sipas llojit';

  @override
  String searchRecentTap(String query) {
    return 'Kërko përsëri $query';
  }

  @override
  String get settingsLanguageHint =>
      'Zgjidh gjuhën për të gjithë aplikacionin. Emrat shfaqen në gjuhën e tyre.';

  @override
  String get settingsThemeHint => 'E çelët, e errët ose sipas sistemit';

  @override
  String settingsDecrease(String setting) {
    return 'Zvogëlo $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Rrit $setting';
  }

  @override
  String get settingsQuietStart => 'Fillon';

  @override
  String get settingsQuietEnd => 'Mbaron';

  @override
  String get settingsNotificationsHint =>
      'Kjo e ruan zgjedhjen tënde në aplikacion. Sistemi mund të kërkojë gjithashtu leje.';

  @override
  String get settingsDashboardHint =>
      'Tërhiq për të rirenditur. Çaktivizo seksionet që nuk të duhen.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Rirendit $section';
  }

  @override
  String get settingsDashboardReset => 'Rikthe renditjen e parazgjedhur';

  @override
  String get settingsAssistantDesc =>
      'Ndihmë opsionale për planifikim. Asgjë nuk largohet nga kjo pajisje nëse nuk lidh një ofrues.';

  @override
  String get settingsAssistantSetup => 'Asistenti dhe konfigurimi i ofruesit';

  @override
  String get settingsTrashDesc => 'Rikthe ose fshi përgjithmonë elementet e hequra';

  @override
  String get settingsEraseFirstBody =>
      'Kjo nuk mund të zhbëhet. Mendo të krijosh fillimisht një kopje rezervë të enkriptuar.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Shkruaj $word';
  }

  @override
  String get settingsEraseFailed => 'Të dhënat nuk u fshinë dot. Asgjë nuk ndryshoi.';

  @override
  String get settingsAboutTagline =>
      'Një hapësirë pune private për produktivitet, që punon kryesisht lokalisht.';

  @override
  String get backupShowPassword => 'Shfaq fjalëkalimin';

  @override
  String get backupHidePassword => 'Fshih fjalëkalimin';

  @override
  String get backupSaved => 'Kopja rezervë u ruajt';

  @override
  String get backupFailed => 'Kopja rezervë nuk u krijua dot. Të dhënat e tua nuk ndryshuan.';

  @override
  String get backupReadFailed => 'Skedari i zgjedhur nuk u lexua dot.';

  @override
  String get backupRestoreFailed => 'Rikthimi dështoi. Asgjë nuk ndryshoi.';

  @override
  String get backupShareSubject => 'Kopje rezervë e enkriptuar e Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Çdo $count ditë',
      one: 'Çdo ditë',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Çdo $count javë',
      one: 'Çdo javë',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Çdo $count muaj',
      one: 'Çdo muaj',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Çdo $count vjet',
      one: 'Çdo vit',
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
    return 'në: $days';
  }

  @override
  String get repeatEndsLabel => 'Mbaron';

  @override
  String get repeatEndsAfter => 'Pas një numri herësh';

  @override
  String get repeatCountLabel => 'Përsëritjet';

  @override
  String get reminderNone => 'Pa kujtesë';

  @override
  String get reminderCustomTime => 'Në një orë të caktuar';

  @override
  String get a11yDecrease => 'Zvogëlo';

  @override
  String get a11yIncrease => 'Rrit';

  @override
  String get pickTaskTitle => 'Zgjidh një detyrë';

  @override
  String get pickTaskEmpty => 'Nuk ka detyra të hapura';

  @override
  String get tasksSearchTooltip => 'Kërko detyra';

  @override
  String get tasksSectionOverdue => 'Të vonuara';

  @override
  String get tasksSectionToday => 'Sot';

  @override
  String get tasksRecurringSemantics => 'Përsëritet';

  @override
  String get tasksFilterPriorityAtLeast => 'Përparësia minimale';

  @override
  String get tasksFilterCategory => 'Kategoria';

  @override
  String get tasksFilterAnyCategory => 'Çdo kategori';

  @override
  String get tasksFilterLabel => 'Etiketa';

  @override
  String get tasksFilterAnyLabel => 'Çdo etiketë';

  @override
  String get tasksFilterReset => 'Rivendos filtrat';

  @override
  String get tasksViewByProject => 'Sipas projektit';

  @override
  String get tasksViewByPriority => 'Sipas përparësisë';

  @override
  String get tasksViewByCategory => 'Sipas kategorisë';

  @override
  String get tasksGroupNoCategory => 'Pa kategori';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detyra',
      one: '1 detyrë',
    );
    return 'E bllokuar nga $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Kjo detyrë është e bllokuar nga detyra të papërfunduara. Ta përfundosh gjithsesi?';

  @override
  String get taskStartFocus => 'Përqendrohu te kjo detyrë';

  @override
  String get taskRemoveDate => 'Hiq datën';

  @override
  String get taskAllDay => 'Pa orë të caktuar';

  @override
  String get taskSaved => 'Detyra u ruajt';

  @override
  String get taskCreated => 'Detyra u krijua';

  @override
  String get taskReminderNeedsDue => 'Cakto një afat për të përdorur kujtesa relative';

  @override
  String get taskSubtaskDetailsHint =>
      'Ruaj fillimisht detyrën për të shtuar nëndetyra, elemente liste, etiketa dhe varësi.';

  @override
  String get taskLabelName => 'Emri i etiketës';

  @override
  String get taskMoreDetails => 'Detaje';

  @override
  String get taskPlanning => 'Planifikimi';

  @override
  String get taskOrganize => 'Organizimi';

  @override
  String get taskBreakdown => 'Ndarja';

  @override
  String get trashDeleteTaskTitle => 'Ta fshish përgjithmonë këtë detyrë?';

  @override
  String get trashDeleteNoteTitle => 'Ta fshish përgjithmonë këtë shënim?';

  @override
  String get trashDeleteBody => 'Kjo nuk mund të zhbëhet.';

  @override
  String get trashEmptyTitle => 'Të zbrazet koshi?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elemente do të fshihen përgjithmonë.',
      one: '1 element do të fshihet përgjithmonë.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'U rikthye';

  @override
  String get trashPurged => 'U fshi përgjithmonë';

  @override
  String trashDeletedOn(String date) {
    return 'Fshirë më $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elemente',
      one: '1 element',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Lexo me zë';

  @override
  String get flashcardsTtsUnavailable =>
      'Shndërrimi i tekstit në të folur nuk është i disponueshëm në këtë pajisje.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Nuk ka zë të instaluar për këtë gjuhë. Shto një te cilësimet e Android për tekst në të folur.';

  @override
  String get calendarAgenda => 'Axhenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Shkëndijë',
      'rocket': 'Raketë',
      'book': 'Libër',
      'work': 'Punë',
      'home': 'Shtëpi',
      'heart': 'Zemër',
      'code': 'Kod',
      'palette': 'Paletë',
      'fitness': 'Fitnes',
      'school': 'Shkollë',
      'travel': 'Udhëtim',
      'money': 'Kursime',
      'other': 'Ikonë',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Më shumë fusha';

  @override
  String get cardFieldExample => 'Shembull';

  @override
  String get cardFieldExplanation => 'Shpjegim';

  @override
  String get cardFieldPronunciation => 'Shqiptimi';

  @override
  String get cardFieldNotes => 'Shënime shtesë';

  @override
  String get projectMilestones => 'Pikat kryesore';

  @override
  String get milestoneAdd => 'Shto pikë kryesore';

  @override
  String get milestoneEdit => 'Redakto pikën kryesore';

  @override
  String get milestoneTitleLabel => 'Pikë kryesore';

  @override
  String get milestoneNoDate => 'Pa datë';

  @override
  String get milestonesEmpty =>
      'Ende nuk ka pika kryesore. Shto pika kontrolli me data për të ndjekur projektin në kalendar.';

  @override
  String get milestoneDeleted => 'Pika kryesore u fshi';

  @override
  String milestoneDoneA11y(String title) {
    return 'Shëno pikën kryesore „$title“ si të kryer';
  }

  @override
  String calendarMilestone(String project) {
    return 'Pikë kryesore · $project';
  }

  @override
  String get tasksViewInbox => 'Kutia hyrëse';

  @override
  String get tasksViewArchived => 'Të arkivuara';

  @override
  String get tasksEmptyInbox =>
      'Detyrat pa projekt ose datë vijnë këtu. Renditi kur të kesh një minutë.';

  @override
  String get tasksEmptyArchived =>
      'Detyrat e arkivuara ruhen këtu, larg listave dhe kujtesave të tua.';

  @override
  String get taskArchivedBadge => 'E arkivuar';

  @override
  String get taskStatusInProgress => 'Në vazhdim';

  @override
  String get taskArchived => 'Detyra u arkivua';

  @override
  String get taskUnarchived => 'Detyra u rikthye nga arkivi';

  @override
  String get focusPlanTitle => 'Plani i seancave';

  @override
  String focusPlanTotal(String duration) {
    return 'Gjithsej $duration';
  }

  @override
  String get focusPlanRounds => 'Seanca përqendrimi';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Pushim i gjatë pas';

  @override
  String get focusPlanSkipLastBreak => 'Kapërce pushimin e fundit';

  @override
  String get focusPlanAutoBreaks => 'Fillo pushimet automatikisht';

  @override
  String get focusPlanAutoFocus => 'Fillo përqendrimin automatikisht pas pushimit';

  @override
  String get focusPlanSave => 'Ruaj planin';

  @override
  String get focusPlanNameHint => 'p.sh. Përgatitje për provim';

  @override
  String get focusPlanSaved => 'Plani u ruajt';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min përqendrim, $rest min pushim';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Zvogëlo $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Rrit $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Seanca $current nga $total';
  }

  @override
  String get focusSeriesComplete => 'Seria përfundoi. Të lumtë!';

  @override
  String get filterAll => 'Të gjitha';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added të importuara · $duplicates dublikata të kapërcyera · $invalid rreshta të paplotë';
  }

  @override
  String get flashcardsSuspend => 'Pezullo kartën';

  @override
  String get flashcardsResume => 'Rifillo kartën';

  @override
  String get flashcardsSuspended => 'Karta u pezullua: nuk do të planifikohet';

  @override
  String get flashcardsResumed => 'Karta rifilloi';

  @override
  String get flashcardsSuspendedFilter => 'E pezulluar';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown nga $total karta';
  }

  @override
  String get flashcardsImportFile => 'Nga skedari';

  @override
  String get speechTitle => 'Të folurit';

  @override
  String get speechAppLanguage => 'Gjuha e aplikacionit';

  @override
  String get speechFrontLanguage => 'Gjuha e pjesës së parme';

  @override
  String get speechBackLanguage => 'Gjuha e pjesës së pasme';

  @override
  String get speechRepeat => 'Përsërit çdo lexim';

  @override
  String get speechRate => 'Shpejtësia';

  @override
  String get speechAutoRead => 'Lexo pyetjen automatikisht';

  @override
  String get speechHint =>
      'Përdor zërat e instaluar në këtë pajisje, pa internet. Nëse një gjuhë nuk ka zë, do të njoftohesh dhe nuk do të përdoret asgjë tjetër në vend të tij.';

  @override
  String get studyHowTitle => 'Si dëshiron të studiosh?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Përsërit $count karta',
      one: 'Përsërit 1 kartë',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Praktiko të gjitha kartat (orari nuk ndryshon)';

  @override
  String get studyPracticeMistakes => 'Praktiko gabimet e fundit';

  @override
  String get studyPracticeHint =>
      'Raundet e praktikës nuk e ndryshojnë kurrë kur duhen përsëritur kartat. Përsëritja e përditëson orarin.';

  @override
  String get studyModeClassic => 'Klasik';

  @override
  String get studyModeReverse => 'E kundërt';

  @override
  String get studyModeMixed => 'Në të dy drejtimet';

  @override
  String get studyModeTyped => 'Shkruaj përgjigjen';

  @override
  String get studyModeChoice => 'Me zgjedhje';

  @override
  String get studyModeListening => 'Dëgjimi';

  @override
  String get studyPractice => 'praktikë';

  @override
  String get studyNoMistakes => 'Nuk ka gabime të fundit në këtë paketë. Bukur!';

  @override
  String get studyTypeAnswer => 'Shkruaj përgjigjen tënde';

  @override
  String get studyCheck => 'Kontrollo';

  @override
  String get studyKnewIt => 'E dija';

  @override
  String get studyDidntKnow => 'Nuk e dija';

  @override
  String studyMistakes(int count) {
    return 'Të gabuara ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Përsërit kartat e gabuara';

  @override
  String get studyCorrect => 'E saktë';

  @override
  String get studyAlmost => 'Pothuajse — kontrollo drejtshkrimin';

  @override
  String get studyWrong => 'Jo plotësisht';

  @override
  String get studyShowText => 'Shfaq tekstin';

  @override
  String get flashcardsImportFileFailed =>
      'Skedari nuk u hap dot. Në vend të kësaj mund të ngjitësh përmbajtjen e tij.';

  @override
  String get studyNoMatchingCards => 'Ende nuk ka karta për këtë zgjedhje.';

  @override
  String get studyPracticeNew => 'Vetëm të rejat';

  @override
  String get studyPracticeHard => 'Karta të vështira';

  @override
  String get studyPracticeFavorites => 'Të preferuara';

  @override
  String get studySessionSize => 'Karta për seancë';

  @override
  String get studySessionAll => 'Të gjitha';

  @override
  String get studyOrder => 'Renditja';

  @override
  String get studyOrderDue => 'Më të vonuarat në fillim';

  @override
  String get studyOrderRandom => 'Rastësore';

  @override
  String get studyOrderHardest => 'Më të vështirat në fillim';

  @override
  String get flashcardsHard => 'E vështirë';

  @override
  String get flashcardsFavorites => 'Të preferuara';

  @override
  String get flashcardsFavorite => 'Shto te të preferuarat';

  @override
  String get flashcardsUnfavorite => 'Hiq nga të preferuarat';

  @override
  String get flashcardsDuplicate => 'Dyfisho';

  @override
  String get flashcardsMoveTo => 'Zhvendos në paketë';

  @override
  String get flashcardsNoOtherDeck => 'Krijo fillimisht një paketë tjetër.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U zhvendosën $count karta',
      one: 'Karta u zhvendos',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Shto etiketë';

  @override
  String get flashcardsTagHint => 'p.sh. folje';

  @override
  String flashcardsSelected(int count) {
    return '$count të zgjedhura';
  }

  @override
  String get flashcardsSelectAll => 'Zgjidh të gjitha të shfaqurat';

  @override
  String flashcardsSelectCard(String front) {
    return 'Zgjidh $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Kujtesa $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Dublikatë e mundshme';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Kjo paketë ka tashmë „$front“ → „$back“. Ta ruash gjithsesi?';
  }

  @override
  String get flashcardsSaveAnyway => 'Ruaje gjithsesi';

  @override
  String get flashcardsStats => 'Statistikat';

  @override
  String get flashcardsStatTotal => 'Kartat';

  @override
  String get flashcardsStatLearning => 'Në mësim';

  @override
  String get flashcardsStatMatureCaption => 'Mbajtur mend 21+ ditë';

  @override
  String get flashcardsStatReviewsToday => 'Përsëritjet e sotme';

  @override
  String get flashcardsStatCorrect => 'Përgjigje të sakta';

  @override
  String flashcardsStatLastDays(int days) {
    return '$days ditët e fundit';
  }

  @override
  String get flashcardsStatForget => 'Shkalla e harresës';

  @override
  String get flashcardsStatForgetCaption => '„Përsëri“ te kartat e mësuara';

  @override
  String get flashcardsStatRecall => 'Kujtesa tani';

  @override
  String get flashcardsStatRecallCaption => 'Vlerësim FSRS, karta të përsëritura';

  @override
  String flashcardsStatActivity(int count) {
    return 'Përsëritje në ditë · $count gjithsej';
  }

  @override
  String get flashcardsStatHistory => 'Përgjigjet e fundit';

  @override
  String get flashcardsStatNoHistory =>
      'Ende nuk ka përsëritje. Studio paketën për të parë përparimin këtu.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Lexo me zë $field';
  }

  @override
  String get speechVoice => 'Zëri';

  @override
  String get speechVoiceDefault => 'Automatik';

  @override
  String get speechVoiceOnline => 'kërkon internet';

  @override
  String get speechTest => 'Provo zërin';

  @override
  String get importNext => 'Pamja paraprake';

  @override
  String get importPreviewTitle => 'Përputh kolonat me fushat';

  @override
  String get importIgnoreColumn => 'Shpërfill';

  @override
  String importColumn(int n) {
    return 'Kolona $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready karta gati · $invalid rreshta të paplotë do të kapërcehen';
  }

  @override
  String get importNeedFrontBack => 'Zgjidh cilat kolona janë pjesa e parme dhe e pasme.';

  @override
  String get actionMoveUp => 'Lëviz lart';

  @override
  String get actionMoveDown => 'Lëviz poshtë';

  @override
  String get flashcardsLayoutTitle => 'Struktura e kartës';

  @override
  String get flashcardsLayoutHint =>
      'Riemërto, fshih ose rirendit fushat shtesë të kësaj pakete. Përmbajtja e kartave nuk ndryshohet kurrë.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Shfaq $field gjatë studimit';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Zbulo përgjigjen hap pas hapi';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Fillimisht shfaqet pjesa e pasme; çdo fushë shtesë hapet me një prekje.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Shfaq $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Ky skedar është më i madh se $mb MB.';
  }

  @override
  String get flashcardsImage => 'Imazh';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Shto imazh';

  @override
  String get flashcardsAddAudio => 'Shto audio';

  @override
  String get flashcardsPlayAudio => 'Luaj regjistrimin';

  @override
  String get flashcardsAudioUnavailable => 'Ky regjistrim nuk mund të luhet në këtë pajisje.';

  @override
  String get flashcardsCustomFields => 'Fushat e tua';

  @override
  String get flashcardsTemplates => 'Shabllonet';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Fusha $n';
  }

  @override
  String get flashcardsAddField => 'Shto fushë';

  @override
  String get flashcardsFieldName => 'Emri i fushës';

  @override
  String get flashcardsFieldLangDefault => 'Gjuha e anës';

  @override
  String get flashcardsTemplateConfirm =>
      'Shablloni përcakton si shfaqen fushat dhe shton fushat e veta. Kartat dhe fushat ekzistuese mbeten siç janë.';

  @override
  String get flashcardsApplyTemplate => 'Zbato';

  @override
  String get templateVocabulary => 'Fjalori';

  @override
  String get templateTwoTranslations => 'Fjalë me dy përkthime';

  @override
  String get templateQuestionAnswer => 'Pyetje dhe përgjigje';

  @override
  String get templateDefinition => 'Term dhe përkufizim';

  @override
  String get templateGrammar => 'Rregull gramatikor';

  @override
  String get templateFieldPlural => 'Shumësi';

  @override
  String get templateFieldTranslation2 => 'Përkthimi i dytë';

  @override
  String get templateFieldSynonyms => 'Sinonime';

  @override
  String get templateFieldRule => 'Rregulli';

  @override
  String get deckCategory => 'Niveli ose tema';

  @override
  String get deckCategoryHint => 'p.sh. A1, Mjekësi';

  @override
  String get flashcardsSearchAll => 'Kërko në të gjitha kartat';

  @override
  String get flashcardsSearchAllHint => 'Fjalë, përkthim, shembull, shënim, etiketë…';

  @override
  String get flashcardsAllDecks => 'Të gjitha paketat';

  @override
  String get flashcardsAllLanguages => 'Të gjitha gjuhët';

  @override
  String get flashcardsLangUnset => 'Gjuha nuk është caktuar';

  @override
  String get flashcardsLevelUnset => 'Pa nivel apo temë';

  @override
  String get flashcardsByLanguage => 'Përparimi sipas gjuhës';

  @override
  String get flashcardsByLevel => 'Përparimi sipas nivelit ose temës';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks paketa · $cards karta · $mature të mësuara · $due për përsëritje · $correct të sakta (30 ditë)';
  }

  @override
  String get flashcardsRecord => 'Regjistro';

  @override
  String get flashcardsRecording => 'Po regjistrohet…';

  @override
  String get flashcardsRecordStop => 'Ndalo dhe mbaje';

  @override
  String get flashcardsMicDenied =>
      'Qasja në mikrofon është çaktivizuar. Lejoje te cilësimet e sistemit për të regjistruar.';

  @override
  String get flashcardsRecordFailed => 'Regjistrimi nuk është i disponueshëm në këtë pajisje.';

  @override
  String get soundsTitle => 'Tingujt';

  @override
  String get soundsNature => 'Natyra';

  @override
  String get soundsNoise => 'Zhurmë për përqendrim';

  @override
  String get soundRain => 'Shi';

  @override
  String get soundStorm => 'Stuhi me bubullima';

  @override
  String get soundRiver => 'Lumë';

  @override
  String get soundOcean => 'Valët e detit';

  @override
  String get soundFire => 'Zjarr kampi';

  @override
  String get soundForest => 'Zogj të pyllit';

  @override
  String get soundNight => 'Natë vere';

  @override
  String get soundWhite => 'Zhurmë e bardhë';

  @override
  String get soundPink => 'Zhurmë rozë';

  @override
  String get soundBrown => 'Zhurmë kafe';

  @override
  String get soundsPlay => 'Luaj';

  @override
  String get soundsSleep => 'Kohëmatësi i gjumit';

  @override
  String get soundsSleepOff => 'Çaktivizuar';

  @override
  String soundsSleepAt(String time) {
    return 'Ndalon në $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Deri në $count tinguj mund të luhen njëherësh.';
  }

  @override
  String get soundsHint =>
      'Prek një tingull për të filluar. Përziej disa dhe cakto volumin e secilit.';

  @override
  String get soundsMixer => 'Përzierja';

  @override
  String soundsVolumeOf(String name) {
    return 'Volumi i $name';
  }

  @override
  String get soundsChannel => 'Tinguj natyre';

  @override
  String get settingsEndTone => 'Tingulli i përfundimit të kohëmatësit';

  @override
  String get toneGentle => 'Bip të butë';

  @override
  String get toneBeeps => 'Bip';

  @override
  String get toneWood => 'Trokitje në dru';

  @override
  String get toneBird => 'Thirrje zogu';

  @override
  String get toneStream => 'Përrua';

  @override
  String get toneSystem => 'Tingulli i telefonit';

  @override
  String get speechOnPhone => 'Në këtë telefon';

  @override
  String get speechAllLanguages => 'Të gjitha gjuhët';

  @override
  String get speechSearchLanguage => 'Kërko gjuhë';

  @override
  String get speechGetVoices => 'Shkarko më shumë zëra';

  @override
  String get speechGetVoicesHint =>
      'Zërat për gjuhët pa zë mund të shkarkohen te cilësimet e të folurit të telefonit.';

  @override
  String get speechSettingsFailed => 'Cilësimet e të folurit në këtë telefon nuk u hapën dot.';

  @override
  String get speechVoiceMissing => 'Nuk ka zë të instaluar';

  @override
  String get speechPause => 'Pauzë mes përsëritjeve';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Lexo shembullin me përgjigjen';

  @override
  String get flashListen => 'Dëgjo';

  @override
  String get flashListenNext => 'Karta tjetër';

  @override
  String get flashListenEmpty => 'Nuk ka karta për t’u dëgjuar.';

  @override
  String get flashViewTable => 'Tabelë';

  @override
  String get flashViewCards => 'Karta';

  @override
  String get flashSwapSides => 'Ndërro kolonat';

  @override
  String get flashSort => 'Rendit';

  @override
  String get flashSortNewest => 'Më të rejat në fillim';

  @override
  String get flashSortAlpha => 'Nga A në Zh';

  @override
  String get flashSortDue => 'Për përsëritje në fillim';

  @override
  String get flashSortHard => 'Më të vështirat në fillim';

  @override
  String get flashPasteCards => 'Ngjit karta';

  @override
  String get flashClipboardEmpty => 'Kujtesa e fragmenteve nuk ka tekst.';

  @override
  String get flashMenuAdd => 'Shto karta';

  @override
  String get flashMenuDeck => 'Paketa';

  @override
  String get flashToday => 'Sot';

  @override
  String get flashStudyNow => 'Studio';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karta të përgjigjura',
      one: '1 kartë e përgjigjur',
      zero: 'Asnjë kartë e përgjigjur',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Shi në pyll';

  @override
  String get autoBackupTitle => 'Kopje rezervë automatike';

  @override
  String get autoBackupDesc => 'Çdo ditë në këtë telefon; ruhen 7 të fundit';

  @override
  String get autoBackupHint =>
      'Këto kopje mbeten në këtë telefon dhe hiqen nëse aplikacioni çinstalohet. Për të kaluar në një telefon të ri, përdor „Kopje rezervë“ për të ruajtur një skedar.';

  @override
  String get autoBackupNone => 'Ende nuk ka kopje rezervë automatike. E para bëhet sot.';

  @override
  String get autoBackupRestore => 'Rikthe';

  @override
  String autoBackupConfirm(String date) {
    return 'Të zëvendësohen të gjitha të dhënat aktuale me kopjen rezervë të $date?';
  }

  @override
  String get autoBackupRestored => 'U rikthye.';

  @override
  String get errorLogTitle => 'Regjistri i gabimeve';

  @override
  String get errorLogHint =>
      'Nëse diçka shkon keq, shënohet këtu: vetëm lloji i gabimit dhe vendi në kod, kurrë përmbajtja jote. Ndaje për të ndihmuar në rregullimin e problemit.';

  @override
  String get errorLogEmpty => 'Asnjë gabim i regjistruar.';

  @override
  String get errorLogClear => 'Pastro';

  @override
  String get soundsWithFocus => 'Luaj me seancat e përqendrimit';

  @override
  String get soundsWithFocusHint =>
      'Përzierja jote fillon me një seancë përqendrimi dhe ndalet gjatë pushimeve.';

  @override
  String get soundsSavedMixes => 'Përzierje të ruajtura';

  @override
  String get soundsSaveMix => 'Ruaj këtë përzierje';

  @override
  String get soundsMixNameHint => 'Emri, p.sh. Bibliotekë me shi';

  @override
  String soundsDeleteMix(String name) {
    return 'Të fshihet përzierja „$name“?';
  }

  @override
  String get settingsReviewReminderHint => 'Një herë në ditë, vetëm kur ka karta për përsëritje';

  @override
  String get settingsReviewTime => 'Ora e kujtesës';

  @override
  String get shortcutFocus => 'Përqendrimi';

  @override
  String get shortcutNewTask => 'Detyrë e re';

  @override
  String get shortcutReview => 'Përsërit kartat';

  @override
  String get shortcutSounds => 'Tinguj natyre';

  @override
  String get myDayTitle => 'Fillo ditën time';

  @override
  String get myDayHint => 'Dita jote me një shikim, pastaj përqendrim me një prekje';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detyra për sot',
      one: '1 detyrë për sot',
      zero: 'Asnjë detyrë për sot',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Nuk ka më ngjarje sot';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Në vijim: $title në $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mbeten $count zakone',
      one: 'Mbetet 1 zakon',
      zero: 'Të gjitha zakonet u bënë',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Fillo me një seancë përqendrimi';

  @override
  String get hijriMonth1 => 'Muharrem';

  @override
  String get hijriMonth2 => 'Safer';

  @override
  String get hijriMonth3 => 'Rebiul Evel';

  @override
  String get hijriMonth4 => 'Rebiul Ahir';

  @override
  String get hijriMonth5 => 'Xhemazijel Evel';

  @override
  String get hijriMonth6 => 'Xhemazijel Ahir';

  @override
  String get hijriMonth7 => 'Rexheb';

  @override
  String get hijriMonth8 => 'Shaban';

  @override
  String get hijriMonth9 => 'Ramazan';

  @override
  String get hijriMonth10 => 'Sheval';

  @override
  String get hijriMonth11 => 'Dhul Kade';

  @override
  String get hijriMonth12 => 'Dhul Hixhe';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year H';
  }

  @override
  String get settingsHijri => 'Datat hixhri';

  @override
  String get settingsHijriHint => 'Shfaqen në kalendar dhe në ekranin kryesor (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ditë',
      one: '1 ditë',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done nga $goal karta sot';
  }

  @override
  String get studyGoalReached => 'Synimi ditor u arrit. Të lumtë!';

  @override
  String get studyWeekTitle => 'Java jote';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karta të përgjigjura në 7 ditë',
      one: '1 kartë e përgjigjur në 7 ditë',
      zero: 'Asnjë kartë e përgjigjur në 7 ditë',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration përqendrim në 7 ditë';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Seria: $current · Më e mira: $best';
  }

  @override
  String get studyGoalTitle => 'Synimi ditor (karta)';

  @override
  String get studyGoalOff => 'Çaktivizuar';

  @override
  String get focusDndTitle => 'Mos shqetëso gjatë përqendrimit';

  @override
  String get focusDndHint => 'Aktivizohet për çdo seancë përqendrimi dhe çaktivizohet në pushim';

  @override
  String get focusDndNeedsAccess => 'Lejo qasjen te cilësimet e telefonit për ta përdorur këtë';

  @override
  String get voiceInput => 'Fol për të shkruar';

  @override
  String get voiceInputPrompt => 'Fol tani';

  @override
  String get voiceInputUnavailable =>
      'Shkrimi me zë nuk është i disponueshëm në këtë telefon. Instalo ose aktivizo një shërbim të folurit (për shembull Njohja dhe sinteza e të folurit nga Google).';

  @override
  String get prayerFajr => 'Sabahu';

  @override
  String get prayerSunrise => 'Lindja e diellit';

  @override
  String get prayerDhuhr => 'Dreka';

  @override
  String get prayerAsr => 'Ikindia';

  @override
  String get prayerMaghrib => 'Akshami';

  @override
  String get prayerIsha => 'Jacia';

  @override
  String get prayerMethodMwl => 'Lidhja Botërore Myslimane';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekë';

  @override
  String get prayerMethodEgypt => 'Autoriteti i Përgjithshëm Egjiptian';

  @override
  String get prayerMethodJordan => 'Jordania, Ministria e Vakëfeve';

  @override
  String get prayerMethodKarachi => 'Universiteti i Shkencave Islame, Karaçi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Rajoni i Gjirit';

  @override
  String get prayerMethodKuwait => 'Kuvajt';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Turqia, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapor, Malajzi, Indonezi';

  @override
  String get prayerMethodFrance => 'Francë (12°)';

  @override
  String get prayerMethodRussia => 'Rusia, Administrata Shpirtërore';

  @override
  String prayerNotifTitle(String name) {
    return 'Koha për $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Koha e namazit · $time';
  }

  @override
  String get prayerTitle => 'Kohët e namazit';

  @override
  String get prayerOffHint =>
      'Zgjidh qytetin tënd për të parë kohët e namazit. Llogariten në telefon; nuk nevojitet qasje në vendndodhje.';

  @override
  String get prayerChooseCity => 'Zgjidh qytetin';

  @override
  String get prayerCity => 'Qyteti';

  @override
  String get prayerCitySearch => 'Kërko një qytet';

  @override
  String get prayerMethod => 'Metoda e llogaritjes';

  @override
  String get prayerHanafiAsr => 'Ikindia hanefite (orë më e vonë)';

  @override
  String get prayerReminders => 'Njofto në çdo kohë namazi';

  @override
  String get prayerPauseFocus => 'Ndal përqendrimin në kohën e namazit';

  @override
  String get prayerPauseFocusHint => 'Seanca në vazhdim ndalet; vazhdo pas namazit';

  @override
  String get prayerTurnOff => 'Çaktivizo kohët e namazit';

  @override
  String get prayerAccuracyNote =>
      'Kohët e llogaritura mund të ndryshojnë me disa minuta nga xhamia jote lokale.';

  @override
  String prayerNext(String name, String time) {
    return '$name në $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Ky skedar Anki përdor formatin më të ri. Në Anki eksportoje përsëri me „Support older Anki versions“ të aktivizuar, pastaj importo atë skedar.';

  @override
  String get importTemplate => 'Shabllon tabele';

  @override
  String get importTemplateFront => 'mollë';

  @override
  String get importTemplateBack => 'një frut i rrumbullakët';

  @override
  String get importTemplateExample => 'Ha një mollë çdo ditë.';

  @override
  String get importTemplateTag => 'ushqim';

  @override
  String get starterTitle => 'Paketa fillestare';

  @override
  String get starterHint =>
      'Shto një për të filluar menjëherë studimin. Mund ta redaktosh ose ta fshish më vonë.';

  @override
  String get starterAdd => 'Shto';

  @override
  String get starterWords => 'Fjalë angleze të përditshme (arabisht)';

  @override
  String get starterCapitals => 'Kryeqytetet e botës';

  @override
  String get starterElements => 'Elementet kimike';

  @override
  String get settingsAccent => 'Ngjyra e theksit';

  @override
  String get accentViolet => 'Vjollcë';

  @override
  String get accentBlue => 'Blu';

  @override
  String get accentTeal => 'Gurkali';

  @override
  String get accentGreen => 'Jeshile';

  @override
  String get accentRose => 'Rozë';

  @override
  String get accentAmber => 'Qelibar';

  @override
  String get settingsFlashTextSize => 'Madhësia e tekstit të kartave';

  @override
  String get settingsFlashTextSample => 'Shembull';

  @override
  String get widgetStartFocus => 'Prek për t’u përqendruar';

  @override
  String widgetFocusUntil(String time) {
    return 'Përqendrim deri në $time';
  }

  @override
  String get widgetNoCardsDue => 'Kartat: gjithçka gati';

  @override
  String get faqMyDayQ => 'Çfarë bën „Fillo ditën time“?';

  @override
  String get faqMyDayA =>
      'Një herë në ditë ekrani kryesor ta ofron: sheh detyrat e sotme, ngjarjen e radhës, zakonet e mbetura dhe kartat për përsëritje, pastaj fillon një seancë përqendrimi me një prekje. Shtyp gjatë ikonën e aplikacionit për veprime të shpejta ose shto miniaplikacionin në ekranin kryesor për të parë kohën e përqendrimit dhe kartat për përsëritje.';

  @override
  String get faqTasksQ => 'Si të shtoj një detyrë me kujtesë?';

  @override
  String get faqTasksA =>
      'Prek Detyrë e re te Kreu ose + te Detyrat. Shkruaj titullin ose thuaje me mikrofon, pastaj cakto afatin, orën dhe kujtesën. Detyrat e vonuara shfaqen të parat.';

  @override
  String get faqFocusQ => 'Si funksionon kohëmatësi i përqendrimit?';

  @override
  String get faqFocusA =>
      'Zgjidh Pomodoro, numërim mbrapsht ose kohë të lirë dhe shtyp Fillo; pushimet mund të vijnë automatikisht. Te Cilësimet mund të zgjedhësh tingullin e përfundimit, të aktivizosh Mos shqetëso gjatë përqendrimit dhe të luash tingujt e natyrës me çdo seancë.';

  @override
  String get faqSoundsQ => 'A mund të përziej tinguj natyre?';

  @override
  String get faqSoundsA =>
      'Aktivizo deri në gjashtë regjistrime të vërteta, cakto volumin e secilit dhe ruaje përzierjen me emër. Ato vazhdojnë të luhen në sfond dhe një kohëmatës gjumi mund t’i ndalë. Nuk përdoret muzikë.';

  @override
  String get faqCalendarQ => 'A mund të shfaqë kalendari data hixhri?';

  @override
  String get faqCalendarA =>
      'Po. Datat hixhri (Umm al-Qura) shfaqen automatikisht në arabisht dhe mund të aktivizohen te Cilësimet për çdo gjuhë. Ngjarjet, detyrat me afat dhe pikat kryesore të projekteve shfaqen bashkë.';

  @override
  String get faqFlashcardsQ => 'Si vendos përsëritja cilat karta shoh?';

  @override
  String get faqFlashcardsA =>
      'Kartat që i di mirë kthehen pas intervalesh më të gjata dhe ato që i gabon kthehen shpejt (përsëritje me intervale). Vlerëso çdo përgjigje: Përsëri, E vështirë, Mirë ose E lehtë. Cakto një synim ditor dhe mbaje serinë te karta Sot. Cakto një datë provimi në paketë për të parë ditët e mbetura dhe sa karta të reja duhet të mësosh çdo ditë. Rendit sipas „Renditja ime“ për t’i tërhequr kartat në vend, prek altoparlantin në cilëndo anë për ta dëgjuar dhe cakto shpejtësinë dhe përsëritjet te menyja Të folurit.';

  @override
  String get faqImportQ => 'A mund të sjell karta nga Anki ose Excel?';

  @override
  String get faqImportA =>
      'Po. Në një paketë zgjidh Importo, pastaj një skedar: Anki (.apkg), Excel (.xlsx) ose CSV, dhe përputh kolonat. Përdor „Shabllon tabele“ për të shkruar karta në kompjuter. Imazhet dhe tingujt brenda skedarëve Anki nuk importohen.';

  @override
  String get faqNotesQ => 'Çfarë mund të bëjnë shënimet?';

  @override
  String get faqNotesA =>
      'Shkruaj lirshëm me lista kontrolli dhe formatim, fikso ose shëno si të preferuara shënimet e rëndësishme, shto etiketa dhe lidh shënimet me detyrat. Butoni i mikrofonit të lejon të diktosh. Një shënim i ri mund të fillojë nga një shabllon (leksion, përmbledhje libri, ditar, plan javor) dhe butoni i imazhit shton foto.';

  @override
  String get faqHabitsQ => 'Si llogariten seritë e zakoneve?';

  @override
  String get faqHabitsA =>
      'Një ditë llogaritet kur arrin objektivin e zakonit në një ditë të planifikuar. Vendosja e zakonit në pauzë e ruan serinë. Çdo zakon mund të ketë orën e vet të kujtesës.';

  @override
  String get faqGoalsQ => 'Si e ndjekin synimet përparimin?';

  @override
  String get faqGoalsA =>
      'Jepi një synimi sasinë dhe njësinë e objektivit, pastaj regjistro përparimin. Karta e tij tregon sa ke ecur dhe sa ka mbetur para afatit.';

  @override
  String get faqProjectsQ => 'Për çfarë shërbejnë projektet?';

  @override
  String get faqProjectsA =>
      'Grupo detyrat nën një projekt, shto pika kryesore me data dhe ndiq përparimin e përgjithshëm. Pikat kryesore shfaqen edhe në kalendar.';

  @override
  String get faqInsightsQ => 'Çfarë tregojnë Analizat?';

  @override
  String get faqInsightsA =>
      'Kohën e përqendrimit, detyrat e përfunduara dhe studimin sipas ditëve dhe javëve, me sugjerime të buta. Gjithçka llogaritet në telefonin tënd.';

  @override
  String get faqSpacesQ => 'Ku janë të gjitha seksionet?';

  @override
  String get faqSpacesA =>
      'Hapësirat rendisin çdo pjesë të aplikacionit (shënime, paketa, zakone, synime, projekte, tinguj e të tjera) që shiriti kryesor të mbetet i thjeshtë.';

  @override
  String get faqBackupQ => 'Si bëhen kopjet rezervë të të dhënave të mia?';

  @override
  String get faqBackupA =>
      'Çdo ditë aplikacioni mban në heshtje një kopje të enkriptuar në këtë telefon dhe ruan 7 të fundit. Te Cilësimet mund të eksportosh edhe një skedar kopjeje rezervë të mbrojtur me fjalëkalim dhe ta rikthesh në një telefon tjetër.';

  @override
  String get faqPrayerQ => 'Si funksionojnë kohët e namazit?';

  @override
  String get faqPrayerA =>
      'Zgjidh qytetin te Cilësimet → Kohët e namazit. Kohët llogariten në telefon me metodën që përdoret atje dhe mund ta ndryshosh metodën dhe medhhebin për ikindinë. Mund të njoftohesh në çdo namaz dhe seanca e përqendrimit në vazhdim ndalet.';

  @override
  String get faqPrivacyQ => 'Ku ruhen të dhënat e mia?';

  @override
  String get faqPrivacyA =>
      'Vetëm në telefonin tënd, në një bazë të dhënash të enkriptuar. Nuk ka llogari dhe as gjurmim. Interneti përdoret vetëm nga funksionet që i aktivizon vetë, si asistenti opsional.';

  @override
  String get faqAssistantQ => 'Çfarë është asistenti?';

  @override
  String get faqAssistantA =>
      'Një ndihmës opsional që e lidh me shërbimin tënd IA te Cilësimet. Si parazgjedhje është i çaktivizuar dhe pyet para se të dërgojë çdo tekst shënimi.';

  @override
  String get tourPlanTitle => 'Planifiko ditën';

  @override
  String get tourPlanBody =>
      'Detyra, kalendar dhe zakone në një vend të qetë. Fillo çdo mëngjes me „Fillo ditën time“.';

  @override
  String get tourFocusTitle => 'Përqendrohu thellë';

  @override
  String get tourFocusBody =>
      'Seanca me kohëmatës, tinguj të vërtetë natyre, Mos shqetëso dhe tone të buta përfundimi.';

  @override
  String get tourLearnTitle => 'Mëso përgjithmonë';

  @override
  String get tourLearnBody =>
      'Karta me përsëritje me intervale, të folur në shumë gjuhë dhe importim nga Anki ose Excel.';

  @override
  String get helpTitle => 'Ndihmë dhe pyetje';

  @override
  String get helpOpen => 'Hap';

  @override
  String get helpTour => 'Shiko prezantimin';

  @override
  String get tourNext => 'Para';

  @override
  String get tourDone => 'Le të fillojmë';

  @override
  String get transferColTitle => 'Titulli';

  @override
  String get transferColNotes => 'Shënime';

  @override
  String get transferColBody => 'Teksti';

  @override
  String get transferColDue => 'Afati';

  @override
  String get transferColPriority => 'Përparësia (0-3)';

  @override
  String get transferColDone => 'U krye';

  @override
  String get transferColProject => 'Projekti';

  @override
  String get transferColCategory => 'Kategoria';

  @override
  String get transferTitle => 'Importim dhe eksportim';

  @override
  String get transferSaveAs => 'Ruaj si';

  @override
  String get transferImport => 'Importo nga skedari';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV ose një tabelë në Word. Kolonat: titulli, afati (2026-12-31), përparësia 0-3, e kryer, projekti, shënime. Detyrat që janë tashmë në aplikacion kapërcehen.';

  @override
  String get transferImportNotesHint =>
      'Skedarët Word, Markdown ose tekst bëhen shënim. Excel ose CSV: një shënim për rresht (titulli, teksti).';

  @override
  String get transferSaved => 'Skedari u ruajt';

  @override
  String get transferFailed => 'Skedari nuk u krijua dot. Asgjë nuk ndryshoi.';

  @override
  String get transferUnsupported =>
      'Ky skedar nuk mund të lexohet këtu. Përdor Excel, CSV, Word, Markdown ose tekst.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'U shtuan $added',
      one: 'U shtua 1',
      zero: 'Asgjë e re për t’u shtuar',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Tekst';

  @override
  String get transferAllNotes => 'Të gjitha shënimet';

  @override
  String get transferThisNote => 'Ky shënim';

  @override
  String get transferDeckFormats => 'Ruaj si Excel, Word ose PDF';

  @override
  String get faqFilesQ => 'A mund të përdor skedarë Excel, Word ose PDF?';

  @override
  String get faqFilesA =>
      'Po. Detyrat dhe Shënimet kanë lart një buton importimi dhe eksportimi (dy shigjeta), dhe çdo paketë e ka në menynë e saj. Ruaj si Excel, CSV, Word ose PDF, ose sill skedarë Excel, CSV, Word, Markdown ose tekst. Emrat e kolonave mund të jenë në çdo gjuhë të aplikacionit dhe skedarët që ruajte mund të importohen gjithmonë përsëri.';

  @override
  String get tplLecture => 'Leksion';

  @override
  String get tplBook => 'Përmbledhje libri';

  @override
  String get tplJournal => 'Ditar';

  @override
  String get tplWeek => 'Plan javor';

  @override
  String get tplLectureBody => '## Pikat kryesore\n- \n\n## Pyetje\n- [ ] \n\n## Përmbledhje\n';

  @override
  String get tplBookBody =>
      '## Ideja kryesore\n\n## Çfarë mësova\n- \n\n## Citate\n> \n\n## Për t’u zbatuar\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Jam mirënjohës për\n- \n\n## Përqendrimi i sotëm\n- [ ] \n\n## Shënime\n';

  @override
  String get tplWeekBody =>
      '## Synimet e kësaj jave\n- [ ] \n\n### E shtunë\n- [ ] \n\n### E diel\n- [ ] \n\n### E hënë\n- [ ] \n\n### E martë\n- [ ] \n\n### E mërkurë\n- [ ] \n\n### E enjte\n- [ ] \n\n### E premte\n- [ ] \n';

  @override
  String get tplHint => 'Fillo nga një shabllon';

  @override
  String get noteImage => 'Imazh';

  @override
  String get noteAddImage => 'Shto imazh';

  @override
  String get noteImageUnreadable => 'Ky skedar nuk është imazh që aplikacioni mund ta lexojë.';

  @override
  String get noteImageTooLarge => 'Ky imazh është shumë i madh.';

  @override
  String get examSet => 'Cakto datën e provimit';

  @override
  String get examDate => 'Data e provimit';

  @override
  String get examToday => 'Provimi është sot. Suksese!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Provimi pas $count ditësh',
      one: 'Provimi nesër',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mëso $count karta të reja në ditë',
      one: 'mëso 1 kartë të re në ditë',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'të gjitha kartat u mësuan, vazhdo përsëritjen';

  @override
  String examRaiseLimit(int count) {
    return 'Shfaq $count karta të reja në ditë';
  }

  @override
  String get backupDriveHint =>
      'Për të mbajtur një kopje në internet, zgjidh Google Drive (ose një aplikacion tjetër reje) në ekranin e ruajtjes që hapet më pas.';

  @override
  String get flashShareDeck => 'Ndaje paketën me një mik';

  @override
  String get flashSortManual => 'Renditja ime (tërhiq)';

  @override
  String get flashReorderHint => 'Mbaj dorezën dhe tërhiq një kartë për ta zhvendosur.';

  @override
  String get flashReorderNeedsAll => 'Pastro kërkimin dhe filtrat për të tërhequr kartat.';

  @override
  String get flashDragHandle => 'Tërhiq për ta zhvendosur';

  @override
  String get reportTitle => 'Raporti mujor';

  @override
  String get reportFocus => 'Koha e përqendrimit';

  @override
  String reportSessions(int count) {
    return '$count seanca';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Dita më e mirë: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count ditë aktive';
  }

  @override
  String get reportCards => 'Karta të përsëritura';

  @override
  String reportCardsKnown(String percent) {
    return '$percent të mbajtura mend';
  }

  @override
  String get reportTasks => 'Detyra të përfunduara';

  @override
  String get reportHabits => 'Shënime zakonesh';

  @override
  String get reportEmpty => 'Ende asgjë e regjistruar këtë muaj.';

  @override
  String get reportSave => 'Ruaj si PDF ose Word';

  @override
  String get reportPrevMonth => 'Muaji i mëparshëm';

  @override
  String get reportNextMonth => 'Muaji tjetër';

  @override
  String get careTitle => 'Kujdesi për telefonin dhe të dhënat';

  @override
  String get storageTitle => 'Hapësira ruajtëse';

  @override
  String get storageSubtitle => 'Çfarë zë vend dhe pastrimi i imazheve të papërdorura';

  @override
  String get storagePictures => 'Imazhe në shënime';

  @override
  String get storageCardMedia => 'Imazhe dhe audio në karta';

  @override
  String get storageText => 'Teksti i shënimeve';

  @override
  String get storageFree => 'E lirë në telefon';

  @override
  String get storageLow =>
      'Telefoni yt është pothuajse plot. Liro hapësirë që kopjet rezervë dhe kujtesat të vazhdojnë të punojnë.';

  @override
  String storageUnused(int count, String size) {
    return '$count imazhe të papërdorura ($size)';
  }

  @override
  String get storageNoUnused => 'Nuk ka imazhe të papërdorura. Gjithçka në rregull.';

  @override
  String get storageClean => 'Hiq imazhet e papërdorura';

  @override
  String storageCleaned(int count) {
    return 'U hoqën $count imazhe';
  }

  @override
  String get storageHint =>
      'Imazhet llogariten si të papërdorura vetëm kur asnjë shënim nuk i shfaq, përfshirë shënimet në kosh.';

  @override
  String get batteryTitle => 'Mbaji kujtesat në punë';

  @override
  String get batterySubtitle => 'Disa telefona i ndalojnë aplikacionet në sfond. Kontrollo tëndin.';

  @override
  String get batteryStatusOk =>
      'Kursimi i baterisë nuk e kufizon këtë aplikacion. Kujtesat dhe tingujt duhet të vijnë në kohë.';

  @override
  String get batteryStatusLimited =>
      'Kursimi i baterisë mund ta ndalojë këtë aplikacion në sfond, kështu që kujtesat dhe tingujt mund të vonohen ose të mungojnë.';

  @override
  String get batteryOpen => 'Hap cilësimet e baterisë';

  @override
  String get batteryOpenApp => 'Hap cilësimet e aplikacionit';

  @override
  String get batteryGeneric =>
      'Te cilësimet e baterisë zgjidh këtë aplikacion dhe vendose në „Pa kufizime“ (ose „Mos optimizo“).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: hap edhe Siguria › Lejet › Nisja automatike dhe aktivizo këtë aplikacion, dhe vendos kursyesin e baterisë në „Pa kufizime“.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: hap Bateria › ky aplikacion dhe lejo aktivitetin në sfond dhe nisjen automatike; kyçe aplikacionin në listën e aplikacioneve të fundit.';

  @override
  String get batterySamsung =>
      'Samsung: Bateria › Kufijtë e përdorimit në sfond: hiqe këtë aplikacion nga aplikacionet në gjumë dhe në gjumë të thellë.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Nisja e aplikacioneve › ky aplikacion › menaxho manualisht, dhe lejo nisjen automatike, nisjen dytësore dhe ekzekutimin në sfond.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Bateria › Konsumi i energjisë në sfond › lejo këtë aplikacion dhe aktivizo nisjen automatike te lejet.';

  @override
  String get whatsNewTitle => 'Çfarë ka të re';

  @override
  String get whatsNewSubtitle => 'Ndryshimet e fundit në pak rreshta';

  @override
  String get whatsNewDone => 'Në rregull';

  @override
  String get whatsNewOrderTitle => 'Tërhiq kartat në renditjen tënde';

  @override
  String get whatsNewOrderBody =>
      'Në një paketë zgjidh Rendit › Renditja ime, pastaj mbaj dorezën dhe tërhiq.';

  @override
  String get whatsNewSpeechTitle => 'Një altoparlant në çdo anë të kartës';

  @override
  String get whatsNewSpeechBody =>
      'Prek për të dëgjuar fjalën ose përkthimin. Shpejtësia, përsëritjet dhe zëri janë te menyja e përsëritjes. Gjuha njihet nga teksti.';

  @override
  String get whatsNewReportTitle => 'Raporti mujor';

  @override
  String get whatsNewReportBody =>
      'Te Analizat prek ikonën e raportit për të parë muajin dhe për ta ruajtur si PDF ose Word.';

  @override
  String get whatsNewCareTitle => 'Kujdesi për telefonin dhe të dhënat';

  @override
  String get whatsNewCareBody =>
      'Cilësimet kanë tani një faqe hapësire ruajtëse me pastrim imazhesh dhe një udhëzues baterie për markën e telefonit tënd.';

  @override
  String get whatsNewSoundTitle => 'Tinguj më të qetë';

  @override
  String get whatsNewSoundBody =>
      'Tingujt e natyrës janë më të butë dhe më të qetë, dhe kartat me imazhe më të bukura.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Kontrolluar më $date: kopja rezervë e fundit hapet si duhet.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Kontrolluar më $date: u gjet një kopje rezervë e dëmtuar dhe u zëvendësua me një të re.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Kontrolluar më $date: kopja rezervë e fundit nuk u hap dot. Ruaj vetë një skedar kopjeje rezervë nga Cilësimet.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Zakonisht studion rreth $time';
  }

  @override
  String get smartReviewTimeUse => 'Përdore';

  @override
  String get widgetNewNote => 'Shënim i ri';

  @override
  String get noteConnections => 'Etiketa, lidhje dhe detyra';

  @override
  String get navCards => 'Karta';

  @override
  String get studyAnswerWay => 'Si të përgjigjesh';

  @override
  String get studyMorePractice => 'Praktikë shtesë';

  @override
  String get studySessionSettings => 'Cilësimet e seancës';

  @override
  String get focusAdjustTitle => 'Seanca jote';

  @override
  String get focusPresetsTitle => 'Të gatshme';

  @override
  String get focusPresetStudy => 'Studim';

  @override
  String get focusPresetDeep => 'Punë e thellë';

  @override
  String get focusPresetQuick => 'Sprint i shpejtë';

  @override
  String get focusPresetReading => 'Lexim';

  @override
  String get focusPresetWorkout => 'Raunde ushtrimesh';

  @override
  String get focusAdjustMinutes => 'Kohëzgjatja e përqendrimit';

  @override
  String get focusAdjustBreak => 'Kohëzgjatja e pushimit';

  @override
  String get focusAdjustRounds => 'Raunde';

  @override
  String get focusRoundsOpen => 'Pa kufi';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Prek për të ndryshuar kohën';

  @override
  String get flashArrangeDecks => 'Rendit paketat';

  @override
  String get flashDeckActions => 'Opsionet e paketës';

  @override
  String get starterBrowse => 'Paketa të gatshme';

  @override
  String get starterBrowseHint => 'Shto një me një prekje dhe fillo të mësosh';

  @override
  String get dashOpenDecks => 'Hap kartat e tua';

  @override
  String speechVoiceNumber(String n) {
    return 'Zëri $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Rrjedhë e mirë. Pushim $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Fillo pushimin';

  @override
  String tasksFinishAt(String time) {
    return 'Fillo tani dhe do t’i mbarosh të gjitha deri në $time';
  }

  @override
  String get focusCalmPacing => 'Ritëm i qetë';

  @override
  String get focusCalmPacingHint => 'Vetëm minuta të plota dhe unaza, pa sekonda që ecin';

  @override
  String get focusFlipHint => 'Ktheje telefonin me ekranin poshtë për të filluar';

  @override
  String get focusImmersive => 'Modaliteti i zhytjes';

  @override
  String get focusImmersiveBlack => 'E zezë e pastër (kursen bateri)';

  @override
  String get focusFlipToFocus => 'Ktheje për përqendrim';

  @override
  String get focusFlipToFocusHint =>
      'Në modalitetin e zhytjes: me ekran poshtë fillon, ngritja ndalon';

  @override
  String get guardTitle => 'Mbrojtja nga shpërqendrimi';

  @override
  String get guardSubtitle => 'Ndal aplikacionet që të shpërqendrojnë ndërsa përqendrohesh';

  @override
  String get guardSwitch => 'Ndal aplikacionet që shpërqendrojnë';

  @override
  String get guardSwitchHint => 'Gjatë seancave të përqendrimit dhe orëve të Mbrojtjes kohore';

  @override
  String get guardNeedsAccess => 'Kërkon çelësin e qasshmërisë: prek për ta aktivizuar';

  @override
  String get guardDisclosureTitle => 'Si funksionon mbrojtja';

  @override
  String get guardDisclosureBody =>
      'Për të ndaluar aplikacionet që zgjedh, Deep Focus përdor shërbimin e qasshmërisë së Android për të parë cili aplikacion është i hapur. Me „Mbyll Shorts dhe Reels“ të aktivizuar, kontrollon gjithashtu nëse në ekran ka një luajtës videosh të shkurtra.\n\nNuk lexon asnjë tekst, nuk ruan asgjë që sheh dhe nuk dërgon asgjë askund: gjithçka mbetet në telefonin tënd. Mund ta çaktivizosh kurdo te cilësimet e qasshmërisë.';

  @override
  String get guardAgree => 'Prano dhe hap cilësimet';

  @override
  String get guardModeGentle => 'I butë';

  @override
  String get guardModeStrict => 'I rreptë';

  @override
  String get guardGentleHint => 'Një pauzë 5-sekondëshe për frymëmarrje, pastaj zgjedh ti';

  @override
  String get guardStrictHint =>
      'Aplikacionet e zgjedhura mbeten të mbyllura deri në fund të kohës së përqendrimit';

  @override
  String get guardApps => 'Aplikacione për t’u ndaluar';

  @override
  String get guardAppsAllowed => 'Aplikacione të lejuara';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikacione',
      one: '1 aplikacion',
      zero: 'Ende asgjë e zgjedhur',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Lejo vetëm aplikacionet e zgjedhura';

  @override
  String get guardAllowlistHint =>
      'Çdo aplikacion tjetër ndalet; thirrjet, cilësimet dhe tastiera punojnë gjithmonë';

  @override
  String get guardShorts => 'Mbyll Shorts dhe Reels';

  @override
  String get guardShortsHint =>
      'Sa herë që mbrojtja është aktive. Përpjekje maksimale: këto aplikacione ndryshojnë shpesh';

  @override
  String get guardSchedule => 'Mbrojtja kohore';

  @override
  String get guardScheduleHint =>
      'Mbro edhe në ditë dhe orë të caktuara, si në shkollë apo në punë';

  @override
  String get guardFrom => 'Nga';

  @override
  String get guardTo => 'Deri';

  @override
  String get guardSearchApps => 'Kërko aplikacione';

  @override
  String get guardNoApps => 'Nuk u gjetën aplikacione';

  @override
  String get guardPrivacy =>
      'Punon vetëm në telefonin tënd: mbrojtja sheh cili aplikacion është i hapur, kurrë çfarë ka brenda, dhe nuk dërgon asgjë.';

  @override
  String get guardBreathe => 'Merr frymë… dhe nxirre';

  @override
  String get guardQuestion => 'A të duhet ky aplikacion tani?';

  @override
  String get guardBackToFocus => 'Kthehu te përqendrimi';

  @override
  String get guardOpenFive => 'Hape për 5 minuta';

  @override
  String get guardStrictBody =>
      'Ky aplikacion është ndaluar deri në fund të kohës së përqendrimit.';

  @override
  String get guardShortsClosed => 'Videot e shkurtra mbyllen ndërsa mbrojtja është aktive';

  @override
  String get faqGuardQ => 'Si t’i ndaloj aplikacionet që më shpërqendrojnë ndërsa përqendrohem?';

  @override
  String get faqGuardA =>
      'Hap Përqendrimi → cilësimet e kohëmatësit → Mbrojtja nga shpërqendrimi. Zgjidh aplikacionet, pastaj I butë (një frymëmarrje 5-sekondëshe dhe pyetja „A të duhet ky aplikacion tani?“) ose I rreptë (mbeten të mbyllura). Funksionon gjatë seancave të përqendrimit dhe, me Mbrojtjen kohore, në ditët dhe orët që cakton. „Lejo vetëm aplikacionet e zgjedhura“ ndalon gjithçka tjetër; thirrjet, cilësimet dhe tastiera punojnë gjithmonë. Android të kërkon një herë ta aktivizosh mbrojtjen te cilësimet e qasshmërisë. Sheh vetëm cili aplikacion është i hapur dhe nuk dërgon asgjë.';

  @override
  String notesMovedToNotebook(String name) {
    return 'U zhvendos te $name';
  }

  @override
  String get notesDragHint => 'Mbaj një shënim dhe tërhiqe mbi një fletore';

  @override
  String get guardReviewCards => 'Më mirë përsërit karta';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karta të presin',
      one: '1 kartë të pret',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Urgjencë: mbaj 10 sekonda';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Vazhdo të mbash… $n';
  }

  @override
  String get guardWeekTitle => 'Këtë javë';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ndalesa',
      one: '1 ndalesë',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'u ktheve te përqendrimi $count herë',
      one: 'u ktheve te përqendrimi një herë',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Riemërto fjalët';

  @override
  String get wordsSubtitle => 'Përdor fjalën tënde për çdo tekst në aplikacion';

  @override
  String get wordsHint =>
      'Prek një tekst për ta ndryshuar. Fjalët e tua vlejnë vetëm për këtë gjuhë dhe ruhen në kopjet rezervë.';

  @override
  String get wordsSearch => 'Kërko tekste';

  @override
  String get wordsChangedOnly => 'Vetëm të ndryshuarat';

  @override
  String wordsOriginal(String text) {
    return 'Origjinali: $text';
  }

  @override
  String get wordsReset => 'Përdor origjinalin';

  @override
  String get wordsResetAll => 'Rivendos të gjitha fjalët';

  @override
  String get wordsResetAllConfirm => 'Çdo tekst në këtë gjuhë kthehet në origjinal.';

  @override
  String get wordsNone => 'Nuk u gjet tekst';

  @override
  String get settingsLanguageSearch => 'Kërko gjuhë';

  @override
  String get settingsLanguageNoMatch => 'Asnjë gjuhë nuk përputhet';
}
