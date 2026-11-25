// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Ana sayfa';

  @override
  String get navTasks => 'Görevler';

  @override
  String get navFocus => 'Odak';

  @override
  String get navCalendar => 'Takvim';

  @override
  String get navSpaces => 'Alanlar';

  @override
  String get moduleProjects => 'Projeler';

  @override
  String get moduleNotes => 'Notlar';

  @override
  String get moduleFlashcards => 'Kartlar';

  @override
  String get moduleGoals => 'Hedefler';

  @override
  String get moduleHabits => 'Alışkanlıklar';

  @override
  String get moduleAnalytics => 'Analizler';

  @override
  String get moduleSearch => 'Ara';

  @override
  String get moduleAssistant => 'Asistan';

  @override
  String get moduleSettings => 'Ayarlar';

  @override
  String get moduleTrash => 'Çöp kutusu';

  @override
  String get actionSave => 'Kaydet';

  @override
  String get actionCancel => 'İptal';

  @override
  String get actionDelete => 'Sil';

  @override
  String get actionEdit => 'Düzenle';

  @override
  String get actionDone => 'Bitti';

  @override
  String get actionAdd => 'Ekle';

  @override
  String get actionCreate => 'Oluştur';

  @override
  String get actionClose => 'Kapat';

  @override
  String get actionBack => 'Geri';

  @override
  String get actionUndo => 'Geri al';

  @override
  String get actionRestore => 'Geri yükle';

  @override
  String get actionRetry => 'Tekrar dene';

  @override
  String get actionContinue => 'Devam';

  @override
  String get actionSkip => 'Atla';

  @override
  String get actionArchive => 'Arşivle';

  @override
  String get actionUnarchive => 'Arşivden çıkar';

  @override
  String get actionPin => 'Sabitle';

  @override
  String get actionUnpin => 'Sabitlemeyi kaldır';

  @override
  String get actionMore => 'Diğer seçenekler';

  @override
  String get actionClear => 'Temizle';

  @override
  String get actionSearch => 'Ara';

  @override
  String get actionSort => 'Sırala';

  @override
  String get actionShare => 'Paylaş';

  @override
  String get actionImport => 'İçe aktar';

  @override
  String get actionExport => 'Dışa aktar';

  @override
  String get actionPause => 'Duraklat';

  @override
  String get actionResume => 'Sürdür';

  @override
  String get actionStart => 'Başlat';

  @override
  String get actionStop => 'Durdur';

  @override
  String get actionComplete => 'Tamamla';

  @override
  String get actionDeleteForever => 'Kalıcı olarak sil';

  @override
  String get actionEmptyTrash => 'Çöp kutusunu boşalt';

  @override
  String get actionUnlink => 'Bağlantıyı kaldır';

  @override
  String get actionCustomize => 'Özelleştir';

  @override
  String get actionPreview => 'Önizleme';

  @override
  String get actionLog => 'İlerleme kaydet';

  @override
  String get stateLoading => 'Yükleniyor…';

  @override
  String get stateSaving => 'Kaydediliyor…';

  @override
  String get stateSaved => 'Kaydedildi';

  @override
  String get stateUnsaved => 'Kaydedilmemiş değişiklikler';

  @override
  String get errorGenericTitle => 'Bir şeyler ters gitti';

  @override
  String get errorGenericMessage => 'Verilerin güvende. Lütfen tekrar dene.';

  @override
  String get errorLoadFailed => 'Bu içerik yüklenemedi.';

  @override
  String get errorSaveFailed => 'Kaydedilemedi. Değişikliklerin hâlâ burada.';

  @override
  String get validationRequired => 'Bu alan zorunlu';

  @override
  String get validationTitleRequired => 'Lütfen bir başlık gir';

  @override
  String get validationNameRequired => 'Lütfen bir ad gir';

  @override
  String get validationTooLong => 'Bu çok uzun';

  @override
  String get validationEndBeforeStart => 'Bitiş, başlangıçtan sonra olmalı';

  @override
  String get validationStartAfterDue => 'Başlangıç tarihi bitiş tarihinden önce olmalı';

  @override
  String get validationPositiveNumber => 'Sıfırdan büyük bir sayı gir';

  @override
  String get validationDependencyCycle => 'Bu döngüsel bir bağımlılık oluşturur';

  @override
  String get validationInvalidRepeat => 'Bu tekrar kuralı geçerli değil';

  @override
  String get deletedItem => 'Çöp kutusuna taşındı';

  @override
  String get untitled => 'Başlıksız';

  @override
  String get noProject => 'Proje yok';

  @override
  String get greetingMorning => 'Günaydın';

  @override
  String get greetingAfternoon => 'İyi günler';

  @override
  String get greetingEvening => 'İyi akşamlar';

  @override
  String get dashFocusToday => 'Bugünün odağı';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Odaklanmaya başla';

  @override
  String get dashFocusRunning => 'Oturum sürüyor';

  @override
  String get dashTodayTasks => 'Bugün bitecekler';

  @override
  String get dashAgenda => 'Ajanda';

  @override
  String get dashHabits => 'Bugünkü alışkanlıklar';

  @override
  String get dashGoals => 'Hedefler';

  @override
  String get dashReview => 'Tekrar';

  @override
  String get dashRecentNotes => 'Son notlar';

  @override
  String get dashInsight => 'Öneri';

  @override
  String get dashSeeAll => 'Tümünü gör';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart tekrar bekliyor',
      one: '1 kart tekrar bekliyor',
      zero: 'Tekrar edilecek kart yok',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Şimdi tekrar et';

  @override
  String get dashCustomizeTitle => 'Ana sayfa bölümleri';

  @override
  String get dashCustomizeHint => 'Ana sayfanda neyin görüneceğini seç.';

  @override
  String get dashSectionFocus => 'Odak';

  @override
  String get dashSectionToday => 'Bugün bitecek görevler';

  @override
  String get dashSectionAgenda => 'Ajanda';

  @override
  String get dashSectionHabits => 'Alışkanlıklar';

  @override
  String get dashSectionGoals => 'Hedefler';

  @override
  String get dashSectionReview => 'Kart tekrarı';

  @override
  String get dashSectionNotes => 'Son notlar';

  @override
  String get dashSectionInsight => 'Öneriler';

  @override
  String get quickAddTask => 'Yeni görev';

  @override
  String get quickAddNote => 'Yeni not';

  @override
  String get quickAddEvent => 'Yeni etkinlik';

  @override
  String get quickStartFocus => 'Odak';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Gecikmiş $count görevin var. En önemlisinden başla.',
      one: 'Gecikmiş 1 görevin var. Önce yeniden planla ya da bitir.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Günlük odak hedefine $minutes dakika kaldı.';
  }

  @override
  String get insightCardsDue => 'Tekrar zamanı gelen kartlarını taze yeyken şimdi çalış.';

  @override
  String get insightAllClear => 'Her şey yolunda. Yarını planla ya da bilinçli bir mola ver.';

  @override
  String insightHabitStreak(String habit) {
    return 'Serini koru: $habit bugün hâlâ açık.';
  }

  @override
  String get focusTitle => 'Odak';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Zamanlayıcı';

  @override
  String get focusModeCountUp => 'Kronometre';

  @override
  String get focusModeOpen => 'Serbest';

  @override
  String get focusPhaseWork => 'Odak';

  @override
  String get focusPhaseShortBreak => 'Kısa mola';

  @override
  String get focusPhaseLongBreak => 'Uzun mola';

  @override
  String get focusReady => 'Sen hazır olduğunda';

  @override
  String get focusPaused => 'Duraklatıldı';

  @override
  String get focusRunning => 'Odakta';

  @override
  String get focusDuration => 'Süre';

  @override
  String get focusLinkTask => 'Görev bağla';

  @override
  String get focusLinkedTask => 'Üzerinde çalışılan';

  @override
  String get focusNoTask => 'Bağlı görev yok';

  @override
  String focusCycle(int current, int total) {
    return 'Döngü $current / $total';
  }

  @override
  String get focusSkipBreak => 'Molayı atla';

  @override
  String get focusStartBreak => 'Molayı başlat';

  @override
  String get focusStartNext => 'Sonraki odağı başlat';

  @override
  String get focusSessionComplete => 'Oturum tamamlandı';

  @override
  String get focusSessionStopped => 'Oturum kaydedildi';

  @override
  String focusSessionSummary(String duration) {
    return '$duration boyunca odaklandın.';
  }

  @override
  String get focusAddNote => 'Bu oturum hakkında not ekle';

  @override
  String get focusHistory => 'Geçmiş';

  @override
  String get focusNoHistory => 'Tamamlanan oturumlar burada görünür';

  @override
  String get focusTargets => 'Hedefler';

  @override
  String get focusDailyTarget => 'Günlük hedef';

  @override
  String get focusWeeklyTarget => 'Haftalık hedef';

  @override
  String get focusOutcomeCompleted => 'Tamamlandı';

  @override
  String get focusOutcomeInterrupted => 'Erken durduruldu';

  @override
  String get focusRecovered => 'Uygulama kapalıyken oturumun devam etti.';

  @override
  String get focusCompletedWhileAway => 'Uygulama kapalıyken bir oturum bitti ve kaydedildi.';

  @override
  String get focusNotificationsOff => 'Bildirimler kapalı. Oturum bittiğinde uyarı almayacaksın.';

  @override
  String get focusBatteryHint =>
      'Bazı cihazlar arka plandaki uygulamaları duraklatır. Zamanlayıcı doğru kalır ama uyarılar gecikebilir. Güvenilir uyarılar için sınırsız pil kullanımına izin ver.';

  @override
  String get focusOpenSettings => 'Ayarları aç';

  @override
  String get focusStopConfirmTitle => 'Bu oturum durdurulsun mu?';

  @override
  String get focusStopConfirmMessage => 'Şimdiye kadarki odak süren kaydedilecek.';

  @override
  String get focusDiscard => 'Vazgeç';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes dakika',
      one: '1 dakika',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time kaldı';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time geçti';
  }

  @override
  String get focusDeleteSession => 'Oturumu sil';

  @override
  String get tasksTitle => 'Görevler';

  @override
  String get tasksViewToday => 'Bugün';

  @override
  String get tasksViewUpcoming => 'Yaklaşan';

  @override
  String get tasksViewAll => 'Tümü';

  @override
  String get tasksViewOverdue => 'Gecikmiş';

  @override
  String get tasksViewCompleted => 'Tamamlanan';

  @override
  String get tasksQuickAddHint => 'Görev ekle…';

  @override
  String get tasksEmptyTitle => 'Her şey tamam';

  @override
  String get tasksEmptyMessage => 'Gününü şekillendirmek için bir görev ekle.';

  @override
  String get tasksEmptyCompleted => 'Tamamlanan görevler burada görünür.';

  @override
  String get taskNew => 'Yeni görev';

  @override
  String get taskEdit => 'Görevi düzenle';

  @override
  String get taskTitleLabel => 'Başlık';

  @override
  String get taskTitleHint => 'Ne yapılması gerekiyor?';

  @override
  String get taskDescriptionLabel => 'Açıklama';

  @override
  String get taskNotesLabel => 'Notlar';

  @override
  String get taskPriority => 'Öncelik';

  @override
  String get priorityNone => 'Yok';

  @override
  String get priorityLow => 'Düşük';

  @override
  String get priorityMedium => 'Orta';

  @override
  String get priorityHigh => 'Yüksek';

  @override
  String get priorityUrgent => 'Acil';

  @override
  String get taskDueDate => 'Bitiş tarihi';

  @override
  String get taskStartDate => 'Başlangıç tarihi';

  @override
  String get taskReminder => 'Hatırlatıcı';

  @override
  String get taskRepeat => 'Tekrarla';

  @override
  String get taskProject => 'Proje';

  @override
  String get taskCategory => 'Kategori';

  @override
  String get taskCategoryHint => 'ör. İş, Ev, Ders';

  @override
  String get taskEstimateMinutes => 'Tahmin (dakika)';

  @override
  String get taskTracked => 'Kaydedilen odak';

  @override
  String get taskLabels => 'Etiketler';

  @override
  String get taskAddLabel => 'Yeni etiket';

  @override
  String get taskChecklist => 'Kontrol listesi';

  @override
  String get taskAddChecklistItem => 'Öğe ekle';

  @override
  String get taskSubtasks => 'Alt görevler';

  @override
  String get taskAddSubtask => 'Alt görev ekle';

  @override
  String get taskDependencies => 'Engelleyen';

  @override
  String get taskAddDependency => 'Engelleyen görev ekle';

  @override
  String get taskLinkedNotes => 'Bağlı notlar';

  @override
  String get taskSetTime => 'Saat ayarla';

  @override
  String get taskNoDate => 'Tarih yok';

  @override
  String get taskCompleted => 'Görev tamamlandı';

  @override
  String get taskNextOccurrence => 'Sonraki tekrar oluşturuldu';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days gün gecikti',
      one: '1 gün gecikti',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '\"$title\" görevini tamamlandı işaretle';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '\"$title\" görevini tamamlanmadı işaretle';
  }

  @override
  String get sortSmart => 'Akıllı';

  @override
  String get sortDueDate => 'Bitiş tarihi';

  @override
  String get sortPriority => 'Öncelik';

  @override
  String get sortCreated => 'En yeni';

  @override
  String get sortTitle => 'Başlık';

  @override
  String get filterAllProjects => 'Tüm projeler';

  @override
  String get filterAnyPriority => 'Her öncelik';

  @override
  String get filterTitle => 'Filtrele ve sırala';

  @override
  String get dateToday => 'Bugün';

  @override
  String get dateTomorrow => 'Yarın';

  @override
  String get dateYesterday => 'Dün';

  @override
  String get repeatNever => 'Tekrarlanmaz';

  @override
  String get repeatDaily => 'Her gün';

  @override
  String get repeatWeekdays => 'Her hafta içi';

  @override
  String get repeatWeekly => 'Her hafta';

  @override
  String get repeatMonthly => 'Her ay';

  @override
  String get repeatYearly => 'Her yıl';

  @override
  String get repeatCustom => 'Özel';

  @override
  String get repeatEvery => 'Tekrar aralığı';

  @override
  String get repeatOnDays => 'Günler';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'gün', one: 'gün');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'hafta', one: 'hafta');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ay', one: 'ay');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'yıl', one: 'yıl');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kez',
      one: '1 kez',
    );
    return '$_temp0 sonra biter';
  }

  @override
  String get repeatEndsNever => 'Hiç bitmez';

  @override
  String get reminderAtTime => 'Etkinlik saatinde';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes dakika önce',
      one: '1 dakika önce',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours saat önce',
      one: '1 saat önce',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 gün önce';

  @override
  String get projectsTitle => 'Projeler';

  @override
  String get projectsEmptyTitle => 'Henüz proje yok';

  @override
  String get projectsEmptyMessage => 'İlgili görevleri, notları ve odak süresini bir araya getir.';

  @override
  String get projectNew => 'Yeni proje';

  @override
  String get projectEdit => 'Projeyi düzenle';

  @override
  String get projectName => 'Ad';

  @override
  String get projectDescription => 'Açıklama';

  @override
  String get projectGoal => 'Amaç';

  @override
  String get projectDeadline => 'Son tarih';

  @override
  String get projectColor => 'Renk';

  @override
  String get projectIcon => 'Simge';

  @override
  String get projectProgress => 'İlerleme';

  @override
  String projectTasksDone(int done, int total) {
    return '$total görevden $done tanesi bitti';
  }

  @override
  String get projectFocusTime => 'Odak süresi';

  @override
  String get projectArchived => 'Arşivlenen projeler';

  @override
  String get projectShowArchived => 'Arşivlenenleri göster';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days gün kaldı',
      one: '1 gün kaldı',
      zero: 'Bugün bitiyor',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Son tarih geçti';

  @override
  String get calendarTitle => 'Takvim';

  @override
  String get calendarMonth => 'Ay';

  @override
  String get calendarWeek => 'Hafta';

  @override
  String get calendarDay => 'Gün';

  @override
  String get calendarToday => 'Bugün';

  @override
  String get calendarPrevious => 'Önceki';

  @override
  String get calendarNext => 'Sonraki';

  @override
  String get calendarNoEvents => 'Planlanmış bir şey yok';

  @override
  String get calendarAllDay => 'Tüm gün';

  @override
  String get eventNew => 'Yeni etkinlik';

  @override
  String get eventEdit => 'Etkinliği düzenle';

  @override
  String get eventTitleHint => 'Etkinlik başlığı';

  @override
  String get eventStarts => 'Başlangıç';

  @override
  String get eventEnds => 'Bitiş';

  @override
  String get eventKind => 'Tür';

  @override
  String get eventKindEvent => 'Etkinlik';

  @override
  String get eventKindTimeBlock => 'Zaman bloğu';

  @override
  String get eventKindFocus => 'Odak oturumu';

  @override
  String get eventKindGoal => 'Kişisel hedef';

  @override
  String get eventDescription => 'Ayrıntılar';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count etkinlikle çakışıyor',
      one: '1 etkinlikle çakışıyor',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Bu günde planlama çakışmaları var';

  @override
  String get calendarTaskDue => 'Biten görev';

  @override
  String get calendarDragHint => 'Bir etkinliği taşımak için basılı tutup sürükle';

  @override
  String get calendarRescheduled => 'Etkinlik taşındı';

  @override
  String get calendarScheduleTask => 'Zaman bloğu olarak planla';

  @override
  String get notesTitle => 'Notlar';

  @override
  String get notesViewAll => 'Tümü';

  @override
  String get notesViewPinned => 'Sabitlenen';

  @override
  String get notesViewFavorites => 'Favoriler';

  @override
  String get notesViewArchived => 'Arşivlenen';

  @override
  String get notesTags => 'Etiketler';

  @override
  String get notesNewNotebook => 'Yeni defter';

  @override
  String get notesNoNotebook => 'Defter yok';

  @override
  String get notesEmptyTitle => 'Boş bir sayfa';

  @override
  String get notesEmptyMessage => 'Fikirleri, toplantı notlarını ve bilgileri kaydet.';

  @override
  String get noteTitleHint => 'Başlık';

  @override
  String get noteBodyHint =>
      'Yazmaya başla… Etiketler için #, notları bağlamak için [[Başlık]] kullan.';

  @override
  String get noteFavorite => 'Favori';

  @override
  String get noteUnfavorite => 'Favorilerden çıkar';

  @override
  String get noteMoveTo => 'Deftere taşı';

  @override
  String get noteBacklinks => 'Bağlantı veren';

  @override
  String get noteLinkedTasks => 'Bağlı görevler';

  @override
  String get noteLinkTask => 'Görev bağla';

  @override
  String get noteLinkProject => 'Proje';

  @override
  String get noteFormatHeading => 'Başlık';

  @override
  String get noteFormatBold => 'Kalın';

  @override
  String get noteFormatItalic => 'İtalik';

  @override
  String get noteFormatList => 'Madde listesi';

  @override
  String get noteFormatChecklist => 'Kontrol listesi';

  @override
  String get noteFormatLink => 'Bağlantı';

  @override
  String noteEdited(String time) {
    return '$time düzenlendi';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kelime',
      one: '1 kelime',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kartlar';

  @override
  String get flashEmptyTitle => 'İlk desteni oluştur';

  @override
  String get flashEmptyMessage => 'Aralıklı tekrar, her kartı tam unutmak üzereyken gösterir.';

  @override
  String get deckNew => 'Yeni deste';

  @override
  String get deckEdit => 'Desteyi düzenle';

  @override
  String get deckName => 'Deste adı';

  @override
  String get deckDescription => 'Açıklama';

  @override
  String get deckDailyNew => 'Günlük yeni kart';

  @override
  String get deckDailyReview => 'Günlük tekrar hedefi';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart',
      one: '1 kart',
      zero: 'Kart yok',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Bekleyen';

  @override
  String get deckNewCards => 'Yeni';

  @override
  String get deckMature => 'Oturmuş';

  @override
  String get deckStudy => 'Çalış';

  @override
  String get deckNothingDue => 'Şu an bekleyen kart yok. Sonra tekrar gel.';

  @override
  String get deckEmptyCards => 'Öğrenmeye başlamak için kart ekle.';

  @override
  String get cardNew => 'Yeni kart';

  @override
  String get cardEdit => 'Kartı düzenle';

  @override
  String get cardFront => 'Ön yüz';

  @override
  String get cardBack => 'Arka yüz';

  @override
  String get cardFrontHint => 'Soru veya terim';

  @override
  String get cardBackHint => 'Cevap veya tanım';

  @override
  String get cardTags => 'Etiketler';

  @override
  String get cardAddAnother => 'Kaydet ve yenisini ekle';

  @override
  String get reviewShowAnswer => 'Cevabı göster';

  @override
  String get reviewAgain => 'Tekrar';

  @override
  String get reviewHard => 'Zor';

  @override
  String get reviewGood => 'İyi';

  @override
  String get reviewEasy => 'Kolay';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => 'Oturum tamamlandı';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart tekrar ettin.',
      one: '1 kart tekrar ettin.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Cevabı görmek için dokun';

  @override
  String get importCardsTitle => 'Kart içe aktar';

  @override
  String get importCardsHint =>
      'Her satıra bir kart yapıştır (ön ve arka yüz sekme veya noktalı virgülle ayrılır) ya da bir dosya seç: Excel (.xlsx), CSV, Anki destesi (.apkg) veya dışa aktarılmış bir deste.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart aktarıldı',
      one: '1 kart aktarıldı',
      zero: 'Hiç kart aktarılmadı',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Bu içerik içe aktarılamadı.';

  @override
  String get exportCopied => 'Deste dışa aktarıldı';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dk',
      one: '1 dk',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
      one: '1 gün',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Hedefler';

  @override
  String get goalsEmptyTitle => 'Bir şeyi hedefle';

  @override
  String get goalsEmptyMessage =>
      'Günlük, haftalık, aylık ya da uzun vadeli hedefler koy ve gerçek ilerlemeni takip et.';

  @override
  String get goalNew => 'Yeni hedef';

  @override
  String get goalEdit => 'Hedefi düzenle';

  @override
  String get goalTitleHint => 'Neyi başarmak istiyorsun?';

  @override
  String get goalPeriod => 'Dönem';

  @override
  String get goalPeriodDaily => 'Günlük';

  @override
  String get goalPeriodWeekly => 'Haftalık';

  @override
  String get goalPeriodMonthly => 'Aylık';

  @override
  String get goalPeriodLongTerm => 'Uzun vadeli';

  @override
  String get goalTarget => 'Hedef değer';

  @override
  String get goalUnit => 'Birim';

  @override
  String get goalUnitHint => 'ör. sayfa, km, saat';

  @override
  String get goalStatusActive => 'Etkin';

  @override
  String get goalStatusPaused => 'Duraklatıldı';

  @override
  String get goalStatusAchieved => 'Başarıldı';

  @override
  String get goalPause => 'Hedefi duraklat';

  @override
  String get goalResume => 'Hedefi sürdür';

  @override
  String get goalMarkAchieved => 'Başarıldı olarak işaretle';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => 'Miktar';

  @override
  String get goalLogNote => 'Not (isteğe bağlı)';

  @override
  String get goalHistory => 'Geçmiş';

  @override
  String get goalNoHistory => 'Kaydedilen ilerleme burada görünür';

  @override
  String get goalLinkedTasks => 'Bağlı görevler';

  @override
  String get goalLinkedTasksHint => 'Tamamlanan her bağlı görev bu hedefe 1 sayılır.';

  @override
  String get goalThisPeriod => 'Bu dönem';

  @override
  String get habitsTitle => 'Alışkanlıklar';

  @override
  String get habitsEmptyTitle => 'Her gün küçük adımlar';

  @override
  String get habitsEmptyMessage => 'Bir alışkanlık oluştur ve yaptığında işaretle.';

  @override
  String get habitNew => 'Yeni alışkanlık';

  @override
  String get habitEdit => 'Alışkanlığı düzenle';

  @override
  String get habitNameHint => 'ör. 20 sayfa oku';

  @override
  String get habitDays => 'Program';

  @override
  String get habitEveryDay => 'Her gün';

  @override
  String get habitTargetPerDay => 'Günde kaç kez';

  @override
  String get habitReminder => 'Günlük hatırlatıcı';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count günlük seri',
      one: '1 günlük seri',
      zero: 'Seri yok',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'En iyi seri';

  @override
  String get habitCurrentStreak => 'Mevcut seri';

  @override
  String get habitConsistency => 'İstikrar';

  @override
  String get habitLast90 => 'Son 90 gün';

  @override
  String get habitPaused => 'Duraklatıldı';

  @override
  String get habitPause => 'Alışkanlığı duraklat';

  @override
  String get habitResume => 'Alışkanlığı sürdür';

  @override
  String get habitDoneToday => 'Bugün yapıldı';

  @override
  String habitCountToday(int count, int target) {
    return 'Bugün $count / $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '\"$name\" işaretle';
  }

  @override
  String get habitNotScheduledToday => 'Bugün planlı değil';

  @override
  String get analyticsTitle => 'Analizler';

  @override
  String get rangeWeek => '7 gün';

  @override
  String get rangeMonth => '30 gün';

  @override
  String get rangeQuarter => '90 gün';

  @override
  String get statFocusTime => 'Odak süresi';

  @override
  String get statSessions => 'Oturumlar';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed tamamlandı · $interrupted erken durduruldu';
  }

  @override
  String get statTasksDone => 'Tamamlanan görevler';

  @override
  String get statCompletionRate => 'Zamanında tamamlama';

  @override
  String get statHabitConsistency => 'Alışkanlık istikrarı';

  @override
  String get statRetention => 'Kart hatırlama';

  @override
  String get statReviews => 'Tekrarlar';

  @override
  String get statActiveGoals => 'Etkin hedefler';

  @override
  String get statEstimated => 'Tahmini tamamlanan iş';

  @override
  String get statEstimatedNote => 'Ölçülen süreye değil, tahminlerine dayanır';

  @override
  String get statMeasuredNote => 'Odak oturumlarından ölçüldü';

  @override
  String get chartFocusByDay => 'Günlük odak dakikası';

  @override
  String get chartTasksByDay => 'Günlük tamamlanan görev';

  @override
  String get chartTimeByProject => 'Projeye göre süre';

  @override
  String get chartProjectProgress => 'Proje ilerlemesi';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: toplam $total, en iyi gün $best';
  }

  @override
  String get analyticsNoData => 'Henüz yeterli veri yok';

  @override
  String get analyticsUnassigned => 'Atanmamış';

  @override
  String get searchHint => 'Her şeyde ara…';

  @override
  String get searchRecent => 'Son aramalar';

  @override
  String get searchClearRecent => 'Son aramaları temizle';

  @override
  String searchNoResults(String query) {
    return '\"$query\" için sonuç yok';
  }

  @override
  String get searchStartTyping =>
      'Görevler, notlar, kartlar, hedefler, etkinlikler ve daha fazlasında ara. Arama bu cihazda kalır.';

  @override
  String get searchCatTask => 'Görevler';

  @override
  String get searchCatProject => 'Projeler';

  @override
  String get searchCatNote => 'Notlar';

  @override
  String get searchCatFlashcard => 'Kartlar';

  @override
  String get searchCatDeck => 'Desteler';

  @override
  String get searchCatGoal => 'Hedefler';

  @override
  String get searchCatHabit => 'Alışkanlıklar';

  @override
  String get searchCatEvent => 'Etkinlikler';

  @override
  String get searchCatSession => 'Oturumlar';

  @override
  String get searchAll => 'Tümü';

  @override
  String get assistantTitle => 'Asistan';

  @override
  String get assistantIntro =>
      'Cihazında çalışan planlama yardımı. İstersen özetler ve üretim için seçtiğin bir yapay zekâ sağlayıcısı bağlayabilirsin.';

  @override
  String get assistantOnDevice => 'Cihazda';

  @override
  String get assistantCloud => 'Yapay zekâ sağlayıcısı';

  @override
  String get assistantPlanDay => 'Günümü planla';

  @override
  String get assistantPlanDayDesc =>
      'Açık görevleri aciliyet, öncelik ve tahmine göre sıralar ve etkinliklerinin arasına yerleştirir.';

  @override
  String get assistantExtractTasks => 'Nottan görev çıkar';

  @override
  String get assistantExtractTasksDesc =>
      'Bir nottaki kontrol listesi öğelerini ve eylem satırlarını bulup göreve dönüştürür.';

  @override
  String get assistantMakeCards => 'Nottan kart oluştur';

  @override
  String get assistantMakeCardsDesc =>
      '\"terim: tanım\" ve soru/cevap satırlarını karta dönüştürür.';

  @override
  String get assistantSummarize => 'Notu özetle';

  @override
  String get assistantSummarizeDesc =>
      'Yapay zekâ sağlayıcısı gerekir. Not yalnızca onay verdikten sonra gönderilir.';

  @override
  String get assistantWorkload => 'İş yükü özeti';

  @override
  String get assistantWorkloadDesc => 'Tahmini işi bu haftaki boş zamanınla karşılaştırır.';

  @override
  String get assistantPlanEmpty => 'Planlanacak açık görev yok. Rahatlığın tadını çıkar.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Bugün boş odak süresi: $time';
  }

  @override
  String get assistantPlanOverflow => 'Bunlar bugüne sığmayabilir:';

  @override
  String get assistantChooseNote => 'Bir not seç';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count görev bulundu',
      one: '1 görev bulundu',
      zero: 'Bu notta görev bulunamadı',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart bulundu',
      one: '1 kart bulundu',
      zero: 'Bu notta kart bulunamadı',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Bir deste seç';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Tahmini iş: $estimated. Boş zaman: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Zamanından fazlasını planladın. Düşük öncelikli görevleri ertelemeyi düşün.';

  @override
  String get assistantWorkloadOk => 'Planın mevcut zamanına sığıyor.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count açık görevin tahmini yok.',
      one: '1 açık görevin tahmini yok.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Yapay zekâ sağlayıcısı';

  @override
  String get assistantProviderOff => 'Bağlı sağlayıcı yok. Cihazdaki araçlar yine çalışır.';

  @override
  String assistantProviderOn(String host) {
    return '$host ile bağlı';
  }

  @override
  String get assistantEndpoint => 'API uç noktası (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'API anahtarı';

  @override
  String get assistantApiKeyStored => 'Bu cihazda güvenle saklanır';

  @override
  String get assistantHttpsOnly => 'Yalnızca HTTPS uç noktalarına izin verilir';

  @override
  String get assistantConsentTitle => 'Bu içerik yapay zekâ sağlayıcına gönderilsin mi?';

  @override
  String assistantConsentBody(String host) {
    return 'Seçilen not metni bu cihazdan çıkar ve $host tarafından işlenir. Başka hiçbir şey gönderilmez.';
  }

  @override
  String get assistantConsentAlways => 'Bu sağlayıcı için bir daha sorma';

  @override
  String get assistantSend => 'Gönder';

  @override
  String get assistantUnavailable => 'Yapay zekâ sağlayıcısına ulaşılamadı. Sonra tekrar dene.';

  @override
  String get assistantDisabledTitle => 'Asistan kapalı';

  @override
  String get assistantDisabledMessage =>
      'Planlama araçlarını kullanmak için aç. Bir sağlayıcı bağlayıp her isteği onaylamadıkça hiçbir veri cihazından çıkmaz.';

  @override
  String get assistantSummaryTitle => 'Özet';

  @override
  String get assistantRemoveProvider => 'Sağlayıcıyı kaldır';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get settingsGeneral => 'Genel';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get settingsLanguageSystem => 'Cihaz dili';

  @override
  String get settingsAppearance => 'Görünüm';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Açık';

  @override
  String get themeDark => 'Koyu';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get settingsReduceMotion => 'Hareketi azalt';

  @override
  String get settingsReduceMotionDesc => 'Animasyonları ve hareketli arka planları en aza indir';

  @override
  String get settingsFocus => 'Odak zamanlayıcısı';

  @override
  String get settingsWorkLength => 'Odak süresi';

  @override
  String get settingsShortBreak => 'Kısa mola';

  @override
  String get settingsLongBreak => 'Uzun mola';

  @override
  String get settingsLongBreakEvery => 'Uzun mola şundan sonra';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oturum',
      one: '1 oturum',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Molaları otomatik başlat';

  @override
  String get settingsSound => 'Bitiş sesi';

  @override
  String get settingsDailyFocusTarget => 'Günlük odak hedefi';

  @override
  String get settingsWeeklyFocusTarget => 'Haftalık odak hedefi';

  @override
  String get settingsNotifications => 'Bildirimler';

  @override
  String get settingsNotificationsEnable => 'Hatırlatıcılara izin ver';

  @override
  String get settingsQuietHours => 'Sessiz saatler';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Alışkanlık, hedef ve tekrar hatırlatıcıları $start ile $end arasında sessizdir';
  }

  @override
  String get settingsReviewReminder => 'Kart tekrarı hatırlatıcısı';

  @override
  String get settingsPermissionDenied => 'Bildirimler sistem ayarlarında engellenmiş.';

  @override
  String get settingsPrivacy => 'Gizlilik ve veriler';

  @override
  String get settingsPrivacyStatement =>
      'Verilerin yalnızca bu cihazda, şifreli olarak saklanır. Hesap yok, analiz yok, takip yok.';

  @override
  String get settingsBackup => 'Şifreli yedek oluştur';

  @override
  String get settingsBackupDesc => 'Seçtiğin bir parolayla korunur';

  @override
  String get settingsRestore => 'Yedekten geri yükle';

  @override
  String get settingsRestoreDesc => 'Bu cihazdaki tüm verilerin yerini alır';

  @override
  String get settingsErase => 'Tüm verileri sil';

  @override
  String get settingsEraseDesc => 'Bu cihazdaki her şeyi kalıcı olarak sil';

  @override
  String get settingsEraseConfirmTitle => 'Tüm veriler silinsin mi?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Tüm görevler, notlar, kartlar, hedefler, alışkanlıklar, etkinlikler ve oturumlar kalıcı olarak silinecek. Onaylamak için $word yaz.';
  }

  @override
  String get settingsEraseWord => 'SİL';

  @override
  String get settingsErased => 'Tüm veriler silindi';

  @override
  String get backupPassword => 'Yedek parolası';

  @override
  String get backupPasswordConfirm => 'Parolayı onayla';

  @override
  String backupPasswordHint(int count) {
    return 'En az $count karakter. Kaybedilirse kurtarılamaz.';
  }

  @override
  String get backupPasswordMismatch => 'Parolalar eşleşmiyor';

  @override
  String get backupPasswordShort => 'Parola çok kısa';

  @override
  String get backupCreating => 'Yedek şifreleniyor…';

  @override
  String get backupCreated => 'Yedek kaydedilmeye hazır';

  @override
  String get backupRestoring => 'Doğrulanıyor ve geri yükleniyor…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count öğe geri yüklendi',
      one: '1 öğe geri yüklendi',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Parola yanlış ya da dosya değiştirilmiş.';

  @override
  String get backupNotABackup => 'Bu dosya bir Deep Focus yedeği değil.';

  @override
  String get backupCorrupted => 'Yedek dosyası bozuk.';

  @override
  String get backupNewer =>
      'Bu yedek uygulamanın daha yeni bir sürümüyle oluşturulmuş. Lütfen önce güncelle.';

  @override
  String get backupRestoreConfirmTitle => 'Tüm veriler değiştirilsin mi?';

  @override
  String get backupRestoreConfirmBody =>
      'Bu cihazdaki her şeyin yerini yedek alacak. Geri yükleme başarısız olursa hiçbir şey değişmez.';

  @override
  String get settingsAbout => 'Hakkında';

  @override
  String settingsVersion(String version) {
    return 'Sürüm $version';
  }

  @override
  String get settingsLicenses => 'Açık kaynak lisansları';

  @override
  String get settingsAssistant => 'Asistan';

  @override
  String get settingsAssistantEnable => 'Asistanı etkinleştir';

  @override
  String get settingsDashboard => 'Ana sayfa bölümleri';

  @override
  String get settingsTrash => 'Çöp kutusu';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes dk';
  }

  @override
  String get trashEmpty => 'Çöp kutusu boş';

  @override
  String get trashHint => 'Silinen öğeler sen kaldırana kadar burada kalır.';

  @override
  String get trashTasks => 'Görevler';

  @override
  String get trashNotes => 'Notlar';

  @override
  String get onboardWelcomeTitle => 'Yeni çalışma alanına hoş geldin';

  @override
  String get onboardWelcomeBody =>
      'Görevler, odak, takvim, notlar, kartlar, hedefler ve alışkanlıklar — bir arada ve son derece sade.';

  @override
  String get onboardPrivateTitle => 'Tasarımı gereği gizli';

  @override
  String get onboardPrivateBody =>
      'Her şey bu cihazda, şifreli olarak kalır. Hesap yok. Takip yok. Kontrol sende.';

  @override
  String get onboardLanguageTitle => 'Dilini seç';

  @override
  String get onboardNotifTitle => 'Nazik hatırlatıcılar';

  @override
  String get onboardNotifBody =>
      'Görev hatırlatıcıları ve odak uyarıları için bildirimlere izin ver. Bunu istediğin zaman değiştirebilirsin.';

  @override
  String get onboardGetStarted => 'Başla';

  @override
  String onboardStep(int current, int total) {
    return 'Adım $current / $total';
  }

  @override
  String get notifChannelReminders => 'Hatırlatıcılar';

  @override
  String get notifChannelRemindersDesc => 'Görev, etkinlik, alışkanlık ve hedef hatırlatıcıları';

  @override
  String get notifChannelFocus => 'Odak zamanlayıcısı';

  @override
  String get notifChannelFocusDesc => 'Bir odak oturumu ya da mola bittiğinde uyarılar';

  @override
  String get notifTaskTitle => 'Görev hatırlatıcısı';

  @override
  String get notifEventTitle => 'Yaklaşan etkinlik';

  @override
  String notifEventBody(String title, String time) {
    return '$title, saat $time';
  }

  @override
  String get notifFocusDoneTitle => 'Odak oturumu tamamlandı';

  @override
  String get notifFocusDoneBody => 'Harika iş. Mola zamanı.';

  @override
  String get notifBreakDoneTitle => 'Mola bitti';

  @override
  String get notifBreakDoneBody => 'Sonraki odak oturumuna hazır mısın?';

  @override
  String get notifHabitTitle => 'Alışkanlık hatırlatıcısı';

  @override
  String get notifReviewTitle => 'Kartların hazır';

  @override
  String get notifReviewBody => 'Kısa bir tekrar hafızanı güçlü tutar.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours sa $minutes dk';
  }

  @override
  String durationHours(int hours) {
    return '$hours sa';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes dk';
  }

  @override
  String percentValue(int value) {
    return '%$value';
  }

  @override
  String get weekdaysShort => 'P,S,Ç,P,C,C,P';

  @override
  String a11yProgress(int value) {
    return 'İlerleme yüzde $value';
  }

  @override
  String a11yPriority(String level) {
    return 'Öncelik: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Renk $index';
  }

  @override
  String get analyticsRangeLabel => 'Zaman aralığı';

  @override
  String get analyticsRefresh => 'Yenile';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Bitiş tarihi gelen $total görevden $done tanesi zamanında bitti';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total görevden $done tanesi bitti';
  }

  @override
  String get analyticsNoProjects => 'Etkin proje yok';

  @override
  String get analyticsNoFocus => 'Bu aralıkta odak oturumu yok';

  @override
  String get analyticsHabitsNone => 'Etkin alışkanlık yok';

  @override
  String get analyticsRetentionNote => 'Hatırladığın oturmuş kartların oranı';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Boş zaman iş günlerinde ($days) $start–$end arası sayılır, saatli etkinlikler düşülür. Tahmini iş, önümüzdeki 7 gün içinde bitmesi gereken açık görevlerin tahminlerinin toplamıdır.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Pazartesi–Cuma';

  @override
  String get assistantWorkdaysSunThu => 'Pazar–Perşembe';

  @override
  String get assistantWorkloadDayOff => 'İzin günü';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planlı · $free boş';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Şu andan $end saatine kadar, bugünkü etkinliklerin çevresinde planlandı. Önce gecikmiş görevler, sonra öncelik, bitiş tarihi ve tahmin.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Zaman blokları olarak planla';

  @override
  String get assistantScheduleConfirmTitle => 'Zaman blokları takvime eklensin mi?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bugünkü takvime $count zaman bloğu eklenecek.',
      one: 'Bugünkü takvime 1 zaman bloğu eklenecek.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zaman bloğu eklendi',
      one: '1 zaman bloğu eklendi',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Zaten takviminde';

  @override
  String get assistantPlanTimeline => 'Bugüne sığıyor';

  @override
  String get assistantNoEstimate => 'Planlamak için tahmin ekle';

  @override
  String get assistantNoNotes => 'Henüz not yok. Önce bir not yaz.';

  @override
  String get assistantNoteEmpty => 'Bu not boş.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count görev oluşturuldu',
      one: '1 görev oluşturuldu',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart oluşturuldu',
      one: '1 kart oluşturuldu',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tane oluştur',
      one: '1 tane oluştur',
      zero: 'Seçim yok',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Tanınanlar: işaretlenmemiş kutular \"- [ ]\" ve TODO: ya da To do: ile başlayan satırlar';

  @override
  String get assistantCardsHint =>
      'Tanınanlar: \"terim: tanım\", \"terim — tanım\" ve Q: ile A: satır çiftleri';

  @override
  String get assistantProviderHint =>
      'OpenAI uyumlu herhangi bir hizmeti kullan. Anahtar bu cihazın güvenli deposunda kalır ve yedeklere asla eklenmez.';

  @override
  String get assistantEndpointHelp => 'Örneğin https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Kayıtlı anahtarı korumak için boş bırak';

  @override
  String get assistantApiKeyRequired => 'Bir API anahtarı gir';

  @override
  String get assistantProviderSaved => 'Sağlayıcı kaydedildi';

  @override
  String get assistantProviderRemoved => 'Sağlayıcı kaldırıldı ve anahtar silindi';

  @override
  String get assistantRemoveProviderConfirm =>
      'Sağlayıcı kaldırılsın ve kayıtlı API anahtarı bu cihazdan silinsin mi?';

  @override
  String get assistantAskEveryTime => 'Her istekten önce sor';

  @override
  String get assistantSummarizing => 'Özetleniyor…';

  @override
  String assistantSummaryNote(String host) {
    return '$host tarafından oluşturuldu. Güvenmeden önce gözden geçir.';
  }

  @override
  String get assistantCopy => 'Kopyala';

  @override
  String get assistantCopied => 'Kopyalandı';

  @override
  String get assistantConfigure => 'Sağlayıcıyı ayarla';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Bu serideki tüm etkinlikler taşındı';

  @override
  String get calendarEventReminder => 'Hatırlatıcı';

  @override
  String get calendarEventRepeat => 'Tekrarla';

  @override
  String get calendarEventColor => 'Renk';

  @override
  String get calendarDefaultColor => 'Tür rengini kullan';

  @override
  String get calendarEventLinkedTask => 'Bağlı görev';

  @override
  String get calendarEventNoTask => 'Bağlı görev yok';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count etkinlik',
      one: '1 etkinlik',
      zero: 'Etkinlik yok',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count görevin son günü',
      one: '1 görevin son günü',
      zero: 'biten görev yok',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Bu günü planlamak için bir etkinlik ya da zaman bloğu ekle.';

  @override
  String get calendarNow => 'Şu anki saat';

  @override
  String get calendarRecurring => 'Tekrarlanır';

  @override
  String get calendarEventNotFound => 'Bu etkinlik artık yok';

  @override
  String get calendarEventLocalTime => 'Saatler cihazının saat diliminde gösterilir';

  @override
  String get calendarEventDeleted => 'Etkinlik çöp kutusuna taşındı';

  @override
  String get calendarConflictMarker => 'Başka bir etkinlikle çakışıyor';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Değişiklikler bu serideki her etkinliğe uygulanır';

  @override
  String get calendarDragHintSeries => 'Tekrarlanan bir etkinliği sürüklemek tüm seriyi taşır';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, görevin son günü';
  }

  @override
  String get startupErrorTitle => 'Verilerin açılamadı';

  @override
  String get startupErrorLocked =>
      'Bu cihazdaki verilerin şifreleme anahtarı kullanılamıyor. Hiçbir şey silinmedi. Cihazı yeniden başlatmak çoğu zaman işe yarar. Cihazı yakın zamanda geri yüklediysen verilerini şifreli bir yedekten geri yükle.';

  @override
  String get startupErrorCipher =>
      'Bu cihaz uygulamanın gerektirdiği şifreli depolamayı desteklemiyor. Şifresiz hiçbir şey kaydedilmedi.';

  @override
  String get startupErrorRetry => 'Tekrar dene';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart tekrar bekliyor',
      one: '1 kart tekrar bekliyor',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count bekliyor';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count yeni';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Oturmuş kartlar: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 veya daha fazlasını gir';

  @override
  String get flashcardsSearchCards => 'Kartlarda ara';

  @override
  String get flashcardsSearchEmpty => 'Aramana uyan kart yok';

  @override
  String get flashcardsCardAdded => 'Kart eklendi';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Tekrar: $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Panoya kopyala';

  @override
  String get flashcardsExportTitle => 'Desteyi dışa aktar';

  @override
  String get flashcardsDeleteDeck => 'Desteyi sil';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, sonraki tekrar $interval sonra';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Soru: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Cevap: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Soruyu göster';

  @override
  String get flashcardsImportField => 'İçe aktarılacak kartlar';

  @override
  String get flashcardsNothingToStudy => 'Çalışılacak bir şey yok';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart çalışmaya hazır',
      one: '1 kart çalışmaya hazır',
      zero: 'Hazır kart yok',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Değerlendirmeye göre';

  @override
  String get flashcardsDeckNotFound => 'Bu deste artık mevcut değil.';

  @override
  String get focusSessionDeleted => 'Oturum silindi';

  @override
  String get focusDeleteConfirm =>
      'Bu oturum geçmişten silinsin mi? Süresi artık hedeflerine sayılmayacak.';

  @override
  String get focusUnlinkTask => 'Bağlı görevi kaldır';

  @override
  String get focusNoteHint => 'Ne üzerinde çalıştın?';

  @override
  String get focusTargetCaption => 'Kaydedilen oturumlardan ölçüldü';

  @override
  String get focusModeLabel => 'Zamanlayıcı modu';

  @override
  String focusUpNext(String phase) {
    return 'Sıradaki: $phase';
  }

  @override
  String get focusStopwatchHint => 'Sen durdurana kadar ileri sayar.';

  @override
  String get focusOpenHint => 'Süre sınırı yok. İşin bitince durdur.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Hatırlatıcılar ayarlarda kapalı. Oturum bittiğinde uyarı almayacaksın.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Tümü';

  @override
  String get goalsFilterPeriod => 'Dönem filtresi';

  @override
  String get goalsFilterStatus => 'Durum filtresi';

  @override
  String get goalsEmptyFiltered => 'Bu filtreye uyan hedef yok';

  @override
  String goalsDueOn(String date) {
    return 'Son tarih $date';
  }

  @override
  String get goalsDeadline => 'Son tarih (isteğe bağlı)';

  @override
  String get goalsNoDeadline => 'Son tarih yok';

  @override
  String get goalsSetDeadline => 'Son tarih belirle';

  @override
  String get goalsRemoveDeadline => 'Son tarihi kaldır';

  @override
  String get goalsDescription => 'Açıklama (isteğe bağlı)';

  @override
  String get goalsTitleLabel => 'Başlık';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Hedefe ulaşıldı';

  @override
  String get goalsLogged => 'İlerleme kaydedildi';

  @override
  String get goalsEntryDeleted => 'Kayıt kaldırıldı';

  @override
  String get goalsDeleteEntry => 'Kaydı kaldır';

  @override
  String get goalsDeleted => 'Hedef silindi';

  @override
  String get goalsMarkActive => 'Etkin olarak işaretle';

  @override
  String get goalsNotFound => 'Bu hedef artık mevcut değil';

  @override
  String get goalsLinkTask => 'Görev bağla';

  @override
  String get goalsNoLinkedTasks => 'Henüz bağlı görev yok';

  @override
  String get goalsUnlinkTask => 'Görev bağlantısını kaldır';

  @override
  String get goalsTaskOpen => 'Henüz tamamlanmadı';

  @override
  String get goalsTaskLinked => 'Görev bağlandı';

  @override
  String get goalsTaskUnlinked => 'Görev bağlantısı kaldırıldı';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tamamlanmış bağlı görev',
      one: '1 tamamlanmış bağlı görev',
    );
    return 'Bu dönem $_temp0 dahil';
  }

  @override
  String get goalsHistoryAllTime =>
      'Önceki dönemlerin kayıtları burada kalır ama yalnızca kendi dönemlerine sayılır.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Bugün $total alışkanlıktan $done tanesi yapıldı';
  }

  @override
  String get habitsNothingToday => 'Bugün planlı alışkanlık yok';

  @override
  String get habitsDecrease => 'Bir işareti geri al';

  @override
  String get habitsResetToday => 'Bugünü sıfırla';

  @override
  String get habitsCheckInHint => 'Ayarlamak için basılı tut';

  @override
  String get habitsName => 'Ad';

  @override
  String get habitsColor => 'Renk';

  @override
  String get habitsValidationDays => 'En az bir gün seç';

  @override
  String habitsReminderAt(String time) {
    return 'Her gün saat $time';
  }

  @override
  String get habitsSetReminder => 'Hatırlatma saati belirle';

  @override
  String get habitsRemoveReminder => 'Hatırlatıcıyı kaldır';

  @override
  String get habitsReminderNote =>
      'Bildirimlere izin verildiyse hatırlatıcılar planlı günlerde görünür.';

  @override
  String get habitsArchived => 'Alışkanlık arşivlendi';

  @override
  String get habitsNotFound => 'Bu alışkanlık artık mevcut değil';

  @override
  String get habitsLast30 => 'Son 30 gün';

  @override
  String get habitsConsistencyNone => 'Henüz yeterli veri yok';

  @override
  String get habitsCalendar => 'İşaretleme geçmişi';

  @override
  String get habitsCalendarHint => 'Düzeltmek için bir güne dokun.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count / $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Son 90 gündeki işaretlemeler. İstikrar $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Son 90 gündeki işaretlemeler. Henüz yeterli veri yok.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
      one: '1 gün',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Duraklatılan günler serini etkilemez.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Alışkanlığı arşivle';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Günde $count kez',
      one: 'Günde bir kez',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Diğer notlar';

  @override
  String get notesAllNotebooks => 'Tüm defterler';

  @override
  String get notesNotebookName => 'Defter adı';

  @override
  String get notesNotebookColor => 'Renk';

  @override
  String get notesDeleteNotebook => 'Defteri sil';

  @override
  String get notesDeleteNotebookMessage =>
      'Defter kaldırılır. Notları korunur ve Tüm defterler altında görünür.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Önemli notları üstte tutmak için sabitle.';

  @override
  String get notesEmptyFavorites => 'Favori olarak işaretlediğin notlar burada görünür.';

  @override
  String get notesEmptyArchived => 'Arşivlenen notlar burada görünür.';

  @override
  String get notesEmptyFiltered => 'Bu filtrelere uyan not yok.';

  @override
  String get notesArchivedSnack => 'Not arşivlendi';

  @override
  String get notesUnarchivedSnack => 'Not notlarına geri taşındı';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total öğeden $done tanesi bitti';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Biçimlendirme';

  @override
  String get notesWrite => 'Yaz';

  @override
  String get notesPreviewEmpty => 'Henüz önizlenecek bir şey yok.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Henüz başka bir not buraya bağlantı vermiyor. Bu nota [[$title]] ile bağlantı ver.';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Diğer notların bağlantı verebilmesi için bu nota bir başlık ver.';

  @override
  String get notesLinkedTasksEmpty => 'Bu nota bağlı görev yok.';

  @override
  String notesLinkMissing(String title) {
    return 'Henüz \"$title\" başlıklı bir not yok.';
  }

  @override
  String get notesNotFound => 'Bu not artık yok.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Kontrol listesi öğesi: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return '$title notunu aç';
  }

  @override
  String get notesTagsHint => 'Nota #etiket yazarak etiket ekle.';

  @override
  String get notesTaskDone => 'Tamamlandı';

  @override
  String get notifTimerDoneBody => 'Ayarladığın süre doldu.';

  @override
  String get onboardingPrivatePointDevice => 'Yalnızca bu cihazda, şifreli olarak saklanır';

  @override
  String get onboardingPrivatePointAccount => 'Hesap gerekmez';

  @override
  String get onboardingPrivatePointTracking => 'Analiz yok, takip yok';

  @override
  String get onboardingLanguageBody => 'Bunu Ayarlar\'dan istediğin zaman değiştirebilirsin.';

  @override
  String get onboardingNext => 'İleri';

  @override
  String get projectsActive => 'Etkin';

  @override
  String get projectNameHint => 'ör. Ürün lansmanı';

  @override
  String get projectGoalHint => 'Bittiğinde nasıl görünecek?';

  @override
  String get projectNoDeadline => 'Son tarih yok';

  @override
  String get projectTasksOpen => 'Açık görevler';

  @override
  String get projectTasksCompleted => 'Tamamlanan görevler';

  @override
  String get projectAddTask => 'Projeye görev ekle';

  @override
  String get projectAddNote => 'Yeni proje notu';

  @override
  String get projectLinkedNotes => 'Notlar';

  @override
  String get projectNoTasks => 'Bu projede henüz görev yok';

  @override
  String get projectArchivedBadge => 'Arşivlendi';

  @override
  String get projectDeleted => 'Proje çöp kutusuna taşındı';

  @override
  String get projectDeleteMessage => 'Görevler projesiz olarak listende kalır.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, yüzde $percent tamamlandı';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sonuç',
      one: '1 sonuç',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Türe göre filtrele';

  @override
  String searchRecentTap(String query) {
    return '$query için yeniden ara';
  }

  @override
  String get settingsLanguageHint =>
      'Tüm uygulamanın dilini seç. Adlar kendi dillerinde gösterilir.';

  @override
  String get settingsThemeHint => 'Açık, koyu ya da sisteme göre';

  @override
  String settingsDecrease(String setting) {
    return '$setting azalt';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting artır';
  }

  @override
  String get settingsQuietStart => 'Başlangıç';

  @override
  String get settingsQuietEnd => 'Bitiş';

  @override
  String get settingsNotificationsHint =>
      'Bu, tercihini uygulamaya kaydeder. Sistem ayrıca izin isteyebilir.';

  @override
  String get settingsDashboardHint => 'Sıralamak için sürükle. İhtiyacın olmayan bölümleri kapat.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section bölümünü taşı';
  }

  @override
  String get settingsDashboardReset => 'Varsayılan sıraya dön';

  @override
  String get settingsAssistantDesc =>
      'İsteğe bağlı planlama yardımı. Bir sağlayıcı bağlamadıkça hiçbir şey bu cihazdan çıkmaz.';

  @override
  String get settingsAssistantSetup => 'Asistan ve sağlayıcı ayarı';

  @override
  String get settingsTrashDesc => 'Kaldırılan öğeleri geri yükle ya da kalıcı olarak sil';

  @override
  String get settingsEraseFirstBody =>
      'Bu geri alınamaz. Önce şifreli bir yedek oluşturmayı düşün.';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word yaz';
  }

  @override
  String get settingsEraseFailed => 'Veriler silinemedi. Hiçbir şey değişmedi.';

  @override
  String get settingsAboutTagline => 'Gizli, önce yerelde çalışan bir verimlilik alanı.';

  @override
  String get backupShowPassword => 'Parolayı göster';

  @override
  String get backupHidePassword => 'Parolayı gizle';

  @override
  String get backupSaved => 'Yedek kaydedildi';

  @override
  String get backupFailed => 'Yedek oluşturulamadı. Verilerin değişmedi.';

  @override
  String get backupReadFailed => 'Seçilen dosya okunamadı.';

  @override
  String get backupRestoreFailed => 'Geri yükleme başarısız. Hiçbir şey değişmedi.';

  @override
  String get backupShareSubject => 'Deep Focus şifreli yedeği';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Her $count günde bir',
      one: 'Her gün',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Her $count haftada bir',
      one: 'Her hafta',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Her $count ayda bir',
      one: 'Her ay',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Her $count yılda bir',
      one: 'Her yıl',
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
    return '$days günleri';
  }

  @override
  String get repeatEndsLabel => 'Bitiş';

  @override
  String get repeatEndsAfter => 'Belirli sayıda tekrardan sonra';

  @override
  String get repeatCountLabel => 'Tekrar sayısı';

  @override
  String get reminderNone => 'Hatırlatıcı yok';

  @override
  String get reminderCustomTime => 'Belirli bir saatte';

  @override
  String get a11yDecrease => 'Azalt';

  @override
  String get a11yIncrease => 'Artır';

  @override
  String get pickTaskTitle => 'Bir görev seç';

  @override
  String get pickTaskEmpty => 'Açık görev yok';

  @override
  String get tasksSearchTooltip => 'Görevlerde ara';

  @override
  String get tasksSectionOverdue => 'Gecikmiş';

  @override
  String get tasksSectionToday => 'Bugün';

  @override
  String get tasksRecurringSemantics => 'Tekrarlanır';

  @override
  String get tasksFilterPriorityAtLeast => 'En düşük öncelik';

  @override
  String get tasksFilterCategory => 'Kategori';

  @override
  String get tasksFilterAnyCategory => 'Her kategori';

  @override
  String get tasksFilterLabel => 'Etiket';

  @override
  String get tasksFilterAnyLabel => 'Her etiket';

  @override
  String get tasksFilterReset => 'Filtreleri sıfırla';

  @override
  String get tasksViewByProject => 'Projeye göre';

  @override
  String get tasksViewByPriority => 'Önceliğe göre';

  @override
  String get tasksViewByCategory => 'Kategoriye göre';

  @override
  String get tasksGroupNoCategory => 'Kategori yok';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count görev',
      one: '1 görev',
    );
    return '$_temp0 tarafından engelleniyor';
  }

  @override
  String get taskBlockedWarning =>
      'Bu görev bitmemiş görevler tarafından engelleniyor. Yine de tamamlansın mı?';

  @override
  String get taskStartFocus => 'Bu göreve odaklan';

  @override
  String get taskRemoveDate => 'Tarihi kaldır';

  @override
  String get taskAllDay => 'Belirli bir saat yok';

  @override
  String get taskSaved => 'Görev kaydedildi';

  @override
  String get taskCreated => 'Görev oluşturuldu';

  @override
  String get taskReminderNeedsDue => 'Göreli hatırlatıcılar için bir bitiş tarihi belirle';

  @override
  String get taskSubtaskDetailsHint =>
      'Alt görev, kontrol listesi öğesi, etiket ve bağımlılık eklemek için önce görevi kaydet.';

  @override
  String get taskLabelName => 'Etiket adı';

  @override
  String get taskMoreDetails => 'Ayrıntılar';

  @override
  String get taskPlanning => 'Planlama';

  @override
  String get taskOrganize => 'Düzen';

  @override
  String get taskBreakdown => 'Bölümler';

  @override
  String get trashDeleteTaskTitle => 'Bu görev kalıcı olarak silinsin mi?';

  @override
  String get trashDeleteNoteTitle => 'Bu not kalıcı olarak silinsin mi?';

  @override
  String get trashDeleteBody => 'Bu geri alınamaz.';

  @override
  String get trashEmptyTitle => 'Çöp kutusu boşaltılsın mı?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count öğe kalıcı olarak silinecek.',
      one: '1 öğe kalıcı olarak silinecek.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Geri yüklendi';

  @override
  String get trashPurged => 'Kalıcı olarak silindi';

  @override
  String trashDeletedOn(String date) {
    return '$date tarihinde silindi';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count öğe',
      one: '1 öğe',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Sesli oku';

  @override
  String get flashcardsTtsUnavailable => 'Metin okuma bu cihazda kullanılamıyor.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Bu dil için yüklü ses yok. Android metin okuma ayarlarından bir ses ekle.';

  @override
  String get calendarAgenda => 'Ajanda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Kıvılcım',
      'rocket': 'Roket',
      'book': 'Kitap',
      'work': 'İş',
      'home': 'Ev',
      'heart': 'Kalp',
      'code': 'Kod',
      'palette': 'Palet',
      'fitness': 'Spor',
      'school': 'Okul',
      'travel': 'Seyahat',
      'money': 'Birikim',
      'other': 'Simge',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Diğer alanlar';

  @override
  String get cardFieldExample => 'Örnek';

  @override
  String get cardFieldExplanation => 'Açıklama';

  @override
  String get cardFieldPronunciation => 'Telaffuz';

  @override
  String get cardFieldNotes => 'Ek notlar';

  @override
  String get projectMilestones => 'Kilometre taşları';

  @override
  String get milestoneAdd => 'Kilometre taşı ekle';

  @override
  String get milestoneEdit => 'Kilometre taşını düzenle';

  @override
  String get milestoneTitleLabel => 'Kilometre taşı';

  @override
  String get milestoneNoDate => 'Tarih yok';

  @override
  String get milestonesEmpty =>
      'Henüz kilometre taşı yok. Projeyi takvimde izlemek için tarihli ara hedefler ekle.';

  @override
  String get milestoneDeleted => 'Kilometre taşı silindi';

  @override
  String milestoneDoneA11y(String title) {
    return '\"$title\" kilometre taşını tamamlandı işaretle';
  }

  @override
  String calendarMilestone(String project) {
    return 'Kilometre taşı · $project';
  }

  @override
  String get tasksViewInbox => 'Gelen kutusu';

  @override
  String get tasksViewArchived => 'Arşiv';

  @override
  String get tasksEmptyInbox =>
      'Projesi ya da tarihi olmayan görevler buraya düşer. Bir dakikan olduğunda düzenle.';

  @override
  String get tasksEmptyArchived =>
      'Arşivlenen görevler listelerinden ve hatırlatıcılarından uzakta burada tutulur.';

  @override
  String get taskArchivedBadge => 'Arşivlendi';

  @override
  String get taskStatusInProgress => 'Devam ediyor';

  @override
  String get taskArchived => 'Görev arşivlendi';

  @override
  String get taskUnarchived => 'Görev arşivden çıkarıldı';

  @override
  String get focusPlanTitle => 'Oturum planı';

  @override
  String focusPlanTotal(String duration) {
    return 'Toplam $duration';
  }

  @override
  String get focusPlanRounds => 'Odak oturumları';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Uzun mola şundan sonra';

  @override
  String get focusPlanSkipLastBreak => 'Son molayı atla';

  @override
  String get focusPlanAutoBreaks => 'Molaları otomatik başlat';

  @override
  String get focusPlanAutoFocus => 'Moladan sonra odağı otomatik başlat';

  @override
  String get focusPlanSave => 'Planı kaydet';

  @override
  String get focusPlanNameHint => 'ör. Sınav hazırlığı';

  @override
  String get focusPlanSaved => 'Plan kaydedildi';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work dk odak, $rest dk mola';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label azalt';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label artır';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Oturum $current / $total';
  }

  @override
  String get focusSeriesComplete => 'Seri tamamlandı. Tebrikler!';

  @override
  String get filterAll => 'Tümü';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added içe aktarıldı · $duplicates kopya atlandı · $invalid eksik satır';
  }

  @override
  String get flashcardsSuspend => 'Kartı askıya al';

  @override
  String get flashcardsResume => 'Kartı sürdür';

  @override
  String get flashcardsSuspended => 'Kart askıya alındı: planlanmayacak';

  @override
  String get flashcardsResumed => 'Kart sürdürüldü';

  @override
  String get flashcardsSuspendedFilter => 'Askıda';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$total karttan $shown tanesi';
  }

  @override
  String get flashcardsImportFile => 'Dosyadan';

  @override
  String get speechTitle => 'Sesli okuma';

  @override
  String get speechAppLanguage => 'Uygulama dili';

  @override
  String get speechFrontLanguage => 'Ön yüz dili';

  @override
  String get speechBackLanguage => 'Arka yüz dili';

  @override
  String get speechRepeat => 'Her okumayı tekrarla';

  @override
  String get speechRate => 'Hız';

  @override
  String get speechAutoRead => 'Soruyu otomatik oku';

  @override
  String get speechHint =>
      'Bu cihazda yüklü sesleri çevrimdışı kullanır. Bir dilin sesi yoksa sana söylenir ve yerine başka bir şey kullanılmaz.';

  @override
  String get studyHowTitle => 'Nasıl çalışmak istersin?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartı tekrar et',
      one: '1 kartı tekrar et',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Tüm kartlarla alıştırma yap (plan değişmez)';

  @override
  String get studyPracticeMistakes => 'Son hatalarla alıştırma yap';

  @override
  String get studyPracticeHint =>
      'Alıştırma turları kartların tekrar zamanını asla değiştirmez. Tekrar, planı günceller.';

  @override
  String get studyModeClassic => 'Klasik';

  @override
  String get studyModeReverse => 'Ters';

  @override
  String get studyModeMixed => 'İki yönlü';

  @override
  String get studyModeTyped => 'Cevabı yaz';

  @override
  String get studyModeChoice => 'Çoktan seçmeli';

  @override
  String get studyModeListening => 'Dinleme';

  @override
  String get studyPractice => 'alıştırma';

  @override
  String get studyNoMistakes => 'Bu destede son zamanlarda hata yok. Harika!';

  @override
  String get studyTypeAnswer => 'Cevabını yaz';

  @override
  String get studyCheck => 'Kontrol et';

  @override
  String get studyKnewIt => 'Biliyordum';

  @override
  String get studyDidntKnow => 'Bilemedim';

  @override
  String studyMistakes(int count) {
    return 'Kaçırılan ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Kaçırılan kartları tekrarla';

  @override
  String get studyCorrect => 'Doğru';

  @override
  String get studyAlmost => 'Neredeyse — yazımı kontrol et';

  @override
  String get studyWrong => 'Tam değil';

  @override
  String get studyShowText => 'Metni göster';

  @override
  String get flashcardsImportFileFailed =>
      'Dosya açılamadı. Bunun yerine içeriğini yapıştırabilirsin.';

  @override
  String get studyNoMatchingCards => 'Bu seçime uyan kart henüz yok.';

  @override
  String get studyPracticeNew => 'Yalnızca yeni';

  @override
  String get studyPracticeHard => 'Zor kartlar';

  @override
  String get studyPracticeFavorites => 'Favoriler';

  @override
  String get studySessionSize => 'Oturum başına kart';

  @override
  String get studySessionAll => 'Tümü';

  @override
  String get studyOrder => 'Sıra';

  @override
  String get studyOrderDue => 'En çok geciken önce';

  @override
  String get studyOrderRandom => 'Rastgele';

  @override
  String get studyOrderHardest => 'En zor önce';

  @override
  String get flashcardsHard => 'Zor';

  @override
  String get flashcardsFavorites => 'Favoriler';

  @override
  String get flashcardsFavorite => 'Favorilere ekle';

  @override
  String get flashcardsUnfavorite => 'Favorilerden çıkar';

  @override
  String get flashcardsDuplicate => 'Çoğalt';

  @override
  String get flashcardsMoveTo => 'Desteye taşı';

  @override
  String get flashcardsNoOtherDeck => 'Önce başka bir deste oluştur.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart taşındı',
      one: 'Kart taşındı',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Etiket ekle';

  @override
  String get flashcardsTagHint => 'ör. fiiller';

  @override
  String flashcardsSelected(int count) {
    return '$count seçildi';
  }

  @override
  String get flashcardsSelectAll => 'Görünenlerin tümünü seç';

  @override
  String flashcardsSelectCard(String front) {
    return '$front seç';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Hatırlama $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Olası kopya';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Bu destede zaten “$front” → “$back” var. Yine de kaydedilsin mi?';
  }

  @override
  String get flashcardsSaveAnyway => 'Yine de kaydet';

  @override
  String get flashcardsStats => 'İstatistikler';

  @override
  String get flashcardsStatTotal => 'Kartlar';

  @override
  String get flashcardsStatLearning => 'Öğreniliyor';

  @override
  String get flashcardsStatMatureCaption => '21+ gün hatırlandı';

  @override
  String get flashcardsStatReviewsToday => 'Bugünkü tekrarlar';

  @override
  String get flashcardsStatCorrect => 'Doğru cevaplar';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Son $days gün';
  }

  @override
  String get flashcardsStatForget => 'Unutma oranı';

  @override
  String get flashcardsStatForgetCaption => 'Öğrenilmiş kartlarda “Tekrar”';

  @override
  String get flashcardsStatRecall => 'Şu anki hatırlama';

  @override
  String get flashcardsStatRecallCaption => 'FSRS tahmini, tekrar edilen kartlar';

  @override
  String flashcardsStatActivity(int count) {
    return 'Günlük tekrar · toplam $count';
  }

  @override
  String get flashcardsStatHistory => 'Son cevaplar';

  @override
  String get flashcardsStatNoHistory =>
      'Henüz tekrar yok. İlerlemeni burada görmek için desteyi çalış.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field alanını sesli oku';
  }

  @override
  String get speechVoice => 'Ses';

  @override
  String get speechVoiceDefault => 'Otomatik';

  @override
  String get speechVoiceOnline => 'internet gerekir';

  @override
  String get speechTest => 'Sesi dene';

  @override
  String get importNext => 'Önizleme';

  @override
  String get importPreviewTitle => 'Sütunları alanlarla eşleştir';

  @override
  String get importIgnoreColumn => 'Yok say';

  @override
  String importColumn(int n) {
    return 'Sütun $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kart hazır · $invalid eksik satır atlanacak';
  }

  @override
  String get importNeedFrontBack => 'Hangi sütunların ön ve arka yüz olduğunu seç.';

  @override
  String get actionMoveUp => 'Yukarı taşı';

  @override
  String get actionMoveDown => 'Aşağı taşı';

  @override
  String get flashcardsLayoutTitle => 'Kart düzeni';

  @override
  String get flashcardsLayoutHint =>
      'Bu destenin ek alanlarını yeniden adlandır, gizle ya da sırala. Kart içeriği asla değişmez.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Çalışırken $field alanını göster';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Cevabı adım adım göster';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Önce arka yüz görünür; her ek alan bir dokunuşla açılır.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field alanını göster';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Bu dosya $mb MB\'tan büyük.';
  }

  @override
  String get flashcardsImage => 'Görsel';

  @override
  String get flashcardsAudio => 'Ses';

  @override
  String get flashcardsAddImage => 'Görsel ekle';

  @override
  String get flashcardsAddAudio => 'Ses ekle';

  @override
  String get flashcardsPlayAudio => 'Kaydı oynat';

  @override
  String get flashcardsAudioUnavailable => 'Bu kayıt bu cihazda oynatılamıyor.';

  @override
  String get flashcardsCustomFields => 'Alanların';

  @override
  String get flashcardsTemplates => 'Şablonlar';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Alan $n';
  }

  @override
  String get flashcardsAddField => 'Alan ekle';

  @override
  String get flashcardsFieldName => 'Alan adı';

  @override
  String get flashcardsFieldLangDefault => 'Yüz dili';

  @override
  String get flashcardsTemplateConfirm =>
      'Şablon, alanların nasıl gösterileceğini belirler ve kendi alanlarını ekler. Kartların ve mevcut alanların olduğu gibi kalır.';

  @override
  String get flashcardsApplyTemplate => 'Uygula';

  @override
  String get templateVocabulary => 'Kelime';

  @override
  String get templateTwoTranslations => 'İki çevirili kelime';

  @override
  String get templateQuestionAnswer => 'Soru ve cevap';

  @override
  String get templateDefinition => 'Terim ve tanım';

  @override
  String get templateGrammar => 'Dil bilgisi kuralı';

  @override
  String get templateFieldPlural => 'Çoğul';

  @override
  String get templateFieldTranslation2 => 'İkinci çeviri';

  @override
  String get templateFieldSynonyms => 'Eş anlamlılar';

  @override
  String get templateFieldRule => 'Kural';

  @override
  String get deckCategory => 'Seviye veya konu';

  @override
  String get deckCategoryHint => 'ör. A1, Tıp';

  @override
  String get flashcardsSearchAll => 'Tüm kartlarda ara';

  @override
  String get flashcardsSearchAllHint => 'Kelime, çeviri, örnek, not, etiket…';

  @override
  String get flashcardsAllDecks => 'Tüm desteler';

  @override
  String get flashcardsAllLanguages => 'Tüm diller';

  @override
  String get flashcardsLangUnset => 'Dil belirlenmedi';

  @override
  String get flashcardsLevelUnset => 'Seviye veya konu yok';

  @override
  String get flashcardsByLanguage => 'Dile göre ilerleme';

  @override
  String get flashcardsByLevel => 'Seviye veya konuya göre ilerleme';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks deste · $cards kart · $mature oturmuş · $due bekleyen · $correct doğru (30 gün)';
  }

  @override
  String get flashcardsRecord => 'Kaydet';

  @override
  String get flashcardsRecording => 'Kaydediliyor…';

  @override
  String get flashcardsRecordStop => 'Durdur ve sakla';

  @override
  String get flashcardsMicDenied =>
      'Mikrofon erişimi kapalı. Kayıt için sistem ayarlarından izin ver.';

  @override
  String get flashcardsRecordFailed => 'Bu cihazda kayıt yapılamıyor.';

  @override
  String get soundsTitle => 'Sesler';

  @override
  String get soundsNature => 'Doğa';

  @override
  String get soundsNoise => 'Odak gürültüsü';

  @override
  String get soundRain => 'Yağmur';

  @override
  String get soundStorm => 'Fırtına';

  @override
  String get soundRiver => 'Nehir';

  @override
  String get soundOcean => 'Okyanus dalgaları';

  @override
  String get soundFire => 'Kamp ateşi';

  @override
  String get soundForest => 'Orman kuşları';

  @override
  String get soundNight => 'Yaz gecesi';

  @override
  String get soundWhite => 'Beyaz gürültü';

  @override
  String get soundPink => 'Pembe gürültü';

  @override
  String get soundBrown => 'Kahverengi gürültü';

  @override
  String get soundsPlay => 'Oynat';

  @override
  String get soundsSleep => 'Uyku zamanlayıcısı';

  @override
  String get soundsSleepOff => 'Kapalı';

  @override
  String soundsSleepAt(String time) {
    return '$time saatinde durur';
  }

  @override
  String soundsMixFull(int count) {
    return 'Aynı anda en fazla $count ses çalabilir.';
  }

  @override
  String get soundsHint =>
      'Başlatmak için bir sese dokun. Birkaçını karıştır ve her birinin sesini ayarla.';

  @override
  String get soundsMixer => 'Karışım';

  @override
  String soundsVolumeOf(String name) {
    return '$name ses düzeyi';
  }

  @override
  String get soundsChannel => 'Doğa sesleri';

  @override
  String get settingsEndTone => 'Zamanlayıcı bitiş sesi';

  @override
  String get toneGentle => 'Yumuşak bip';

  @override
  String get toneBeeps => 'Bip';

  @override
  String get toneWood => 'Tahta tıklaması';

  @override
  String get toneBird => 'Kuş sesi';

  @override
  String get toneStream => 'Dere';

  @override
  String get toneSystem => 'Telefonun sesi';

  @override
  String get speechOnPhone => 'Bu telefonda';

  @override
  String get speechAllLanguages => 'Tüm diller';

  @override
  String get speechSearchLanguage => 'Dil ara';

  @override
  String get speechGetVoices => 'Daha fazla ses indir';

  @override
  String get speechGetVoicesHint =>
      'Sesi olmayan diller telefonun konuşma ayarlarından indirilebilir.';

  @override
  String get speechSettingsFailed => 'Bu telefonda konuşma ayarları açılamadı.';

  @override
  String get speechVoiceMissing => 'Yüklü ses yok';

  @override
  String get speechPause => 'Tekrarlar arasında duraklama';

  @override
  String speechSeconds(String seconds) {
    return '$seconds sn';
  }

  @override
  String get speechExample => 'Örneği cevapla birlikte oku';

  @override
  String get flashListen => 'Dinle';

  @override
  String get flashListenNext => 'Sonraki kart';

  @override
  String get flashListenEmpty => 'Dinlenecek kart yok.';

  @override
  String get flashViewTable => 'Tablo';

  @override
  String get flashViewCards => 'Kartlar';

  @override
  String get flashSwapSides => 'Sütunları değiştir';

  @override
  String get flashSort => 'Sırala';

  @override
  String get flashSortNewest => 'Önce en yeni';

  @override
  String get flashSortAlpha => 'A\'dan Z\'ye';

  @override
  String get flashSortDue => 'Önce bekleyenler';

  @override
  String get flashSortHard => 'Önce en zor';

  @override
  String get flashPasteCards => 'Kart yapıştır';

  @override
  String get flashClipboardEmpty => 'Panoda metin yok.';

  @override
  String get flashMenuAdd => 'Kart ekle';

  @override
  String get flashMenuDeck => 'Deste';

  @override
  String get flashToday => 'Bugün';

  @override
  String get flashStudyNow => 'Çalış';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kart cevaplandı',
      one: '1 kart cevaplandı',
      zero: 'Cevaplanan kart yok',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Ormanda yağmur';

  @override
  String get autoBackupTitle => 'Otomatik yedekler';

  @override
  String get autoBackupDesc => 'Her gün bu telefonda; son 7 tanesi saklanır';

  @override
  String get autoBackupHint =>
      'Bu kopyalar bu telefonda kalır ve uygulama kaldırılırsa silinir. Yeni bir telefona geçmek için “Yedekle” ile bir dosya kaydet.';

  @override
  String get autoBackupNone => 'Henüz otomatik yedek yok. İlki bugün oluşturulacak.';

  @override
  String get autoBackupRestore => 'Geri yükle';

  @override
  String autoBackupConfirm(String date) {
    return 'Tüm mevcut veriler $date tarihli yedekle değiştirilsin mi?';
  }

  @override
  String get autoBackupRestored => 'Geri yüklendi.';

  @override
  String get errorLogTitle => 'Hata günlüğü';

  @override
  String get errorLogHint =>
      'Bir şey ters giderse burada not edilir: yalnızca hatanın türü ve koddaki yeri, asla içeriğin değil. Sorunun çözülmesine yardım etmek için paylaş.';

  @override
  String get errorLogEmpty => 'Kaydedilmiş hata yok.';

  @override
  String get errorLogClear => 'Temizle';

  @override
  String get soundsWithFocus => 'Odak oturumlarıyla çal';

  @override
  String get soundsWithFocusHint => 'Karışımın bir odak oturumuyla başlar ve molalarda duraklar.';

  @override
  String get soundsSavedMixes => 'Kayıtlı karışımlar';

  @override
  String get soundsSaveMix => 'Bu karışımı kaydet';

  @override
  String get soundsMixNameHint => 'Ad, ör. Yağmurlu kütüphane';

  @override
  String soundsDeleteMix(String name) {
    return '“$name” karışımı silinsin mi?';
  }

  @override
  String get settingsReviewReminderHint => 'Günde bir kez, yalnızca tekrar bekleyen kart varsa';

  @override
  String get settingsReviewTime => 'Hatırlatma saati';

  @override
  String get shortcutFocus => 'Odak';

  @override
  String get shortcutNewTask => 'Yeni görev';

  @override
  String get shortcutReview => 'Kart tekrar et';

  @override
  String get shortcutSounds => 'Doğa sesleri';

  @override
  String get myDayTitle => 'Güne başla';

  @override
  String get myDayHint => 'Günün bir bakışta, sonra tek dokunuşla odaklan';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bugün $count görev',
      one: 'Bugün 1 görev',
      zero: 'Bugün görev yok',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Bugün başka etkinlik yok';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Sıradaki: $title, saat $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alışkanlık kaldı',
      one: '1 alışkanlık kaldı',
      zero: 'Tüm alışkanlıklar tamam',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Bir odak oturumuyla başla';

  @override
  String get hijriMonth1 => 'Muharrem';

  @override
  String get hijriMonth2 => 'Safer';

  @override
  String get hijriMonth3 => 'Rebiülevvel';

  @override
  String get hijriMonth4 => 'Rebiülahir';

  @override
  String get hijriMonth5 => 'Cemaziyelevvel';

  @override
  String get hijriMonth6 => 'Cemaziyelahir';

  @override
  String get hijriMonth7 => 'Recep';

  @override
  String get hijriMonth8 => 'Şaban';

  @override
  String get hijriMonth9 => 'Ramazan';

  @override
  String get hijriMonth10 => 'Şevval';

  @override
  String get hijriMonth11 => 'Zilkade';

  @override
  String get hijriMonth12 => 'Zilhicce';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year H.';
  }

  @override
  String get settingsHijri => 'Hicri tarihler';

  @override
  String get settingsHijriHint => 'Takvimde ve ana sayfada gösterilir (Ümmülkura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
      one: '1 gün',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Bugün $goal karttan $done tanesi';
  }

  @override
  String get studyGoalReached => 'Günlük hedefe ulaşıldı. Tebrikler!';

  @override
  String get studyWeekTitle => 'Haftan';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 günde $count kart cevaplandı',
      one: '7 günde 1 kart cevaplandı',
      zero: '7 günde cevaplanan kart yok',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7 günde $duration odak';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Seri: $current · En iyi: $best';
  }

  @override
  String get studyGoalTitle => 'Günlük hedef (kart)';

  @override
  String get studyGoalOff => 'Kapalı';

  @override
  String get focusDndTitle => 'Odaklanırken Rahatsız Etmeyin';

  @override
  String get focusDndHint => 'Her odak oturumunda açılır, molada kapanır';

  @override
  String get focusDndNeedsAccess => 'Kullanmak için telefon ayarlarından erişime izin ver';

  @override
  String get voiceInput => 'Konuşarak yaz';

  @override
  String get voiceInputPrompt => 'Şimdi konuş';

  @override
  String get voiceInputUnavailable =>
      'Bu telefonda sesle yazma yok. Bir konuşma hizmeti yükle ya da aç (örneğin Google\'ın Konuşma Tanıma ve Sentezleme hizmeti).';

  @override
  String get prayerFajr => 'Sabah';

  @override
  String get prayerSunrise => 'Güneş';

  @override
  String get prayerDhuhr => 'Öğle';

  @override
  String get prayerAsr => 'İkindi';

  @override
  String get prayerMaghrib => 'Akşam';

  @override
  String get prayerIsha => 'Yatsı';

  @override
  String get prayerMethodMwl => 'Dünya Müslüman Birliği';

  @override
  String get prayerMethodUmmAlQura => 'Ümmülkura, Mekke';

  @override
  String get prayerMethodEgypt => 'Mısır Genel Otoritesi';

  @override
  String get prayerMethodJordan => 'Ürdün, Evkaf Bakanlığı';

  @override
  String get prayerMethodKarachi => 'İslami Bilimler Üniversitesi, Karaçi';

  @override
  String get prayerMethodIsna => 'Kuzey Amerika İslam Cemiyeti';

  @override
  String get prayerMethodGulf => 'Körfez bölgesi';

  @override
  String get prayerMethodKuwait => 'Kuveyt';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Türkiye, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malezya, Endonezya';

  @override
  String get prayerMethodFrance => 'Fransa (12°)';

  @override
  String get prayerMethodRussia => 'Rusya, Din İşleri İdaresi';

  @override
  String prayerNotifTitle(String name) {
    return '$name vakti';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Namaz vakti · $time';
  }

  @override
  String get prayerTitle => 'Namaz vakitleri';

  @override
  String get prayerOffHint =>
      'Namaz vakitlerini görmek için şehrini seç. Vakitler telefonda hesaplanır; konum erişimi gerekmez.';

  @override
  String get prayerChooseCity => 'Şehir seç';

  @override
  String get prayerCity => 'Şehir';

  @override
  String get prayerCitySearch => 'Şehir ara';

  @override
  String get prayerMethod => 'Hesaplama yöntemi';

  @override
  String get prayerHanafiAsr => 'Hanefi ikindi (daha geç vakit)';

  @override
  String get prayerReminders => 'Her namaz vaktinde bildir';

  @override
  String get prayerPauseFocus => 'Namaz vaktinde odağı duraklat';

  @override
  String get prayerPauseFocusHint => 'Süren oturum duraklar; namazdan sonra devam et';

  @override
  String get prayerTurnOff => 'Namaz vakitlerini kapat';

  @override
  String get prayerAccuracyNote =>
      'Hesaplanan vakitler yerel camideki vakitlerden birkaç dakika farklı olabilir.';

  @override
  String prayerNext(String name, String time) {
    return '$name, saat $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Bu Anki dosyası en yeni biçimi kullanıyor. Anki\'de “Eski Anki sürümlerini destekle” açıkken yeniden dışa aktar, sonra o dosyayı içe aktar.';

  @override
  String get importTemplate => 'Tablo şablonu';

  @override
  String get importTemplateFront => 'elma';

  @override
  String get importTemplateBack => 'yuvarlak bir meyve';

  @override
  String get importTemplateExample => 'Her gün bir elma yerim.';

  @override
  String get importTemplateTag => 'yiyecek';

  @override
  String get starterTitle => 'Başlangıç desteleri';

  @override
  String get starterHint =>
      'Hemen çalışmayı denemek için bir tane ekle. Sonra düzenleyebilir ya da silebilirsin.';

  @override
  String get starterAdd => 'Ekle';

  @override
  String get starterWords => 'Günlük İngilizce kelimeler (Arapça anlamlı)';

  @override
  String get starterCapitals => 'Dünya başkentleri';

  @override
  String get starterElements => 'Kimyasal elementler';

  @override
  String get settingsAccent => 'Vurgu rengi';

  @override
  String get accentViolet => 'Mor';

  @override
  String get accentBlue => 'Mavi';

  @override
  String get accentTeal => 'Turkuaz';

  @override
  String get accentGreen => 'Yeşil';

  @override
  String get accentRose => 'Gül';

  @override
  String get accentAmber => 'Kehribar';

  @override
  String get settingsFlashTextSize => 'Kart yazı boyutu';

  @override
  String get settingsFlashTextSample => 'Örnek';

  @override
  String get widgetStartFocus => 'Odaklanmak için dokun';

  @override
  String widgetFocusUntil(String time) {
    return '$time saatine kadar odak';
  }

  @override
  String get widgetNoCardsDue => 'Kartlar: hepsi tamam';

  @override
  String get faqMyDayQ => '“Güne başla” ne yapar?';

  @override
  String get faqMyDayA =>
      'Ana sayfa bunu günde bir kez sunar: bugünün görevlerini, sıradaki etkinliği, kalan alışkanlıkları ve bekleyen kartları gör, sonra tek dokunuşla bir odak oturumu başlat. Hızlı işlemler için uygulama simgesine basılı tut ya da odak süresini ve bekleyen kartları görmek için ana ekran widget\'ını ekle.';

  @override
  String get faqTasksQ => 'Hatırlatıcılı görev nasıl eklerim?';

  @override
  String get faqTasksA =>
      'Ana sayfada Yeni görev\'e ya da Görevler\'de + simgesine dokun. Başlığı yaz ya da mikrofonla söyle, sonra bitiş tarihi, saat ve hatırlatıcı ayarla. Gecikmiş görevler en üstte listelenir.';

  @override
  String get faqFocusQ => 'Odak zamanlayıcısı nasıl çalışır?';

  @override
  String get faqFocusA =>
      'Pomodoro, geri sayım ya da serbest süreyi seç ve Başlat\'a bas; molalar otomatik gelebilir. Ayarlar\'da bitiş sesini seçebilir, odaklanırken Rahatsız Etmeyin\'i açabilir ve doğa seslerini her oturumla çalabilirsin.';

  @override
  String get faqSoundsQ => 'Doğa seslerini karıştırabilir miyim?';

  @override
  String get faqSoundsA =>
      'Altı gerçek kayda kadar aç, her birinin sesini ayarla ve karışımı bir adla kaydet. Arka planda çalmaya devam ederler ve uyku zamanlayıcısı onları durdurabilir. Müzik kullanılmaz.';

  @override
  String get faqCalendarQ => 'Takvim Hicri tarihleri gösterebilir mi?';

  @override
  String get faqCalendarA =>
      'Evet. Hicri tarihler (Ümmülkura) Arapçada otomatik görünür ve her dil için Ayarlar\'dan açılabilir. Etkinlikler, bitiş tarihli görevler ve proje kilometre taşları birlikte görünür.';

  @override
  String get faqFlashcardsQ => 'Tekrar hangi kartları göreceğime nasıl karar verir?';

  @override
  String get faqFlashcardsA =>
      'İyi bildiğin kartlar daha uzun aralıklarla, bilemediklerin ise kısa sürede geri gelir (aralıklı tekrar). Her cevabı Tekrar, Zor, İyi ya da Kolay olarak değerlendir. Günlük bir hedef koy ve serini Bugün kartında koru. Kalan günleri ve her gün kaç yeni kart öğreneceğini görmek için bir destede sınav tarihi belirle. Kartları sürükleyerek yerleştirmek için \"Benim sıram\"a göre sırala, dinlemek için iki yüzden birindeki hoparlöre dokun, hız ve tekrarları Sesli okuma menüsünden ayarla.';

  @override
  String get faqImportQ => 'Anki\'den veya Excel\'den kart getirebilir miyim?';

  @override
  String get faqImportA =>
      'Evet. Bir destede İçe aktar\'ı seç, sonra bir dosya seç: Anki (.apkg), Excel (.xlsx) ya da CSV, ve sütunları eşleştir. Kartları bilgisayarda yazmak için “Tablo şablonu”nu kullan. Anki dosyalarındaki resimler ve sesler içe aktarılmaz.';

  @override
  String get faqNotesQ => 'Notlar neler yapabilir?';

  @override
  String get faqNotesA =>
      'Kontrol listeleri ve biçimlendirmeyle özgürce yaz, önemli notları sabitle ya da favorile, etiket ekle ve notları görevlere bağla. Mikrofon düğmesiyle dikte edebilirsin. Yeni bir not bir şablonla başlayabilir (ders, kitap özeti, günlük, haftalık plan) ve resim düğmesi fotoğraf ekler.';

  @override
  String get faqHabitsQ => 'Alışkanlık serileri nasıl sayılır?';

  @override
  String get faqHabitsA =>
      'Planlı bir günde alışkanlığın hedefine ulaştığında o gün sayılır. Bir alışkanlığı duraklatmak serini korur. Her alışkanlığın kendi hatırlatma saati olabilir.';

  @override
  String get faqGoalsQ => 'Hedefler ilerlemeyi nasıl izler?';

  @override
  String get faqGoalsA =>
      'Bir hedefe hedef miktar ve birim ver, sonra ilerleme kaydet. Kartı ne kadar ilerlediğini ve son tarihe kadar ne kaldığını gösterir.';

  @override
  String get faqProjectsQ => 'Projeler ne işe yarar?';

  @override
  String get faqProjectsA =>
      'Görevleri bir projede topla, tarihli kilometre taşları ekle ve genel ilerlemeyi izle. Kilometre taşları takvimde de görünür.';

  @override
  String get faqInsightsQ => 'Analizler neyi gösterir?';

  @override
  String get faqInsightsA =>
      'Günler ve haftalar boyunca odak süreni, biten görevlerini ve çalışmanı, nazik önerilerle. Her şey telefonunda hesaplanır.';

  @override
  String get faqSpacesQ => 'Tüm bölümler nerede?';

  @override
  String get faqSpacesA =>
      'Alanlar uygulamanın her bölümünü (notlar, desteler, alışkanlıklar, hedefler, projeler, sesler ve daha fazlası) listeler, böylece ana çubuk sade kalır.';

  @override
  String get faqBackupQ => 'Verilerim nasıl yedekleniyor?';

  @override
  String get faqBackupA =>
      'Uygulama her gün sessizce bu telefonda şifreli bir kopya tutar ve son 7 tanesini saklar. Ayarlar\'dan ayrıca parola korumalı bir yedek dosyası dışa aktarıp başka bir telefonda geri yükleyebilirsin.';

  @override
  String get faqPrayerQ => 'Namaz vakitleri nasıl çalışır?';

  @override
  String get faqPrayerA =>
      'Şehrini Ayarlar → Namaz vakitleri\'nden seç. Vakitler telefonda, oradaki yöntemle hesaplanır; yöntemi ve ikindi mezhebini değiştirebilirsin. Her namazda bildirim alabilirsin ve süren bir odak oturumu duraklar.';

  @override
  String get faqPrivacyQ => 'Verilerim nerede saklanıyor?';

  @override
  String get faqPrivacyA =>
      'Yalnızca telefonunda, şifreli bir veritabanında. Hesap ve takip yok. İnternet yalnızca isteğe bağlı asistan gibi kendi açtığın özelliklerce kullanılır.';

  @override
  String get faqAssistantQ => 'Asistan nedir?';

  @override
  String get faqAssistantA =>
      'Ayarlar\'da kendi yapay zekâ hizmetine bağladığın isteğe bağlı bir yardımcı. Varsayılan olarak kapalıdır ve not metni göndermeden önce sorar.';

  @override
  String get tourPlanTitle => 'Gününü planla';

  @override
  String get tourPlanBody =>
      'Görevler, takvim ve alışkanlıklar tek ve sakin bir yerde. Her sabaha “Güne başla” ile başla.';

  @override
  String get tourFocusTitle => 'Derinden odaklan';

  @override
  String get tourFocusBody =>
      'Gerçek doğa sesleri, Rahatsız Etmeyin ve yumuşak bitiş sesleriyle süreli oturumlar.';

  @override
  String get tourLearnTitle => 'Kalıcı öğren';

  @override
  String get tourLearnBody =>
      'Aralıklı tekrarla kartlar, birçok dilde sesli okuma ve Anki ya da Excel\'den içe aktarma.';

  @override
  String get helpTitle => 'Yardım ve sorular';

  @override
  String get helpOpen => 'Aç';

  @override
  String get helpTour => 'Tanıtımı izle';

  @override
  String get tourNext => 'İleri';

  @override
  String get tourDone => 'Hadi başlayalım';

  @override
  String get transferColTitle => 'Başlık';

  @override
  String get transferColNotes => 'Notlar';

  @override
  String get transferColBody => 'Metin';

  @override
  String get transferColDue => 'Bitiş tarihi';

  @override
  String get transferColPriority => 'Öncelik (0-3)';

  @override
  String get transferColDone => 'Tamamlandı';

  @override
  String get transferColProject => 'Proje';

  @override
  String get transferColCategory => 'Kategori';

  @override
  String get transferTitle => 'İçe ve dışa aktar';

  @override
  String get transferSaveAs => 'Farklı kaydet';

  @override
  String get transferImport => 'Dosyadan içe aktar';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV ya da Word\'deki bir tablo. Sütunlar: başlık, bitiş tarihi (2026-12-31), öncelik 0-3, tamamlandı, proje, notlar. Uygulamada zaten olan görevler atlanır.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown veya metin dosyaları nota dönüşür. Excel veya CSV: her satır bir not (başlık, metin).';

  @override
  String get transferSaved => 'Dosya kaydedildi';

  @override
  String get transferFailed => 'Dosya oluşturulamadı. Hiçbir şey değişmedi.';

  @override
  String get transferUnsupported =>
      'Bu dosya burada okunamıyor. Excel, CSV, Word, Markdown veya metin kullan.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added tane eklendi',
      one: '1 tane eklendi',
      zero: 'Eklenecek yeni bir şey yok',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Metin';

  @override
  String get transferAllNotes => 'Tüm notlar';

  @override
  String get transferThisNote => 'Bu not';

  @override
  String get transferDeckFormats => 'Excel, Word veya PDF olarak kaydet';

  @override
  String get faqFilesQ => 'Excel, Word veya PDF dosyalarını kullanabilir miyim?';

  @override
  String get faqFilesA =>
      'Evet. Görevler ve Notlar\'ın üstünde bir içe/dışa aktarma düğmesi (iki ok) var ve her destenin menüsünde de bulunur. Excel, CSV, Word veya PDF olarak kaydet ya da Excel, CSV, Word, Markdown veya metin dosyalarını getir. Sütun adları uygulamanın herhangi bir dilinde olabilir ve kaydettiğin dosyalar her zaman yeniden içe aktarılabilir.';

  @override
  String get tplLecture => 'Ders';

  @override
  String get tplBook => 'Kitap özeti';

  @override
  String get tplJournal => 'Günlük';

  @override
  String get tplWeek => 'Haftalık plan';

  @override
  String get tplLectureBody => '## Önemli noktalar\n- \n\n## Sorular\n- [ ] \n\n## Özet\n';

  @override
  String get tplBookBody =>
      '## Ana fikir\n\n## Öğrendiklerim\n- \n\n## Alıntılar\n> \n\n## Uygulanacaklar\n- [ ] \n';

  @override
  String get tplJournalBody => '## Şükrettiklerim\n- \n\n## Bugünün odağı\n- [ ] \n\n## Notlar\n';

  @override
  String get tplWeekBody =>
      '## Bu haftanın hedefleri\n- [ ] \n\n### Cumartesi\n- [ ] \n\n### Pazar\n- [ ] \n\n### Pazartesi\n- [ ] \n\n### Salı\n- [ ] \n\n### Çarşamba\n- [ ] \n\n### Perşembe\n- [ ] \n\n### Cuma\n- [ ] \n';

  @override
  String get tplHint => 'Bir şablonla başla';

  @override
  String get noteImage => 'Resim';

  @override
  String get noteAddImage => 'Resim ekle';

  @override
  String get noteImageUnreadable => 'Bu dosya uygulamanın okuyabileceği bir resim değil.';

  @override
  String get noteImageTooLarge => 'Bu resim çok büyük.';

  @override
  String get examSet => 'Sınav tarihi belirle';

  @override
  String get examDate => 'Sınav tarihi';

  @override
  String get examToday => 'Sınav bugün. Bol şans!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sınava $count gün var',
      one: 'Sınav yarın',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'günde $count yeni kart öğren',
      one: 'günde 1 yeni kart öğren',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'tüm kartlar öğrenildi, tekrar etmeye devam et';

  @override
  String examRaiseLimit(int count) {
    return 'Günde $count yeni kart göster';
  }

  @override
  String get backupDriveHint =>
      'Çevrimiçi bir kopya tutmak için açılan kaydetme ekranında Google Drive\'ı (ya da başka bir bulut uygulamasını) seç.';

  @override
  String get flashShareDeck => 'Desteyi bir arkadaşınla paylaş';

  @override
  String get flashSortManual => 'Benim sıram (sürükle)';

  @override
  String get flashReorderHint => 'Bir kartı taşımak için tutamaçtan tutup sürükle.';

  @override
  String get flashReorderNeedsAll => 'Kartları sürüklemek için aramayı ve filtreleri temizle.';

  @override
  String get flashDragHandle => 'Taşımak için sürükle';

  @override
  String get reportTitle => 'Aylık rapor';

  @override
  String get reportFocus => 'Odak süresi';

  @override
  String reportSessions(int count) {
    return '$count oturum';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'En iyi gün: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count etkin gün';
  }

  @override
  String get reportCards => 'Tekrar edilen kartlar';

  @override
  String reportCardsKnown(String percent) {
    return '$percent hatırlandı';
  }

  @override
  String get reportTasks => 'Tamamlanan görevler';

  @override
  String get reportHabits => 'Alışkanlık işaretlemeleri';

  @override
  String get reportEmpty => 'Bu ay henüz kayıt yok.';

  @override
  String get reportSave => 'PDF veya Word olarak kaydet';

  @override
  String get reportPrevMonth => 'Önceki ay';

  @override
  String get reportNextMonth => 'Sonraki ay';

  @override
  String get careTitle => 'Telefon ve veri bakımı';

  @override
  String get storageTitle => 'Depolama';

  @override
  String get storageSubtitle => 'Yer kaplayanlar ve kullanılmayan resimlerin temizliği';

  @override
  String get storagePictures => 'Notlardaki resimler';

  @override
  String get storageCardMedia => 'Kartlardaki resim ve sesler';

  @override
  String get storageText => 'Not metni';

  @override
  String get storageFree => 'Telefonunda boş alan';

  @override
  String get storageLow =>
      'Telefonun neredeyse dolu. Yedekler ve hatırlatıcılar çalışmaya devam etsin diye biraz yer aç.';

  @override
  String storageUnused(int count, String size) {
    return '$count kullanılmayan resim ($size)';
  }

  @override
  String get storageNoUnused => 'Kullanılmayan resim yok. Her şey düzenli.';

  @override
  String get storageClean => 'Kullanılmayan resimleri kaldır';

  @override
  String storageCleaned(int count) {
    return '$count resim kaldırıldı';
  }

  @override
  String get storageHint =>
      'Bir resim, çöp kutusundakiler dahil hiçbir not onu göstermiyorsa kullanılmıyor sayılır.';

  @override
  String get batteryTitle => 'Hatırlatıcılar çalışsın';

  @override
  String get batterySubtitle =>
      'Bazı telefonlar arka plandaki uygulamaları durdurur. Seninkini kontrol et.';

  @override
  String get batteryStatusOk =>
      'Pil tasarrufu bu uygulamayı kısıtlamıyor. Hatırlatıcılar ve sesler zamanında gelmeli.';

  @override
  String get batteryStatusLimited =>
      'Pil tasarrufu bu uygulamayı arka planda durdurabilir; hatırlatıcılar ve sesler gecikebilir ya da gelmeyebilir.';

  @override
  String get batteryOpen => 'Pil ayarlarını aç';

  @override
  String get batteryOpenApp => 'Uygulama ayarlarını aç';

  @override
  String get batteryGeneric =>
      'Pil ayarlarında bu uygulamayı seç ve Kısıtlamasız (ya da Optimize etme) olarak ayarla.';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: Ayrıca Güvenlik › İzinler › Otomatik başlatma\'yı aç ve bu uygulamayı etkinleştir; Pil tasarrufu\'nu Kısıtlama yok olarak ayarla.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: Pil › bu uygulama\'yı aç ve arka plan etkinliğine ve otomatik başlatmaya izin ver; uygulamayı son uygulamalar listesinde kilitle.';

  @override
  String get batterySamsung =>
      'Samsung: Pil › Arka plan kullanım sınırları: bu uygulamayı Uyuyan uygulamalar ve Derin uykudaki uygulamalar listesinden çıkar.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Uygulama başlatma › bu uygulama › elle yönet, ve otomatik başlatma, ikincil başlatma ve arka planda çalışmaya izin ver.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Pil › Arka plan güç tüketimi › bu uygulamaya izin ver ve izinlerden otomatik başlatmayı aç.';

  @override
  String get whatsNewTitle => 'Yenilikler';

  @override
  String get whatsNewSubtitle => 'Son değişiklikler birkaç satırda';

  @override
  String get whatsNewDone => 'Anladım';

  @override
  String get whatsNewOrderTitle => 'Kartları kendi sırana sürükle';

  @override
  String get whatsNewOrderBody =>
      'Bir destede Sırala › Benim sıram\'ı seç, sonra tutamaçtan tutup sürükle.';

  @override
  String get whatsNewSpeechTitle => 'Her kart yüzünde bir hoparlör';

  @override
  String get whatsNewSpeechBody =>
      'Kelimeyi ya da çeviriyi duymak için dokun. Hız, tekrar ve ses tekrar menüsündedir. Dil metinden algılanır.';

  @override
  String get whatsNewReportTitle => 'Aylık rapor';

  @override
  String get whatsNewReportBody =>
      'Analizler\'de rapor simgesine dokunarak ayı gör ve PDF ya da Word olarak kaydet.';

  @override
  String get whatsNewCareTitle => 'Telefon ve veri bakımı';

  @override
  String get whatsNewCareBody =>
      'Ayarlar\'da artık resim temizliği olan bir depolama sayfası ve telefon markana göre bir pil rehberi var.';

  @override
  String get whatsNewSoundTitle => 'Daha sakin sesler';

  @override
  String get whatsNewSoundBody => 'Doğa sesleri daha yumuşak ve kısık, resimli kartlar daha güzel.';

  @override
  String autoBackupCheckOk(String date) {
    return '$date tarihinde kontrol edildi: son yedek düzgün açılıyor.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date tarihinde kontrol edildi: bozuk bir yedek bulundu ve yenisiyle değiştirildi.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date tarihinde kontrol edildi: son yedek açılamadı. Ayarlar\'dan kendin bir yedek dosyası kaydet.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Genellikle saat $time civarında çalışıyorsun';
  }

  @override
  String get smartReviewTimeUse => 'Bunu kullan';

  @override
  String get widgetNewNote => 'Yeni not';

  @override
  String get noteConnections => 'Etiketler, bağlantılar ve görevler';

  @override
  String get navCards => 'Kartlar';

  @override
  String get studyAnswerWay => 'Nasıl cevaplanır';

  @override
  String get studyMorePractice => 'Ek alıştırma';

  @override
  String get studySessionSettings => 'Oturum ayarları';

  @override
  String get focusAdjustTitle => 'Oturumun';

  @override
  String get focusPresetsTitle => 'Hazır';

  @override
  String get focusPresetStudy => 'Ders çalışma';

  @override
  String get focusPresetDeep => 'Derin çalışma';

  @override
  String get focusPresetQuick => 'Kısa koşu';

  @override
  String get focusPresetReading => 'Okuma';

  @override
  String get focusPresetWorkout => 'Antrenman turları';

  @override
  String get focusAdjustMinutes => 'Odak süresi';

  @override
  String get focusAdjustBreak => 'Mola süresi';

  @override
  String get focusAdjustRounds => 'Turlar';

  @override
  String get focusRoundsOpen => 'Sınırsız';

  @override
  String focusMinutesShort(String n) {
    return '$n dk';
  }

  @override
  String get focusTapToAdjust => 'Süreyi değiştirmek için dokun';

  @override
  String get flashArrangeDecks => 'Desteleri düzenle';

  @override
  String get flashDeckActions => 'Deste seçenekleri';

  @override
  String get starterBrowse => 'Hazır desteler';

  @override
  String get starterBrowseHint => 'Tek dokunuşla ekle ve öğrenmeye başla';

  @override
  String get dashOpenDecks => 'Kartlarını aç';

  @override
  String speechVoiceNumber(String n) {
    return 'Ses $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Güzel akış. $m dk mola?';
  }

  @override
  String get focusFlowBreakStart => 'Molayı başlat';

  @override
  String tasksFinishAt(String time) {
    return 'Şimdi başlarsan her şeyi saat $time itibarıyla bitirirsin';
  }

  @override
  String get focusCalmPacing => 'Sakin tempo';

  @override
  String get focusCalmPacingHint => 'Yalnızca tam dakikalar ve halka, tıklayan saniyeler yok';

  @override
  String get focusFlipHint => 'Başlamak için telefonu ters çevir';

  @override
  String get focusImmersive => 'Sürükleyici mod';

  @override
  String get focusImmersiveBlack => 'Saf siyah (pil tasarrufu)';

  @override
  String get focusFlipToFocus => 'Çevir ve odaklan';

  @override
  String get focusFlipToFocusHint =>
      'Sürükleyici modda: ters çevirmek başlatır, kaldırmak duraklatır';

  @override
  String get guardTitle => 'Dikkat dağıtıcı koruması';

  @override
  String get guardSubtitle => 'Odaklanırken dikkat dağıtan uygulamaları duraklat';

  @override
  String get guardSwitch => 'Dikkat dağıtan uygulamaları duraklat';

  @override
  String get guardSwitchHint => 'Odak oturumlarında ve Zaman Koruması saatlerinde';

  @override
  String get guardNeedsAccess => 'Erişilebilirlik anahtarı gerekiyor: açmak için dokun';

  @override
  String get guardDisclosureTitle => 'Koruma nasıl çalışır';

  @override
  String get guardDisclosureBody =>
      'Seçtiğin uygulamaları duraklatmak için Deep Focus, hangi uygulamanın açık olduğunu görmek üzere Android\'in erişilebilirlik hizmetini kullanır. “Shorts ve Reels\'i kapat” açıkken ekranda kısa video oynatıcı olup olmadığını da kontrol eder.\n\nHiçbir metni okumaz, gördüğü hiçbir şeyi saklamaz ve hiçbir yere bir şey göndermez: her şey telefonunda kalır. Erişilebilirlik ayarlarından istediğin zaman kapatabilirsin.';

  @override
  String get guardAgree => 'Kabul et ve ayarları aç';

  @override
  String get guardModeGentle => 'Nazik';

  @override
  String get guardModeStrict => 'Katı';

  @override
  String get guardGentleHint => '5 saniyelik bir nefes molası, sonra sen karar verirsin';

  @override
  String get guardStrictHint => 'Seçilen uygulamalar odak süresi bitene kadar kapalı kalır';

  @override
  String get guardApps => 'Duraklatılacak uygulamalar';

  @override
  String get guardAppsAllowed => 'İzin verilen uygulamalar';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uygulama',
      one: '1 uygulama',
      zero: 'Henüz seçilmedi',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Yalnızca seçilen uygulamalara izin ver';

  @override
  String get guardAllowlistHint =>
      'Diğer tüm uygulamalar duraklatılır; aramalar, ayarlar ve klavye her zaman çalışır';

  @override
  String get guardShorts => 'Shorts ve Reels\'i kapat';

  @override
  String get guardShortsHint =>
      'Koruma açık olduğu her an. Garanti yok: bu uygulamalar sık değişir';

  @override
  String get guardSchedule => 'Zaman Koruması';

  @override
  String get guardScheduleHint => 'Okul veya iş gibi belirli gün ve saatlerde de koru';

  @override
  String get guardFrom => 'Başlangıç';

  @override
  String get guardTo => 'Bitiş';

  @override
  String get guardSearchApps => 'Uygulama ara';

  @override
  String get guardNoApps => 'Uygulama bulunamadı';

  @override
  String get guardPrivacy =>
      'Yalnızca telefonunda çalışır: koruma hangi uygulamanın açık olduğunu görür, içeriğini asla görmez ve hiçbir şey göndermez.';

  @override
  String get guardBreathe => 'Nefes al… ve ver';

  @override
  String get guardQuestion => 'Bu uygulamaya şimdi ihtiyacın var mı?';

  @override
  String get guardBackToFocus => 'Odağa dön';

  @override
  String get guardOpenFive => '5 dakikalığına aç';

  @override
  String get guardStrictBody => 'Bu uygulama odak süren bitene kadar duraklatıldı.';

  @override
  String get guardShortsClosed => 'Koruma açıkken kısa videolar kapalı';

  @override
  String get faqGuardQ => 'Odaklanırken dikkat dağıtan uygulamaları nasıl durdururum?';

  @override
  String get faqGuardA =>
      'Odak → zamanlayıcı ayarları → Dikkat dağıtıcı koruması\'nı aç. Uygulamaları seç, sonra Nazik (5 saniye nefes ve “Bu uygulamaya şimdi ihtiyacın var mı?” sorusu) ya da Katı (kapalı kalırlar) seçeneğini belirle. Odak oturumlarında ve Zaman Koruması ile belirlediğin gün ve saatlerde çalışır. “Yalnızca seçilen uygulamalara izin ver” diğer her şeyi duraklatır; aramalar, ayarlar ve klavye her zaman çalışır. Android, korumayı Erişilebilirlik ayarlarından açmanı bir kez ister. Yalnızca hangi uygulamanın açık olduğunu görür ve hiçbir şey göndermez.';

  @override
  String notesMovedToNotebook(String name) {
    return '$name defterine taşındı';
  }

  @override
  String get notesDragHint => 'Bir notu basılı tutup bir deftere sürükle';

  @override
  String get guardReviewCards => 'Bunun yerine kart çalış';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Seni $count kart bekliyor',
      one: 'Seni 1 kart bekliyor',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Acil durum: 10 saniye basılı tut';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Basılı tutmaya devam et… $n';
  }

  @override
  String get guardWeekTitle => 'Bu hafta';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duraklama',
      one: '1 duraklama',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kez odağa dönüldü',
      one: '1 kez odağa dönüldü',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Kelimeleri yeniden adlandır';

  @override
  String get wordsSubtitle => 'Uygulamadaki her metin için kendi kelimeni kullan';

  @override
  String get wordsHint =>
      'Değiştirmek için bir metne dokun. Kelimelerin yalnızca bu dilde geçerlidir ve yedeklere dahildir.';

  @override
  String get wordsSearch => 'Metinlerde ara';

  @override
  String get wordsChangedOnly => 'Yalnızca değişenler';

  @override
  String wordsOriginal(String text) {
    return 'Orijinal: $text';
  }

  @override
  String get wordsReset => 'Orijinali kullan';

  @override
  String get wordsResetAll => 'Tüm kelimeleri sıfırla';

  @override
  String get wordsResetAllConfirm => 'Bu dildeki her metin orijinaline döner.';

  @override
  String get wordsNone => 'Metin bulunamadı';

  @override
  String get settingsLanguageSearch => 'Dil ara';

  @override
  String get settingsLanguageNoMatch => 'Eşleşen dil yok';
}
