// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Beranda';

  @override
  String get navTasks => 'Tugas';

  @override
  String get navFocus => 'Fokus';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get navSpaces => 'Ruang';

  @override
  String get moduleProjects => 'Proyek';

  @override
  String get moduleNotes => 'Catatan';

  @override
  String get moduleFlashcards => 'Kartu belajar';

  @override
  String get moduleGoals => 'Target';

  @override
  String get moduleHabits => 'Kebiasaan';

  @override
  String get moduleAnalytics => 'Wawasan';

  @override
  String get moduleSearch => 'Cari';

  @override
  String get moduleAssistant => 'Asisten';

  @override
  String get moduleSettings => 'Setelan';

  @override
  String get moduleTrash => 'Sampah';

  @override
  String get actionSave => 'Simpan';

  @override
  String get actionCancel => 'Batal';

  @override
  String get actionDelete => 'Hapus';

  @override
  String get actionEdit => 'Ubah';

  @override
  String get actionDone => 'Selesai';

  @override
  String get actionAdd => 'Tambah';

  @override
  String get actionCreate => 'Buat';

  @override
  String get actionClose => 'Tutup';

  @override
  String get actionBack => 'Kembali';

  @override
  String get actionUndo => 'Urungkan';

  @override
  String get actionRestore => 'Pulihkan';

  @override
  String get actionRetry => 'Coba lagi';

  @override
  String get actionContinue => 'Lanjut';

  @override
  String get actionSkip => 'Lewati';

  @override
  String get actionArchive => 'Arsipkan';

  @override
  String get actionUnarchive => 'Keluarkan dari arsip';

  @override
  String get actionPin => 'Sematkan';

  @override
  String get actionUnpin => 'Lepas sematan';

  @override
  String get actionMore => 'Opsi lainnya';

  @override
  String get actionClear => 'Bersihkan';

  @override
  String get actionSearch => 'Cari';

  @override
  String get actionSort => 'Urutkan';

  @override
  String get actionShare => 'Bagikan';

  @override
  String get actionImport => 'Impor';

  @override
  String get actionExport => 'Ekspor';

  @override
  String get actionPause => 'Jeda';

  @override
  String get actionResume => 'Lanjutkan';

  @override
  String get actionStart => 'Mulai';

  @override
  String get actionStop => 'Berhenti';

  @override
  String get actionComplete => 'Selesaikan';

  @override
  String get actionDeleteForever => 'Hapus permanen';

  @override
  String get actionEmptyTrash => 'Kosongkan sampah';

  @override
  String get actionUnlink => 'Putuskan tautan';

  @override
  String get actionCustomize => 'Sesuaikan';

  @override
  String get actionPreview => 'Pratinjau';

  @override
  String get actionLog => 'Catat kemajuan';

  @override
  String get stateLoading => 'Memuat…';

  @override
  String get stateSaving => 'Menyimpan…';

  @override
  String get stateSaved => 'Tersimpan';

  @override
  String get stateUnsaved => 'Perubahan belum disimpan';

  @override
  String get errorGenericTitle => 'Terjadi kesalahan';

  @override
  String get errorGenericMessage => 'Data Anda aman. Silakan coba lagi.';

  @override
  String get errorLoadFailed => 'Konten ini tidak dapat dimuat.';

  @override
  String get errorSaveFailed => 'Gagal menyimpan. Perubahan Anda masih ada.';

  @override
  String get validationRequired => 'Kolom ini wajib diisi';

  @override
  String get validationTitleRequired => 'Masukkan judul';

  @override
  String get validationNameRequired => 'Masukkan nama';

  @override
  String get validationTooLong => 'Terlalu panjang';

  @override
  String get validationEndBeforeStart => 'Waktu selesai harus setelah waktu mulai';

  @override
  String get validationStartAfterDue => 'Tanggal mulai harus sebelum tenggat';

  @override
  String get validationPositiveNumber => 'Masukkan angka lebih dari nol';

  @override
  String get validationDependencyCycle => 'Ini akan membuat ketergantungan melingkar';

  @override
  String get validationInvalidRepeat => 'Aturan pengulangan ini tidak valid';

  @override
  String get deletedItem => 'Dipindahkan ke sampah';

  @override
  String get untitled => 'Tanpa judul';

  @override
  String get noProject => 'Tanpa proyek';

  @override
  String get greetingMorning => 'Selamat pagi';

  @override
  String get greetingAfternoon => 'Selamat siang';

  @override
  String get greetingEvening => 'Selamat malam';

  @override
  String get dashFocusToday => 'Fokus hari ini';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done dari $target';
  }

  @override
  String get dashStartFocus => 'Mulai fokus';

  @override
  String get dashFocusRunning => 'Sesi sedang berjalan';

  @override
  String get dashTodayTasks => 'Tenggat hari ini';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Kebiasaan hari ini';

  @override
  String get dashGoals => 'Target';

  @override
  String get dashReview => 'Ulasan';

  @override
  String get dashRecentNotes => 'Catatan terbaru';

  @override
  String get dashInsight => 'Saran';

  @override
  String get dashSeeAll => 'Lihat semua';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartu perlu diulas',
      zero: 'Tidak ada kartu yang perlu diulas',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Ulas sekarang';

  @override
  String get dashCustomizeTitle => 'Bagian beranda';

  @override
  String get dashCustomizeHint => 'Pilih apa yang tampil di layar beranda Anda.';

  @override
  String get dashSectionFocus => 'Fokus';

  @override
  String get dashSectionToday => 'Tugas bertenggat hari ini';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Kebiasaan';

  @override
  String get dashSectionGoals => 'Target';

  @override
  String get dashSectionReview => 'Ulasan kartu';

  @override
  String get dashSectionNotes => 'Catatan terbaru';

  @override
  String get dashSectionInsight => 'Saran';

  @override
  String get quickAddTask => 'Tugas baru';

  @override
  String get quickAddNote => 'Catatan baru';

  @override
  String get quickAddEvent => 'Acara baru';

  @override
  String get quickStartFocus => 'Fokus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ada $count tugas yang terlambat. Mulai dari yang paling penting.',
      one: 'Ada 1 tugas yang terlambat. Jadwalkan ulang atau selesaikan dulu.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Tinggal $minutes menit lagi menuju target fokus harian Anda.';
  }

  @override
  String get insightCardsDue => 'Ulas kartu yang sudah jatuh tempo sekarang selagi masih segar.';

  @override
  String get insightAllClear =>
      'Semua berjalan lancar. Rencanakan besok atau ambil jeda yang tenang.';

  @override
  String insightHabitStreak(String habit) {
    return 'Jaga runtutan Anda: $habit belum dilakukan hari ini.';
  }

  @override
  String get focusTitle => 'Fokus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Timer';

  @override
  String get focusModeCountUp => 'Stopwatch';

  @override
  String get focusModeOpen => 'Bebas';

  @override
  String get focusPhaseWork => 'Fokus';

  @override
  String get focusPhaseShortBreak => 'Istirahat singkat';

  @override
  String get focusPhaseLongBreak => 'Istirahat panjang';

  @override
  String get focusReady => 'Siap kapan pun Anda siap';

  @override
  String get focusPaused => 'Dijeda';

  @override
  String get focusRunning => 'Sedang fokus';

  @override
  String get focusDuration => 'Durasi';

  @override
  String get focusLinkTask => 'Tautkan tugas';

  @override
  String get focusLinkedTask => 'Sedang mengerjakan';

  @override
  String get focusNoTask => 'Tidak ada tugas tertaut';

  @override
  String focusCycle(int current, int total) {
    return 'Siklus $current dari $total';
  }

  @override
  String get focusSkipBreak => 'Lewati istirahat';

  @override
  String get focusStartBreak => 'Mulai istirahat';

  @override
  String get focusStartNext => 'Mulai fokus berikutnya';

  @override
  String get focusSessionComplete => 'Sesi selesai';

  @override
  String get focusSessionStopped => 'Sesi tersimpan';

  @override
  String focusSessionSummary(String duration) {
    return 'Anda fokus selama $duration.';
  }

  @override
  String get focusAddNote => 'Tambahkan catatan tentang sesi ini';

  @override
  String get focusHistory => 'Riwayat';

  @override
  String get focusNoHistory => 'Sesi yang selesai akan muncul di sini';

  @override
  String get focusTargets => 'Target';

  @override
  String get focusDailyTarget => 'Target harian';

  @override
  String get focusWeeklyTarget => 'Target mingguan';

  @override
  String get focusOutcomeCompleted => 'Selesai';

  @override
  String get focusOutcomeInterrupted => 'Dihentikan lebih awal';

  @override
  String get focusRecovered => 'Sesi Anda tetap berjalan saat aplikasi ditutup.';

  @override
  String get focusCompletedWhileAway =>
      'Sebuah sesi selesai saat aplikasi ditutup dan sudah disimpan.';

  @override
  String get focusNotificationsOff =>
      'Notifikasi mati. Anda tidak akan diberi tahu saat sesi berakhir.';

  @override
  String get focusBatteryHint =>
      'Beberapa perangkat menjeda aplikasi di latar belakang. Timer tetap akurat, tetapi pemberitahuan bisa terlambat. Izinkan penggunaan baterai tanpa batasan agar pemberitahuan andal.';

  @override
  String get focusOpenSettings => 'Buka setelan';

  @override
  String get focusStopConfirmTitle => 'Hentikan sesi ini?';

  @override
  String get focusStopConfirmMessage => 'Waktu fokus sejauh ini akan disimpan.';

  @override
  String get focusDiscard => 'Buang';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes menit',
      one: '1 menit',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, sisa $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, berlalu $time';
  }

  @override
  String get focusDeleteSession => 'Hapus sesi';

  @override
  String get tasksTitle => 'Tugas';

  @override
  String get tasksViewToday => 'Hari ini';

  @override
  String get tasksViewUpcoming => 'Mendatang';

  @override
  String get tasksViewAll => 'Semua';

  @override
  String get tasksViewOverdue => 'Terlambat';

  @override
  String get tasksViewCompleted => 'Selesai';

  @override
  String get tasksQuickAddHint => 'Tambah tugas…';

  @override
  String get tasksEmptyTitle => 'Semua beres';

  @override
  String get tasksEmptyMessage => 'Tambahkan tugas untuk menata hari Anda.';

  @override
  String get tasksEmptyCompleted => 'Tugas yang selesai akan muncul di sini.';

  @override
  String get taskNew => 'Tugas baru';

  @override
  String get taskEdit => 'Edit tugas';

  @override
  String get taskTitleLabel => 'Judul';

  @override
  String get taskTitleHint => 'Apa yang perlu dikerjakan?';

  @override
  String get taskDescriptionLabel => 'Deskripsi';

  @override
  String get taskNotesLabel => 'Catatan';

  @override
  String get taskPriority => 'Prioritas';

  @override
  String get priorityNone => 'Tidak ada';

  @override
  String get priorityLow => 'Rendah';

  @override
  String get priorityMedium => 'Sedang';

  @override
  String get priorityHigh => 'Tinggi';

  @override
  String get priorityUrgent => 'Mendesak';

  @override
  String get taskDueDate => 'Tenggat';

  @override
  String get taskStartDate => 'Tanggal mulai';

  @override
  String get taskReminder => 'Pengingat';

  @override
  String get taskRepeat => 'Ulangi';

  @override
  String get taskProject => 'Proyek';

  @override
  String get taskCategory => 'Kategori';

  @override
  String get taskCategoryHint => 'mis. Kerja, Rumah, Belajar';

  @override
  String get taskEstimateMinutes => 'Perkiraan (menit)';

  @override
  String get taskTracked => 'Fokus tercatat';

  @override
  String get taskLabels => 'Label';

  @override
  String get taskAddLabel => 'Label baru';

  @override
  String get taskChecklist => 'Daftar periksa';

  @override
  String get taskAddChecklistItem => 'Tambah item';

  @override
  String get taskSubtasks => 'Subtugas';

  @override
  String get taskAddSubtask => 'Tambah subtugas';

  @override
  String get taskDependencies => 'Diblokir oleh';

  @override
  String get taskAddDependency => 'Tambah tugas penghalang';

  @override
  String get taskLinkedNotes => 'Catatan tertaut';

  @override
  String get taskSetTime => 'Atur jam';

  @override
  String get taskNoDate => 'Tanpa tanggal';

  @override
  String get taskCompleted => 'Tugas selesai';

  @override
  String get taskNextOccurrence => 'Pengulangan berikutnya dibuat';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Terlambat $days hari',
      one: 'Terlambat 1 hari',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Tandai \"$title\" selesai';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Tandai \"$title\" belum selesai';
  }

  @override
  String get sortSmart => 'Pintar';

  @override
  String get sortDueDate => 'Tenggat';

  @override
  String get sortPriority => 'Prioritas';

  @override
  String get sortCreated => 'Terbaru';

  @override
  String get sortTitle => 'Judul';

  @override
  String get filterAllProjects => 'Semua proyek';

  @override
  String get filterAnyPriority => 'Semua prioritas';

  @override
  String get filterTitle => 'Filter dan urutkan';

  @override
  String get dateToday => 'Hari ini';

  @override
  String get dateTomorrow => 'Besok';

  @override
  String get dateYesterday => 'Kemarin';

  @override
  String get repeatNever => 'Tidak berulang';

  @override
  String get repeatDaily => 'Setiap hari';

  @override
  String get repeatWeekdays => 'Setiap hari kerja';

  @override
  String get repeatWeekly => 'Setiap minggu';

  @override
  String get repeatMonthly => 'Setiap bulan';

  @override
  String get repeatYearly => 'Setiap tahun';

  @override
  String get repeatCustom => 'Kustom';

  @override
  String get repeatEvery => 'Ulangi setiap';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kali',
      one: '1 kali',
    );
    return 'Berakhir setelah $_temp0';
  }

  @override
  String get repeatEndsNever => 'Tidak pernah berakhir';

  @override
  String get reminderAtTime => 'Saat acara dimulai';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes menit sebelumnya',
      one: '1 menit sebelumnya',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours jam sebelumnya',
      one: '1 jam sebelumnya',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 hari sebelumnya';

  @override
  String get projectsTitle => 'Proyek';

  @override
  String get projectsEmptyTitle => 'Belum ada proyek';

  @override
  String get projectsEmptyMessage =>
      'Kelompokkan tugas, catatan, dan waktu fokus yang saling terkait.';

  @override
  String get projectNew => 'Proyek baru';

  @override
  String get projectEdit => 'Edit proyek';

  @override
  String get projectName => 'Nama';

  @override
  String get projectDescription => 'Deskripsi';

  @override
  String get projectGoal => 'Tujuan';

  @override
  String get projectDeadline => 'Tenggat waktu';

  @override
  String get projectColor => 'Warna';

  @override
  String get projectIcon => 'Ikon';

  @override
  String get projectProgress => 'Kemajuan';

  @override
  String projectTasksDone(int done, int total) {
    return '$done dari $total tugas selesai';
  }

  @override
  String get projectFocusTime => 'Waktu fokus';

  @override
  String get projectArchived => 'Proyek diarsipkan';

  @override
  String get projectShowArchived => 'Tampilkan arsip';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Tinggal $days hari',
      one: 'Tinggal 1 hari',
      zero: 'Tenggat hari ini',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Lewat tenggat';

  @override
  String get calendarTitle => 'Kalender';

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
  String get calendarNext => 'Berikutnya';

  @override
  String get calendarNoEvents => 'Tidak ada jadwal';

  @override
  String get calendarAllDay => 'Sepanjang hari';

  @override
  String get eventNew => 'Acara baru';

  @override
  String get eventEdit => 'Edit acara';

  @override
  String get eventTitleHint => 'Judul acara';

  @override
  String get eventStarts => 'Mulai';

  @override
  String get eventEnds => 'Selesai';

  @override
  String get eventKind => 'Jenis';

  @override
  String get eventKindEvent => 'Acara';

  @override
  String get eventKindTimeBlock => 'Blok waktu';

  @override
  String get eventKindFocus => 'Sesi fokus';

  @override
  String get eventKindGoal => 'Target pribadi';

  @override
  String get eventDescription => 'Detail';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bertabrakan dengan $count acara',
      one: 'Bertabrakan dengan 1 acara',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Ada jadwal bertabrakan hari ini';

  @override
  String get calendarTaskDue => 'Tugas bertenggat';

  @override
  String get calendarDragHint => 'Tekan lama dan seret acara untuk memindahkannya';

  @override
  String get calendarRescheduled => 'Acara dipindahkan';

  @override
  String get calendarScheduleTask => 'Jadwalkan sebagai blok waktu';

  @override
  String get notesTitle => 'Catatan';

  @override
  String get notesViewAll => 'Semua';

  @override
  String get notesViewPinned => 'Disematkan';

  @override
  String get notesViewFavorites => 'Favorit';

  @override
  String get notesViewArchived => 'Diarsipkan';

  @override
  String get notesTags => 'Tag';

  @override
  String get notesNewNotebook => 'Buku catatan baru';

  @override
  String get notesNoNotebook => 'Tanpa buku catatan';

  @override
  String get notesEmptyTitle => 'Kanvas kosong';

  @override
  String get notesEmptyMessage => 'Tuangkan ide, catatan rapat, dan pengetahuan.';

  @override
  String get noteTitleHint => 'Judul';

  @override
  String get noteBodyHint =>
      'Mulai menulis… Gunakan # untuk tag dan [[Judul]] untuk menautkan catatan.';

  @override
  String get noteFavorite => 'Favorit';

  @override
  String get noteUnfavorite => 'Hapus dari favorit';

  @override
  String get noteMoveTo => 'Pindahkan ke buku catatan';

  @override
  String get noteBacklinks => 'Ditautkan dari';

  @override
  String get noteLinkedTasks => 'Tugas tertaut';

  @override
  String get noteLinkTask => 'Tautkan tugas';

  @override
  String get noteLinkProject => 'Proyek';

  @override
  String get noteFormatHeading => 'Judul bagian';

  @override
  String get noteFormatBold => 'Tebal';

  @override
  String get noteFormatItalic => 'Miring';

  @override
  String get noteFormatList => 'Daftar berpoin';

  @override
  String get noteFormatChecklist => 'Daftar periksa';

  @override
  String get noteFormatLink => 'Tautan';

  @override
  String noteEdited(String time) {
    return 'Diedit $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count kata');
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kartu belajar';

  @override
  String get flashEmptyTitle => 'Buat dek pertama Anda';

  @override
  String get flashEmptyMessage =>
      'Pengulangan berjarak menampilkan setiap kartu tepat sebelum Anda lupa.';

  @override
  String get deckNew => 'Dek baru';

  @override
  String get deckEdit => 'Edit dek';

  @override
  String get deckName => 'Nama dek';

  @override
  String get deckDescription => 'Deskripsi';

  @override
  String get deckDailyNew => 'Kartu baru per hari';

  @override
  String get deckDailyReview => 'Target ulasan harian';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartu',
      zero: 'Tidak ada kartu',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Jatuh tempo';

  @override
  String get deckNewCards => 'Baru';

  @override
  String get deckMature => 'Matang';

  @override
  String get deckStudy => 'Belajar';

  @override
  String get deckNothingDue => 'Belum ada yang perlu diulas. Kembali lagi nanti.';

  @override
  String get deckEmptyCards => 'Tambahkan kartu untuk mulai belajar.';

  @override
  String get cardNew => 'Kartu baru';

  @override
  String get cardEdit => 'Edit kartu';

  @override
  String get cardFront => 'Depan';

  @override
  String get cardBack => 'Belakang';

  @override
  String get cardFrontHint => 'Pertanyaan atau istilah';

  @override
  String get cardBackHint => 'Jawaban atau definisi';

  @override
  String get cardTags => 'Tag';

  @override
  String get cardAddAnother => 'Simpan dan tambah lagi';

  @override
  String get reviewShowAnswer => 'Tampilkan jawaban';

  @override
  String get reviewAgain => 'Ulangi';

  @override
  String get reviewHard => 'Sulit';

  @override
  String get reviewGood => 'Bagus';

  @override
  String get reviewEasy => 'Mudah';

  @override
  String reviewProgress(int done, int total) {
    return '$done dari $total';
  }

  @override
  String get reviewFinishedTitle => 'Sesi selesai';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Anda mengulas $count kartu.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Ketuk untuk melihat jawaban';

  @override
  String get importCardsTitle => 'Impor kartu';

  @override
  String get importCardsHint =>
      'Tempel satu kartu per baris (depan dan belakang dipisahkan tab atau titik koma), atau pilih file: Excel (.xlsx), CSV, dek Anki (.apkg), atau dek hasil ekspor.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartu diimpor',
      zero: 'Tidak ada kartu yang diimpor',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Konten ini tidak dapat diimpor.';

  @override
  String get exportCopied => 'Dek diekspor';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count mnt');
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count hari');
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Target';

  @override
  String get goalsEmptyTitle => 'Tetapkan sesuatu';

  @override
  String get goalsEmptyMessage =>
      'Tetapkan target harian, mingguan, bulanan, atau jangka panjang dan pantau kemajuan nyata.';

  @override
  String get goalNew => 'Target baru';

  @override
  String get goalEdit => 'Edit target';

  @override
  String get goalTitleHint => 'Apa yang ingin Anda capai?';

  @override
  String get goalPeriod => 'Periode';

  @override
  String get goalPeriodDaily => 'Harian';

  @override
  String get goalPeriodWeekly => 'Mingguan';

  @override
  String get goalPeriodMonthly => 'Bulanan';

  @override
  String get goalPeriodLongTerm => 'Jangka panjang';

  @override
  String get goalTarget => 'Nilai target';

  @override
  String get goalUnit => 'Satuan';

  @override
  String get goalUnitHint => 'mis. halaman, km, jam';

  @override
  String get goalStatusActive => 'Aktif';

  @override
  String get goalStatusPaused => 'Dijeda';

  @override
  String get goalStatusAchieved => 'Tercapai';

  @override
  String get goalPause => 'Jeda target';

  @override
  String get goalResume => 'Lanjutkan target';

  @override
  String get goalMarkAchieved => 'Tandai tercapai';

  @override
  String goalProgressOf(String current, String target) {
    return '$current dari $target';
  }

  @override
  String get goalLogAmount => 'Jumlah';

  @override
  String get goalLogNote => 'Catatan (opsional)';

  @override
  String get goalHistory => 'Riwayat';

  @override
  String get goalNoHistory => 'Kemajuan yang dicatat akan muncul di sini';

  @override
  String get goalLinkedTasks => 'Tugas tertaut';

  @override
  String get goalLinkedTasksHint =>
      'Setiap tugas tertaut yang selesai dihitung 1 untuk target ini.';

  @override
  String get goalThisPeriod => 'Periode ini';

  @override
  String get habitsTitle => 'Kebiasaan';

  @override
  String get habitsEmptyTitle => 'Langkah kecil, setiap hari';

  @override
  String get habitsEmptyMessage => 'Buat kebiasaan dan centang saat Anda melakukannya.';

  @override
  String get habitNew => 'Kebiasaan baru';

  @override
  String get habitEdit => 'Edit kebiasaan';

  @override
  String get habitNameHint => 'mis. Baca 20 halaman';

  @override
  String get habitDays => 'Jadwal';

  @override
  String get habitEveryDay => 'Setiap hari';

  @override
  String get habitTargetPerDay => 'Kali per hari';

  @override
  String get habitReminder => 'Pengingat harian';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Runtutan $count hari',
      zero: 'Belum ada runtutan',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Runtutan terbaik';

  @override
  String get habitCurrentStreak => 'Runtutan saat ini';

  @override
  String get habitConsistency => 'Konsistensi';

  @override
  String get habitLast90 => '90 hari terakhir';

  @override
  String get habitPaused => 'Dijeda';

  @override
  String get habitPause => 'Jeda kebiasaan';

  @override
  String get habitResume => 'Lanjutkan kebiasaan';

  @override
  String get habitDoneToday => 'Selesai hari ini';

  @override
  String habitCountToday(int count, int target) {
    return '$count dari $target hari ini';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Centang \"$name\"';
  }

  @override
  String get habitNotScheduledToday => 'Tidak dijadwalkan hari ini';

  @override
  String get analyticsTitle => 'Wawasan';

  @override
  String get rangeWeek => '7 hari';

  @override
  String get rangeMonth => '30 hari';

  @override
  String get rangeQuarter => '90 hari';

  @override
  String get statFocusTime => 'Waktu fokus';

  @override
  String get statSessions => 'Sesi';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed selesai · $interrupted dihentikan lebih awal';
  }

  @override
  String get statTasksDone => 'Tugas selesai';

  @override
  String get statCompletionRate => 'Selesai tepat waktu';

  @override
  String get statHabitConsistency => 'Konsistensi kebiasaan';

  @override
  String get statRetention => 'Daya ingat kartu';

  @override
  String get statReviews => 'Ulasan';

  @override
  String get statActiveGoals => 'Target aktif';

  @override
  String get statEstimated => 'Perkiraan pekerjaan selesai';

  @override
  String get statEstimatedNote => 'Berdasarkan perkiraan Anda, bukan waktu yang diukur';

  @override
  String get statMeasuredNote => 'Diukur dari sesi fokus';

  @override
  String get chartFocusByDay => 'Menit fokus per hari';

  @override
  String get chartTasksByDay => 'Tugas selesai per hari';

  @override
  String get chartTimeByProject => 'Waktu per proyek';

  @override
  String get chartProjectProgress => 'Kemajuan proyek';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: total $total, hari terbaik $best';
  }

  @override
  String get analyticsNoData => 'Data belum cukup';

  @override
  String get analyticsUnassigned => 'Tidak ditetapkan';

  @override
  String get searchHint => 'Cari semuanya…';

  @override
  String get searchRecent => 'Pencarian terbaru';

  @override
  String get searchClearRecent => 'Hapus pencarian terbaru';

  @override
  String searchNoResults(String query) {
    return 'Tidak ada hasil untuk \"$query\"';
  }

  @override
  String get searchStartTyping =>
      'Cari di tugas, catatan, kartu, target, acara, dan lainnya. Pencarian tetap di perangkat ini.';

  @override
  String get searchCatTask => 'Tugas';

  @override
  String get searchCatProject => 'Proyek';

  @override
  String get searchCatNote => 'Catatan';

  @override
  String get searchCatFlashcard => 'Kartu';

  @override
  String get searchCatDeck => 'Dek';

  @override
  String get searchCatGoal => 'Target';

  @override
  String get searchCatHabit => 'Kebiasaan';

  @override
  String get searchCatEvent => 'Acara';

  @override
  String get searchCatSession => 'Sesi';

  @override
  String get searchAll => 'Semua';

  @override
  String get assistantTitle => 'Asisten';

  @override
  String get assistantIntro =>
      'Bantuan perencanaan yang bekerja di perangkat Anda. Jika mau, hubungkan penyedia AI pilihan Anda untuk ringkasan dan pembuatan konten.';

  @override
  String get assistantOnDevice => 'Di perangkat';

  @override
  String get assistantCloud => 'Penyedia AI';

  @override
  String get assistantPlanDay => 'Rencanakan hari saya';

  @override
  String get assistantPlanDayDesc =>
      'Mengurutkan tugas terbuka berdasarkan urgensi, prioritas, dan perkiraan, lalu menyusunnya di sela acara Anda.';

  @override
  String get assistantExtractTasks => 'Ambil tugas dari catatan';

  @override
  String get assistantExtractTasksDesc =>
      'Menemukan item daftar periksa dan baris tindakan dalam catatan lalu mengubahnya menjadi tugas.';

  @override
  String get assistantMakeCards => 'Buat kartu dari catatan';

  @override
  String get assistantMakeCardsDesc =>
      'Mengubah baris \"istilah: definisi\" dan tanya/jawab menjadi kartu.';

  @override
  String get assistantSummarize => 'Ringkas catatan';

  @override
  String get assistantSummarizeDesc =>
      'Memerlukan penyedia AI. Catatan hanya dikirim setelah Anda konfirmasi.';

  @override
  String get assistantWorkload => 'Ringkasan beban kerja';

  @override
  String get assistantWorkloadDesc =>
      'Membandingkan perkiraan pekerjaan dengan waktu luang Anda minggu ini.';

  @override
  String get assistantPlanEmpty =>
      'Tidak ada tugas terbuka untuk direncanakan. Nikmati waktu luangnya.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Waktu fokus luang hari ini: $time';
  }

  @override
  String get assistantPlanOverflow => 'Ini mungkin tidak muat hari ini:';

  @override
  String get assistantChooseNote => 'Pilih catatan';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugas ditemukan',
      zero: 'Tidak ada tugas di catatan ini',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartu ditemukan',
      zero: 'Tidak ada kartu di catatan ini',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Pilih dek';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Perkiraan pekerjaan: $estimated. Waktu luang: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Rencana Anda melebihi waktu yang tersedia. Pertimbangkan memindahkan tugas berprioritas rendah.';

  @override
  String get assistantWorkloadOk => 'Rencana Anda muat dalam waktu yang tersedia.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugas terbuka belum punya perkiraan.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Penyedia AI';

  @override
  String get assistantProviderOff =>
      'Belum ada penyedia terhubung. Alat di perangkat tetap berfungsi.';

  @override
  String assistantProviderOn(String host) {
    return 'Terhubung ke $host';
  }

  @override
  String get assistantEndpoint => 'Endpoint API (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'Kunci API';

  @override
  String get assistantApiKeyStored => 'Disimpan dengan aman di perangkat ini';

  @override
  String get assistantHttpsOnly => 'Hanya endpoint HTTPS yang diizinkan';

  @override
  String get assistantConsentTitle => 'Kirim konten ini ke penyedia AI Anda?';

  @override
  String assistantConsentBody(String host) {
    return 'Teks catatan yang dipilih akan keluar dari perangkat ini dan diproses oleh $host. Tidak ada hal lain yang dikirim.';
  }

  @override
  String get assistantConsentAlways => 'Jangan tanya lagi untuk penyedia ini';

  @override
  String get assistantSend => 'Kirim';

  @override
  String get assistantUnavailable => 'Penyedia AI tidak dapat dihubungi. Coba lagi nanti.';

  @override
  String get assistantDisabledTitle => 'Asisten mati';

  @override
  String get assistantDisabledMessage =>
      'Nyalakan untuk memakai alat perencanaan. Tidak ada data yang keluar dari perangkat kecuali Anda menghubungkan penyedia dan mengonfirmasi setiap permintaan.';

  @override
  String get assistantSummaryTitle => 'Ringkasan';

  @override
  String get assistantRemoveProvider => 'Hapus penyedia';

  @override
  String get settingsTitle => 'Setelan';

  @override
  String get settingsGeneral => 'Umum';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get settingsLanguageSystem => 'Bahasa perangkat';

  @override
  String get settingsAppearance => 'Tampilan';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Terang';

  @override
  String get themeDark => 'Gelap';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get settingsReduceMotion => 'Kurangi gerakan';

  @override
  String get settingsReduceMotionDesc => 'Minimalkan animasi dan latar yang bergerak';

  @override
  String get settingsFocus => 'Timer fokus';

  @override
  String get settingsWorkLength => 'Lama fokus';

  @override
  String get settingsShortBreak => 'Istirahat singkat';

  @override
  String get settingsLongBreak => 'Istirahat panjang';

  @override
  String get settingsLongBreakEvery => 'Istirahat panjang setelah';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count sesi');
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Mulai istirahat otomatis';

  @override
  String get settingsSound => 'Suara selesai';

  @override
  String get settingsDailyFocusTarget => 'Target fokus harian';

  @override
  String get settingsWeeklyFocusTarget => 'Target fokus mingguan';

  @override
  String get settingsNotifications => 'Notifikasi';

  @override
  String get settingsNotificationsEnable => 'Izinkan pengingat';

  @override
  String get settingsQuietHours => 'Jam tenang';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Pengingat kebiasaan, target, dan ulasan disenyapkan dari $start sampai $end';
  }

  @override
  String get settingsReviewReminder => 'Pengingat ulasan kartu';

  @override
  String get settingsPermissionDenied => 'Notifikasi diblokir di setelan sistem.';

  @override
  String get settingsPrivacy => 'Privasi dan data';

  @override
  String get settingsPrivacyStatement =>
      'Data Anda hanya disimpan di perangkat ini dan dienkripsi. Tanpa akun, tanpa analitik, tanpa pelacakan.';

  @override
  String get settingsBackup => 'Buat cadangan terenkripsi';

  @override
  String get settingsBackupDesc => 'Dilindungi kata sandi pilihan Anda';

  @override
  String get settingsRestore => 'Pulihkan dari cadangan';

  @override
  String get settingsRestoreDesc => 'Mengganti semua data di perangkat ini';

  @override
  String get settingsErase => 'Hapus semua data';

  @override
  String get settingsEraseDesc => 'Hapus permanen semua yang ada di perangkat ini';

  @override
  String get settingsEraseConfirmTitle => 'Hapus semua data?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Semua tugas, catatan, kartu, target, kebiasaan, acara, dan sesi akan dihapus permanen. Ketik $word untuk konfirmasi.';
  }

  @override
  String get settingsEraseWord => 'HAPUS';

  @override
  String get settingsErased => 'Semua data dihapus';

  @override
  String get backupPassword => 'Kata sandi cadangan';

  @override
  String get backupPasswordConfirm => 'Konfirmasi kata sandi';

  @override
  String backupPasswordHint(int count) {
    return 'Minimal $count karakter. Tidak bisa dipulihkan jika hilang.';
  }

  @override
  String get backupPasswordMismatch => 'Kata sandi tidak cocok';

  @override
  String get backupPasswordShort => 'Kata sandi terlalu pendek';

  @override
  String get backupCreating => 'Mengenkripsi cadangan…';

  @override
  String get backupCreated => 'Cadangan siap disimpan';

  @override
  String get backupRestoring => 'Memeriksa dan memulihkan…';

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
  String get backupWrongPassword => 'Kata sandi salah, atau file telah diubah.';

  @override
  String get backupNotABackup => 'File ini bukan cadangan Deep Focus.';

  @override
  String get backupCorrupted => 'File cadangan rusak.';

  @override
  String get backupNewer =>
      'Cadangan ini dibuat oleh versi aplikasi yang lebih baru. Perbarui aplikasi dulu.';

  @override
  String get backupRestoreConfirmTitle => 'Ganti semua data?';

  @override
  String get backupRestoreConfirmBody =>
      'Semua yang ada di perangkat ini akan diganti dengan cadangan. Jika pemulihan gagal, tidak ada yang berubah.';

  @override
  String get settingsAbout => 'Tentang';

  @override
  String settingsVersion(String version) {
    return 'Versi $version';
  }

  @override
  String get settingsLicenses => 'Lisensi sumber terbuka';

  @override
  String get settingsAssistant => 'Asisten';

  @override
  String get settingsAssistantEnable => 'Aktifkan asisten';

  @override
  String get settingsDashboard => 'Bagian beranda';

  @override
  String get settingsTrash => 'Sampah';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes mnt';
  }

  @override
  String get trashEmpty => 'Sampah kosong';

  @override
  String get trashHint => 'Item yang dihapus tetap di sini sampai Anda menghapusnya.';

  @override
  String get trashTasks => 'Tugas';

  @override
  String get trashNotes => 'Catatan';

  @override
  String get onboardWelcomeTitle => 'Selamat datang di ruang kerja baru Anda';

  @override
  String get onboardWelcomeBody =>
      'Tugas, fokus, kalender, catatan, kartu belajar, target, dan kebiasaan — menyatu, sederhana, dan indah.';

  @override
  String get onboardPrivateTitle => 'Privat sejak awal';

  @override
  String get onboardPrivateBody =>
      'Semuanya tetap di perangkat ini, terenkripsi. Tanpa akun. Tanpa pelacakan. Anda yang memegang kendali.';

  @override
  String get onboardLanguageTitle => 'Pilih bahasa Anda';

  @override
  String get onboardNotifTitle => 'Pengingat yang lembut';

  @override
  String get onboardNotifBody =>
      'Izinkan notifikasi untuk pengingat tugas dan pemberitahuan fokus. Anda bisa mengubahnya kapan saja.';

  @override
  String get onboardGetStarted => 'Mulai';

  @override
  String onboardStep(int current, int total) {
    return 'Langkah $current dari $total';
  }

  @override
  String get notifChannelReminders => 'Pengingat';

  @override
  String get notifChannelRemindersDesc => 'Pengingat tugas, acara, kebiasaan, dan target';

  @override
  String get notifChannelFocus => 'Timer fokus';

  @override
  String get notifChannelFocusDesc => 'Pemberitahuan saat sesi fokus atau istirahat berakhir';

  @override
  String get notifTaskTitle => 'Pengingat tugas';

  @override
  String get notifEventTitle => 'Acara mendatang';

  @override
  String notifEventBody(String title, String time) {
    return '$title pukul $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sesi fokus selesai';

  @override
  String get notifFocusDoneBody => 'Kerja bagus. Saatnya istirahat.';

  @override
  String get notifBreakDoneTitle => 'Istirahat selesai';

  @override
  String get notifBreakDoneBody => 'Siap untuk sesi fokus berikutnya?';

  @override
  String get notifHabitTitle => 'Pengingat kebiasaan';

  @override
  String get notifReviewTitle => 'Kartu belajar siap';

  @override
  String get notifReviewBody => 'Ulasan singkat menjaga ingatan Anda tetap kuat.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours j $minutes mnt';
  }

  @override
  String durationHours(int hours) {
    return '$hours j';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes mnt';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'S,S,R,K,J,S,M';

  @override
  String a11yProgress(int value) {
    return 'Kemajuan $value persen';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritas: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Warna $index';
  }

  @override
  String get analyticsRangeLabel => 'Rentang waktu';

  @override
  String get analyticsRefresh => 'Muat ulang';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done dari $total tugas bertenggat selesai tepat waktu';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done dari $total tugas selesai';
  }

  @override
  String get analyticsNoProjects => 'Tidak ada proyek aktif';

  @override
  String get analyticsNoFocus => 'Tidak ada sesi fokus dalam rentang ini';

  @override
  String get analyticsHabitsNone => 'Tidak ada kebiasaan aktif';

  @override
  String get analyticsRetentionNote => 'Persentase kartu matang yang Anda ingat';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Waktu luang dihitung $start–$end pada hari kerja ($days), dikurangi acara berjam. Perkiraan pekerjaan adalah jumlah perkiraan tugas terbuka yang bertenggat dalam 7 hari ke depan.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Senin–Jumat';

  @override
  String get assistantWorkdaysSunThu => 'Minggu–Kamis';

  @override
  String get assistantWorkloadDayOff => 'Hari libur';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated direncanakan · $free luang';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Direncanakan dari sekarang sampai $end, di sela acara hari ini. Tugas terlambat dulu, lalu prioritas, tenggat, dan perkiraan.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Jadwalkan sebagai blok waktu';

  @override
  String get assistantScheduleConfirmTitle => 'Tambahkan blok waktu ke kalender?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blok waktu akan ditambahkan ke kalender hari ini.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blok waktu ditambahkan',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Sudah ada di kalender';

  @override
  String get assistantPlanTimeline => 'Muat hari ini';

  @override
  String get assistantNoEstimate => 'Tambahkan perkiraan untuk merencanakannya';

  @override
  String get assistantNoNotes => 'Belum ada catatan. Tulis catatan dulu.';

  @override
  String get assistantNoteEmpty => 'Catatan ini kosong.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count tugas dibuat');
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count kartu dibuat');
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Buat $count',
      zero: 'Belum ada yang dipilih',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Dikenali: kotak centang kosong \"- [ ]\" dan baris yang diawali TODO: atau To do:';

  @override
  String get assistantCardsHint =>
      'Dikenali: \"istilah: definisi\", \"istilah — definisi\", dan pasangan baris Q: dan A:';

  @override
  String get assistantProviderHint =>
      'Gunakan layanan apa pun yang kompatibel dengan OpenAI. Kunci tetap di penyimpanan aman perangkat ini dan tidak pernah masuk ke cadangan.';

  @override
  String get assistantEndpointHelp => 'Contoh: https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Biarkan kosong untuk mempertahankan kunci yang tersimpan';

  @override
  String get assistantApiKeyRequired => 'Masukkan kunci API';

  @override
  String get assistantProviderSaved => 'Penyedia disimpan';

  @override
  String get assistantProviderRemoved => 'Penyedia dihapus dan kunci dihapus';

  @override
  String get assistantRemoveProviderConfirm =>
      'Hapus penyedia dan kunci API yang tersimpan dari perangkat ini?';

  @override
  String get assistantAskEveryTime => 'Tanya sebelum setiap permintaan';

  @override
  String get assistantSummarizing => 'Meringkas…';

  @override
  String assistantSummaryNote(String host) {
    return 'Dibuat oleh $host. Periksa sebelum mengandalkannya.';
  }

  @override
  String get assistantCopy => 'Salin';

  @override
  String get assistantCopied => 'Disalin';

  @override
  String get assistantConfigure => 'Atur penyedia';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Semua acara dalam seri ini dipindahkan';

  @override
  String get calendarEventReminder => 'Pengingat';

  @override
  String get calendarEventRepeat => 'Ulangi';

  @override
  String get calendarEventColor => 'Warna';

  @override
  String get calendarDefaultColor => 'Gunakan warna jenis';

  @override
  String get calendarEventLinkedTask => 'Tugas tertaut';

  @override
  String get calendarEventNoTask => 'Tidak ada tugas tertaut';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count acara',
      zero: 'Tidak ada acara',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugas bertenggat',
      zero: 'tidak ada tugas bertenggat',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Tambahkan acara atau blok waktu untuk merencanakan hari ini.';

  @override
  String get calendarNow => 'Waktu sekarang';

  @override
  String get calendarRecurring => 'Berulang';

  @override
  String get calendarEventNotFound => 'Acara ini sudah tidak ada';

  @override
  String get calendarEventLocalTime => 'Waktu ditampilkan dalam zona waktu perangkat Anda';

  @override
  String get calendarEventDeleted => 'Acara dipindahkan ke sampah';

  @override
  String get calendarConflictMarker => 'Bertabrakan dengan acara lain';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Perubahan berlaku untuk setiap acara dalam seri ini';

  @override
  String get calendarDragHintSeries => 'Menyeret acara berulang akan memindahkan seluruh seri';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, tugas bertenggat';
  }

  @override
  String get startupErrorTitle => 'Data Anda tidak dapat dibuka';

  @override
  String get startupErrorLocked =>
      'Kunci enkripsi untuk data perangkat ini tidak tersedia. Tidak ada yang dihapus. Memulai ulang perangkat sering membantu. Jika Anda baru memulihkan perangkat, pulihkan data dari cadangan terenkripsi.';

  @override
  String get startupErrorCipher =>
      'Perangkat ini tidak mendukung penyimpanan terenkripsi yang dibutuhkan aplikasi. Tidak ada yang disimpan tanpa enkripsi.';

  @override
  String get startupErrorRetry => 'Coba lagi';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartu perlu diulas',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count jatuh tempo';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count baru';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Kartu matang: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Masukkan 0 atau lebih';

  @override
  String get flashcardsSearchCards => 'Cari kartu';

  @override
  String get flashcardsSearchEmpty => 'Tidak ada kartu yang cocok';

  @override
  String get flashcardsCardAdded => 'Kartu ditambahkan';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Jatuh tempo $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Salin ke papan klip';

  @override
  String get flashcardsExportTitle => 'Ekspor dek';

  @override
  String get flashcardsDeleteDeck => 'Hapus dek';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, ulasan berikutnya dalam $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Pertanyaan: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Jawaban: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Tampilkan pertanyaan';

  @override
  String get flashcardsImportField => 'Kartu yang diimpor';

  @override
  String get flashcardsNothingToStudy => 'Tidak ada yang perlu dipelajari';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartu siap dipelajari',
      zero: 'Belum ada kartu siap',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Berdasarkan nilai';

  @override
  String get flashcardsDeckNotFound => 'Dek ini sudah tidak tersedia.';

  @override
  String get focusSessionDeleted => 'Sesi dihapus';

  @override
  String get focusDeleteConfirm =>
      'Hapus sesi ini dari riwayat? Waktunya tidak lagi dihitung untuk target Anda.';

  @override
  String get focusUnlinkTask => 'Hapus tugas tertaut';

  @override
  String get focusNoteHint => 'Apa yang Anda kerjakan?';

  @override
  String get focusTargetCaption => 'Diukur dari sesi yang tersimpan';

  @override
  String get focusModeLabel => 'Mode timer';

  @override
  String focusUpNext(String phase) {
    return 'Berikutnya: $phase';
  }

  @override
  String get focusStopwatchHint => 'Menghitung maju sampai Anda berhenti.';

  @override
  String get focusOpenHint => 'Tanpa batas waktu. Berhenti kapan pun Anda selesai.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Pengingat dimatikan di setelan. Anda tidak akan diberi tahu saat sesi berakhir.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Semua';

  @override
  String get goalsFilterPeriod => 'Filter periode';

  @override
  String get goalsFilterStatus => 'Filter status';

  @override
  String get goalsEmptyFiltered => 'Tidak ada target yang cocok dengan filter ini';

  @override
  String goalsDueOn(String date) {
    return 'Tenggat $date';
  }

  @override
  String get goalsDeadline => 'Tenggat (opsional)';

  @override
  String get goalsNoDeadline => 'Tanpa tenggat';

  @override
  String get goalsSetDeadline => 'Atur tenggat';

  @override
  String get goalsRemoveDeadline => 'Hapus tenggat';

  @override
  String get goalsDescription => 'Deskripsi (opsional)';

  @override
  String get goalsTitleLabel => 'Judul';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Target tercapai';

  @override
  String get goalsLogged => 'Kemajuan dicatat';

  @override
  String get goalsEntryDeleted => 'Entri dihapus';

  @override
  String get goalsDeleteEntry => 'Hapus entri';

  @override
  String get goalsDeleted => 'Target dihapus';

  @override
  String get goalsMarkActive => 'Tandai aktif';

  @override
  String get goalsNotFound => 'Target ini sudah tidak tersedia';

  @override
  String get goalsLinkTask => 'Tautkan tugas';

  @override
  String get goalsNoLinkedTasks => 'Belum ada tugas tertaut';

  @override
  String get goalsUnlinkTask => 'Lepas tautan tugas';

  @override
  String get goalsTaskOpen => 'Belum selesai';

  @override
  String get goalsTaskLinked => 'Tugas ditautkan';

  @override
  String get goalsTaskUnlinked => 'Tautan tugas dilepas';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugas tertaut yang selesai',
    );
    return 'Termasuk $_temp0 pada periode ini';
  }

  @override
  String get goalsHistoryAllTime =>
      'Entri dari periode sebelumnya tetap di sini tetapi hanya dihitung untuk periodenya sendiri.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done dari $total selesai hari ini';
  }

  @override
  String get habitsNothingToday => 'Tidak ada kebiasaan terjadwal hari ini';

  @override
  String get habitsDecrease => 'Kurangi satu centang';

  @override
  String get habitsResetToday => 'Atur ulang hari ini';

  @override
  String get habitsCheckInHint => 'Tekan lama untuk menyesuaikan';

  @override
  String get habitsName => 'Nama';

  @override
  String get habitsColor => 'Warna';

  @override
  String get habitsValidationDays => 'Pilih minimal satu hari';

  @override
  String habitsReminderAt(String time) {
    return 'Setiap hari pukul $time';
  }

  @override
  String get habitsSetReminder => 'Atur waktu pengingat';

  @override
  String get habitsRemoveReminder => 'Hapus pengingat';

  @override
  String get habitsReminderNote =>
      'Pengingat muncul pada hari terjadwal jika notifikasi diizinkan.';

  @override
  String get habitsArchived => 'Kebiasaan diarsipkan';

  @override
  String get habitsNotFound => 'Kebiasaan ini sudah tidak tersedia';

  @override
  String get habitsLast30 => '30 hari terakhir';

  @override
  String get habitsConsistencyNone => 'Data belum cukup';

  @override
  String get habitsCalendar => 'Riwayat centang';

  @override
  String get habitsCalendarHint => 'Ketuk hari untuk memperbaikinya.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count dari $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Centang dalam 90 hari terakhir. Konsistensi $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Centang dalam 90 hari terakhir. Data belum cukup.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count hari');
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Hari yang dijeda tidak memengaruhi runtutan Anda.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arsipkan kebiasaan';

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
  String get notesSectionOthers => 'Catatan lain';

  @override
  String get notesAllNotebooks => 'Semua buku catatan';

  @override
  String get notesNotebookName => 'Nama buku catatan';

  @override
  String get notesNotebookColor => 'Warna';

  @override
  String get notesDeleteNotebook => 'Hapus buku catatan';

  @override
  String get notesDeleteNotebookMessage =>
      'Buku catatan dihapus. Catatannya tetap ada dan muncul di Semua buku catatan.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Sematkan catatan penting agar tetap di atas.';

  @override
  String get notesEmptyFavorites => 'Catatan yang Anda tandai favorit muncul di sini.';

  @override
  String get notesEmptyArchived => 'Catatan yang diarsipkan muncul di sini.';

  @override
  String get notesEmptyFiltered => 'Tidak ada catatan yang cocok dengan filter ini.';

  @override
  String get notesArchivedSnack => 'Catatan diarsipkan';

  @override
  String get notesUnarchivedSnack => 'Catatan dikembalikan ke catatan Anda';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done dari $total selesai';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Format';

  @override
  String get notesWrite => 'Tulis';

  @override
  String get notesPreviewEmpty => 'Belum ada yang bisa dipratinjau.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Belum ada catatan lain yang menautkan ke sini. Tautkan catatan ini dengan [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Beri judul catatan ini agar catatan lain bisa menautkannya.';

  @override
  String get notesLinkedTasksEmpty => 'Tidak ada tugas yang tertaut ke catatan ini.';

  @override
  String notesLinkMissing(String title) {
    return 'Belum ada catatan berjudul \"$title\".';
  }

  @override
  String get notesNotFound => 'Catatan ini sudah tidak ada.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Item daftar periksa: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Buka catatan $title';
  }

  @override
  String get notesTagsHint => 'Tambahkan tag dengan menulis #tag di catatan.';

  @override
  String get notesTaskDone => 'Selesai';

  @override
  String get notifTimerDoneBody => 'Waktu yang Anda atur sudah habis.';

  @override
  String get onboardingPrivatePointDevice => 'Hanya disimpan di perangkat ini, terenkripsi';

  @override
  String get onboardingPrivatePointAccount => 'Tidak perlu akun';

  @override
  String get onboardingPrivatePointTracking => 'Tanpa analitik, tanpa pelacakan';

  @override
  String get onboardingLanguageBody => 'Anda bisa mengubahnya kapan saja di Setelan.';

  @override
  String get onboardingNext => 'Berikutnya';

  @override
  String get projectsActive => 'Aktif';

  @override
  String get projectNameHint => 'mis. Peluncuran produk';

  @override
  String get projectGoalHint => 'Seperti apa hasil akhirnya?';

  @override
  String get projectNoDeadline => 'Tanpa tenggat';

  @override
  String get projectTasksOpen => 'Tugas terbuka';

  @override
  String get projectTasksCompleted => 'Tugas selesai';

  @override
  String get projectAddTask => 'Tambah tugas ke proyek';

  @override
  String get projectAddNote => 'Catatan proyek baru';

  @override
  String get projectLinkedNotes => 'Catatan';

  @override
  String get projectNoTasks => 'Belum ada tugas di proyek ini';

  @override
  String get projectArchivedBadge => 'Diarsipkan';

  @override
  String get projectDeleted => 'Proyek dipindahkan ke sampah';

  @override
  String get projectDeleteMessage => 'Tugas tetap ada di daftar Anda tanpa proyek.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent persen selesai';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count hasil');
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filter menurut jenis';

  @override
  String searchRecentTap(String query) {
    return 'Cari lagi $query';
  }

  @override
  String get settingsLanguageHint =>
      'Pilih bahasa untuk seluruh aplikasi. Nama ditulis dalam bahasanya sendiri.';

  @override
  String get settingsThemeHint => 'Terang, gelap, atau ikuti sistem';

  @override
  String settingsDecrease(String setting) {
    return 'Kurangi $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Tambah $setting';
  }

  @override
  String get settingsQuietStart => 'Mulai';

  @override
  String get settingsQuietEnd => 'Berakhir';

  @override
  String get settingsNotificationsHint =>
      'Ini menyimpan pilihan Anda di aplikasi. Sistem mungkin juga meminta izin.';

  @override
  String get settingsDashboardHint =>
      'Seret untuk mengatur urutan. Matikan bagian yang tidak Anda perlukan.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Atur ulang $section';
  }

  @override
  String get settingsDashboardReset => 'Kembalikan urutan bawaan';

  @override
  String get settingsAssistantDesc =>
      'Bantuan perencanaan opsional. Tidak ada yang keluar dari perangkat ini kecuali Anda menghubungkan penyedia.';

  @override
  String get settingsAssistantSetup => 'Asisten dan pengaturan penyedia';

  @override
  String get settingsTrashDesc => 'Pulihkan atau hapus permanen item yang dihapus';

  @override
  String get settingsEraseFirstBody =>
      'Ini tidak bisa dibatalkan. Sebaiknya buat cadangan terenkripsi dulu.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Ketik $word';
  }

  @override
  String get settingsEraseFailed => 'Data tidak dapat dihapus. Tidak ada yang berubah.';

  @override
  String get settingsAboutTagline =>
      'Ruang kerja produktivitas yang privat dan mengutamakan perangkat lokal.';

  @override
  String get backupShowPassword => 'Tampilkan kata sandi';

  @override
  String get backupHidePassword => 'Sembunyikan kata sandi';

  @override
  String get backupSaved => 'Cadangan disimpan';

  @override
  String get backupFailed => 'Cadangan tidak dapat dibuat. Data Anda tidak berubah.';

  @override
  String get backupReadFailed => 'File yang dipilih tidak dapat dibaca.';

  @override
  String get backupRestoreFailed => 'Pemulihan gagal. Tidak ada yang berubah.';

  @override
  String get backupShareSubject => 'Cadangan terenkripsi Deep Focus';

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
  String get repeatEndsLabel => 'Berakhir';

  @override
  String get repeatEndsAfter => 'Setelah beberapa kali';

  @override
  String get repeatCountLabel => 'Jumlah kali';

  @override
  String get reminderNone => 'Tanpa pengingat';

  @override
  String get reminderCustomTime => 'Pada waktu tertentu';

  @override
  String get a11yDecrease => 'Kurangi';

  @override
  String get a11yIncrease => 'Tambah';

  @override
  String get pickTaskTitle => 'Pilih tugas';

  @override
  String get pickTaskEmpty => 'Tidak ada tugas terbuka';

  @override
  String get tasksSearchTooltip => 'Cari tugas';

  @override
  String get tasksSectionOverdue => 'Terlambat';

  @override
  String get tasksSectionToday => 'Hari ini';

  @override
  String get tasksRecurringSemantics => 'Berulang';

  @override
  String get tasksFilterPriorityAtLeast => 'Prioritas minimum';

  @override
  String get tasksFilterCategory => 'Kategori';

  @override
  String get tasksFilterAnyCategory => 'Semua kategori';

  @override
  String get tasksFilterLabel => 'Label';

  @override
  String get tasksFilterAnyLabel => 'Semua label';

  @override
  String get tasksFilterReset => 'Atur ulang filter';

  @override
  String get tasksViewByProject => 'Per proyek';

  @override
  String get tasksViewByPriority => 'Per prioritas';

  @override
  String get tasksViewByCategory => 'Per kategori';

  @override
  String get tasksGroupNoCategory => 'Tanpa kategori';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count tugas');
    return 'Diblokir oleh $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Tugas ini diblokir oleh tugas yang belum selesai. Tetap selesaikan?';

  @override
  String get taskStartFocus => 'Fokus pada tugas ini';

  @override
  String get taskRemoveDate => 'Hapus tanggal';

  @override
  String get taskAllDay => 'Tanpa jam tertentu';

  @override
  String get taskSaved => 'Tugas disimpan';

  @override
  String get taskCreated => 'Tugas dibuat';

  @override
  String get taskReminderNeedsDue => 'Atur tenggat untuk memakai pengingat relatif';

  @override
  String get taskSubtaskDetailsHint =>
      'Simpan tugas dulu untuk menambahkan subtugas, item daftar periksa, label, dan ketergantungan.';

  @override
  String get taskLabelName => 'Nama label';

  @override
  String get taskMoreDetails => 'Detail';

  @override
  String get taskPlanning => 'Perencanaan';

  @override
  String get taskOrganize => 'Pengaturan';

  @override
  String get taskBreakdown => 'Rincian';

  @override
  String get trashDeleteTaskTitle => 'Hapus tugas ini selamanya?';

  @override
  String get trashDeleteNoteTitle => 'Hapus catatan ini selamanya?';

  @override
  String get trashDeleteBody => 'Ini tidak bisa dibatalkan.';

  @override
  String get trashEmptyTitle => 'Kosongkan sampah?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item akan dihapus permanen.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Dipulihkan';

  @override
  String get trashPurged => 'Dihapus selamanya';

  @override
  String trashDeletedOn(String date) {
    return 'Dihapus $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count item');
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Bacakan';

  @override
  String get flashcardsTtsUnavailable => 'Teks ke ucapan tidak tersedia di perangkat ini.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Belum ada suara untuk bahasa ini. Tambahkan di setelan teks ke ucapan Android.';

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
      'code': 'Kode',
      'palette': 'Palet',
      'fitness': 'Kebugaran',
      'school': 'Sekolah',
      'travel': 'Perjalanan',
      'money': 'Tabungan',
      'other': 'Ikon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Kolom lain';

  @override
  String get cardFieldExample => 'Contoh';

  @override
  String get cardFieldExplanation => 'Penjelasan';

  @override
  String get cardFieldPronunciation => 'Pelafalan';

  @override
  String get cardFieldNotes => 'Catatan tambahan';

  @override
  String get projectMilestones => 'Tonggak';

  @override
  String get milestoneAdd => 'Tambah tonggak';

  @override
  String get milestoneEdit => 'Edit tonggak';

  @override
  String get milestoneTitleLabel => 'Tonggak';

  @override
  String get milestoneNoDate => 'Tanpa tanggal';

  @override
  String get milestonesEmpty =>
      'Belum ada tonggak. Tambahkan titik pencapaian bertanggal untuk memantau proyek di kalender.';

  @override
  String get milestoneDeleted => 'Tonggak dihapus';

  @override
  String milestoneDoneA11y(String title) {
    return 'Tandai tonggak \"$title\" selesai';
  }

  @override
  String calendarMilestone(String project) {
    return 'Tonggak · $project';
  }

  @override
  String get tasksViewInbox => 'Kotak masuk';

  @override
  String get tasksViewArchived => 'Diarsipkan';

  @override
  String get tasksEmptyInbox =>
      'Tugas tanpa proyek atau tanggal masuk ke sini. Rapikan saat Anda punya waktu sebentar.';

  @override
  String get tasksEmptyArchived =>
      'Tugas yang diarsipkan disimpan di sini, di luar daftar dan pengingat Anda.';

  @override
  String get taskArchivedBadge => 'Diarsipkan';

  @override
  String get taskStatusInProgress => 'Sedang dikerjakan';

  @override
  String get taskArchived => 'Tugas diarsipkan';

  @override
  String get taskUnarchived => 'Tugas dipulihkan dari arsip';

  @override
  String get focusPlanTitle => 'Rencana sesi';

  @override
  String focusPlanTotal(String duration) {
    return 'Total $duration';
  }

  @override
  String get focusPlanRounds => 'Sesi fokus';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Istirahat panjang setelah';

  @override
  String get focusPlanSkipLastBreak => 'Lewati istirahat terakhir';

  @override
  String get focusPlanAutoBreaks => 'Mulai istirahat otomatis';

  @override
  String get focusPlanAutoFocus => 'Mulai fokus otomatis setelah istirahat';

  @override
  String get focusPlanSave => 'Simpan rencana';

  @override
  String get focusPlanNameHint => 'mis. Persiapan ujian';

  @override
  String get focusPlanSaved => 'Rencana disimpan';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: fokus $work mnt, istirahat $rest mnt';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Kurangi $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Tambah $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sesi $current dari $total';
  }

  @override
  String get focusSeriesComplete => 'Seri selesai. Kerja bagus!';

  @override
  String get filterAll => 'Semua';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added diimpor · $duplicates duplikat dilewati · $invalid baris tidak lengkap';
  }

  @override
  String get flashcardsSuspend => 'Tangguhkan kartu';

  @override
  String get flashcardsResume => 'Lanjutkan kartu';

  @override
  String get flashcardsSuspended => 'Kartu ditangguhkan: tidak akan dijadwalkan';

  @override
  String get flashcardsResumed => 'Kartu dilanjutkan';

  @override
  String get flashcardsSuspendedFilter => 'Ditangguhkan';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown dari $total kartu';
  }

  @override
  String get flashcardsImportFile => 'Dari file';

  @override
  String get speechTitle => 'Ucapan';

  @override
  String get speechAppLanguage => 'Bahasa aplikasi';

  @override
  String get speechFrontLanguage => 'Bahasa sisi depan';

  @override
  String get speechBackLanguage => 'Bahasa sisi belakang';

  @override
  String get speechRepeat => 'Ulangi setiap bacaan';

  @override
  String get speechRate => 'Kecepatan';

  @override
  String get speechAutoRead => 'Bacakan pertanyaan otomatis';

  @override
  String get speechHint =>
      'Memakai suara yang terpasang di perangkat ini, secara offline. Jika suatu bahasa tidak punya suara, Anda akan diberi tahu dan tidak ada pengganti yang dipakai.';

  @override
  String get studyHowTitle => 'Bagaimana Anda ingin belajar?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Ulas $count kartu');
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Latih semua kartu (jadwal tidak berubah)';

  @override
  String get studyPracticeMistakes => 'Latih kesalahan terbaru';

  @override
  String get studyPracticeHint =>
      'Putaran latihan tidak pernah mengubah jadwal kartu. Ulasan memperbarui jadwal.';

  @override
  String get studyModeClassic => 'Klasik';

  @override
  String get studyModeReverse => 'Terbalik';

  @override
  String get studyModeMixed => 'Dua arah';

  @override
  String get studyModeTyped => 'Ketik jawaban';

  @override
  String get studyModeChoice => 'Pilihan ganda';

  @override
  String get studyModeListening => 'Mendengarkan';

  @override
  String get studyPractice => 'latihan';

  @override
  String get studyNoMistakes => 'Tidak ada kesalahan terbaru di dek ini. Mantap!';

  @override
  String get studyTypeAnswer => 'Ketik jawaban Anda';

  @override
  String get studyCheck => 'Periksa';

  @override
  String get studyKnewIt => 'Saya tahu';

  @override
  String get studyDidntKnow => 'Tidak tahu';

  @override
  String studyMistakes(int count) {
    return 'Terlewat ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Ulangi kartu yang terlewat';

  @override
  String get studyCorrect => 'Benar';

  @override
  String get studyAlmost => 'Hampir — periksa ejaannya';

  @override
  String get studyWrong => 'Belum tepat';

  @override
  String get studyShowText => 'Tampilkan teks';

  @override
  String get flashcardsImportFileFailed =>
      'File tidak dapat dibuka. Anda bisa menempelkan isinya sebagai gantinya.';

  @override
  String get studyNoMatchingCards => 'Belum ada kartu untuk pilihan ini.';

  @override
  String get studyPracticeNew => 'Hanya yang baru';

  @override
  String get studyPracticeHard => 'Kartu sulit';

  @override
  String get studyPracticeFavorites => 'Favorit';

  @override
  String get studySessionSize => 'Kartu per sesi';

  @override
  String get studySessionAll => 'Semua';

  @override
  String get studyOrder => 'Urutan';

  @override
  String get studyOrderDue => 'Paling lama terlambat dulu';

  @override
  String get studyOrderRandom => 'Acak';

  @override
  String get studyOrderHardest => 'Paling sulit dulu';

  @override
  String get flashcardsHard => 'Sulit';

  @override
  String get flashcardsFavorites => 'Favorit';

  @override
  String get flashcardsFavorite => 'Tambahkan ke favorit';

  @override
  String get flashcardsUnfavorite => 'Hapus dari favorit';

  @override
  String get flashcardsDuplicate => 'Duplikat';

  @override
  String get flashcardsMoveTo => 'Pindahkan ke dek';

  @override
  String get flashcardsNoOtherDeck => 'Buat dek lain dulu.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartu dipindahkan',
      one: 'Kartu dipindahkan',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Tambah tag';

  @override
  String get flashcardsTagHint => 'mis. kata kerja';

  @override
  String flashcardsSelected(int count) {
    return '$count dipilih';
  }

  @override
  String get flashcardsSelectAll => 'Pilih semua yang tampil';

  @override
  String flashcardsSelectCard(String front) {
    return 'Pilih $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Ingatan $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Kemungkinan duplikat';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Dek ini sudah memiliki “$front” → “$back”. Tetap simpan?';
  }

  @override
  String get flashcardsSaveAnyway => 'Tetap simpan';

  @override
  String get flashcardsStats => 'Statistik';

  @override
  String get flashcardsStatTotal => 'Kartu';

  @override
  String get flashcardsStatLearning => 'Sedang dipelajari';

  @override
  String get flashcardsStatMatureCaption => 'Diingat 21+ hari';

  @override
  String get flashcardsStatReviewsToday => 'Ulasan hari ini';

  @override
  String get flashcardsStatCorrect => 'Jawaban benar';

  @override
  String flashcardsStatLastDays(int days) {
    return '$days hari terakhir';
  }

  @override
  String get flashcardsStatForget => 'Tingkat lupa';

  @override
  String get flashcardsStatForgetCaption => '“Ulangi” pada kartu yang sudah dipelajari';

  @override
  String get flashcardsStatRecall => 'Ingatan saat ini';

  @override
  String get flashcardsStatRecallCaption => 'Perkiraan FSRS, kartu yang diulas';

  @override
  String flashcardsStatActivity(int count) {
    return 'Ulasan per hari · total $count';
  }

  @override
  String get flashcardsStatHistory => 'Jawaban terbaru';

  @override
  String get flashcardsStatNoHistory =>
      'Belum ada ulasan. Pelajari dek ini untuk melihat kemajuan Anda di sini.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Bacakan $field';
  }

  @override
  String get speechVoice => 'Suara';

  @override
  String get speechVoiceDefault => 'Otomatis';

  @override
  String get speechVoiceOnline => 'perlu internet';

  @override
  String get speechTest => 'Coba suara';

  @override
  String get importNext => 'Pratinjau';

  @override
  String get importPreviewTitle => 'Cocokkan kolom dengan isian';

  @override
  String get importIgnoreColumn => 'Abaikan';

  @override
  String importColumn(int n) {
    return 'Kolom $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kartu siap · $invalid baris tidak lengkap akan dilewati';
  }

  @override
  String get importNeedFrontBack => 'Pilih kolom mana yang menjadi sisi depan dan belakang.';

  @override
  String get actionMoveUp => 'Naikkan';

  @override
  String get actionMoveDown => 'Turunkan';

  @override
  String get flashcardsLayoutTitle => 'Tata letak kartu';

  @override
  String get flashcardsLayoutHint =>
      'Ganti nama, sembunyikan, atau atur ulang isian tambahan dek ini. Isi kartu tidak pernah diubah.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Tampilkan $field saat belajar';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Buka jawaban selangkah demi selangkah';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Sisi belakang muncul dulu; setiap isian tambahan terbuka dengan satu ketukan.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Tampilkan $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'File ini lebih besar dari $mb MB.';
  }

  @override
  String get flashcardsImage => 'Gambar';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Tambah gambar';

  @override
  String get flashcardsAddAudio => 'Tambah audio';

  @override
  String get flashcardsPlayAudio => 'Putar rekaman';

  @override
  String get flashcardsAudioUnavailable => 'Rekaman ini tidak dapat diputar di perangkat ini.';

  @override
  String get flashcardsCustomFields => 'Isian Anda';

  @override
  String get flashcardsTemplates => 'Templat';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Isian $n';
  }

  @override
  String get flashcardsAddField => 'Tambah isian';

  @override
  String get flashcardsFieldName => 'Nama isian';

  @override
  String get flashcardsFieldLangDefault => 'Bahasa sisi';

  @override
  String get flashcardsTemplateConfirm =>
      'Templat menentukan cara isian ditampilkan dan menambahkan isiannya. Kartu dan isian yang sudah ada tetap seperti semula.';

  @override
  String get flashcardsApplyTemplate => 'Terapkan';

  @override
  String get templateVocabulary => 'Kosakata';

  @override
  String get templateTwoTranslations => 'Kata dengan dua terjemahan';

  @override
  String get templateQuestionAnswer => 'Tanya dan jawab';

  @override
  String get templateDefinition => 'Istilah dan definisi';

  @override
  String get templateGrammar => 'Aturan tata bahasa';

  @override
  String get templateFieldPlural => 'Bentuk jamak';

  @override
  String get templateFieldTranslation2 => 'Terjemahan kedua';

  @override
  String get templateFieldSynonyms => 'Sinonim';

  @override
  String get templateFieldRule => 'Aturan';

  @override
  String get deckCategory => 'Tingkat atau topik';

  @override
  String get deckCategoryHint => 'mis. A1, Kedokteran';

  @override
  String get flashcardsSearchAll => 'Cari semua kartu';

  @override
  String get flashcardsSearchAllHint => 'Kata, terjemahan, contoh, catatan, tag…';

  @override
  String get flashcardsAllDecks => 'Semua dek';

  @override
  String get flashcardsAllLanguages => 'Semua bahasa';

  @override
  String get flashcardsLangUnset => 'Bahasa belum diatur';

  @override
  String get flashcardsLevelUnset => 'Tanpa tingkat atau topik';

  @override
  String get flashcardsByLanguage => 'Kemajuan per bahasa';

  @override
  String get flashcardsByLevel => 'Kemajuan per tingkat atau topik';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks dek · $cards kartu · $mature matang · $due jatuh tempo · $correct benar (30 hari)';
  }

  @override
  String get flashcardsRecord => 'Rekam';

  @override
  String get flashcardsRecording => 'Merekam…';

  @override
  String get flashcardsRecordStop => 'Berhenti dan simpan';

  @override
  String get flashcardsMicDenied => 'Akses mikrofon mati. Izinkan di setelan sistem untuk merekam.';

  @override
  String get flashcardsRecordFailed => 'Perekaman tidak tersedia di perangkat ini.';

  @override
  String get soundsTitle => 'Suara';

  @override
  String get soundsNature => 'Alam';

  @override
  String get soundsNoise => 'Derau untuk fokus';

  @override
  String get soundRain => 'Hujan';

  @override
  String get soundStorm => 'Badai petir';

  @override
  String get soundRiver => 'Sungai';

  @override
  String get soundOcean => 'Ombak laut';

  @override
  String get soundFire => 'Api unggun';

  @override
  String get soundForest => 'Kicau burung hutan';

  @override
  String get soundNight => 'Malam musim panas';

  @override
  String get soundWhite => 'Derau putih';

  @override
  String get soundPink => 'Derau merah muda';

  @override
  String get soundBrown => 'Derau cokelat';

  @override
  String get soundsPlay => 'Putar';

  @override
  String get soundsSleep => 'Timer tidur';

  @override
  String get soundsSleepOff => 'Mati';

  @override
  String soundsSleepAt(String time) {
    return 'Berhenti pukul $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Hingga $count suara bisa diputar bersamaan.';
  }

  @override
  String get soundsHint =>
      'Ketuk suara untuk memulai. Campur beberapa dan atur volume masing-masing.';

  @override
  String get soundsMixer => 'Campuran';

  @override
  String soundsVolumeOf(String name) {
    return 'Volume $name';
  }

  @override
  String get soundsChannel => 'Suara alam';

  @override
  String get settingsEndTone => 'Suara akhir timer';

  @override
  String get toneGentle => 'Bip lembut';

  @override
  String get toneBeeps => 'Bip';

  @override
  String get toneWood => 'Ketukan kayu';

  @override
  String get toneBird => 'Kicau burung';

  @override
  String get toneStream => 'Aliran air';

  @override
  String get toneSystem => 'Suara ponsel';

  @override
  String get speechOnPhone => 'Di ponsel ini';

  @override
  String get speechAllLanguages => 'Semua bahasa';

  @override
  String get speechSearchLanguage => 'Cari bahasa';

  @override
  String get speechGetVoices => 'Unduh suara lainnya';

  @override
  String get speechGetVoicesHint => 'Bahasa tanpa suara bisa diunduh di setelan ucapan ponsel.';

  @override
  String get speechSettingsFailed => 'Setelan ucapan tidak dapat dibuka di ponsel ini.';

  @override
  String get speechVoiceMissing => 'Belum ada suara';

  @override
  String get speechPause => 'Jeda antar pengulangan';

  @override
  String speechSeconds(String seconds) {
    return '$seconds dtk';
  }

  @override
  String get speechExample => 'Bacakan contoh bersama jawaban';

  @override
  String get flashListen => 'Dengarkan';

  @override
  String get flashListenNext => 'Kartu berikutnya';

  @override
  String get flashListenEmpty => 'Tidak ada kartu untuk didengarkan.';

  @override
  String get flashViewTable => 'Tabel';

  @override
  String get flashViewCards => 'Kartu';

  @override
  String get flashSwapSides => 'Tukar kolom';

  @override
  String get flashSort => 'Urutkan';

  @override
  String get flashSortNewest => 'Terbaru dulu';

  @override
  String get flashSortAlpha => 'A sampai Z';

  @override
  String get flashSortDue => 'Jatuh tempo dulu';

  @override
  String get flashSortHard => 'Paling sulit dulu';

  @override
  String get flashPasteCards => 'Tempel kartu';

  @override
  String get flashClipboardEmpty => 'Papan klip tidak berisi teks.';

  @override
  String get flashMenuAdd => 'Tambah kartu';

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
      other: '$count kartu dijawab',
      zero: 'Belum ada kartu dijawab',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Hujan di hutan';

  @override
  String get autoBackupTitle => 'Cadangan otomatis';

  @override
  String get autoBackupDesc => 'Setiap hari di ponsel ini; 7 terakhir disimpan';

  @override
  String get autoBackupHint =>
      'Salinan ini tetap di ponsel ini dan terhapus jika aplikasi dicopot. Untuk pindah ke ponsel baru, gunakan “Cadangkan” untuk menyimpan file.';

  @override
  String get autoBackupNone => 'Belum ada cadangan otomatis. Yang pertama dibuat hari ini.';

  @override
  String get autoBackupRestore => 'Pulihkan';

  @override
  String autoBackupConfirm(String date) {
    return 'Ganti semua data saat ini dengan cadangan dari $date?';
  }

  @override
  String get autoBackupRestored => 'Dipulihkan.';

  @override
  String get errorLogTitle => 'Log kesalahan';

  @override
  String get errorLogHint =>
      'Jika terjadi masalah, catatannya ada di sini: hanya jenis kesalahan dan letaknya dalam kode, tidak pernah konten Anda. Bagikan untuk membantu memperbaikinya.';

  @override
  String get errorLogEmpty => 'Tidak ada kesalahan tercatat.';

  @override
  String get errorLogClear => 'Bersihkan';

  @override
  String get soundsWithFocus => 'Putar bersama sesi fokus';

  @override
  String get soundsWithFocusHint =>
      'Campuran Anda mulai bersama sesi fokus dan berhenti saat istirahat.';

  @override
  String get soundsSavedMixes => 'Campuran tersimpan';

  @override
  String get soundsSaveMix => 'Simpan campuran ini';

  @override
  String get soundsMixNameHint => 'Nama, mis. Perpustakaan saat hujan';

  @override
  String soundsDeleteMix(String name) {
    return 'Hapus campuran “$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Sekali sehari, hanya jika ada kartu jatuh tempo';

  @override
  String get settingsReviewTime => 'Waktu pengingat';

  @override
  String get shortcutFocus => 'Fokus';

  @override
  String get shortcutNewTask => 'Tugas baru';

  @override
  String get shortcutReview => 'Ulas kartu';

  @override
  String get shortcutSounds => 'Suara alam';

  @override
  String get myDayTitle => 'Mulai hari saya';

  @override
  String get myDayHint => 'Hari Anda sekilas, lalu satu ketukan untuk fokus';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tugas hari ini',
      zero: 'Tidak ada tugas hari ini',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Tidak ada acara lagi hari ini';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Berikutnya: $title pukul $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tinggal $count kebiasaan',
      zero: 'Semua kebiasaan selesai',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Mulai dengan sesi fokus';

  @override
  String get hijriMonth1 => 'Muharam';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabiulawal';

  @override
  String get hijriMonth4 => 'Rabiulakhir';

  @override
  String get hijriMonth5 => 'Jumadilawal';

  @override
  String get hijriMonth6 => 'Jumadilakhir';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Syakban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Syawal';

  @override
  String get hijriMonth11 => 'Zulkaidah';

  @override
  String get hijriMonth12 => 'Zulhijah';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year H';
  }

  @override
  String get settingsHijri => 'Tanggal Hijriah';

  @override
  String get settingsHijriHint => 'Ditampilkan di kalender dan beranda (Ummul Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count hari');
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done dari $goal kartu hari ini';
  }

  @override
  String get studyGoalReached => 'Target harian tercapai. Kerja bagus!';

  @override
  String get studyWeekTitle => 'Minggu Anda';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartu dijawab dalam 7 hari',
      zero: 'Tidak ada kartu dijawab dalam 7 hari',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fokus dalam 7 hari';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Runtutan: $current · Terbaik: $best';
  }

  @override
  String get studyGoalTitle => 'Target harian (kartu)';

  @override
  String get studyGoalOff => 'Mati';

  @override
  String get focusDndTitle => 'Jangan Ganggu saat fokus';

  @override
  String get focusDndHint => 'Menyala setiap sesi fokus dan mati lagi saat istirahat';

  @override
  String get focusDndNeedsAccess => 'Izinkan akses di setelan ponsel untuk memakai ini';

  @override
  String get voiceInput => 'Bicara untuk mengetik';

  @override
  String get voiceInputPrompt => 'Silakan bicara';

  @override
  String get voiceInputUnavailable =>
      'Mengetik dengan suara tidak tersedia di ponsel ini. Pasang atau aktifkan layanan ucapan (misalnya Speech Recognition & Synthesis dari Google).';

  @override
  String get prayerFajr => 'Subuh';

  @override
  String get prayerSunrise => 'Terbit';

  @override
  String get prayerDhuhr => 'Zuhur';

  @override
  String get prayerAsr => 'Asar';

  @override
  String get prayerMaghrib => 'Magrib';

  @override
  String get prayerIsha => 'Isya';

  @override
  String get prayerMethodMwl => 'Liga Muslim Dunia';

  @override
  String get prayerMethodUmmAlQura => 'Ummul Qura, Makkah';

  @override
  String get prayerMethodEgypt => 'Otoritas Umum Mesir';

  @override
  String get prayerMethodJordan => 'Yordania, Kementerian Wakaf';

  @override
  String get prayerMethodKarachi => 'Universitas Ilmu-ilmu Islam, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Kawasan Teluk';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turki, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapura, Malaysia, Indonesia';

  @override
  String get prayerMethodFrance => 'Prancis (12°)';

  @override
  String get prayerMethodRussia => 'Rusia, Dewan Spiritual';

  @override
  String prayerNotifTitle(String name) {
    return 'Waktunya $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Waktu salat · $time';
  }

  @override
  String get prayerTitle => 'Waktu salat';

  @override
  String get prayerOffHint =>
      'Pilih kota Anda untuk melihat waktu salat. Waktu dihitung di ponsel; tidak perlu akses lokasi.';

  @override
  String get prayerChooseCity => 'Pilih kota';

  @override
  String get prayerCity => 'Kota';

  @override
  String get prayerCitySearch => 'Cari kota';

  @override
  String get prayerMethod => 'Metode perhitungan';

  @override
  String get prayerHanafiAsr => 'Asar mazhab Hanafi (waktu lebih akhir)';

  @override
  String get prayerReminders => 'Beri tahu setiap waktu salat';

  @override
  String get prayerPauseFocus => 'Jeda fokus saat waktu salat';

  @override
  String get prayerPauseFocusHint => 'Sesi yang berjalan akan dijeda; lanjutkan setelah salat';

  @override
  String get prayerTurnOff => 'Matikan waktu salat';

  @override
  String get prayerAccuracyNote =>
      'Waktu hasil perhitungan bisa berbeda beberapa menit dari masjid setempat.';

  @override
  String prayerNext(String name, String time) {
    return '$name pukul $time';
  }

  @override
  String get importAnkiNewFormat =>
      'File Anki ini memakai format terbaru. Di Anki, ekspor lagi dengan “Support older Anki versions” aktif, lalu impor file itu.';

  @override
  String get importTemplate => 'Templat spreadsheet';

  @override
  String get importTemplateFront => 'apel';

  @override
  String get importTemplateBack => 'buah yang bulat';

  @override
  String get importTemplateExample => 'Saya makan apel setiap hari.';

  @override
  String get importTemplateTag => 'makanan';

  @override
  String get starterTitle => 'Dek pemula';

  @override
  String get starterHint =>
      'Tambahkan satu untuk langsung mencoba belajar. Anda bisa mengedit atau menghapusnya nanti.';

  @override
  String get starterAdd => 'Tambah';

  @override
  String get starterWords => 'Kosakata Inggris sehari-hari (dengan arti Arab)';

  @override
  String get starterCapitals => 'Ibu kota dunia';

  @override
  String get starterElements => 'Unsur kimia';

  @override
  String get settingsAccent => 'Warna aksen';

  @override
  String get accentViolet => 'Ungu';

  @override
  String get accentBlue => 'Biru';

  @override
  String get accentTeal => 'Hijau toska';

  @override
  String get accentGreen => 'Hijau';

  @override
  String get accentRose => 'Merah muda';

  @override
  String get accentAmber => 'Kuning amber';

  @override
  String get settingsFlashTextSize => 'Ukuran teks kartu';

  @override
  String get settingsFlashTextSample => 'Contoh';

  @override
  String get widgetStartFocus => 'Ketuk untuk fokus';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokus sampai $time';
  }

  @override
  String get widgetNoCardsDue => 'Kartu: semua selesai';

  @override
  String get faqMyDayQ => 'Apa fungsi “Mulai hari saya”?';

  @override
  String get faqMyDayA =>
      'Sekali sehari beranda menawarkannya: lihat tugas hari ini, acara berikutnya, kebiasaan yang tersisa, dan kartu jatuh tempo, lalu mulai sesi fokus dengan satu ketukan. Tekan lama ikon aplikasi untuk aksi cepat, atau tambahkan widget layar utama untuk melihat waktu fokus dan kartu jatuh tempo.';

  @override
  String get faqTasksQ => 'Bagaimana menambah tugas dengan pengingat?';

  @override
  String get faqTasksA =>
      'Ketuk Tugas baru di Beranda atau + di Tugas. Ketik judulnya atau ucapkan lewat mikrofon, lalu atur tenggat, jam, dan pengingat. Tugas terlambat tampil paling atas.';

  @override
  String get faqFocusQ => 'Bagaimana timer fokus bekerja?';

  @override
  String get faqFocusA =>
      'Pilih Pomodoro, hitung mundur, atau waktu bebas lalu tekan Mulai; istirahat bisa menyusul otomatis. Di Setelan Anda bisa memilih suara selesai, menyalakan Jangan Ganggu saat fokus, dan memutar suara alam di setiap sesi.';

  @override
  String get faqSoundsQ => 'Bisakah saya mencampur suara alam?';

  @override
  String get faqSoundsA =>
      'Nyalakan hingga enam rekaman asli, atur volume masing-masing, lalu simpan campurannya dengan nama. Suara terus diputar di latar belakang, dan timer tidur bisa menghentikannya. Tidak ada musik.';

  @override
  String get faqCalendarQ => 'Bisakah kalender menampilkan tanggal Hijriah?';

  @override
  String get faqCalendarA =>
      'Bisa. Tanggal Hijriah (Ummul Qura) tampil otomatis dalam bahasa Arab dan bisa dinyalakan di Setelan untuk bahasa apa pun. Acara, tugas bertenggat, dan tonggak proyek tampil bersama.';

  @override
  String get faqFlashcardsQ => 'Bagaimana ulasan menentukan kartu yang saya lihat?';

  @override
  String get faqFlashcardsA =>
      'Kartu yang sudah Anda kuasai muncul lagi setelah jeda lebih panjang, sedangkan kartu yang terlupa muncul lagi segera (pengulangan berjarak). Nilai setiap jawaban dengan Ulangi, Sulit, Bagus, atau Mudah. Tetapkan target harian dan jaga runtutan di kartu Hari ini. Atur tanggal ujian di dek untuk melihat sisa hari dan berapa kartu baru yang dipelajari setiap hari. Urutkan dengan \"Urutan saya\" untuk menyeret kartu, ketuk pengeras suara di salah satu sisi untuk mendengarnya, dan atur kecepatan serta pengulangan di menu Ucapan.';

  @override
  String get faqImportQ => 'Bisakah saya membawa kartu dari Anki atau Excel?';

  @override
  String get faqImportA =>
      'Bisa. Di dek pilih Impor, lalu pilih file: Anki (.apkg), Excel (.xlsx), atau CSV, dan cocokkan kolomnya. Gunakan “Templat spreadsheet” untuk menulis kartu di komputer. Gambar dan suara di file Anki tidak ikut diimpor.';

  @override
  String get faqNotesQ => 'Apa saja yang bisa dilakukan catatan?';

  @override
  String get faqNotesA =>
      'Menulis bebas dengan daftar periksa dan format, menyematkan atau memfavoritkan catatan penting, menambah tag, dan menautkan catatan ke tugas. Tombol mikrofon memungkinkan Anda mendikte. Catatan baru bisa dimulai dari templat (kuliah, ringkasan buku, jurnal, rencana mingguan), dan tombol gambar menambahkan foto.';

  @override
  String get faqHabitsQ => 'Bagaimana runtutan kebiasaan dihitung?';

  @override
  String get faqHabitsA =>
      'Sebuah hari dihitung saat Anda mencapai target kebiasaan pada hari terjadwal. Menjeda kebiasaan menjaga runtutan tetap aman. Setiap kebiasaan bisa punya waktu pengingat sendiri.';

  @override
  String get faqGoalsQ => 'Bagaimana target memantau kemajuan?';

  @override
  String get faqGoalsA =>
      'Beri target jumlah dan satuan, lalu catat kemajuannya. Kartunya menunjukkan sejauh mana Anda dan berapa yang tersisa sebelum tenggat.';

  @override
  String get faqProjectsQ => 'Untuk apa proyek?';

  @override
  String get faqProjectsA =>
      'Kelompokkan tugas dalam proyek, tambahkan tonggak bertanggal, dan pantau kemajuan keseluruhan. Tonggak juga tampil di kalender.';

  @override
  String get faqInsightsQ => 'Apa yang ditampilkan Wawasan?';

  @override
  String get faqInsightsA =>
      'Waktu fokus, tugas selesai, dan belajar Anda dari hari ke hari dan minggu ke minggu, dengan saran yang lembut. Semua dihitung di ponsel Anda.';

  @override
  String get faqSpacesQ => 'Di mana semua bagian?';

  @override
  String get faqSpacesA =>
      'Ruang memuat setiap bagian aplikasi (catatan, dek, kebiasaan, target, proyek, suara, dan lainnya) agar bilah utama tetap sederhana.';

  @override
  String get faqBackupQ => 'Bagaimana data saya dicadangkan?';

  @override
  String get faqBackupA =>
      'Setiap hari aplikasi diam-diam menyimpan salinan terenkripsi di ponsel ini dan menyimpan 7 terakhir. Di Setelan Anda juga bisa mengekspor file cadangan berkata sandi dan memulihkannya di ponsel lain.';

  @override
  String get faqPrayerQ => 'Bagaimana waktu salat bekerja?';

  @override
  String get faqPrayerA =>
      'Pilih kota Anda di Setelan → Waktu salat. Waktu dihitung di ponsel dengan metode yang dipakai di sana, dan Anda bisa mengubah metode serta mazhab untuk Asar. Anda bisa diberi tahu di setiap waktu salat, dan sesi fokus yang berjalan akan dijeda.';

  @override
  String get faqPrivacyQ => 'Di mana data saya disimpan?';

  @override
  String get faqPrivacyA =>
      'Hanya di ponsel Anda, dalam database terenkripsi. Tanpa akun dan tanpa pelacakan. Internet hanya dipakai oleh fitur yang Anda nyalakan sendiri, seperti asisten opsional.';

  @override
  String get faqAssistantQ => 'Apa itu asisten?';

  @override
  String get faqAssistantA =>
      'Pembantu opsional yang Anda hubungkan ke layanan AI Anda sendiri di Setelan. Defaultnya mati dan selalu bertanya sebelum mengirim teks catatan.';

  @override
  String get tourPlanTitle => 'Rencanakan hari Anda';

  @override
  String get tourPlanBody =>
      'Tugas, kalender, dan kebiasaan di satu tempat yang tenang. Mulai setiap pagi dengan “Mulai hari saya”.';

  @override
  String get tourFocusTitle => 'Fokus mendalam';

  @override
  String get tourFocusBody =>
      'Sesi berwaktu dengan suara alam asli, Jangan Ganggu, dan nada selesai yang lembut.';

  @override
  String get tourLearnTitle => 'Belajar untuk jangka panjang';

  @override
  String get tourLearnBody =>
      'Kartu belajar dengan pengulangan berjarak, ucapan dalam banyak bahasa, dan impor dari Anki atau Excel.';

  @override
  String get helpTitle => 'Bantuan & pertanyaan';

  @override
  String get helpOpen => 'Buka';

  @override
  String get helpTour => 'Lihat tur';

  @override
  String get tourNext => 'Berikutnya';

  @override
  String get tourDone => 'Ayo mulai';

  @override
  String get transferColTitle => 'Judul';

  @override
  String get transferColNotes => 'Catatan';

  @override
  String get transferColBody => 'Teks';

  @override
  String get transferColDue => 'Tenggat';

  @override
  String get transferColPriority => 'Prioritas (0-3)';

  @override
  String get transferColDone => 'Selesai';

  @override
  String get transferColProject => 'Proyek';

  @override
  String get transferColCategory => 'Kategori';

  @override
  String get transferTitle => 'Impor dan ekspor';

  @override
  String get transferSaveAs => 'Simpan sebagai';

  @override
  String get transferImport => 'Impor dari file';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV, atau tabel di Word. Kolom: judul, tenggat (2026-12-31), prioritas 0-3, selesai, proyek, catatan. Tugas yang sudah ada di aplikasi dilewati.';

  @override
  String get transferImportNotesHint =>
      'File Word, Markdown, atau teks menjadi catatan. Excel atau CSV: satu catatan per baris (judul, teks).';

  @override
  String get transferSaved => 'File disimpan';

  @override
  String get transferFailed => 'File tidak dapat dibuat. Tidak ada yang berubah.';

  @override
  String get transferUnsupported =>
      'File ini tidak bisa dibaca di sini. Gunakan Excel, CSV, Word, Markdown, atau teks.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added ditambahkan',
      zero: 'Tidak ada yang baru untuk ditambahkan',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Teks';

  @override
  String get transferAllNotes => 'Semua catatan';

  @override
  String get transferThisNote => 'Catatan ini';

  @override
  String get transferDeckFormats => 'Simpan sebagai Excel, Word, atau PDF';

  @override
  String get faqFilesQ => 'Bisakah saya memakai file Excel, Word, atau PDF?';

  @override
  String get faqFilesA =>
      'Bisa. Tugas dan Catatan punya tombol impor dan ekspor (dua panah) di atas, dan setiap dek punya tombol itu di menunya. Simpan sebagai Excel, CSV, Word, atau PDF, atau masukkan file Excel, CSV, Word, Markdown, atau teks. Nama kolom boleh dalam bahasa apa pun yang ada di aplikasi, dan file yang Anda simpan selalu bisa diimpor lagi.';

  @override
  String get tplLecture => 'Kuliah';

  @override
  String get tplBook => 'Ringkasan buku';

  @override
  String get tplJournal => 'Jurnal';

  @override
  String get tplWeek => 'Rencana mingguan';

  @override
  String get tplLectureBody => '## Poin utama\n- \n\n## Pertanyaan\n- [ ] \n\n## Ringkasan\n';

  @override
  String get tplBookBody =>
      '## Gagasan utama\n\n## Yang saya pelajari\n- \n\n## Kutipan\n> \n\n## Untuk diterapkan\n- [ ] \n';

  @override
  String get tplJournalBody => '## Bersyukur atas\n- \n\n## Fokus hari ini\n- [ ] \n\n## Catatan\n';

  @override
  String get tplWeekBody =>
      '## Target minggu ini\n- [ ] \n\n### Sabtu\n- [ ] \n\n### Minggu\n- [ ] \n\n### Senin\n- [ ] \n\n### Selasa\n- [ ] \n\n### Rabu\n- [ ] \n\n### Kamis\n- [ ] \n\n### Jumat\n- [ ] \n';

  @override
  String get tplHint => 'Mulai dari templat';

  @override
  String get noteImage => 'Gambar';

  @override
  String get noteAddImage => 'Tambah gambar';

  @override
  String get noteImageUnreadable => 'File ini bukan gambar yang bisa dibaca aplikasi.';

  @override
  String get noteImageTooLarge => 'Gambar ini terlalu besar.';

  @override
  String get examSet => 'Atur tanggal ujian';

  @override
  String get examDate => 'Tanggal ujian';

  @override
  String get examToday => 'Ujian hari ini. Semoga sukses!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ujian $count hari lagi',
      one: 'Ujian besok',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pelajari $count kartu baru per hari',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'semua kartu sudah dipelajari, terus ulas';

  @override
  String examRaiseLimit(int count) {
    return 'Tampilkan $count kartu baru per hari';
  }

  @override
  String get backupDriveHint =>
      'Untuk menyimpan salinan online, pilih Google Drive (atau aplikasi cloud lain) di layar simpan yang terbuka berikutnya.';

  @override
  String get flashShareDeck => 'Bagikan dek ke teman';

  @override
  String get flashSortManual => 'Urutan saya (seret)';

  @override
  String get flashReorderHint => 'Tahan pegangan dan seret kartu untuk memindahkannya.';

  @override
  String get flashReorderNeedsAll => 'Hapus pencarian dan filter untuk menyeret kartu.';

  @override
  String get flashDragHandle => 'Seret untuk memindahkan';

  @override
  String get reportTitle => 'Laporan bulanan';

  @override
  String get reportFocus => 'Waktu fokus';

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
  String get reportCards => 'Kartu diulas';

  @override
  String reportCardsKnown(String percent) {
    return '$percent diingat';
  }

  @override
  String get reportTasks => 'Tugas selesai';

  @override
  String get reportHabits => 'Centang kebiasaan';

  @override
  String get reportEmpty => 'Belum ada catatan bulan ini.';

  @override
  String get reportSave => 'Simpan sebagai PDF atau Word';

  @override
  String get reportPrevMonth => 'Bulan sebelumnya';

  @override
  String get reportNextMonth => 'Bulan berikutnya';

  @override
  String get careTitle => 'Perawatan ponsel dan data';

  @override
  String get storageTitle => 'Penyimpanan';

  @override
  String get storageSubtitle => 'Apa yang memakan ruang dan pembersihan gambar tak terpakai';

  @override
  String get storagePictures => 'Gambar di catatan';

  @override
  String get storageCardMedia => 'Gambar dan audio di kartu';

  @override
  String get storageText => 'Teks catatan';

  @override
  String get storageFree => 'Ruang kosong di ponsel';

  @override
  String get storageLow =>
      'Ponsel Anda hampir penuh. Kosongkan sedikit ruang agar cadangan dan pengingat tetap berjalan.';

  @override
  String storageUnused(int count, String size) {
    return '$count gambar tak terpakai ($size)';
  }

  @override
  String get storageNoUnused => 'Tidak ada gambar tak terpakai. Semuanya rapi.';

  @override
  String get storageClean => 'Hapus gambar tak terpakai';

  @override
  String storageCleaned(int count) {
    return '$count gambar dihapus';
  }

  @override
  String get storageHint =>
      'Gambar dianggap tak terpakai hanya jika tidak ada catatan yang menampilkannya, termasuk catatan di sampah.';

  @override
  String get batteryTitle => 'Jaga pengingat tetap berjalan';

  @override
  String get batterySubtitle =>
      'Beberapa ponsel menghentikan aplikasi di latar belakang. Periksa ponsel Anda.';

  @override
  String get batteryStatusOk =>
      'Penghemat baterai tidak membatasi aplikasi ini. Pengingat dan suara seharusnya tiba tepat waktu.';

  @override
  String get batteryStatusLimited =>
      'Penghemat baterai mungkin menghentikan aplikasi di latar belakang, sehingga pengingat dan suara bisa terlambat atau tidak muncul.';

  @override
  String get batteryOpen => 'Buka setelan baterai';

  @override
  String get batteryOpenApp => 'Buka setelan aplikasi';

  @override
  String get batteryGeneric =>
      'Di setelan baterai, pilih aplikasi ini dan atur ke Tidak dibatasi (atau Jangan optimalkan).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: buka juga Keamanan › Izin › Mulai otomatis dan nyalakan aplikasi ini, lalu atur Penghemat baterai ke Tanpa batasan.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: buka Baterai › aplikasi ini dan izinkan aktivitas latar belakang dan mulai otomatis; kunci aplikasi di daftar aplikasi terbaru.';

  @override
  String get batterySamsung =>
      'Samsung: Baterai › Batas penggunaan latar belakang: keluarkan aplikasi ini dari Aplikasi tidur dan Aplikasi tidur nyenyak.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Peluncuran aplikasi › aplikasi ini › kelola manual, lalu izinkan mulai otomatis, peluncuran sekunder, dan berjalan di latar belakang.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Baterai › Konsumsi daya latar belakang › izinkan aplikasi ini, dan aktifkan mulai otomatis di izin.';

  @override
  String get whatsNewTitle => 'Yang baru';

  @override
  String get whatsNewSubtitle => 'Perubahan terbaru dalam beberapa baris';

  @override
  String get whatsNewDone => 'Mengerti';

  @override
  String get whatsNewOrderTitle => 'Seret kartu sesuai urutan Anda';

  @override
  String get whatsNewOrderBody =>
      'Di dek pilih Urutkan › Urutan saya, lalu tahan pegangan dan seret.';

  @override
  String get whatsNewSpeechTitle => 'Pengeras suara di setiap sisi kartu';

  @override
  String get whatsNewSpeechBody =>
      'Ketuk untuk mendengar kata atau terjemahannya. Kecepatan, pengulangan, dan suara ada di menu ulasan. Bahasa dikenali dari teks.';

  @override
  String get whatsNewReportTitle => 'Laporan bulanan';

  @override
  String get whatsNewReportBody =>
      'Di Wawasan, ketuk ikon laporan untuk melihat bulan ini dan menyimpannya sebagai PDF atau Word.';

  @override
  String get whatsNewCareTitle => 'Perawatan ponsel dan data';

  @override
  String get whatsNewCareBody =>
      'Setelan kini punya halaman penyimpanan dengan pembersihan gambar dan panduan baterai untuk merek ponsel Anda.';

  @override
  String get whatsNewSoundTitle => 'Suara yang lebih tenang';

  @override
  String get whatsNewSoundBody =>
      'Suara alam lebih lembut dan pelan, dan kartu gambarnya lebih cantik.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Diperiksa $date: cadangan terbaru terbuka dengan benar.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Diperiksa $date: cadangan rusak ditemukan dan diganti dengan yang baru.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Diperiksa $date: cadangan terbaru tidak dapat dibuka. Simpan sendiri file cadangan dari Setelan.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Anda biasanya belajar sekitar pukul $time';
  }

  @override
  String get smartReviewTimeUse => 'Gunakan';

  @override
  String get widgetNewNote => 'Catatan baru';

  @override
  String get noteConnections => 'Tag, tautan, dan tugas';

  @override
  String get navCards => 'Kartu';

  @override
  String get studyAnswerWay => 'Cara menjawab';

  @override
  String get studyMorePractice => 'Latihan tambahan';

  @override
  String get studySessionSettings => 'Setelan sesi';

  @override
  String get focusAdjustTitle => 'Sesi Anda';

  @override
  String get focusPresetsTitle => 'Siap pakai';

  @override
  String get focusPresetStudy => 'Belajar';

  @override
  String get focusPresetDeep => 'Kerja mendalam';

  @override
  String get focusPresetQuick => 'Sprint singkat';

  @override
  String get focusPresetReading => 'Membaca';

  @override
  String get focusPresetWorkout => 'Ronde latihan';

  @override
  String get focusAdjustMinutes => 'Lama fokus';

  @override
  String get focusAdjustBreak => 'Lama istirahat';

  @override
  String get focusAdjustRounds => 'Ronde';

  @override
  String get focusRoundsOpen => 'Tanpa batas';

  @override
  String focusMinutesShort(String n) {
    return '$n mnt';
  }

  @override
  String get focusTapToAdjust => 'Ketuk untuk mengubah waktu';

  @override
  String get flashArrangeDecks => 'Atur urutan dek';

  @override
  String get flashDeckActions => 'Opsi dek';

  @override
  String get starterBrowse => 'Dek siap pakai';

  @override
  String get starterBrowseHint => 'Tambahkan dengan sekali ketuk dan mulai belajar';

  @override
  String get dashOpenDecks => 'Buka kartu Anda';

  @override
  String speechVoiceNumber(String n) {
    return 'Suara $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Alur yang bagus. Istirahat $m mnt?';
  }

  @override
  String get focusFlowBreakStart => 'Mulai istirahat';

  @override
  String tasksFinishAt(String time) {
    return 'Mulai sekarang dan semuanya selesai pukul $time';
  }

  @override
  String get focusCalmPacing => 'Ritme tenang';

  @override
  String get focusCalmPacingHint => 'Hanya menit penuh dan lingkaran, tanpa detik yang berdetak';

  @override
  String get focusFlipHint => 'Telungkupkan ponsel untuk mulai';

  @override
  String get focusImmersive => 'Mode imersif';

  @override
  String get focusImmersiveBlack => 'Hitam pekat (hemat baterai)';

  @override
  String get focusFlipToFocus => 'Balik untuk fokus';

  @override
  String get focusFlipToFocusHint => 'Di mode imersif: menelungkup memulai, mengangkat menjeda';

  @override
  String get guardTitle => 'Penjaga gangguan';

  @override
  String get guardSubtitle => 'Jeda aplikasi yang mengganggu saat Anda fokus';

  @override
  String get guardSwitch => 'Jeda aplikasi yang mengganggu';

  @override
  String get guardSwitchHint => 'Selama sesi fokus dan jam Penjaga Waktu Anda';

  @override
  String get guardNeedsAccess => 'Perlu sakelar aksesibilitas: ketuk untuk menyalakannya';

  @override
  String get guardDisclosureTitle => 'Cara kerja penjaga';

  @override
  String get guardDisclosureBody =>
      'Untuk menjeda aplikasi yang Anda pilih, Deep Focus memakai layanan aksesibilitas Android untuk melihat aplikasi mana yang terbuka. Dengan “Tutup Shorts dan Reels” aktif, penjaga juga memeriksa apakah pemutar video pendek ada di layar.\n\nPenjaga tidak membaca teks, tidak menyimpan apa pun yang dilihatnya, dan tidak mengirim apa pun: semuanya tetap di ponsel Anda. Anda bisa mematikannya kapan saja di setelan Aksesibilitas.';

  @override
  String get guardAgree => 'Setuju dan buka setelan';

  @override
  String get guardModeGentle => 'Lembut';

  @override
  String get guardModeStrict => 'Ketat';

  @override
  String get guardGentleHint => 'Jeda napas 5 detik, lalu Anda yang memilih';

  @override
  String get guardStrictHint => 'Aplikasi pilihan tetap tertutup sampai waktu fokus berakhir';

  @override
  String get guardApps => 'Aplikasi yang dijeda';

  @override
  String get guardAppsAllowed => 'Aplikasi yang diizinkan';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikasi',
      zero: 'Belum ada yang dipilih',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Izinkan hanya aplikasi pilihan';

  @override
  String get guardAllowlistHint =>
      'Semua aplikasi lain dijeda; panggilan, setelan, dan keyboard selalu berfungsi';

  @override
  String get guardShorts => 'Tutup Shorts dan Reels';

  @override
  String get guardShortsHint =>
      'Kapan pun penjaga aktif. Upaya terbaik: aplikasi ini sering berubah';

  @override
  String get guardSchedule => 'Penjaga Waktu';

  @override
  String get guardScheduleHint =>
      'Juga jaga pada hari dan jam tertentu, seperti sekolah atau kerja';

  @override
  String get guardFrom => 'Dari';

  @override
  String get guardTo => 'Sampai';

  @override
  String get guardSearchApps => 'Cari aplikasi';

  @override
  String get guardNoApps => 'Aplikasi tidak ditemukan';

  @override
  String get guardPrivacy =>
      'Hanya bekerja di ponsel Anda: penjaga melihat aplikasi mana yang terbuka, tidak pernah isinya, dan tidak mengirim apa pun.';

  @override
  String get guardBreathe => 'Tarik napas… lalu embuskan';

  @override
  String get guardQuestion => 'Apakah Anda perlu aplikasi ini sekarang?';

  @override
  String get guardBackToFocus => 'Kembali fokus';

  @override
  String get guardOpenFive => 'Buka selama 5 menit';

  @override
  String get guardStrictBody => 'Aplikasi ini dijeda sampai waktu fokus Anda berakhir.';

  @override
  String get guardShortsClosed => 'Video pendek ditutup selama penjaga aktif';

  @override
  String get faqGuardQ => 'Bagaimana menghentikan aplikasi yang mengganggu saat saya fokus?';

  @override
  String get faqGuardA =>
      'Buka Fokus → setelan timer → Penjaga gangguan. Pilih aplikasinya, lalu Lembut (napas 5 detik dan pertanyaan “Apakah Anda perlu aplikasi ini sekarang?”) atau Ketat (aplikasi tetap tertutup). Penjaga bekerja selama sesi fokus dan, dengan Penjaga Waktu, pada hari dan jam yang Anda atur. “Izinkan hanya aplikasi pilihan” menjeda semua yang lain; panggilan, setelan, dan keyboard selalu berfungsi. Android meminta Anda sekali untuk menyalakan penjaga di setelan Aksesibilitas. Penjaga hanya melihat aplikasi yang terbuka dan tidak mengirim apa pun.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Dipindahkan ke $name';
  }

  @override
  String get notesDragHint => 'Tahan catatan dan seret ke buku catatan';

  @override
  String get guardReviewCards => 'Ulas kartu saja';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartu menunggu Anda',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Darurat: tahan 10 detik';

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
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Ganti nama kata';

  @override
  String get wordsSubtitle => 'Gunakan kata Anda sendiri untuk teks apa pun di aplikasi';

  @override
  String get wordsHint =>
      'Ketuk teks untuk mengubahnya. Kata Anda hanya berlaku untuk bahasa ini dan ikut tersimpan di cadangan.';

  @override
  String get wordsSearch => 'Cari teks';

  @override
  String get wordsChangedOnly => 'Hanya yang diubah';

  @override
  String wordsOriginal(String text) {
    return 'Asli: $text';
  }

  @override
  String get wordsReset => 'Pakai yang asli';

  @override
  String get wordsResetAll => 'Atur ulang semua kata';

  @override
  String get wordsResetAllConfirm => 'Semua teks dalam bahasa ini kembali ke aslinya.';

  @override
  String get wordsNone => 'Teks tidak ditemukan';
}
