// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Bosh sahifa';

  @override
  String get navTasks => 'Vazifalar';

  @override
  String get navFocus => 'Diqqat';

  @override
  String get navCalendar => 'Taqvim';

  @override
  String get navSpaces => 'Boʻlimlar';

  @override
  String get moduleProjects => 'Loyihalar';

  @override
  String get moduleNotes => 'Qaydlar';

  @override
  String get moduleFlashcards => 'Kartochkalar';

  @override
  String get moduleGoals => 'Maqsadlar';

  @override
  String get moduleHabits => 'Odatlar';

  @override
  String get moduleAnalytics => 'Tahlil';

  @override
  String get moduleSearch => 'Qidiruv';

  @override
  String get moduleAssistant => 'Yordamchi';

  @override
  String get moduleSettings => 'Sozlamalar';

  @override
  String get moduleTrash => 'Savat';

  @override
  String get actionSave => 'Saqlash';

  @override
  String get actionCancel => 'Bekor qilish';

  @override
  String get actionDelete => 'Oʻchirish';

  @override
  String get actionEdit => 'Tahrirlash';

  @override
  String get actionDone => 'Tayyor';

  @override
  String get actionAdd => 'Qoʻshish';

  @override
  String get actionCreate => 'Yaratish';

  @override
  String get actionClose => 'Yopish';

  @override
  String get actionBack => 'Orqaga';

  @override
  String get actionUndo => 'Qaytarish';

  @override
  String get actionRestore => 'Tiklash';

  @override
  String get actionRetry => 'Qayta urinish';

  @override
  String get actionContinue => 'Davom etish';

  @override
  String get actionSkip => 'Oʻtkazib yuborish';

  @override
  String get actionArchive => 'Arxivlash';

  @override
  String get actionUnarchive => 'Arxivdan chiqarish';

  @override
  String get actionPin => 'Qadash';

  @override
  String get actionUnpin => 'Qadashni olib tashlash';

  @override
  String get actionMore => 'Boshqa variantlar';

  @override
  String get actionClear => 'Tozalash';

  @override
  String get actionSearch => 'Qidirish';

  @override
  String get actionSort => 'Saralash';

  @override
  String get actionShare => 'Ulashish';

  @override
  String get actionImport => 'Import qilish';

  @override
  String get actionExport => 'Eksport qilish';

  @override
  String get actionPause => 'Pauza';

  @override
  String get actionResume => 'Davom ettirish';

  @override
  String get actionStart => 'Boshlash';

  @override
  String get actionStop => 'Toʻxtatish';

  @override
  String get actionComplete => 'Yakunlash';

  @override
  String get actionDeleteForever => 'Butunlay oʻchirish';

  @override
  String get actionEmptyTrash => 'Savatni boʻshatish';

  @override
  String get actionUnlink => 'Aloqani uzish';

  @override
  String get actionCustomize => 'Moslash';

  @override
  String get actionPreview => 'Oldindan koʻrish';

  @override
  String get actionLog => 'Natijani yozish';

  @override
  String get stateLoading => 'Yuklanmoqda…';

  @override
  String get stateSaving => 'Saqlanmoqda…';

  @override
  String get stateSaved => 'Saqlandi';

  @override
  String get stateUnsaved => 'Saqlanmagan oʻzgarishlar';

  @override
  String get errorGenericTitle => 'Nimadir xato ketdi';

  @override
  String get errorGenericMessage => 'Maʼlumotlaringiz xavfsiz. Qayta urinib koʻring.';

  @override
  String get errorLoadFailed => 'Bu kontentni yuklab boʻlmadi.';

  @override
  String get errorSaveFailed => 'Saqlab boʻlmadi. Oʻzgarishlaringiz hali shu yerda.';

  @override
  String get validationRequired => 'Bu maydon majburiy';

  @override
  String get validationTitleRequired => 'Sarlavha kiriting';

  @override
  String get validationNameRequired => 'Nom kiriting';

  @override
  String get validationTooLong => 'Bu juda uzun';

  @override
  String get validationEndBeforeStart => 'Tugash vaqti boshlanishdan keyin boʻlishi kerak';

  @override
  String get validationStartAfterDue => 'Boshlanish sanasi muddatdan oldin boʻlishi kerak';

  @override
  String get validationPositiveNumber => 'Noldan katta son kiriting';

  @override
  String get validationDependencyCycle => 'Bu aylanma bogʻliqlik hosil qiladi';

  @override
  String get validationInvalidRepeat => 'Bu takrorlash qoidasi yaroqsiz';

  @override
  String get deletedItem => 'Savatga koʻchirildi';

  @override
  String get untitled => 'Nomsiz';

  @override
  String get noProject => 'Loyihasiz';

  @override
  String get greetingMorning => 'Xayrli tong';

  @override
  String get greetingAfternoon => 'Xayrli kun';

  @override
  String get greetingEvening => 'Xayrli kech';

  @override
  String get dashFocusToday => 'Bugungi diqqat';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Diqqatni boshlash';

  @override
  String get dashFocusRunning => 'Seans davom etmoqda';

  @override
  String get dashTodayTasks => 'Muddati bugun';

  @override
  String get dashAgenda => 'Kun tartibi';

  @override
  String get dashHabits => 'Bugungi odatlar';

  @override
  String get dashGoals => 'Maqsadlar';

  @override
  String get dashReview => 'Takrorlash';

  @override
  String get dashRecentNotes => 'Soʻnggi qaydlar';

  @override
  String get dashInsight => 'Tavsiya';

  @override
  String get dashSeeAll => 'Hammasini koʻrish';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Takrorlash uchun $count ta kartochka',
      one: 'Takrorlash uchun 1 ta kartochka',
      zero: 'Takrorlanadigan kartochka yoʻq',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Hozir takrorlash';

  @override
  String get dashCustomizeTitle => 'Bosh sahifa qismlari';

  @override
  String get dashCustomizeHint => 'Bosh ekranda nima koʻrinishini tanlang.';

  @override
  String get dashSectionFocus => 'Diqqat';

  @override
  String get dashSectionToday => 'Muddati bugungi vazifalar';

  @override
  String get dashSectionAgenda => 'Kun tartibi';

  @override
  String get dashSectionHabits => 'Odatlar';

  @override
  String get dashSectionGoals => 'Maqsadlar';

  @override
  String get dashSectionReview => 'Kartochkalarni takrorlash';

  @override
  String get dashSectionNotes => 'Soʻnggi qaydlar';

  @override
  String get dashSectionInsight => 'Tavsiyalar';

  @override
  String get quickAddTask => 'Yangi vazifa';

  @override
  String get quickAddNote => 'Yangi qayd';

  @override
  String get quickAddEvent => 'Yangi tadbir';

  @override
  String get quickStartFocus => 'Diqqat';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sizda $count ta muddati oʻtgan vazifa bor. Eng muhimidan boshlang.',
      one: 'Sizda 1 ta muddati oʻtgan vazifa bor. Uni qayta rejalang yoki avval tugating.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Kunlik diqqat maqsadingizga $minutes daqiqa qoldi.';
  }

  @override
  String get insightCardsDue => 'Kartochkalarni hozir, xotirangizda yangi turganda takrorlang.';

  @override
  String get insightAllClear =>
      'Hammasi reja boʻyicha. Ertangi kunni rejalang yoki ongli tanaffus qiling.';

  @override
  String insightHabitStreak(String habit) {
    return 'Ketma-ketlikni saqlang: «$habit» bugun hali bajarilmadi.';
  }

  @override
  String get focusTitle => 'Diqqat';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Taymer';

  @override
  String get focusModeCountUp => 'Sekundomer';

  @override
  String get focusModeOpen => 'Erkin';

  @override
  String get focusPhaseWork => 'Diqqat';

  @override
  String get focusPhaseShortBreak => 'Qisqa tanaffus';

  @override
  String get focusPhaseLongBreak => 'Uzun tanaffus';

  @override
  String get focusReady => 'Tayyor boʻlganingizda';

  @override
  String get focusPaused => 'Pauzada';

  @override
  String get focusRunning => 'Diqqatda';

  @override
  String get focusDuration => 'Davomiylik';

  @override
  String get focusLinkTask => 'Vazifani bogʻlash';

  @override
  String get focusLinkedTask => 'Ustida ishlanmoqda';

  @override
  String get focusNoTask => 'Bogʻlangan vazifa yoʻq';

  @override
  String focusCycle(int current, int total) {
    return '$current/$total-sikl';
  }

  @override
  String get focusSkipBreak => 'Tanaffusni oʻtkazib yuborish';

  @override
  String get focusStartBreak => 'Tanaffusni boshlash';

  @override
  String get focusStartNext => 'Keyingi diqqatni boshlash';

  @override
  String get focusSessionComplete => 'Seans yakunlandi';

  @override
  String get focusSessionStopped => 'Seans saqlandi';

  @override
  String focusSessionSummary(String duration) {
    return 'Siz $duration diqqat qildingiz.';
  }

  @override
  String get focusAddNote => 'Bu seans haqida qayd qoʻshing';

  @override
  String get focusHistory => 'Tarix';

  @override
  String get focusNoHistory => 'Yakunlangan seanslar shu yerda koʻrinadi';

  @override
  String get focusOutcomeCompleted => 'Yakunlangan';

  @override
  String get focusOutcomeInterrupted => 'Erta toʻxtatilgan';

  @override
  String get focusRecovered => 'Ilova yopiq paytda seansingiz davom etdi.';

  @override
  String get focusCompletedWhileAway => 'Ilova yopiq paytda seans tugadi va saqlandi.';

  @override
  String get focusNotificationsOff =>
      'Bildirishnomalar oʻchiq. Seans tugaganda ogohlantirish olmaysiz.';

  @override
  String get focusBatteryHint =>
      'Baʼzi qurilmalar ilovalarni fonda toʻxtatib qoʻyadi. Taymer aniq qoladi, lekin ogohlantirishlar kechikishi mumkin. Ishonchli ogohlantirishlar uchun batareyadan cheklovsiz foydalanishga ruxsat bering.';

  @override
  String get focusOpenSettings => 'Sozlamalarni ochish';

  @override
  String get focusStopConfirmTitle => 'Bu seans toʻxtatilsinmi?';

  @override
  String get focusStopConfirmMessage => 'Hozirgacha boʻlgan diqqat vaqti saqlanadi.';

  @override
  String get focusDiscard => 'Bekor qilish';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes daqiqa',
      one: '1 daqiqa',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time qoldi';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time oʻtdi';
  }

  @override
  String get focusDeleteSession => 'Seansni oʻchirish';

  @override
  String get tasksTitle => 'Vazifalar';

  @override
  String get tasksViewToday => 'Bugun';

  @override
  String get tasksViewUpcoming => 'Kelgusi';

  @override
  String get tasksViewAll => 'Hammasi';

  @override
  String get tasksViewOverdue => 'Muddati oʻtgan';

  @override
  String get tasksViewCompleted => 'Bajarilgan';

  @override
  String get tasksQuickAddHint => 'Vazifa qoʻshing…';

  @override
  String get tasksEmptyTitle => 'Hammasi bajarildi';

  @override
  String get tasksEmptyMessage => 'Kuningizni shakllantirishni boshlash uchun vazifa qoʻshing.';

  @override
  String get tasksEmptyCompleted => 'Bajarilgan vazifalar shu yerda koʻrinadi.';

  @override
  String get taskNew => 'Yangi vazifa';

  @override
  String get taskEdit => 'Vazifani tahrirlash';

  @override
  String get taskTitleLabel => 'Sarlavha';

  @override
  String get taskTitleHint => 'Nima qilish kerak?';

  @override
  String get taskDescriptionLabel => 'Tavsif';

  @override
  String get taskNotesLabel => 'Qaydlar';

  @override
  String get taskPriority => 'Muhimlik';

  @override
  String get priorityNone => 'Yoʻq';

  @override
  String get priorityLow => 'Past';

  @override
  String get priorityMedium => 'Oʻrta';

  @override
  String get priorityHigh => 'Yuqori';

  @override
  String get priorityUrgent => 'Shoshilinch';

  @override
  String get taskDueDate => 'Muddat';

  @override
  String get taskStartDate => 'Boshlanish sanasi';

  @override
  String get taskReminder => 'Eslatma';

  @override
  String get taskRepeat => 'Takrorlash';

  @override
  String get taskProject => 'Loyiha';

  @override
  String get taskCategory => 'Turkum';

  @override
  String get taskCategoryHint => 'masalan, Ish, Uy, Oʻqish';

  @override
  String get taskEstimateMinutes => 'Taxminiy vaqt (daqiqa)';

  @override
  String get taskTracked => 'Oʻlchangan diqqat';

  @override
  String get taskLabels => 'Teglar';

  @override
  String get taskAddLabel => 'Yangi teg';

  @override
  String get taskChecklist => 'Nazorat roʻyxati';

  @override
  String get taskAddChecklistItem => 'Band qoʻshish';

  @override
  String get taskSubtasks => 'Kichik vazifalar';

  @override
  String get taskAddSubtask => 'Kichik vazifa qoʻshish';

  @override
  String get taskDependencies => 'Toʻsib turgan';

  @override
  String get taskAddDependency => 'Toʻsuvchi vazifa qoʻshish';

  @override
  String get taskLinkedNotes => 'Bogʻlangan qaydlar';

  @override
  String get taskSetTime => 'Vaqtni belgilash';

  @override
  String get taskNoDate => 'Sana yoʻq';

  @override
  String get taskCompleted => 'Vazifa bajarildi';

  @override
  String get taskNextOccurrence => 'Keyingi takror yaratildi';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days kun kechikdi',
      one: '1 kun kechikdi',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '«$title» bajarildi deb belgilash';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '«$title» bajarilmadi deb belgilash';
  }

  @override
  String get sortSmart => 'Aqlli';

  @override
  String get sortDueDate => 'Muddat';

  @override
  String get sortPriority => 'Muhimlik';

  @override
  String get sortCreated => 'Eng yangilari';

  @override
  String get sortTitle => 'Sarlavha';

  @override
  String get filterAllProjects => 'Barcha loyihalar';

  @override
  String get filterAnyPriority => 'Istalgan muhimlik';

  @override
  String get filterTitle => 'Filtrlash va saralash';

  @override
  String get dateToday => 'Bugun';

  @override
  String get dateTomorrow => 'Ertaga';

  @override
  String get dateYesterday => 'Kecha';

  @override
  String get repeatNever => 'Takrorlanmaydi';

  @override
  String get repeatDaily => 'Har kuni';

  @override
  String get repeatWeekdays => 'Har ish kuni';

  @override
  String get repeatWeekly => 'Har hafta';

  @override
  String get repeatMonthly => 'Har oy';

  @override
  String get repeatYearly => 'Har yili';

  @override
  String get repeatCustom => 'Moslashtirilgan';

  @override
  String get repeatEvery => 'Takrorlash: har';

  @override
  String get repeatOnDays => 'Kunlarda';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'kun', one: 'kun');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'hafta', one: 'hafta');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'oy', one: 'oy');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'yil', one: 'yil');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count martadan',
      one: '1 martadan',
    );
    return '$_temp0 keyin tugaydi';
  }

  @override
  String get repeatEndsNever => 'Hech qachon tugamaydi';

  @override
  String get reminderAtTime => 'Tadbir vaqtida';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes daqiqa oldin',
      one: '1 daqiqa oldin',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours soat oldin',
      one: '1 soat oldin',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 kun oldin';

  @override
  String get projectsTitle => 'Loyihalar';

  @override
  String get projectsEmptyTitle => 'Hali loyihalar yoʻq';

  @override
  String get projectsEmptyMessage => 'Bogʻliq vazifalar, qaydlar va diqqat vaqtini guruhlang.';

  @override
  String get projectNew => 'Yangi loyiha';

  @override
  String get projectEdit => 'Loyihani tahrirlash';

  @override
  String get projectName => 'Nomi';

  @override
  String get projectDescription => 'Tavsif';

  @override
  String get projectGoal => 'Maqsad';

  @override
  String get projectDeadline => 'Soʻnggi muddat';

  @override
  String get projectColor => 'Rang';

  @override
  String get projectIcon => 'Belgi';

  @override
  String get projectProgress => 'Jarayon';

  @override
  String projectTasksDone(int done, int total) {
    return '$total ta vazifadan $done tasi bajarildi';
  }

  @override
  String get projectFocusTime => 'Diqqat vaqti';

  @override
  String get projectArchived => 'Arxivlangan loyihalar';

  @override
  String get projectShowArchived => 'Arxivlanganlarni koʻrsatish';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days kun qoldi',
      one: '1 kun qoldi',
      zero: 'Muddati bugun',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Muddat oʻtdi';

  @override
  String get calendarTitle => 'Taqvim';

  @override
  String get calendarMonth => 'Oy';

  @override
  String get calendarWeek => 'Hafta';

  @override
  String get calendarDay => 'Kun';

  @override
  String get calendarToday => 'Bugun';

  @override
  String get calendarPrevious => 'Oldingi';

  @override
  String get calendarNext => 'Keyingi';

  @override
  String get calendarNoEvents => 'Hech narsa rejalashtirilmagan';

  @override
  String get calendarAllDay => 'Kun boʻyi';

  @override
  String get eventNew => 'Yangi tadbir';

  @override
  String get eventEdit => 'Tadbirni tahrirlash';

  @override
  String get eventTitleHint => 'Tadbir nomi';

  @override
  String get eventStarts => 'Boshlanadi';

  @override
  String get eventEnds => 'Tugaydi';

  @override
  String get eventKind => 'Turi';

  @override
  String get eventKindEvent => 'Tadbir';

  @override
  String get eventKindTimeBlock => 'Vaqt bloki';

  @override
  String get eventKindFocus => 'Diqqat seansi';

  @override
  String get eventKindGoal => 'Shaxsiy maqsad';

  @override
  String get eventDescription => 'Tafsilotlar';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta tadbir bilan ustma-ust tushadi',
      one: '1 ta tadbir bilan ustma-ust tushadi',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Bu kunda jadval toʻqnashuvlari bor';

  @override
  String get calendarTaskDue => 'Vazifa muddati';

  @override
  String get calendarDragHint => 'Tadbirni boshqa vaqtga koʻchirish uchun bosib turing va suring';

  @override
  String get calendarRescheduled => 'Tadbir koʻchirildi';

  @override
  String get calendarScheduleTask => 'Vaqt bloki sifatida rejalash';

  @override
  String get notesTitle => 'Qaydlar';

  @override
  String get notesViewAll => 'Hammasi';

  @override
  String get notesViewPinned => 'Qadalgan';

  @override
  String get notesViewFavorites => 'Sevimlilar';

  @override
  String get notesViewArchived => 'Arxivlangan';

  @override
  String get notesTags => 'Teglar';

  @override
  String get notesNewNotebook => 'Yangi daftar';

  @override
  String get notesNoNotebook => 'Daftarsiz';

  @override
  String get notesEmptyTitle => 'Toza varaq';

  @override
  String get notesEmptyMessage => 'Gʻoyalar, uchrashuv qaydlari va bilimlarni yozib oling.';

  @override
  String get noteTitleHint => 'Sarlavha';

  @override
  String get noteBodyHint =>
      'Yozishni boshlang… Teglar uchun # va qaydlarni bogʻlash uchun [[Sarlavha]] dan foydalaning.';

  @override
  String get noteFavorite => 'Sevimli';

  @override
  String get noteUnfavorite => 'Sevimlilardan olib tashlash';

  @override
  String get noteMoveTo => 'Daftarga koʻchirish';

  @override
  String get noteBacklinks => 'Bogʻlanganlar';

  @override
  String get noteLinkedTasks => 'Bogʻlangan vazifalar';

  @override
  String get noteLinkTask => 'Vazifani bogʻlash';

  @override
  String get noteLinkProject => 'Loyiha';

  @override
  String get noteFormatHeading => 'Sarlavha';

  @override
  String get noteFormatBold => 'Qalin';

  @override
  String get noteFormatItalic => 'Kursiv';

  @override
  String get noteFormatList => 'Belgili roʻyxat';

  @override
  String get noteFormatChecklist => 'Nazorat roʻyxati';

  @override
  String get noteFormatLink => 'Havola';

  @override
  String noteEdited(String time) {
    return 'Tahrirlangan: $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count soʻz',
      one: '1 soʻz',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kartochkalar';

  @override
  String get flashEmptyTitle => 'Birinchi toʻplamingizni yarating';

  @override
  String get flashEmptyMessage =>
      'Oraliqli takrorlash har bir kartochkani siz uni unutishingizdan sal oldin koʻrsatadi.';

  @override
  String get deckNew => 'Yangi toʻplam';

  @override
  String get deckEdit => 'Toʻplamni tahrirlash';

  @override
  String get deckName => 'Toʻplam nomi';

  @override
  String get deckDescription => 'Tavsif';

  @override
  String get deckDailyNew => 'Kuniga yangi kartochkalar';

  @override
  String get deckDailyReview => 'Kunlik takrorlash marrasi';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta kartochka',
      one: '1 ta kartochka',
      zero: 'Kartochka yoʻq',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Takrorlash kerak';

  @override
  String get deckNewCards => 'Yangi';

  @override
  String get deckMature => 'Oʻzlashtirilgan';

  @override
  String get deckStudy => 'Oʻrganish';

  @override
  String get deckNothingDue => 'Hozir takrorlanadigan narsa yoʻq. Keyinroq qayting.';

  @override
  String get deckEmptyCards => 'Oʻrganishni boshlash uchun kartochkalar qoʻshing.';

  @override
  String get cardNew => 'Yangi kartochka';

  @override
  String get cardEdit => 'Kartochkani tahrirlash';

  @override
  String get cardFront => 'Old tomoni';

  @override
  String get cardBack => 'Orqa tomoni';

  @override
  String get cardFrontHint => 'Savol yoki atama';

  @override
  String get cardBackHint => 'Javob yoki taʼrif';

  @override
  String get cardTags => 'Teglar';

  @override
  String get cardAddAnother => 'Saqlash va yana qoʻshish';

  @override
  String get reviewShowAnswer => 'Javobni koʻrsatish';

  @override
  String get reviewAgain => 'Yana';

  @override
  String get reviewHard => 'Qiyin';

  @override
  String get reviewGood => 'Yaxshi';

  @override
  String get reviewEasy => 'Oson';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => 'Seans yakunlandi';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Siz $count ta kartochkani takrorladingiz.',
      one: 'Siz 1 ta kartochkani takrorladingiz.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Javobni koʻrish uchun bosing';

  @override
  String get importCardsTitle => 'Kartochkalarni import qilish';

  @override
  String get importCardsHint =>
      'Har qatorga bitta kartochka joylang (old va orqa tomoni tab yoki nuqtali vergul bilan ajratiladi) yoki fayl tanlang: Excel (.xlsx), CSV, Anki toʻplami (.apkg) yoki eksport qilingan toʻplam.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta kartochka import qilindi',
      one: '1 ta kartochka import qilindi',
      zero: 'Hech qanday kartochka import qilinmadi',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Bu kontentni import qilib boʻlmadi.';

  @override
  String get exportCopied => 'Toʻplam eksport qilindi';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count daq',
      one: '1 daq',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kun',
      one: '1 kun',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Maqsadlar';

  @override
  String get goalsEmptyTitle => 'Biror narsaga intiling';

  @override
  String get goalsEmptyMessage =>
      'Kunlik, haftalik, oylik yoki uzoq muddatli maqsadlar qoʻying va haqiqiy natijani kuzating.';

  @override
  String get goalNew => 'Yangi maqsad';

  @override
  String get goalEdit => 'Maqsadni tahrirlash';

  @override
  String get goalTitleHint => 'Nimaga erishmoqchisiz?';

  @override
  String get goalPeriod => 'Davr';

  @override
  String get goalPeriodDaily => 'Kunlik';

  @override
  String get goalPeriodWeekly => 'Haftalik';

  @override
  String get goalPeriodMonthly => 'Oylik';

  @override
  String get goalPeriodLongTerm => 'Uzoq muddatli';

  @override
  String get goalTarget => 'Marra';

  @override
  String get goalUnit => 'Birlik';

  @override
  String get goalUnitHint => 'masalan, sahifa, km, soat';

  @override
  String get goalStatusActive => 'Faol';

  @override
  String get goalStatusPaused => 'Pauzada';

  @override
  String get goalStatusAchieved => 'Erishildi';

  @override
  String get goalPause => 'Maqsadni pauzaga qoʻyish';

  @override
  String get goalResume => 'Maqsadni davom ettirish';

  @override
  String get goalMarkAchieved => 'Erishildi deb belgilash';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => 'Miqdor';

  @override
  String get goalLogNote => 'Qayd (ixtiyoriy)';

  @override
  String get goalHistory => 'Tarix';

  @override
  String get goalNoHistory => 'Yozilgan natijalar shu yerda koʻrinadi';

  @override
  String get goalLinkedTasks => 'Bogʻlangan vazifalar';

  @override
  String get goalLinkedTasksHint =>
      'Har bir bajarilgan bogʻlangan vazifa bu maqsad uchun 1 deb hisoblanadi.';

  @override
  String get goalThisPeriod => 'Shu davr';

  @override
  String get habitsTitle => 'Odatlar';

  @override
  String get habitsEmptyTitle => 'Har kuni kichik qadamlar';

  @override
  String get habitsEmptyMessage => 'Odat yarating va uni bajarganingizda belgilang.';

  @override
  String get habitNew => 'Yangi odat';

  @override
  String get habitEdit => 'Odatni tahrirlash';

  @override
  String get habitNameHint => 'masalan, 20 sahifa oʻqish';

  @override
  String get habitDays => 'Jadval';

  @override
  String get habitEveryDay => 'Har kuni';

  @override
  String get habitTargetPerDay => 'Kuniga necha marta';

  @override
  String get habitReminder => 'Kunlik eslatma';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kunlik ketma-ketlik',
      one: '1 kunlik ketma-ketlik',
      zero: 'Ketma-ketlik yoʻq',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Eng yaxshi ketma-ketlik';

  @override
  String get habitCurrentStreak => 'Joriy ketma-ketlik';

  @override
  String get habitConsistency => 'Barqarorlik';

  @override
  String get habitLast90 => 'Soʻnggi 90 kun';

  @override
  String get habitPaused => 'Pauzada';

  @override
  String get habitPause => 'Odatni pauzaga qoʻyish';

  @override
  String get habitResume => 'Odatni davom ettirish';

  @override
  String get habitDoneToday => 'Bugun bajarildi';

  @override
  String habitCountToday(int count, int target) {
    return 'Bugun $count / $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '«$name» ni belgilash';
  }

  @override
  String get habitNotScheduledToday => 'Bugun rejalashtirilmagan';

  @override
  String get analyticsTitle => 'Tahlil';

  @override
  String get rangeWeek => '7 kun';

  @override
  String get rangeMonth => '30 kun';

  @override
  String get rangeQuarter => '90 kun';

  @override
  String get statFocusTime => 'Diqqat vaqti';

  @override
  String get statSessions => 'Seanslar';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed ta yakunlangan · $interrupted ta erta toʻxtatilgan';
  }

  @override
  String get statTasksDone => 'Bajarilgan vazifalar';

  @override
  String get statCompletionRate => 'Oʻz vaqtida bajarish';

  @override
  String get statHabitConsistency => 'Odatlar barqarorligi';

  @override
  String get statRetention => 'Kartochkalarni eslab qolish';

  @override
  String get statReviews => 'Takrorlashlar';

  @override
  String get statActiveGoals => 'Faol maqsadlar';

  @override
  String get statEstimated => 'Taxminiy bajarilgan ish';

  @override
  String get statEstimatedNote => 'Oʻlchangan vaqt emas, taxminlaringiz asosida';

  @override
  String get statMeasuredNote => 'Diqqat seanslaridan oʻlchangan';

  @override
  String get chartFocusByDay => 'Kuniga diqqat daqiqalari';

  @override
  String get chartTasksByDay => 'Kuniga bajarilgan vazifalar';

  @override
  String get chartTimeByProject => 'Loyiha boʻyicha vaqt';

  @override
  String get chartProjectProgress => 'Loyihalar jarayoni';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: jami $total, eng yaxshi kun $best';
  }

  @override
  String get analyticsNoData => 'Hozircha maʼlumot yetarli emas';

  @override
  String get analyticsUnassigned => 'Biriktirilmagan';

  @override
  String get searchHint => 'Hamma joydan qidirish…';

  @override
  String get searchRecent => 'Soʻnggi qidiruvlar';

  @override
  String get searchClearRecent => 'Soʻnggi qidiruvlarni tozalash';

  @override
  String searchNoResults(String query) {
    return '«$query» boʻyicha natija yoʻq';
  }

  @override
  String get searchStartTyping =>
      'Vazifalar, qaydlar, kartochkalar, maqsadlar, tadbirlar va boshqalardan qidiring. Qidiruv shu qurilmada qoladi.';

  @override
  String get searchCatTask => 'Vazifalar';

  @override
  String get searchCatProject => 'Loyihalar';

  @override
  String get searchCatNote => 'Qaydlar';

  @override
  String get searchCatFlashcard => 'Kartochkalar';

  @override
  String get searchCatDeck => 'Toʻplamlar';

  @override
  String get searchCatGoal => 'Maqsadlar';

  @override
  String get searchCatHabit => 'Odatlar';

  @override
  String get searchCatEvent => 'Tadbirlar';

  @override
  String get searchCatSession => 'Seanslar';

  @override
  String get searchAll => 'Hammasi';

  @override
  String get assistantTitle => 'Yordamchi';

  @override
  String get assistantIntro =>
      'Qurilmangizda ishlaydigan rejalashtirish yordami. Xohlasangiz, xulosa va matn yaratish uchun oʻzingiz tanlagan SI provayderini ulang.';

  @override
  String get assistantOnDevice => 'Qurilmada';

  @override
  String get assistantCloud => 'SI provayderi';

  @override
  String get assistantPlanDay => 'Kunimni rejalash';

  @override
  String get assistantPlanDayDesc =>
      'Ochiq vazifalarni shoshilinchlik, muhimlik va taxmin boʻyicha tartiblaydi va tadbirlaringiz orasiga joylaydi.';

  @override
  String get assistantExtractTasks => 'Qayddan vazifalarni ajratish';

  @override
  String get assistantExtractTasksDesc =>
      'Qayddagi nazorat roʻyxati bandlari va harakat qatorlarini topib, vazifalarga aylantiradi.';

  @override
  String get assistantMakeCards => 'Qayddan kartochkalar yaratish';

  @override
  String get assistantMakeCardsDesc =>
      '«atama: taʼrif» va savol/javob qatorlarini kartochkalarga aylantiradi.';

  @override
  String get assistantSummarize => 'Qaydni xulosalash';

  @override
  String get assistantSummarizeDesc =>
      'SI provayderi kerak. Qayd faqat siz tasdiqlaganingizdan keyin yuboriladi.';

  @override
  String get assistantWorkload => 'Ish yukiga umumiy nazar';

  @override
  String get assistantWorkloadDesc =>
      'Taxminiy ishni shu haftadagi boʻsh vaqtingiz bilan solishtiradi.';

  @override
  String get assistantPlanEmpty =>
      'Rejalashtiriladigan ochiq vazifa yoʻq. Boʻsh vaqtdan bahra oling.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Bugungi boʻsh diqqat vaqti: $time';
  }

  @override
  String get assistantPlanOverflow => 'Bular bugun sigʻmasligi mumkin:';

  @override
  String get assistantChooseNote => 'Qayd tanlang';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta vazifa topildi',
      one: '1 ta vazifa topildi',
      zero: 'Bu qaydda vazifa topilmadi',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta kartochka topildi',
      one: '1 ta kartochka topildi',
      zero: 'Bu qaydda kartochka topilmadi',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Toʻplam tanlang';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Taxminiy ish: $estimated. Boʻsh vaqt: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Mavjud vaqtdan koʻproq rejalashtirdingiz. Muhimligi past vazifalarni koʻchirishni oʻylab koʻring.';

  @override
  String get assistantWorkloadOk => 'Rejangiz mavjud vaqtga sigʻadi.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta ochiq vazifaning taxmini yoʻq.',
      one: '1 ta ochiq vazifaning taxmini yoʻq.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'SI provayderi';

  @override
  String get assistantProviderOff =>
      'Provayder ulanmagan. Qurilmadagi vositalar ishlashda davom etadi.';

  @override
  String assistantProviderOn(String host) {
    return '$host ga ulangan';
  }

  @override
  String get assistantEndpoint => 'API manzili (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'API kaliti';

  @override
  String get assistantApiKeyStored => 'Bu qurilmada xavfsiz saqlanadi';

  @override
  String get assistantHttpsOnly => 'Faqat HTTPS manzillariga ruxsat beriladi';

  @override
  String get assistantConsentTitle => 'Bu kontent SI provayderingizga yuborilsinmi?';

  @override
  String assistantConsentBody(String host) {
    return 'Tanlangan qayd matni bu qurilmadan chiqadi va $host tomonidan qayta ishlanadi. Boshqa hech narsa yuborilmaydi.';
  }

  @override
  String get assistantConsentAlways => 'Bu provayder uchun boshqa soʻramaslik';

  @override
  String get assistantSend => 'Yuborish';

  @override
  String get assistantUnavailable =>
      'SI provayderiga ulanib boʻlmadi. Keyinroq qayta urinib koʻring.';

  @override
  String get assistantDisabledTitle => 'Yordamchi oʻchiq';

  @override
  String get assistantDisabledMessage =>
      'Rejalashtirish vositalaridan foydalanish uchun uni yoqing. Provayder ulamasangiz va har bir soʻrovni tasdiqlamasangiz, hech qanday maʼlumot qurilmadan chiqmaydi.';

  @override
  String get assistantSummaryTitle => 'Xulosa';

  @override
  String get assistantRemoveProvider => 'Provayderni olib tashlash';

  @override
  String get settingsTitle => 'Sozlamalar';

  @override
  String get settingsGeneral => 'Umumiy';

  @override
  String get settingsLanguage => 'Til';

  @override
  String get settingsLanguageSystem => 'Qurilma tili';

  @override
  String get settingsAppearance => 'Koʻrinish';

  @override
  String get settingsTheme => 'Mavzu';

  @override
  String get themeLight => 'Yorugʻ';

  @override
  String get themeDark => 'Qorongʻi';

  @override
  String get themeSystem => 'Tizim';

  @override
  String get settingsReduceMotion => 'Harakatni kamaytirish';

  @override
  String get settingsReduceMotionDesc => 'Animatsiyalar va harakatlanuvchi fonlarni kamaytirish';

  @override
  String get settingsFocus => 'Diqqat taymeri';

  @override
  String get settingsWorkLength => 'Diqqat davomiyligi';

  @override
  String get settingsShortBreak => 'Qisqa tanaffus';

  @override
  String get settingsLongBreak => 'Uzun tanaffus';

  @override
  String get settingsLongBreakEvery => 'Uzun tanaffus shundan keyin';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta seans',
      one: '1 ta seans',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Tanaffuslarni avtomatik boshlash';

  @override
  String get settingsSound => 'Yakunlash ovozi';

  @override
  String get settingsDailyFocusTarget => 'Kunlik diqqat marrasi';

  @override
  String get settingsWeeklyFocusTarget => 'Haftalik diqqat marrasi';

  @override
  String get settingsNotifications => 'Bildirishnomalar';

  @override
  String get settingsNotificationsEnable => 'Eslatmalarga ruxsat berish';

  @override
  String get settingsQuietHours => 'Sokin soatlar';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Odat, maqsad va takrorlash eslatmalari $start–$end oraligʻida ovozsiz';
  }

  @override
  String get settingsReviewReminder => 'Kartochka takrorlash eslatmasi';

  @override
  String get settingsPermissionDenied => 'Bildirishnomalar tizim sozlamalarida bloklangan.';

  @override
  String get settingsPrivacy => 'Maxfiylik va maʼlumotlar';

  @override
  String get settingsPrivacyStatement =>
      'Maʼlumotlaringiz faqat shu qurilmada saqlanadi va shifrlangan. Hisob, tahlil va kuzatuv yoʻq.';

  @override
  String get settingsBackup => 'Shifrlangan zaxira nusxa yaratish';

  @override
  String get settingsBackupDesc => 'Oʻzingiz tanlagan parol bilan himoyalangan';

  @override
  String get settingsRestore => 'Zaxira nusxadan tiklash';

  @override
  String get settingsRestoreDesc => 'Bu qurilmadagi barcha maʼlumotlarni almashtiradi';

  @override
  String get settingsErase => 'Barcha maʼlumotlarni oʻchirish';

  @override
  String get settingsEraseDesc => 'Bu qurilmadagi hamma narsani butunlay oʻchirish';

  @override
  String get settingsEraseConfirmTitle => 'Barcha maʼlumotlar oʻchirilsinmi?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Barcha vazifalar, qaydlar, kartochkalar, maqsadlar, odatlar, tadbirlar va seanslar butunlay oʻchiriladi. Tasdiqlash uchun $word deb yozing.';
  }

  @override
  String get settingsEraseWord => 'OʻCHIRISH';

  @override
  String get settingsErased => 'Barcha maʼlumotlar oʻchirildi';

  @override
  String get backupPassword => 'Zaxira nusxa paroli';

  @override
  String get backupPasswordConfirm => 'Parolni tasdiqlang';

  @override
  String backupPasswordHint(int count) {
    return 'Kamida $count ta belgi. Yoʻqolsa, tiklab boʻlmaydi.';
  }

  @override
  String get backupPasswordMismatch => 'Parollar mos emas';

  @override
  String get backupPasswordShort => 'Parol juda qisqa';

  @override
  String get backupCreating => 'Zaxira nusxa shifrlanmoqda…';

  @override
  String get backupCreated => 'Zaxira nusxa saqlashga tayyor';

  @override
  String get backupRestoring => 'Tekshirilmoqda va tiklanmoqda…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta element tiklandi',
      one: '1 ta element tiklandi',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Parol notoʻgʻri yoki fayl oʻzgartirilgan.';

  @override
  String get backupNotABackup => 'Bu fayl Deep Focus zaxira nusxasi emas.';

  @override
  String get backupCorrupted => 'Zaxira nusxa fayli shikastlangan.';

  @override
  String get backupNewer =>
      'Bu zaxira nusxa ilovaning yangiroq versiyasida yaratilgan. Avval ilovani yangilang.';

  @override
  String get backupRestoreConfirmTitle => 'Barcha maʼlumotlar almashtirilsinmi?';

  @override
  String get backupRestoreConfirmBody =>
      'Hozir bu qurilmada boʻlgan hamma narsa zaxira nusxa bilan almashtiriladi. Tiklash muvaffaqiyatsiz boʻlsa, hech narsa oʻzgarmaydi.';

  @override
  String get settingsAbout => 'Ilova haqida';

  @override
  String settingsVersion(String version) {
    return 'Versiya $version';
  }

  @override
  String get settingsLicenses => 'Ochiq kodli litsenziyalar';

  @override
  String get settingsAssistant => 'Yordamchi';

  @override
  String get settingsAssistantEnable => 'Yordamchini yoqish';

  @override
  String get settingsDashboard => 'Bosh sahifa qismlari';

  @override
  String get settingsTrash => 'Savat';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes daq';
  }

  @override
  String get trashEmpty => 'Savat boʻsh';

  @override
  String get trashHint =>
      'Oʻchirilgan elementlar siz ularni olib tashlamaguningizcha shu yerda qoladi.';

  @override
  String get trashTasks => 'Vazifalar';

  @override
  String get trashNotes => 'Qaydlar';

  @override
  String get onboardWelcomeTitle => 'Kelajak ish joyingizga xush kelibsiz';

  @override
  String get onboardWelcomeBody =>
      'Vazifalar, diqqat, taqvim, qaydlar, kartochkalar, maqsadlar va odatlar — birgalikda, chiroyli va oddiy.';

  @override
  String get onboardPrivateTitle => 'Tabiatan maxfiy';

  @override
  String get onboardPrivateBody =>
      'Hamma narsa shu qurilmada, shifrlangan holda qoladi. Hisob yoʻq. Kuzatuv yoʻq. Nazorat sizda.';

  @override
  String get onboardLanguageTitle => 'Tilni tanlang';

  @override
  String get onboardNotifTitle => 'Yumshoq eslatmalar';

  @override
  String get onboardNotifBody =>
      'Vazifa eslatmalari va diqqat ogohlantirishlari uchun bildirishnomalarga ruxsat bering. Buni istalgan vaqtda oʻzgartirishingiz mumkin.';

  @override
  String get onboardGetStarted => 'Boshlash';

  @override
  String onboardStep(int current, int total) {
    return '$total qadamdan $current-qadam';
  }

  @override
  String get notifChannelReminders => 'Eslatmalar';

  @override
  String get notifChannelRemindersDesc => 'Vazifa, tadbir, odat va maqsad eslatmalari';

  @override
  String get notifChannelFocus => 'Diqqat taymeri';

  @override
  String get notifChannelFocusDesc => 'Diqqat seansi yoki tanaffus tugaganda ogohlantirishlar';

  @override
  String get notifTaskTitle => 'Vazifa eslatmasi';

  @override
  String get notifEventTitle => 'Yaqinlashayotgan tadbir';

  @override
  String notifEventBody(String title, String time) {
    return '$title, soat $time';
  }

  @override
  String get notifFocusDoneTitle => 'Diqqat seansi yakunlandi';

  @override
  String get notifFocusDoneBody => 'Ajoyib ish. Tanaffus vaqti.';

  @override
  String get notifBreakDoneTitle => 'Tanaffus tugadi';

  @override
  String get notifBreakDoneBody => 'Keyingi diqqat seansiga tayyormisiz?';

  @override
  String get notifHabitTitle => 'Odat eslatmasi';

  @override
  String get notifReviewTitle => 'Kartochkalar tayyor';

  @override
  String get notifReviewBody => 'Qisqa takrorlash xotirangizni mustahkamlaydi.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours soat $minutes daq';
  }

  @override
  String durationHours(int hours) {
    return '$hours soat';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes daq';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'Du,Se,Ch,Pa,Ju,Sh,Ya';

  @override
  String a11yProgress(int value) {
    return 'Jarayon $value foiz';
  }

  @override
  String a11yPriority(String level) {
    return 'Muhimlik: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Rang $index';
  }

  @override
  String get analyticsRangeLabel => 'Vaqt oraligʻi';

  @override
  String get analyticsRefresh => 'Yangilash';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Muddatli $total ta vazifadan $done tasi oʻz vaqtida bajarildi';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total ta vazifadan $done tasi bajarildi';
  }

  @override
  String get analyticsNoProjects => 'Faol loyiha yoʻq';

  @override
  String get analyticsNoFocus => 'Bu oraliqda diqqat seansi yoʻq';

  @override
  String get analyticsHabitsNone => 'Faol odat yoʻq';

  @override
  String get analyticsRetentionNote => 'Eslab qolingan pishgan kartochkalar ulushi';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Boʻsh vaqt ish kunlarida ($days) $start–$end oraligʻida, vaqti belgilangan tadbirlar chiqarib hisoblanadi. Taxminiy ish — keyingi 7 kunda muddati tugaydigan ochiq vazifalar taxminlarining yigʻindisi.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Dushanba–juma';

  @override
  String get assistantWorkdaysSunThu => 'Yakshanba–payshanba';

  @override
  String get assistantWorkloadDayOff => 'Dam olish kuni';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated rejada · $free boʻsh';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Hozirdan $end gacha bugungi tadbirlar atrofida rejalashtirildi. Avval muddati oʻtgan vazifalar, keyin muhimlik, muddat va taxmin.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Vaqt bloklari sifatida rejalash';

  @override
  String get assistantScheduleConfirmTitle => 'Vaqt bloklari taqvimingizga qoʻshilsinmi?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bugungi taqvimga $count ta vaqt bloki qoʻshiladi.',
      one: 'Bugungi taqvimga 1 ta vaqt bloki qoʻshiladi.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta vaqt bloki qoʻshildi',
      one: '1 ta vaqt bloki qoʻshildi',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Taqvimingizda allaqachon bor';

  @override
  String get assistantPlanTimeline => 'Bugunga sigʻadi';

  @override
  String get assistantNoEstimate => 'Rejalash uchun taxmin qoʻshing';

  @override
  String get assistantNoNotes => 'Hozircha qayd yoʻq. Avval qayd yozing.';

  @override
  String get assistantNoteEmpty => 'Bu qayd boʻsh.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta vazifa yaratildi',
      one: '1 ta vazifa yaratildi',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta kartochka yaratildi',
      one: '1 ta kartochka yaratildi',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasini yaratish',
      one: '1 tasini yaratish',
      zero: 'Hech narsa tanlanmagan',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Aniqlanadi: belgilanmagan «- [ ]» katakchalar va TODO: yoki To do: bilan boshlanuvchi qatorlar';

  @override
  String get assistantCardsHint =>
      'Aniqlanadi: «atama: taʼrif», «atama — taʼrif» va Q:/A: qator juftliklari';

  @override
  String get assistantProviderHint =>
      'OpenAI bilan mos istalgan xizmatdan foydalaning. Kalit bu qurilmaning xavfsiz xotirasida qoladi va hech qachon zaxira nusxalarga kiritilmaydi.';

  @override
  String get assistantEndpointHelp => 'Masalan, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Saqlangan kalitni qoldirish uchun boʻsh qoldiring';

  @override
  String get assistantApiKeyRequired => 'API kalitini kiriting';

  @override
  String get assistantProviderSaved => 'Provayder saqlandi';

  @override
  String get assistantProviderRemoved => 'Provayder olib tashlandi va kalit oʻchirildi';

  @override
  String get assistantRemoveProviderConfirm =>
      'Provayder olib tashlanib, saqlangan API kaliti bu qurilmadan oʻchirilsinmi?';

  @override
  String get assistantAskEveryTime => 'Har bir soʻrovdan oldin soʻrash';

  @override
  String get assistantSummarizing => 'Xulosa tayyorlanmoqda…';

  @override
  String assistantSummaryNote(String host) {
    return '$host tomonidan yaratilgan. Ishonishdan oldin tekshiring.';
  }

  @override
  String get assistantCopy => 'Nusxalash';

  @override
  String get assistantCopied => 'Nusxalandi';

  @override
  String get assistantConfigure => 'Provayderni sozlash';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Bu turkumdagi barcha tadbirlar koʻchirildi';

  @override
  String get calendarEventReminder => 'Eslatma';

  @override
  String get calendarEventRepeat => 'Takrorlash';

  @override
  String get calendarEventColor => 'Rang';

  @override
  String get calendarDefaultColor => 'Tur rangidan foydalanish';

  @override
  String get calendarEventLinkedTask => 'Bogʻlangan vazifa';

  @override
  String get calendarEventNoTask => 'Bogʻlangan vazifa yoʻq';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta tadbir',
      one: '1 ta tadbir',
      zero: 'Tadbir yoʻq',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'muddati kelgan $count ta vazifa',
      one: 'muddati kelgan 1 ta vazifa',
      zero: 'muddati kelgan vazifa yoʻq',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Bu kunni rejalash uchun tadbir yoki vaqt bloki qoʻshing.';

  @override
  String get calendarNow => 'Joriy vaqt';

  @override
  String get calendarRecurring => 'Takrorlanadi';

  @override
  String get calendarEventNotFound => 'Bu tadbir endi mavjud emas';

  @override
  String get calendarEventLocalTime => 'Vaqtlar qurilmangizning vaqt mintaqasida koʻrsatiladi';

  @override
  String get calendarEventDeleted => 'Tadbir savatga koʻchirildi';

  @override
  String get calendarConflictMarker => 'Boshqa tadbir bilan ustma-ust tushadi';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Oʻzgarishlar bu turkumdagi har bir tadbirga qoʻllanadi';

  @override
  String get calendarDragHintSeries => 'Takrorlanuvchi tadbirni sudrash butun turkumni koʻchiradi';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, vazifa muddati';
  }

  @override
  String get startupErrorTitle => 'Maʼlumotlaringizni ochib boʻlmadi';

  @override
  String get startupErrorLocked =>
      'Bu qurilma maʼlumotlarining shifrlash kaliti mavjud emas. Hech narsa oʻchirilmadi. Qurilmani qayta ishga tushirish koʻpincha yordam beradi. Agar qurilmani yaqinda tiklagan boʻlsangiz, maʼlumotlaringizni shifrlangan zaxira nusxadan tiklang.';

  @override
  String get startupErrorCipher =>
      'Bu qurilma ilova talab qiladigan shifrlangan xotirani qoʻllab-quvvatlamaydi. Hech narsa shifrlanmagan holda saqlanmadi.';

  @override
  String get startupErrorRetry => 'Qayta urinish';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta kartochkani takrorlash vaqti keldi',
      one: '1 ta kartochkani takrorlash vaqti keldi',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count ta navbatda';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count ta yangi';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Pishgan kartochkalar: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 yoki undan koʻp kiriting';

  @override
  String get flashcardsSearchCards => 'Kartochkalarni qidirish';

  @override
  String get flashcardsSearchEmpty => 'Qidiruvga mos kartochka yoʻq';

  @override
  String get flashcardsCardAdded => 'Kartochka qoʻshildi';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Muddat: $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Buferga nusxalash';

  @override
  String get flashcardsExportTitle => 'Toʻplamni eksport qilish';

  @override
  String get flashcardsDeleteDeck => 'Toʻplamni oʻchirish';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, keyingi takrorlash $interval dan keyin';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Savol: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Javob: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Savolni koʻrsatish';

  @override
  String get flashcardsImportField => 'Import qilinadigan kartochkalar';

  @override
  String get flashcardsNothingToStudy => 'Oʻrganadigan narsa yoʻq';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Oʻrganishga $count ta kartochka tayyor',
      one: 'Oʻrganishga 1 ta kartochka tayyor',
      zero: 'Tayyor kartochka yoʻq',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Baho boʻyicha';

  @override
  String get flashcardsDeckNotFound => 'Bu toʻplam endi mavjud emas.';

  @override
  String get focusSessionDeleted => 'Seans oʻchirildi';

  @override
  String get focusDeleteConfirm =>
      'Bu seans tarixingizdan oʻchirilsinmi? Uning vaqti endi marralaringizga hisoblanmaydi.';

  @override
  String get focusUnlinkTask => 'Bogʻlangan vazifani olib tashlash';

  @override
  String get focusNoteHint => 'Nima ustida ishladingiz?';

  @override
  String get focusModeLabel => 'Taymer rejimi';

  @override
  String focusUpNext(String phase) {
    return 'Keyingisi: $phase';
  }

  @override
  String get focusStopwatchHint => 'Toʻxtatguningizcha oshib boradi.';

  @override
  String get focusOpenHint => 'Vaqt chegarasi yoʻq. Tugatganingizda toʻxtating.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Eslatmalar sozlamalarda oʻchirilgan. Seans tugaganda ogohlantirilmaysiz.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Hammasi';

  @override
  String get goalsFilterPeriod => 'Davr filtri';

  @override
  String get goalsFilterStatus => 'Holat filtri';

  @override
  String get goalsEmptyFiltered => 'Bu filtrga mos maqsad yoʻq';

  @override
  String goalsDueOn(String date) {
    return 'Muddat: $date';
  }

  @override
  String get goalsDeadline => 'Muddat (ixtiyoriy)';

  @override
  String get goalsNoDeadline => 'Muddat yoʻq';

  @override
  String get goalsSetDeadline => 'Muddat belgilash';

  @override
  String get goalsRemoveDeadline => 'Muddatni olib tashlash';

  @override
  String get goalsDescription => 'Tavsif (ixtiyoriy)';

  @override
  String get goalsTitleLabel => 'Nomi';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Marraga erishildi';

  @override
  String get goalsLogged => 'Natija yozildi';

  @override
  String get goalsEntryDeleted => 'Yozuv olib tashlandi';

  @override
  String get goalsDeleteEntry => 'Yozuvni olib tashlash';

  @override
  String get goalsDeleted => 'Maqsad oʻchirildi';

  @override
  String get goalsMarkActive => 'Faol deb belgilash';

  @override
  String get goalsNotFound => 'Bu maqsad endi mavjud emas';

  @override
  String get goalsLinkTask => 'Vazifani bogʻlash';

  @override
  String get goalsNoLinkedTasks => 'Hozircha bogʻlangan vazifa yoʻq';

  @override
  String get goalsUnlinkTask => 'Vazifani ajratish';

  @override
  String get goalsTaskOpen => 'Hali bajarilmagan';

  @override
  String get goalsTaskLinked => 'Vazifa bogʻlandi';

  @override
  String get goalsTaskUnlinked => 'Vazifa ajratildi';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta bajarilgan bogʻlangan vazifa',
      one: '1 ta bajarilgan bogʻlangan vazifa',
    );
    return 'Bu davrda $_temp0 kiritilgan';
  }

  @override
  String get goalsHistoryAllTime =>
      'Oldingi davrlardagi yozuvlar shu yerda saqlanadi, lekin faqat oʻz davriga hisoblanadi.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Bugun $total tadan $done tasi bajarildi';
  }

  @override
  String get habitsNothingToday => 'Bugunga rejalashtirilgan odat yoʻq';

  @override
  String get habitsDecrease => 'Bitta belgini olib tashlash';

  @override
  String get habitsResetToday => 'Bugunni tozalash';

  @override
  String get habitsCheckInHint => 'Sozlash uchun bosib turing';

  @override
  String get habitsName => 'Nomi';

  @override
  String get habitsColor => 'Rang';

  @override
  String get habitsValidationDays => 'Kamida bitta kunni tanlang';

  @override
  String habitsReminderAt(String time) {
    return 'Har kuni soat $time da';
  }

  @override
  String get habitsSetReminder => 'Eslatma vaqtini belgilash';

  @override
  String get habitsRemoveReminder => 'Eslatmani olib tashlash';

  @override
  String get habitsReminderNote =>
      'Bildirishnomalarga ruxsat berilsa, eslatmalar rejalashtirilgan kunlarda chiqadi.';

  @override
  String get habitsArchived => 'Odat arxivlandi';

  @override
  String get habitsNotFound => 'Bu odat endi mavjud emas';

  @override
  String get habitsLast30 => 'Soʻnggi 30 kun';

  @override
  String get habitsConsistencyNone => 'Hozircha maʼlumot yetarli emas';

  @override
  String get habitsCalendar => 'Belgilar tarixi';

  @override
  String get habitsCalendarHint => 'Tuzatish uchun kunga teging.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $target dan $count';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Soʻnggi 90 kundagi belgilar. Barqarorlik $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Soʻnggi 90 kundagi belgilar. Hozircha maʼlumot yetarli emas.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kun',
      one: '1 kun',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Pauzadagi kunlar ketma-ketligingizga taʼsir qilmaydi.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Odatni arxivlash';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kuniga $count marta',
      one: 'Kuniga bir marta',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Boshqa qaydlar';

  @override
  String get notesAllNotebooks => 'Barcha daftarlar';

  @override
  String get notesNotebookName => 'Daftar nomi';

  @override
  String get notesNotebookColor => 'Rang';

  @override
  String get notesDeleteNotebook => 'Daftarni oʻchirish';

  @override
  String get notesDeleteNotebookMessage =>
      'Daftar olib tashlanadi. Uning qaydlari saqlanib, «Barcha daftarlar» boʻlimida koʻrinadi.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Muhim qaydlarni tepada saqlash uchun mahkamlang.';

  @override
  String get notesEmptyFavorites => 'Sevimli deb belgilagan qaydlaringiz shu yerda koʻrinadi.';

  @override
  String get notesEmptyArchived => 'Arxivlangan qaydlar shu yerda koʻrinadi.';

  @override
  String get notesEmptyFiltered => 'Bu filtrlarga mos qayd yoʻq.';

  @override
  String get notesArchivedSnack => 'Qayd arxivlandi';

  @override
  String get notesUnarchivedSnack => 'Qayd qaydlaringizga qaytarildi';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total tadan $done tasi bajarildi';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatlash';

  @override
  String get notesWrite => 'Yozish';

  @override
  String get notesPreviewEmpty => 'Hozircha oldindan koʻradigan narsa yoʻq.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Hozircha boshqa qaydlar bu yerga havola bermaydi. Bu qaydga [[$title]] orqali havola bering.';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Boshqa qaydlar havola bera olishi uchun bu qaydga nom bering.';

  @override
  String get notesLinkedTasksEmpty => 'Bu qaydga bogʻlangan vazifa yoʻq.';

  @override
  String notesLinkMissing(String title) {
    return '«$title» nomli qayd hali yoʻq.';
  }

  @override
  String get notesNotFound => 'Bu qayd endi mavjud emas.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Nazorat roʻyxati bandi: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return '$title qaydini ochish';
  }

  @override
  String get notesTaskDone => 'Bajarilgan';

  @override
  String get notifTimerDoneBody => 'Siz belgilagan vaqt oʻtib ketdi.';

  @override
  String get onboardingPrivatePointDevice => 'Faqat shu qurilmada, shifrlangan holda saqlanadi';

  @override
  String get onboardingPrivatePointAccount => 'Hisob kerak emas';

  @override
  String get onboardingPrivatePointTracking => 'Tahlil yoʻq, kuzatuv yoʻq';

  @override
  String get onboardingLanguageBody =>
      'Buni istalgan vaqtda Sozlamalarda oʻzgartirishingiz mumkin.';

  @override
  String get onboardingNext => 'Keyingi';

  @override
  String get projectsActive => 'Faol';

  @override
  String get projectNameHint => 'masalan, Mahsulotni ishga tushirish';

  @override
  String get projectGoalHint => 'Bajarilgan natija qanday koʻrinadi?';

  @override
  String get projectNoDeadline => 'Muddat yoʻq';

  @override
  String get projectTasksOpen => 'Ochiq vazifalar';

  @override
  String get projectTasksCompleted => 'Bajarilgan vazifalar';

  @override
  String get projectAddTask => 'Loyihaga vazifa qoʻshish';

  @override
  String get projectAddNote => 'Yangi loyiha qaydi';

  @override
  String get projectLinkedNotes => 'Qaydlar';

  @override
  String get projectNoTasks => 'Bu loyihada hozircha vazifa yoʻq';

  @override
  String get projectArchivedBadge => 'Arxivlangan';

  @override
  String get projectDeleted => 'Loyiha savatga koʻchirildi';

  @override
  String get projectDeleteMessage => 'Vazifalar roʻyxatingizda loyihasiz qoladi.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent foiz bajarilgan';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta natija',
      one: '1 ta natija',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Tur boʻyicha filtrlash';

  @override
  String searchRecentTap(String query) {
    return '$query boʻyicha qayta qidirish';
  }

  @override
  String get settingsLanguageHint =>
      'Butun ilova uchun tilni tanlang. Nomlar oʻz tilida koʻrsatiladi.';

  @override
  String get settingsThemeHint => 'Yorugʻ, qorongʻi yoki tizimga moslash';

  @override
  String settingsDecrease(String setting) {
    return '${setting}ni kamaytirish';
  }

  @override
  String settingsIncrease(String setting) {
    return '${setting}ni oshirish';
  }

  @override
  String get settingsQuietStart => 'Boshlanishi';

  @override
  String get settingsQuietEnd => 'Tugashi';

  @override
  String get settingsNotificationsHint =>
      'Bu tanlovingizni ilovada saqlaydi. Tizim ham ruxsat soʻrashi mumkin.';

  @override
  String get settingsDashboardHint =>
      'Tartibini oʻzgartirish uchun sudrang. Kerak boʻlmagan qismlarni oʻchiring.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section tartibini oʻzgartirish';
  }

  @override
  String get settingsDashboardReset => 'Standart tartibni tiklash';

  @override
  String get settingsAssistantDesc =>
      'Ixtiyoriy rejalashtirish yordami. Provayder ulamasangiz, hech narsa qurilmadan chiqmaydi.';

  @override
  String get settingsAssistantSetup => 'Yordamchi va provayderni sozlash';

  @override
  String get settingsTrashDesc => 'Oʻchirilgan elementlarni tiklash yoki butunlay oʻchirish';

  @override
  String get settingsEraseFirstBody =>
      'Buni bekor qilib boʻlmaydi. Avval shifrlangan zaxira nusxa yaratishni oʻylab koʻring.';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word deb yozing';
  }

  @override
  String get settingsEraseFailed => 'Maʼlumotlarni oʻchirib boʻlmadi. Hech narsa oʻzgarmadi.';

  @override
  String get settingsAboutTagline => 'Shaxsiy, mahalliy asosdagi samaradorlik ish joyi.';

  @override
  String get backupShowPassword => 'Parolni koʻrsatish';

  @override
  String get backupHidePassword => 'Parolni yashirish';

  @override
  String get backupSaved => 'Zaxira nusxa saqlandi';

  @override
  String get backupFailed => 'Zaxira nusxa yaratilmadi. Maʼlumotlaringiz oʻzgarmadi.';

  @override
  String get backupReadFailed => 'Tanlangan faylni oʻqib boʻlmadi.';

  @override
  String get backupRestoreFailed => 'Tiklash muvaffaqiyatsiz. Hech narsa oʻzgarmadi.';

  @override
  String get backupShareSubject => 'Deep Focus shifrlangan zaxira nusxasi';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Har $count kunda',
      one: 'Har kuni',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Har $count haftada',
      one: 'Har hafta',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Har $count oyda',
      one: 'Har oy',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Har $count yilda',
      one: 'Har yili',
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
    return 'kunlari: $days';
  }

  @override
  String get repeatEndsLabel => 'Tugashi';

  @override
  String get repeatEndsAfter => 'Maʼlum marta sonidan keyin';

  @override
  String get repeatCountLabel => 'Takrorlanishlar soni';

  @override
  String get reminderNone => 'Eslatma yoʻq';

  @override
  String get reminderCustomTime => 'Aniq vaqtda';

  @override
  String get a11yDecrease => 'Kamaytirish';

  @override
  String get a11yIncrease => 'Oshirish';

  @override
  String get pickTaskTitle => 'Vazifa tanlang';

  @override
  String get pickTaskEmpty => 'Ochiq vazifa yoʻq';

  @override
  String get tasksSearchTooltip => 'Vazifalarni qidirish';

  @override
  String get tasksSectionOverdue => 'Muddati oʻtgan';

  @override
  String get tasksSectionToday => 'Bugun';

  @override
  String get tasksRecurringSemantics => 'Takrorlanadi';

  @override
  String get tasksFilterPriorityAtLeast => 'Eng past muhimlik';

  @override
  String get tasksFilterCategory => 'Turkum';

  @override
  String get tasksFilterAnyCategory => 'Istalgan turkum';

  @override
  String get tasksFilterLabel => 'Yorliq';

  @override
  String get tasksFilterAnyLabel => 'Istalgan yorliq';

  @override
  String get tasksFilterReset => 'Filtrlarni tiklash';

  @override
  String get tasksViewByProject => 'Loyiha boʻyicha';

  @override
  String get tasksViewByPriority => 'Muhimlik boʻyicha';

  @override
  String get tasksViewByCategory => 'Turkum boʻyicha';

  @override
  String get tasksGroupNoCategory => 'Turkumsiz';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta vazifa',
      one: '1 ta vazifa',
    );
    return '$_temp0 toʻsib turibdi';
  }

  @override
  String get taskBlockedWarning =>
      'Bu vazifani tugallanmagan vazifalar toʻsib turibdi. Baribir bajarilgan deb belgilansinmi?';

  @override
  String get taskStartFocus => 'Shu vazifaga diqqat qaratish';

  @override
  String get taskRemoveDate => 'Sanani olib tashlash';

  @override
  String get taskAllDay => 'Aniq vaqt yoʻq';

  @override
  String get taskSaved => 'Vazifa saqlandi';

  @override
  String get taskCreated => 'Vazifa yaratildi';

  @override
  String get taskReminderNeedsDue => 'Nisbiy eslatmalardan foydalanish uchun muddat belgilang';

  @override
  String get taskLabelName => 'Yorliq nomi';

  @override
  String get taskPlanning => 'Rejalashtirish';

  @override
  String get taskOrganize => 'Tartiblash';

  @override
  String get taskBreakdown => 'Boʻlaklash';

  @override
  String get trashDeleteTaskTitle => 'Bu vazifa butunlay oʻchirilsinmi?';

  @override
  String get trashDeleteNoteTitle => 'Bu qayd butunlay oʻchirilsinmi?';

  @override
  String get trashDeleteBody => 'Buni bekor qilib boʻlmaydi.';

  @override
  String get trashEmptyTitle => 'Savat tozalansinmi?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta element butunlay oʻchiriladi.',
      one: '1 ta element butunlay oʻchiriladi.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Tiklandi';

  @override
  String get trashPurged => 'Butunlay oʻchirildi';

  @override
  String trashDeletedOn(String date) {
    return '$date da oʻchirilgan';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta element',
      one: '1 ta element',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Ovoz chiqarib oʻqish';

  @override
  String get flashcardsTtsUnavailable => 'Bu qurilmada matnni ovozga aylantirish mavjud emas.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Bu til uchun ovoz oʻrnatilmagan. Uni Android matnni ovozga aylantirish sozlamalarida qoʻshing.';

  @override
  String get calendarAgenda => 'Kun tartibi';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Uchqun',
      'rocket': 'Raketa',
      'book': 'Kitob',
      'work': 'Ish',
      'home': 'Uy',
      'heart': 'Yurak',
      'code': 'Kod',
      'palette': 'Palitra',
      'fitness': 'Fitnes',
      'school': 'Maktab',
      'travel': 'Sayohat',
      'money': 'Jamgʻarma',
      'other': 'Belgi',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Qoʻshimcha maydonlar';

  @override
  String get cardFieldExample => 'Misol';

  @override
  String get cardFieldExplanation => 'Izoh';

  @override
  String get cardFieldPronunciation => 'Talaffuz';

  @override
  String get cardFieldNotes => 'Qoʻshimcha qaydlar';

  @override
  String get projectMilestones => 'Bosqichlar';

  @override
  String get milestoneAdd => 'Bosqich qoʻshish';

  @override
  String get milestoneEdit => 'Bosqichni tahrirlash';

  @override
  String get milestoneTitleLabel => 'Bosqich';

  @override
  String get milestoneNoDate => 'Sana yoʻq';

  @override
  String get milestonesEmpty =>
      'Hozircha bosqich yoʻq. Loyihani taqvimda kuzatish uchun sanali nazorat nuqtalarini qoʻshing.';

  @override
  String get milestoneDeleted => 'Bosqich oʻchirildi';

  @override
  String milestoneDoneA11y(String title) {
    return '«$title» bosqichini bajarilgan deb belgilash';
  }

  @override
  String calendarMilestone(String project) {
    return 'Bosqich · $project';
  }

  @override
  String get tasksViewInbox => 'Kiruvchi';

  @override
  String get tasksViewArchived => 'Arxivlangan';

  @override
  String get tasksEmptyInbox =>
      'Loyihasiz yoki sanasiz vazifalar shu yerga tushadi. Boʻsh vaqtingizda saralang.';

  @override
  String get tasksEmptyArchived =>
      'Arxivlangan vazifalar roʻyxat va eslatmalardan tashqarida, shu yerda saqlanadi.';

  @override
  String get taskArchivedBadge => 'Arxivlangan';

  @override
  String get taskStatusInProgress => 'Jarayonda';

  @override
  String get taskArchived => 'Vazifa arxivlandi';

  @override
  String get taskUnarchived => 'Vazifa arxivdan tiklandi';

  @override
  String get focusPlanTitle => 'Seans rejasi';

  @override
  String focusPlanTotal(String duration) {
    return 'Jami $duration';
  }

  @override
  String get focusPlanRounds => 'Diqqat seanslari';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Uzun tanaffus shundan keyin';

  @override
  String get focusPlanSkipLastBreak => 'Oxirgi tanaffusni oʻtkazib yuborish';

  @override
  String get focusPlanAutoBreaks => 'Tanaffuslarni avtomatik boshlash';

  @override
  String get focusPlanAutoFocus => 'Tanaffusdan keyin diqqatni avtomatik boshlash';

  @override
  String get focusPlanSave => 'Rejani saqlash';

  @override
  String get focusPlanNameHint => 'masalan, Imtihonga tayyorgarlik';

  @override
  String get focusPlanSaved => 'Reja saqlandi';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work daq diqqat, $rest daq tanaffus';
  }

  @override
  String focusPlanDecrease(String label) {
    return '${label}ni kamaytirish';
  }

  @override
  String focusPlanIncrease(String label) {
    return '${label}ni oshirish';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '$total seansdan $current-seans';
  }

  @override
  String get focusSeriesComplete => 'Turkum yakunlandi. Barakalla!';

  @override
  String get filterAll => 'Hammasi';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added ta import qilindi · $duplicates ta takror oʻtkazib yuborildi · $invalid ta toʻliq boʻlmagan qator';
  }

  @override
  String get flashcardsSuspend => 'Kartochkani toʻxtatish';

  @override
  String get flashcardsResume => 'Kartochkani davom ettirish';

  @override
  String get flashcardsSuspended => 'Kartochka toʻxtatildi: u rejalashtirilmaydi';

  @override
  String get flashcardsResumed => 'Kartochka davom ettirildi';

  @override
  String get flashcardsSuspendedFilter => 'Toʻxtatilgan';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$total ta kartochkadan $shown tasi';
  }

  @override
  String get flashcardsImportFile => 'Fayldan';

  @override
  String get speechTitle => 'Nutq';

  @override
  String get speechAppLanguage => 'Ilova tili';

  @override
  String get speechFrontLanguage => 'Old tomon tili';

  @override
  String get speechBackLanguage => 'Orqa tomon tili';

  @override
  String get speechRepeat => 'Har bir oʻqishni takrorlash';

  @override
  String get speechRate => 'Tezlik';

  @override
  String get speechAutoRead => 'Savolni avtomatik oʻqish';

  @override
  String get speechHint =>
      'Bu qurilmada oʻrnatilgan ovozlardan oflayn foydalanadi. Agar til uchun ovoz boʻlmasa, sizga aytiladi va oʻrniga boshqa hech narsa ishlatilmaydi.';

  @override
  String get studyHowTitle => 'Qanday oʻrganmoqchisiz?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta kartochkani takrorlash',
      one: '1 ta kartochkani takrorlash',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Barcha kartochkalarni mashq qilish (jadval oʻzgarmaydi)';

  @override
  String get studyPracticeMistakes => 'Soʻnggi xatolarni mashq qilish';

  @override
  String get studyPracticeHint =>
      'Mashq raundlari kartochkalar muddatini hech qachon oʻzgartirmaydi. Takrorlash jadvalni yangilaydi.';

  @override
  String get studyModeClassic => 'Klassik';

  @override
  String get studyModeReverse => 'Teskari';

  @override
  String get studyModeMixed => 'Ikki tomonlama';

  @override
  String get studyModeTyped => 'Javobni yozish';

  @override
  String get studyModeChoice => 'Koʻp tanlovli';

  @override
  String get studyModeListening => 'Tinglash';

  @override
  String get studyPractice => 'mashq';

  @override
  String get studyNoMistakes => 'Bu toʻplamda soʻnggi xatolar yoʻq. Ajoyib!';

  @override
  String get studyTypeAnswer => 'Javobingizni yozing';

  @override
  String get studyCheck => 'Tekshirish';

  @override
  String get studyKnewIt => 'Bilardim';

  @override
  String get studyDidntKnow => 'Bilmadim';

  @override
  String studyMistakes(int count) {
    return 'Xato ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Xato kartochkalarni takrorlash';

  @override
  String get studyCorrect => 'Toʻgʻri';

  @override
  String get studyAlmost => 'Deyarli — imloni tekshiring';

  @override
  String get studyWrong => 'Unchalik emas';

  @override
  String get studyShowText => 'Matnni koʻrsatish';

  @override
  String get flashcardsImportFileFailed =>
      'Faylni ochib boʻlmadi. Uning oʻrniga mazmunini joylashingiz mumkin.';

  @override
  String get studyNoMatchingCards => 'Bu tanlovga mos kartochka hali yoʻq.';

  @override
  String get studyPracticeNew => 'Faqat yangilar';

  @override
  String get studyPracticeHard => 'Qiyin kartochkalar';

  @override
  String get studyPracticeFavorites => 'Sevimlilar';

  @override
  String get studySessionSize => 'Bir seansdagi kartochkalar';

  @override
  String get studySessionAll => 'Hammasi';

  @override
  String get studyOrder => 'Tartib';

  @override
  String get studyOrderDue => 'Avval eng koʻp kechikkanlar';

  @override
  String get studyOrderRandom => 'Tasodifiy';

  @override
  String get studyOrderHardest => 'Avval eng qiyinlari';

  @override
  String get flashcardsHard => 'Qiyin';

  @override
  String get flashcardsFavorites => 'Sevimlilar';

  @override
  String get flashcardsFavorite => 'Sevimlilarga qoʻshish';

  @override
  String get flashcardsUnfavorite => 'Sevimlilardan olib tashlash';

  @override
  String get flashcardsDuplicate => 'Nusxa koʻpaytirish';

  @override
  String get flashcardsMoveTo => 'Toʻplamga koʻchirish';

  @override
  String get flashcardsNoOtherDeck => 'Avval boshqa toʻplam yarating.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta kartochka koʻchirildi',
      one: 'Kartochka koʻchirildi',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Teg qoʻshish';

  @override
  String get flashcardsTagHint => 'masalan, feʼllar';

  @override
  String flashcardsSelected(int count) {
    return '$count ta tanlandi';
  }

  @override
  String get flashcardsSelectAll => 'Koʻrsatilganlarning hammasini tanlash';

  @override
  String flashcardsSelectCard(String front) {
    return '$front ni tanlash';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Eslab qolish $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Ehtimoliy takror';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Bu toʻplamda allaqachon «$front» → «$back» bor. Baribir saqlansinmi?';
  }

  @override
  String get flashcardsSaveAnyway => 'Baribir saqlash';

  @override
  String get flashcardsStats => 'Statistika';

  @override
  String get flashcardsStatTotal => 'Kartochkalar';

  @override
  String get flashcardsStatLearning => 'Oʻrganilmoqda';

  @override
  String get flashcardsStatMatureCaption => '21+ kun eslab qolingan';

  @override
  String get flashcardsStatReviewsToday => 'Bugungi takrorlashlar';

  @override
  String get flashcardsStatCorrect => 'Toʻgʻri javoblar';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Soʻnggi $days kun';
  }

  @override
  String get flashcardsStatForget => 'Unutish darajasi';

  @override
  String get flashcardsStatForgetCaption => 'Oʻrganilgan kartochkalarda «Yana»';

  @override
  String get flashcardsStatRecall => 'Hozirgi eslab qolish';

  @override
  String get flashcardsStatRecallCaption => 'FSRS bahosi, takrorlangan kartochkalar';

  @override
  String flashcardsStatActivity(int count) {
    return 'Kuniga takrorlashlar · jami $count';
  }

  @override
  String get flashcardsStatHistory => 'Soʻnggi javoblar';

  @override
  String get flashcardsStatNoHistory =>
      'Hozircha takrorlash yoʻq. Jarayoningizni shu yerda koʻrish uchun toʻplamni oʻrganing.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field ni ovoz chiqarib oʻqish';
  }

  @override
  String get speechVoice => 'Ovoz';

  @override
  String get speechVoiceDefault => 'Avtomatik';

  @override
  String get speechVoiceOnline => 'internet kerak';

  @override
  String get speechTest => 'Ovozni sinash';

  @override
  String get importNext => 'Oldindan koʻrish';

  @override
  String get importPreviewTitle => 'Ustunlarni maydonlarga moslash';

  @override
  String get importIgnoreColumn => 'Eʼtiborsiz qoldirish';

  @override
  String importColumn(int n) {
    return '$n-ustun';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready ta kartochka tayyor · $invalid ta toʻliq boʻlmagan qator oʻtkazib yuboriladi';
  }

  @override
  String get importNeedFrontBack => 'Qaysi ustunlar old va orqa tomon ekanini tanlang.';

  @override
  String get actionMoveUp => 'Yuqoriga surish';

  @override
  String get actionMoveDown => 'Pastga surish';

  @override
  String get flashcardsLayoutTitle => 'Kartochka tuzilishi';

  @override
  String get flashcardsLayoutHint =>
      'Bu toʻplamning qoʻshimcha maydonlarini qayta nomlang, yashiring yoki tartibini oʻzgartiring. Kartochka mazmuni hech qachon oʻzgarmaydi.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Oʻrganish paytida $field ni koʻrsatish';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Javobni bosqichma-bosqich ochish';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Avval orqa tomon chiqadi; har bir qoʻshimcha maydon teginish bilan ochiladi.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field ni koʻrsatish';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Bu fayl $mb MB dan katta.';
  }

  @override
  String get flashcardsImage => 'Rasm';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Rasm qoʻshish';

  @override
  String get flashcardsAddAudio => 'Audio qoʻshish';

  @override
  String get flashcardsPlayAudio => 'Yozuvni ijro etish';

  @override
  String get flashcardsAudioUnavailable => 'Bu yozuvni bu qurilmada ijro etib boʻlmaydi.';

  @override
  String get flashcardsCustomFields => 'Sizning maydonlaringiz';

  @override
  String get flashcardsTemplates => 'Andozalar';

  @override
  String flashcardsNewFieldName(int n) {
    return '$n-maydon';
  }

  @override
  String get flashcardsAddField => 'Maydon qoʻshish';

  @override
  String get flashcardsFieldName => 'Maydon nomi';

  @override
  String get flashcardsFieldLangDefault => 'Tomon tili';

  @override
  String get flashcardsTemplateConfirm =>
      'Andoza maydonlar qanday koʻrinishini belgilaydi va oʻz maydonlarini qoʻshadi. Kartochkalaringiz va mavjud maydonlar oʻzgarmaydi.';

  @override
  String get flashcardsApplyTemplate => 'Qoʻllash';

  @override
  String get templateVocabulary => 'Lugʻat';

  @override
  String get templateTwoTranslations => 'Ikki tarjimali soʻz';

  @override
  String get templateQuestionAnswer => 'Savol va javob';

  @override
  String get templateDefinition => 'Atama va taʼrif';

  @override
  String get templateGrammar => 'Grammatika qoidasi';

  @override
  String get templateFieldPlural => 'Koʻplik shakli';

  @override
  String get templateFieldTranslation2 => 'Ikkinchi tarjima';

  @override
  String get templateFieldSynonyms => 'Sinonimlar';

  @override
  String get templateFieldRule => 'Qoida';

  @override
  String get deckCategory => 'Daraja yoki mavzu';

  @override
  String get deckCategoryHint => 'masalan, A1, Tibbiyot';

  @override
  String get flashcardsSearchAll => 'Barcha kartochkalardan qidirish';

  @override
  String get flashcardsSearchAllHint => 'Soʻz, tarjima, misol, qayd, teg…';

  @override
  String get flashcardsAllDecks => 'Barcha toʻplamlar';

  @override
  String get flashcardsAllLanguages => 'Barcha tillar';

  @override
  String get flashcardsLangUnset => 'Til belgilanmagan';

  @override
  String get flashcardsLevelUnset => 'Daraja yoki mavzu yoʻq';

  @override
  String get flashcardsByLanguage => 'Til boʻyicha jarayon';

  @override
  String get flashcardsByLevel => 'Daraja yoki mavzu boʻyicha jarayon';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks ta toʻplam · $cards ta kartochka · $mature ta pishgan · $due ta navbatda · $correct toʻgʻri (30 kun)';
  }

  @override
  String get flashcardsRecord => 'Yozib olish';

  @override
  String get flashcardsRecording => 'Yozib olinmoqda…';

  @override
  String get flashcardsRecordStop => 'Toʻxtatib saqlash';

  @override
  String get flashcardsMicDenied =>
      'Mikrofonga ruxsat oʻchiq. Yozib olish uchun uni tizim sozlamalarida yoqing.';

  @override
  String get flashcardsRecordFailed => 'Bu qurilmada yozib olish mavjud emas.';

  @override
  String get soundsTitle => 'Tovushlar';

  @override
  String get soundsNature => 'Tabiat';

  @override
  String get soundsNoise => 'Diqqat shovqini';

  @override
  String get soundRain => 'Yomgʻir';

  @override
  String get soundStorm => 'Momaqaldiroq';

  @override
  String get soundRiver => 'Daryo';

  @override
  String get soundOcean => 'Dengiz toʻlqinlari';

  @override
  String get soundFire => 'Gulxan';

  @override
  String get soundForest => 'Oʻrmon qushlari';

  @override
  String get soundNight => 'Yozgi tun';

  @override
  String get soundWhite => 'Oq shovqin';

  @override
  String get soundPink => 'Pushti shovqin';

  @override
  String get soundBrown => 'Jigarrang shovqin';

  @override
  String get soundsPlay => 'Ijro etish';

  @override
  String get soundsSleep => 'Uyqu taymeri';

  @override
  String get soundsSleepOff => 'Oʻchiq';

  @override
  String soundsSleepAt(String time) {
    return 'Soat $time da toʻxtaydi';
  }

  @override
  String soundsMixFull(int count) {
    return 'Bir vaqtda $count tagacha tovush ijro etilishi mumkin.';
  }

  @override
  String get soundsHint =>
      'Boshlash uchun tovushga teging. Bir nechtasini aralashtirib, har birining ovoz balandligini sozlang.';

  @override
  String get soundsMixer => 'Aralashma';

  @override
  String soundsVolumeOf(String name) {
    return '$name ovoz balandligi';
  }

  @override
  String get soundsChannel => 'Tabiat tovushlari';

  @override
  String get settingsEndTone => 'Taymer tugash ovozi';

  @override
  String get toneGentle => 'Yumshoq signallar';

  @override
  String get toneBeeps => 'Signallar';

  @override
  String get toneWood => 'Yogʻoch taqillashi';

  @override
  String get toneBird => 'Qush ovozi';

  @override
  String get toneStream => 'Soy';

  @override
  String get toneSystem => 'Telefon ovozi';

  @override
  String get speechOnPhone => 'Bu telefonda';

  @override
  String get speechAllLanguages => 'Barcha tillar';

  @override
  String get speechSearchLanguage => 'Tillarni qidirish';

  @override
  String get speechGetVoices => 'Qoʻshimcha ovozlarni yuklab olish';

  @override
  String get speechGetVoicesHint =>
      'Ovozi yoʻq tillarni telefonning nutq sozlamalarida yuklab olish mumkin.';

  @override
  String get speechSettingsFailed => 'Bu telefonda nutq sozlamalarini ochib boʻlmadi.';

  @override
  String get speechVoiceMissing => 'Ovoz oʻrnatilmagan';

  @override
  String get speechPause => 'Takrorlar orasidagi pauza';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Misolni javob bilan birga oʻqish';

  @override
  String get flashListen => 'Tinglash';

  @override
  String get flashListenNext => 'Keyingi kartochka';

  @override
  String get flashListenEmpty => 'Tinglanadigan kartochka yoʻq.';

  @override
  String get flashViewTable => 'Jadval';

  @override
  String get flashViewCards => 'Kartochkalar';

  @override
  String get flashSwapSides => 'Ustunlarni almashtirish';

  @override
  String get flashSort => 'Saralash';

  @override
  String get flashSortNewest => 'Avval yangilari';

  @override
  String get flashSortAlpha => 'A dan Z gacha';

  @override
  String get flashSortDue => 'Avval muddati kelganlar';

  @override
  String get flashSortHard => 'Avval eng qiyinlari';

  @override
  String get flashPasteCards => 'Kartochkalarni joylash';

  @override
  String get flashClipboardEmpty => 'Buferda matn yoʻq.';

  @override
  String get flashMenuAdd => 'Kartochkalar qoʻshish';

  @override
  String get flashMenuDeck => 'Toʻplam';

  @override
  String get flashToday => 'Bugun';

  @override
  String get flashStudyNow => 'Oʻrganish';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta kartochkaga javob berildi',
      one: '1 ta kartochkaga javob berildi',
      zero: 'Javob berilgan kartochka yoʻq',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Oʻrmondagi yomgʻir';

  @override
  String get autoBackupTitle => 'Avtomatik zaxira nusxalar';

  @override
  String get autoBackupDesc => 'Har kuni shu telefonda; oxirgi 7 tasi saqlanadi';

  @override
  String get autoBackupHint =>
      'Bu nusxalar shu telefonda qoladi va ilova oʻchirilsa, oʻchib ketadi. Yangi telefonga oʻtish uchun faylni saqlashga «Zaxira nusxa» dan foydalaning.';

  @override
  String get autoBackupNone => 'Hozircha avtomatik zaxira nusxa yoʻq. Birinchisi bugun yaratiladi.';

  @override
  String get autoBackupRestore => 'Tiklash';

  @override
  String autoBackupConfirm(String date) {
    return 'Barcha joriy maʼlumotlar $date sanasidagi zaxira nusxa bilan almashtirilsinmi?';
  }

  @override
  String get autoBackupRestored => 'Tiklandi.';

  @override
  String get errorLogTitle => 'Xatolar jurnali';

  @override
  String get errorLogHint =>
      'Biror narsa notoʻgʻri ketsa, shu yerda qayd etiladi: faqat xato turi va koddagi joyi, hech qachon sizning kontentingiz emas. Muammoni tuzatishga yordam berish uchun ulashing.';

  @override
  String get errorLogEmpty => 'Hech qanday xato qayd etilmagan.';

  @override
  String get errorLogClear => 'Tozalash';

  @override
  String get soundsWithFocus => 'Diqqat seanslari bilan ijro etish';

  @override
  String get soundsWithFocusHint =>
      'Aralashmangiz diqqat seansi bilan boshlanadi va tanaffuslarda pauza qiladi.';

  @override
  String get soundsSavedMixes => 'Saqlangan aralashmalar';

  @override
  String get soundsSaveMix => 'Bu aralashmani saqlash';

  @override
  String get soundsMixNameHint => 'Nomi, masalan, Yomgʻirli kutubxona';

  @override
  String soundsDeleteMix(String name) {
    return '«$name» aralashmasi oʻchirilsinmi?';
  }

  @override
  String get settingsReviewReminderHint => 'Kuniga bir marta, faqat kartochkalar muddati kelganda';

  @override
  String get settingsReviewTime => 'Eslatma vaqti';

  @override
  String get shortcutFocus => 'Diqqat';

  @override
  String get shortcutNewTask => 'Yangi vazifa';

  @override
  String get shortcutReview => 'Kartochkalarni takrorlash';

  @override
  String get shortcutSounds => 'Tabiat tovushlari';

  @override
  String get myDayTitle => 'Kunimni boshlash';

  @override
  String get myDayHint => 'Kuningizga bir nazar, keyin bir teginishda diqqat';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bugunga $count ta vazifa',
      one: 'Bugunga 1 ta vazifa',
      zero: 'Bugunga vazifa yoʻq',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Bugun boshqa tadbir yoʻq';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Keyingisi: $title, soat $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta odat qoldi',
      one: '1 ta odat qoldi',
      zero: 'Barcha odatlar bajarildi',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Diqqat seansidan boshlash';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabiul avval';

  @override
  String get hijriMonth4 => 'Rabiul oxir';

  @override
  String get hijriMonth5 => 'Jumodul avval';

  @override
  String get hijriMonth6 => 'Jumodul oxir';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Shaʼbon';

  @override
  String get hijriMonth9 => 'Ramazon';

  @override
  String get hijriMonth10 => 'Shavvol';

  @override
  String get hijriMonth11 => 'Zulqaʼda';

  @override
  String get hijriMonth12 => 'Zulhijja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day-$month, $year h.';
  }

  @override
  String get settingsHijri => 'Hijriy sanalar';

  @override
  String get settingsHijriHint => 'Taqvimda va bosh ekranda koʻrsatiladi (Ummul Quro)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kun',
      one: '1 kun',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Bugun $goal tadan $done ta kartochka';
  }

  @override
  String get studyGoalReached => 'Kunlik maqsadga erishildi. Barakalla!';

  @override
  String get studyWeekTitle => 'Sizning haftangiz';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 kunda $count ta kartochkaga javob berildi',
      one: '7 kunda 1 ta kartochkaga javob berildi',
      zero: '7 kunda javob berilgan kartochka yoʻq',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7 kunda $duration diqqat';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Ketma-ketlik: $current · Eng yaxshi: $best';
  }

  @override
  String get studyGoalTitle => 'Kunlik maqsad (kartochkalar)';

  @override
  String get studyGoalOff => 'Oʻchiq';

  @override
  String get focusDndTitle => 'Diqqat paytida «Bezovta qilinmasin»';

  @override
  String get focusDndHint => 'Har bir diqqat seansida yoqiladi va tanaffusda oʻchadi';

  @override
  String get focusDndNeedsAccess => 'Bundan foydalanish uchun telefon sozlamalarida ruxsat bering';

  @override
  String get voiceInput => 'Ovoz bilan yozish';

  @override
  String get voiceInputPrompt => 'Endi gapiring';

  @override
  String get voiceInputUnavailable =>
      'Bu telefonda ovoz bilan yozish mavjud emas. Nutq xizmatini oʻrnating yoki yoqing (masalan, Google’ning Speech Recognition & Synthesis xizmati).';

  @override
  String get prayerFajr => 'Bomdod';

  @override
  String get prayerSunrise => 'Quyosh chiqishi';

  @override
  String get prayerDhuhr => 'Peshin';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Shom';

  @override
  String get prayerIsha => 'Xufton';

  @override
  String get prayerMethodMwl => 'Musulmon olami ligasi';

  @override
  String get prayerMethodUmmAlQura => 'Ummul Quro, Makka';

  @override
  String get prayerMethodEgypt => 'Misr Bosh boshqarmasi';

  @override
  String get prayerMethodJordan => 'Iordaniya, Avqof vazirligi';

  @override
  String get prayerMethodKarachi => 'Islomiy fanlar universiteti, Karachi';

  @override
  String get prayerMethodIsna => 'Shimoliy Amerika islom jamiyati';

  @override
  String get prayerMethodGulf => 'Fors koʻrfazi mintaqasi';

  @override
  String get prayerMethodKuwait => 'Quvayt';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turkiya, Diyonat';

  @override
  String get prayerMethodSingapore => 'Singapur, Malayziya, Indoneziya';

  @override
  String get prayerMethodFrance => 'Fransiya (12°)';

  @override
  String get prayerMethodRussia => 'Rossiya, Diniy idora';

  @override
  String prayerNotifTitle(String name) {
    return '$name vaqti';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Namoz vaqti · $time';
  }

  @override
  String get prayerTitle => 'Namoz vaqtlari';

  @override
  String get prayerOffHint =>
      'Namoz vaqtlarini koʻrish uchun shahringizni tanlang. Ular telefonda hisoblanadi; joylashuvga ruxsat kerak emas.';

  @override
  String get prayerChooseCity => 'Shaharni tanlash';

  @override
  String get prayerCity => 'Shahar';

  @override
  String get prayerCitySearch => 'Shaharni qidirish';

  @override
  String get prayerMethod => 'Hisoblash usuli';

  @override
  String get prayerHanafiAsr => 'Hanafiy asr (kechroq vaqt)';

  @override
  String get prayerReminders => 'Har bir namoz vaqtida xabar berish';

  @override
  String get prayerPauseFocus => 'Namoz vaqtida diqqatni pauza qilish';

  @override
  String get prayerPauseFocusHint =>
      'Davom etayotgan seans pauza qiladi; namozdan keyin davom eting';

  @override
  String get prayerTurnOff => 'Namoz vaqtlarini oʻchirish';

  @override
  String get prayerAccuracyNote =>
      'Hisoblangan vaqtlar mahalliy masjidingizdan bir necha daqiqa farq qilishi mumkin.';

  @override
  String prayerNext(String name, String time) {
    return '$name, soat $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Bu Anki fayli eng yangi formatdan foydalanadi. Anki’da «Support older Anki versions» yoqilgan holda qayta eksport qiling, soʻng oʻsha faylni import qiling.';

  @override
  String get importTemplate => 'Jadval andozasi';

  @override
  String get importTemplateFront => 'olma';

  @override
  String get importTemplateBack => 'dumaloq meva';

  @override
  String get importTemplateExample => 'Men har kuni olma yeyman.';

  @override
  String get importTemplateTag => 'ovqat';

  @override
  String get starterTitle => 'Boshlangʻich toʻplamlar';

  @override
  String get starterHint =>
      'Darhol oʻrganib koʻrish uchun bittasini qoʻshing. Keyin uni tahrirlash yoki oʻchirish mumkin.';

  @override
  String get starterAdd => 'Qoʻshish';

  @override
  String get starterWords => 'Kundalik inglizcha soʻzlar (arabcha)';

  @override
  String get starterCapitals => 'Dunyo poytaxtlari';

  @override
  String get starterElements => 'Kimyoviy elementlar';

  @override
  String get settingsAccent => 'Urgʻu rangi';

  @override
  String get accentViolet => 'Binafsha';

  @override
  String get accentBlue => 'Koʻk';

  @override
  String get accentTeal => 'Moviy-yashil';

  @override
  String get accentGreen => 'Yashil';

  @override
  String get accentRose => 'Pushti';

  @override
  String get accentAmber => 'Qahrabo';

  @override
  String get settingsFlashTextSize => 'Kartochka matni oʻlchami';

  @override
  String get settingsFlashTextSample => 'Misol';

  @override
  String get widgetStartFocus => 'Diqqat uchun teging';

  @override
  String widgetFocusUntil(String time) {
    return 'Soat $time gacha diqqat';
  }

  @override
  String get widgetNoCardsDue => 'Kartochkalar: hammasi bajarildi';

  @override
  String get faqMyDayQ => '«Kunimni boshlash» nima qiladi?';

  @override
  String get faqMyDayA =>
      'Bosh ekran uni kuniga bir marta taklif qiladi: bugungi vazifalar, keyingi tadbir, qolgan odatlar va muddati kelgan kartochkalarni koʻrib, bir teginishda diqqat seansini boshlang. Tezkor amallar uchun ilova belgisini bosib turing yoki diqqat vaqti va kartochkalarni koʻrish uchun bosh ekran vidjetini qoʻshing.';

  @override
  String get faqTasksQ => 'Eslatmali vazifani qanday qoʻshaman?';

  @override
  String get faqTasksA =>
      'Bosh sahifadagi «Yangi vazifa» yoki «Vazifalar» dagi + ga teging. Nomini yozing yoki mikrofon orqali ayting, soʻng muddat, vaqt va eslatma belgilang. Muddati oʻtgan vazifalar birinchi turadi.';

  @override
  String get faqFocusQ => 'Diqqat taymeri qanday ishlaydi?';

  @override
  String get faqFocusA =>
      'Pomodoro, teskari sanoq yoki ochiq vaqtni tanlab, «Boshlash» ni bosing; tanaffuslar avtomatik kelishi mumkin. Sozlamalarda yakunlash ovozini tanlash, diqqat paytida «Bezovta qilinmasin» ni yoqish va tabiat tovushlarini har bir seans bilan ijro etish mumkin.';

  @override
  String get faqSoundsQ => 'Tabiat tovushlarini aralashtirsa boʻladimi?';

  @override
  String get faqSoundsA =>
      'Oltitagacha haqiqiy yozuvni yoqing, har birining ovoz balandligini sozlang va aralashmani nom bilan saqlang. Ular fonda ijro etilaveradi, uyqu taymeri esa ularni toʻxtatishi mumkin. Musiqa ishlatilmaydi.';

  @override
  String get faqCalendarQ => 'Taqvim hijriy sanalarni koʻrsata oladimi?';

  @override
  String get faqCalendarA =>
      'Ha. Hijriy sanalar (Ummul Quro) arab tilida avtomatik koʻrinadi va istalgan til uchun Sozlamalarda yoqilishi mumkin. Tadbirlar, muddatli vazifalar va loyiha bosqichlari birga koʻrinadi.';

  @override
  String get faqFlashcardsQ => 'Takrorlash qaysi kartochkalarni koʻrishimni qanday hal qiladi?';

  @override
  String get faqFlashcardsA =>
      'Yaxshi biladigan kartochkalaringiz uzoqroq oraliqdan keyin, xato qilganlaringiz esa tez qaytadi (oraliqli takrorlash). Har bir javobni «Yana», «Qiyin», «Yaxshi» yoki «Oson» deb baholang. Kunlik maqsad qoʻyib, «Bugun» kartochkasida ketma-ketligingizni saqlang. Qolgan kunlarni va har kuni nechta yangi kartochka oʻrganish kerakligini koʻrish uchun toʻplamga imtihon sanasini belgilang. Kartochkalarni sudrab joylash uchun «Mening tartibim» boʻyicha saralang, tinglash uchun istalgan tomondagi karnayga teging, tezlik va takrorlarni «Nutq» menyusida sozlang.';

  @override
  String get faqImportQ => 'Kartochkalarni Anki yoki Excel’dan olib kelsa boʻladimi?';

  @override
  String get faqImportA =>
      'Ha. Toʻplamda «Import» ni tanlang, soʻng faylni tanlang: Anki (.apkg), Excel (.xlsx) yoki CSV va ustunlarni moslang. Kompyuterda kartochka yozish uchun «Jadval andozasi» dan foydalaning. Anki fayllaridagi rasm va tovushlar import qilinmaydi.';

  @override
  String get faqNotesQ => 'Qaydlar nima qila oladi?';

  @override
  String get faqNotesA =>
      'Nazorat roʻyxatlari va formatlash bilan erkin yozing, muhim qaydlarni mahkamlang yoki sevimlilarga qoʻshing, teglar qoʻshib, qaydlarni vazifalarga bogʻlang. Mikrofon tugmasi aytib yozdirish imkonini beradi. Yangi qayd andozadan boshlanishi mumkin (maʼruza, kitob xulosasi, kundalik, haftalik reja), rasm tugmasi esa surat qoʻshadi.';

  @override
  String get faqHabitsQ => 'Odat ketma-ketligi qanday hisoblanadi?';

  @override
  String get faqHabitsA =>
      'Rejalashtirilgan kunda odat marrasiga yetsangiz, kun hisoblanadi. Odatni pauzaga qoʻyish ketma-ketlikni saqlaydi. Har bir odatning oʻz eslatma vaqti boʻlishi mumkin.';

  @override
  String get faqGoalsQ => 'Maqsadlar jarayonni qanday kuzatadi?';

  @override
  String get faqGoalsA =>
      'Maqsadga marra miqdori va birligini bering, soʻng natijani yozib boring. Uning kartochkasi qanchalik yetganingizni va muddatgacha qancha qolganini koʻrsatadi.';

  @override
  String get faqProjectsQ => 'Loyihalar nima uchun kerak?';

  @override
  String get faqProjectsA =>
      'Vazifalarni loyiha ostida guruhlang, sanali bosqichlar qoʻshing va umumiy jarayonni kuzating. Bosqichlar taqvimda ham koʻrinadi.';

  @override
  String get faqInsightsQ => 'Tahlil nimani koʻrsatadi?';

  @override
  String get faqInsightsA =>
      'Kunlar va haftalar boʻyicha diqqat vaqtingiz, bajarilgan vazifalar va oʻqishingiz, yumshoq tavsiyalar bilan. Hammasi telefoningizda hisoblanadi.';

  @override
  String get faqSpacesQ => 'Barcha boʻlimlar qayerda?';

  @override
  String get faqSpacesA =>
      '«Boʻlimlar» ilovaning har bir qismini (qaydlar, toʻplamlar, odatlar, maqsadlar, loyihalar, tovushlar va boshqalar) roʻyxatlaydi, shuning uchun asosiy panel oddiy qoladi.';

  @override
  String get faqBackupQ => 'Maʼlumotlarimning zaxira nusxasi qanday olinadi?';

  @override
  String get faqBackupA =>
      'Ilova har kuni shu telefonda shifrlangan nusxani jimgina saqlaydi va oxirgi 7 tasini qoldiradi. Sozlamalarda parol bilan himoyalangan zaxira faylni eksport qilib, uni boshqa telefonda tiklash ham mumkin.';

  @override
  String get faqPrayerQ => 'Namoz vaqtlari qanday ishlaydi?';

  @override
  String get faqPrayerA =>
      'Shahringizni Sozlamalar → Namoz vaqtlari boʻlimida tanlang. Vaqtlar telefonda oʻsha joyda qoʻllanadigan usul bilan hisoblanadi, usulni va asr mazhabini oʻzgartirish mumkin. Har bir namozda xabar olishingiz mumkin, davom etayotgan diqqat seansi esa pauza qiladi.';

  @override
  String get faqPrivacyQ => 'Maʼlumotlarim qayerda saqlanadi?';

  @override
  String get faqPrivacyA =>
      'Faqat telefoningizda, shifrlangan maʼlumotlar bazasida. Hisob ham, kuzatuv ham yoʻq. Internetdan faqat oʻzingiz yoqqan funksiyalar, masalan, ixtiyoriy yordamchi foydalanadi.';

  @override
  String get faqAssistantQ => 'Yordamchi nima?';

  @override
  String get faqAssistantA =>
      'Sozlamalarda oʻz SI xizmatingizga ulaydigan ixtiyoriy yordamchi. Standart holatda oʻchiq va qayd matnini yuborishdan oldin soʻraydi.';

  @override
  String get tourPlanTitle => 'Kuningizni rejalang';

  @override
  String get tourPlanBody =>
      'Vazifalar, taqvim va odatlar bir sokin joyda. Har tongni «Kunimni boshlash» bilan boshlang.';

  @override
  String get tourFocusTitle => 'Chuqur diqqat';

  @override
  String get tourFocusBody =>
      'Haqiqiy tabiat tovushlari, «Bezovta qilinmasin» va yumshoq yakunlash ohanglari bilan vaqtli seanslar.';

  @override
  String get tourLearnTitle => 'Puxta oʻrganing';

  @override
  String get tourLearnBody =>
      'Oraliqli takrorlashli kartochkalar, koʻp tillarda nutq va Anki yoki Excel’dan import.';

  @override
  String get helpTitle => 'Yordam va savollar';

  @override
  String get helpOpen => 'Ochish';

  @override
  String get helpTour => 'Tanishuv turini boshlash';

  @override
  String get tourNext => 'Keyingi';

  @override
  String get tourDone => 'Boshladik';

  @override
  String get transferColTitle => 'Nomi';

  @override
  String get transferColNotes => 'Qaydlar';

  @override
  String get transferColBody => 'Matn';

  @override
  String get transferColDue => 'Muddat';

  @override
  String get transferColPriority => 'Muhimlik (0-3)';

  @override
  String get transferColDone => 'Bajarilgan';

  @override
  String get transferColProject => 'Loyiha';

  @override
  String get transferColCategory => 'Turkum';

  @override
  String get transferTitle => 'Import va eksport';

  @override
  String get transferSaveAs => 'Boshqacha saqlash';

  @override
  String get transferImport => 'Fayldan import qilish';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV yoki Word ichidagi jadval. Ustunlar: nomi, muddat (2026-12-31), muhimlik 0-3, bajarilgan, loyiha, qaydlar. Ilovada mavjud vazifalar oʻtkazib yuboriladi.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown yoki matn fayllari qaydga aylanadi. Excel yoki CSV: har bir qator uchun bitta qayd (nomi, matn).';

  @override
  String get transferSaved => 'Fayl saqlandi';

  @override
  String get transferFailed => 'Faylni yaratib boʻlmadi. Hech narsa oʻzgarmadi.';

  @override
  String get transferUnsupported =>
      'Bu faylni bu yerda oʻqib boʻlmaydi. Excel, CSV, Word, Markdown yoki matndan foydalaning.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added ta qoʻshildi',
      one: '1 ta qoʻshildi',
      zero: 'Qoʻshiladigan yangi narsa yoʻq',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Matn';

  @override
  String get transferAllNotes => 'Barcha qaydlar';

  @override
  String get transferThisNote => 'Shu qayd';

  @override
  String get transferDeckFormats => 'Excel, Word yoki PDF sifatida saqlash';

  @override
  String get faqFilesQ => 'Excel, Word yoki PDF fayllardan foydalansa boʻladimi?';

  @override
  String get faqFilesA =>
      'Ha. «Vazifalar» va «Qaydlar» tepasida import va eksport tugmasi (ikki strelka) bor, har bir toʻplamda esa u menyuda joylashgan. Excel, CSV, Word yoki PDF sifatida saqlang yoki Excel, CSV, Word, Markdown yoki matn fayllarini olib keling. Ustun nomlari ilovaning istalgan tilida boʻlishi mumkin, saqlagan fayllaringizni esa har doim qayta import qilish mumkin.';

  @override
  String get tplLecture => 'Maʼruza';

  @override
  String get tplBook => 'Kitob xulosasi';

  @override
  String get tplJournal => 'Kundalik';

  @override
  String get tplWeek => 'Haftalik reja';

  @override
  String get tplLectureBody => '## Asosiy fikrlar\n- \n\n## Savollar\n- [ ] \n\n## Xulosa\n';

  @override
  String get tplBookBody =>
      '## Asosiy gʻoya\n\n## Nimani oʻrgandim\n- \n\n## Iqtiboslar\n> \n\n## Qoʻllash uchun\n- [ ] \n';

  @override
  String get tplJournalBody => '## Minnatdorman\n- \n\n## Bugungi diqqat\n- [ ] \n\n## Qaydlar\n';

  @override
  String get tplWeekBody =>
      '## Shu haftaning maqsadlari\n- [ ] \n\n### Shanba\n- [ ] \n\n### Yakshanba\n- [ ] \n\n### Dushanba\n- [ ] \n\n### Seshanba\n- [ ] \n\n### Chorshanba\n- [ ] \n\n### Payshanba\n- [ ] \n\n### Juma\n- [ ] \n';

  @override
  String get tplHint => 'Andozadan boshlash';

  @override
  String get noteImage => 'Rasm';

  @override
  String get noteAddImage => 'Rasm qoʻshish';

  @override
  String get noteImageUnreadable => 'Bu fayl ilova oʻqiy oladigan rasm emas.';

  @override
  String get noteImageTooLarge => 'Bu rasm juda katta.';

  @override
  String get examSet => 'Imtihon sanasini belgilash';

  @override
  String get examDate => 'Imtihon sanasi';

  @override
  String get examToday => 'Imtihon bugun. Omad!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Imtihonga $count kun qoldi',
      one: 'Imtihon ertaga',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kuniga $count ta yangi kartochka oʻrganish',
      one: 'kuniga 1 ta yangi kartochka oʻrganish',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'barcha kartochkalar oʻrganildi, takrorlashda davom eting';

  @override
  String examRaiseLimit(int count) {
    return 'Kuniga $count ta yangi kartochka koʻrsatish';
  }

  @override
  String get backupDriveHint =>
      'Nusxani onlayn saqlash uchun keyin ochiladigan saqlash oynasida Google Drive (yoki boshqa bulut ilovasi) ni tanlang.';

  @override
  String get flashShareDeck => 'Toʻplamni doʻstingiz bilan ulashish';

  @override
  String get flashSortManual => 'Mening tartibim (sudrash)';

  @override
  String get flashReorderHint => 'Kartochkani koʻchirish uchun dastagidan ushlab sudrang.';

  @override
  String get flashReorderNeedsAll => 'Kartochkalarni sudrash uchun qidiruv va filtrlarni tozalang.';

  @override
  String get flashDragHandle => 'Koʻchirish uchun sudrang';

  @override
  String get reportTitle => 'Oylik hisobot';

  @override
  String get reportFocus => 'Diqqat vaqti';

  @override
  String reportSessions(int count) {
    return '$count ta seans';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Eng yaxshi kun: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count ta faol kun';
  }

  @override
  String get reportCards => 'Takrorlangan kartochkalar';

  @override
  String reportCardsKnown(String percent) {
    return '$percent eslab qolindi';
  }

  @override
  String get reportTasks => 'Bajarilgan vazifalar';

  @override
  String get reportHabits => 'Odat belgilari';

  @override
  String get reportEmpty => 'Bu oyda hozircha hech narsa yozilmagan.';

  @override
  String get reportSave => 'PDF yoki Word sifatida saqlash';

  @override
  String get reportPrevMonth => 'Oldingi oy';

  @override
  String get reportNextMonth => 'Keyingi oy';

  @override
  String get careTitle => 'Telefon va maʼlumotlar parvarishi';

  @override
  String get storageTitle => 'Xotira';

  @override
  String get storageSubtitle => 'Joy egallaydigan narsalar va ishlatilmagan rasmlarni tozalash';

  @override
  String get storagePictures => 'Qaydlardagi rasmlar';

  @override
  String get storageCardMedia => 'Kartochkalardagi rasm va audio';

  @override
  String get storageText => 'Qaydlar matni';

  @override
  String get storageFree => 'Telefondagi boʻsh joy';

  @override
  String get storageLow =>
      'Telefoningiz deyarli toʻla. Zaxira nusxalar va eslatmalar ishlashda davom etishi uchun joy boʻshating.';

  @override
  String storageUnused(int count, String size) {
    return '$count ta ishlatilmagan rasm ($size)';
  }

  @override
  String get storageNoUnused => 'Ishlatilmagan rasm yoʻq. Hammasi tartibda.';

  @override
  String get storageClean => 'Ishlatilmagan rasmlarni olib tashlash';

  @override
  String storageCleaned(int count) {
    return '$count ta rasm olib tashlandi';
  }

  @override
  String get storageHint =>
      'Rasmlar hech bir qayd, jumladan savatdagi qaydlar ham ularni koʻrsatmaganda ishlatilmagan deb hisoblanadi.';

  @override
  String get batteryTitle => 'Eslatmalar ishlashini taʼminlash';

  @override
  String get batterySubtitle =>
      'Baʼzi telefonlar fondagi ilovalarni toʻxtatadi. Oʻzingiznikini tekshiring.';

  @override
  String get batteryStatusOk =>
      'Batareyani tejash bu ilovani cheklamaydi. Eslatmalar va tovushlar oʻz vaqtida kelishi kerak.';

  @override
  String get batteryStatusLimited =>
      'Batareyani tejash bu ilovani fonda toʻxtatishi mumkin, shuning uchun eslatmalar va tovushlar kechikishi yoki kelmasligi mumkin.';

  @override
  String get batteryOpen => 'Batareya sozlamalarini ochish';

  @override
  String get batteryOpenApp => 'Ilova sozlamalarini ochish';

  @override
  String get batteryGeneric =>
      'Batareya sozlamalarida bu ilovani tanlang va uni «Cheklanmagan» (yoki «Optimallashtirilmasin») holatiga qoʻying.';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: shuningdek Xavfsizlik › Ruxsatlar › Avtoishga tushirish boʻlimini ochib, bu ilovani yoqing va Batareya tejagichni «Cheklovlarsiz» holatiga qoʻying.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: Batareya › bu ilova boʻlimini ochib, fondagi faollik va avtoishga tushirishga ruxsat bering; ilovani soʻnggi ilovalar roʻyxatida qulflang.';

  @override
  String get batterySamsung =>
      'Samsung: Batareya › Fonda foydalanish cheklovlari: bu ilovani «Uxlayotgan ilovalar» va «Chuqur uxlayotgan ilovalar» roʻyxatidan olib tashlang.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Ilovani ishga tushirish › bu ilova › qoʻlda boshqarish, soʻng avtoishga tushirish, ikkilamchi ishga tushirish va fonda ishlashga ruxsat bering.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Batareya › Fondagi quvvat sarfi › bu ilovaga ruxsat bering va ruxsatlarda avtoishga tushirishni yoqing.';

  @override
  String get whatsNewTitle => 'Yangiliklar';

  @override
  String get whatsNewSubtitle => 'Soʻnggi oʻzgarishlar bir necha qatorda';

  @override
  String get whatsNewDone => 'Tushunarli';

  @override
  String get whatsNewOrderTitle => 'Kartochkalarni oʻz tartibingizda sudrab joylang';

  @override
  String get whatsNewOrderBody =>
      'Toʻplamda Saralash › Mening tartibim ni tanlang, soʻng dastagidan ushlab sudrang.';

  @override
  String get whatsNewSpeechTitle => 'Kartochkaning har bir tomonida karnay';

  @override
  String get whatsNewSpeechBody =>
      'Soʻz yoki tarjimani eshitish uchun unga teging. Tezlik, takrorlar va ovoz takrorlash menyusida. Til matndan aniqlanadi.';

  @override
  String get whatsNewReportTitle => 'Oylik hisobot';

  @override
  String get whatsNewReportBody =>
      'Oyni koʻrish va uni PDF yoki Word sifatida saqlash uchun «Tahlil» dagi hisobot belgisiga teging.';

  @override
  String get whatsNewCareTitle => 'Telefon va maʼlumotlar parvarishi';

  @override
  String get whatsNewCareBody =>
      'Sozlamalarda endi rasmlarni tozalash imkoniyatli xotira sahifasi va telefoningiz brendi uchun batareya qoʻllanmasi bor.';

  @override
  String get whatsNewSoundTitle => 'Sokinroq tovushlar';

  @override
  String get whatsNewSoundBody =>
      'Tabiat tovushlari yumshoqroq va sokinroq, rasmli kartochkalar esa chiroyliroq.';

  @override
  String autoBackupCheckOk(String date) {
    return '$date tekshirildi: oxirgi zaxira nusxa toʻgʻri ochiladi.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date tekshirildi: shikastlangan zaxira nusxa topildi va yangisi bilan almashtirildi.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date tekshirildi: oxirgi zaxira nusxani ochib boʻlmadi. Sozlamalardan zaxira faylni oʻzingiz saqlang.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Odatda taxminan soat $time da oʻqiysiz';
  }

  @override
  String get smartReviewTimeUse => 'Foydalanish';

  @override
  String get widgetNewNote => 'Yangi qayd';

  @override
  String get noteConnections => 'Teglar, havolalar va vazifalar';

  @override
  String get navCards => 'Kartochkalar';

  @override
  String get studyAnswerWay => 'Qanday javob berish';

  @override
  String get studyMorePractice => 'Qoʻshimcha mashq';

  @override
  String get studySessionSettings => 'Seans sozlamalari';

  @override
  String get focusAdjustTitle => 'Sizning seansingiz';

  @override
  String get focusPresetsTitle => 'Tayyor';

  @override
  String get focusPresetStudy => 'Oʻqish';

  @override
  String get focusPresetDeep => 'Chuqur ish';

  @override
  String get focusPresetQuick => 'Tezkor sprint';

  @override
  String get focusPresetReading => 'Kitob oʻqish';

  @override
  String get focusPresetWorkout => 'Mashq raundlari';

  @override
  String get focusAdjustMinutes => 'Diqqat davomiyligi';

  @override
  String get focusAdjustBreak => 'Tanaffus davomiyligi';

  @override
  String get focusAdjustRounds => 'Raundlar';

  @override
  String get focusRoundsOpen => 'Cheksiz';

  @override
  String focusMinutesShort(String n) {
    return '$n daq';
  }

  @override
  String get focusTapToAdjust => 'Vaqtni oʻzgartirish uchun teging';

  @override
  String get flashArrangeDecks => 'Toʻplamlarni tartiblash';

  @override
  String get flashDeckActions => 'Toʻplam parametrlari';

  @override
  String get starterBrowse => 'Tayyor toʻplamlar';

  @override
  String get starterBrowseHint => 'Bir teginishda qoʻshing va oʻrganishni boshlang';

  @override
  String get dashOpenDecks => 'Kartochkalaringizni ochish';

  @override
  String speechVoiceNumber(String n) {
    return '$n-ovoz';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Yaxshi oqim. $m daqiqa dam olasizmi?';
  }

  @override
  String get focusFlowBreakStart => 'Tanaffusni boshlash';

  @override
  String tasksFinishAt(String time) {
    return 'Hozir boshlasangiz, hammasini soat $time gacha tugatasiz';
  }

  @override
  String get focusCalmPacing => 'Sokin surʼat';

  @override
  String get focusCalmPacingHint => 'Faqat butun daqiqalar va halqa, taqillovchi soniyalarsiz';

  @override
  String get focusFlipHint => 'Boshlash uchun telefonni yuzi bilan pastga qoʻying';

  @override
  String get focusImmersive => 'Toʻliq shoʻngʻish rejimi';

  @override
  String get focusImmersiveBlack => 'Toʻliq qora (batareyani tejaydi)';

  @override
  String get focusFlipToFocus => 'Agʻdarib diqqat';

  @override
  String get focusFlipToFocusHint =>
      'Shoʻngʻish rejimida: yuzi bilan pastga qoʻyish boshlaydi, koʻtarish pauza qiladi';

  @override
  String get guardTitle => 'Chalgʻishdan himoya';

  @override
  String get guardSubtitle => 'Diqqat paytida chalgʻituvchi ilovalarni pauza qilish';

  @override
  String get guardSwitch => 'Chalgʻituvchi ilovalarni pauza qilish';

  @override
  String get guardSwitchHint => 'Diqqat seanslari va «Vaqt qoʻriqchisi» soatlarida';

  @override
  String get guardNeedsAccess => 'Maxsus imkoniyatlar kaliti kerak: yoqish uchun teging';

  @override
  String get guardDisclosureTitle => 'Himoya qanday ishlaydi';

  @override
  String get guardDisclosureBody =>
      'Siz tanlagan ilovalarni pauza qilish uchun Deep Focus qaysi ilova ochiqligini koʻrish maqsadida Android maxsus imkoniyatlar xizmatidan foydalanadi. «Shorts va Reels ni yopish» yoqilgan boʻlsa, ekranda qisqa video pleyeri bor-yoʻqligini ham tekshiradi.\n\nU hech qanday matnni oʻqimaydi, koʻrganini saqlamaydi va hech qayerga hech narsa yubormaydi: hammasi telefoningizda qoladi. Uni istalgan vaqtda Maxsus imkoniyatlar sozlamalarida oʻchirishingiz mumkin.';

  @override
  String get guardAgree => 'Rozilik berish va sozlamalarni ochish';

  @override
  String get guardModeGentle => 'Yumshoq';

  @override
  String get guardModeStrict => 'Qatʼiy';

  @override
  String get guardGentleHint => '5 soniyalik nafas pauzasi, keyin oʻzingiz tanlaysiz';

  @override
  String get guardStrictHint => 'Tanlangan ilovalar diqqat vaqti tugaguncha yopiq qoladi';

  @override
  String get guardApps => 'Pauza qilinadigan ilovalar';

  @override
  String get guardAppsAllowed => 'Ruxsat etilgan ilovalar';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta ilova',
      one: '1 ta ilova',
      zero: 'Hozircha hech narsa tanlanmagan',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Faqat tanlangan ilovalarga ruxsat berish';

  @override
  String get guardAllowlistHint =>
      'Qolgan barcha ilovalar pauza qilinadi; qoʻngʻiroqlar, sozlamalar va klaviatura doim ishlaydi';

  @override
  String get guardShorts => 'Shorts va Reels ni yopish';

  @override
  String get guardShortsHint =>
      'Himoya yoqilgan istalgan vaqtda. Imkon qadar: bu ilovalar tez-tez oʻzgaradi';

  @override
  String get guardSchedule => 'Vaqt qoʻriqchisi';

  @override
  String get guardScheduleHint =>
      'Maktab yoki ish kabi belgilangan kun va soatlarda ham himoya qilish';

  @override
  String get guardFrom => 'Dan';

  @override
  String get guardTo => 'Gacha';

  @override
  String get guardSearchApps => 'Ilovalarni qidirish';

  @override
  String get guardNoApps => 'Ilova topilmadi';

  @override
  String get guardPrivacy =>
      'Faqat telefoningizda ishlaydi: himoya qaysi ilova ochiqligini koʻradi, uning ichida nima borligini hech qachon koʻrmaydi va hech narsa yubormaydi.';

  @override
  String get guardBreathe => 'Nafas oling… va chiqaring';

  @override
  String get guardQuestion => 'Bu ilova sizga hozir kerakmi?';

  @override
  String get guardBackToFocus => 'Diqqatga qaytish';

  @override
  String get guardOpenFive => '5 daqiqaga ochish';

  @override
  String get guardStrictBody => 'Bu ilova diqqat vaqtingiz tugaguncha pauza qilingan.';

  @override
  String get guardShortsClosed => 'Himoya yoqilganda qisqa videolar yopiladi';

  @override
  String get faqGuardQ => 'Diqqat paytida chalgʻituvchi ilovalarni qanday toʻxtataman?';

  @override
  String get faqGuardA =>
      'Diqqat → taymer sozlamalari → Chalgʻishdan himoya boʻlimini oching. Ilovalarni tanlang, soʻng «Yumshoq» (5 soniyalik nafas va «Bu ilova sizga hozir kerakmi?» savoli) yoki «Qatʼiy» (ular yopiq qoladi) ni tanlang. U diqqat seanslari paytida, «Vaqt qoʻriqchisi» bilan esa siz belgilagan kun va soatlarda ishlaydi. «Faqat tanlangan ilovalarga ruxsat berish» qolgan hammasini pauza qiladi; qoʻngʻiroqlar, sozlamalar va klaviatura doim ishlaydi. Android sizdan himoyani Maxsus imkoniyatlar sozlamalarida bir marta yoqishni soʻraydi. U faqat qaysi ilova ochiqligini koʻradi va hech narsa yubormaydi.';

  @override
  String notesMovedToNotebook(String name) {
    return '$name ga koʻchirildi';
  }

  @override
  String get notesDragHint => 'Qaydni ushlab, daftarga sudrang';

  @override
  String get guardReviewCards => 'Oʻrniga kartochkalarni takrorlash';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sizni $count ta kartochka kutmoqda',
      one: 'Sizni 1 ta kartochka kutmoqda',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Favqulodda: 10 soniya bosib turing';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Bosib turing… $n';
  }

  @override
  String get guardWeekTitle => 'Shu hafta';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta pauza',
      one: '1 ta pauza',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'diqqatga $count marta qaytildi',
      one: 'diqqatga bir marta qaytildi',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Soʻzlarni qayta nomlash';

  @override
  String get wordsSubtitle => 'Ilovadagi istalgan matn uchun oʻz soʻzingizdan foydalaning';

  @override
  String get wordsHint =>
      'Oʻzgartirish uchun matnga teging. Soʻzlaringiz faqat shu tilga qoʻllanadi va zaxira nusxalarda saqlanadi.';

  @override
  String get wordsSearch => 'Matnlarni qidirish';

  @override
  String get wordsChangedOnly => 'Faqat oʻzgartirilganlar';

  @override
  String wordsOriginal(String text) {
    return 'Asl: $text';
  }

  @override
  String get wordsReset => 'Aslidan foydalanish';

  @override
  String get wordsResetAll => 'Barcha soʻzlarni tiklash';

  @override
  String get wordsResetAllConfirm => 'Bu tildagi barcha matnlar asl holiga qaytadi.';

  @override
  String get wordsNone => 'Matn topilmadi';

  @override
  String get settingsLanguageSearch => 'Tillarni qidirish';

  @override
  String get settingsLanguageNoMatch => 'Mos til yoʻq';

  @override
  String get soundsMyMusic => 'Audiongiz';

  @override
  String get soundsMusicHint =>
      'Telefoningizdagi audio faylni ijro eting. Hech narsa nusxalanmaydi yoki yuklanmaydi.';

  @override
  String get soundsChooseMusic => 'Audio tanlash';

  @override
  String get soundsRemoveMusic => 'Audioni olib tashlash';

  @override
  String get wordPacksTitle => 'So\'z to\'plamlari';

  @override
  String get wordPacksHint =>
      'Mavzular bo\'yicha so\'zlar ro\'yxati. Faqat kerakli tilni yuklab oling, so\'ng kartalarni bemalol tahrirlang yoki o\'chiring.';

  @override
  String get wordPacksFailed => 'Yuklab bo\'lmadi. Ulanishni tekshiring.';

  @override
  String get wordPacksEmpty => 'Bu til so\'zlari hali tayyorlanmoqda.';
}
