// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Utama';

  @override
  String get navTasks => 'Tugasan';

  @override
  String get navFocus => 'Fokus';

  @override
  String get navCalendar => 'Kalendar';

  @override
  String get navSpaces => 'Ruang';

  @override
  String get moduleProjects => 'Projek';

  @override
  String get moduleNotes => 'Nota';

  @override
  String get moduleFlashcards => 'Kad Imbas';

  @override
  String get moduleGoals => 'Matlamat';

  @override
  String get moduleHabits => 'Tabiat';

  @override
  String get moduleAnalytics => 'Wawasan';

  @override
  String get moduleSearch => 'Carian';

  @override
  String get moduleAssistant => 'Pembantu';

  @override
  String get moduleSettings => 'Tetapan';

  @override
  String get moduleTrash => 'Sampah';

  @override
  String get actionSave => 'Simpan';

  @override
  String get actionCancel => 'Batal';

  @override
  String get actionDelete => 'Padam';

  @override
  String get actionEdit => 'Edit';

  @override
  String get actionDone => 'Selesai';

  @override
  String get actionAdd => 'Tambah';

  @override
  String get actionCreate => 'Cipta';

  @override
  String get actionClose => 'Tutup';

  @override
  String get actionBack => 'Kembali';

  @override
  String get actionUndo => 'Buat asal';

  @override
  String get actionRestore => 'Pulihkan';

  @override
  String get actionRetry => 'Cuba lagi';

  @override
  String get actionContinue => 'Teruskan';

  @override
  String get actionSkip => 'Langkau';

  @override
  String get actionArchive => 'Arkib';

  @override
  String get actionUnarchive => 'Nyaharkib';

  @override
  String get actionPin => 'Sematkan';

  @override
  String get actionUnpin => 'Nyahsemat';

  @override
  String get actionMore => 'Lagi pilihan';

  @override
  String get actionClear => 'Kosongkan';

  @override
  String get actionSearch => 'Cari';

  @override
  String get actionSort => 'Isih';

  @override
  String get actionShare => 'Kongsi';

  @override
  String get actionImport => 'Import';

  @override
  String get actionExport => 'Eksport';

  @override
  String get actionPause => 'Jeda';

  @override
  String get actionResume => 'Sambung';

  @override
  String get actionStart => 'Mula';

  @override
  String get actionStop => 'Henti';

  @override
  String get actionComplete => 'Lengkapkan';

  @override
  String get actionDeleteForever => 'Padam selama-lamanya';

  @override
  String get actionEmptyTrash => 'Kosongkan sampah';

  @override
  String get actionUnlink => 'Nyahpaut';

  @override
  String get actionCustomize => 'Sesuaikan';

  @override
  String get actionPreview => 'Pratonton';

  @override
  String get actionLog => 'Log kemajuan';

  @override
  String get stateLoading => 'Memuatkan…';

  @override
  String get stateSaving => 'Menyimpan…';

  @override
  String get stateSaved => 'Disimpan';

  @override
  String get stateUnsaved => 'Perubahan belum disimpan';

  @override
  String get errorGenericTitle => 'Sesuatu tidak kena';

  @override
  String get errorGenericMessage => 'Data anda selamat. Sila cuba lagi.';

  @override
  String get errorLoadFailed => 'Kandungan ini tidak dapat dimuatkan.';

  @override
  String get errorSaveFailed => 'Tidak dapat disimpan. Perubahan anda masih ada di sini.';

  @override
  String get validationRequired => 'Medan ini wajib diisi';

  @override
  String get validationTitleRequired => 'Sila masukkan tajuk';

  @override
  String get validationNameRequired => 'Sila masukkan nama';

  @override
  String get validationTooLong => 'Ini terlalu panjang';

  @override
  String get validationEndBeforeStart => 'Masa tamat mesti selepas masa mula';

  @override
  String get validationStartAfterDue => 'Tarikh mula mesti sebelum tarikh akhir';

  @override
  String get validationPositiveNumber => 'Masukkan nombor yang lebih besar daripada sifar';

  @override
  String get validationDependencyCycle => 'Ini akan mewujudkan kebergantungan berpusing';

  @override
  String get validationInvalidRepeat => 'Peraturan ulangan ini tidak sah';

  @override
  String get deletedItem => 'Dialihkan ke sampah';

  @override
  String get untitled => 'Tanpa tajuk';

  @override
  String get noProject => 'Tiada projek';

  @override
  String get greetingMorning => 'Selamat pagi';

  @override
  String get greetingAfternoon => 'Selamat petang';

  @override
  String get greetingEvening => 'Selamat malam';

  @override
  String get dashFocusToday => 'Fokus hari ini';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done daripada $target';
  }

  @override
  String get dashStartFocus => 'Mula fokus';

  @override
  String get dashFocusRunning => 'Sesi sedang berjalan';

  @override
  String get dashTodayTasks => 'Tamat tempoh hari ini';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Tabiat hari ini';

  @override
  String get dashGoals => 'Matlamat';

  @override
  String get dashReview => 'Ulang kaji';

  @override
  String get dashRecentNotes => 'Nota terkini';

  @override
  String get dashInsight => 'Cadangan';

  @override
  String get dashSeeAll => 'Lihat semua';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad untuk diulang kaji',
      zero: 'Tiada kad untuk diulang kaji',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Ulang kaji sekarang';

  @override
  String get dashCustomizeTitle => 'Bahagian papan pemuka';

  @override
  String get dashCustomizeHint => 'Pilih apa yang dipaparkan pada skrin utama anda.';

  @override
  String get dashSectionFocus => 'Fokus';

  @override
  String get dashSectionToday => 'Tugasan hari ini';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Tabiat';

  @override
  String get dashSectionGoals => 'Matlamat';

  @override
  String get dashSectionReview => 'Ulang kaji kad imbas';

  @override
  String get dashSectionNotes => 'Nota terkini';

  @override
  String get dashSectionInsight => 'Cadangan';

  @override
  String get quickAddTask => 'Tugasan baharu';

  @override
  String get quickAddNote => 'Nota baharu';

  @override
  String get quickAddEvent => 'Acara baharu';

  @override
  String get quickStartFocus => 'Fokus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Anda ada $count tugasan tertunggak. Mulakan dengan yang paling penting.',
      one: 'Anda ada 1 tugasan tertunggak. Jadualkan semula atau siapkan dahulu.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Anda $minutes minit lagi daripada sasaran fokus harian anda.';
  }

  @override
  String get insightCardsDue => 'Ulang kaji kad imbas anda sekarang selagi ia masih segar.';

  @override
  String get insightAllClear =>
      'Semuanya mengikut rancangan. Rancang hari esok atau berehat dengan tenang.';

  @override
  String insightHabitStreak(String habit) {
    return 'Kekalkan rentetan anda: $habit masih belum dibuat hari ini.';
  }

  @override
  String get focusTitle => 'Fokus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Pemasa';

  @override
  String get focusModeCountUp => 'Jam randik';

  @override
  String get focusModeOpen => 'Bebas';

  @override
  String get focusPhaseWork => 'Fokus';

  @override
  String get focusPhaseShortBreak => 'Rehat pendek';

  @override
  String get focusPhaseLongBreak => 'Rehat panjang';

  @override
  String get focusReady => 'Sedia bila-bila anda mahu';

  @override
  String get focusPaused => 'Dijeda';

  @override
  String get focusRunning => 'Sedang fokus';

  @override
  String get focusDuration => 'Tempoh';

  @override
  String get focusLinkTask => 'Pautkan tugasan';

  @override
  String get focusLinkedTask => 'Sedang mengerjakan';

  @override
  String get focusNoTask => 'Tiada tugasan dipautkan';

  @override
  String focusCycle(int current, int total) {
    return 'Kitaran $current daripada $total';
  }

  @override
  String get focusSkipBreak => 'Langkau rehat';

  @override
  String get focusStartBreak => 'Mula rehat';

  @override
  String get focusStartNext => 'Mula fokus seterusnya';

  @override
  String get focusSessionComplete => 'Sesi selesai';

  @override
  String get focusSessionStopped => 'Sesi disimpan';

  @override
  String focusSessionSummary(String duration) {
    return 'Anda telah fokus selama $duration.';
  }

  @override
  String get focusAddNote => 'Tambah nota tentang sesi ini';

  @override
  String get focusHistory => 'Sejarah';

  @override
  String get focusNoHistory => 'Sesi yang selesai akan dipaparkan di sini';

  @override
  String get focusOutcomeCompleted => 'Selesai';

  @override
  String get focusOutcomeInterrupted => 'Dihentikan awal';

  @override
  String get focusRecovered => 'Sesi anda diteruskan semasa apl ditutup.';

  @override
  String get focusCompletedWhileAway => 'Satu sesi tamat semasa apl ditutup dan telah disimpan.';

  @override
  String get focusNotificationsOff =>
      'Pemberitahuan dimatikan. Anda tidak akan dimaklumkan apabila sesi tamat.';

  @override
  String get focusBatteryHint =>
      'Sesetengah peranti menjeda apl di latar belakang. Pemasa tetap tepat, tetapi amaran mungkin lewat. Benarkan penggunaan bateri tanpa had untuk amaran yang boleh diharap.';

  @override
  String get focusOpenSettings => 'Buka tetapan';

  @override
  String get focusStopConfirmTitle => 'Hentikan sesi ini?';

  @override
  String get focusStopConfirmMessage => 'Masa fokus setakat ini akan disimpan.';

  @override
  String get focusDiscard => 'Buang';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(minutes, locale: localeName, other: '$minutes minit');
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, tinggal $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, berlalu $time';
  }

  @override
  String get focusDeleteSession => 'Padam sesi';

  @override
  String get tasksTitle => 'Tugasan';

  @override
  String get tasksViewToday => 'Hari ini';

  @override
  String get tasksViewUpcoming => 'Akan datang';

  @override
  String get tasksViewAll => 'Semua';

  @override
  String get tasksViewOverdue => 'Tertunggak';

  @override
  String get tasksViewCompleted => 'Selesai';

  @override
  String get tasksQuickAddHint => 'Tambah tugasan…';

  @override
  String get tasksEmptyTitle => 'Semua beres';

  @override
  String get tasksEmptyMessage => 'Tambah tugasan untuk mula merancang hari anda.';

  @override
  String get tasksEmptyCompleted => 'Tugasan yang selesai akan dipaparkan di sini.';

  @override
  String get taskNew => 'Tugasan baharu';

  @override
  String get taskEdit => 'Edit tugasan';

  @override
  String get taskTitleLabel => 'Tajuk';

  @override
  String get taskTitleHint => 'Apa yang perlu dibuat?';

  @override
  String get taskDescriptionLabel => 'Penerangan';

  @override
  String get taskNotesLabel => 'Nota';

  @override
  String get taskPriority => 'Keutamaan';

  @override
  String get priorityNone => 'Tiada';

  @override
  String get priorityLow => 'Rendah';

  @override
  String get priorityMedium => 'Sederhana';

  @override
  String get priorityHigh => 'Tinggi';

  @override
  String get priorityUrgent => 'Segera';

  @override
  String get taskDueDate => 'Tarikh akhir';

  @override
  String get taskStartDate => 'Tarikh mula';

  @override
  String get taskReminder => 'Peringatan';

  @override
  String get taskRepeat => 'Ulang';

  @override
  String get taskProject => 'Projek';

  @override
  String get taskCategory => 'Kategori';

  @override
  String get taskCategoryHint => 'cth. Kerja, Rumah, Belajar';

  @override
  String get taskEstimateMinutes => 'Anggaran (minit)';

  @override
  String get taskTracked => 'Fokus yang direkodkan';

  @override
  String get taskLabels => 'Label';

  @override
  String get taskAddLabel => 'Label baharu';

  @override
  String get taskChecklist => 'Senarai semak';

  @override
  String get taskAddChecklistItem => 'Tambah item';

  @override
  String get taskSubtasks => 'Subtugasan';

  @override
  String get taskAddSubtask => 'Tambah subtugasan';

  @override
  String get taskDependencies => 'Disekat oleh';

  @override
  String get taskAddDependency => 'Tambah tugasan penyekat';

  @override
  String get taskLinkedNotes => 'Nota dipautkan';

  @override
  String get taskSetTime => 'Tetapkan masa';

  @override
  String get taskNoDate => 'Tiada tarikh';

  @override
  String get taskCompleted => 'Tugasan selesai';

  @override
  String get taskNextOccurrence => 'Ulangan seterusnya dicipta';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: 'Lewat $days hari');
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Tandakan \"$title\" sebagai selesai';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Tandakan \"$title\" sebagai belum selesai';
  }

  @override
  String get sortSmart => 'Pintar';

  @override
  String get sortDueDate => 'Tarikh akhir';

  @override
  String get sortPriority => 'Keutamaan';

  @override
  String get sortCreated => 'Terbaharu';

  @override
  String get sortTitle => 'Tajuk';

  @override
  String get filterAllProjects => 'Semua projek';

  @override
  String get filterAnyPriority => 'Sebarang keutamaan';

  @override
  String get filterTitle => 'Tapis dan isih';

  @override
  String get dateToday => 'Hari ini';

  @override
  String get dateTomorrow => 'Esok';

  @override
  String get dateYesterday => 'Semalam';

  @override
  String get repeatNever => 'Tidak berulang';

  @override
  String get repeatDaily => 'Setiap hari';

  @override
  String get repeatWeekdays => 'Setiap hari bekerja';

  @override
  String get repeatWeekly => 'Setiap minggu';

  @override
  String get repeatMonthly => 'Setiap bulan';

  @override
  String get repeatYearly => 'Setiap tahun';

  @override
  String get repeatCustom => 'Tersuai';

  @override
  String get repeatEvery => 'Ulang setiap';

  @override
  String get repeatOnDays => 'Pada hari';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'hari');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'minggu');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'bulan');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'tahun');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count kali');
    return 'Tamat selepas $_temp0';
  }

  @override
  String get repeatEndsNever => 'Tidak pernah tamat';

  @override
  String get reminderAtTime => 'Pada masa acara';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minit sebelum',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(hours, locale: localeName, other: '$hours jam sebelum');
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 hari sebelum';

  @override
  String get projectsTitle => 'Projek';

  @override
  String get projectsEmptyTitle => 'Belum ada projek';

  @override
  String get projectsEmptyMessage => 'Kumpulkan tugasan, nota dan masa fokus yang berkaitan.';

  @override
  String get projectNew => 'Projek baharu';

  @override
  String get projectEdit => 'Edit projek';

  @override
  String get projectName => 'Nama';

  @override
  String get projectDescription => 'Penerangan';

  @override
  String get projectGoal => 'Matlamat';

  @override
  String get projectDeadline => 'Tarikh akhir';

  @override
  String get projectColor => 'Warna';

  @override
  String get projectIcon => 'Ikon';

  @override
  String get projectProgress => 'Kemajuan';

  @override
  String projectTasksDone(int done, int total) {
    return '$done daripada $total tugasan selesai';
  }

  @override
  String get projectFocusTime => 'Masa fokus';

  @override
  String get projectArchived => 'Projek yang diarkibkan';

  @override
  String get projectShowArchived => 'Tunjukkan yang diarkibkan';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Tinggal $days hari',
      zero: 'Tamat hari ini',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Melepasi tarikh akhir';

  @override
  String get calendarTitle => 'Kalendar';

  @override
  String get calendarMonth => 'Bulan';

  @override
  String get calendarWeek => 'Minggu';

  @override
  String get calendarDay => 'Hari';

  @override
  String get calendarToday => 'Hari ini';

  @override
  String get calendarPrevious => 'Sebelumnya';

  @override
  String get calendarNext => 'Seterusnya';

  @override
  String get calendarNoEvents => 'Tiada apa-apa dijadualkan';

  @override
  String get calendarAllDay => 'Sepanjang hari';

  @override
  String get eventNew => 'Acara baharu';

  @override
  String get eventEdit => 'Edit acara';

  @override
  String get eventTitleHint => 'Tajuk acara';

  @override
  String get eventStarts => 'Bermula';

  @override
  String get eventEnds => 'Tamat';

  @override
  String get eventKind => 'Jenis';

  @override
  String get eventKindEvent => 'Acara';

  @override
  String get eventKindTimeBlock => 'Blok masa';

  @override
  String get eventKindFocus => 'Sesi fokus';

  @override
  String get eventKindGoal => 'Matlamat peribadi';

  @override
  String get eventDescription => 'Butiran';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bertindih dengan $count acara',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Konflik jadual pada hari ini';

  @override
  String get calendarTaskDue => 'Tugasan tamat tempoh';

  @override
  String get calendarDragHint => 'Tekan lama dan seret acara untuk menjadualkannya semula';

  @override
  String get calendarRescheduled => 'Acara dialihkan';

  @override
  String get calendarScheduleTask => 'Jadualkan sebagai blok masa';

  @override
  String get notesTitle => 'Nota';

  @override
  String get notesViewAll => 'Semua';

  @override
  String get notesViewPinned => 'Disematkan';

  @override
  String get notesViewFavorites => 'Kegemaran';

  @override
  String get notesViewArchived => 'Diarkibkan';

  @override
  String get notesTags => 'Tag';

  @override
  String get notesNewNotebook => 'Buku nota baharu';

  @override
  String get notesNoNotebook => 'Tiada buku nota';

  @override
  String get notesEmptyTitle => 'Kanvas kosong';

  @override
  String get notesEmptyMessage => 'Catat idea, nota mesyuarat dan pengetahuan.';

  @override
  String get noteTitleHint => 'Tajuk';

  @override
  String get noteBodyHint =>
      'Mula menulis… Gunakan # untuk tag dan [[Tajuk]] untuk memautkan nota.';

  @override
  String get noteFavorite => 'Kegemaran';

  @override
  String get noteUnfavorite => 'Alih keluar daripada kegemaran';

  @override
  String get noteMoveTo => 'Alihkan ke buku nota';

  @override
  String get noteBacklinks => 'Dipautkan daripada';

  @override
  String get noteLinkedTasks => 'Tugasan dipautkan';

  @override
  String get noteLinkTask => 'Pautkan tugasan';

  @override
  String get noteLinkProject => 'Projek';

  @override
  String get noteFormatHeading => 'Tajuk kecil';

  @override
  String get noteFormatBold => 'Tebal';

  @override
  String get noteFormatItalic => 'Condong';

  @override
  String get noteFormatList => 'Senarai berbutir';

  @override
  String get noteFormatChecklist => 'Senarai semak';

  @override
  String get noteFormatLink => 'Pautan';

  @override
  String noteEdited(String time) {
    return 'Diedit $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count perkataan');
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kad Imbas';

  @override
  String get flashEmptyTitle => 'Bina dek pertama anda';

  @override
  String get flashEmptyMessage =>
      'Ulangan berjarak menunjukkan setiap kad tepat sebelum anda melupakannya.';

  @override
  String get deckNew => 'Dek baharu';

  @override
  String get deckEdit => 'Edit dek';

  @override
  String get deckName => 'Nama dek';

  @override
  String get deckDescription => 'Penerangan';

  @override
  String get deckDailyNew => 'Kad baharu sehari';

  @override
  String get deckDailyReview => 'Sasaran ulang kaji harian';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad',
      zero: 'Tiada kad',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Perlu diulang kaji';

  @override
  String get deckNewCards => 'Baharu';

  @override
  String get deckMature => 'Matang';

  @override
  String get deckStudy => 'Belajar';

  @override
  String get deckNothingDue => 'Tiada apa-apa untuk diulang kaji sekarang. Kembali kemudian.';

  @override
  String get deckEmptyCards => 'Tambah kad untuk mula belajar.';

  @override
  String get cardNew => 'Kad baharu';

  @override
  String get cardEdit => 'Edit kad';

  @override
  String get cardFront => 'Depan';

  @override
  String get cardBack => 'Belakang';

  @override
  String get cardFrontHint => 'Soalan atau istilah';

  @override
  String get cardBackHint => 'Jawapan atau takrif';

  @override
  String get cardTags => 'Tag';

  @override
  String get cardAddAnother => 'Simpan dan tambah lagi';

  @override
  String get reviewShowAnswer => 'Tunjukkan jawapan';

  @override
  String get reviewAgain => 'Lagi';

  @override
  String get reviewHard => 'Sukar';

  @override
  String get reviewGood => 'Baik';

  @override
  String get reviewEasy => 'Mudah';

  @override
  String reviewProgress(int done, int total) {
    return '$done daripada $total';
  }

  @override
  String get reviewFinishedTitle => 'Sesi selesai';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Anda telah mengulang kaji $count kad.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Ketik untuk melihat jawapan';

  @override
  String get importCardsTitle => 'Import kad';

  @override
  String get importCardsHint =>
      'Tampal satu kad setiap baris (depan dan belakang dipisahkan dengan tab atau koma bertitik), atau pilih fail: Excel (.xlsx), CSV, dek Anki (.apkg) atau dek yang dieksport.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad diimport',
      zero: 'Tiada kad diimport',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Kandungan ini tidak dapat diimport.';

  @override
  String get exportCopied => 'Dek dieksport';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count min');
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count hari');
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Matlamat';

  @override
  String get goalsEmptyTitle => 'Sasarkan sesuatu';

  @override
  String get goalsEmptyMessage =>
      'Tetapkan matlamat harian, mingguan, bulanan atau jangka panjang dan jejaki kemajuan sebenar.';

  @override
  String get goalNew => 'Matlamat baharu';

  @override
  String get goalEdit => 'Edit matlamat';

  @override
  String get goalTitleHint => 'Apa yang anda mahu capai?';

  @override
  String get goalPeriod => 'Tempoh';

  @override
  String get goalPeriodDaily => 'Harian';

  @override
  String get goalPeriodWeekly => 'Mingguan';

  @override
  String get goalPeriodMonthly => 'Bulanan';

  @override
  String get goalPeriodLongTerm => 'Jangka panjang';

  @override
  String get goalTarget => 'Sasaran';

  @override
  String get goalUnit => 'Unit';

  @override
  String get goalUnitHint => 'cth. halaman, km, jam';

  @override
  String get goalStatusActive => 'Aktif';

  @override
  String get goalStatusPaused => 'Dijeda';

  @override
  String get goalStatusAchieved => 'Tercapai';

  @override
  String get goalPause => 'Jeda matlamat';

  @override
  String get goalResume => 'Sambung matlamat';

  @override
  String get goalMarkAchieved => 'Tandakan sebagai tercapai';

  @override
  String goalProgressOf(String current, String target) {
    return '$current daripada $target';
  }

  @override
  String get goalLogAmount => 'Jumlah';

  @override
  String get goalLogNote => 'Nota (pilihan)';

  @override
  String get goalHistory => 'Sejarah';

  @override
  String get goalNoHistory => 'Kemajuan yang direkodkan akan dipaparkan di sini';

  @override
  String get goalLinkedTasks => 'Tugasan dipautkan';

  @override
  String get goalLinkedTasksHint =>
      'Setiap tugasan dipautkan yang selesai dikira sebagai 1 ke arah matlamat ini.';

  @override
  String get goalThisPeriod => 'Tempoh ini';

  @override
  String get habitsTitle => 'Tabiat';

  @override
  String get habitsEmptyTitle => 'Langkah kecil, setiap hari';

  @override
  String get habitsEmptyMessage => 'Cipta tabiat dan tandakannya apabila anda melakukannya.';

  @override
  String get habitNew => 'Tabiat baharu';

  @override
  String get habitEdit => 'Edit tabiat';

  @override
  String get habitNameHint => 'cth. Baca 20 halaman';

  @override
  String get habitDays => 'Jadual';

  @override
  String get habitEveryDay => 'Setiap hari';

  @override
  String get habitTargetPerDay => 'Kali sehari';

  @override
  String get habitReminder => 'Peringatan harian';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rentetan $count hari',
      zero: 'Tiada rentetan',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Rentetan terbaik';

  @override
  String get habitCurrentStreak => 'Rentetan semasa';

  @override
  String get habitConsistency => 'Konsistensi';

  @override
  String get habitLast90 => '90 hari terakhir';

  @override
  String get habitPaused => 'Dijeda';

  @override
  String get habitPause => 'Jeda tabiat';

  @override
  String get habitResume => 'Sambung tabiat';

  @override
  String get habitDoneToday => 'Selesai hari ini';

  @override
  String habitCountToday(int count, int target) {
    return '$count daripada $target hari ini';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Tandakan \"$name\"';
  }

  @override
  String get habitNotScheduledToday => 'Tidak dijadualkan hari ini';

  @override
  String get analyticsTitle => 'Wawasan';

  @override
  String get rangeWeek => '7 hari';

  @override
  String get rangeMonth => '30 hari';

  @override
  String get rangeQuarter => '90 hari';

  @override
  String get statFocusTime => 'Masa fokus';

  @override
  String get statSessions => 'Sesi';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed selesai · $interrupted dihentikan awal';
  }

  @override
  String get statTasksDone => 'Tugasan selesai';

  @override
  String get statCompletionRate => 'Selesai tepat pada masa';

  @override
  String get statHabitConsistency => 'Konsistensi tabiat';

  @override
  String get statRetention => 'Ingatan kad';

  @override
  String get statReviews => 'Ulang kaji';

  @override
  String get statActiveGoals => 'Matlamat aktif';

  @override
  String get statEstimated => 'Anggaran kerja yang selesai';

  @override
  String get statEstimatedNote => 'Berdasarkan anggaran anda, bukan masa yang diukur';

  @override
  String get statMeasuredNote => 'Diukur daripada sesi fokus';

  @override
  String get chartFocusByDay => 'Minit fokus sehari';

  @override
  String get chartTasksByDay => 'Tugasan selesai sehari';

  @override
  String get chartTimeByProject => 'Masa mengikut projek';

  @override
  String get chartProjectProgress => 'Kemajuan projek';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: jumlah $total, hari terbaik $best';
  }

  @override
  String get analyticsNoData => 'Belum cukup data';

  @override
  String get analyticsUnassigned => 'Tidak ditetapkan';

  @override
  String get searchHint => 'Cari semua…';

  @override
  String get searchRecent => 'Carian terkini';

  @override
  String get searchClearRecent => 'Kosongkan carian terkini';

  @override
  String searchNoResults(String query) {
    return 'Tiada hasil untuk \"$query\"';
  }

  @override
  String get searchStartTyping =>
      'Cari dalam tugasan, nota, kad, matlamat, acara dan banyak lagi. Carian kekal pada peranti ini.';

  @override
  String get searchCatTask => 'Tugasan';

  @override
  String get searchCatProject => 'Projek';

  @override
  String get searchCatNote => 'Nota';

  @override
  String get searchCatFlashcard => 'Kad';

  @override
  String get searchCatDeck => 'Dek';

  @override
  String get searchCatGoal => 'Matlamat';

  @override
  String get searchCatHabit => 'Tabiat';

  @override
  String get searchCatEvent => 'Acara';

  @override
  String get searchCatSession => 'Sesi';

  @override
  String get searchAll => 'Semua';

  @override
  String get assistantTitle => 'Pembantu';

  @override
  String get assistantIntro =>
      'Bantuan perancangan yang berfungsi pada peranti anda. Secara pilihan, sambungkan penyedia AI pilihan anda untuk ringkasan dan penjanaan.';

  @override
  String get assistantOnDevice => 'Pada peranti';

  @override
  String get assistantCloud => 'Penyedia AI';

  @override
  String get assistantPlanDay => 'Rancang hari saya';

  @override
  String get assistantPlanDayDesc =>
      'Menyusun tugasan terbuka mengikut kesegeraan, keutamaan dan anggaran, serta memuatkannya di sekitar acara anda.';

  @override
  String get assistantExtractTasks => 'Ekstrak tugasan daripada nota';

  @override
  String get assistantExtractTasksDesc =>
      'Mencari item senarai semak dan baris tindakan dalam nota dan menukarkannya kepada tugasan.';

  @override
  String get assistantMakeCards => 'Buat kad imbas daripada nota';

  @override
  String get assistantMakeCardsDesc =>
      'Menukar baris \"istilah: takrif\" dan soalan/jawapan kepada kad.';

  @override
  String get assistantSummarize => 'Ringkaskan nota';

  @override
  String get assistantSummarizeDesc =>
      'Memerlukan penyedia AI. Nota dihantar hanya selepas anda mengesahkan.';

  @override
  String get assistantWorkload => 'Gambaran beban kerja';

  @override
  String get assistantWorkloadDesc =>
      'Membandingkan anggaran kerja dengan masa lapang anda minggu ini.';

  @override
  String get assistantPlanEmpty => 'Tiada tugasan terbuka untuk dirancang. Nikmati ruang ini.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Masa fokus lapang hari ini: $time';
  }

  @override
  String get assistantPlanOverflow => 'Ini mungkin tidak muat hari ini:';

  @override
  String get assistantChooseNote => 'Pilih nota';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugasan ditemui',
      zero: 'Tiada tugasan ditemui dalam nota ini',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad ditemui',
      zero: 'Tiada kad ditemui dalam nota ini',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Pilih dek';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Anggaran kerja: $estimated. Masa lapang: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Anda merancang lebih daripada masa yang ada. Pertimbangkan untuk mengalihkan tugasan berkeutamaan rendah.';

  @override
  String get assistantWorkloadOk => 'Rancangan anda muat dalam masa yang ada.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugasan terbuka tiada anggaran.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Penyedia AI';

  @override
  String get assistantProviderOff =>
      'Tiada penyedia disambungkan. Alat pada peranti masih berfungsi.';

  @override
  String assistantProviderOn(String host) {
    return 'Disambungkan ke $host';
  }

  @override
  String get assistantEndpoint => 'Titik akhir API (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'Kunci API';

  @override
  String get assistantApiKeyStored => 'Disimpan dengan selamat pada peranti ini';

  @override
  String get assistantHttpsOnly => 'Hanya titik akhir HTTPS dibenarkan';

  @override
  String get assistantConsentTitle => 'Hantar kandungan ini kepada penyedia AI anda?';

  @override
  String assistantConsentBody(String host) {
    return 'Teks nota yang dipilih akan meninggalkan peranti ini dan diproses oleh $host. Tiada apa-apa lagi dihantar.';
  }

  @override
  String get assistantConsentAlways => 'Jangan tanya lagi untuk penyedia ini';

  @override
  String get assistantSend => 'Hantar';

  @override
  String get assistantUnavailable => 'Penyedia AI tidak dapat dihubungi. Cuba lagi nanti.';

  @override
  String get assistantDisabledTitle => 'Pembantu dimatikan';

  @override
  String get assistantDisabledMessage =>
      'Hidupkannya untuk menggunakan alat perancangan. Tiada data meninggalkan peranti anda melainkan anda menyambungkan penyedia dan mengesahkan setiap permintaan.';

  @override
  String get assistantSummaryTitle => 'Ringkasan';

  @override
  String get assistantRemoveProvider => 'Alih keluar penyedia';

  @override
  String get settingsTitle => 'Tetapan';

  @override
  String get settingsGeneral => 'Umum';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get settingsLanguageSystem => 'Bahasa peranti';

  @override
  String get settingsAppearance => 'Rupa';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Cerah';

  @override
  String get themeDark => 'Gelap';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get settingsReduceMotion => 'Kurangkan gerakan';

  @override
  String get settingsReduceMotionDesc => 'Kurangkan animasi dan latar belakang yang bergerak';

  @override
  String get settingsFocus => 'Pemasa fokus';

  @override
  String get settingsWorkLength => 'Tempoh fokus';

  @override
  String get settingsShortBreak => 'Rehat pendek';

  @override
  String get settingsLongBreak => 'Rehat panjang';

  @override
  String get settingsLongBreakEvery => 'Rehat panjang selepas';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count sesi');
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Mulakan rehat secara automatik';

  @override
  String get settingsSound => 'Bunyi tamat';

  @override
  String get settingsDailyFocusTarget => 'Sasaran fokus harian';

  @override
  String get settingsWeeklyFocusTarget => 'Sasaran fokus mingguan';

  @override
  String get settingsNotifications => 'Pemberitahuan';

  @override
  String get settingsNotificationsEnable => 'Benarkan peringatan';

  @override
  String get settingsQuietHours => 'Waktu senyap';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Peringatan tabiat, matlamat dan ulang kaji disenyapkan dari $start hingga $end';
  }

  @override
  String get settingsReviewReminder => 'Peringatan ulang kaji kad imbas';

  @override
  String get settingsPermissionDenied => 'Pemberitahuan disekat dalam tetapan sistem.';

  @override
  String get settingsPrivacy => 'Privasi dan data';

  @override
  String get settingsPrivacyStatement =>
      'Data anda disimpan hanya pada peranti ini dan disulitkan. Tiada akaun, tiada analitik dan tiada penjejakan.';

  @override
  String get settingsBackup => 'Cipta sandaran yang disulitkan';

  @override
  String get settingsBackupDesc => 'Dilindungi dengan kata laluan pilihan anda';

  @override
  String get settingsRestore => 'Pulihkan daripada sandaran';

  @override
  String get settingsRestoreDesc => 'Menggantikan semua data pada peranti ini';

  @override
  String get settingsErase => 'Padam semua data';

  @override
  String get settingsEraseDesc => 'Padam semua yang ada pada peranti ini secara kekal';

  @override
  String get settingsEraseConfirmTitle => 'Padam semua data?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Setiap tugasan, nota, kad, matlamat, tabiat, acara dan sesi akan dipadam secara kekal. Taip $word untuk mengesahkan.';
  }

  @override
  String get settingsEraseWord => 'PADAM';

  @override
  String get settingsErased => 'Semua data dipadam';

  @override
  String get backupPassword => 'Kata laluan sandaran';

  @override
  String get backupPasswordConfirm => 'Sahkan kata laluan';

  @override
  String backupPasswordHint(int count) {
    return 'Sekurang-kurangnya $count aksara. Ia tidak dapat dipulihkan jika hilang.';
  }

  @override
  String get backupPasswordMismatch => 'Kata laluan tidak sepadan';

  @override
  String get backupPasswordShort => 'Kata laluan terlalu pendek';

  @override
  String get backupCreating => 'Menyulitkan sandaran…';

  @override
  String get backupCreated => 'Sandaran sedia untuk disimpan';

  @override
  String get backupRestoring => 'Mengesahkan dan memulihkan…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item dipulihkan',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Kata laluan salah, atau fail telah diubah suai.';

  @override
  String get backupNotABackup => 'Fail ini bukan sandaran Deep Focus.';

  @override
  String get backupCorrupted => 'Fail sandaran rosak.';

  @override
  String get backupNewer =>
      'Sandaran ini dibuat oleh versi apl yang lebih baharu. Sila kemas kini dahulu.';

  @override
  String get backupRestoreConfirmTitle => 'Gantikan semua data?';

  @override
  String get backupRestoreConfirmBody =>
      'Semua yang ada pada peranti ini sekarang akan digantikan oleh sandaran. Jika pemulihan gagal, tiada apa-apa yang berubah.';

  @override
  String get settingsAbout => 'Perihal';

  @override
  String settingsVersion(String version) {
    return 'Versi $version';
  }

  @override
  String get settingsLicenses => 'Lesen sumber terbuka';

  @override
  String get settingsAssistant => 'Pembantu';

  @override
  String get settingsAssistantEnable => 'Dayakan pembantu';

  @override
  String get settingsDashboard => 'Bahagian utama';

  @override
  String get settingsTrash => 'Sampah';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Sampah kosong';

  @override
  String get trashHint => 'Item yang dipadam kekal di sini sehingga anda mengalih keluarnya.';

  @override
  String get trashTasks => 'Tugasan';

  @override
  String get trashNotes => 'Nota';

  @override
  String get onboardWelcomeTitle => 'Selamat datang ke ruang kerja masa depan anda';

  @override
  String get onboardWelcomeBody =>
      'Tugasan, fokus, kalendar, nota, kad imbas, matlamat dan tabiat — bersama, ringkas dan indah.';

  @override
  String get onboardPrivateTitle => 'Peribadi secara reka bentuk';

  @override
  String get onboardPrivateBody =>
      'Semuanya kekal pada peranti ini, disulitkan. Tiada akaun. Tiada penjejakan. Anda yang mengawal.';

  @override
  String get onboardLanguageTitle => 'Pilih bahasa anda';

  @override
  String get onboardNotifTitle => 'Peringatan lembut';

  @override
  String get onboardNotifBody =>
      'Benarkan pemberitahuan untuk peringatan tugasan dan amaran fokus. Anda boleh menukarnya bila-bila masa.';

  @override
  String get onboardGetStarted => 'Mulakan';

  @override
  String onboardStep(int current, int total) {
    return 'Langkah $current daripada $total';
  }

  @override
  String get notifChannelReminders => 'Peringatan';

  @override
  String get notifChannelRemindersDesc => 'Peringatan tugasan, acara, tabiat dan matlamat';

  @override
  String get notifChannelFocus => 'Pemasa fokus';

  @override
  String get notifChannelFocusDesc => 'Amaran apabila sesi fokus atau rehat tamat';

  @override
  String get notifTaskTitle => 'Peringatan tugasan';

  @override
  String get notifEventTitle => 'Acara akan datang';

  @override
  String notifEventBody(String title, String time) {
    return '$title pada $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sesi fokus selesai';

  @override
  String get notifFocusDoneBody => 'Kerja yang hebat. Masa untuk berehat.';

  @override
  String get notifBreakDoneTitle => 'Rehat sudah tamat';

  @override
  String get notifBreakDoneBody => 'Sedia untuk sesi fokus seterusnya?';

  @override
  String get notifHabitTitle => 'Peringatan tabiat';

  @override
  String get notifReviewTitle => 'Kad imbas sudah sedia';

  @override
  String get notifReviewBody => 'Ulang kaji ringkas mengekalkan ingatan anda kuat.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours j $minutes min';
  }

  @override
  String durationHours(int hours) {
    return '$hours j';
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
  String get weekdaysShort => 'I,S,R,K,J,S,A';

  @override
  String a11yProgress(int value) {
    return 'Kemajuan $value peratus';
  }

  @override
  String a11yPriority(String level) {
    return 'Keutamaan: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Warna $index';
  }

  @override
  String get analyticsRangeLabel => 'Julat masa';

  @override
  String get analyticsRefresh => 'Muat semula';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done daripada $total tugasan bertarikh akhir selesai tepat pada masa';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done daripada $total tugasan selesai';
  }

  @override
  String get analyticsNoProjects => 'Tiada projek aktif';

  @override
  String get analyticsNoFocus => 'Tiada sesi fokus dalam julat ini';

  @override
  String get analyticsHabitsNone => 'Tiada tabiat aktif';

  @override
  String get analyticsRetentionNote => 'Bahagian kad matang yang anda ingat';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Masa lapang dikira $start–$end pada hari bekerja ($days), tolak acara bermasa. Anggaran kerja ialah jumlah anggaran tugasan terbuka yang tamat tempoh dalam 7 hari akan datang.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Isnin–Jumaat';

  @override
  String get assistantWorkdaysSunThu => 'Ahad–Khamis';

  @override
  String get assistantWorkloadDayOff => 'Hari cuti';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated dirancang · $free lapang';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Dirancang dari sekarang hingga $end, di sekitar acara hari ini. Tugasan tertunggak dahulu, kemudian keutamaan, tarikh akhir dan anggaran.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Jadualkan sebagai blok masa';

  @override
  String get assistantScheduleConfirmTitle => 'Tambah blok masa ke kalendar anda?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blok masa akan ditambah ke kalendar hari ini.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blok masa ditambah',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Sudah ada dalam kalendar anda';

  @override
  String get assistantPlanTimeline => 'Muat hari ini';

  @override
  String get assistantNoEstimate => 'Tambah anggaran untuk merancang ini';

  @override
  String get assistantNoNotes => 'Belum ada nota. Tulis nota dahulu.';

  @override
  String get assistantNoteEmpty => 'Nota ini kosong.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugasan dicipta',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count kad dicipta');
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cipta $count',
      zero: 'Tiada yang dipilih',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Dikenali: kotak semak yang tidak ditanda \"- [ ]\" dan baris yang bermula dengan TODO: atau To do:';

  @override
  String get assistantCardsHint =>
      'Dikenali: \"istilah: takrif\", \"istilah — takrif\" dan pasangan baris Q:/A:';

  @override
  String get assistantProviderHint =>
      'Gunakan mana-mana perkhidmatan yang serasi dengan OpenAI. Kunci kekal dalam storan selamat peranti ini dan tidak pernah dimasukkan dalam sandaran.';

  @override
  String get assistantEndpointHelp => 'Contohnya https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Biarkan kosong untuk mengekalkan kunci yang disimpan';

  @override
  String get assistantApiKeyRequired => 'Masukkan kunci API';

  @override
  String get assistantProviderSaved => 'Penyedia disimpan';

  @override
  String get assistantProviderRemoved => 'Penyedia dialih keluar dan kunci dipadam';

  @override
  String get assistantRemoveProviderConfirm =>
      'Alih keluar penyedia dan padam kunci API yang disimpan daripada peranti ini?';

  @override
  String get assistantAskEveryTime => 'Tanya sebelum setiap permintaan';

  @override
  String get assistantSummarizing => 'Meringkaskan…';

  @override
  String assistantSummaryNote(String host) {
    return 'Dijana oleh $host. Semak sebelum bergantung padanya.';
  }

  @override
  String get assistantCopy => 'Salin';

  @override
  String get assistantCopied => 'Disalin';

  @override
  String get assistantConfigure => 'Sediakan penyedia';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Semua acara dalam siri ini telah dialihkan';

  @override
  String get calendarEventReminder => 'Peringatan';

  @override
  String get calendarEventRepeat => 'Ulang';

  @override
  String get calendarEventColor => 'Warna';

  @override
  String get calendarDefaultColor => 'Guna warna jenis';

  @override
  String get calendarEventLinkedTask => 'Tugasan dipautkan';

  @override
  String get calendarEventNoTask => 'Tiada tugasan dipautkan';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count acara',
      zero: 'Tiada acara',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugasan tamat tempoh',
      zero: 'tiada tugasan tamat tempoh',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Tambah acara atau blok masa untuk merancang hari ini.';

  @override
  String get calendarNow => 'Masa semasa';

  @override
  String get calendarRecurring => 'Berulang';

  @override
  String get calendarEventNotFound => 'Acara ini tidak wujud lagi';

  @override
  String get calendarEventLocalTime => 'Masa dipaparkan dalam zon waktu peranti anda';

  @override
  String get calendarEventDeleted => 'Acara dialihkan ke sampah';

  @override
  String get calendarConflictMarker => 'Bertindih dengan acara lain';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Perubahan dikenakan pada setiap acara dalam siri ini';

  @override
  String get calendarDragHintSeries => 'Menyeret acara berulang mengalihkan keseluruhan siri';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, tugasan tamat tempoh';
  }

  @override
  String get startupErrorTitle => 'Data anda tidak dapat dibuka';

  @override
  String get startupErrorLocked =>
      'Kunci penyulitan untuk data peranti ini tidak tersedia. Tiada apa-apa dipadam. Memulakan semula peranti selalunya membantu. Jika anda baru memulihkan peranti, pulihkan data anda daripada sandaran yang disulitkan.';

  @override
  String get startupErrorCipher =>
      'Peranti ini tidak menyokong storan disulitkan yang diperlukan oleh apl. Tiada apa-apa disimpan tanpa penyulitan.';

  @override
  String get startupErrorRetry => 'Cuba lagi';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad perlu diulang kaji',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count perlu';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count baharu';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Kad matang: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Masukkan 0 atau lebih';

  @override
  String get flashcardsSearchCards => 'Cari kad';

  @override
  String get flashcardsSearchEmpty => 'Tiada kad sepadan dengan carian anda';

  @override
  String get flashcardsCardAdded => 'Kad ditambah';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Tamat $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Salin ke papan keratan';

  @override
  String get flashcardsExportTitle => 'Eksport dek';

  @override
  String get flashcardsDeleteDeck => 'Padam dek';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, ulang kaji seterusnya dalam $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Soalan: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Jawapan: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Tunjukkan soalan';

  @override
  String get flashcardsImportField => 'Kad untuk diimport';

  @override
  String get flashcardsNothingToStudy => 'Tiada apa-apa untuk dipelajari';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad sedia untuk dipelajari',
      zero: 'Tiada kad yang sedia',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Mengikut penilaian';

  @override
  String get flashcardsDeckNotFound => 'Dek ini tidak tersedia lagi.';

  @override
  String get focusSessionDeleted => 'Sesi dipadam';

  @override
  String get focusDeleteConfirm =>
      'Padam sesi ini daripada sejarah anda? Masanya tidak akan dikira lagi ke arah sasaran anda.';

  @override
  String get focusUnlinkTask => 'Alih keluar tugasan dipautkan';

  @override
  String get focusNoteHint => 'Apa yang anda kerjakan?';

  @override
  String get focusModeLabel => 'Mod pemasa';

  @override
  String focusUpNext(String phase) {
    return 'Seterusnya: $phase';
  }

  @override
  String get focusStopwatchHint => 'Mengira ke atas sehingga anda berhenti.';

  @override
  String get focusOpenHint => 'Tiada had masa. Berhenti bila-bila anda selesai.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Peringatan dimatikan dalam tetapan. Anda tidak akan dimaklumkan apabila sesi tamat.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Semua';

  @override
  String get goalsFilterPeriod => 'Penapis tempoh';

  @override
  String get goalsFilterStatus => 'Penapis status';

  @override
  String get goalsEmptyFiltered => 'Tiada matlamat sepadan dengan penapis ini';

  @override
  String goalsDueOn(String date) {
    return 'Tamat $date';
  }

  @override
  String get goalsDeadline => 'Tarikh akhir (pilihan)';

  @override
  String get goalsNoDeadline => 'Tiada tarikh akhir';

  @override
  String get goalsSetDeadline => 'Tetapkan tarikh akhir';

  @override
  String get goalsRemoveDeadline => 'Alih keluar tarikh akhir';

  @override
  String get goalsDescription => 'Penerangan (pilihan)';

  @override
  String get goalsTitleLabel => 'Tajuk';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Sasaran dicapai';

  @override
  String get goalsLogged => 'Kemajuan direkodkan';

  @override
  String get goalsEntryDeleted => 'Entri dialih keluar';

  @override
  String get goalsDeleteEntry => 'Alih keluar entri';

  @override
  String get goalsDeleted => 'Matlamat dipadam';

  @override
  String get goalsMarkActive => 'Tandakan sebagai aktif';

  @override
  String get goalsNotFound => 'Matlamat ini tidak tersedia lagi';

  @override
  String get goalsLinkTask => 'Pautkan tugasan';

  @override
  String get goalsNoLinkedTasks => 'Belum ada tugasan dipautkan';

  @override
  String get goalsUnlinkTask => 'Nyahpaut tugasan';

  @override
  String get goalsTaskOpen => 'Belum selesai';

  @override
  String get goalsTaskLinked => 'Tugasan dipautkan';

  @override
  String get goalsTaskUnlinked => 'Tugasan dinyahpaut';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugasan dipautkan yang selesai',
    );
    return 'Termasuk $_temp0 dalam tempoh ini';
  }

  @override
  String get goalsHistoryAllTime =>
      'Entri daripada tempoh terdahulu disimpan di sini tetapi hanya dikira untuk tempohnya sendiri.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done daripada $total selesai hari ini';
  }

  @override
  String get habitsNothingToday => 'Tiada tabiat dijadualkan untuk hari ini';

  @override
  String get habitsDecrease => 'Alih keluar satu tanda';

  @override
  String get habitsResetToday => 'Set semula hari ini';

  @override
  String get habitsCheckInHint => 'Tekan lama untuk melaraskan';

  @override
  String get habitsName => 'Nama';

  @override
  String get habitsColor => 'Warna';

  @override
  String get habitsValidationDays => 'Pilih sekurang-kurangnya satu hari';

  @override
  String habitsReminderAt(String time) {
    return 'Setiap hari pada $time';
  }

  @override
  String get habitsSetReminder => 'Tetapkan masa peringatan';

  @override
  String get habitsRemoveReminder => 'Alih keluar peringatan';

  @override
  String get habitsReminderNote =>
      'Peringatan muncul pada hari yang dijadualkan apabila pemberitahuan dibenarkan.';

  @override
  String get habitsArchived => 'Tabiat diarkibkan';

  @override
  String get habitsNotFound => 'Tabiat ini tidak tersedia lagi';

  @override
  String get habitsLast30 => '30 hari terakhir';

  @override
  String get habitsConsistencyNone => 'Belum cukup data';

  @override
  String get habitsCalendar => 'Sejarah tanda';

  @override
  String get habitsCalendarHint => 'Ketik hari untuk membetulkannya.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count daripada $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Tanda sepanjang 90 hari terakhir. Konsistensi $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Tanda sepanjang 90 hari terakhir. Belum cukup data.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count hari');
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Hari yang dijeda tidak menjejaskan rentetan anda.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arkibkan tabiat';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kali sehari',
      one: 'Sekali sehari',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Nota lain';

  @override
  String get notesAllNotebooks => 'Semua buku nota';

  @override
  String get notesNotebookName => 'Nama buku nota';

  @override
  String get notesNotebookColor => 'Warna';

  @override
  String get notesDeleteNotebook => 'Padam buku nota';

  @override
  String get notesDeleteNotebookMessage =>
      'Buku nota dialih keluar. Notanya disimpan dan dipaparkan di bawah Semua buku nota.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Sematkan nota penting untuk mengekalkannya di bahagian atas.';

  @override
  String get notesEmptyFavorites => 'Nota yang anda tandakan sebagai kegemaran dipaparkan di sini.';

  @override
  String get notesEmptyArchived => 'Nota yang diarkibkan dipaparkan di sini.';

  @override
  String get notesEmptyFiltered => 'Tiada nota sepadan dengan penapis ini.';

  @override
  String get notesArchivedSnack => 'Nota diarkibkan';

  @override
  String get notesUnarchivedSnack => 'Nota dikembalikan ke nota anda';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done daripada $total selesai';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Pemformatan';

  @override
  String get notesWrite => 'Tulis';

  @override
  String get notesPreviewEmpty => 'Belum ada apa-apa untuk dipratonton.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Belum ada nota lain yang memaut ke sini. Pautkan ke nota ini dengan [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Beri nota ini tajuk supaya nota lain boleh memaut kepadanya.';

  @override
  String get notesLinkedTasksEmpty => 'Tiada tugasan dipautkan dengan nota ini.';

  @override
  String notesLinkMissing(String title) {
    return 'Belum ada nota bertajuk \"$title\".';
  }

  @override
  String get notesNotFound => 'Nota ini tidak wujud lagi.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Item senarai semak: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Buka nota $title';
  }

  @override
  String get notesTaskDone => 'Selesai';

  @override
  String get notifTimerDoneBody => 'Masa yang anda tetapkan telah berlalu.';

  @override
  String get onboardingPrivatePointDevice => 'Disimpan hanya pada peranti ini, disulitkan';

  @override
  String get onboardingPrivatePointAccount => 'Tiada akaun diperlukan';

  @override
  String get onboardingPrivatePointTracking => 'Tiada analitik, tiada penjejakan';

  @override
  String get onboardingLanguageBody => 'Anda boleh menukarnya bila-bila masa dalam Tetapan.';

  @override
  String get onboardingNext => 'Seterusnya';

  @override
  String get projectsActive => 'Aktif';

  @override
  String get projectNameHint => 'cth. Pelancaran produk';

  @override
  String get projectGoalHint => 'Bagaimana rupa hasil yang siap?';

  @override
  String get projectNoDeadline => 'Tiada tarikh akhir';

  @override
  String get projectTasksOpen => 'Tugasan terbuka';

  @override
  String get projectTasksCompleted => 'Tugasan selesai';

  @override
  String get projectAddTask => 'Tambah tugasan ke projek';

  @override
  String get projectAddNote => 'Nota projek baharu';

  @override
  String get projectLinkedNotes => 'Nota';

  @override
  String get projectNoTasks => 'Belum ada tugasan dalam projek ini';

  @override
  String get projectArchivedBadge => 'Diarkibkan';

  @override
  String get projectDeleted => 'Projek dialihkan ke sampah';

  @override
  String get projectDeleteMessage => 'Tugasan kekal dalam senarai anda tanpa projek.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent peratus selesai';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count hasil');
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Tapis mengikut jenis';

  @override
  String searchRecentTap(String query) {
    return 'Cari lagi $query';
  }

  @override
  String get settingsLanguageHint =>
      'Pilih bahasa untuk keseluruhan apl. Nama dipaparkan dalam bahasa masing-masing.';

  @override
  String get settingsThemeHint => 'Cerah, gelap atau ikut sistem';

  @override
  String settingsDecrease(String setting) {
    return 'Kurangkan $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Tambahkan $setting';
  }

  @override
  String get settingsQuietStart => 'Bermula';

  @override
  String get settingsQuietEnd => 'Tamat';

  @override
  String get settingsNotificationsHint =>
      'Ini menyimpan pilihan anda dalam apl. Sistem mungkin juga meminta kebenaran.';

  @override
  String get settingsDashboardHint =>
      'Seret untuk menyusun semula. Matikan bahagian yang anda tidak perlukan.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Susun semula $section';
  }

  @override
  String get settingsDashboardReset => 'Pulihkan susunan lalai';

  @override
  String get settingsAssistantDesc =>
      'Bantuan perancangan pilihan. Tiada apa-apa meninggalkan peranti ini melainkan anda menyambungkan penyedia.';

  @override
  String get settingsAssistantSetup => 'Persediaan pembantu dan penyedia';

  @override
  String get settingsTrashDesc => 'Pulihkan atau padam item yang dialih keluar secara kekal';

  @override
  String get settingsEraseFirstBody =>
      'Ini tidak boleh dibuat asal. Pertimbangkan untuk mencipta sandaran yang disulitkan dahulu.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Taip $word';
  }

  @override
  String get settingsEraseFailed => 'Data tidak dapat dipadam. Tiada apa-apa yang diubah.';

  @override
  String get settingsAboutTagline => 'Ruang kerja produktiviti peribadi yang mengutamakan peranti.';

  @override
  String get backupShowPassword => 'Tunjukkan kata laluan';

  @override
  String get backupHidePassword => 'Sembunyikan kata laluan';

  @override
  String get backupSaved => 'Sandaran disimpan';

  @override
  String get backupFailed => 'Sandaran tidak dapat dicipta. Data anda tidak berubah.';

  @override
  String get backupReadFailed => 'Fail yang dipilih tidak dapat dibaca.';

  @override
  String get backupRestoreFailed => 'Pemulihan gagal. Tiada apa-apa yang diubah.';

  @override
  String get backupShareSubject => 'Sandaran disulitkan Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Setiap $count hari',
      one: 'Setiap hari',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Setiap $count minggu',
      one: 'Setiap minggu',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Setiap $count bulan',
      one: 'Setiap bulan',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Setiap $count tahun',
      one: 'Setiap tahun',
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
    return 'pada $days';
  }

  @override
  String get repeatEndsLabel => 'Tamat';

  @override
  String get repeatEndsAfter => 'Selepas beberapa kali';

  @override
  String get repeatCountLabel => 'Kejadian';

  @override
  String get reminderNone => 'Tiada peringatan';

  @override
  String get reminderCustomTime => 'Pada masa tertentu';

  @override
  String get a11yDecrease => 'Kurangkan';

  @override
  String get a11yIncrease => 'Tambahkan';

  @override
  String get pickTaskTitle => 'Pilih tugasan';

  @override
  String get pickTaskEmpty => 'Tiada tugasan terbuka';

  @override
  String get tasksSearchTooltip => 'Cari tugasan';

  @override
  String get tasksSectionOverdue => 'Tertunggak';

  @override
  String get tasksSectionToday => 'Hari ini';

  @override
  String get tasksRecurringSemantics => 'Berulang';

  @override
  String get tasksFilterPriorityAtLeast => 'Keutamaan minimum';

  @override
  String get tasksFilterCategory => 'Kategori';

  @override
  String get tasksFilterAnyCategory => 'Sebarang kategori';

  @override
  String get tasksFilterLabel => 'Label';

  @override
  String get tasksFilterAnyLabel => 'Sebarang label';

  @override
  String get tasksFilterReset => 'Set semula penapis';

  @override
  String get tasksViewByProject => 'Mengikut projek';

  @override
  String get tasksViewByPriority => 'Mengikut keutamaan';

  @override
  String get tasksViewByCategory => 'Mengikut kategori';

  @override
  String get tasksGroupNoCategory => 'Tiada kategori';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count tugasan');
    return 'Disekat oleh $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Tugasan ini disekat oleh tugasan yang belum selesai. Lengkapkan juga?';

  @override
  String get taskStartFocus => 'Fokus pada tugasan ini';

  @override
  String get taskRemoveDate => 'Alih keluar tarikh';

  @override
  String get taskAllDay => 'Tiada masa khusus';

  @override
  String get taskSaved => 'Tugasan disimpan';

  @override
  String get taskCreated => 'Tugasan dicipta';

  @override
  String get taskReminderNeedsDue => 'Tetapkan tarikh akhir untuk menggunakan peringatan relatif';

  @override
  String get taskLabelName => 'Nama label';

  @override
  String get taskPlanning => 'Perancangan';

  @override
  String get taskOrganize => 'Susun';

  @override
  String get taskBreakdown => 'Pecahan';

  @override
  String get trashDeleteTaskTitle => 'Padam tugasan ini selama-lamanya?';

  @override
  String get trashDeleteNoteTitle => 'Padam nota ini selama-lamanya?';

  @override
  String get trashDeleteBody => 'Ini tidak boleh dibuat asal.';

  @override
  String get trashEmptyTitle => 'Kosongkan sampah?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item akan dipadam secara kekal.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Dipulihkan';

  @override
  String get trashPurged => 'Dipadam selama-lamanya';

  @override
  String trashDeletedOn(String date) {
    return 'Dipadam $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count item');
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Baca dengan kuat';

  @override
  String get flashcardsTtsUnavailable => 'Teks ke pertuturan tidak tersedia pada peranti ini.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Tiada suara dipasang untuk bahasa ini. Tambah satu dalam tetapan teks ke pertuturan Android.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Percikan',
      'rocket': 'Roket',
      'book': 'Buku',
      'work': 'Kerja',
      'home': 'Rumah',
      'heart': 'Hati',
      'code': 'Kod',
      'palette': 'Palet',
      'fitness': 'Kecergasan',
      'school': 'Sekolah',
      'travel': 'Perjalanan',
      'money': 'Simpanan',
      'other': 'Ikon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Lagi medan';

  @override
  String get cardFieldExample => 'Contoh';

  @override
  String get cardFieldExplanation => 'Penjelasan';

  @override
  String get cardFieldPronunciation => 'Sebutan';

  @override
  String get cardFieldNotes => 'Nota tambahan';

  @override
  String get projectMilestones => 'Pencapaian';

  @override
  String get milestoneAdd => 'Tambah pencapaian';

  @override
  String get milestoneEdit => 'Edit pencapaian';

  @override
  String get milestoneTitleLabel => 'Pencapaian';

  @override
  String get milestoneNoDate => 'Tiada tarikh';

  @override
  String get milestonesEmpty =>
      'Belum ada pencapaian. Tambah titik semak bertarikh untuk menjejaki projek dalam kalendar.';

  @override
  String get milestoneDeleted => 'Pencapaian dipadam';

  @override
  String milestoneDoneA11y(String title) {
    return 'Tandakan pencapaian \"$title\" sebagai selesai';
  }

  @override
  String calendarMilestone(String project) {
    return 'Pencapaian · $project';
  }

  @override
  String get tasksViewInbox => 'Peti masuk';

  @override
  String get tasksViewArchived => 'Diarkibkan';

  @override
  String get tasksEmptyInbox =>
      'Tugasan tanpa projek atau tarikh berada di sini. Susun apabila anda ada masa.';

  @override
  String get tasksEmptyArchived =>
      'Tugasan yang diarkibkan disimpan di sini, jauh daripada senarai dan peringatan anda.';

  @override
  String get taskArchivedBadge => 'Diarkibkan';

  @override
  String get taskStatusInProgress => 'Sedang berjalan';

  @override
  String get taskArchived => 'Tugasan diarkibkan';

  @override
  String get taskUnarchived => 'Tugasan dipulihkan daripada arkib';

  @override
  String get focusPlanTitle => 'Pelan sesi';

  @override
  String focusPlanTotal(String duration) {
    return 'Jumlah $duration';
  }

  @override
  String get focusPlanRounds => 'Sesi fokus';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Rehat panjang selepas';

  @override
  String get focusPlanSkipLastBreak => 'Langkau rehat terakhir';

  @override
  String get focusPlanAutoBreaks => 'Mulakan rehat secara automatik';

  @override
  String get focusPlanAutoFocus => 'Mulakan fokus secara automatik selepas rehat';

  @override
  String get focusPlanSave => 'Simpan pelan';

  @override
  String get focusPlanNameHint => 'cth. Persediaan peperiksaan';

  @override
  String get focusPlanSaved => 'Pelan disimpan';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min fokus, $rest min rehat';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Kurangkan $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Tambahkan $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sesi $current daripada $total';
  }

  @override
  String get focusSeriesComplete => 'Siri selesai. Syabas!';

  @override
  String get filterAll => 'Semua';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added diimport · $duplicates pendua dilangkau · $invalid baris tidak lengkap';
  }

  @override
  String get flashcardsSuspend => 'Gantung kad';

  @override
  String get flashcardsResume => 'Sambung kad';

  @override
  String get flashcardsSuspended => 'Kad digantung: ia tidak akan dijadualkan';

  @override
  String get flashcardsResumed => 'Kad disambung semula';

  @override
  String get flashcardsSuspendedFilter => 'Digantung';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown daripada $total kad';
  }

  @override
  String get flashcardsImportFile => 'Daripada fail';

  @override
  String get speechTitle => 'Pertuturan';

  @override
  String get speechAppLanguage => 'Bahasa apl';

  @override
  String get speechFrontLanguage => 'Bahasa depan';

  @override
  String get speechBackLanguage => 'Bahasa belakang';

  @override
  String get speechRepeat => 'Ulang setiap bacaan';

  @override
  String get speechRate => 'Kelajuan';

  @override
  String get speechAutoRead => 'Baca soalan secara automatik';

  @override
  String get speechHint =>
      'Menggunakan suara yang dipasang pada peranti ini, di luar talian. Jika sesuatu bahasa tiada suara, anda akan dimaklumkan dan tiada yang lain digunakan.';

  @override
  String get studyHowTitle => 'Bagaimana anda mahu belajar?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ulang kaji $count kad',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Latih semua kad (jadual tidak berubah)';

  @override
  String get studyPracticeMistakes => 'Latih kesilapan terkini';

  @override
  String get studyPracticeHint =>
      'Pusingan latihan tidak pernah mengubah bila kad perlu diulang kaji. Ulang kaji mengemas kini jadual.';

  @override
  String get studyModeClassic => 'Klasik';

  @override
  String get studyModeReverse => 'Terbalik';

  @override
  String get studyModeMixed => 'Kedua-dua arah';

  @override
  String get studyModeTyped => 'Taip jawapan';

  @override
  String get studyModeChoice => 'Aneka pilihan';

  @override
  String get studyModeListening => 'Mendengar';

  @override
  String get studyPractice => 'latihan';

  @override
  String get studyNoMistakes => 'Tiada kesilapan terkini dalam dek ini. Bagus!';

  @override
  String get studyTypeAnswer => 'Taip jawapan anda';

  @override
  String get studyCheck => 'Semak';

  @override
  String get studyKnewIt => 'Saya tahu';

  @override
  String get studyDidntKnow => 'Tidak tahu';

  @override
  String studyMistakes(int count) {
    return 'Terlepas ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Ulang kad yang terlepas';

  @override
  String get studyCorrect => 'Betul';

  @override
  String get studyAlmost => 'Hampir — semak ejaan';

  @override
  String get studyWrong => 'Belum tepat';

  @override
  String get studyShowText => 'Tunjukkan teks';

  @override
  String get flashcardsImportFileFailed =>
      'Fail tidak dapat dibuka. Anda boleh menampal kandungannya sebaliknya.';

  @override
  String get studyNoMatchingCards => 'Belum ada kad yang sepadan dengan pilihan ini.';

  @override
  String get studyPracticeNew => 'Baharu sahaja';

  @override
  String get studyPracticeHard => 'Kad sukar';

  @override
  String get studyPracticeFavorites => 'Kegemaran';

  @override
  String get studySessionSize => 'Kad setiap sesi';

  @override
  String get studySessionAll => 'Semua';

  @override
  String get studyOrder => 'Susunan';

  @override
  String get studyOrderDue => 'Paling tertunggak dahulu';

  @override
  String get studyOrderRandom => 'Rawak';

  @override
  String get studyOrderHardest => 'Paling sukar dahulu';

  @override
  String get flashcardsHard => 'Sukar';

  @override
  String get flashcardsFavorites => 'Kegemaran';

  @override
  String get flashcardsFavorite => 'Tambah ke kegemaran';

  @override
  String get flashcardsUnfavorite => 'Alih keluar daripada kegemaran';

  @override
  String get flashcardsDuplicate => 'Pendua';

  @override
  String get flashcardsMoveTo => 'Alihkan ke dek';

  @override
  String get flashcardsNoOtherDeck => 'Cipta dek lain dahulu.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad dialihkan',
      one: 'Kad dialihkan',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Tambah tag';

  @override
  String get flashcardsTagHint => 'cth. kata kerja';

  @override
  String flashcardsSelected(int count) {
    return '$count dipilih';
  }

  @override
  String get flashcardsSelectAll => 'Pilih semua yang dipaparkan';

  @override
  String flashcardsSelectCard(String front) {
    return 'Pilih $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Ingatan $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Kemungkinan pendua';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Dek ini sudah ada “$front” → “$back”. Simpan juga?';
  }

  @override
  String get flashcardsSaveAnyway => 'Simpan juga';

  @override
  String get flashcardsStats => 'Statistik';

  @override
  String get flashcardsStatTotal => 'Kad';

  @override
  String get flashcardsStatLearning => 'Sedang belajar';

  @override
  String get flashcardsStatMatureCaption => 'Diingati 21+ hari';

  @override
  String get flashcardsStatReviewsToday => 'Ulang kaji hari ini';

  @override
  String get flashcardsStatCorrect => 'Jawapan betul';

  @override
  String flashcardsStatLastDays(int days) {
    return '$days hari terakhir';
  }

  @override
  String get flashcardsStatForget => 'Kadar lupa';

  @override
  String get flashcardsStatForgetCaption => '“Lagi” pada kad yang dipelajari';

  @override
  String get flashcardsStatRecall => 'Ingatan sekarang';

  @override
  String get flashcardsStatRecallCaption => 'Anggaran FSRS, kad yang diulang kaji';

  @override
  String flashcardsStatActivity(int count) {
    return 'Ulang kaji sehari · $count keseluruhan';
  }

  @override
  String get flashcardsStatHistory => 'Jawapan terkini';

  @override
  String get flashcardsStatNoHistory =>
      'Belum ada ulang kaji. Pelajari dek untuk melihat kemajuan anda di sini.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Baca $field dengan kuat';
  }

  @override
  String get speechVoice => 'Suara';

  @override
  String get speechVoiceDefault => 'Automatik';

  @override
  String get speechVoiceOnline => 'perlukan internet';

  @override
  String get speechTest => 'Uji suara';

  @override
  String get importNext => 'Pratonton';

  @override
  String get importPreviewTitle => 'Padankan lajur dengan medan';

  @override
  String get importIgnoreColumn => 'Abaikan';

  @override
  String importColumn(int n) {
    return 'Lajur $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kad sedia · $invalid baris tidak lengkap akan dilangkau';
  }

  @override
  String get importNeedFrontBack => 'Pilih lajur mana yang menjadi depan dan belakang.';

  @override
  String get actionMoveUp => 'Alih ke atas';

  @override
  String get actionMoveDown => 'Alih ke bawah';

  @override
  String get flashcardsLayoutTitle => 'Susun atur kad';

  @override
  String get flashcardsLayoutHint =>
      'Namakan semula, sembunyikan atau susun semula medan tambahan untuk dek ini. Kandungan kad tidak pernah diubah.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Tunjukkan $field semasa belajar';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Dedahkan jawapan langkah demi langkah';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Bahagian belakang dipaparkan dahulu; setiap medan tambahan dibuka dengan satu ketikan.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Tunjukkan $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Fail ini lebih besar daripada $mb MB.';
  }

  @override
  String get flashcardsImage => 'Imej';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Tambah imej';

  @override
  String get flashcardsAddAudio => 'Tambah audio';

  @override
  String get flashcardsPlayAudio => 'Main rakaman';

  @override
  String get flashcardsAudioUnavailable => 'Rakaman ini tidak boleh dimainkan pada peranti ini.';

  @override
  String get flashcardsCustomFields => 'Medan anda';

  @override
  String get flashcardsTemplates => 'Templat';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Medan $n';
  }

  @override
  String get flashcardsAddField => 'Tambah medan';

  @override
  String get flashcardsFieldName => 'Nama medan';

  @override
  String get flashcardsFieldLangDefault => 'Bahasa sisi';

  @override
  String get flashcardsTemplateConfirm =>
      'Templat menetapkan cara medan dipaparkan dan menambah medannya. Kad dan medan sedia ada anda kekal seperti biasa.';

  @override
  String get flashcardsApplyTemplate => 'Guna';

  @override
  String get templateVocabulary => 'Perbendaharaan kata';

  @override
  String get templateTwoTranslations => 'Perkataan dengan dua terjemahan';

  @override
  String get templateQuestionAnswer => 'Soalan dan jawapan';

  @override
  String get templateDefinition => 'Istilah dan takrif';

  @override
  String get templateGrammar => 'Peraturan tatabahasa';

  @override
  String get templateFieldPlural => 'Jamak';

  @override
  String get templateFieldTranslation2 => 'Terjemahan kedua';

  @override
  String get templateFieldSynonyms => 'Sinonim';

  @override
  String get templateFieldRule => 'Peraturan';

  @override
  String get deckCategory => 'Tahap atau topik';

  @override
  String get deckCategoryHint => 'cth. A1, Perubatan';

  @override
  String get flashcardsSearchAll => 'Cari semua kad';

  @override
  String get flashcardsSearchAllHint => 'Perkataan, terjemahan, contoh, nota, tag…';

  @override
  String get flashcardsAllDecks => 'Semua dek';

  @override
  String get flashcardsAllLanguages => 'Semua bahasa';

  @override
  String get flashcardsLangUnset => 'Bahasa tidak ditetapkan';

  @override
  String get flashcardsLevelUnset => 'Tiada tahap atau topik';

  @override
  String get flashcardsByLanguage => 'Kemajuan mengikut bahasa';

  @override
  String get flashcardsByLevel => 'Kemajuan mengikut tahap atau topik';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks dek · $cards kad · $mature matang · $due perlu · $correct betul (30 hari)';
  }

  @override
  String get flashcardsRecord => 'Rakam';

  @override
  String get flashcardsRecording => 'Merakam…';

  @override
  String get flashcardsRecordStop => 'Henti dan simpan';

  @override
  String get flashcardsMicDenied =>
      'Akses mikrofon dimatikan. Benarkannya dalam tetapan sistem untuk merakam.';

  @override
  String get flashcardsRecordFailed => 'Rakaman tidak tersedia pada peranti ini.';

  @override
  String get soundsTitle => 'Bunyi';

  @override
  String get soundsNature => 'Alam semula jadi';

  @override
  String get soundsNoise => 'Hingar fokus';

  @override
  String get soundRain => 'Hujan';

  @override
  String get soundStorm => 'Ribut petir';

  @override
  String get soundRiver => 'Sungai';

  @override
  String get soundOcean => 'Ombak laut';

  @override
  String get soundFire => 'Unggun api';

  @override
  String get soundForest => 'Burung hutan';

  @override
  String get soundNight => 'Malam musim panas';

  @override
  String get soundWhite => 'Hingar putih';

  @override
  String get soundPink => 'Hingar merah jambu';

  @override
  String get soundBrown => 'Hingar perang';

  @override
  String get soundsPlay => 'Main';

  @override
  String get soundsSleep => 'Pemasa tidur';

  @override
  String get soundsSleepOff => 'Mati';

  @override
  String soundsSleepAt(String time) {
    return 'Berhenti pada $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Sehingga $count bunyi boleh dimainkan serentak.';
  }

  @override
  String get soundsHint =>
      'Ketik bunyi untuk bermula. Campurkan beberapa bunyi dan tetapkan kelantangan setiap satu.';

  @override
  String get soundsMixer => 'Campuran';

  @override
  String soundsVolumeOf(String name) {
    return 'Kelantangan $name';
  }

  @override
  String get soundsChannel => 'Bunyi alam semula jadi';

  @override
  String get settingsEndTone => 'Bunyi tamat pemasa';

  @override
  String get toneGentle => 'Bip lembut';

  @override
  String get toneBeeps => 'Bip';

  @override
  String get toneWood => 'Ketukan kayu';

  @override
  String get toneBird => 'Kicauan burung';

  @override
  String get toneStream => 'Anak sungai';

  @override
  String get toneSystem => 'Bunyi telefon';

  @override
  String get speechOnPhone => 'Pada telefon ini';

  @override
  String get speechAllLanguages => 'Semua bahasa';

  @override
  String get speechSearchLanguage => 'Cari bahasa';

  @override
  String get speechGetVoices => 'Muat turun lebih banyak suara';

  @override
  String get speechGetVoicesHint =>
      'Suara untuk bahasa yang tiada suara boleh dimuat turun dalam tetapan pertuturan telefon.';

  @override
  String get speechSettingsFailed => 'Tidak dapat membuka tetapan pertuturan pada telefon ini.';

  @override
  String get speechVoiceMissing => 'Tiada suara dipasang';

  @override
  String get speechPause => 'Jeda antara ulangan';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Baca contoh bersama jawapan';

  @override
  String get flashListen => 'Dengar';

  @override
  String get flashListenNext => 'Kad seterusnya';

  @override
  String get flashListenEmpty => 'Tiada kad untuk didengar.';

  @override
  String get flashViewTable => 'Jadual';

  @override
  String get flashViewCards => 'Kad';

  @override
  String get flashSwapSides => 'Tukar lajur';

  @override
  String get flashSort => 'Isih';

  @override
  String get flashSortNewest => 'Terbaharu dahulu';

  @override
  String get flashSortAlpha => 'A hingga Z';

  @override
  String get flashSortDue => 'Perlu dahulu';

  @override
  String get flashSortHard => 'Paling sukar dahulu';

  @override
  String get flashPasteCards => 'Tampal kad';

  @override
  String get flashClipboardEmpty => 'Papan keratan tiada teks.';

  @override
  String get flashMenuAdd => 'Tambah kad';

  @override
  String get flashMenuDeck => 'Dek';

  @override
  String get flashToday => 'Hari ini';

  @override
  String get flashStudyNow => 'Belajar';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad dijawab',
      zero: 'Tiada kad dijawab',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Hujan di hutan';

  @override
  String get autoBackupTitle => 'Sandaran automatik';

  @override
  String get autoBackupDesc => 'Setiap hari pada telefon ini; 7 yang terakhir disimpan';

  @override
  String get autoBackupHint =>
      'Salinan ini kekal pada telefon ini dan dialih keluar jika apl dinyahpasang. Untuk berpindah ke telefon baharu, gunakan “Sandarkan” untuk menyimpan fail.';

  @override
  String get autoBackupNone => 'Belum ada sandaran automatik. Yang pertama dibuat hari ini.';

  @override
  String get autoBackupRestore => 'Pulihkan';

  @override
  String autoBackupConfirm(String date) {
    return 'Gantikan semua data semasa dengan sandaran daripada $date?';
  }

  @override
  String get autoBackupRestored => 'Dipulihkan.';

  @override
  String get errorLogTitle => 'Log ralat';

  @override
  String get errorLogHint =>
      'Jika berlaku masalah, ia dicatat di sini: hanya jenis ralat dan lokasinya dalam kod, tidak sekali-kali kandungan anda. Kongsikannya untuk membantu membetulkan masalah.';

  @override
  String get errorLogEmpty => 'Tiada ralat direkodkan.';

  @override
  String get errorLogClear => 'Kosongkan';

  @override
  String get soundsWithFocus => 'Main semasa sesi fokus';

  @override
  String get soundsWithFocusHint =>
      'Campuran anda bermula dengan sesi fokus dan dijeda semasa rehat.';

  @override
  String get soundsSavedMixes => 'Campuran disimpan';

  @override
  String get soundsSaveMix => 'Simpan campuran ini';

  @override
  String get soundsMixNameHint => 'Nama, cth. Perpustakaan hujan';

  @override
  String soundsDeleteMix(String name) {
    return 'Padam campuran “$name”?';
  }

  @override
  String get settingsReviewReminderHint =>
      'Sekali sehari, hanya apabila ada kad perlu diulang kaji';

  @override
  String get settingsReviewTime => 'Masa peringatan';

  @override
  String get shortcutFocus => 'Fokus';

  @override
  String get shortcutNewTask => 'Tugasan baharu';

  @override
  String get shortcutReview => 'Ulang kaji kad';

  @override
  String get shortcutSounds => 'Bunyi alam';

  @override
  String get myDayTitle => 'Mulakan hari saya';

  @override
  String get myDayHint => 'Hari anda sekilas pandang, kemudian fokus dengan satu ketikan';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugasan untuk hari ini',
      zero: 'Tiada tugasan untuk hari ini',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Tiada lagi acara hari ini';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Seterusnya: $title pada $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tabiat lagi',
      zero: 'Semua tabiat selesai',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Mulakan dengan sesi fokus';

  @override
  String get hijriMonth1 => 'Muharam';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabiulawal';

  @override
  String get hijriMonth4 => 'Rabiulakhir';

  @override
  String get hijriMonth5 => 'Jamadilawal';

  @override
  String get hijriMonth6 => 'Jamadilakhir';

  @override
  String get hijriMonth7 => 'Rejab';

  @override
  String get hijriMonth8 => 'Syaaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Syawal';

  @override
  String get hijriMonth11 => 'Zulkaedah';

  @override
  String get hijriMonth12 => 'Zulhijah';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year H';
  }

  @override
  String get settingsHijri => 'Tarikh Hijrah';

  @override
  String get settingsHijriHint => 'Dipaparkan dalam kalendar dan pada skrin utama (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count hari');
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done daripada $goal kad hari ini';
  }

  @override
  String get studyGoalReached => 'Matlamat harian dicapai. Syabas!';

  @override
  String get studyWeekTitle => 'Minggu anda';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad dijawab dalam 7 hari',
      zero: 'Tiada kad dijawab dalam 7 hari',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fokus dalam 7 hari';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Rentetan: $current · Terbaik: $best';
  }

  @override
  String get studyGoalTitle => 'Matlamat harian (kad)';

  @override
  String get studyGoalOff => 'Mati';

  @override
  String get focusDndTitle => 'Jangan Ganggu semasa fokus';

  @override
  String get focusDndHint => 'Dihidupkan untuk setiap sesi fokus dan dimatikan semula semasa rehat';

  @override
  String get focusDndNeedsAccess => 'Benarkan akses dalam tetapan telefon untuk menggunakannya';

  @override
  String get voiceInput => 'Cakap untuk menaip';

  @override
  String get voiceInputPrompt => 'Bercakap sekarang';

  @override
  String get voiceInputUnavailable =>
      'Penaipan suara tidak tersedia pada telefon ini. Pasang atau hidupkan perkhidmatan pertuturan (contohnya Pengecaman & Sintesis Pertuturan oleh Google).';

  @override
  String get prayerFajr => 'Subuh';

  @override
  String get prayerSunrise => 'Syuruk';

  @override
  String get prayerDhuhr => 'Zohor';

  @override
  String get prayerAsr => 'Asar';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isyak';

  @override
  String get prayerMethodMwl => 'Liga Muslim Sedunia';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Makkah';

  @override
  String get prayerMethodEgypt => 'Pihak Berkuasa Am Mesir';

  @override
  String get prayerMethodJordan => 'Jordan, Kementerian Wakaf';

  @override
  String get prayerMethodKarachi => 'Universiti Sains Islam, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Rantau Teluk';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Türkiye, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapura, Malaysia, Indonesia';

  @override
  String get prayerMethodFrance => 'Perancis (12°)';

  @override
  String get prayerMethodRussia => 'Rusia, Pentadbiran Rohani';

  @override
  String prayerNotifTitle(String name) {
    return 'Waktu $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Waktu solat · $time';
  }

  @override
  String get prayerTitle => 'Waktu solat';

  @override
  String get prayerOffHint =>
      'Pilih bandar anda untuk melihat waktu solat. Ia dikira pada telefon; akses lokasi tidak diperlukan.';

  @override
  String get prayerChooseCity => 'Pilih bandar';

  @override
  String get prayerCity => 'Bandar';

  @override
  String get prayerCitySearch => 'Cari bandar';

  @override
  String get prayerMethod => 'Kaedah pengiraan';

  @override
  String get prayerHanafiAsr => 'Asar Hanafi (waktu lebih lewat)';

  @override
  String get prayerReminders => 'Maklumkan pada setiap waktu solat';

  @override
  String get prayerPauseFocus => 'Jeda fokus pada waktu solat';

  @override
  String get prayerPauseFocusHint => 'Sesi yang sedang berjalan dijeda; teruskan selepas solat';

  @override
  String get prayerTurnOff => 'Matikan waktu solat';

  @override
  String get prayerAccuracyNote =>
      'Waktu yang dikira mungkin berbeza beberapa minit daripada masjid tempatan anda.';

  @override
  String prayerNext(String name, String time) {
    return '$name pada $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Fail Anki ini menggunakan format terbaharu. Dalam Anki, eksport semula dengan “Support older Anki versions” dihidupkan, kemudian import fail itu.';

  @override
  String get importTemplate => 'Templat hamparan';

  @override
  String get importTemplateFront => 'epal';

  @override
  String get importTemplateBack => 'buah yang bulat';

  @override
  String get importTemplateExample => 'Saya makan sebiji epal setiap hari.';

  @override
  String get importTemplateTag => 'makanan';

  @override
  String get starterTitle => 'Dek permulaan';

  @override
  String get starterHint =>
      'Tambah satu untuk terus mencuba belajar. Anda boleh mengedit atau memadamnya kemudian.';

  @override
  String get starterAdd => 'Tambah';

  @override
  String get starterWords => 'Perkataan Inggeris harian (Arab)';

  @override
  String get starterCapitals => 'Ibu negara dunia';

  @override
  String get starterElements => 'Unsur kimia';

  @override
  String get settingsAccent => 'Warna aksen';

  @override
  String get accentViolet => 'Ungu';

  @override
  String get accentBlue => 'Biru';

  @override
  String get accentTeal => 'Hijau kebiruan';

  @override
  String get accentGreen => 'Hijau';

  @override
  String get accentRose => 'Merah jambu';

  @override
  String get accentAmber => 'Kuning ambar';

  @override
  String get settingsFlashTextSize => 'Saiz teks kad imbas';

  @override
  String get settingsFlashTextSample => 'Contoh';

  @override
  String get widgetStartFocus => 'Ketik untuk fokus';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokus hingga $time';
  }

  @override
  String get widgetNoCardsDue => 'Kad: semua selesai';

  @override
  String get faqMyDayQ => 'Apakah fungsi “Mulakan hari saya”?';

  @override
  String get faqMyDayA =>
      'Sekali sehari skrin utama menawarkannya: lihat tugasan hari ini, acara seterusnya, tabiat yang tinggal dan kad yang perlu diulang kaji, kemudian mulakan sesi fokus dengan satu ketikan. Tekan lama ikon apl untuk tindakan pantas, atau tambah widget skrin utama untuk melihat masa fokus dan kad yang perlu diulang kaji.';

  @override
  String get faqTasksQ => 'Bagaimana saya menambah tugasan dengan peringatan?';

  @override
  String get faqTasksA =>
      'Ketik Tugasan baharu pada Utama atau + dalam Tugasan. Taip tajuk atau sebutkannya dengan mikrofon, kemudian tetapkan tarikh akhir, masa dan peringatan. Tugasan tertunggak disenaraikan dahulu.';

  @override
  String get faqFocusQ => 'Bagaimana pemasa fokus berfungsi?';

  @override
  String get faqFocusA =>
      'Pilih Pomodoro, kira detik atau masa bebas dan tekan Mula; rehat boleh menyusul secara automatik. Dalam Tetapan anda boleh memilih bunyi tamat, menghidupkan Jangan Ganggu semasa fokus dan memainkan bunyi alam anda bersama setiap sesi.';

  @override
  String get faqSoundsQ => 'Bolehkah saya mencampurkan bunyi alam?';

  @override
  String get faqSoundsA =>
      'Hidupkan sehingga enam rakaman sebenar, tetapkan kelantangan setiap satu dan simpan campuran dengan nama. Ia terus dimainkan di latar belakang, dan pemasa tidur boleh menghentikannya. Tiada muzik digunakan.';

  @override
  String get faqCalendarQ => 'Bolehkah kalendar menunjukkan tarikh Hijrah?';

  @override
  String get faqCalendarA =>
      'Ya. Tarikh Hijrah (Umm al-Qura) dipaparkan secara automatik dalam bahasa Arab dan boleh dihidupkan dalam Tetapan untuk mana-mana bahasa. Acara, tugasan bertarikh akhir dan pencapaian projek dipaparkan bersama.';

  @override
  String get faqFlashcardsQ => 'Bagaimana ulang kaji menentukan kad yang saya lihat?';

  @override
  String get faqFlashcardsA =>
      'Kad yang anda kenal baik kembali selepas jarak yang lebih lama dan kad yang anda terlepas kembali tidak lama lagi (ulangan berjarak). Nilai setiap jawapan: Lagi, Sukar, Baik atau Mudah. Tetapkan matlamat harian dan kekalkan rentetan anda pada kad Hari ini. Tetapkan tarikh peperiksaan dalam dek untuk melihat hari yang tinggal dan berapa banyak kad baharu untuk dipelajari setiap hari. Isih mengikut “Susunan saya” untuk menyeret kad ke tempatnya, ketik pembesar suara pada mana-mana sisi untuk mendengarnya, dan tetapkan kelajuan serta ulangan dalam menu Pertuturan.';

  @override
  String get faqImportQ => 'Bolehkah saya membawa kad daripada Anki atau Excel?';

  @override
  String get faqImportA =>
      'Ya. Dalam dek pilih Import, kemudian pilih fail: Anki (.apkg), Excel (.xlsx) atau CSV, dan padankan lajur. Gunakan “Templat hamparan” untuk menulis kad pada komputer. Gambar dan bunyi dalam fail Anki tidak diimport.';

  @override
  String get faqNotesQ => 'Apa yang boleh dibuat oleh nota?';

  @override
  String get faqNotesA =>
      'Tulis dengan bebas menggunakan senarai semak dan pemformatan, sematkan atau jadikan kegemaran nota penting, tambah tag dan pautkan nota kepada tugasan. Butang mikrofon membolehkan anda membuat imlak. Nota baharu boleh bermula daripada templat (kuliah, ringkasan buku, jurnal, pelan mingguan), dan butang gambar menambah foto.';

  @override
  String get faqHabitsQ => 'Bagaimana rentetan tabiat dikira?';

  @override
  String get faqHabitsA =>
      'Satu hari dikira apabila anda mencapai sasaran tabiat pada hari yang dijadualkan. Menjeda tabiat memastikan rentetan selamat. Setiap tabiat boleh mempunyai masa peringatannya sendiri.';

  @override
  String get faqGoalsQ => 'Bagaimana matlamat menjejaki kemajuan?';

  @override
  String get faqGoalsA =>
      'Berikan matlamat jumlah sasaran dan unit, kemudian rekodkan kemajuan. Kadnya menunjukkan sejauh mana anda dan berapa banyak lagi sebelum tarikh akhir.';

  @override
  String get faqProjectsQ => 'Untuk apa projek?';

  @override
  String get faqProjectsA =>
      'Kumpulkan tugasan di bawah projek, tambah pencapaian bertarikh dan ikuti kemajuan keseluruhan. Pencapaian juga dipaparkan dalam kalendar.';

  @override
  String get faqInsightsQ => 'Apa yang ditunjukkan oleh Wawasan?';

  @override
  String get faqInsightsA =>
      'Masa fokus, tugasan yang selesai dan pembelajaran anda mengikut hari dan minggu, dengan cadangan yang lembut. Semuanya dikira pada telefon anda.';

  @override
  String get faqSpacesQ => 'Di manakah semua bahagian?';

  @override
  String get faqSpacesA =>
      'Ruang menyenaraikan setiap bahagian apl (nota, dek, tabiat, matlamat, projek, bunyi dan banyak lagi) supaya bar utama kekal ringkas.';

  @override
  String get faqBackupQ => 'Bagaimana data saya disandarkan?';

  @override
  String get faqBackupA =>
      'Setiap hari apl menyimpan salinan yang disulitkan secara senyap pada telefon ini dan mengekalkan 7 yang terakhir. Dalam Tetapan anda juga boleh mengeksport fail sandaran yang dilindungi kata laluan dan memulihkannya pada telefon lain.';

  @override
  String get faqPrayerQ => 'Bagaimana waktu solat berfungsi?';

  @override
  String get faqPrayerA =>
      'Pilih bandar anda dalam Tetapan → Waktu solat. Waktu dikira pada telefon dengan kaedah yang digunakan di sana, dan anda boleh menukar kaedah serta mazhab untuk Asar. Anda boleh dimaklumkan pada setiap solat, dan sesi fokus yang sedang berjalan dijeda.';

  @override
  String get faqPrivacyQ => 'Di manakah data saya disimpan?';

  @override
  String get faqPrivacyA =>
      'Hanya pada telefon anda, dalam pangkalan data yang disulitkan. Tiada akaun dan tiada penjejakan. Internet hanya digunakan oleh ciri yang anda hidupkan sendiri, seperti pembantu pilihan.';

  @override
  String get faqAssistantQ => 'Apakah pembantu?';

  @override
  String get faqAssistantA =>
      'Pembantu pilihan yang anda sambungkan kepada perkhidmatan AI anda sendiri dalam Tetapan. Ia dimatikan secara lalai dan bertanya sebelum menghantar sebarang teks nota.';

  @override
  String get tourPlanTitle => 'Rancang hari anda';

  @override
  String get tourPlanBody =>
      'Tugasan, kalendar dan tabiat di satu tempat yang tenang. Mulakan setiap pagi dengan “Mulakan hari saya”.';

  @override
  String get tourFocusTitle => 'Fokus mendalam';

  @override
  String get tourFocusBody =>
      'Sesi bermasa dengan bunyi alam sebenar, Jangan Ganggu dan nada tamat yang lembut.';

  @override
  String get tourLearnTitle => 'Belajar untuk kekal';

  @override
  String get tourLearnBody =>
      'Kad imbas dengan ulangan berjarak, pertuturan dalam banyak bahasa dan import daripada Anki atau Excel.';

  @override
  String get helpTitle => 'Bantuan & soalan';

  @override
  String get helpOpen => 'Buka';

  @override
  String get helpTour => 'Ikuti lawatan';

  @override
  String get tourNext => 'Seterusnya';

  @override
  String get tourDone => 'Jom mula';

  @override
  String get transferColTitle => 'Tajuk';

  @override
  String get transferColNotes => 'Nota';

  @override
  String get transferColBody => 'Teks';

  @override
  String get transferColDue => 'Tarikh akhir';

  @override
  String get transferColPriority => 'Keutamaan (0-3)';

  @override
  String get transferColDone => 'Selesai';

  @override
  String get transferColProject => 'Projek';

  @override
  String get transferColCategory => 'Kategori';

  @override
  String get transferTitle => 'Import dan eksport';

  @override
  String get transferSaveAs => 'Simpan sebagai';

  @override
  String get transferImport => 'Import daripada fail';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV atau jadual dalam Word. Lajur: tajuk, tarikh akhir (2026-12-31), keutamaan 0-3, selesai, projek, nota. Tugasan yang sudah ada dalam apl dilangkau.';

  @override
  String get transferImportNotesHint =>
      'Fail Word, Markdown atau teks menjadi nota. Excel atau CSV: satu nota setiap baris (tajuk, teks).';

  @override
  String get transferSaved => 'Fail disimpan';

  @override
  String get transferFailed => 'Fail tidak dapat dibuat. Tiada apa-apa yang diubah.';

  @override
  String get transferUnsupported =>
      'Fail ini tidak dapat dibaca di sini. Gunakan Excel, CSV, Word, Markdown atau teks.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added ditambah',
      zero: 'Tiada yang baharu untuk ditambah',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Teks';

  @override
  String get transferAllNotes => 'Semua nota';

  @override
  String get transferThisNote => 'Nota ini';

  @override
  String get transferDeckFormats => 'Simpan sebagai Excel, Word atau PDF';

  @override
  String get faqFilesQ => 'Bolehkah saya menggunakan fail Excel, Word atau PDF?';

  @override
  String get faqFilesA =>
      'Ya. Tugasan dan Nota mempunyai butang import dan eksport (dua anak panah) di bahagian atas, dan setiap dek mempunyainya dalam menu. Simpan sebagai Excel, CSV, Word atau PDF, atau bawa masuk fail Excel, CSV, Word, Markdown atau teks. Nama lajur boleh dalam mana-mana bahasa apl, dan fail yang anda simpan sentiasa boleh diimport semula.';

  @override
  String get tplLecture => 'Kuliah';

  @override
  String get tplBook => 'Ringkasan buku';

  @override
  String get tplJournal => 'Jurnal';

  @override
  String get tplWeek => 'Pelan mingguan';

  @override
  String get tplLectureBody => '## Perkara utama\n- \n\n## Soalan\n- [ ] \n\n## Ringkasan\n';

  @override
  String get tplBookBody =>
      '## Idea utama\n\n## Apa yang saya pelajari\n- \n\n## Petikan\n> \n\n## Untuk diamalkan\n- [ ] \n';

  @override
  String get tplJournalBody => '## Bersyukur atas\n- \n\n## Fokus hari ini\n- [ ] \n\n## Nota\n';

  @override
  String get tplWeekBody =>
      '## Matlamat minggu ini\n- [ ] \n\n### Sabtu\n- [ ] \n\n### Ahad\n- [ ] \n\n### Isnin\n- [ ] \n\n### Selasa\n- [ ] \n\n### Rabu\n- [ ] \n\n### Khamis\n- [ ] \n\n### Jumaat\n- [ ] \n';

  @override
  String get tplHint => 'Mula daripada templat';

  @override
  String get noteImage => 'Gambar';

  @override
  String get noteAddImage => 'Tambah gambar';

  @override
  String get noteImageUnreadable => 'Fail ini bukan gambar yang boleh dibaca oleh apl.';

  @override
  String get noteImageTooLarge => 'Gambar ini terlalu besar.';

  @override
  String get examSet => 'Tetapkan tarikh peperiksaan';

  @override
  String get examDate => 'Tarikh peperiksaan';

  @override
  String get examToday => 'Peperiksaan hari ini. Semoga berjaya!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Peperiksaan dalam $count hari',
      one: 'Peperiksaan esok',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pelajari $count kad baharu sehari',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'semua kad telah dipelajari, teruskan mengulang kaji';

  @override
  String examRaiseLimit(int count) {
    return 'Tunjukkan $count kad baharu sehari';
  }

  @override
  String get backupDriveHint =>
      'Untuk menyimpan salinan dalam talian, pilih Google Drive (atau apl awan lain) pada skrin simpan yang dibuka seterusnya.';

  @override
  String get flashShareDeck => 'Kongsi dek dengan rakan';

  @override
  String get flashSortManual => 'Susunan saya (seret)';

  @override
  String get flashReorderHint => 'Tahan pemegang dan seret kad untuk mengalihkannya.';

  @override
  String get flashReorderNeedsAll => 'Kosongkan carian dan penapis untuk menyeret kad.';

  @override
  String get flashDragHandle => 'Seret untuk alih';

  @override
  String get reportTitle => 'Laporan bulanan';

  @override
  String get reportFocus => 'Masa fokus';

  @override
  String reportSessions(int count) {
    return '$count sesi';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Hari terbaik: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count hari aktif';
  }

  @override
  String get reportCards => 'Kad yang diulang kaji';

  @override
  String reportCardsKnown(String percent) {
    return '$percent diingati';
  }

  @override
  String get reportTasks => 'Tugasan selesai';

  @override
  String get reportHabits => 'Tanda tabiat';

  @override
  String get reportEmpty => 'Belum ada apa-apa direkodkan bulan ini.';

  @override
  String get reportSave => 'Simpan sebagai PDF atau Word';

  @override
  String get reportPrevMonth => 'Bulan sebelumnya';

  @override
  String get reportNextMonth => 'Bulan seterusnya';

  @override
  String get careTitle => 'Penjagaan telefon dan data anda';

  @override
  String get storageTitle => 'Storan';

  @override
  String get storageSubtitle =>
      'Apa yang menggunakan ruang dan pembersihan gambar yang tidak digunakan';

  @override
  String get storagePictures => 'Gambar dalam nota';

  @override
  String get storageCardMedia => 'Imej dan audio dalam kad';

  @override
  String get storageText => 'Teks nota';

  @override
  String get storageFree => 'Ruang kosong pada telefon';

  @override
  String get storageLow =>
      'Telefon anda hampir penuh. Kosongkan sedikit ruang supaya sandaran dan peringatan terus berfungsi.';

  @override
  String storageUnused(int count, String size) {
    return '$count gambar tidak digunakan ($size)';
  }

  @override
  String get storageNoUnused => 'Tiada gambar yang tidak digunakan. Semuanya kemas.';

  @override
  String get storageClean => 'Alih keluar gambar yang tidak digunakan';

  @override
  String storageCleaned(int count) {
    return '$count gambar dialih keluar';
  }

  @override
  String get storageHint =>
      'Gambar hanya dikira tidak digunakan apabila tiada nota yang memaparkannya, termasuk nota dalam sampah.';

  @override
  String get batteryTitle => 'Pastikan peringatan berfungsi';

  @override
  String get batterySubtitle =>
      'Sesetengah telefon menghentikan apl di latar belakang. Semak telefon anda.';

  @override
  String get batteryStatusOk =>
      'Penjimatan bateri tidak mengehadkan apl ini. Peringatan dan bunyi sepatutnya tiba tepat pada masanya.';

  @override
  String get batteryStatusLimited =>
      'Penjimatan bateri mungkin menghentikan apl ini di latar belakang, jadi peringatan dan bunyi mungkin lewat atau tidak tiba.';

  @override
  String get batteryOpen => 'Buka tetapan bateri';

  @override
  String get batteryOpenApp => 'Buka tetapan apl';

  @override
  String get batteryGeneric =>
      'Dalam tetapan bateri pilih apl ini dan tetapkannya kepada Tanpa had (atau Jangan optimumkan).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: buka juga Keselamatan › Kebenaran › Automula dan hidupkan apl ini, dan tetapkan Penjimat bateri kepada Tiada sekatan.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: buka Bateri › apl ini dan benarkan aktiviti latar belakang serta pelancaran automatik; kunci apl dalam senarai apl terkini.';

  @override
  String get batterySamsung =>
      'Samsung: Bateri › Had penggunaan latar belakang: alih keluar apl ini daripada Apl tidur dan Apl tidur nyenyak.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Pelancaran apl › apl ini › urus secara manual, dan benarkan pelancaran automatik, pelancaran sekunder dan berjalan di latar belakang.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Bateri › Penggunaan kuasa latar belakang › benarkan apl ini, dan dayakan automula dalam kebenaran.';

  @override
  String get whatsNewTitle => 'Apa yang baharu';

  @override
  String get whatsNewSubtitle => 'Perubahan terkini dalam beberapa baris';

  @override
  String get whatsNewDone => 'Faham';

  @override
  String get whatsNewOrderTitle => 'Seret kad mengikut susunan anda sendiri';

  @override
  String get whatsNewOrderBody =>
      'Dalam dek pilih Isih › Susunan saya, kemudian tahan pemegang dan seret.';

  @override
  String get whatsNewSpeechTitle => 'Pembesar suara pada setiap sisi kad';

  @override
  String get whatsNewSpeechBody =>
      'Ketik untuk mendengar perkataan atau terjemahan. Kelajuan, ulangan dan suara ada dalam menu ulang kaji. Bahasa dikesan daripada teks.';

  @override
  String get whatsNewReportTitle => 'Laporan bulanan';

  @override
  String get whatsNewReportBody =>
      'Dalam Wawasan ketik ikon laporan untuk melihat bulan dan menyimpannya sebagai PDF atau Word.';

  @override
  String get whatsNewCareTitle => 'Penjagaan telefon dan data anda';

  @override
  String get whatsNewCareBody =>
      'Tetapan kini mempunyai halaman storan dengan pembersihan gambar dan panduan bateri untuk jenama telefon anda.';

  @override
  String get whatsNewSoundTitle => 'Bunyi yang lebih tenang';

  @override
  String get whatsNewSoundBody =>
      'Bunyi alam lebih lembut dan perlahan, dan kad bergambar lebih cantik.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Disemak $date: sandaran terkini dibuka dengan betul.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Disemak $date: sandaran yang rosak ditemui dan digantikan dengan yang baharu.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Disemak $date: sandaran terkini tidak dapat dibuka. Simpan sendiri fail sandaran daripada Tetapan.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Anda biasanya belajar sekitar $time';
  }

  @override
  String get smartReviewTimeUse => 'Gunakan';

  @override
  String get widgetNewNote => 'Nota baharu';

  @override
  String get noteConnections => 'Tag, pautan dan tugasan';

  @override
  String get navCards => 'Kad';

  @override
  String get studyAnswerWay => 'Cara menjawab';

  @override
  String get studyMorePractice => 'Latihan tambahan';

  @override
  String get studySessionSettings => 'Tetapan sesi';

  @override
  String get focusAdjustTitle => 'Sesi anda';

  @override
  String get focusPresetsTitle => 'Sedia ada';

  @override
  String get focusPresetStudy => 'Belajar';

  @override
  String get focusPresetDeep => 'Kerja mendalam';

  @override
  String get focusPresetQuick => 'Pecutan pantas';

  @override
  String get focusPresetReading => 'Membaca';

  @override
  String get focusPresetWorkout => 'Pusingan senaman';

  @override
  String get focusAdjustMinutes => 'Tempoh fokus';

  @override
  String get focusAdjustBreak => 'Tempoh rehat';

  @override
  String get focusAdjustRounds => 'Pusingan';

  @override
  String get focusRoundsOpen => 'Tiada had';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Ketik untuk menukar masa';

  @override
  String get flashArrangeDecks => 'Susun dek';

  @override
  String get flashDeckActions => 'Pilihan dek';

  @override
  String get starterBrowse => 'Dek sedia ada';

  @override
  String get starterBrowseHint => 'Tambah satu dengan satu ketikan dan mula belajar';

  @override
  String get dashOpenDecks => 'Buka kad anda';

  @override
  String speechVoiceNumber(String n) {
    return 'Suara $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Aliran yang baik. Rehat $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Mula rehat';

  @override
  String tasksFinishAt(String time) {
    return 'Mula sekarang dan anda selesaikan semuanya menjelang $time';
  }

  @override
  String get focusCalmPacing => 'Rentak tenang';

  @override
  String get focusCalmPacingHint => 'Minit penuh dan cincin sahaja, tanpa saat berdetik';

  @override
  String get focusFlipHint => 'Telangkupkan telefon untuk bermula';

  @override
  String get focusImmersive => 'Mod mengasyikkan';

  @override
  String get focusImmersiveBlack => 'Hitam tulen (jimat bateri)';

  @override
  String get focusFlipToFocus => 'Telangkup untuk fokus';

  @override
  String get focusFlipToFocusHint =>
      'Dalam mod mengasyikkan: telangkup untuk mula, angkat untuk jeda';

  @override
  String get guardTitle => 'Pengawal gangguan';

  @override
  String get guardSubtitle => 'Jeda apl yang mengganggu semasa anda fokus';

  @override
  String get guardSwitch => 'Jeda apl yang mengganggu';

  @override
  String get guardSwitchHint => 'Semasa sesi fokus dan waktu Pengawal Masa anda';

  @override
  String get guardNeedsAccess => 'Perlukan suis kebolehcapaian: ketik untuk menghidupkannya';

  @override
  String get guardDisclosureTitle => 'Cara pengawal berfungsi';

  @override
  String get guardDisclosureBody =>
      'Untuk menjeda apl yang anda pilih, Deep Focus menggunakan perkhidmatan kebolehcapaian Android untuk melihat apl mana yang dibuka. Dengan “Tutup Shorts dan Reels” dihidupkan, ia juga menyemak sama ada pemain video pendek ada pada skrin.\n\nIa tidak membaca sebarang teks, tidak menyimpan apa-apa yang dilihatnya dan tidak menghantar apa-apa ke mana-mana: semuanya kekal pada telefon anda. Anda boleh mematikannya bila-bila masa dalam tetapan Kebolehcapaian.';

  @override
  String get guardAgree => 'Setuju dan buka tetapan';

  @override
  String get guardModeGentle => 'Lembut';

  @override
  String get guardModeStrict => 'Tegas';

  @override
  String get guardGentleHint => 'Jeda bernafas 5 saat, kemudian anda memilih';

  @override
  String get guardStrictHint => 'Apl yang dipilih kekal ditutup sehingga masa fokus tamat';

  @override
  String get guardApps => 'Apl untuk dijeda';

  @override
  String get guardAppsAllowed => 'Apl yang dibenarkan';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apl',
      zero: 'Belum ada yang dipilih',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Benarkan apl yang dipilih sahaja';

  @override
  String get guardAllowlistHint =>
      'Semua apl lain dijeda; panggilan, tetapan dan papan kekunci sentiasa berfungsi';

  @override
  String get guardShorts => 'Tutup Shorts dan Reels';

  @override
  String get guardShortsHint =>
      'Bila-bila masa pengawal dihidupkan. Usaha terbaik: apl ini kerap berubah';

  @override
  String get guardSchedule => 'Pengawal Masa';

  @override
  String get guardScheduleHint =>
      'Turut mengawal pada hari dan waktu yang ditetapkan, seperti sekolah atau kerja';

  @override
  String get guardFrom => 'Dari';

  @override
  String get guardTo => 'Hingga';

  @override
  String get guardSearchApps => 'Cari apl';

  @override
  String get guardNoApps => 'Tiada apl ditemui';

  @override
  String get guardPrivacy =>
      'Berfungsi pada telefon anda sahaja: pengawal melihat apl mana yang dibuka, tidak sekali-kali kandungannya, dan tidak menghantar apa-apa.';

  @override
  String get guardBreathe => 'Tarik nafas… dan hembus';

  @override
  String get guardQuestion => 'Adakah anda perlukan apl ini sekarang?';

  @override
  String get guardBackToFocus => 'Kembali fokus';

  @override
  String get guardOpenFive => 'Buka selama 5 minit';

  @override
  String get guardStrictBody => 'Apl ini dijeda sehingga masa fokus anda tamat.';

  @override
  String get guardShortsClosed => 'Video pendek ditutup semasa pengawal dihidupkan';

  @override
  String get faqGuardQ => 'Bagaimana saya menghentikan apl yang mengganggu semasa fokus?';

  @override
  String get faqGuardA =>
      'Buka Fokus → tetapan pemasa → Pengawal gangguan. Pilih apl, kemudian Lembut (nafas 5 saat dan soalan “Adakah anda perlukan apl ini sekarang?”) atau Tegas (ia kekal ditutup). Ia berfungsi semasa sesi fokus dan, dengan Pengawal Masa, pada hari dan waktu yang anda tetapkan. “Benarkan apl yang dipilih sahaja” menjeda semua yang lain; panggilan, tetapan dan papan kekunci sentiasa berfungsi. Android meminta anda sekali untuk menghidupkan pengawal dalam tetapan Kebolehcapaian. Ia hanya melihat apl mana yang dibuka dan tidak menghantar apa-apa.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Dialihkan ke $name';
  }

  @override
  String get notesDragHint => 'Tahan nota dan seret ke buku nota';

  @override
  String get guardReviewCards => 'Ulang kaji kad sebaliknya';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kad sedang menunggu anda',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Kecemasan: tahan 10 saat';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Terus tahan… $n';
  }

  @override
  String get guardWeekTitle => 'Minggu ini';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count jeda');
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kembali fokus $count kali',
      one: 'kembali fokus sekali',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Namakan semula perkataan';

  @override
  String get wordsSubtitle => 'Gunakan perkataan anda sendiri untuk sebarang teks dalam apl';

  @override
  String get wordsHint =>
      'Ketik teks untuk menukarnya. Perkataan anda hanya terpakai untuk bahasa ini dan disimpan dalam sandaran.';

  @override
  String get wordsSearch => 'Cari teks';

  @override
  String get wordsChangedOnly => 'Yang diubah sahaja';

  @override
  String wordsOriginal(String text) {
    return 'Asal: $text';
  }

  @override
  String get wordsReset => 'Guna asal';

  @override
  String get wordsResetAll => 'Set semula semua perkataan';

  @override
  String get wordsResetAllConfirm => 'Setiap teks dalam bahasa ini kembali kepada asal.';

  @override
  String get wordsNone => 'Tiada teks ditemui';

  @override
  String get settingsLanguageSearch => 'Cari bahasa';

  @override
  String get settingsLanguageNoMatch => 'Tiada bahasa yang sepadan';

  @override
  String get soundsMyMusic => 'Audio anda';

  @override
  String get soundsMusicHint =>
      'Mainkan fail audio daripada telefon anda. Tiada apa-apa disalin atau dimuat naik.';

  @override
  String get soundsChooseMusic => 'Pilih audio';

  @override
  String get soundsRemoveMusic => 'Alih keluar audio';

  @override
  String get wordPacksTitle => 'Belajar bahasa';

  @override
  String get wordPacksHint =>
      'Senarai perkataan mengikut topik. Muat turun bahasa yang anda mahu sahaja, kemudian sunting atau padam kad dengan bebas.';

  @override
  String get wordPacksFailed => 'Tidak dapat memuat turun. Semak sambungan.';

  @override
  String get wordPacksEmpty => 'Perkataan untuk bahasa ini masih disediakan.';
}
