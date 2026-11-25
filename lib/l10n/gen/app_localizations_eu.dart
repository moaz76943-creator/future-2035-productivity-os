// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Hasiera';

  @override
  String get navTasks => 'Zereginak';

  @override
  String get navFocus => 'Kontzentrazioa';

  @override
  String get navCalendar => 'Egutegia';

  @override
  String get navSpaces => 'Guneak';

  @override
  String get moduleProjects => 'Proiektuak';

  @override
  String get moduleNotes => 'Oharrak';

  @override
  String get moduleFlashcards => 'Txartelak';

  @override
  String get moduleGoals => 'Helburuak';

  @override
  String get moduleHabits => 'Ohiturak';

  @override
  String get moduleAnalytics => 'Estatistikak';

  @override
  String get moduleSearch => 'Bilaketa';

  @override
  String get moduleAssistant => 'Laguntzailea';

  @override
  String get moduleSettings => 'Ezarpenak';

  @override
  String get moduleTrash => 'Zakarrontzia';

  @override
  String get actionSave => 'Gorde';

  @override
  String get actionCancel => 'Utzi';

  @override
  String get actionDelete => 'Ezabatu';

  @override
  String get actionEdit => 'Editatu';

  @override
  String get actionDone => 'Eginda';

  @override
  String get actionAdd => 'Gehitu';

  @override
  String get actionCreate => 'Sortu';

  @override
  String get actionClose => 'Itxi';

  @override
  String get actionBack => 'Atzera';

  @override
  String get actionUndo => 'Desegin';

  @override
  String get actionRestore => 'Leheneratu';

  @override
  String get actionRetry => 'Saiatu berriro';

  @override
  String get actionContinue => 'Jarraitu';

  @override
  String get actionSkip => 'Saltatu';

  @override
  String get actionArchive => 'Artxibatu';

  @override
  String get actionUnarchive => 'Desartxibatu';

  @override
  String get actionPin => 'Ainguratu';

  @override
  String get actionUnpin => 'Desainguratu';

  @override
  String get actionMore => 'Aukera gehiago';

  @override
  String get actionClear => 'Garbitu';

  @override
  String get actionSearch => 'Bilatu';

  @override
  String get actionSort => 'Ordenatu';

  @override
  String get actionShare => 'Partekatu';

  @override
  String get actionImport => 'Inportatu';

  @override
  String get actionExport => 'Esportatu';

  @override
  String get actionPause => 'Pausatu';

  @override
  String get actionResume => 'Berrekin';

  @override
  String get actionStart => 'Hasi';

  @override
  String get actionStop => 'Gelditu';

  @override
  String get actionComplete => 'Osatu';

  @override
  String get actionDeleteForever => 'Ezabatu betiko';

  @override
  String get actionEmptyTrash => 'Hustu zakarrontzia';

  @override
  String get actionUnlink => 'Desestekatu';

  @override
  String get actionCustomize => 'Pertsonalizatu';

  @override
  String get actionPreview => 'Aurrebista';

  @override
  String get actionLog => 'Erregistratu aurrerapena';

  @override
  String get stateLoading => 'Kargatzen…';

  @override
  String get stateSaving => 'Gordetzen…';

  @override
  String get stateSaved => 'Gordeta';

  @override
  String get stateUnsaved => 'Gorde gabeko aldaketak';

  @override
  String get errorGenericTitle => 'Zerbait gaizki joan da';

  @override
  String get errorGenericMessage => 'Zure datuak seguru daude. Saiatu berriro.';

  @override
  String get errorLoadFailed => 'Ezin izan da eduki hau kargatu.';

  @override
  String get errorSaveFailed => 'Ezin izan da gorde. Zure aldaketak hemen daude oraindik.';

  @override
  String get validationRequired => 'Eremu hau derrigorrezkoa da';

  @override
  String get validationTitleRequired => 'Idatzi izenburu bat';

  @override
  String get validationNameRequired => 'Idatzi izen bat';

  @override
  String get validationTooLong => 'Luzeegia da';

  @override
  String get validationEndBeforeStart => 'Amaierak hasieraren ondoren izan behar du';

  @override
  String get validationStartAfterDue => 'Hasiera-data epemuga baino lehenagokoa izan behar da';

  @override
  String get validationPositiveNumber => 'Idatzi zero baino handiagoa den zenbaki bat';

  @override
  String get validationDependencyCycle => 'Horrek mendekotasun zirkular bat sortuko luke';

  @override
  String get validationInvalidRepeat => 'Errepikatzeko arau hau ez da baliozkoa';

  @override
  String get deletedItem => 'Zakarrontzira eraman da';

  @override
  String get untitled => 'Izenbururik gabe';

  @override
  String get noProject => 'Proiekturik gabe';

  @override
  String get greetingMorning => 'Egun on';

  @override
  String get greetingAfternoon => 'Arratsalde on';

  @override
  String get greetingEvening => 'Gabon';

  @override
  String get dashFocusToday => 'Gaurko kontzentrazioa';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Hasi kontzentratzen';

  @override
  String get dashFocusRunning => 'Saioa abian';

  @override
  String get dashTodayTasks => 'Gaur amaitzen da';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Gaurko ohiturak';

  @override
  String get dashGoals => 'Helburuak';

  @override
  String get dashReview => 'Errepasoa';

  @override
  String get dashRecentNotes => 'Azken oharrak';

  @override
  String get dashInsight => 'Iradokizuna';

  @override
  String get dashSeeAll => 'Ikusi guztiak';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Errepasatzeko $count txartel',
      one: 'Errepasatzeko txartel 1',
      zero: 'Ez dago errepasatzeko txartelik',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Errepasatu orain';

  @override
  String get dashCustomizeTitle => 'Hasierako atalak';

  @override
  String get dashCustomizeHint => 'Aukeratu hasierako pantailan zer agertzen den.';

  @override
  String get dashSectionFocus => 'Kontzentrazioa';

  @override
  String get dashSectionToday => 'Gaur amaitzen diren zereginak';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Ohiturak';

  @override
  String get dashSectionGoals => 'Helburuak';

  @override
  String get dashSectionReview => 'Txartelen errepasoa';

  @override
  String get dashSectionNotes => 'Azken oharrak';

  @override
  String get dashSectionInsight => 'Iradokizunak';

  @override
  String get quickAddTask => 'Zeregin berria';

  @override
  String get quickAddNote => 'Ohar berria';

  @override
  String get quickAddEvent => 'Gertaera berria';

  @override
  String get quickStartFocus => 'Kontzentrazioa';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atzeratutako $count zeregin dituzu. Hasi garrantzitsuenetik.',
      one: 'Atzeratutako zeregin 1 duzu. Programatu berriro edo amaitu lehenik.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return '$minutes minutu falta zaizkizu eguneko kontzentrazio-helburura iristeko.';
  }

  @override
  String get insightCardsDue => 'Errepasatu txartelak orain, freskoak dauden bitartean.';

  @override
  String get insightAllClear =>
      'Dena ondo doa. Planifikatu bihar edo hartu atseden kontziente bat.';

  @override
  String insightHabitStreak(String habit) {
    return 'Mantendu bolada: $habit egiteke dago oraindik gaur.';
  }

  @override
  String get focusTitle => 'Kontzentrazioa';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Tenporizadorea';

  @override
  String get focusModeCountUp => 'Kronometroa';

  @override
  String get focusModeOpen => 'Librea';

  @override
  String get focusPhaseWork => 'Kontzentrazioa';

  @override
  String get focusPhaseShortBreak => 'Atseden laburra';

  @override
  String get focusPhaseLongBreak => 'Atseden luzea';

  @override
  String get focusReady => 'Prest zaudenean';

  @override
  String get focusPaused => 'Pausatuta';

  @override
  String get focusRunning => 'Kontzentratuta';

  @override
  String get focusDuration => 'Iraupena';

  @override
  String get focusLinkTask => 'Estekatu zeregin bat';

  @override
  String get focusLinkedTask => 'Honetan lanean';

  @override
  String get focusNoTask => 'Ez dago zereginik estekatuta';

  @override
  String focusCycle(int current, int total) {
    return '$current/$total. zikloa';
  }

  @override
  String get focusSkipBreak => 'Saltatu atsedena';

  @override
  String get focusStartBreak => 'Hasi atsedena';

  @override
  String get focusStartNext => 'Hasi hurrengo kontzentrazioa';

  @override
  String get focusSessionComplete => 'Saioa osatuta';

  @override
  String get focusSessionStopped => 'Saioa gordeta';

  @override
  String focusSessionSummary(String duration) {
    return '$duration egon zara kontzentratuta.';
  }

  @override
  String get focusAddNote => 'Gehitu saio honi buruzko ohar bat';

  @override
  String get focusHistory => 'Historia';

  @override
  String get focusNoHistory => 'Osatutako saioak hemen agertuko dira';

  @override
  String get focusTargets => 'Xedeak';

  @override
  String get focusDailyTarget => 'Eguneko xedea';

  @override
  String get focusWeeklyTarget => 'Asteko xedea';

  @override
  String get focusOutcomeCompleted => 'Osatuta';

  @override
  String get focusOutcomeInterrupted => 'Goiz geldituta';

  @override
  String get focusRecovered => 'Saioak aurrera jarraitu du aplikazioa itxita zegoen bitartean.';

  @override
  String get focusCompletedWhileAway =>
      'Saio bat amaitu da aplikazioa itxita zegoen bitartean, eta gorde egin da.';

  @override
  String get focusNotificationsOff =>
      'Jakinarazpenak desaktibatuta daude. Ez duzu abisurik jasoko saio bat amaitzean.';

  @override
  String get focusBatteryHint =>
      'Gailu batzuek aplikazioak pausatzen dituzte atzeko planoan. Tenporizadoreak zehatza izaten jarraitzen du, baina abisuak atzera daitezke. Abisu fidagarriak izateko, baimendu bateria mugarik gabe erabiltzea.';

  @override
  String get focusOpenSettings => 'Ireki ezarpenak';

  @override
  String get focusStopConfirmTitle => 'Saio hau gelditu nahi duzu?';

  @override
  String get focusStopConfirmMessage => 'Orain arteko kontzentrazio-denbora gorde egingo da.';

  @override
  String get focusDiscard => 'Baztertu';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutu',
      one: 'Minutu 1',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time falta';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time igaro dira';
  }

  @override
  String get focusDeleteSession => 'Ezabatu saioa';

  @override
  String get tasksTitle => 'Zereginak';

  @override
  String get tasksViewToday => 'Gaur';

  @override
  String get tasksViewUpcoming => 'Hurrengoak';

  @override
  String get tasksViewAll => 'Guztiak';

  @override
  String get tasksViewOverdue => 'Atzeratuak';

  @override
  String get tasksViewCompleted => 'Osatuak';

  @override
  String get tasksQuickAddHint => 'Gehitu zeregin bat…';

  @override
  String get tasksEmptyTitle => 'Dena eginda';

  @override
  String get tasksEmptyMessage => 'Gehitu zeregin bat zure eguna antolatzen hasteko.';

  @override
  String get tasksEmptyCompleted => 'Osatutako zereginak hemen agertuko dira.';

  @override
  String get taskNew => 'Zeregin berria';

  @override
  String get taskEdit => 'Editatu zeregina';

  @override
  String get taskTitleLabel => 'Izenburua';

  @override
  String get taskTitleHint => 'Zer egin behar da?';

  @override
  String get taskDescriptionLabel => 'Deskribapena';

  @override
  String get taskNotesLabel => 'Oharrak';

  @override
  String get taskPriority => 'Lehentasuna';

  @override
  String get priorityNone => 'Bat ere ez';

  @override
  String get priorityLow => 'Baxua';

  @override
  String get priorityMedium => 'Ertaina';

  @override
  String get priorityHigh => 'Altua';

  @override
  String get priorityUrgent => 'Premiazkoa';

  @override
  String get taskDueDate => 'Epemuga';

  @override
  String get taskStartDate => 'Hasiera-data';

  @override
  String get taskReminder => 'Gogorarazpena';

  @override
  String get taskRepeat => 'Errepikatu';

  @override
  String get taskProject => 'Proiektua';

  @override
  String get taskCategory => 'Kategoria';

  @override
  String get taskCategoryHint => 'adib. Lana, Etxea, Ikasketak';

  @override
  String get taskEstimateMinutes => 'Estimazioa (minutuak)';

  @override
  String get taskTracked => 'Neurtutako kontzentrazioa';

  @override
  String get taskLabels => 'Etiketak';

  @override
  String get taskAddLabel => 'Etiketa berria';

  @override
  String get taskChecklist => 'Egiaztapen-zerrenda';

  @override
  String get taskAddChecklistItem => 'Gehitu elementu bat';

  @override
  String get taskSubtasks => 'Azpizereginak';

  @override
  String get taskAddSubtask => 'Gehitu azpizeregin bat';

  @override
  String get taskDependencies => 'Honek blokeatuta';

  @override
  String get taskAddDependency => 'Gehitu zeregin blokeatzaile bat';

  @override
  String get taskLinkedNotes => 'Estekatutako oharrak';

  @override
  String get taskSetTime => 'Ezarri ordua';

  @override
  String get taskNoDate => 'Datarik gabe';

  @override
  String get taskCompleted => 'Zeregina osatuta';

  @override
  String get taskNextOccurrence => 'Hurrengo errepikapena sortu da';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days egun atzeratuta',
      one: 'Egun 1 atzeratuta',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Markatu “$title” eginda gisa';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Markatu “$title” egin gabe gisa';
  }

  @override
  String get sortSmart => 'Adimentsua';

  @override
  String get sortDueDate => 'Epemuga';

  @override
  String get sortPriority => 'Lehentasuna';

  @override
  String get sortCreated => 'Berrienak';

  @override
  String get sortTitle => 'Izenburua';

  @override
  String get filterAllProjects => 'Proiektu guztiak';

  @override
  String get filterAnyPriority => 'Edozein lehentasun';

  @override
  String get filterTitle => 'Iragazi eta ordenatu';

  @override
  String get dateToday => 'Gaur';

  @override
  String get dateTomorrow => 'Bihar';

  @override
  String get dateYesterday => 'Atzo';

  @override
  String get repeatNever => 'Ez da errepikatzen';

  @override
  String get repeatDaily => 'Egunero';

  @override
  String get repeatWeekdays => 'Lanegun guztietan';

  @override
  String get repeatWeekly => 'Astero';

  @override
  String get repeatMonthly => 'Hilero';

  @override
  String get repeatYearly => 'Urtero';

  @override
  String get repeatCustom => 'Pertsonalizatua';

  @override
  String get repeatEvery => 'Errepikatu';

  @override
  String get repeatOnDays => 'Egun hauetan';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'egunetik behin',
      one: 'egunean behin',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'astetik behin',
      one: 'astean behin',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hiletik behin',
      one: 'hilean behin',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'urtetik behin',
      one: 'urtean behin',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aldiz',
      one: 'Behin',
    );
    return '$_temp0 errepikatu ondoren amaitzen da';
  }

  @override
  String get repeatEndsNever => 'Ez da inoiz amaitzen';

  @override
  String get reminderAtTime => 'Gertaeraren orduan';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutu lehenago',
      one: 'Minutu 1 lehenago',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours ordu lehenago',
      one: 'Ordu 1 lehenago',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => 'Egun 1 lehenago';

  @override
  String get projectsTitle => 'Proiektuak';

  @override
  String get projectsEmptyTitle => 'Oraindik ez dago proiekturik';

  @override
  String get projectsEmptyMessage =>
      'Taldekatu lotutako zereginak, oharrak eta kontzentrazio-denbora.';

  @override
  String get projectNew => 'Proiektu berria';

  @override
  String get projectEdit => 'Editatu proiektua';

  @override
  String get projectName => 'Izena';

  @override
  String get projectDescription => 'Deskribapena';

  @override
  String get projectGoal => 'Helburua';

  @override
  String get projectDeadline => 'Epemuga';

  @override
  String get projectColor => 'Kolorea';

  @override
  String get projectIcon => 'Ikonoa';

  @override
  String get projectProgress => 'Aurrerapena';

  @override
  String projectTasksDone(int done, int total) {
    return '$done/$total zeregin eginda';
  }

  @override
  String get projectFocusTime => 'Kontzentrazio-denbora';

  @override
  String get projectArchived => 'Artxibatutako proiektuak';

  @override
  String get projectShowArchived => 'Erakutsi artxibatuak';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days egun falta dira',
      one: 'Egun 1 falta da',
      zero: 'Gaur amaitzen da',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Epemuga igaro da';

  @override
  String get calendarTitle => 'Egutegia';

  @override
  String get calendarMonth => 'Hilabetea';

  @override
  String get calendarWeek => 'Astea';

  @override
  String get calendarDay => 'Eguna';

  @override
  String get calendarToday => 'Gaur';

  @override
  String get calendarPrevious => 'Aurrekoa';

  @override
  String get calendarNext => 'Hurrengoa';

  @override
  String get calendarNoEvents => 'Ez dago ezer programatuta';

  @override
  String get calendarAllDay => 'Egun osoa';

  @override
  String get eventNew => 'Gertaera berria';

  @override
  String get eventEdit => 'Editatu gertaera';

  @override
  String get eventTitleHint => 'Gertaeraren izenburua';

  @override
  String get eventStarts => 'Hasiera';

  @override
  String get eventEnds => 'Amaiera';

  @override
  String get eventKind => 'Mota';

  @override
  String get eventKindEvent => 'Gertaera';

  @override
  String get eventKindTimeBlock => 'Denbora-blokea';

  @override
  String get eventKindFocus => 'Kontzentrazio-saioa';

  @override
  String get eventKindGoal => 'Helburu pertsonala';

  @override
  String get eventDescription => 'Xehetasunak';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gertaerarekin gainjartzen da',
      one: 'Gertaera batekin gainjartzen da',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Programazio-gatazkak egun honetan';

  @override
  String get calendarTaskDue => 'Amaitzen den zeregina';

  @override
  String get calendarDragHint => 'Luze sakatu eta arrastatu gertaera bat berriro programatzeko';

  @override
  String get calendarRescheduled => 'Gertaera mugitu da';

  @override
  String get calendarScheduleTask => 'Programatu denbora-bloke gisa';

  @override
  String get notesTitle => 'Oharrak';

  @override
  String get notesViewAll => 'Guztiak';

  @override
  String get notesViewPinned => 'Ainguratuak';

  @override
  String get notesViewFavorites => 'Gogokoak';

  @override
  String get notesViewArchived => 'Artxibatuak';

  @override
  String get notesTags => 'Etiketak';

  @override
  String get notesNewNotebook => 'Koaderno berria';

  @override
  String get notesNoNotebook => 'Koadernorik gabe';

  @override
  String get notesEmptyTitle => 'Orri zuri bat';

  @override
  String get notesEmptyMessage => 'Jaso ideiak, bileretako oharrak eta jakintza.';

  @override
  String get noteTitleHint => 'Izenburua';

  @override
  String get noteBodyHint =>
      'Hasi idazten… Erabili # etiketetarako eta [[Izenburua]] oharrak estekatzeko.';

  @override
  String get noteFavorite => 'Gogokoa';

  @override
  String get noteUnfavorite => 'Kendu gogokoetatik';

  @override
  String get noteMoveTo => 'Eraman koadernora';

  @override
  String get noteBacklinks => 'Hemendik estekatuta';

  @override
  String get noteLinkedTasks => 'Estekatutako zereginak';

  @override
  String get noteLinkTask => 'Estekatu zeregin bat';

  @override
  String get noteLinkProject => 'Proiektua';

  @override
  String get noteFormatHeading => 'Goiburua';

  @override
  String get noteFormatBold => 'Lodia';

  @override
  String get noteFormatItalic => 'Etzana';

  @override
  String get noteFormatList => 'Buletdun zerrenda';

  @override
  String get noteFormatChecklist => 'Egiaztapen-zerrenda';

  @override
  String get noteFormatLink => 'Esteka';

  @override
  String noteEdited(String time) {
    return 'Editatuta: $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hitz',
      one: 'Hitz 1',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Txartelak';

  @override
  String get flashEmptyTitle => 'Sortu zure lehen sorta';

  @override
  String get flashEmptyMessage =>
      'Errepikapen tartekatuak txartel bakoitza ahaztu baino lehentxeago erakusten du.';

  @override
  String get deckNew => 'Sorta berria';

  @override
  String get deckEdit => 'Editatu sorta';

  @override
  String get deckName => 'Sortaren izena';

  @override
  String get deckDescription => 'Deskribapena';

  @override
  String get deckDailyNew => 'Txartel berriak eguneko';

  @override
  String get deckDailyReview => 'Eguneko errepaso-xedea';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel',
      one: 'Txartel 1',
      zero: 'Ez dago txartelik',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Errepasatzeko';

  @override
  String get deckNewCards => 'Berriak';

  @override
  String get deckMature => 'Finkatuak';

  @override
  String get deckStudy => 'Ikasi';

  @override
  String get deckNothingDue => 'Une honetan ez dago ezer errepasatzeko. Itzuli geroago.';

  @override
  String get deckEmptyCards => 'Gehitu txartelak ikasten hasteko.';

  @override
  String get cardNew => 'Txartel berria';

  @override
  String get cardEdit => 'Editatu txartela';

  @override
  String get cardFront => 'Aurrealdea';

  @override
  String get cardBack => 'Atzealdea';

  @override
  String get cardFrontHint => 'Galdera edo terminoa';

  @override
  String get cardBackHint => 'Erantzuna edo definizioa';

  @override
  String get cardTags => 'Etiketak';

  @override
  String get cardAddAnother => 'Gorde eta gehitu beste bat';

  @override
  String get reviewShowAnswer => 'Erakutsi erantzuna';

  @override
  String get reviewAgain => 'Berriro';

  @override
  String get reviewHard => 'Zaila';

  @override
  String get reviewGood => 'Ondo';

  @override
  String get reviewEasy => 'Erraza';

  @override
  String reviewProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String get reviewFinishedTitle => 'Saioa osatuta';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel errepasatu dituzu.',
      one: 'Txartel 1 errepasatu duzu.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Sakatu erantzuna ikusteko';

  @override
  String get importCardsTitle => 'Inportatu txartelak';

  @override
  String get importCardsHint =>
      'Itsatsi txartel bat lerro bakoitzeko (aurrealdea eta atzealdea tabulazio batez edo puntu eta komaz bereizita), edo aukeratu fitxategi bat: Excel (.xlsx), CSV, Anki sorta bat (.apkg) edo esportatutako sorta bat.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel inportatu dira',
      one: 'Txartel 1 inportatu da',
      zero: 'Ez da txartelik inportatu',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Ezin izan da eduki hau inportatu.';

  @override
  String get exportCopied => 'Sorta esportatu da';

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
      other: '$count egun',
      one: 'Egun 1',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Helburuak';

  @override
  String get goalsEmptyTitle => 'Jarri helburu bat';

  @override
  String get goalsEmptyMessage =>
      'Ezarri eguneko, asteko, hileko edo epe luzeko helburuak eta jarraitu benetako aurrerapena.';

  @override
  String get goalNew => 'Helburu berria';

  @override
  String get goalEdit => 'Editatu helburua';

  @override
  String get goalTitleHint => 'Zer lortu nahi duzu?';

  @override
  String get goalPeriod => 'Aldia';

  @override
  String get goalPeriodDaily => 'Egunekoa';

  @override
  String get goalPeriodWeekly => 'Astekoa';

  @override
  String get goalPeriodMonthly => 'Hilekoa';

  @override
  String get goalPeriodLongTerm => 'Epe luzekoa';

  @override
  String get goalTarget => 'Xedea';

  @override
  String get goalUnit => 'Unitatea';

  @override
  String get goalUnitHint => 'adib. orriak, km, orduak';

  @override
  String get goalStatusActive => 'Aktiboa';

  @override
  String get goalStatusPaused => 'Pausatuta';

  @override
  String get goalStatusAchieved => 'Lortuta';

  @override
  String get goalPause => 'Pausatu helburua';

  @override
  String get goalResume => 'Berrekin helburuari';

  @override
  String get goalMarkAchieved => 'Markatu lortutzat';

  @override
  String goalProgressOf(String current, String target) {
    return '$current/$target';
  }

  @override
  String get goalLogAmount => 'Kopurua';

  @override
  String get goalLogNote => 'Oharra (aukerakoa)';

  @override
  String get goalHistory => 'Historia';

  @override
  String get goalNoHistory => 'Erregistratutako aurrerapena hemen agertuko da';

  @override
  String get goalLinkedTasks => 'Estekatutako zereginak';

  @override
  String get goalLinkedTasksHint =>
      'Estekatutako zeregin osatu bakoitzak 1 balio du helburu honetarako.';

  @override
  String get goalThisPeriod => 'Aldi hau';

  @override
  String get habitsTitle => 'Ohiturak';

  @override
  String get habitsEmptyTitle => 'Urrats txikiak, egunero';

  @override
  String get habitsEmptyMessage => 'Sortu ohitura bat eta markatu egiten duzunean.';

  @override
  String get habitNew => 'Ohitura berria';

  @override
  String get habitEdit => 'Editatu ohitura';

  @override
  String get habitNameHint => 'adib. Irakurri 20 orri';

  @override
  String get habitDays => 'Programazioa';

  @override
  String get habitEveryDay => 'Egunero';

  @override
  String get habitTargetPerDay => 'Aldiz egunean';

  @override
  String get habitReminder => 'Eguneko gogorarazpena';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eguneko bolada',
      one: 'Egun 1eko bolada',
      zero: 'Boladarik ez',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Boladarik onena';

  @override
  String get habitCurrentStreak => 'Uneko bolada';

  @override
  String get habitConsistency => 'Jarraitutasuna';

  @override
  String get habitLast90 => 'Azken 90 egunak';

  @override
  String get habitPaused => 'Pausatuta';

  @override
  String get habitPause => 'Pausatu ohitura';

  @override
  String get habitResume => 'Berrekin ohiturari';

  @override
  String get habitDoneToday => 'Gaur eginda';

  @override
  String habitCountToday(int count, int target) {
    return 'Gaur $count/$target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Markatu “$name”';
  }

  @override
  String get habitNotScheduledToday => 'Gaur ez dago programatuta';

  @override
  String get analyticsTitle => 'Estatistikak';

  @override
  String get rangeWeek => '7 egun';

  @override
  String get rangeMonth => '30 egun';

  @override
  String get rangeQuarter => '90 egun';

  @override
  String get statFocusTime => 'Kontzentrazio-denbora';

  @override
  String get statSessions => 'Saioak';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed osatuta · $interrupted goiz geldituta';
  }

  @override
  String get statTasksDone => 'Osatutako zereginak';

  @override
  String get statCompletionRate => 'Garaiz osatuak';

  @override
  String get statHabitConsistency => 'Ohituren jarraitutasuna';

  @override
  String get statRetention => 'Txartelen oroimena';

  @override
  String get statReviews => 'Errepasoak';

  @override
  String get statActiveGoals => 'Helburu aktiboak';

  @override
  String get statEstimated => 'Osatutako lan estimatua';

  @override
  String get statEstimatedNote => 'Zure estimazioetan oinarrituta, ez neurtutako denboran';

  @override
  String get statMeasuredNote => 'Kontzentrazio-saioetatik neurtuta';

  @override
  String get chartFocusByDay => 'Kontzentrazio-minutuak eguneko';

  @override
  String get chartTasksByDay => 'Osatutako zereginak eguneko';

  @override
  String get chartTimeByProject => 'Denbora proiektuka';

  @override
  String get chartProjectProgress => 'Proiektuen aurrerapena';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: guztira $total, egunik onena $best';
  }

  @override
  String get analyticsNoData => 'Oraindik ez dago datu nahikorik';

  @override
  String get analyticsUnassigned => 'Esleitu gabe';

  @override
  String get searchHint => 'Bilatu dena…';

  @override
  String get searchRecent => 'Azken bilaketak';

  @override
  String get searchClearRecent => 'Garbitu azken bilaketak';

  @override
  String searchNoResults(String query) {
    return 'Ez dago emaitzarik “$query” bilatzean';
  }

  @override
  String get searchStartTyping =>
      'Bilatu zereginetan, oharretan, txarteletan, helburuetan, gertaeretan eta beste. Bilaketa gailu honetan geratzen da.';

  @override
  String get searchCatTask => 'Zereginak';

  @override
  String get searchCatProject => 'Proiektuak';

  @override
  String get searchCatNote => 'Oharrak';

  @override
  String get searchCatFlashcard => 'Txartelak';

  @override
  String get searchCatDeck => 'Sortak';

  @override
  String get searchCatGoal => 'Helburuak';

  @override
  String get searchCatHabit => 'Ohiturak';

  @override
  String get searchCatEvent => 'Gertaerak';

  @override
  String get searchCatSession => 'Saioak';

  @override
  String get searchAll => 'Guztiak';

  @override
  String get assistantTitle => 'Laguntzailea';

  @override
  String get assistantIntro =>
      'Zure gailuan dabilen plangintza-laguntza. Nahi baduzu, konektatu zuk aukeratutako AA hornitzaile bat laburpenak eta sorkuntza egiteko.';

  @override
  String get assistantOnDevice => 'Gailuan';

  @override
  String get assistantCloud => 'AA hornitzailea';

  @override
  String get assistantPlanDay => 'Planifikatu nire eguna';

  @override
  String get assistantPlanDayDesc =>
      'Zeregin irekiak premiaren, lehentasunaren eta estimazioaren arabera ordenatzen ditu, eta zure gertaeren artean kokatzen ditu.';

  @override
  String get assistantExtractTasks => 'Atera zereginak ohar batetik';

  @override
  String get assistantExtractTasksDesc =>
      'Ohar bateko zerrenda-elementuak eta ekintza-lerroak aurkitzen ditu eta zeregin bihurtzen ditu.';

  @override
  String get assistantMakeCards => 'Sortu txartelak ohar batetik';

  @override
  String get assistantMakeCardsDesc =>
      '“terminoa: definizioa” eta galdera/erantzun lerroak txartel bihurtzen ditu.';

  @override
  String get assistantSummarize => 'Laburtu ohar bat';

  @override
  String get assistantSummarizeDesc =>
      'AA hornitzaile bat behar da. Oharra berretsi ondoren bakarrik bidaltzen da.';

  @override
  String get assistantWorkload => 'Lan-kargaren ikuspegia';

  @override
  String get assistantWorkloadDesc =>
      'Lan estimatua aste honetako zure denbora librearekin alderatzen du.';

  @override
  String get assistantPlanEmpty => 'Ez dago planifikatzeko zeregin irekirik. Gozatu tarteaz.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Gaurko kontzentrazio-denbora librea: $time';
  }

  @override
  String get assistantPlanOverflow => 'Hauek agian ez dira gaur sartuko:';

  @override
  String get assistantChooseNote => 'Aukeratu ohar bat';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zeregin aurkitu dira',
      one: 'Zeregin 1 aurkitu da',
      zero: 'Ez da zereginik aurkitu ohar honetan',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel aurkitu dira',
      one: 'Txartel 1 aurkitu da',
      zero: 'Ez da txartelik aurkitu ohar honetan',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Aukeratu sorta bat';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Lan estimatua: $estimated. Denbora librea: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Daukazun denbora baino gehiago planifikatu duzu. Pentsatu lehentasun txikiagoko zereginak mugitzea.';

  @override
  String get assistantWorkloadOk => 'Zure plana erabilgarri duzun denboran sartzen da.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zeregin irekik ez dute estimaziorik.',
      one: 'Zeregin ireki 1ek ez du estimaziorik.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AA hornitzailea';

  @override
  String get assistantProviderOff =>
      'Ez dago hornitzailerik konektatuta. Gailuko tresnek funtzionatzen jarraitzen dute.';

  @override
  String assistantProviderOn(String host) {
    return '$host zerbitzarira konektatuta';
  }

  @override
  String get assistantEndpoint => 'APIaren amaiera-puntua (HTTPS)';

  @override
  String get assistantModel => 'Eredua';

  @override
  String get assistantApiKey => 'API gakoa';

  @override
  String get assistantApiKeyStored => 'Gailu honetan modu seguruan gordeta';

  @override
  String get assistantHttpsOnly => 'HTTPS amaiera-puntuak soilik onartzen dira';

  @override
  String get assistantConsentTitle => 'Eduki hau zure AA hornitzaileari bidali nahi diozu?';

  @override
  String assistantConsentBody(String host) {
    return 'Hautatutako oharraren testuak gailu hau utziko du eta $host zerbitzariak prozesatuko du. Ez da beste ezer bidaltzen.';
  }

  @override
  String get assistantConsentAlways => 'Ez galdetu berriro hornitzaile honentzat';

  @override
  String get assistantSend => 'Bidali';

  @override
  String get assistantUnavailable =>
      'Ezin izan da AA hornitzailearekin konektatu. Saiatu berriro geroago.';

  @override
  String get assistantDisabledTitle => 'Laguntzailea desaktibatuta dago';

  @override
  String get assistantDisabledMessage =>
      'Aktibatu plangintza-tresnak erabiltzeko. Daturik ez da gailutik irtengo hornitzaile bat konektatu eta eskaera bakoitza berresten ez baduzu.';

  @override
  String get assistantSummaryTitle => 'Laburpena';

  @override
  String get assistantRemoveProvider => 'Kendu hornitzailea';

  @override
  String get settingsTitle => 'Ezarpenak';

  @override
  String get settingsGeneral => 'Orokorra';

  @override
  String get settingsLanguage => 'Hizkuntza';

  @override
  String get settingsLanguageSystem => 'Gailuaren hizkuntza';

  @override
  String get settingsAppearance => 'Itxura';

  @override
  String get settingsTheme => 'Gaia';

  @override
  String get themeLight => 'Argia';

  @override
  String get themeDark => 'Iluna';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get settingsReduceMotion => 'Murriztu mugimendua';

  @override
  String get settingsReduceMotionDesc => 'Gutxitu animazioak eta mugitzen diren atzeko planoak';

  @override
  String get settingsFocus => 'Kontzentrazio-tenporizadorea';

  @override
  String get settingsWorkLength => 'Kontzentrazioaren iraupena';

  @override
  String get settingsShortBreak => 'Atseden laburra';

  @override
  String get settingsLongBreak => 'Atseden luzea';

  @override
  String get settingsLongBreakEvery => 'Atseden luzea hau igarotakoan';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saio',
      one: 'Saio 1',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Hasi atsedenak automatikoki';

  @override
  String get settingsSound => 'Amaierako soinua';

  @override
  String get settingsDailyFocusTarget => 'Eguneko kontzentrazio-xedea';

  @override
  String get settingsWeeklyFocusTarget => 'Asteko kontzentrazio-xedea';

  @override
  String get settingsNotifications => 'Jakinarazpenak';

  @override
  String get settingsNotificationsEnable => 'Baimendu gogorarazpenak';

  @override
  String get settingsQuietHours => 'Isilune-orduak';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Ohitura, helburu eta errepasoen gogorarazpenak isilarazi egiten dira $start–$end bitartean';
  }

  @override
  String get settingsReviewReminder => 'Txartelen errepasorako gogorarazpena';

  @override
  String get settingsPermissionDenied => 'Jakinarazpenak blokeatuta daude sistemaren ezarpenetan.';

  @override
  String get settingsPrivacy => 'Pribatutasuna eta datuak';

  @override
  String get settingsPrivacyStatement =>
      'Zure datuak gailu honetan bakarrik gordetzen dira eta zifratuta daude. Ez dago konturik, analitikarik ez jarraipenik.';

  @override
  String get settingsBackup => 'Sortu babeskopia zifratua';

  @override
  String get settingsBackupDesc => 'Zuk aukeratutako pasahitz batez babestua';

  @override
  String get settingsRestore => 'Leheneratu babeskopiatik';

  @override
  String get settingsRestoreDesc => 'Gailu honetako datu guztiak ordezten ditu';

  @override
  String get settingsErase => 'Ezabatu datu guztiak';

  @override
  String get settingsEraseDesc => 'Ezabatu betiko gailu honetako guztia';

  @override
  String get settingsEraseConfirmTitle => 'Datu guztiak ezabatu nahi dituzu?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Zeregin, ohar, txartel, helburu, ohitura, gertaera eta saio guztiak betiko ezabatuko dira. Berresteko, idatzi $word.';
  }

  @override
  String get settingsEraseWord => 'EZABATU';

  @override
  String get settingsErased => 'Datu guztiak ezabatu dira';

  @override
  String get backupPassword => 'Babeskopiaren pasahitza';

  @override
  String get backupPasswordConfirm => 'Berretsi pasahitza';

  @override
  String backupPasswordHint(int count) {
    return 'Gutxienez $count karaktere. Galtzen baduzu, ezin da berreskuratu.';
  }

  @override
  String get backupPasswordMismatch => 'Pasahitzak ez datoz bat';

  @override
  String get backupPasswordShort => 'Pasahitza laburregia da';

  @override
  String get backupCreating => 'Babeskopia zifratzen…';

  @override
  String get backupCreated => 'Babeskopia gordetzeko prest';

  @override
  String get backupRestoring => 'Egiaztatzen eta leheneratzen…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementu leheneratu dira',
      one: 'Elementu 1 leheneratu da',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Pasahitz okerra, edo fitxategia aldatu egin da.';

  @override
  String get backupNotABackup => 'Fitxategi hau ez da Deep Focus babeskopia bat.';

  @override
  String get backupCorrupted => 'Babeskopia-fitxategia hondatuta dago.';

  @override
  String get backupNewer =>
      'Babeskopia hau aplikazioaren bertsio berriago batek egin du. Eguneratu lehenik.';

  @override
  String get backupRestoreConfirmTitle => 'Datu guztiak ordeztu nahi dituzu?';

  @override
  String get backupRestoreConfirmBody =>
      'Gailu honetan orain dagoen guztia babeskopiarekin ordeztuko da. Leheneratzeak huts egiten badu, ez da ezer aldatzen.';

  @override
  String get settingsAbout => 'Honi buruz';

  @override
  String settingsVersion(String version) {
    return '$version bertsioa';
  }

  @override
  String get settingsLicenses => 'Kode irekiko lizentziak';

  @override
  String get settingsAssistant => 'Laguntzailea';

  @override
  String get settingsAssistantEnable => 'Gaitu laguntzailea';

  @override
  String get settingsDashboard => 'Hasierako atalak';

  @override
  String get settingsTrash => 'Zakarrontzia';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Zakarrontzia hutsik dago';

  @override
  String get trashHint => 'Ezabatutako elementuak hemen geratzen dira kentzen dituzun arte.';

  @override
  String get trashTasks => 'Zereginak';

  @override
  String get trashNotes => 'Oharrak';

  @override
  String get onboardWelcomeTitle => 'Ongi etorri zure etorkizuneko lanlekura';

  @override
  String get onboardWelcomeBody =>
      'Zereginak, kontzentrazioa, egutegia, oharrak, txartelak, helburuak eta ohiturak — elkarrekin, eder eta sinple.';

  @override
  String get onboardPrivateTitle => 'Pribatua diseinuz';

  @override
  String get onboardPrivateBody =>
      'Dena gailu honetan geratzen da, zifratuta. Konturik ez. Jarraipenik ez. Zuk duzu kontrola.';

  @override
  String get onboardLanguageTitle => 'Aukeratu hizkuntza';

  @override
  String get onboardNotifTitle => 'Gogorarazpen leunak';

  @override
  String get onboardNotifBody =>
      'Baimendu jakinarazpenak zereginen gogorarazpenetarako eta kontzentrazio-abisuetarako. Edonoiz alda dezakezu.';

  @override
  String get onboardGetStarted => 'Hasi';

  @override
  String onboardStep(int current, int total) {
    return '$current/$total. urratsa';
  }

  @override
  String get notifChannelReminders => 'Gogorarazpenak';

  @override
  String get notifChannelRemindersDesc => 'Zeregin, gertaera, ohitura eta helburuen gogorarazpenak';

  @override
  String get notifChannelFocus => 'Kontzentrazio-tenporizadorea';

  @override
  String get notifChannelFocusDesc => 'Abisuak kontzentrazio-saio bat edo atseden bat amaitzean';

  @override
  String get notifTaskTitle => 'Zereginaren gogorarazpena';

  @override
  String get notifEventTitle => 'Datorren gertaera';

  @override
  String notifEventBody(String title, String time) {
    return '$title ($time)';
  }

  @override
  String get notifFocusDoneTitle => 'Kontzentrazio-saioa osatuta';

  @override
  String get notifFocusDoneBody => 'Lan bikaina. Atseden hartzeko garaia da.';

  @override
  String get notifBreakDoneTitle => 'Atsedena amaitu da';

  @override
  String get notifBreakDoneBody => 'Prest hurrengo kontzentrazio-saiorako?';

  @override
  String get notifHabitTitle => 'Ohituraren gogorarazpena';

  @override
  String get notifReviewTitle => 'Txartelak prest daude';

  @override
  String get notifReviewBody => 'Errepaso labur batek oroimena sendo mantentzen du.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationHours(int hours) {
    return '$hours h';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String percentValue(int value) {
    return '% $value';
  }

  @override
  String get weekdaysShort => 'A,A,A,O,O,L,I';

  @override
  String a11yProgress(int value) {
    return 'Aurrerapena: ehuneko $value';
  }

  @override
  String a11yPriority(String level) {
    return 'Lehentasuna: $level';
  }

  @override
  String a11yColor(int index) {
    return '$index. kolorea';
  }

  @override
  String get analyticsRangeLabel => 'Denbora-tartea';

  @override
  String get analyticsRefresh => 'Freskatu';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return 'Epemuga duten $total zereginetatik $done garaiz eginda';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done/$total zeregin eginda';
  }

  @override
  String get analyticsNoProjects => 'Ez dago proiektu aktiborik';

  @override
  String get analyticsNoFocus => 'Ez dago kontzentrazio-saiorik tarte honetan';

  @override
  String get analyticsHabitsNone => 'Ez dago ohitura aktiborik';

  @override
  String get analyticsRetentionNote => 'Gogoratu dituzun txartel finkatuen proportzioa';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Denbora librea $start–$end bitartean zenbatzen da lanegunetan ($days), ordua duten gertaerak kenduta. Lan estimatua hurrengo 7 egunetan amaitzen diren zeregin irekien estimazioen batura da.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Astelehenetik ostiralera';

  @override
  String get assistantWorkdaysSunThu => 'Igandetik ostegunera';

  @override
  String get assistantWorkloadDayOff => 'Jai-eguna';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planifikatuta · $free libre';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Oraindik $end arte planifikatuta, gaurko gertaeren inguruan. Lehenik zeregin atzeratuak, gero lehentasuna, epemuga eta estimazioa.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Programatu denbora-bloke gisa';

  @override
  String get assistantScheduleConfirmTitle => 'Denbora-blokeak gehitu nahi dituzu egutegian?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count denbora-bloke gehituko dira gaurko egutegian.',
      one: 'Denbora-bloke 1 gehituko da gaurko egutegian.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count denbora-bloke gehitu dira',
      one: 'Denbora-bloke 1 gehitu da',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Dagoeneko zure egutegian';

  @override
  String get assistantPlanTimeline => 'Gaur sartzen da';

  @override
  String get assistantNoEstimate => 'Gehitu estimazio bat hauek planifikatzeko';

  @override
  String get assistantNoNotes => 'Oraindik ez dago oharrik. Idatzi ohar bat lehenik.';

  @override
  String get assistantNoteEmpty => 'Ohar hau hutsik dago.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zeregin sortu dira',
      one: 'Zeregin 1 sortu da',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel sortu dira',
      one: 'Txartel 1 sortu da',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sortu $count',
      one: 'Sortu 1',
      zero: 'Ez dago ezer hautatuta',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Ezagutzen dira: markatu gabeko kontrol-laukiak “- [ ]” eta TODO: edo To do: hitzekin hasten diren lerroak';

  @override
  String get assistantCardsHint =>
      'Ezagutzen dira: “terminoa: definizioa”, “terminoa — definizioa” eta Q:/A: lerro-bikoteak';

  @override
  String get assistantProviderHint =>
      'Erabili OpenAIrekin bateragarria den edozein zerbitzu. Gakoa gailu honen biltegi seguruan geratzen da eta ez da inoiz babeskopietan sartzen.';

  @override
  String get assistantEndpointHelp => 'Adibidez, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Utzi hutsik gordetako gakoa mantentzeko';

  @override
  String get assistantApiKeyRequired => 'Idatzi API gako bat';

  @override
  String get assistantProviderSaved => 'Hornitzailea gorde da';

  @override
  String get assistantProviderRemoved => 'Hornitzailea kendu eta gakoa ezabatu da';

  @override
  String get assistantRemoveProviderConfirm =>
      'Hornitzailea kendu eta gordetako API gakoa gailu honetatik ezabatu nahi duzu?';

  @override
  String get assistantAskEveryTime => 'Galdetu eskaera bakoitzaren aurretik';

  @override
  String get assistantSummarizing => 'Laburtzen…';

  @override
  String assistantSummaryNote(String host) {
    return '$host zerbitzariak sortua. Berrikusi fidatu aurretik.';
  }

  @override
  String get assistantCopy => 'Kopiatu';

  @override
  String get assistantCopied => 'Kopiatuta';

  @override
  String get assistantConfigure => 'Konfiguratu hornitzailea';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Serie honetako gertaera guztiak mugitu dira';

  @override
  String get calendarEventReminder => 'Gogorarazpena';

  @override
  String get calendarEventRepeat => 'Errepikatu';

  @override
  String get calendarEventColor => 'Kolorea';

  @override
  String get calendarDefaultColor => 'Erabili motaren kolorea';

  @override
  String get calendarEventLinkedTask => 'Estekatutako zeregina';

  @override
  String get calendarEventNoTask => 'Ez dago zereginik estekatuta';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gertaera',
      one: 'Gertaera 1',
      zero: 'Ez dago gertaerarik',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zeregin amaitzen dira',
      one: 'zeregin 1 amaitzen da',
      zero: 'ez dago amaitzen den zereginik',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Gehitu gertaera bat edo denbora-bloke bat egun hau planifikatzeko.';

  @override
  String get calendarNow => 'Uneko ordua';

  @override
  String get calendarRecurring => 'Errepikatzen da';

  @override
  String get calendarEventNotFound => 'Gertaera hau ez da existitzen jada';

  @override
  String get calendarEventLocalTime => 'Orduak gailuaren ordu-eremuan erakusten dira';

  @override
  String get calendarEventDeleted => 'Gertaera zakarrontzira eraman da';

  @override
  String get calendarConflictMarker => 'Beste gertaera batekin gainjartzen da';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote =>
      'Aldaketak serie honetako gertaera guztiei aplikatzen zaizkie';

  @override
  String get calendarDragHintSeries =>
      'Errepikatzen den gertaera bat arrastatzean serie osoa mugitzen da';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, amaitzen den zeregina';
  }

  @override
  String get startupErrorTitle => 'Ezin izan dira zure datuak ireki';

  @override
  String get startupErrorLocked =>
      'Gailu honetako datuen zifratze-gakoa ez dago erabilgarri. Ez da ezer ezabatu. Askotan gailua berrabiaraztea lagungarria da. Duela gutxi gailua leheneratu baduzu, leheneratu datuak babeskopia zifratu batetik.';

  @override
  String get startupErrorCipher =>
      'Gailu honek ez du onartzen aplikazioak behar duen biltegi zifratua. Ez da ezer zifratu gabe gorde.';

  @override
  String get startupErrorRetry => 'Saiatu berriro';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel errepasatu behar dira',
      one: 'Txartel 1 errepasatu behar da',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count errepasatzeko';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count berri';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Txartel finkatuak: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Idatzi 0 edo gehiago';

  @override
  String get flashcardsSearchCards => 'Bilatu txartelak';

  @override
  String get flashcardsSearchEmpty => 'Ez dago bilaketarekin bat datorren txartelik';

  @override
  String get flashcardsCardAdded => 'Txartela gehitu da';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Errepasatzeko: $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopiatu arbelean';

  @override
  String get flashcardsExportTitle => 'Esportatu sorta';

  @override
  String get flashcardsDeleteDeck => 'Ezabatu sorta';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, hurrengo errepasoa $interval barru';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Galdera: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Erantzuna: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Erakutsi galdera';

  @override
  String get flashcardsImportField => 'Inportatzeko txartelak';

  @override
  String get flashcardsNothingToStudy => 'Ez dago ikasteko ezer';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel ikasteko prest',
      one: 'Txartel 1 ikasteko prest',
      zero: 'Ez dago txartelik prest',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Balorazioaren arabera';

  @override
  String get flashcardsDeckNotFound => 'Sorta hau ez dago erabilgarri jada.';

  @override
  String get focusSessionDeleted => 'Saioa ezabatu da';

  @override
  String get focusDeleteConfirm =>
      'Saio hau historiatik ezabatu nahi duzu? Bere denbora ez da gehiago zenbatuko zure xedeetarako.';

  @override
  String get focusUnlinkTask => 'Kendu estekatutako zeregina';

  @override
  String get focusNoteHint => 'Zertan aritu zara?';

  @override
  String get focusTargetCaption => 'Gordetako saioetatik neurtuta';

  @override
  String get focusModeLabel => 'Tenporizadorearen modua';

  @override
  String focusUpNext(String phase) {
    return 'Hurrengoa: $phase';
  }

  @override
  String get focusStopwatchHint => 'Gorantz zenbatzen du gelditzen duzun arte.';

  @override
  String get focusOpenHint => 'Denbora-mugarik gabe. Gelditu amaitzen duzunean.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Gogorarazpenak desaktibatuta daude ezarpenetan. Ez duzu abisurik jasoko saio bat amaitzean.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Guztiak';

  @override
  String get goalsFilterPeriod => 'Aldiaren iragazkia';

  @override
  String get goalsFilterStatus => 'Egoeraren iragazkia';

  @override
  String get goalsEmptyFiltered => 'Ez dago iragazki honekin bat datorren helbururik';

  @override
  String goalsDueOn(String date) {
    return 'Epemuga: $date';
  }

  @override
  String get goalsDeadline => 'Epemuga (aukerakoa)';

  @override
  String get goalsNoDeadline => 'Epemugarik gabe';

  @override
  String get goalsSetDeadline => 'Ezarri epemuga';

  @override
  String get goalsRemoveDeadline => 'Kendu epemuga';

  @override
  String get goalsDescription => 'Deskribapena (aukerakoa)';

  @override
  String get goalsTitleLabel => 'Izenburua';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Xedea lortuta';

  @override
  String get goalsLogged => 'Aurrerapena erregistratu da';

  @override
  String get goalsEntryDeleted => 'Sarrera kendu da';

  @override
  String get goalsDeleteEntry => 'Kendu sarrera';

  @override
  String get goalsDeleted => 'Helburua ezabatu da';

  @override
  String get goalsMarkActive => 'Markatu aktibo gisa';

  @override
  String get goalsNotFound => 'Helburu hau ez dago erabilgarri jada';

  @override
  String get goalsLinkTask => 'Estekatu zeregin bat';

  @override
  String get goalsNoLinkedTasks => 'Oraindik ez dago zeregin estekaturik';

  @override
  String get goalsUnlinkTask => 'Desestekatu zeregina';

  @override
  String get goalsTaskOpen => 'Oraindik osatu gabe';

  @override
  String get goalsTaskLinked => 'Zeregina estekatu da';

  @override
  String get goalsTaskUnlinked => 'Zeregina desestekatu da';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'estekatutako $count zeregin osatu',
      one: 'estekatutako zeregin osatu 1',
    );
    return 'Aldi honetan $_temp0 barne';
  }

  @override
  String get goalsHistoryAllTime =>
      'Aurreko aldietako sarrerak hemen gordetzen dira, baina beren aldirako bakarrik zenbatzen dira.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Gaur $done/$total eginda';
  }

  @override
  String get habitsNothingToday => 'Ez dago ohiturarik programatuta gaurko';

  @override
  String get habitsDecrease => 'Kendu marka bat';

  @override
  String get habitsResetToday => 'Berrezarri gaurkoa';

  @override
  String get habitsCheckInHint => 'Luze sakatu doitzeko';

  @override
  String get habitsName => 'Izena';

  @override
  String get habitsColor => 'Kolorea';

  @override
  String get habitsValidationDays => 'Aukeratu egun bat gutxienez';

  @override
  String habitsReminderAt(String time) {
    return 'Egunero $time(e)tan';
  }

  @override
  String get habitsSetReminder => 'Ezarri gogorarazpenaren ordua';

  @override
  String get habitsRemoveReminder => 'Kendu gogorarazpena';

  @override
  String get habitsReminderNote =>
      'Gogorarazpenak programatutako egunetan agertzen dira jakinarazpenak baimenduta badaude.';

  @override
  String get habitsArchived => 'Ohitura artxibatu da';

  @override
  String get habitsNotFound => 'Ohitura hau ez dago erabilgarri jada';

  @override
  String get habitsLast30 => 'Azken 30 egunak';

  @override
  String get habitsConsistencyNone => 'Oraindik ez dago datu nahikorik';

  @override
  String get habitsCalendar => 'Marken historia';

  @override
  String get habitsCalendarHint => 'Sakatu egun bat zuzentzeko.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count/$target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Azken 90 egunetako markak. Jarraitutasuna: $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Azken 90 egunetako markak. Oraindik ez dago datu nahikorik.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count egun',
      one: 'Egun 1',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Pausatutako egunek ez dute boladan eraginik.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Artxibatu ohitura';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aldiz egunean',
      one: 'Egunean behin',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Beste oharrak';

  @override
  String get notesAllNotebooks => 'Koaderno guztiak';

  @override
  String get notesNotebookName => 'Koadernoaren izena';

  @override
  String get notesNotebookColor => 'Kolorea';

  @override
  String get notesDeleteNotebook => 'Ezabatu koadernoa';

  @override
  String get notesDeleteNotebookMessage =>
      'Koadernoa kendu egingo da. Bere oharrak gorde egiten dira eta Koaderno guztiak atalean agertzen dira.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Ainguratu ohar garrantzitsuak goian mantentzeko.';

  @override
  String get notesEmptyFavorites => 'Gogoko gisa markatzen dituzun oharrak hemen agertzen dira.';

  @override
  String get notesEmptyArchived => 'Artxibatutako oharrak hemen agertzen dira.';

  @override
  String get notesEmptyFiltered => 'Ez dago iragazki hauekin bat datorren oharrik.';

  @override
  String get notesArchivedSnack => 'Oharra artxibatu da';

  @override
  String get notesUnarchivedSnack => 'Oharra zure oharretara itzuli da';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done/$total eginda';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatua';

  @override
  String get notesWrite => 'Idatzi';

  @override
  String get notesPreviewEmpty => 'Oraindik ez dago aurrebistan erakusteko ezer.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Oraindik ez dago hona estekatzen duen beste oharrik. Estekatu ohar honetara [[$title]] erabiliz.';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Jarri izenburu bat ohar honi beste oharrek bertara estekatu ahal izateko.';

  @override
  String get notesLinkedTasksEmpty => 'Ez dago zereginik ohar honekin estekatuta.';

  @override
  String notesLinkMissing(String title) {
    return 'Oraindik ez dago “$title” izenburua duen oharrik.';
  }

  @override
  String get notesNotFound => 'Ohar hau ez da existitzen jada.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Zerrendako elementua: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Ireki $title oharra';
  }

  @override
  String get notesTagsHint => 'Gehitu etiketak oharrean #etiketa idatziz.';

  @override
  String get notesTaskDone => 'Osatuta';

  @override
  String get notifTimerDoneBody => 'Ezarri duzun denbora igaro da.';

  @override
  String get onboardingPrivatePointDevice => 'Gailu honetan bakarrik gordeta, zifratuta';

  @override
  String get onboardingPrivatePointAccount => 'Ez da konturik behar';

  @override
  String get onboardingPrivatePointTracking => 'Analitikarik eta jarraipenik ez';

  @override
  String get onboardingLanguageBody => 'Edonoiz alda dezakezu Ezarpenetan.';

  @override
  String get onboardingNext => 'Hurrengoa';

  @override
  String get projectsActive => 'Aktiboak';

  @override
  String get projectNameHint => 'adib. Produktuaren abiarazpena';

  @override
  String get projectGoalHint => 'Nolakoa da emaitza amaitua?';

  @override
  String get projectNoDeadline => 'Epemugarik gabe';

  @override
  String get projectTasksOpen => 'Zeregin irekiak';

  @override
  String get projectTasksCompleted => 'Osatutako zereginak';

  @override
  String get projectAddTask => 'Gehitu zeregina proiektuari';

  @override
  String get projectAddNote => 'Proiektuko ohar berria';

  @override
  String get projectLinkedNotes => 'Oharrak';

  @override
  String get projectNoTasks => 'Oraindik ez dago zereginik proiektu honetan';

  @override
  String get projectArchivedBadge => 'Artxibatuta';

  @override
  String get projectDeleted => 'Proiektua zakarrontzira eraman da';

  @override
  String get projectDeleteMessage => 'Zereginak zure zerrendan geratzen dira, proiekturik gabe.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, ehuneko $percent osatuta';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count emaitza',
      one: 'Emaitza 1',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Iragazi motaren arabera';

  @override
  String searchRecentTap(String query) {
    return 'Bilatu berriro $query';
  }

  @override
  String get settingsLanguageHint =>
      'Aukeratu aplikazio osoaren hizkuntza. Izenak beren hizkuntzan erakusten dira.';

  @override
  String get settingsThemeHint => 'Argia, iluna edo sistemari jarraitu';

  @override
  String settingsDecrease(String setting) {
    return 'Txikitu $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Handitu $setting';
  }

  @override
  String get settingsQuietStart => 'Hasiera';

  @override
  String get settingsQuietEnd => 'Amaiera';

  @override
  String get settingsNotificationsHint =>
      'Honek zure hobespena aplikazioan gordetzen du. Sistemak ere baimena eska dezake.';

  @override
  String get settingsDashboardHint =>
      'Arrastatu berrantolatzeko. Desaktibatu behar ez dituzun atalak.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Berrantolatu $section';
  }

  @override
  String get settingsDashboardReset => 'Leheneratu ordena lehenetsia';

  @override
  String get settingsAssistantDesc =>
      'Aukerako plangintza-laguntza. Ez da ezer gailu honetatik irtengo hornitzaile bat konektatzen ez baduzu.';

  @override
  String get settingsAssistantSetup => 'Laguntzailea eta hornitzailearen konfigurazioa';

  @override
  String get settingsTrashDesc => 'Leheneratu edo ezabatu betiko kendutako elementuak';

  @override
  String get settingsEraseFirstBody =>
      'Ezin da desegin. Pentsatu lehenik babeskopia zifratu bat sortzea.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Idatzi $word';
  }

  @override
  String get settingsEraseFailed => 'Ezin izan dira datuak ezabatu. Ez da ezer aldatu.';

  @override
  String get settingsAboutTagline => 'Lokalean dabilen produktibitate-gune pribatua.';

  @override
  String get backupShowPassword => 'Erakutsi pasahitza';

  @override
  String get backupHidePassword => 'Ezkutatu pasahitza';

  @override
  String get backupSaved => 'Babeskopia gorde da';

  @override
  String get backupFailed => 'Ezin izan da babeskopia sortu. Zure datuak ez dira aldatu.';

  @override
  String get backupReadFailed => 'Ezin izan da hautatutako fitxategia irakurri.';

  @override
  String get backupRestoreFailed => 'Leheneratzeak huts egin du. Ez da ezer aldatu.';

  @override
  String get backupShareSubject => 'Deep Focus babeskopia zifratua';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count egunetik behin',
      one: 'Egunero',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count astetik behin',
      one: 'Astero',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hiletik behin',
      one: 'Hilero',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count urtetik behin',
      one: 'Urtero',
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
    return 'egun hauetan: $days';
  }

  @override
  String get repeatEndsLabel => 'Amaiera';

  @override
  String get repeatEndsAfter => 'Zenbait aldiz errepikatu ondoren';

  @override
  String get repeatCountLabel => 'Errepikapenak';

  @override
  String get reminderNone => 'Gogorarazpenik gabe';

  @override
  String get reminderCustomTime => 'Ordu jakin batean';

  @override
  String get a11yDecrease => 'Txikitu';

  @override
  String get a11yIncrease => 'Handitu';

  @override
  String get pickTaskTitle => 'Aukeratu zeregin bat';

  @override
  String get pickTaskEmpty => 'Ez dago zeregin irekirik';

  @override
  String get tasksSearchTooltip => 'Bilatu zereginak';

  @override
  String get tasksSectionOverdue => 'Atzeratuak';

  @override
  String get tasksSectionToday => 'Gaur';

  @override
  String get tasksRecurringSemantics => 'Errepikatzen da';

  @override
  String get tasksFilterPriorityAtLeast => 'Gutxieneko lehentasuna';

  @override
  String get tasksFilterCategory => 'Kategoria';

  @override
  String get tasksFilterAnyCategory => 'Edozein kategoria';

  @override
  String get tasksFilterLabel => 'Etiketa';

  @override
  String get tasksFilterAnyLabel => 'Edozein etiketa';

  @override
  String get tasksFilterReset => 'Berrezarri iragazkiak';

  @override
  String get tasksViewByProject => 'Proiektuaren arabera';

  @override
  String get tasksViewByPriority => 'Lehentasunaren arabera';

  @override
  String get tasksViewByCategory => 'Kategoriaren arabera';

  @override
  String get tasksGroupNoCategory => 'Kategoriarik gabe';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zereginek',
      one: 'Zeregin batek',
    );
    return '$_temp0 blokeatuta';
  }

  @override
  String get taskBlockedWarning =>
      'Zeregin hau amaitu gabeko zereginek blokeatzen dute. Osatu nahi duzu hala ere?';

  @override
  String get taskStartFocus => 'Kontzentratu zeregin honetan';

  @override
  String get taskRemoveDate => 'Kendu data';

  @override
  String get taskAllDay => 'Ordu jakinik gabe';

  @override
  String get taskSaved => 'Zeregina gorde da';

  @override
  String get taskCreated => 'Zeregina sortu da';

  @override
  String get taskReminderNeedsDue => 'Ezarri epemuga bat gogorarazpen erlatiboak erabiltzeko';

  @override
  String get taskSubtaskDetailsHint =>
      'Gorde lehenik zeregina azpizereginak, zerrendako elementuak, etiketak eta mendekotasunak gehitzeko.';

  @override
  String get taskLabelName => 'Etiketaren izena';

  @override
  String get taskMoreDetails => 'Xehetasunak';

  @override
  String get taskPlanning => 'Plangintza';

  @override
  String get taskOrganize => 'Antolaketa';

  @override
  String get taskBreakdown => 'Banaketa';

  @override
  String get trashDeleteTaskTitle => 'Zeregin hau betiko ezabatu nahi duzu?';

  @override
  String get trashDeleteNoteTitle => 'Ohar hau betiko ezabatu nahi duzu?';

  @override
  String get trashDeleteBody => 'Ezin da desegin.';

  @override
  String get trashEmptyTitle => 'Zakarrontzia hustu nahi duzu?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementu betiko ezabatuko dira.',
      one: 'Elementu 1 betiko ezabatuko da.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Leheneratuta';

  @override
  String get trashPurged => 'Betiko ezabatuta';

  @override
  String trashDeletedOn(String date) {
    return 'Ezabatze-data: $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementu',
      one: 'Elementu 1',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Irakurri ozen';

  @override
  String get flashcardsTtsUnavailable =>
      'Testua ahots bihurtzeko zerbitzua ez dago erabilgarri gailu honetan.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Ez dago ahotsik instalatuta hizkuntza honetarako. Gehitu bat Androiden testua ahots bihurtzeko ezarpenetan.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Txinparta',
      'rocket': 'Suziria',
      'book': 'Liburua',
      'work': 'Lana',
      'home': 'Etxea',
      'heart': 'Bihotza',
      'code': 'Kodea',
      'palette': 'Paleta',
      'fitness': 'Kirola',
      'school': 'Eskola',
      'travel': 'Bidaiak',
      'money': 'Aurrezkiak',
      'other': 'Ikonoa',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Eremu gehiago';

  @override
  String get cardFieldExample => 'Adibidea';

  @override
  String get cardFieldExplanation => 'Azalpena';

  @override
  String get cardFieldPronunciation => 'Ahoskera';

  @override
  String get cardFieldNotes => 'Ohar gehigarriak';

  @override
  String get projectMilestones => 'Mugarriak';

  @override
  String get milestoneAdd => 'Gehitu mugarria';

  @override
  String get milestoneEdit => 'Editatu mugarria';

  @override
  String get milestoneTitleLabel => 'Mugarria';

  @override
  String get milestoneNoDate => 'Datarik gabe';

  @override
  String get milestonesEmpty =>
      'Oraindik ez dago mugarririk. Gehitu datadun kontrol-puntuak proiektua egutegian jarraitzeko.';

  @override
  String get milestoneDeleted => 'Mugarria ezabatu da';

  @override
  String milestoneDoneA11y(String title) {
    return 'Markatu “$title” mugarria eginda gisa';
  }

  @override
  String calendarMilestone(String project) {
    return 'Mugarria · $project';
  }

  @override
  String get tasksViewInbox => 'Sarrera-ontzia';

  @override
  String get tasksViewArchived => 'Artxibatuak';

  @override
  String get tasksEmptyInbox =>
      'Proiekturik edo datarik gabeko zereginak hona iristen dira. Antolatu itzazu minutu bat duzunean.';

  @override
  String get tasksEmptyArchived =>
      'Artxibatutako zereginak hemen gordetzen dira, zure zerrendetatik eta gogorarazpenetatik kanpo.';

  @override
  String get taskArchivedBadge => 'Artxibatuta';

  @override
  String get taskStatusInProgress => 'Abian';

  @override
  String get taskArchived => 'Zeregina artxibatu da';

  @override
  String get taskUnarchived => 'Zeregina artxibotik leheneratu da';

  @override
  String get focusPlanTitle => 'Saio-plana';

  @override
  String focusPlanTotal(String duration) {
    return 'Guztira $duration';
  }

  @override
  String get focusPlanRounds => 'Kontzentrazio-saioak';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Atseden luzea hau igarotakoan';

  @override
  String get focusPlanSkipLastBreak => 'Saltatu azken atsedena';

  @override
  String get focusPlanAutoBreaks => 'Hasi atsedenak automatikoki';

  @override
  String get focusPlanAutoFocus => 'Hasi kontzentrazioa automatikoki atseden baten ondoren';

  @override
  String get focusPlanSave => 'Gorde plana';

  @override
  String get focusPlanNameHint => 'adib. Azterketa prestatzea';

  @override
  String get focusPlanSaved => 'Plana gorde da';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min kontzentrazio, $rest min atseden';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Txikitu $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Handitu $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '$current/$total. saioa';
  }

  @override
  String get focusSeriesComplete => 'Seriea osatuta. Oso ondo!';

  @override
  String get filterAll => 'Guztiak';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added inportatuta · $duplicates bikoiztu saltatuta · $invalid errenkada osatugabe';
  }

  @override
  String get flashcardsSuspend => 'Eten txartela';

  @override
  String get flashcardsResume => 'Berrekin txartelari';

  @override
  String get flashcardsSuspended => 'Txartela etenda: ez da programatuko';

  @override
  String get flashcardsResumed => 'Txartela berrekin da';

  @override
  String get flashcardsSuspendedFilter => 'Etenda';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown/$total txartel';
  }

  @override
  String get flashcardsImportFile => 'Fitxategitik';

  @override
  String get speechTitle => 'Ahotsa';

  @override
  String get speechAppLanguage => 'Aplikazioaren hizkuntza';

  @override
  String get speechFrontLanguage => 'Aurrealdearen hizkuntza';

  @override
  String get speechBackLanguage => 'Atzealdearen hizkuntza';

  @override
  String get speechRepeat => 'Errepikatu irakurketa bakoitza';

  @override
  String get speechRate => 'Abiadura';

  @override
  String get speechAutoRead => 'Irakurri galdera automatikoki';

  @override
  String get speechHint =>
      'Gailu honetan instalatutako ahotsak erabiltzen ditu, konexiorik gabe. Hizkuntza batek ahotsik ez badu, jakinaraziko zaizu eta ez da beste ezer erabiliko haren ordez.';

  @override
  String get studyHowTitle => 'Nola ikasi nahi duzu?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Errepasatu $count txartel',
      one: 'Errepasatu txartel 1',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Praktikatu txartel guztiak (programazioa ez da aldatzen)';

  @override
  String get studyPracticeMistakes => 'Praktikatu azken akatsak';

  @override
  String get studyPracticeHint =>
      'Praktika-txandek ez dute inoiz aldatzen txartelak noiz errepasatu behar diren. Errepasoak programazioa eguneratzen du.';

  @override
  String get studyModeClassic => 'Klasikoa';

  @override
  String get studyModeReverse => 'Alderantzizkoa';

  @override
  String get studyModeMixed => 'Bi noranzkoetan';

  @override
  String get studyModeTyped => 'Idatzi erantzuna';

  @override
  String get studyModeChoice => 'Aukera anitzekoa';

  @override
  String get studyModeListening => 'Entzumena';

  @override
  String get studyPractice => 'praktika';

  @override
  String get studyNoMistakes => 'Ez dago azken akatsik sorta honetan. Bikain!';

  @override
  String get studyTypeAnswer => 'Idatzi zure erantzuna';

  @override
  String get studyCheck => 'Egiaztatu';

  @override
  String get studyKnewIt => 'Banekien';

  @override
  String get studyDidntKnow => 'Ez nekien';

  @override
  String studyMistakes(int count) {
    return 'Hutsegindakoak ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Errepikatu hutsegindako txartelak';

  @override
  String get studyCorrect => 'Zuzena';

  @override
  String get studyAlmost => 'Ia — begiratu idazkera';

  @override
  String get studyWrong => 'Ez guztiz';

  @override
  String get studyShowText => 'Erakutsi testua';

  @override
  String get flashcardsImportFileFailed =>
      'Ezin izan da fitxategia ireki. Horren ordez, bere edukia itsats dezakezu.';

  @override
  String get studyNoMatchingCards => 'Oraindik ez dago aukera honekin bat datorren txartelik.';

  @override
  String get studyPracticeNew => 'Berriak soilik';

  @override
  String get studyPracticeHard => 'Txartel zailak';

  @override
  String get studyPracticeFavorites => 'Gogokoak';

  @override
  String get studySessionSize => 'Txartelak saioko';

  @override
  String get studySessionAll => 'Guztiak';

  @override
  String get studyOrder => 'Ordena';

  @override
  String get studyOrderDue => 'Atzeratuenak lehenik';

  @override
  String get studyOrderRandom => 'Ausaz';

  @override
  String get studyOrderHardest => 'Zailenak lehenik';

  @override
  String get flashcardsHard => 'Zaila';

  @override
  String get flashcardsFavorites => 'Gogokoak';

  @override
  String get flashcardsFavorite => 'Gehitu gogokoetara';

  @override
  String get flashcardsUnfavorite => 'Kendu gogokoetatik';

  @override
  String get flashcardsDuplicate => 'Bikoiztu';

  @override
  String get flashcardsMoveTo => 'Eraman sortara';

  @override
  String get flashcardsNoOtherDeck => 'Sortu beste sorta bat lehenik.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel mugitu dira',
      one: 'Txartela mugitu da',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Gehitu etiketa';

  @override
  String get flashcardsTagHint => 'adib. aditzak';

  @override
  String flashcardsSelected(int count) {
    return '$count hautatuta';
  }

  @override
  String get flashcardsSelectAll => 'Hautatu ikusgai dauden guztiak';

  @override
  String flashcardsSelectCard(String front) {
    return 'Hautatu $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Oroimena $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Baliteke bikoiztua izatea';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Sorta honek badu dagoeneko “$front” → “$back”. Gorde hala ere?';
  }

  @override
  String get flashcardsSaveAnyway => 'Gorde hala ere';

  @override
  String get flashcardsStats => 'Estatistikak';

  @override
  String get flashcardsStatTotal => 'Txartelak';

  @override
  String get flashcardsStatLearning => 'Ikasten';

  @override
  String get flashcardsStatMatureCaption => '21+ egunez gogoratuak';

  @override
  String get flashcardsStatReviewsToday => 'Gaurko errepasoak';

  @override
  String get flashcardsStatCorrect => 'Erantzun zuzenak';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Azken $days egunak';
  }

  @override
  String get flashcardsStatForget => 'Ahazte-tasa';

  @override
  String get flashcardsStatForgetCaption => '“Berriro” ikasitako txarteletan';

  @override
  String get flashcardsStatRecall => 'Oroimena orain';

  @override
  String get flashcardsStatRecallCaption => 'FSRS estimazioa, errepasatutako txartelak';

  @override
  String flashcardsStatActivity(int count) {
    return 'Errepasoak eguneko · $count guztira';
  }

  @override
  String get flashcardsStatHistory => 'Azken erantzunak';

  @override
  String get flashcardsStatNoHistory =>
      'Oraindik ez dago errepasorik. Ikasi sorta zure aurrerapena hemen ikusteko.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Irakurri ozen: $field';
  }

  @override
  String get speechVoice => 'Ahotsa';

  @override
  String get speechVoiceDefault => 'Automatikoa';

  @override
  String get speechVoiceOnline => 'interneta behar du';

  @override
  String get speechTest => 'Probatu ahotsa';

  @override
  String get importNext => 'Aurrebista';

  @override
  String get importPreviewTitle => 'Lotu zutabeak eremuekin';

  @override
  String get importIgnoreColumn => 'Ez ikusi egin';

  @override
  String importColumn(int n) {
    return '$n. zutabea';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready txartel prest · $invalid errenkada osatugabe saltatuko dira';
  }

  @override
  String get importNeedFrontBack => 'Aukeratu zein zutabe diren aurrealdea eta atzealdea.';

  @override
  String get actionMoveUp => 'Eraman gora';

  @override
  String get actionMoveDown => 'Eraman behera';

  @override
  String get flashcardsLayoutTitle => 'Txartelaren diseinua';

  @override
  String get flashcardsLayoutHint =>
      'Aldatu izena, ezkutatu edo berrantolatu sorta honetako eremu gehigarriak. Txartelen edukia ez da inoiz aldatzen.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Erakutsi $field ikastean';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Erakutsi erantzuna urratsez urrats';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Atzealdea agertzen da lehenik; eremu gehigarri bakoitza sakatuz irekitzen da.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Erakutsi $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Fitxategi hau $mb MB baino handiagoa da.';
  }

  @override
  String get flashcardsImage => 'Irudia';

  @override
  String get flashcardsAudio => 'Audioa';

  @override
  String get flashcardsAddImage => 'Gehitu irudia';

  @override
  String get flashcardsAddAudio => 'Gehitu audioa';

  @override
  String get flashcardsPlayAudio => 'Erreproduzitu grabazioa';

  @override
  String get flashcardsAudioUnavailable => 'Grabazio hau ezin da gailu honetan erreproduzitu.';

  @override
  String get flashcardsCustomFields => 'Zure eremuak';

  @override
  String get flashcardsTemplates => 'Txantiloiak';

  @override
  String flashcardsNewFieldName(int n) {
    return '$n. eremua';
  }

  @override
  String get flashcardsAddField => 'Gehitu eremua';

  @override
  String get flashcardsFieldName => 'Eremuaren izena';

  @override
  String get flashcardsFieldLangDefault => 'Aldearen hizkuntza';

  @override
  String get flashcardsTemplateConfirm =>
      'Txantiloiak eremuak nola erakusten diren ezartzen du eta bere eremuak gehitzen ditu. Zure txartelak eta lehendik dauden eremuak ez dira aldatzen.';

  @override
  String get flashcardsApplyTemplate => 'Aplikatu';

  @override
  String get templateVocabulary => 'Hiztegia';

  @override
  String get templateTwoTranslations => 'Bi itzulpen dituen hitza';

  @override
  String get templateQuestionAnswer => 'Galdera eta erantzuna';

  @override
  String get templateDefinition => 'Terminoa eta definizioa';

  @override
  String get templateGrammar => 'Gramatika-araua';

  @override
  String get templateFieldPlural => 'Plurala';

  @override
  String get templateFieldTranslation2 => 'Bigarren itzulpena';

  @override
  String get templateFieldSynonyms => 'Sinonimoak';

  @override
  String get templateFieldRule => 'Araua';

  @override
  String get deckCategory => 'Maila edo gaia';

  @override
  String get deckCategoryHint => 'adib. A1, Medikuntza';

  @override
  String get flashcardsSearchAll => 'Bilatu txartel guztietan';

  @override
  String get flashcardsSearchAllHint => 'Hitza, itzulpena, adibidea, oharra, etiketa…';

  @override
  String get flashcardsAllDecks => 'Sorta guztiak';

  @override
  String get flashcardsAllLanguages => 'Hizkuntza guztiak';

  @override
  String get flashcardsLangUnset => 'Hizkuntza ezarri gabe';

  @override
  String get flashcardsLevelUnset => 'Mailarik edo gairik gabe';

  @override
  String get flashcardsByLanguage => 'Aurrerapena hizkuntzaka';

  @override
  String get flashcardsByLevel => 'Aurrerapena maila edo gaika';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks sorta · $cards txartel · $mature finkatuta · $due errepasatzeko · $correct zuzen (30 egun)';
  }

  @override
  String get flashcardsRecord => 'Grabatu';

  @override
  String get flashcardsRecording => 'Grabatzen…';

  @override
  String get flashcardsRecordStop => 'Gelditu eta gorde';

  @override
  String get flashcardsMicDenied =>
      'Mikrofonoa erabiltzeko baimena desaktibatuta dago. Baimendu sistemaren ezarpenetan grabatzeko.';

  @override
  String get flashcardsRecordFailed => 'Grabatzea ez dago erabilgarri gailu honetan.';

  @override
  String get soundsTitle => 'Soinuak';

  @override
  String get soundsNature => 'Natura';

  @override
  String get soundsNoise => 'Kontzentraziorako zarata';

  @override
  String get soundRain => 'Euria';

  @override
  String get soundStorm => 'Ekaitza';

  @override
  String get soundRiver => 'Ibaia';

  @override
  String get soundOcean => 'Itsasoko olatuak';

  @override
  String get soundFire => 'Sua';

  @override
  String get soundForest => 'Basoko txoriak';

  @override
  String get soundNight => 'Udako gaua';

  @override
  String get soundWhite => 'Zarata zuria';

  @override
  String get soundPink => 'Zarata arrosa';

  @override
  String get soundBrown => 'Zarata marroia';

  @override
  String get soundsPlay => 'Erreproduzitu';

  @override
  String get soundsSleep => 'Lo-tenporizadorea';

  @override
  String get soundsSleepOff => 'Desaktibatuta';

  @override
  String soundsSleepAt(String time) {
    return '$time(e)tan geldituko da';
  }

  @override
  String soundsMixFull(int count) {
    return 'Gehienez $count soinu entzun daitezke aldi berean.';
  }

  @override
  String get soundsHint =>
      'Sakatu soinu bat hasteko. Nahastu batzuk eta ezarri bakoitzaren bolumena.';

  @override
  String get soundsMixer => 'Nahasketa';

  @override
  String soundsVolumeOf(String name) {
    return '$name: bolumena';
  }

  @override
  String get soundsChannel => 'Naturako soinuak';

  @override
  String get settingsEndTone => 'Tenporizadorearen amaierako soinua';

  @override
  String get toneGentle => 'Bip leunak';

  @override
  String get toneBeeps => 'Bipak';

  @override
  String get toneWood => 'Egurrean kolpea';

  @override
  String get toneBird => 'Txori-kantua';

  @override
  String get toneStream => 'Erreka';

  @override
  String get toneSystem => 'Telefonoaren soinua';

  @override
  String get speechOnPhone => 'Telefono honetan';

  @override
  String get speechAllLanguages => 'Hizkuntza guztiak';

  @override
  String get speechSearchLanguage => 'Bilatu hizkuntzak';

  @override
  String get speechGetVoices => 'Deskargatu ahots gehiago';

  @override
  String get speechGetVoicesHint =>
      'Ahotsik gabeko hizkuntzetarako ahotsak telefonoaren hizketa-ezarpenetan deskarga daitezke.';

  @override
  String get speechSettingsFailed => 'Ezin izan dira telefono honetako hizketa-ezarpenak ireki.';

  @override
  String get speechVoiceMissing => 'Ez dago ahotsik instalatuta';

  @override
  String get speechPause => 'Etenaldia errepikapenen artean';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Irakurri adibidea erantzunarekin batera';

  @override
  String get flashListen => 'Entzun';

  @override
  String get flashListenNext => 'Hurrengo txartela';

  @override
  String get flashListenEmpty => 'Ez dago entzuteko txartelik.';

  @override
  String get flashViewTable => 'Taula';

  @override
  String get flashViewCards => 'Txartelak';

  @override
  String get flashSwapSides => 'Trukatu zutabeak';

  @override
  String get flashSort => 'Ordenatu';

  @override
  String get flashSortNewest => 'Berrienak lehenik';

  @override
  String get flashSortAlpha => 'A-tik Z-ra';

  @override
  String get flashSortDue => 'Errepasatzekoak lehenik';

  @override
  String get flashSortHard => 'Zailenak lehenik';

  @override
  String get flashPasteCards => 'Itsatsi txartelak';

  @override
  String get flashClipboardEmpty => 'Arbelak ez du testurik.';

  @override
  String get flashMenuAdd => 'Gehitu txartelak';

  @override
  String get flashMenuDeck => 'Sorta';

  @override
  String get flashToday => 'Gaur';

  @override
  String get flashStudyNow => 'Ikasi';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel erantzunda',
      one: 'Txartel 1 erantzunda',
      zero: 'Ez da txartelik erantzun',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Euria basoan';

  @override
  String get autoBackupTitle => 'Babeskopia automatikoak';

  @override
  String get autoBackupDesc => 'Egunero telefono honetan; azken 7ak gordetzen dira';

  @override
  String get autoBackupHint =>
      'Kopia hauek telefono honetan geratzen dira eta aplikazioa desinstalatzen bada ezabatu egiten dira. Telefono berri batera pasatzeko, erabili “Egin babeskopia” fitxategi bat gordetzeko.';

  @override
  String get autoBackupNone => 'Oraindik ez dago babeskopia automatikorik. Lehena gaur egingo da.';

  @override
  String get autoBackupRestore => 'Leheneratu';

  @override
  String autoBackupConfirm(String date) {
    return 'Uneko datu guztiak $date eguneko babeskopiarekin ordeztu nahi dituzu?';
  }

  @override
  String get autoBackupRestored => 'Leheneratuta.';

  @override
  String get errorLogTitle => 'Errore-erregistroa';

  @override
  String get errorLogHint =>
      'Zerbait gaizki ateratzen bada, hemen idazten da: errore mota eta kodeko kokapena bakarrik, inoiz ez zure edukia. Partekatu arazoa konpontzen laguntzeko.';

  @override
  String get errorLogEmpty => 'Ez da errorerik erregistratu.';

  @override
  String get errorLogClear => 'Garbitu';

  @override
  String get soundsWithFocus => 'Erreproduzitu kontzentrazio-saioetan';

  @override
  String get soundsWithFocusHint =>
      'Zure nahasketa kontzentrazio-saio batekin hasten da eta atsedenetan pausatzen da.';

  @override
  String get soundsSavedMixes => 'Gordetako nahasketak';

  @override
  String get soundsSaveMix => 'Gorde nahasketa hau';

  @override
  String get soundsMixNameHint => 'Izena, adib. Liburutegi euritsua';

  @override
  String soundsDeleteMix(String name) {
    return '“$name” nahasketa ezabatu nahi duzu?';
  }

  @override
  String get settingsReviewReminderHint =>
      'Egunean behin, errepasatzeko txartelak daudenean bakarrik';

  @override
  String get settingsReviewTime => 'Gogorarazpenaren ordua';

  @override
  String get shortcutFocus => 'Kontzentrazioa';

  @override
  String get shortcutNewTask => 'Zeregin berria';

  @override
  String get shortcutReview => 'Errepasatu txartelak';

  @override
  String get shortcutSounds => 'Naturako soinuak';

  @override
  String get myDayTitle => 'Hasi nire eguna';

  @override
  String get myDayHint => 'Zure eguna begirada batean, eta gero ukitu bat kontzentratzeko';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zeregin gaurko',
      one: 'Zeregin 1 gaurko',
      zero: 'Ez dago zereginik gaurko',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Gaur ez dago gertaera gehiagorik';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Hurrengoa: $title ($time)';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ohitura falta dira',
      one: 'Ohitura 1 falta da',
      zero: 'Ohitura guztiak eginda',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Hasi kontzentrazio-saio batekin';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Ula';

  @override
  String get hijriMonth6 => 'Jumada al-Akhirah';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Xaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Xawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qada';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$year H, $month $day';
  }

  @override
  String get settingsHijri => 'Hegirako datak';

  @override
  String get settingsHijriHint => 'Egutegian eta hasierako pantailan erakusten dira (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count egun',
      one: 'Egun 1',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Gaur $done/$goal txartel';
  }

  @override
  String get studyGoalReached => 'Eguneko helburua lortuta. Oso ondo!';

  @override
  String get studyWeekTitle => 'Zure astea';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel erantzunda 7 egunean',
      one: 'Txartel 1 erantzunda 7 egunean',
      zero: 'Ez da txartelik erantzun 7 egunean',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration kontzentrazio 7 egunean';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Bolada: $current · Onena: $best';
  }

  @override
  String get studyGoalTitle => 'Eguneko helburua (txartelak)';

  @override
  String get studyGoalOff => 'Desaktibatuta';

  @override
  String get focusDndTitle => 'Ez molestatu kontzentratzean';

  @override
  String get focusDndHint =>
      'Kontzentrazio-saio bakoitzean aktibatzen da eta atsedenean desaktibatzen da';

  @override
  String get focusDndNeedsAccess => 'Hau erabiltzeko, baimendu sarbidea telefonoaren ezarpenetan';

  @override
  String get voiceInput => 'Hitz egin idazteko';

  @override
  String get voiceInputPrompt => 'Hitz egin orain';

  @override
  String get voiceInputUnavailable =>
      'Ahots bidezko idazketa ez dago erabilgarri telefono honetan. Instalatu edo aktibatu hizketa-zerbitzu bat (adibidez, Google-ren Hizketa-ezagutza eta -sintesia).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Egunsentia';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Magrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Munduko Liga Musulmana';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Meka';

  @override
  String get prayerMethodEgypt => 'Egiptoko Agintaritza Nagusia';

  @override
  String get prayerMethodJordan => 'Jordania, Awqaf Ministerioa';

  @override
  String get prayerMethodKarachi => 'Zientzia Islamikoen Unibertsitatea, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Golkoko eskualdea';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turkia, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malaysia, Indonesia';

  @override
  String get prayerMethodFrance => 'Frantzia (12°)';

  @override
  String get prayerMethodRussia => 'Errusia, Administrazio Espirituala';

  @override
  String prayerNotifTitle(String name) {
    return '$name ordua';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Otoitz-ordua · $time';
  }

  @override
  String get prayerTitle => 'Otoitz-orduak';

  @override
  String get prayerOffHint =>
      'Aukeratu zure hiria otoitz-orduak ikusteko. Telefonoan kalkulatzen dira; ez da kokapenerako sarbiderik behar.';

  @override
  String get prayerChooseCity => 'Aukeratu hiria';

  @override
  String get prayerCity => 'Hiria';

  @override
  String get prayerCitySearch => 'Bilatu hiri bat';

  @override
  String get prayerMethod => 'Kalkulu-metodoa';

  @override
  String get prayerHanafiAsr => 'Asr hanafia (ordu beranduagoa)';

  @override
  String get prayerReminders => 'Jakinarazi otoitz-ordu bakoitzean';

  @override
  String get prayerPauseFocus => 'Pausatu kontzentrazioa otoitz-orduan';

  @override
  String get prayerPauseFocusHint =>
      'Abian dagoen saioa pausatu egiten da; jarraitu otoitzaren ondoren';

  @override
  String get prayerTurnOff => 'Desaktibatu otoitz-orduak';

  @override
  String get prayerAccuracyNote =>
      'Kalkulatutako orduak minutu batzuk alda daitezke zure tokiko meskitaren aldean.';

  @override
  String prayerNext(String name, String time) {
    return '$name ($time)';
  }

  @override
  String get importAnkiNewFormat =>
      'Anki fitxategi honek formatu berriena erabiltzen du. Ankin, esportatu berriro “Support older Anki versions” aktibatuta, eta inportatu gero fitxategi hori.';

  @override
  String get importTemplate => 'Kalkulu-orriaren txantiloia';

  @override
  String get importTemplateFront => 'sagarra';

  @override
  String get importTemplateBack => 'fruta biribila';

  @override
  String get importTemplateExample => 'Egunero sagar bat jaten dut.';

  @override
  String get importTemplateTag => 'janaria';

  @override
  String get starterTitle => 'Hasierako sortak';

  @override
  String get starterHint =>
      'Gehitu bat berehala ikasten hasteko. Geroago edita edo ezaba dezakezu.';

  @override
  String get starterAdd => 'Gehitu';

  @override
  String get starterWords => 'Eguneroko ingelesezko hitzak (arabiera)';

  @override
  String get starterCapitals => 'Munduko hiriburuak';

  @override
  String get starterElements => 'Elementu kimikoak';

  @override
  String get settingsAccent => 'Nabarmentze-kolorea';

  @override
  String get accentViolet => 'Bioleta';

  @override
  String get accentBlue => 'Urdina';

  @override
  String get accentTeal => 'Berde urdinxka';

  @override
  String get accentGreen => 'Berdea';

  @override
  String get accentRose => 'Arrosa';

  @override
  String get accentAmber => 'Anbarra';

  @override
  String get settingsFlashTextSize => 'Txartelen testuaren tamaina';

  @override
  String get settingsFlashTextSample => 'Adibidea';

  @override
  String get widgetStartFocus => 'Sakatu kontzentratzeko';

  @override
  String widgetFocusUntil(String time) {
    return 'Kontzentrazioa $time arte';
  }

  @override
  String get widgetNoCardsDue => 'Txartelak: dena eginda';

  @override
  String get faqMyDayQ => 'Zer egiten du “Hasi nire eguna” aukerak?';

  @override
  String get faqMyDayA =>
      'Egunean behin hasierako pantailak eskaintzen du: gaurko zereginak, hurrengo gertaera, falta diren ohiturak eta errepasatzeko txartelak ikusten dituzu, eta ukitu batez kontzentrazio-saio bat hasten duzu. Luze sakatu aplikazioaren ikonoa ekintza azkarretarako, edo gehitu widgeta hasierako pantailan kontzentrazio-denbora eta errepasatzeko txartelak ikusteko.';

  @override
  String get faqTasksQ => 'Nola gehitzen dut gogorarazpena duen zeregin bat?';

  @override
  String get faqTasksA =>
      'Sakatu Zeregin berria Hasieran edo + Zereginetan. Idatzi izenburua edo esan mikrofonoarekin, eta ezarri epemuga, ordua eta gogorarazpena. Atzeratutako zereginak lehenik agertzen dira.';

  @override
  String get faqFocusQ => 'Nola funtzionatzen du kontzentrazio-tenporizadoreak?';

  @override
  String get faqFocusA =>
      'Aukeratu Pomodoro, atzerako kontaketa edo denbora librea eta sakatu Hasi; atsedenak automatikoki etor daitezke. Ezarpenetan amaierako soinua aukeratu, Ez molestatu kontzentratzean aktibatu eta naturako soinuak saio bakoitzarekin erreproduzi ditzakezu.';

  @override
  String get faqSoundsQ => 'Naturako soinuak nahas ditzaket?';

  @override
  String get faqSoundsA =>
      'Aktibatu benetako sei grabazio arte, ezarri bakoitzaren bolumena eta gorde nahasketa izen batekin. Atzeko planoan entzuten jarraitzen dute, eta lo-tenporizadore batek geldi ditzake. Ez da musikarik erabiltzen.';

  @override
  String get faqCalendarQ => 'Egutegiak hegirako datak erakuts ditzake?';

  @override
  String get faqCalendarA =>
      'Bai. Hegirako datak (Umm al-Qura) automatikoki erakusten dira arabieraz, eta Ezarpenetan edozein hizkuntzatarako aktiba daitezke. Gertaerak, epemuga duten zereginak eta proiektuetako mugarriak elkarrekin agertzen dira.';

  @override
  String get faqFlashcardsQ => 'Nola erabakitzen du errepasoak zein txartel ikusiko ditudan?';

  @override
  String get faqFlashcardsA =>
      'Ondo dakizkizun txartelak tarte luzeagoen ondoren itzultzen dira, eta huts egiten dituzunak laster (errepikapen tartekatua). Baloratu erantzun bakoitza: Berriro, Zaila, Ondo edo Erraza. Ezarri eguneko helburu bat eta mantendu bolada Gaur txartelean. Ezarri azterketa-data sorta batean geratzen diren egunak eta egunero zenbat txartel berri ikasi behar dituzun ikusteko. Ordenatu “Nire ordena” erabiliz txartelak lekura arrastatzeko, sakatu bozgorailua edozein aldetan entzuteko, eta ezarri abiadura eta errepikapenak Ahotsa menuan.';

  @override
  String get faqImportQ => 'Ankitik edo Exceletik ekar ditzaket txartelak?';

  @override
  String get faqImportA =>
      'Bai. Sorta batean aukeratu Inportatu, eta gero fitxategi bat: Anki (.apkg), Excel (.xlsx) edo CSV, eta lotu zutabeak. Erabili “Kalkulu-orriaren txantiloia” txartelak ordenagailuan idazteko. Anki fitxategien barruko irudiak eta soinuak ez dira inportatzen.';

  @override
  String get faqNotesQ => 'Zer egin dezakete oharrek?';

  @override
  String get faqNotesA =>
      'Idatzi libre egiaztapen-zerrendekin eta formatuarekin, ainguratu edo egin gogoko ohar garrantzitsuak, gehitu etiketak eta estekatu oharrak zereginekin. Mikrofonoaren botoiarekin dikta dezakezu. Ohar berri bat txantiloi batetik has daiteke (eskola, liburu-laburpena, egunerokoa, asteko plana), eta irudiaren botoiak argazkiak gehitzen ditu.';

  @override
  String get faqHabitsQ => 'Nola zenbatzen dira ohituren boladak?';

  @override
  String get faqHabitsA =>
      'Egun bat zenbatzen da programatutako egun batean ohituraren xedea lortzen duzunean. Ohitura bat pausatzeak bolada babesten du. Ohitura bakoitzak bere gogorarazpen-ordua izan dezake.';

  @override
  String get faqGoalsQ => 'Nola jarraitzen dute helburuek aurrerapena?';

  @override
  String get faqGoalsA =>
      'Eman helburu bati xede-kopuru bat eta unitate bat, eta erregistratu aurrerapena. Bere txartelak erakusten du non zauden eta zenbat falta den epemuga baino lehen.';

  @override
  String get faqProjectsQ => 'Zertarako dira proiektuak?';

  @override
  String get faqProjectsA =>
      'Taldekatu zereginak proiektu batean, gehitu datadun mugarriak eta jarraitu aurrerapen orokorra. Mugarriak egutegian ere agertzen dira.';

  @override
  String get faqInsightsQ => 'Zer erakusten dute Estatistikek?';

  @override
  String get faqInsightsA =>
      'Zure kontzentrazio-denbora, amaitutako zereginak eta ikasketa egun eta asteka, iradokizun leunekin. Dena zure telefonoan kalkulatzen da.';

  @override
  String get faqSpacesQ => 'Non daude atal guztiak?';

  @override
  String get faqSpacesA =>
      'Guneak aplikazioaren atal guztiak biltzen ditu (oharrak, sortak, ohiturak, helburuak, proiektuak, soinuak eta gehiago), barra nagusia sinple mantentzeko.';

  @override
  String get faqBackupQ => 'Nola egiten dira nire datuen babeskopiak?';

  @override
  String get faqBackupA =>
      'Egunero aplikazioak isilean kopia zifratu bat gordetzen du telefono honetan eta azken 7ak mantentzen ditu. Ezarpenetan pasahitzez babestutako babeskopia-fitxategi bat ere esporta dezakezu eta beste telefono batean leheneratu.';

  @override
  String get faqPrayerQ => 'Nola funtzionatzen dute otoitz-orduek?';

  @override
  String get faqPrayerA =>
      'Aukeratu zure hiria Ezarpenak → Otoitz-orduak atalean. Orduak telefonoan kalkulatzen dira bertan erabiltzen den metodoarekin, eta metodoa eta Asr eskola alda ditzakezu. Otoitz bakoitzean jakinarazpena jaso dezakezu, eta abian dagoen kontzentrazio-saioa pausatu egiten da.';

  @override
  String get faqPrivacyQ => 'Non gordetzen dira nire datuak?';

  @override
  String get faqPrivacyA =>
      'Zure telefonoan bakarrik, datu-base zifratu batean. Ez dago konturik ez jarraipenik. Internet zuk zeuk aktibatzen dituzun funtzioek bakarrik erabiltzen dute, aukerako laguntzaileak adibidez.';

  @override
  String get faqAssistantQ => 'Zer da laguntzailea?';

  @override
  String get faqAssistantA =>
      'Ezarpenetan zure AA zerbitzura konektatzen duzun aukerako laguntzaile bat. Lehenespenez desaktibatuta dago eta oharren testurik bidali aurretik galdetzen du.';

  @override
  String get tourPlanTitle => 'Planifikatu zure eguna';

  @override
  String get tourPlanBody =>
      'Zereginak, egutegia eta ohiturak leku lasai bakarrean. Hasi goiz guztiak “Hasi nire eguna” aukerarekin.';

  @override
  String get tourFocusTitle => 'Kontzentratu sakon';

  @override
  String get tourFocusBody =>
      'Denbora neurtutako saioak, naturako benetako soinuak, Ez molestatu eta amaierako tonu leunak.';

  @override
  String get tourLearnTitle => 'Ikasi betiko';

  @override
  String get tourLearnBody =>
      'Errepikapen tartekatudun txartelak, ahotsa hizkuntza askotan, eta Ankitik edo Exceletik inportatzea.';

  @override
  String get helpTitle => 'Laguntza eta galderak';

  @override
  String get helpOpen => 'Ireki';

  @override
  String get helpTour => 'Egin bisita gidatua';

  @override
  String get tourNext => 'Hurrengoa';

  @override
  String get tourDone => 'Has gaitezen';

  @override
  String get transferColTitle => 'Izenburua';

  @override
  String get transferColNotes => 'Oharrak';

  @override
  String get transferColBody => 'Testua';

  @override
  String get transferColDue => 'Epemuga';

  @override
  String get transferColPriority => 'Lehentasuna (0-3)';

  @override
  String get transferColDone => 'Eginda';

  @override
  String get transferColProject => 'Proiektua';

  @override
  String get transferColCategory => 'Kategoria';

  @override
  String get transferTitle => 'Inportazioa eta esportazioa';

  @override
  String get transferSaveAs => 'Gorde honela';

  @override
  String get transferImport => 'Inportatu fitxategi batetik';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV edo Word-eko taula bat. Zutabeak: izenburua, epemuga (2026-12-31), lehentasuna 0-3, eginda, proiektua, oharrak. Aplikazioan dagoeneko dauden zereginak saltatu egiten dira.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown edo testu-fitxategiak ohar bihurtzen dira. Excel edo CSV: ohar bat errenkada bakoitzeko (izenburua, testua).';

  @override
  String get transferSaved => 'Fitxategia gorde da';

  @override
  String get transferFailed => 'Ezin izan da fitxategia sortu. Ez da ezer aldatu.';

  @override
  String get transferUnsupported =>
      'Fitxategi hau ezin da hemen irakurri. Erabili Excel, CSV, Word, Markdown edo testua.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added gehitu dira',
      one: '1 gehitu da',
      zero: 'Ez dago ezer berririk gehitzeko',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Testua';

  @override
  String get transferAllNotes => 'Ohar guztiak';

  @override
  String get transferThisNote => 'Ohar hau';

  @override
  String get transferDeckFormats => 'Gorde Excel, Word edo PDF gisa';

  @override
  String get faqFilesQ => 'Excel, Word edo PDF fitxategiak erabil ditzaket?';

  @override
  String get faqFilesA =>
      'Bai. Zereginek eta Oharrek inportatu eta esportatzeko botoi bat dute goian (bi gezi), eta sorta bakoitzak bere menuan du. Gorde Excel, CSV, Word edo PDF gisa, edo ekarri Excel, CSV, Word, Markdown edo testu-fitxategiak. Zutabeen izenak aplikazioaren edozein hizkuntzatan egon daitezke, eta gorde dituzun fitxategiak beti inporta daitezke berriro.';

  @override
  String get tplLecture => 'Eskola';

  @override
  String get tplBook => 'Liburu-laburpena';

  @override
  String get tplJournal => 'Egunerokoa';

  @override
  String get tplWeek => 'Asteko plana';

  @override
  String get tplLectureBody => '## Gako-puntuak\n- \n\n## Galderak\n- [ ] \n\n## Laburpena\n';

  @override
  String get tplBookBody =>
      '## Ideia nagusia\n\n## Zer ikasi dudan\n- \n\n## Aipuak\n> \n\n## Aplikatzeko\n- [ ] \n';

  @override
  String get tplJournalBody => '## Eskertzen dut\n- \n\n## Gaurko ardatza\n- [ ] \n\n## Oharrak\n';

  @override
  String get tplWeekBody =>
      '## Aste honetako helburuak\n- [ ] \n\n### Larunbata\n- [ ] \n\n### Igandea\n- [ ] \n\n### Astelehena\n- [ ] \n\n### Asteartea\n- [ ] \n\n### Asteazkena\n- [ ] \n\n### Osteguna\n- [ ] \n\n### Ostirala\n- [ ] \n';

  @override
  String get tplHint => 'Hasi txantiloi batetik';

  @override
  String get noteImage => 'Irudia';

  @override
  String get noteAddImage => 'Gehitu irudia';

  @override
  String get noteImageUnreadable => 'Fitxategi hau ez da aplikazioak irakur dezakeen irudi bat.';

  @override
  String get noteImageTooLarge => 'Irudi hau handiegia da.';

  @override
  String get examSet => 'Ezarri azterketa-data';

  @override
  String get examDate => 'Azterketa-data';

  @override
  String get examToday => 'Azterketa gaur da. Zorte on!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Azterketa $count egun barru',
      one: 'Azterketa bihar',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ikasi $count txartel berri egunero',
      one: 'ikasi txartel berri 1 egunero',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'txartel guztiak ikasita, jarraitu errepasatzen';

  @override
  String examRaiseLimit(int count) {
    return 'Erakutsi $count txartel berri egunero';
  }

  @override
  String get backupDriveHint =>
      'Kopia bat linean gordetzeko, aukeratu Google Drive (edo hodeiko beste aplikazio bat) jarraian irekiko den gordetzeko pantailan.';

  @override
  String get flashShareDeck => 'Partekatu sorta lagun batekin';

  @override
  String get flashSortManual => 'Nire ordena (arrastatu)';

  @override
  String get flashReorderHint => 'Eutsi heldulekuari eta arrastatu txartel bat mugitzeko.';

  @override
  String get flashReorderNeedsAll => 'Garbitu bilaketa eta iragazkiak txartelak arrastatzeko.';

  @override
  String get flashDragHandle => 'Arrastatu mugitzeko';

  @override
  String get reportTitle => 'Hileko txostena';

  @override
  String get reportFocus => 'Kontzentrazio-denbora';

  @override
  String reportSessions(int count) {
    return '$count saio';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Egunik onena: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count egun aktibo';
  }

  @override
  String get reportCards => 'Errepasatutako txartelak';

  @override
  String reportCardsKnown(String percent) {
    return '$percent gogoratuta';
  }

  @override
  String get reportTasks => 'Osatutako zereginak';

  @override
  String get reportHabits => 'Ohituren markak';

  @override
  String get reportEmpty => 'Hilabete honetan oraindik ez da ezer erregistratu.';

  @override
  String get reportSave => 'Gorde PDF edo Word gisa';

  @override
  String get reportPrevMonth => 'Aurreko hilabetea';

  @override
  String get reportNextMonth => 'Hurrengo hilabetea';

  @override
  String get careTitle => 'Telefonoaren eta datuen zaintza';

  @override
  String get storageTitle => 'Biltegia';

  @override
  String get storageSubtitle => 'Zerk hartzen duen tokia eta erabili gabeko irudien garbiketa';

  @override
  String get storagePictures => 'Oharretako irudiak';

  @override
  String get storageCardMedia => 'Txarteletako irudiak eta audioa';

  @override
  String get storageText => 'Oharren testua';

  @override
  String get storageFree => 'Libre telefonoan';

  @override
  String get storageLow =>
      'Telefonoa ia beteta dago. Askatu tokia babeskopiek eta gogorarazpenek funtzionatzen jarrai dezaten.';

  @override
  String storageUnused(int count, String size) {
    return '$count irudi erabili gabe ($size)';
  }

  @override
  String get storageNoUnused => 'Ez dago erabili gabeko irudirik. Dena txukun dago.';

  @override
  String get storageClean => 'Kendu erabili gabeko irudiak';

  @override
  String storageCleaned(int count) {
    return '$count irudi kendu dira';
  }

  @override
  String get storageHint =>
      'Irudi bat erabili gabekotzat jotzen da ohar batek ere erakusten ez duenean bakarrik, zakarrontziko oharrak barne.';

  @override
  String get batteryTitle => 'Gogorarazpenek funtziona dezaten';

  @override
  String get batterySubtitle =>
      'Telefono batzuek aplikazioak gelditzen dituzte atzeko planoan. Egiaztatu zurea.';

  @override
  String get batteryStatusOk =>
      'Bateria aurrezteak ez du aplikazio hau mugatzen. Gogorarazpenak eta soinuak garaiz iritsi beharko lirateke.';

  @override
  String get batteryStatusLimited =>
      'Bateria aurrezteak aplikazio hau gelditu dezake atzeko planoan; beraz, gogorarazpenak eta soinuak berandu iritsi edo ez iritsi daitezke.';

  @override
  String get batteryOpen => 'Ireki bateriaren ezarpenak';

  @override
  String get batteryOpenApp => 'Ireki aplikazioaren ezarpenak';

  @override
  String get batteryGeneric =>
      'Bateriaren ezarpenetan, aukeratu aplikazio hau eta ezarri “Murriztapenik gabe” (edo “Ez optimizatu”).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: ireki baita ere Segurtasuna › Baimenak › Abiarazte automatikoa eta aktibatu aplikazio hau, eta ezarri bateria-aurreztailea “Murriztapenik gabe” moduan.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: ireki Bateria › aplikazio hau eta baimendu atzeko planoko jarduera eta abiarazte automatikoa; blokeatu aplikazioa azken aplikazioen zerrendan.';

  @override
  String get batterySamsung =>
      'Samsung: Bateria › Atzeko planoko erabileraren mugak: kendu aplikazio hau lotan dauden eta lo sakonean dauden aplikazioetatik.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Aplikazioen abiaraztea › aplikazio hau › kudeatu eskuz, eta baimendu abiarazte automatikoa, bigarren mailako abiaraztea eta atzeko planoan exekutatzea.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Bateria › Atzeko planoko energia-kontsumoa › baimendu aplikazio hau, eta gaitu abiarazte automatikoa baimenetan.';

  @override
  String get whatsNewTitle => 'Berritasunak';

  @override
  String get whatsNewSubtitle => 'Azken aldaketak lerro gutxitan';

  @override
  String get whatsNewDone => 'Ulertuta';

  @override
  String get whatsNewOrderTitle => 'Arrastatu txartelak zure ordenan';

  @override
  String get whatsNewOrderBody =>
      'Sorta batean aukeratu Ordenatu › Nire ordena, eta gero eutsi heldulekuari eta arrastatu.';

  @override
  String get whatsNewSpeechTitle => 'Bozgorailu bat txartelaren alde bakoitzean';

  @override
  String get whatsNewSpeechBody =>
      'Sakatu hitza edo itzulpena entzuteko. Abiadura, errepikapenak eta ahotsa errepaso-menuan daude. Hizkuntza testutik detektatzen da.';

  @override
  String get whatsNewReportTitle => 'Hileko txostena';

  @override
  String get whatsNewReportBody =>
      'Estatistiketan, sakatu txostenaren ikonoa hilabetea ikusteko eta PDF edo Word gisa gordetzeko.';

  @override
  String get whatsNewCareTitle => 'Telefonoaren eta datuen zaintza';

  @override
  String get whatsNewCareBody =>
      'Ezarpenek biltegi-orri bat dute orain, irudien garbiketarekin eta zure telefonoaren markarako bateria-gida batekin.';

  @override
  String get whatsNewSoundTitle => 'Soinu lasaiagoak';

  @override
  String get whatsNewSoundBody =>
      'Naturako soinuak leunagoak eta isilagoak dira, eta irudi-txartelak politagoak.';

  @override
  String autoBackupCheckOk(String date) {
    return '$date: egiaztatuta: azken babeskopia ondo irekitzen da.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date: egiaztatuta: babeskopia hondatu bat aurkitu da eta berri batekin ordeztu da.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date: egiaztatuta: ezin izan da azken babeskopia ireki. Gorde zuk zeuk babeskopia-fitxategi bat Ezarpenetatik.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Normalean $time inguruan ikasten duzu';
  }

  @override
  String get smartReviewTimeUse => 'Erabili';

  @override
  String get widgetNewNote => 'Ohar berria';

  @override
  String get noteConnections => 'Etiketak, estekak eta zereginak';

  @override
  String get navCards => 'Txartelak';

  @override
  String get studyAnswerWay => 'Nola erantzun';

  @override
  String get studyMorePractice => 'Praktika gehigarria';

  @override
  String get studySessionSettings => 'Saioaren ezarpenak';

  @override
  String get focusAdjustTitle => 'Zure saioa';

  @override
  String get focusPresetsTitle => 'Aurrez prestatuak';

  @override
  String get focusPresetStudy => 'Ikasketa';

  @override
  String get focusPresetDeep => 'Lan sakona';

  @override
  String get focusPresetQuick => 'Esprint azkarra';

  @override
  String get focusPresetReading => 'Irakurketa';

  @override
  String get focusPresetWorkout => 'Ariketa-txandak';

  @override
  String get focusAdjustMinutes => 'Kontzentrazioaren iraupena';

  @override
  String get focusAdjustBreak => 'Atsedenaren iraupena';

  @override
  String get focusAdjustRounds => 'Txandak';

  @override
  String get focusRoundsOpen => 'Mugarik gabe';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Sakatu denbora aldatzeko';

  @override
  String get flashArrangeDecks => 'Antolatu sortak';

  @override
  String get flashDeckActions => 'Sortaren aukerak';

  @override
  String get starterBrowse => 'Aurrez prestatutako sortak';

  @override
  String get starterBrowseHint => 'Gehitu bat ukitu batez eta hasi ikasten';

  @override
  String get dashOpenDecks => 'Ireki zure txartelak';

  @override
  String speechVoiceNumber(String n) {
    return '$n. ahotsa';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Fluxu ona. $m minutuko atsedena?';
  }

  @override
  String get focusFlowBreakStart => 'Hasi atsedena';

  @override
  String tasksFinishAt(String time) {
    return 'Hasi orain eta dena amaituko duzu $time baino lehen';
  }

  @override
  String get focusCalmPacing => 'Erritmo lasaia';

  @override
  String get focusCalmPacingHint => 'Minutu osoak eta eraztuna soilik, segundorik gabe';

  @override
  String get focusFlipHint => 'Jarri telefonoa ahoz behera hasteko';

  @override
  String get focusImmersive => 'Murgiltze modua';

  @override
  String get focusImmersiveBlack => 'Beltz hutsa (bateria aurrezten du)';

  @override
  String get focusFlipToFocus => 'Biratu kontzentratzeko';

  @override
  String get focusFlipToFocusHint =>
      'Murgiltze moduan: ahoz behera hasten da, altxatzean pausatzen da';

  @override
  String get guardTitle => 'Distrakzioen babesa';

  @override
  String get guardSubtitle =>
      'Pausatu distraitzen duten aplikazioak kontzentratzen zaren bitartean';

  @override
  String get guardSwitch => 'Pausatu distraitzen duten aplikazioak';

  @override
  String get guardSwitchHint => 'Kontzentrazio-saioetan eta zure Ordutegi-babesaren orduetan';

  @override
  String get guardNeedsAccess => 'Erabilerraztasun-etengailua behar da: sakatu aktibatzeko';

  @override
  String get guardDisclosureTitle => 'Nola funtzionatzen du babesak';

  @override
  String get guardDisclosureBody =>
      'Zuk aukeratutako aplikazioak pausatzeko, Deep Focus-ek Androiden erabilerraztasun-zerbitzua erabiltzen du zein aplikazio dagoen irekita ikusteko. “Itxi Shorts eta Reels” aktibatuta badago, pantailan bideo laburren erreproduzigailu bat dagoen ere egiaztatzen du.\n\nEz du testurik irakurtzen, ez du ikusten duen ezer gordetzen eta ez du ezer inora bidaltzen: dena zure telefonoan geratzen da. Edonoiz desaktiba dezakezu erabilerraztasun-ezarpenetan.';

  @override
  String get guardAgree => 'Onartu eta ireki ezarpenak';

  @override
  String get guardModeGentle => 'Leuna';

  @override
  String get guardModeStrict => 'Zorrotza';

  @override
  String get guardGentleHint => 'Arnasa hartzeko 5 segundoko pausa, eta gero zuk erabakitzen duzu';

  @override
  String get guardStrictHint =>
      'Aukeratutako aplikazioak itxita geratzen dira kontzentrazio-denbora amaitu arte';

  @override
  String get guardApps => 'Pausatzeko aplikazioak';

  @override
  String get guardAppsAllowed => 'Baimendutako aplikazioak';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikazio',
      one: 'Aplikazio 1',
      zero: 'Oraindik ez da ezer aukeratu',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Baimendu aukeratutako aplikazioak soilik';

  @override
  String get guardAllowlistHint =>
      'Beste aplikazio guztiak pausatu egiten dira; deiek, ezarpenek eta teklatuak beti funtzionatzen dute';

  @override
  String get guardShorts => 'Itxi Shorts eta Reels';

  @override
  String get guardShortsHint =>
      'Babesa aktibatuta dagoen bakoitzean. Ahal den neurrian: aplikazio hauek maiz aldatzen dira';

  @override
  String get guardSchedule => 'Ordutegi-babesa';

  @override
  String get guardScheduleHint =>
      'Babestu baita ere ezarritako egun eta orduetan, eskolan edo lanean adibidez';

  @override
  String get guardFrom => 'Noiztik';

  @override
  String get guardTo => 'Noiz arte';

  @override
  String get guardSearchApps => 'Bilatu aplikazioak';

  @override
  String get guardNoApps => 'Ez da aplikaziorik aurkitu';

  @override
  String get guardPrivacy =>
      'Zure telefonoan bakarrik funtzionatzen du: babesak ikusten du zein aplikazio dagoen irekita, inoiz ez barruan zer dagoen, eta ez du ezer bidaltzen.';

  @override
  String get guardBreathe => 'Hartu arnasa… eta bota';

  @override
  String get guardQuestion => 'Aplikazio hau behar duzu orain?';

  @override
  String get guardBackToFocus => 'Itzuli kontzentraziora';

  @override
  String get guardOpenFive => 'Ireki 5 minutuz';

  @override
  String get guardStrictBody =>
      'Aplikazio hau pausatuta dago zure kontzentrazio-denbora amaitu arte.';

  @override
  String get guardShortsClosed =>
      'Bideo laburrak itxi egiten dira babesa aktibatuta dagoen bitartean';

  @override
  String get faqGuardQ => 'Nola gelditu distraitzen duten aplikazioak kontzentratzen naizenean?';

  @override
  String get faqGuardA =>
      'Ireki Kontzentrazioa → tenporizadorearen ezarpenak → Distrakzioen babesa. Aukeratu aplikazioak, eta gero Leuna (5 segundoko arnasa eta “Aplikazio hau behar duzu orain?” galdera) edo Zorrotza (itxita geratzen dira). Kontzentrazio-saioetan funtzionatzen du eta, Ordutegi-babesarekin, ezartzen dituzun egun eta orduetan. “Baimendu aukeratutako aplikazioak soilik” aukerak beste guztia pausatzen du; deiek, ezarpenek eta teklatuak beti funtzionatzen dute. Androidek behin eskatuko dizu babesa erabilerraztasun-ezarpenetan aktibatzeko. Zein aplikazio dagoen irekita bakarrik ikusten du eta ez du ezer bidaltzen.';

  @override
  String notesMovedToNotebook(String name) {
    return '$name koadernora eraman da';
  }

  @override
  String get notesDragHint => 'Eutsi ohar bati eta arrastatu koaderno batera';

  @override
  String get guardReviewCards => 'Errepasatu txartelak horren ordez';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count txartel zure zain',
      one: 'Txartel 1 zure zain',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Larrialdia: eutsi 10 segundoz';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Jarraitu eusten… $n';
  }

  @override
  String get guardWeekTitle => 'Aste hau';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pausa',
      one: 'Pausa 1',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aldiz itzuli zara kontzentraziora',
      one: 'behin itzuli zara kontzentraziora',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Aldatu hitzen izena';

  @override
  String get wordsSubtitle => 'Erabili zure hitza aplikazioko edozein testutarako';

  @override
  String get wordsHint =>
      'Sakatu testu bat aldatzeko. Zure hitzak hizkuntza honetan bakarrik aplikatzen dira eta babeskopietan gordetzen dira.';

  @override
  String get wordsSearch => 'Bilatu testuak';

  @override
  String get wordsChangedOnly => 'Aldatuak soilik';

  @override
  String wordsOriginal(String text) {
    return 'Jatorrizkoa: $text';
  }

  @override
  String get wordsReset => 'Erabili jatorrizkoa';

  @override
  String get wordsResetAll => 'Berrezarri hitz guztiak';

  @override
  String get wordsResetAllConfirm =>
      'Hizkuntza honetako testu guztiak jatorrizkora itzultzen dira.';

  @override
  String get wordsNone => 'Ez da testurik aurkitu';

  @override
  String get settingsLanguageSearch => 'Bilatu hizkuntzak';

  @override
  String get settingsLanguageNoMatch => 'Ez dago bat datorren hizkuntzarik';
}
