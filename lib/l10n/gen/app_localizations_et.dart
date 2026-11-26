// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Avaleht';

  @override
  String get navTasks => 'Ülesanded';

  @override
  String get navFocus => 'Fookus';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get navSpaces => 'Ruumid';

  @override
  String get moduleProjects => 'Projektid';

  @override
  String get moduleNotes => 'Märkmed';

  @override
  String get moduleFlashcards => 'Kaardid';

  @override
  String get moduleGoals => 'Eesmärgid';

  @override
  String get moduleHabits => 'Harjumused';

  @override
  String get moduleAnalytics => 'Ülevaade';

  @override
  String get moduleSearch => 'Otsing';

  @override
  String get moduleAssistant => 'Assistent';

  @override
  String get moduleSettings => 'Seaded';

  @override
  String get moduleTrash => 'Prügikast';

  @override
  String get actionSave => 'Salvesta';

  @override
  String get actionCancel => 'Tühista';

  @override
  String get actionDelete => 'Kustuta';

  @override
  String get actionEdit => 'Muuda';

  @override
  String get actionDone => 'Valmis';

  @override
  String get actionAdd => 'Lisa';

  @override
  String get actionCreate => 'Loo';

  @override
  String get actionClose => 'Sulge';

  @override
  String get actionBack => 'Tagasi';

  @override
  String get actionUndo => 'Võta tagasi';

  @override
  String get actionRestore => 'Taasta';

  @override
  String get actionRetry => 'Proovi uuesti';

  @override
  String get actionContinue => 'Jätka';

  @override
  String get actionSkip => 'Jäta vahele';

  @override
  String get actionArchive => 'Arhiveeri';

  @override
  String get actionUnarchive => 'Taasta arhiivist';

  @override
  String get actionPin => 'Kinnita';

  @override
  String get actionUnpin => 'Vabasta';

  @override
  String get actionMore => 'Rohkem valikuid';

  @override
  String get actionClear => 'Tühjenda';

  @override
  String get actionSearch => 'Otsi';

  @override
  String get actionSort => 'Sordi';

  @override
  String get actionShare => 'Jaga';

  @override
  String get actionImport => 'Impordi';

  @override
  String get actionExport => 'Ekspordi';

  @override
  String get actionPause => 'Peata';

  @override
  String get actionResume => 'Jätka';

  @override
  String get actionStart => 'Alusta';

  @override
  String get actionStop => 'Lõpeta';

  @override
  String get actionComplete => 'Vii lõpule';

  @override
  String get actionDeleteForever => 'Kustuta jäädavalt';

  @override
  String get actionEmptyTrash => 'Tühjenda prügikast';

  @override
  String get actionUnlink => 'Eemalda link';

  @override
  String get actionCustomize => 'Kohanda';

  @override
  String get actionPreview => 'Eelvaade';

  @override
  String get actionLog => 'Logi edenemine';

  @override
  String get stateLoading => 'Laadimine…';

  @override
  String get stateSaving => 'Salvestamine…';

  @override
  String get stateSaved => 'Salvestatud';

  @override
  String get stateUnsaved => 'Salvestamata muudatused';

  @override
  String get errorGenericTitle => 'Midagi läks valesti';

  @override
  String get errorGenericMessage => 'Teie andmed on turvas. Proovige uuesti.';

  @override
  String get errorLoadFailed => 'Seda sisu ei õnnestunud laadida.';

  @override
  String get errorSaveFailed => 'Salvestamine ebaõnnestus. Teie muudatused on alles.';

  @override
  String get validationRequired => 'See väli on kohustuslik';

  @override
  String get validationTitleRequired => 'Sisestage pealkiri';

  @override
  String get validationNameRequired => 'Sisestage nimi';

  @override
  String get validationTooLong => 'See on liiga pikk';

  @override
  String get validationEndBeforeStart => 'Lõpp peab olema pärast algust';

  @override
  String get validationStartAfterDue => 'Alguskuupäev peab olema enne tähtaega';

  @override
  String get validationPositiveNumber => 'Sisestage nullist suurem arv';

  @override
  String get validationDependencyCycle => 'See looks ringsõltuvuse';

  @override
  String get validationInvalidRepeat => 'See kordusreegel ei sobi';

  @override
  String get deletedItem => 'Teisaldatud prügikasti';

  @override
  String get untitled => 'Pealkirjata';

  @override
  String get noProject => 'Projektita';

  @override
  String get greetingMorning => 'Tere hommikust';

  @override
  String get greetingAfternoon => 'Tere päevast';

  @override
  String get greetingEvening => 'Tere õhtust';

  @override
  String get dashFocusToday => 'Tänane fookus';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Alusta fookust';

  @override
  String get dashFocusRunning => 'Seanss käib';

  @override
  String get dashTodayTasks => 'Tähtaeg täna';

  @override
  String get dashAgenda => 'Päevakava';

  @override
  String get dashHabits => 'Tänased harjumused';

  @override
  String get dashGoals => 'Eesmärgid';

  @override
  String get dashReview => 'Kordamine';

  @override
  String get dashRecentNotes => 'Hiljutised märkmed';

  @override
  String get dashInsight => 'Soovitus';

  @override
  String get dashSeeAll => 'Kuva kõik';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Korrata $count kaarti',
      one: 'Korrata 1 kaart',
      zero: 'Korrata pole ühtegi kaarti',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Korda kohe';

  @override
  String get dashCustomizeTitle => 'Avalehe jaotised';

  @override
  String get dashCustomizeHint => 'Valige, mida avalehel kuvatakse.';

  @override
  String get dashSectionFocus => 'Fookus';

  @override
  String get dashSectionToday => 'Tänased ülesanded';

  @override
  String get dashSectionAgenda => 'Päevakava';

  @override
  String get dashSectionHabits => 'Harjumused';

  @override
  String get dashSectionGoals => 'Eesmärgid';

  @override
  String get dashSectionReview => 'Kaartide kordamine';

  @override
  String get dashSectionNotes => 'Hiljutised märkmed';

  @override
  String get dashSectionInsight => 'Soovitused';

  @override
  String get quickAddTask => 'Uus ülesanne';

  @override
  String get quickAddNote => 'Uus märge';

  @override
  String get quickAddEvent => 'Uus sündmus';

  @override
  String get quickStartFocus => 'Fookus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Teil on $count hilinenud ülesannet. Alustage kõige olulisemast.',
      one: 'Teil on 1 hilinenud ülesanne. Planeerige see ümber või tehke see esimesena.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Päeva fookuseesmärgini on jäänud $minutes minutit.';
  }

  @override
  String get insightCardsDue => 'Korrake kaarte kohe, kuni need on värskelt meeles.';

  @override
  String get insightAllClear => 'Kõik on graafikus. Planeerige homset või tehke teadlik paus.';

  @override
  String insightHabitStreak(String habit) {
    return 'Hoidke seeriat: $habit on täna veel tegemata.';
  }

  @override
  String get focusTitle => 'Fookus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Taimer';

  @override
  String get focusModeCountUp => 'Stopper';

  @override
  String get focusModeOpen => 'Vaba';

  @override
  String get focusPhaseWork => 'Fookus';

  @override
  String get focusPhaseShortBreak => 'Lühike paus';

  @override
  String get focusPhaseLongBreak => 'Pikk paus';

  @override
  String get focusReady => 'Alustage, kui olete valmis';

  @override
  String get focusPaused => 'Peatatud';

  @override
  String get focusRunning => 'Fookuses';

  @override
  String get focusDuration => 'Kestus';

  @override
  String get focusLinkTask => 'Seo ülesanne';

  @override
  String get focusLinkedTask => 'Töös';

  @override
  String get focusNoTask => 'Ülesannet pole seotud';

  @override
  String focusCycle(int current, int total) {
    return 'Tsükkel $current/$total';
  }

  @override
  String get focusSkipBreak => 'Jäta paus vahele';

  @override
  String get focusStartBreak => 'Alusta pausi';

  @override
  String get focusStartNext => 'Alusta järgmist fookust';

  @override
  String get focusSessionComplete => 'Seanss on lõppenud';

  @override
  String get focusSessionStopped => 'Seanss on salvestatud';

  @override
  String focusSessionSummary(String duration) {
    return 'Keskendusite $duration.';
  }

  @override
  String get focusAddNote => 'Lisage selle seansi kohta märkus';

  @override
  String get focusHistory => 'Ajalugu';

  @override
  String get focusNoHistory => 'Lõpetatud seansid kuvatakse siin';

  @override
  String get focusTargets => 'Eesmärgid';

  @override
  String get focusDailyTarget => 'Päeva eesmärk';

  @override
  String get focusWeeklyTarget => 'Nädala eesmärk';

  @override
  String get focusOutcomeCompleted => 'Lõpetatud';

  @override
  String get focusOutcomeInterrupted => 'Lõpetatud varem';

  @override
  String get focusRecovered => 'Teie seanss jätkus, kui rakendus oli suletud.';

  @override
  String get focusCompletedWhileAway =>
      'Kui rakendus oli suletud, lõppes seanss ja see salvestati.';

  @override
  String get focusNotificationsOff =>
      'Märguanded on välja lülitatud. Teid ei teavitata, kui seanss lõpeb.';

  @override
  String get focusBatteryHint =>
      'Mõni seade peatab taustal rakendusi. Taimer jääb täpseks, kuid märguanded võivad hilineda. Usaldusväärsete märguannete jaoks lubage piiramatu akukasutus.';

  @override
  String get focusOpenSettings => 'Ava seaded';

  @override
  String get focusStopConfirmTitle => 'Kas lõpetada see seanss?';

  @override
  String get focusStopConfirmMessage => 'Seni keskendutud aeg salvestatakse.';

  @override
  String get focusDiscard => 'Loobu';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutit',
      one: '1 minut',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, jäänud $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, möödunud $time';
  }

  @override
  String get focusDeleteSession => 'Kustuta seanss';

  @override
  String get tasksTitle => 'Ülesanded';

  @override
  String get tasksViewToday => 'Täna';

  @override
  String get tasksViewUpcoming => 'Tulevased';

  @override
  String get tasksViewAll => 'Kõik';

  @override
  String get tasksViewOverdue => 'Hilinenud';

  @override
  String get tasksViewCompleted => 'Tehtud';

  @override
  String get tasksQuickAddHint => 'Lisa ülesanne…';

  @override
  String get tasksEmptyTitle => 'Kõik tehtud';

  @override
  String get tasksEmptyMessage => 'Lisage ülesanne, et oma päeva kujundama hakata.';

  @override
  String get tasksEmptyCompleted => 'Tehtud ülesanded kuvatakse siin.';

  @override
  String get taskNew => 'Uus ülesanne';

  @override
  String get taskEdit => 'Muuda ülesannet';

  @override
  String get taskTitleLabel => 'Pealkiri';

  @override
  String get taskTitleHint => 'Mida on vaja teha?';

  @override
  String get taskDescriptionLabel => 'Kirjeldus';

  @override
  String get taskNotesLabel => 'Märkmed';

  @override
  String get taskPriority => 'Prioriteet';

  @override
  String get priorityNone => 'Puudub';

  @override
  String get priorityLow => 'Madal';

  @override
  String get priorityMedium => 'Keskmine';

  @override
  String get priorityHigh => 'Kõrge';

  @override
  String get priorityUrgent => 'Kiire';

  @override
  String get taskDueDate => 'Tähtaeg';

  @override
  String get taskStartDate => 'Alguskuupäev';

  @override
  String get taskReminder => 'Meeldetuletus';

  @override
  String get taskRepeat => 'Kordus';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategooria';

  @override
  String get taskCategoryHint => 'nt Töö, Kodu, Õpingud';

  @override
  String get taskEstimateMinutes => 'Hinnang (minutites)';

  @override
  String get taskTracked => 'Mõõdetud fookus';

  @override
  String get taskLabels => 'Sildid';

  @override
  String get taskAddLabel => 'Uus silt';

  @override
  String get taskChecklist => 'Kontrollnimekiri';

  @override
  String get taskAddChecklistItem => 'Lisa punkt';

  @override
  String get taskSubtasks => 'Alamülesanded';

  @override
  String get taskAddSubtask => 'Lisa alamülesanne';

  @override
  String get taskDependencies => 'Blokeerib';

  @override
  String get taskAddDependency => 'Lisa blokeeriv ülesanne';

  @override
  String get taskLinkedNotes => 'Seotud märkmed';

  @override
  String get taskSetTime => 'Määra kellaaeg';

  @override
  String get taskNoDate => 'Kuupäevata';

  @override
  String get taskCompleted => 'Ülesanne tehtud';

  @override
  String get taskNextOccurrence => 'Järgmine kordus loodud';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päeva hilinenud',
      one: '1 päev hilinenud',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Märgi „$title” tehtuks';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Märgi „$title” tegemata';
  }

  @override
  String get sortSmart => 'Nutikas';

  @override
  String get sortDueDate => 'Tähtaeg';

  @override
  String get sortPriority => 'Prioriteet';

  @override
  String get sortCreated => 'Uusimad';

  @override
  String get sortTitle => 'Pealkiri';

  @override
  String get filterAllProjects => 'Kõik projektid';

  @override
  String get filterAnyPriority => 'Mis tahes prioriteet';

  @override
  String get filterTitle => 'Filtreeri ja sordi';

  @override
  String get dateToday => 'Täna';

  @override
  String get dateTomorrow => 'Homme';

  @override
  String get dateYesterday => 'Eile';

  @override
  String get repeatNever => 'Ei kordu';

  @override
  String get repeatDaily => 'Iga päev';

  @override
  String get repeatWeekdays => 'Igal tööpäeval';

  @override
  String get repeatWeekly => 'Iga nädal';

  @override
  String get repeatMonthly => 'Iga kuu';

  @override
  String get repeatYearly => 'Iga aasta';

  @override
  String get repeatCustom => 'Kohandatud';

  @override
  String get repeatEvery => 'Korda iga';

  @override
  String get repeatOnDays => 'Päevadel';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'päeva', one: 'päev');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nädalat',
      one: 'nädal',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'kuud', one: 'kuu');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'aastat', one: 'aasta');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kordust',
      one: '1 kordust',
    );
    return 'Lõpeb pärast $_temp0';
  }

  @override
  String get repeatEndsNever => 'Ei lõpe kunagi';

  @override
  String get reminderAtTime => 'Sündmuse ajal';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutit enne',
      one: '1 minut enne',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours tundi enne',
      one: '1 tund enne',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 päev enne';

  @override
  String get projectsTitle => 'Projektid';

  @override
  String get projectsEmptyTitle => 'Projekte veel pole';

  @override
  String get projectsEmptyMessage => 'Rühmitage seotud ülesanded, märkmed ja fookusaeg.';

  @override
  String get projectNew => 'Uus projekt';

  @override
  String get projectEdit => 'Muuda projekti';

  @override
  String get projectName => 'Nimi';

  @override
  String get projectDescription => 'Kirjeldus';

  @override
  String get projectGoal => 'Eesmärk';

  @override
  String get projectDeadline => 'Tähtaeg';

  @override
  String get projectColor => 'Värv';

  @override
  String get projectIcon => 'Ikoon';

  @override
  String get projectProgress => 'Edenemine';

  @override
  String projectTasksDone(int done, int total) {
    return '$done/$total ülesannet tehtud';
  }

  @override
  String get projectFocusTime => 'Fookusaeg';

  @override
  String get projectArchived => 'Arhiveeritud projektid';

  @override
  String get projectShowArchived => 'Näita arhiveerituid';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päeva jäänud',
      one: '1 päev jäänud',
      zero: 'Tähtaeg täna',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Tähtaeg möödas';

  @override
  String get calendarTitle => 'Kalender';

  @override
  String get calendarMonth => 'Kuu';

  @override
  String get calendarWeek => 'Nädal';

  @override
  String get calendarDay => 'Päev';

  @override
  String get calendarToday => 'Täna';

  @override
  String get calendarPrevious => 'Eelmine';

  @override
  String get calendarNext => 'Järgmine';

  @override
  String get calendarNoEvents => 'Midagi pole plaanitud';

  @override
  String get calendarAllDay => 'Terve päev';

  @override
  String get eventNew => 'Uus sündmus';

  @override
  String get eventEdit => 'Muuda sündmust';

  @override
  String get eventTitleHint => 'Sündmuse pealkiri';

  @override
  String get eventStarts => 'Algab';

  @override
  String get eventEnds => 'Lõpeb';

  @override
  String get eventKind => 'Tüüp';

  @override
  String get eventKindEvent => 'Sündmus';

  @override
  String get eventKindTimeBlock => 'Ajaplokk';

  @override
  String get eventKindFocus => 'Fookusseanss';

  @override
  String get eventKindGoal => 'Isiklik eesmärk';

  @override
  String get eventDescription => 'Üksikasjad';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kattub $count sündmusega',
      one: 'Kattub 1 sündmusega',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Sel päeval on ajakattuvusi';

  @override
  String get calendarTaskDue => 'Ülesande tähtaeg';

  @override
  String get calendarDragHint => 'Ümberplaanimiseks vajutage pikalt sündmusele ja lohistage see';

  @override
  String get calendarRescheduled => 'Sündmus teisaldatud';

  @override
  String get calendarScheduleTask => 'Planeeri ajaplokina';

  @override
  String get notesTitle => 'Märkmed';

  @override
  String get notesViewAll => 'Kõik';

  @override
  String get notesViewPinned => 'Kinnitatud';

  @override
  String get notesViewFavorites => 'Lemmikud';

  @override
  String get notesViewArchived => 'Arhiveeritud';

  @override
  String get notesTags => 'Sildid';

  @override
  String get notesNewNotebook => 'Uus märkmik';

  @override
  String get notesNoNotebook => 'Märkmikuta';

  @override
  String get notesEmptyTitle => 'Tühi leht';

  @override
  String get notesEmptyMessage => 'Pange kirja ideed, koosolekumärkmed ja teadmised.';

  @override
  String get noteTitleHint => 'Pealkiri';

  @override
  String get noteBodyHint =>
      'Alustage kirjutamist… Kasutage silte # abil ja märkmete linkimiseks [[Pealkiri]].';

  @override
  String get noteFavorite => 'Lemmik';

  @override
  String get noteUnfavorite => 'Eemalda lemmikutest';

  @override
  String get noteMoveTo => 'Teisalda märkmikku';

  @override
  String get noteBacklinks => 'Viidatud märkmetest';

  @override
  String get noteLinkedTasks => 'Seotud ülesanded';

  @override
  String get noteLinkTask => 'Seo ülesanne';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Pealkiri';

  @override
  String get noteFormatBold => 'Paks';

  @override
  String get noteFormatItalic => 'Kursiiv';

  @override
  String get noteFormatList => 'Täpploend';

  @override
  String get noteFormatChecklist => 'Kontrollnimekiri';

  @override
  String get noteFormatLink => 'Link';

  @override
  String noteEdited(String time) {
    return 'Muudetud $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sõna',
      one: '1 sõna',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kaardid';

  @override
  String get flashEmptyTitle => 'Looge oma esimene pakk';

  @override
  String get flashEmptyMessage =>
      'Ajastatud kordamine näitab iga kaarti vahetult enne, kui te selle unustaksite.';

  @override
  String get deckNew => 'Uus pakk';

  @override
  String get deckEdit => 'Muuda pakki';

  @override
  String get deckName => 'Paki nimi';

  @override
  String get deckDescription => 'Kirjeldus';

  @override
  String get deckDailyNew => 'Uusi kaarte päevas';

  @override
  String get deckDailyReview => 'Päeva kordamise eesmärk';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarti',
      one: '1 kaart',
      zero: 'Kaarte pole',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Korrata';

  @override
  String get deckNewCards => 'Uued';

  @override
  String get deckMature => 'Omandatud';

  @override
  String get deckStudy => 'Õpi';

  @override
  String get deckNothingDue => 'Praegu pole midagi korrata. Tulge hiljem tagasi.';

  @override
  String get deckEmptyCards => 'Lisage kaarte, et õppima hakata.';

  @override
  String get cardNew => 'Uus kaart';

  @override
  String get cardEdit => 'Muuda kaarti';

  @override
  String get cardFront => 'Esikülg';

  @override
  String get cardBack => 'Tagakülg';

  @override
  String get cardFrontHint => 'Küsimus või mõiste';

  @override
  String get cardBackHint => 'Vastus või määratlus';

  @override
  String get cardTags => 'Sildid';

  @override
  String get cardAddAnother => 'Salvesta ja lisa veel';

  @override
  String get reviewShowAnswer => 'Näita vastust';

  @override
  String get reviewAgain => 'Uuesti';

  @override
  String get reviewHard => 'Raske';

  @override
  String get reviewGood => 'Hea';

  @override
  String get reviewEasy => 'Lihtne';

  @override
  String reviewProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String get reviewFinishedTitle => 'Seanss on lõppenud';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kordasite $count kaarti.',
      one: 'Kordasite 1 kaarti.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Vastuse nägemiseks puudutage';

  @override
  String get importCardsTitle => 'Impordi kaardid';

  @override
  String get importCardsHint =>
      'Kleepige üks kaart rea kohta (esi- ja tagakülg eraldatud tabeldusmärgi või semikooloniga) või valige fail: Excel (.xlsx), CSV, Anki pakk (.apkg) või eksporditud pakk.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarti imporditud',
      one: '1 kaart imporditud',
      zero: 'Ühtegi kaarti ei imporditud',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Seda sisu ei õnnestunud importida.';

  @override
  String get exportCopied => 'Pakk eksporditud';

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
      other: '$count päeva',
      one: '1 päev',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Eesmärgid';

  @override
  String get goalsEmptyTitle => 'Seadke siht';

  @override
  String get goalsEmptyMessage =>
      'Seadke päeva-, nädala-, kuu- või pikaajalisi eesmärke ja jälgige tegelikku edenemist.';

  @override
  String get goalNew => 'Uus eesmärk';

  @override
  String get goalEdit => 'Muuda eesmärki';

  @override
  String get goalTitleHint => 'Mida soovite saavutada?';

  @override
  String get goalPeriod => 'Periood';

  @override
  String get goalPeriodDaily => 'Päev';

  @override
  String get goalPeriodWeekly => 'Nädal';

  @override
  String get goalPeriodMonthly => 'Kuu';

  @override
  String get goalPeriodLongTerm => 'Pikaajaline';

  @override
  String get goalTarget => 'Siht';

  @override
  String get goalUnit => 'Ühik';

  @override
  String get goalUnitHint => 'nt leheküljed, km, tunnid';

  @override
  String get goalStatusActive => 'Aktiivne';

  @override
  String get goalStatusPaused => 'Peatatud';

  @override
  String get goalStatusAchieved => 'Saavutatud';

  @override
  String get goalPause => 'Peata eesmärk';

  @override
  String get goalResume => 'Jätka eesmärki';

  @override
  String get goalMarkAchieved => 'Märgi saavutatuks';

  @override
  String goalProgressOf(String current, String target) {
    return '$current/$target';
  }

  @override
  String get goalLogAmount => 'Kogus';

  @override
  String get goalLogNote => 'Märkus (valikuline)';

  @override
  String get goalHistory => 'Ajalugu';

  @override
  String get goalNoHistory => 'Logitud edenemine kuvatakse siin';

  @override
  String get goalLinkedTasks => 'Seotud ülesanded';

  @override
  String get goalLinkedTasksHint => 'Iga tehtud seotud ülesanne loeb selle eesmärgi puhul 1.';

  @override
  String get goalThisPeriod => 'See periood';

  @override
  String get habitsTitle => 'Harjumused';

  @override
  String get habitsEmptyTitle => 'Väikesed sammud iga päev';

  @override
  String get habitsEmptyMessage => 'Looge harjumus ja märkige see, kui olete selle teinud.';

  @override
  String get habitNew => 'Uus harjumus';

  @override
  String get habitEdit => 'Muuda harjumust';

  @override
  String get habitNameHint => 'nt Loe 20 lehekülge';

  @override
  String get habitDays => 'Ajakava';

  @override
  String get habitEveryDay => 'Iga päev';

  @override
  String get habitTargetPerDay => 'Korda päevas';

  @override
  String get habitReminder => 'Igapäevane meeldetuletus';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-päevane seeria',
      one: '1-päevane seeria',
      zero: 'Seeriat pole',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Parim seeria';

  @override
  String get habitCurrentStreak => 'Praegune seeria';

  @override
  String get habitConsistency => 'Järjepidevus';

  @override
  String get habitLast90 => 'Viimased 90 päeva';

  @override
  String get habitPaused => 'Peatatud';

  @override
  String get habitPause => 'Peata harjumus';

  @override
  String get habitResume => 'Jätka harjumust';

  @override
  String get habitDoneToday => 'Täna tehtud';

  @override
  String habitCountToday(int count, int target) {
    return 'Täna $count/$target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Märgi „$name”';
  }

  @override
  String get habitNotScheduledToday => 'Täna pole plaanis';

  @override
  String get analyticsTitle => 'Ülevaade';

  @override
  String get rangeWeek => '7 päeva';

  @override
  String get rangeMonth => '30 päeva';

  @override
  String get rangeQuarter => '90 päeva';

  @override
  String get statFocusTime => 'Fookusaeg';

  @override
  String get statSessions => 'Seansid';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed lõpetatud · $interrupted lõpetatud varem';
  }

  @override
  String get statTasksDone => 'Tehtud ülesanded';

  @override
  String get statCompletionRate => 'Õigeaegne täitmine';

  @override
  String get statHabitConsistency => 'Harjumuste järjepidevus';

  @override
  String get statRetention => 'Kaartide meelespüsimine';

  @override
  String get statReviews => 'Kordamised';

  @override
  String get statActiveGoals => 'Aktiivsed eesmärgid';

  @override
  String get statEstimated => 'Hinnanguline tehtud töö';

  @override
  String get statEstimatedNote => 'Teie hinnangute põhjal, mitte mõõdetud aja järgi';

  @override
  String get statMeasuredNote => 'Mõõdetud fookusseansside põhjal';

  @override
  String get chartFocusByDay => 'Fookusminutid päevas';

  @override
  String get chartTasksByDay => 'Tehtud ülesanded päevas';

  @override
  String get chartTimeByProject => 'Aeg projektide kaupa';

  @override
  String get chartProjectProgress => 'Projektide edenemine';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: kokku $total, parim päev $best';
  }

  @override
  String get analyticsNoData => 'Andmeid pole veel piisavalt';

  @override
  String get analyticsUnassigned => 'Määramata';

  @override
  String get searchHint => 'Otsi kõikjalt…';

  @override
  String get searchRecent => 'Hiljutised otsingud';

  @override
  String get searchClearRecent => 'Tühjenda hiljutised otsingud';

  @override
  String searchNoResults(String query) {
    return 'Päringule „$query” pole tulemusi';
  }

  @override
  String get searchStartTyping =>
      'Otsige ülesannetest, märkmetest, kaartidest, eesmärkidest, sündmustest ja mujalt. Otsing jääb sellesse seadmesse.';

  @override
  String get searchCatTask => 'Ülesanded';

  @override
  String get searchCatProject => 'Projektid';

  @override
  String get searchCatNote => 'Märkmed';

  @override
  String get searchCatFlashcard => 'Kaardid';

  @override
  String get searchCatDeck => 'Pakid';

  @override
  String get searchCatGoal => 'Eesmärgid';

  @override
  String get searchCatHabit => 'Harjumused';

  @override
  String get searchCatEvent => 'Sündmused';

  @override
  String get searchCatSession => 'Seansid';

  @override
  String get searchAll => 'Kõik';

  @override
  String get assistantTitle => 'Assistent';

  @override
  String get assistantIntro =>
      'Planeerimisabi, mis töötab teie seadmes. Kokkuvõtete ja loomise jaoks saate soovi korral ühendada enda valitud tehisintellekti teenuse.';

  @override
  String get assistantOnDevice => 'Seadmes';

  @override
  String get assistantCloud => 'TI-teenus';

  @override
  String get assistantPlanDay => 'Planeeri mu päev';

  @override
  String get assistantPlanDayDesc =>
      'Järjestab avatud ülesanded kiireloomulisuse, prioriteedi ja hinnangu järgi ning sobitab need teie sündmuste ümber.';

  @override
  String get assistantExtractTasks => 'Eralda märkmest ülesanded';

  @override
  String get assistantExtractTasksDesc =>
      'Leiab märkmest kontrollnimekirja punktid ja tegevusread ning muudab need ülesanneteks.';

  @override
  String get assistantMakeCards => 'Loo märkmest kaardid';

  @override
  String get assistantMakeCardsDesc =>
      'Muudab read „mõiste: määratlus” ja küsimus/vastus kaartideks.';

  @override
  String get assistantSummarize => 'Tee märkmest kokkuvõte';

  @override
  String get assistantSummarizeDesc =>
      'Vajab TI-teenust. Märge saadetakse alles pärast teie kinnitust.';

  @override
  String get assistantWorkload => 'Töökoormuse ülevaade';

  @override
  String get assistantWorkloadDesc => 'Võrdleb hinnangulist tööd teie selle nädala vaba ajaga.';

  @override
  String get assistantPlanEmpty => 'Planeerimiseks pole avatud ülesandeid. Nautige vaba aega.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Vaba fookusaeg täna: $time';
  }

  @override
  String get assistantPlanOverflow => 'Need ei pruugi täna mahtuda:';

  @override
  String get assistantChooseNote => 'Valige märge';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Leiti $count ülesannet',
      one: 'Leiti 1 ülesanne',
      zero: 'Sellest märkmest ülesandeid ei leitud',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Leiti $count kaarti',
      one: 'Leiti 1 kaart',
      zero: 'Sellest märkmest kaarte ei leitud',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Valige pakk';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Hinnanguline töö: $estimated. Vaba aeg: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Teil on plaanis rohkem, kui aega on. Kaaluge madalama prioriteediga ülesannete edasilükkamist.';

  @override
  String get assistantWorkloadOk => 'Teie plaan mahub saadaolevasse aega.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avatud ülesandel pole hinnangut.',
      one: '1 avatud ülesandel pole hinnangut.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'TI-teenus';

  @override
  String get assistantProviderOff => 'Teenust pole ühendatud. Seadme tööriistad töötavad endiselt.';

  @override
  String assistantProviderOn(String host) {
    return 'Ühendatud: $host';
  }

  @override
  String get assistantEndpoint => 'API lõpp-punkt (HTTPS)';

  @override
  String get assistantModel => 'Mudel';

  @override
  String get assistantApiKey => 'API võti';

  @override
  String get assistantApiKeyStored => 'Hoitakse turvaliselt selles seadmes';

  @override
  String get assistantHttpsOnly => 'Lubatud on ainult HTTPS lõpp-punktid';

  @override
  String get assistantConsentTitle => 'Kas saata see sisu teie TI-teenusele?';

  @override
  String assistantConsentBody(String host) {
    return 'Valitud märkme tekst lahkub sellest seadmest ja seda töötleb $host. Muud midagi ei saadeta.';
  }

  @override
  String get assistantConsentAlways => 'Ära selle teenuse puhul enam küsi';

  @override
  String get assistantSend => 'Saada';

  @override
  String get assistantUnavailable => 'TI-teenusega ei saanud ühendust. Proovige hiljem uuesti.';

  @override
  String get assistantDisabledTitle => 'Assistent on välja lülitatud';

  @override
  String get assistantDisabledMessage =>
      'Planeerimistööriistade kasutamiseks lülitage see sisse. Andmed ei lahku seadmest, kui te ei ühenda teenust ega kinnita iga päringut.';

  @override
  String get assistantSummaryTitle => 'Kokkuvõte';

  @override
  String get assistantRemoveProvider => 'Eemalda teenus';

  @override
  String get settingsTitle => 'Seaded';

  @override
  String get settingsGeneral => 'Üldine';

  @override
  String get settingsLanguage => 'Keel';

  @override
  String get settingsLanguageSystem => 'Seadme keel';

  @override
  String get settingsAppearance => 'Välimus';

  @override
  String get settingsTheme => 'Teema';

  @override
  String get themeLight => 'Hele';

  @override
  String get themeDark => 'Tume';

  @override
  String get themeSystem => 'Süsteemi';

  @override
  String get settingsReduceMotion => 'Vähenda liikumist';

  @override
  String get settingsReduceMotionDesc => 'Vähenda animatsioone ja liikuvaid taustu';

  @override
  String get settingsFocus => 'Fookustaimer';

  @override
  String get settingsWorkLength => 'Fookuse pikkus';

  @override
  String get settingsShortBreak => 'Lühike paus';

  @override
  String get settingsLongBreak => 'Pikk paus';

  @override
  String get settingsLongBreakEvery => 'Pikk paus pärast';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seanssi',
      one: '1 seanssi',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Alusta pause automaatselt';

  @override
  String get settingsSound => 'Lõpuheli';

  @override
  String get settingsDailyFocusTarget => 'Päeva fookuseesmärk';

  @override
  String get settingsWeeklyFocusTarget => 'Nädala fookuseesmärk';

  @override
  String get settingsNotifications => 'Märguanded';

  @override
  String get settingsNotificationsEnable => 'Luba meeldetuletused';

  @override
  String get settingsQuietHours => 'Vaikne aeg';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Harjumuste, eesmärkide ja kordamise meeldetuletused on vaigistatud kella $start–$end';
  }

  @override
  String get settingsReviewReminder => 'Kaartide kordamise meeldetuletus';

  @override
  String get settingsPermissionDenied => 'Märguanded on süsteemiseadetes blokeeritud.';

  @override
  String get settingsPrivacy => 'Privaatsus ja andmed';

  @override
  String get settingsPrivacyStatement =>
      'Teie andmeid hoitakse ainult selles seadmes ja need on krüpteeritud. Kontot, analüütikat ega jälgimist pole.';

  @override
  String get settingsBackup => 'Loo krüpteeritud varukoopia';

  @override
  String get settingsBackupDesc => 'Kaitstud teie valitud parooliga';

  @override
  String get settingsRestore => 'Taasta varukoopiast';

  @override
  String get settingsRestoreDesc => 'Asendab kõik selle seadme andmed';

  @override
  String get settingsErase => 'Kustuta kõik andmed';

  @override
  String get settingsEraseDesc => 'Kustuta kõik selles seadmes jäädavalt';

  @override
  String get settingsEraseConfirmTitle => 'Kas kustutada kõik andmed?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Kõik ülesanded, märkmed, kaardid, eesmärgid, harjumused, sündmused ja seansid kustutatakse jäädavalt. Kinnitamiseks sisestage $word.';
  }

  @override
  String get settingsEraseWord => 'KUSTUTA';

  @override
  String get settingsErased => 'Kõik andmed on kustutatud';

  @override
  String get backupPassword => 'Varukoopia parool';

  @override
  String get backupPasswordConfirm => 'Kinnitage parool';

  @override
  String backupPasswordHint(int count) {
    return 'Vähemalt $count märki. Kaotsimineku korral seda taastada ei saa.';
  }

  @override
  String get backupPasswordMismatch => 'Paroolid ei kattu';

  @override
  String get backupPasswordShort => 'Parool on liiga lühike';

  @override
  String get backupCreating => 'Varukoopia krüpteerimine…';

  @override
  String get backupCreated => 'Varukoopia on salvestamiseks valmis';

  @override
  String get backupRestoring => 'Kontrollimine ja taastamine…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Taastati $count üksust',
      one: 'Taastati 1 üksus',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Vale parool või faili on muudetud.';

  @override
  String get backupNotABackup => 'See fail ei ole Deep Focuse varukoopia.';

  @override
  String get backupCorrupted => 'Varukoopia fail on kahjustatud.';

  @override
  String get backupNewer =>
      'See varukoopia on tehtud rakenduse uuema versiooniga. Värskendage esmalt rakendust.';

  @override
  String get backupRestoreConfirmTitle => 'Kas asendada kõik andmed?';

  @override
  String get backupRestoreConfirmBody =>
      'Kõik, mis praegu selles seadmes on, asendatakse varukoopiaga. Kui taastamine ebaõnnestub, ei muutu midagi.';

  @override
  String get settingsAbout => 'Teave';

  @override
  String settingsVersion(String version) {
    return 'Versioon $version';
  }

  @override
  String get settingsLicenses => 'Avatud lähtekoodi litsentsid';

  @override
  String get settingsAssistant => 'Assistent';

  @override
  String get settingsAssistantEnable => 'Lülita assistent sisse';

  @override
  String get settingsDashboard => 'Avalehe jaotised';

  @override
  String get settingsTrash => 'Prügikast';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Prügikast on tühi';

  @override
  String get trashHint => 'Kustutatud üksused jäävad siia, kuni need eemaldate.';

  @override
  String get trashTasks => 'Ülesanded';

  @override
  String get trashNotes => 'Märkmed';

  @override
  String get onboardWelcomeTitle => 'Tere tulemast oma tuleviku tööruumi';

  @override
  String get onboardWelcomeBody =>
      'Ülesanded, fookus, kalender, märkmed, kaardid, eesmärgid ja harjumused – koos ja kaunilt lihtsalt.';

  @override
  String get onboardPrivateTitle => 'Privaatne loomult';

  @override
  String get onboardPrivateBody =>
      'Kõik jääb sellesse seadmesse, krüpteerituna. Kontot pole. Jälgimist pole. Kontroll on teie käes.';

  @override
  String get onboardLanguageTitle => 'Valige keel';

  @override
  String get onboardNotifTitle => 'Õrnad meeldetuletused';

  @override
  String get onboardNotifBody =>
      'Lubage märguanded ülesannete meeldetuletuste ja fookusehoiatuste jaoks. Saate seda igal ajal muuta.';

  @override
  String get onboardGetStarted => 'Alustame';

  @override
  String onboardStep(int current, int total) {
    return 'Samm $current/$total';
  }

  @override
  String get notifChannelReminders => 'Meeldetuletused';

  @override
  String get notifChannelRemindersDesc =>
      'Ülesannete, sündmuste, harjumuste ja eesmärkide meeldetuletused';

  @override
  String get notifChannelFocus => 'Fookustaimer';

  @override
  String get notifChannelFocusDesc => 'Hoiatused, kui fookusseanss või paus lõpeb';

  @override
  String get notifTaskTitle => 'Ülesande meeldetuletus';

  @override
  String get notifEventTitle => 'Eelseisev sündmus';

  @override
  String notifEventBody(String title, String time) {
    return '$title kell $time';
  }

  @override
  String get notifFocusDoneTitle => 'Fookusseanss on lõppenud';

  @override
  String get notifFocusDoneBody => 'Suurepärane töö. Aeg puhata.';

  @override
  String get notifBreakDoneTitle => 'Paus on läbi';

  @override
  String get notifBreakDoneBody => 'Kas olete järgmiseks fookusseansiks valmis?';

  @override
  String get notifHabitTitle => 'Harjumuse meeldetuletus';

  @override
  String get notifReviewTitle => 'Kaardid on valmis';

  @override
  String get notifReviewBody => 'Lühike kordamine hoiab mälu tugevana.';

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
    return '$value%';
  }

  @override
  String get weekdaysShort => 'E,T,K,N,R,L,P';

  @override
  String a11yProgress(int value) {
    return 'Edenemine $value protsenti';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioriteet: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Värv $index';
  }

  @override
  String get analyticsRangeLabel => 'Ajavahemik';

  @override
  String get analyticsRefresh => 'Värskenda';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done/$total tähtajaga ülesandest tehtud õigel ajal';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done/$total ülesannet tehtud';
  }

  @override
  String get analyticsNoProjects => 'Aktiivseid projekte pole';

  @override
  String get analyticsNoFocus => 'Selles vahemikus pole fookusseansse';

  @override
  String get analyticsHabitsNone => 'Aktiivseid harjumusi pole';

  @override
  String get analyticsRetentionNote => 'Omandatud kaartide osa, mis teil meeles oli';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Vaba aeg arvestatakse tööpäevadel ($days) kella $start–$end, millest lahutatakse kellaajaga sündmused. Hinnanguline töö on järgmise 7 päeva tähtajaga avatud ülesannete hinnangute summa.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Esmaspäev–reede';

  @override
  String get assistantWorkdaysSunThu => 'Pühapäev–neljapäev';

  @override
  String get assistantWorkloadDayOff => 'Puhkepäev';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return 'Plaanitud $estimated · vaba $free';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planeeritud praegusest kuni $end, tänaste sündmuste ümber. Esmalt hilinenud ülesanded, siis prioriteet, tähtaeg ja hinnang.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Planeeri ajaplokkidena';

  @override
  String get assistantScheduleConfirmTitle => 'Kas lisada ajaplokid kalendrisse?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tänasesse kalendrisse lisatakse $count ajaplokki.',
      one: 'Tänasesse kalendrisse lisatakse 1 ajaplokk.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Lisati $count ajaplokki',
      one: 'Lisati 1 ajaplokk',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Juba teie kalendris';

  @override
  String get assistantPlanTimeline => 'Mahub tänasesse';

  @override
  String get assistantNoEstimate => 'Nende planeerimiseks lisage hinnang';

  @override
  String get assistantNoNotes => 'Märkmeid veel pole. Kirjutage esmalt märge.';

  @override
  String get assistantNoteEmpty => 'See märge on tühi.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Loodi $count ülesannet',
      one: 'Loodi 1 ülesanne',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Loodi $count kaarti',
      one: 'Loodi 1 kaart',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Loo $count',
      one: 'Loo 1',
      zero: 'Midagi pole valitud',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Tuvastatakse: märkimata ruudud „- [ ]” ja read, mis algavad TODO: või To do:';

  @override
  String get assistantCardsHint =>
      'Tuvastatakse: „mõiste: määratlus”, „mõiste — määratlus” ja Q:/A: reapaarid';

  @override
  String get assistantProviderHint =>
      'Kasutage mis tahes OpenAI-ga ühilduvat teenust. Võti jääb selle seadme turvalisse hoidlasse ega satu kunagi varukoopiatesse.';

  @override
  String get assistantEndpointHelp => 'Näiteks https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Salvestatud võtme säilitamiseks jätke tühjaks';

  @override
  String get assistantApiKeyRequired => 'Sisestage API võti';

  @override
  String get assistantProviderSaved => 'Teenus salvestatud';

  @override
  String get assistantProviderRemoved => 'Teenus eemaldatud ja võti kustutatud';

  @override
  String get assistantRemoveProviderConfirm =>
      'Kas eemaldada teenus ja kustutada salvestatud API võti sellest seadmest?';

  @override
  String get assistantAskEveryTime => 'Küsi enne iga päringut';

  @override
  String get assistantSummarizing => 'Kokkuvõtte tegemine…';

  @override
  String assistantSummaryNote(String host) {
    return 'Loonud $host. Vaadake üle, enne kui sellele tuginete.';
  }

  @override
  String get assistantCopy => 'Kopeeri';

  @override
  String get assistantCopied => 'Kopeeritud';

  @override
  String get assistantConfigure => 'Seadista teenus';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Kõik selle sarja sündmused teisaldati';

  @override
  String get calendarEventReminder => 'Meeldetuletus';

  @override
  String get calendarEventRepeat => 'Kordus';

  @override
  String get calendarEventColor => 'Värv';

  @override
  String get calendarDefaultColor => 'Kasuta tüübi värvi';

  @override
  String get calendarEventLinkedTask => 'Seotud ülesanne';

  @override
  String get calendarEventNoTask => 'Seotud ülesannet pole';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sündmust',
      one: '1 sündmus',
      zero: 'Sündmusi pole',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tähtajaga ülesannet',
      one: '1 tähtajaga ülesanne',
      zero: 'tähtajaga ülesandeid pole',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Selle päeva planeerimiseks lisage sündmus või ajaplokk.';

  @override
  String get calendarNow => 'Praegune aeg';

  @override
  String get calendarRecurring => 'Kordub';

  @override
  String get calendarEventNotFound => 'Seda sündmust enam pole';

  @override
  String get calendarEventLocalTime => 'Ajad kuvatakse teie seadme ajavööndis';

  @override
  String get calendarEventDeleted => 'Sündmus teisaldati prügikasti';

  @override
  String get calendarConflictMarker => 'Kattub teise sündmusega';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Muudatused kehtivad selle sarja kõigile sündmustele';

  @override
  String get calendarDragHintSeries => 'Korduva sündmuse lohistamine teisaldab kogu sarja';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, ülesande tähtaeg';
  }

  @override
  String get startupErrorTitle => 'Teie andmeid ei õnnestunud avada';

  @override
  String get startupErrorLocked =>
      'Selle seadme andmete krüpteerimisvõti pole saadaval. Midagi pole kustutatud. Sageli aitab seadme taaskäivitamine. Kui taastasite hiljuti seadme, taastage andmed hoopis krüpteeritud varukoopiast.';

  @override
  String get startupErrorCipher =>
      'See seade ei toeta rakenduse nõutavat krüpteeritud salvestusruumi. Midagi pole krüpteerimata kujul salvestatud.';

  @override
  String get startupErrorRetry => 'Proovi uuesti';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarti ootab kordamist',
      one: '1 kaart ootab kordamist',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count korrata';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count uut';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Omandatud kaardid: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Sisestage 0 või rohkem';

  @override
  String get flashcardsSearchCards => 'Otsi kaarte';

  @override
  String get flashcardsSearchEmpty => 'Otsingule vastavaid kaarte pole';

  @override
  String get flashcardsCardAdded => 'Kaart lisatud';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Korrata $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopeeri lõikelauale';

  @override
  String get flashcardsExportTitle => 'Ekspordi pakk';

  @override
  String get flashcardsDeleteDeck => 'Kustuta pakk';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, järgmine kordus $interval pärast';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Küsimus: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Vastus: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Näita küsimust';

  @override
  String get flashcardsImportField => 'Imporditavad kaardid';

  @override
  String get flashcardsNothingToStudy => 'Pole midagi õppida';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarti õppimiseks valmis',
      one: '1 kaart õppimiseks valmis',
      zero: 'Valmis kaarte pole',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Hinnangu järgi';

  @override
  String get flashcardsDeckNotFound => 'See pakk pole enam saadaval.';

  @override
  String get focusSessionDeleted => 'Seanss kustutatud';

  @override
  String get focusDeleteConfirm =>
      'Kas kustutada see seanss ajaloost? Selle aega ei arvestata enam teie eesmärkide hulka.';

  @override
  String get focusUnlinkTask => 'Eemalda seotud ülesanne';

  @override
  String get focusNoteHint => 'Mille kallal töötasite?';

  @override
  String get focusTargetCaption => 'Mõõdetud salvestatud seansside põhjal';

  @override
  String get focusModeLabel => 'Taimeri režiim';

  @override
  String focusUpNext(String phase) {
    return 'Järgmisena: $phase';
  }

  @override
  String get focusStopwatchHint => 'Loeb edasi, kuni peatate.';

  @override
  String get focusOpenHint => 'Ajapiiranguta. Lõpetage, kui olete valmis.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Meeldetuletused on seadetes välja lülitatud. Teid ei teavitata, kui seanss lõpeb.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Kõik';

  @override
  String get goalsFilterPeriod => 'Perioodi filter';

  @override
  String get goalsFilterStatus => 'Oleku filter';

  @override
  String get goalsEmptyFiltered => 'Sellele filtrile ei vasta ükski eesmärk';

  @override
  String goalsDueOn(String date) {
    return 'Tähtaeg $date';
  }

  @override
  String get goalsDeadline => 'Tähtaeg (valikuline)';

  @override
  String get goalsNoDeadline => 'Tähtajata';

  @override
  String get goalsSetDeadline => 'Määra tähtaeg';

  @override
  String get goalsRemoveDeadline => 'Eemalda tähtaeg';

  @override
  String get goalsDescription => 'Kirjeldus (valikuline)';

  @override
  String get goalsTitleLabel => 'Pealkiri';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Siht saavutatud';

  @override
  String get goalsLogged => 'Edenemine logitud';

  @override
  String get goalsEntryDeleted => 'Kirje eemaldatud';

  @override
  String get goalsDeleteEntry => 'Eemalda kirje';

  @override
  String get goalsDeleted => 'Eesmärk kustutatud';

  @override
  String get goalsMarkActive => 'Märgi aktiivseks';

  @override
  String get goalsNotFound => 'Seda eesmärki pole enam saadaval';

  @override
  String get goalsLinkTask => 'Seo ülesanne';

  @override
  String get goalsNoLinkedTasks => 'Seotud ülesandeid veel pole';

  @override
  String get goalsUnlinkTask => 'Eemalda ülesande link';

  @override
  String get goalsTaskOpen => 'Pole veel tehtud';

  @override
  String get goalsTaskLinked => 'Ülesanne seotud';

  @override
  String get goalsTaskUnlinked => 'Ülesande link eemaldatud';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tehtud seotud ülesannet',
      one: '1 tehtud seotud ülesannet',
    );
    return 'Hõlmab selle perioodi $_temp0';
  }

  @override
  String get goalsHistoryAllTime =>
      'Varasemate perioodide kirjed jäävad siia, kuid loevad ainult oma perioodi hulka.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Täna tehtud $done/$total';
  }

  @override
  String get habitsNothingToday => 'Tänaseks pole ühtegi harjumust plaanitud';

  @override
  String get habitsDecrease => 'Eemalda üks märge';

  @override
  String get habitsResetToday => 'Lähtesta tänane';

  @override
  String get habitsCheckInHint => 'Kohandamiseks vajutage pikalt';

  @override
  String get habitsName => 'Nimi';

  @override
  String get habitsColor => 'Värv';

  @override
  String get habitsValidationDays => 'Valige vähemalt üks päev';

  @override
  String habitsReminderAt(String time) {
    return 'Iga päev kell $time';
  }

  @override
  String get habitsSetReminder => 'Määra meeldetuletuse aeg';

  @override
  String get habitsRemoveReminder => 'Eemalda meeldetuletus';

  @override
  String get habitsReminderNote =>
      'Meeldetuletused kuvatakse plaanitud päevadel, kui märguanded on lubatud.';

  @override
  String get habitsArchived => 'Harjumus arhiveeritud';

  @override
  String get habitsNotFound => 'Seda harjumust pole enam saadaval';

  @override
  String get habitsLast30 => 'Viimased 30 päeva';

  @override
  String get habitsConsistencyNone => 'Andmeid pole veel piisavalt';

  @override
  String get habitsCalendar => 'Märgete ajalugu';

  @override
  String get habitsCalendarHint => 'Parandamiseks puudutage päeva.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count/$target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Märked viimase 90 päeva jooksul. Järjepidevus $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Märked viimase 90 päeva jooksul. Andmeid pole veel piisavalt.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päeva',
      one: '1 päev',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Peatatud päevad teie seeriat ei mõjuta.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arhiveeri harjumus';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korda päevas',
      one: 'Kord päevas',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Muud märkmed';

  @override
  String get notesAllNotebooks => 'Kõik märkmikud';

  @override
  String get notesNotebookName => 'Märkmiku nimi';

  @override
  String get notesNotebookColor => 'Värv';

  @override
  String get notesDeleteNotebook => 'Kustuta märkmik';

  @override
  String get notesDeleteNotebookMessage =>
      'Märkmik eemaldatakse. Selle märkmed jäävad alles ja on nähtavad jaotises „Kõik märkmikud”.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Kinnitage olulised märkmed, et need jääksid ülespoole.';

  @override
  String get notesEmptyFavorites => 'Siin kuvatakse märkmed, mille märgite lemmikuks.';

  @override
  String get notesEmptyArchived => 'Siin kuvatakse arhiveeritud märkmed.';

  @override
  String get notesEmptyFiltered => 'Nendele filtritele ei vasta ükski märge.';

  @override
  String get notesArchivedSnack => 'Märge arhiveeritud';

  @override
  String get notesUnarchivedSnack => 'Märge viidi tagasi teie märkmete hulka';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done/$total tehtud';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Vormindus';

  @override
  String get notesWrite => 'Kirjuta';

  @override
  String get notesPreviewEmpty => 'Eelvaates pole veel midagi.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Sellele märkmele ei viita veel ükski teine märge. Lingi sellele märkmele [[$title]] abil.';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Andke sellele märkmele pealkiri, et teised märkmed saaksid sellele viidata.';

  @override
  String get notesLinkedTasksEmpty => 'Selle märkmega pole seotud ühtegi ülesannet.';

  @override
  String notesLinkMissing(String title) {
    return 'Pealkirjaga „$title” märget veel pole.';
  }

  @override
  String get notesNotFound => 'Seda märget enam pole.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Kontrollnimekirja punkt: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Ava märge $title';
  }

  @override
  String get notesTagsHint => 'Lisage silte, kirjutades märkmesse #silt.';

  @override
  String get notesTaskDone => 'Tehtud';

  @override
  String get notifTimerDoneBody => 'Teie määratud aeg on täis.';

  @override
  String get onboardingPrivatePointDevice => 'Salvestatakse ainult selles seadmes, krüpteeritult';

  @override
  String get onboardingPrivatePointAccount => 'Kontot pole vaja';

  @override
  String get onboardingPrivatePointTracking => 'Analüütikat ega jälgimist pole';

  @override
  String get onboardingLanguageBody => 'Saate seda igal ajal seadetes muuta.';

  @override
  String get onboardingNext => 'Edasi';

  @override
  String get projectsActive => 'Aktiivsed';

  @override
  String get projectNameHint => 'nt Toote turuletoomine';

  @override
  String get projectGoalHint => 'Milline näeb välja valmis tulemus?';

  @override
  String get projectNoDeadline => 'Tähtajata';

  @override
  String get projectTasksOpen => 'Avatud ülesanded';

  @override
  String get projectTasksCompleted => 'Tehtud ülesanded';

  @override
  String get projectAddTask => 'Lisa ülesanne projekti';

  @override
  String get projectAddNote => 'Uus projekti märge';

  @override
  String get projectLinkedNotes => 'Märkmed';

  @override
  String get projectNoTasks => 'Selles projektis pole veel ülesandeid';

  @override
  String get projectArchivedBadge => 'Arhiveeritud';

  @override
  String get projectDeleted => 'Projekt teisaldati prügikasti';

  @override
  String get projectDeleteMessage => 'Ülesanded jäävad teie loendisse ilma projektita.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent protsenti valmis';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tulemust',
      one: '1 tulemus',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtreeri tüübi järgi';

  @override
  String searchRecentTap(String query) {
    return 'Otsi uuesti: $query';
  }

  @override
  String get settingsLanguageHint =>
      'Valige kogu rakenduse keel. Nimed kuvatakse nende endi keeles.';

  @override
  String get settingsThemeHint => 'Hele, tume või süsteemi järgi';

  @override
  String settingsDecrease(String setting) {
    return 'Vähenda: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Suurenda: $setting';
  }

  @override
  String get settingsQuietStart => 'Algab';

  @override
  String get settingsQuietEnd => 'Lõpeb';

  @override
  String get settingsNotificationsHint =>
      'See salvestab teie eelistuse rakenduses. Süsteem võib samuti luba küsida.';

  @override
  String get settingsDashboardHint =>
      'Järjestuse muutmiseks lohistage. Lülitage välja jaotised, mida te ei vaja.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Muuda jaotise $section asukohta';
  }

  @override
  String get settingsDashboardReset => 'Taasta vaikejärjestus';

  @override
  String get settingsAssistantDesc =>
      'Valikuline planeerimisabi. Midagi ei lahku sellest seadmest, kui te ei ühenda teenust.';

  @override
  String get settingsAssistantSetup => 'Assistent ja teenuse seadistus';

  @override
  String get settingsTrashDesc => 'Taastage või kustutage eemaldatud üksused jäädavalt';

  @override
  String get settingsEraseFirstBody =>
      'Seda ei saa tagasi võtta. Kaaluge esmalt krüpteeritud varukoopia loomist.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Sisestage $word';
  }

  @override
  String get settingsEraseFailed => 'Andmeid ei õnnestunud kustutada. Midagi ei muudetud.';

  @override
  String get settingsAboutTagline => 'Privaatne, kohalikult töötav tööruum tõhusaks tegutsemiseks.';

  @override
  String get backupShowPassword => 'Näita parooli';

  @override
  String get backupHidePassword => 'Peida parool';

  @override
  String get backupSaved => 'Varukoopia salvestatud';

  @override
  String get backupFailed => 'Varukoopiat ei õnnestunud luua. Teie andmed on muutmata.';

  @override
  String get backupReadFailed => 'Valitud faili ei õnnestunud lugeda.';

  @override
  String get backupRestoreFailed => 'Taastamine ebaõnnestus. Midagi ei muudetud.';

  @override
  String get backupShareSubject => 'Deep Focuse krüpteeritud varukoopia';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Iga $count päeva järel',
      one: 'Iga päev',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Iga $count nädala järel',
      one: 'Iga nädal',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Iga $count kuu järel',
      one: 'Iga kuu',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Iga $count aasta järel',
      one: 'Iga aasta',
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
    return 'päevadel $days';
  }

  @override
  String get repeatEndsLabel => 'Lõpeb';

  @override
  String get repeatEndsAfter => 'Pärast teatud arvu kordi';

  @override
  String get repeatCountLabel => 'Kordused';

  @override
  String get reminderNone => 'Meeldetuletuseta';

  @override
  String get reminderCustomTime => 'Kindlal ajal';

  @override
  String get a11yDecrease => 'Vähenda';

  @override
  String get a11yIncrease => 'Suurenda';

  @override
  String get pickTaskTitle => 'Valige ülesanne';

  @override
  String get pickTaskEmpty => 'Avatud ülesandeid pole';

  @override
  String get tasksSearchTooltip => 'Otsi ülesandeid';

  @override
  String get tasksSectionOverdue => 'Hilinenud';

  @override
  String get tasksSectionToday => 'Täna';

  @override
  String get tasksRecurringSemantics => 'Kordub';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimaalne prioriteet';

  @override
  String get tasksFilterCategory => 'Kategooria';

  @override
  String get tasksFilterAnyCategory => 'Mis tahes kategooria';

  @override
  String get tasksFilterLabel => 'Silt';

  @override
  String get tasksFilterAnyLabel => 'Mis tahes silt';

  @override
  String get tasksFilterReset => 'Lähtesta filtrid';

  @override
  String get tasksViewByProject => 'Projekti järgi';

  @override
  String get tasksViewByPriority => 'Prioriteedi järgi';

  @override
  String get tasksViewByCategory => 'Kategooria järgi';

  @override
  String get tasksGroupNoCategory => 'Kategooriata';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ülesannet',
      one: '1 ülesanne',
    );
    return 'Blokeerib $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Selle ülesande blokeerivad lõpetamata ülesanded. Kas ikkagi lõpetada?';

  @override
  String get taskStartFocus => 'Keskendu sellele ülesandele';

  @override
  String get taskRemoveDate => 'Eemalda kuupäev';

  @override
  String get taskAllDay => 'Kindla kellaajata';

  @override
  String get taskSaved => 'Ülesanne salvestatud';

  @override
  String get taskCreated => 'Ülesanne loodud';

  @override
  String get taskReminderNeedsDue => 'Suhteliste meeldetuletuste kasutamiseks määrake tähtaeg';

  @override
  String get taskSubtaskDetailsHint =>
      'Alamülesannete, kontrollnimekirja punktide, siltide ja sõltuvuste lisamiseks salvestage esmalt ülesanne.';

  @override
  String get taskLabelName => 'Sildi nimi';

  @override
  String get taskMoreDetails => 'Üksikasjad';

  @override
  String get taskPlanning => 'Planeerimine';

  @override
  String get taskOrganize => 'Korraldamine';

  @override
  String get taskBreakdown => 'Jaotus';

  @override
  String get trashDeleteTaskTitle => 'Kas kustutada see ülesanne jäädavalt?';

  @override
  String get trashDeleteNoteTitle => 'Kas kustutada see märge jäädavalt?';

  @override
  String get trashDeleteBody => 'Seda ei saa tagasi võtta.';

  @override
  String get trashEmptyTitle => 'Kas tühjendada prügikast?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count üksust kustutatakse jäädavalt.',
      one: '1 üksus kustutatakse jäädavalt.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Taastatud';

  @override
  String get trashPurged => 'Jäädavalt kustutatud';

  @override
  String trashDeletedOn(String date) {
    return 'Kustutatud $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count üksust',
      one: '1 üksus',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Loe ette';

  @override
  String get flashcardsTtsUnavailable => 'Kõnesüntees pole selles seadmes saadaval.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Selle keele jaoks pole ühtegi häält installitud. Lisage see Androidi kõnesünteesi seadetes.';

  @override
  String get calendarAgenda => 'Päevakava';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Säde',
      'rocket': 'Rakett',
      'book': 'Raamat',
      'work': 'Töö',
      'home': 'Kodu',
      'heart': 'Süda',
      'code': 'Kood',
      'palette': 'Palett',
      'fitness': 'Treening',
      'school': 'Kool',
      'travel': 'Reisimine',
      'money': 'Säästud',
      'other': 'Ikoon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Rohkem välju';

  @override
  String get cardFieldExample => 'Näide';

  @override
  String get cardFieldExplanation => 'Selgitus';

  @override
  String get cardFieldPronunciation => 'Hääldus';

  @override
  String get cardFieldNotes => 'Lisamärkused';

  @override
  String get projectMilestones => 'Verstapostid';

  @override
  String get milestoneAdd => 'Lisa verstapost';

  @override
  String get milestoneEdit => 'Muuda verstaposti';

  @override
  String get milestoneTitleLabel => 'Verstapost';

  @override
  String get milestoneNoDate => 'Kuupäevata';

  @override
  String get milestonesEmpty =>
      'Verstaposte veel pole. Lisage kuupäevadega kontrollpunktid, et jälgida projekti kalendris.';

  @override
  String get milestoneDeleted => 'Verstapost kustutatud';

  @override
  String milestoneDoneA11y(String title) {
    return 'Märgi verstapost „$title” tehtuks';
  }

  @override
  String calendarMilestone(String project) {
    return 'Verstapost · $project';
  }

  @override
  String get tasksViewInbox => 'Sisendkast';

  @override
  String get tasksViewArchived => 'Arhiveeritud';

  @override
  String get tasksEmptyInbox =>
      'Siia jõuavad ülesanded ilma projekti või kuupäevata. Sorteerige need, kui teil on hetk aega.';

  @override
  String get tasksEmptyArchived =>
      'Arhiveeritud ülesandeid hoitakse siin, teie loenditest ja meeldetuletustest eemal.';

  @override
  String get taskArchivedBadge => 'Arhiveeritud';

  @override
  String get taskStatusInProgress => 'Pooleli';

  @override
  String get taskArchived => 'Ülesanne arhiveeritud';

  @override
  String get taskUnarchived => 'Ülesanne taastati arhiivist';

  @override
  String get focusPlanTitle => 'Seansiplaan';

  @override
  String focusPlanTotal(String duration) {
    return 'Kokku $duration';
  }

  @override
  String get focusPlanRounds => 'Fookusseansid';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Pikk paus pärast';

  @override
  String get focusPlanSkipLastBreak => 'Jäta viimane paus vahele';

  @override
  String get focusPlanAutoBreaks => 'Alusta pause automaatselt';

  @override
  String get focusPlanAutoFocus => 'Alusta pärast pausi fookust automaatselt';

  @override
  String get focusPlanSave => 'Salvesta plaan';

  @override
  String get focusPlanNameHint => 'nt Eksamiks valmistumine';

  @override
  String get focusPlanSaved => 'Plaan salvestatud';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min fookust, $rest min pausi';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Vähenda: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Suurenda: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Seanss $current/$total';
  }

  @override
  String get focusSeriesComplete => 'Sari lõpetatud. Tubli töö!';

  @override
  String get filterAll => 'Kõik';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added imporditud · $duplicates duplikaati vahele jäetud · $invalid puudulikku rida';
  }

  @override
  String get flashcardsSuspend => 'Peata kaart';

  @override
  String get flashcardsResume => 'Jätka kaarti';

  @override
  String get flashcardsSuspended => 'Kaart peatatud: seda ei planeerita';

  @override
  String get flashcardsResumed => 'Kaart taastatud';

  @override
  String get flashcardsSuspendedFilter => 'Peatatud';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown/$total kaarti';
  }

  @override
  String get flashcardsImportFile => 'Failist';

  @override
  String get speechTitle => 'Kõne';

  @override
  String get speechAppLanguage => 'Rakenduse keel';

  @override
  String get speechFrontLanguage => 'Esikülje keel';

  @override
  String get speechBackLanguage => 'Tagakülje keel';

  @override
  String get speechRepeat => 'Korda iga ettelugemist';

  @override
  String get speechRate => 'Kiirus';

  @override
  String get speechAutoRead => 'Loe küsimus automaatselt ette';

  @override
  String get speechHint =>
      'Kasutab selles seadmes installitud hääli võrguühenduseta. Kui keelel pole häält, teavitatakse teid ja midagi muud asemel ei kasutata.';

  @override
  String get studyHowTitle => 'Kuidas soovite õppida?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Korda $count kaarti',
      one: 'Korda 1 kaarti',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Harjuta kõiki kaarte (ajakava ei muutu)';

  @override
  String get studyPracticeMistakes => 'Harjuta hiljutisi vigu';

  @override
  String get studyPracticeHint =>
      'Harjutusvoorud ei muuda kunagi kaartide kordamise aega. Kordamine uuendab ajakava.';

  @override
  String get studyModeClassic => 'Klassikaline';

  @override
  String get studyModeReverse => 'Vastupidine';

  @override
  String get studyModeMixed => 'Mõlemas suunas';

  @override
  String get studyModeTyped => 'Kirjuta vastus';

  @override
  String get studyModeChoice => 'Valikvastused';

  @override
  String get studyModeListening => 'Kuulamine';

  @override
  String get studyPractice => 'harjutus';

  @override
  String get studyNoMistakes => 'Selles pakis pole hiljutisi vigu. Tubli!';

  @override
  String get studyTypeAnswer => 'Kirjutage vastus';

  @override
  String get studyCheck => 'Kontrolli';

  @override
  String get studyKnewIt => 'Teadsin';

  @override
  String get studyDidntKnow => 'Ei teadnud';

  @override
  String studyMistakes(int count) {
    return 'Valesti ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Korda valesti läinud kaarte';

  @override
  String get studyCorrect => 'Õige';

  @override
  String get studyAlmost => 'Peaaegu — kontrollige õigekirja';

  @override
  String get studyWrong => 'Mitte päris';

  @override
  String get studyShowText => 'Näita teksti';

  @override
  String get flashcardsImportFileFailed =>
      'Faili ei õnnestunud avada. Selle asemel võite kleepida faili sisu.';

  @override
  String get studyNoMatchingCards => 'Sellele valikule ei vasta veel ühtegi kaarti.';

  @override
  String get studyPracticeNew => 'Ainult uued';

  @override
  String get studyPracticeHard => 'Rasked kaardid';

  @override
  String get studyPracticeFavorites => 'Lemmikud';

  @override
  String get studySessionSize => 'Kaarte seansis';

  @override
  String get studySessionAll => 'Kõik';

  @override
  String get studyOrder => 'Järjestus';

  @override
  String get studyOrderDue => 'Kõige rohkem hilinenud ees';

  @override
  String get studyOrderRandom => 'Juhuslik';

  @override
  String get studyOrderHardest => 'Raskeimad ees';

  @override
  String get flashcardsHard => 'Raske';

  @override
  String get flashcardsFavorites => 'Lemmikud';

  @override
  String get flashcardsFavorite => 'Lisa lemmikutesse';

  @override
  String get flashcardsUnfavorite => 'Eemalda lemmikutest';

  @override
  String get flashcardsDuplicate => 'Tee koopia';

  @override
  String get flashcardsMoveTo => 'Teisalda pakki';

  @override
  String get flashcardsNoOtherDeck => 'Looge esmalt teine pakk.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaarti teisaldatud',
      one: 'Kaart teisaldatud',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Lisa silt';

  @override
  String get flashcardsTagHint => 'nt tegusõnad';

  @override
  String flashcardsSelected(int count) {
    return '$count valitud';
  }

  @override
  String get flashcardsSelectAll => 'Vali kõik kuvatud';

  @override
  String flashcardsSelectCard(String front) {
    return 'Vali $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Meenumine $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Võimalik duplikaat';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Selles pakis on juba „$front” → „$back”. Kas salvestada ikkagi?';
  }

  @override
  String get flashcardsSaveAnyway => 'Salvesta ikkagi';

  @override
  String get flashcardsStats => 'Statistika';

  @override
  String get flashcardsStatTotal => 'Kaardid';

  @override
  String get flashcardsStatLearning => 'Õppimisel';

  @override
  String get flashcardsStatMatureCaption => 'Meeles 21+ päeva';

  @override
  String get flashcardsStatReviewsToday => 'Kordamised täna';

  @override
  String get flashcardsStatCorrect => 'Õiged vastused';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Viimased $days päeva';
  }

  @override
  String get flashcardsStatForget => 'Unustamise määr';

  @override
  String get flashcardsStatForgetCaption => '„Uuesti” õpitud kaartidel';

  @override
  String get flashcardsStatRecall => 'Meenumine praegu';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-i hinnang, korratud kaardid';

  @override
  String flashcardsStatActivity(int count) {
    return 'Kordamised päevas · kokku $count';
  }

  @override
  String get flashcardsStatHistory => 'Viimased vastused';

  @override
  String get flashcardsStatNoHistory =>
      'Kordamisi veel pole. Õppige pakki, et näha siin oma edenemist.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Loe ette: $field';
  }

  @override
  String get speechVoice => 'Hääl';

  @override
  String get speechVoiceDefault => 'Automaatne';

  @override
  String get speechVoiceOnline => 'vajab internetti';

  @override
  String get speechTest => 'Proovi häält';

  @override
  String get importNext => 'Eelvaade';

  @override
  String get importPreviewTitle => 'Sobita veerud väljadega';

  @override
  String get importIgnoreColumn => 'Eira';

  @override
  String importColumn(int n) {
    return 'Veerg $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kaarti valmis · $invalid puudulikku rida jäetakse vahele';
  }

  @override
  String get importNeedFrontBack => 'Valige, millised veerud on esi- ja tagakülg.';

  @override
  String get actionMoveUp => 'Liiguta üles';

  @override
  String get actionMoveDown => 'Liiguta alla';

  @override
  String get flashcardsLayoutTitle => 'Kaardi paigutus';

  @override
  String get flashcardsLayoutHint =>
      'Nimetage ümber, peitke või järjestage ümber selle paki lisaväljad. Kaartide sisu ei muudeta kunagi.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Näita õppimisel välja $field';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Avalda vastus samm-sammult';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Esmalt kuvatakse tagakülg; iga lisaväli avaneb puudutusega.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Näita: $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'See fail on suurem kui $mb MB.';
  }

  @override
  String get flashcardsImage => 'Pilt';

  @override
  String get flashcardsAudio => 'Heli';

  @override
  String get flashcardsAddImage => 'Lisa pilt';

  @override
  String get flashcardsAddAudio => 'Lisa heli';

  @override
  String get flashcardsPlayAudio => 'Esita salvestis';

  @override
  String get flashcardsAudioUnavailable => 'Seda salvestist ei saa selles seadmes esitada.';

  @override
  String get flashcardsCustomFields => 'Teie väljad';

  @override
  String get flashcardsTemplates => 'Mallid';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Väli $n';
  }

  @override
  String get flashcardsAddField => 'Lisa väli';

  @override
  String get flashcardsFieldName => 'Välja nimi';

  @override
  String get flashcardsFieldLangDefault => 'Külje keel';

  @override
  String get flashcardsTemplateConfirm =>
      'Mall määrab, kuidas välju kuvatakse, ja lisab oma väljad. Teie kaardid ja olemasolevad väljad jäävad samaks.';

  @override
  String get flashcardsApplyTemplate => 'Rakenda';

  @override
  String get templateVocabulary => 'Sõnavara';

  @override
  String get templateTwoTranslations => 'Sõna kahe tõlkega';

  @override
  String get templateQuestionAnswer => 'Küsimus ja vastus';

  @override
  String get templateDefinition => 'Mõiste ja määratlus';

  @override
  String get templateGrammar => 'Grammatikareegel';

  @override
  String get templateFieldPlural => 'Mitmus';

  @override
  String get templateFieldTranslation2 => 'Teine tõlge';

  @override
  String get templateFieldSynonyms => 'Sünonüümid';

  @override
  String get templateFieldRule => 'Reegel';

  @override
  String get deckCategory => 'Tase või teema';

  @override
  String get deckCategoryHint => 'nt A1, Meditsiin';

  @override
  String get flashcardsSearchAll => 'Otsi kõigist kaartidest';

  @override
  String get flashcardsSearchAllHint => 'Sõna, tõlge, näide, märkus, silt…';

  @override
  String get flashcardsAllDecks => 'Kõik pakid';

  @override
  String get flashcardsAllLanguages => 'Kõik keeled';

  @override
  String get flashcardsLangUnset => 'Keel määramata';

  @override
  String get flashcardsLevelUnset => 'Taseme või teemata';

  @override
  String get flashcardsByLanguage => 'Edenemine keelte kaupa';

  @override
  String get flashcardsByLevel => 'Edenemine taseme või teema kaupa';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks pakki · $cards kaarti · $mature omandatud · $due korrata · $correct õigeid (30 päeva)';
  }

  @override
  String get flashcardsRecord => 'Salvesta';

  @override
  String get flashcardsRecording => 'Salvestamine…';

  @override
  String get flashcardsRecordStop => 'Lõpeta ja säilita';

  @override
  String get flashcardsMicDenied =>
      'Mikrofoni juurdepääs on välja lülitatud. Salvestamiseks lubage see süsteemiseadetes.';

  @override
  String get flashcardsRecordFailed => 'Salvestamine pole selles seadmes saadaval.';

  @override
  String get soundsTitle => 'Helid';

  @override
  String get soundsNature => 'Loodus';

  @override
  String get soundsNoise => 'Fookusmüra';

  @override
  String get soundRain => 'Vihm';

  @override
  String get soundStorm => 'Äike';

  @override
  String get soundRiver => 'Jõgi';

  @override
  String get soundOcean => 'Merelained';

  @override
  String get soundFire => 'Lõke';

  @override
  String get soundForest => 'Metsalinnud';

  @override
  String get soundNight => 'Suveöö';

  @override
  String get soundWhite => 'Valge müra';

  @override
  String get soundPink => 'Roosa müra';

  @override
  String get soundBrown => 'Pruun müra';

  @override
  String get soundsPlay => 'Esita';

  @override
  String get soundsSleep => 'Unetaimer';

  @override
  String get soundsSleepOff => 'Väljas';

  @override
  String soundsSleepAt(String time) {
    return 'Peatub kell $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Korraga saab mängida kuni $count heli.';
  }

  @override
  String get soundsHint =>
      'Alustamiseks puudutage heli. Segage mitu ja määrake igaühe helitugevus.';

  @override
  String get soundsMixer => 'Segu';

  @override
  String soundsVolumeOf(String name) {
    return '$name helitugevus';
  }

  @override
  String get soundsChannel => 'Loodushelid';

  @override
  String get settingsEndTone => 'Taimeri lõpuheli';

  @override
  String get toneGentle => 'Õrnad piiksud';

  @override
  String get toneBeeps => 'Piiksud';

  @override
  String get toneWood => 'Koputus puule';

  @override
  String get toneBird => 'Linnuhüüd';

  @override
  String get toneStream => 'Oja';

  @override
  String get toneSystem => 'Telefoni heli';

  @override
  String get speechOnPhone => 'Selles telefonis';

  @override
  String get speechAllLanguages => 'Kõik keeled';

  @override
  String get speechSearchLanguage => 'Otsi keeli';

  @override
  String get speechGetVoices => 'Laadi alla rohkem hääli';

  @override
  String get speechGetVoicesHint =>
      'Häälteta keelte hääled saab alla laadida telefoni kõneseadetes.';

  @override
  String get speechSettingsFailed => 'Selle telefoni kõneseadeid ei õnnestunud avada.';

  @override
  String get speechVoiceMissing => 'Häält pole installitud';

  @override
  String get speechPause => 'Paus korduste vahel';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Loe koos vastusega ette ka näide';

  @override
  String get flashListen => 'Kuula';

  @override
  String get flashListenNext => 'Järgmine kaart';

  @override
  String get flashListenEmpty => 'Kuulamiseks pole kaarte.';

  @override
  String get flashViewTable => 'Tabel';

  @override
  String get flashViewCards => 'Kaardid';

  @override
  String get flashSwapSides => 'Vaheta veerud';

  @override
  String get flashSort => 'Sordi';

  @override
  String get flashSortNewest => 'Uusimad ees';

  @override
  String get flashSortAlpha => 'A–Z';

  @override
  String get flashSortDue => 'Korratavad ees';

  @override
  String get flashSortHard => 'Raskeimad ees';

  @override
  String get flashPasteCards => 'Kleebi kaardid';

  @override
  String get flashClipboardEmpty => 'Lõikelaual pole teksti.';

  @override
  String get flashMenuAdd => 'Lisa kaarte';

  @override
  String get flashMenuDeck => 'Pakk';

  @override
  String get flashToday => 'Täna';

  @override
  String get flashStudyNow => 'Õpi';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaardile vastatud',
      one: '1 kaardile vastatud',
      zero: 'Ühelegi kaardile pole vastatud',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Vihm metsas';

  @override
  String get autoBackupTitle => 'Automaatsed varukoopiad';

  @override
  String get autoBackupDesc => 'Iga päev selles telefonis; alles hoitakse viimased 7';

  @override
  String get autoBackupHint =>
      'Need koopiad jäävad sellesse telefoni ja kustutatakse, kui rakendus desinstallitakse. Uuele telefonile kolimiseks salvestage fail valikuga „Varunda”.';

  @override
  String get autoBackupNone => 'Automaatset varukoopiat veel pole. Esimene tehakse täna.';

  @override
  String get autoBackupRestore => 'Taasta';

  @override
  String autoBackupConfirm(String date) {
    return 'Kas asendada kõik praegused andmed varukoopiaga kuupäevast $date?';
  }

  @override
  String get autoBackupRestored => 'Taastatud.';

  @override
  String get errorLogTitle => 'Vigade logi';

  @override
  String get errorLogHint =>
      'Kui midagi läheb valesti, märgitakse see siia: ainult vea liik ja koht koodis, mitte kunagi teie sisu. Jagage seda, et aidata probleemi lahendada.';

  @override
  String get errorLogEmpty => 'Vigu pole registreeritud.';

  @override
  String get errorLogClear => 'Tühjenda';

  @override
  String get soundsWithFocus => 'Mängi fookusseansside ajal';

  @override
  String get soundsWithFocusHint => 'Teie segu algab fookusseansiga ja peatub pauside ajal.';

  @override
  String get soundsSavedMixes => 'Salvestatud segud';

  @override
  String get soundsSaveMix => 'Salvesta see segu';

  @override
  String get soundsMixNameHint => 'Nimi, nt Vihmane raamatukogu';

  @override
  String soundsDeleteMix(String name) {
    return 'Kas kustutada segu „$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Kord päevas, ainult siis, kui on kaarte korrata';

  @override
  String get settingsReviewTime => 'Meeldetuletuse aeg';

  @override
  String get shortcutFocus => 'Fookus';

  @override
  String get shortcutNewTask => 'Uus ülesanne';

  @override
  String get shortcutReview => 'Korda kaarte';

  @override
  String get shortcutSounds => 'Loodushelid';

  @override
  String get myDayTitle => 'Alusta päeva';

  @override
  String get myDayHint => 'Teie päev ühe pilguga, siis fookus ühe puudutusega';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ülesannet tänaseks',
      one: '1 ülesanne tänaseks',
      zero: 'Tänaseks pole ülesandeid',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Täna rohkem sündmusi pole';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Järgmisena: $title kell $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count harjumust jäänud',
      one: '1 harjumus jäänud',
      zero: 'Kõik harjumused tehtud',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Alusta fookusseansiga';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-avval';

  @override
  String get hijriMonth4 => 'Rabi as-sani';

  @override
  String get hijriMonth5 => 'Džumada al-ula';

  @override
  String get hijriMonth6 => 'Džumada al-ahira';

  @override
  String get hijriMonth7 => 'Radžab';

  @override
  String get hijriMonth8 => 'Šaaban';

  @override
  String get hijriMonth9 => 'Ramadaan';

  @override
  String get hijriMonth10 => 'Šavval';

  @override
  String get hijriMonth11 => 'Zu al-kada';

  @override
  String get hijriMonth12 => 'Zu al-hiddža';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day. $month $year AH';
  }

  @override
  String get settingsHijri => 'Hidžra kuupäevad';

  @override
  String get settingsHijriHint => 'Kuvatakse kalendris ja avalehel (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päeva',
      one: '1 päev',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Täna $done/$goal kaarti';
  }

  @override
  String get studyGoalReached => 'Päeva eesmärk saavutatud. Tubli!';

  @override
  String get studyWeekTitle => 'Teie nädal';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 päevaga vastatud $count kaardile',
      one: '7 päevaga vastatud 1 kaardile',
      zero: '7 päevaga pole ühelegi kaardile vastatud',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fookust 7 päevaga';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Seeria: $current · Parim: $best';
  }

  @override
  String get studyGoalTitle => 'Päeva eesmärk (kaardid)';

  @override
  String get studyGoalOff => 'Väljas';

  @override
  String get focusDndTitle => 'Ära sega fookuse ajal';

  @override
  String get focusDndHint => 'Lülitub sisse iga fookusseansi ajaks ja pausi ajal välja';

  @override
  String get focusDndNeedsAccess => 'Selle kasutamiseks lubage juurdepääs telefoni seadetes';

  @override
  String get voiceInput => 'Räägi kirjutamiseks';

  @override
  String get voiceInputPrompt => 'Rääkige nüüd';

  @override
  String get voiceInputUnavailable =>
      'Häälsisestus pole selles telefonis saadaval. Installige või lülitage sisse kõneteenus (näiteks Google\'i kõnetuvastus ja -süntees).';

  @override
  String get prayerFajr => 'Fadžr';

  @override
  String get prayerSunrise => 'Päikesetõus';

  @override
  String get prayerDhuhr => 'Zuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Magrib';

  @override
  String get prayerIsha => 'Iša';

  @override
  String get prayerMethodMwl => 'Moslemite Maailmaliiga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egiptuse Peaamet';

  @override
  String get prayerMethodJordan => 'Jordaania, Vakfide ministeerium';

  @override
  String get prayerMethodKarachi => 'Islamiteaduste Ülikool, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Pärsia lahe piirkond';

  @override
  String get prayerMethodKuwait => 'Kuveit';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Türgi, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malaisia, Indoneesia';

  @override
  String get prayerMethodFrance => 'Prantsusmaa (12°)';

  @override
  String get prayerMethodRussia => 'Venemaa, Vaimne Valitsus';

  @override
  String prayerNotifTitle(String name) {
    return 'Aeg: $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Palveaeg · $time';
  }

  @override
  String get prayerTitle => 'Palveajad';

  @override
  String get prayerOffHint =>
      'Palveaegade nägemiseks valige oma linn. Need arvutatakse telefonis; asukohale juurdepääsu pole vaja.';

  @override
  String get prayerChooseCity => 'Vali linn';

  @override
  String get prayerCity => 'Linn';

  @override
  String get prayerCitySearch => 'Otsi linna';

  @override
  String get prayerMethod => 'Arvutusmeetod';

  @override
  String get prayerHanafiAsr => 'Hanafi Asr (hilisem aeg)';

  @override
  String get prayerReminders => 'Teavita iga palveajal';

  @override
  String get prayerPauseFocus => 'Peata fookus palveajal';

  @override
  String get prayerPauseFocusHint => 'Käimasolev seanss peatub; jätkake pärast palvet';

  @override
  String get prayerTurnOff => 'Lülita palveajad välja';

  @override
  String get prayerAccuracyNote =>
      'Arvutatud ajad võivad kohalikust mošeest mõne minuti võrra erineda.';

  @override
  String prayerNext(String name, String time) {
    return '$name kell $time';
  }

  @override
  String get importAnkiNewFormat =>
      'See Anki fail kasutab uusimat vormingut. Eksportige Ankis uuesti, lülitades sisse „Support older Anki versions”, ja importige seejärel see fail.';

  @override
  String get importTemplate => 'Arvutustabeli mall';

  @override
  String get importTemplateFront => 'õun';

  @override
  String get importTemplateBack => 'ümar puuvili';

  @override
  String get importTemplateExample => 'Söön iga päev ühe õuna.';

  @override
  String get importTemplateTag => 'toit';

  @override
  String get starterTitle => 'Alustuspakid';

  @override
  String get starterHint =>
      'Lisage üks, et kohe õppima hakata. Hiljem saate seda muuta või kustutada.';

  @override
  String get starterAdd => 'Lisa';

  @override
  String get starterWords => 'Igapäevased inglise sõnad (araabia)';

  @override
  String get starterCapitals => 'Maailma pealinnad';

  @override
  String get starterElements => 'Keemilised elemendid';

  @override
  String get settingsAccent => 'Rõhuvärv';

  @override
  String get accentViolet => 'Violetne';

  @override
  String get accentBlue => 'Sinine';

  @override
  String get accentTeal => 'Sinakasroheline';

  @override
  String get accentGreen => 'Roheline';

  @override
  String get accentRose => 'Roosa';

  @override
  String get accentAmber => 'Merevaigukollane';

  @override
  String get settingsFlashTextSize => 'Kaartide teksti suurus';

  @override
  String get settingsFlashTextSample => 'Näide';

  @override
  String get widgetStartFocus => 'Puudutage fookuse alustamiseks';

  @override
  String widgetFocusUntil(String time) {
    return 'Fookus kuni $time';
  }

  @override
  String get widgetNoCardsDue => 'Kaardid: kõik tehtud';

  @override
  String get faqMyDayQ => 'Mida teeb „Alusta päeva”?';

  @override
  String get faqMyDayA =>
      'Kord päevas pakub avaleht seda: näete tänaseid ülesandeid, järgmist sündmust, jäänud harjumusi ja korratavaid kaarte ning alustate ühe puudutusega fookusseanssi. Kiirtoimingute jaoks vajutage pikalt rakenduse ikooni või lisage avalehele vidin, et näha fookusaega ja korratavaid kaarte.';

  @override
  String get faqTasksQ => 'Kuidas lisada meeldetuletusega ülesanne?';

  @override
  String get faqTasksA =>
      'Puudutage avalehel „Uus ülesanne” või ülesannetes „+”. Kirjutage pealkiri või öelge see mikrofoni ning määrake tähtaeg, kellaaeg ja meeldetuletus. Hilinenud ülesanded on loendis esimesed.';

  @override
  String get faqFocusQ => 'Kuidas fookustaimer töötab?';

  @override
  String get faqFocusA =>
      'Valige Pomodoro, pöördloendus või vaba aeg ja vajutage „Alusta”; pausid võivad järgneda automaatselt. Seadetes saate valida lõpuheli, lülitada fookuse ajaks sisse režiimi „Ära sega” ja mängida igas seansis loodushelisid.';

  @override
  String get faqSoundsQ => 'Kas saan loodushelisid segada?';

  @override
  String get faqSoundsA =>
      'Lülitage sisse kuni kuus päris salvestist, määrake igaühe helitugevus ja salvestage segu nimega. Need mängivad taustal ja unetaimer saab need peatada. Muusikat ei kasutata.';

  @override
  String get faqCalendarQ => 'Kas kalender saab näidata hidžra kuupäevi?';

  @override
  String get faqCalendarA =>
      'Jah. Hidžra kuupäevad (Umm al-Qura) kuvatakse araabia keeles automaatselt ja neid saab seadetes sisse lülitada mis tahes keele jaoks. Sündmused, tähtajaga ülesanded ja projektide verstapostid kuvatakse koos.';

  @override
  String get faqFlashcardsQ => 'Kuidas kordamine otsustab, milliseid kaarte näen?';

  @override
  String get faqFlashcardsA =>
      'Hästi teatud kaardid tulevad tagasi pikemate vahedega ja valesti läinud kaardid peagi (ajastatud kordamine). Hinnake iga vastust: Uuesti, Raske, Hea või Lihtne. Määrake päeva eesmärk ja hoidke seeriat kaardil „Täna”. Määrake pakis eksami kuupäev, et näha jäänud päevi ja mitu uut kaarti päevas õppida. Sorteerige „Minu järjestus” järgi, et kaarte paika lohistada, puudutage kummalgi küljel kõlarit, et seda kuulata, ning määrake kiirus ja kordused menüüs „Kõne”.';

  @override
  String get faqImportQ => 'Kas saan tuua kaarte Ankist või Excelist?';

  @override
  String get faqImportA =>
      'Jah. Valige pakis „Impordi” ja seejärel fail: Anki (.apkg), Excel (.xlsx) või CSV ning sobitage veerud. Kasutage „Arvutustabeli malli”, et kirjutada kaarte arvutis. Anki failides olevaid pilte ja helisid ei impordita.';

  @override
  String get faqNotesQ => 'Mida märkmed oskavad?';

  @override
  String get faqNotesA =>
      'Kirjutage vabalt kontrollnimekirjade ja vormindusega, kinnitage olulised märkmed või märkige need lemmikuks, lisage silte ja siduge märkmeid ülesannetega. Mikrofoninupuga saate dikteerida. Uue märkme saab alustada mallist (loeng, raamatu kokkuvõte, päevik, nädalaplaan) ja pildinupp lisab fotosid.';

  @override
  String get faqHabitsQ => 'Kuidas harjumuste seeriaid loetakse?';

  @override
  String get faqHabitsA =>
      'Päev loetakse, kui jõuate plaanitud päeval harjumuse eesmärgini. Harjumuse peatamine hoiab seeria alles. Igal harjumusel võib olla oma meeldetuletuse aeg.';

  @override
  String get faqGoalsQ => 'Kuidas eesmärgid edenemist jälgivad?';

  @override
  String get faqGoalsA =>
      'Andke eesmärgile sihtkogus ja ühik ning logige edenemist. Selle kaart näitab, kui kaugel olete ja kui palju on tähtajani jäänud.';

  @override
  String get faqProjectsQ => 'Milleks on projektid?';

  @override
  String get faqProjectsA =>
      'Rühmitage ülesanded projekti alla, lisage kuupäevadega verstapostid ja jälgige üldist edenemist. Verstapostid kuvatakse ka kalendris.';

  @override
  String get faqInsightsQ => 'Mida näitab Ülevaade?';

  @override
  String get faqInsightsA =>
      'Teie fookusaega, tehtud ülesandeid ja õppimist päevade ja nädalate kaupa koos leebete soovitustega. Kõik arvutatakse teie telefonis.';

  @override
  String get faqSpacesQ => 'Kus on kõik jaotised?';

  @override
  String get faqSpacesA =>
      'Ruumides on loetletud rakenduse kõik osad (märkmed, pakid, harjumused, eesmärgid, projektid, helid ja muu), et põhiriba jääks lihtsaks.';

  @override
  String get faqBackupQ => 'Kuidas mu andmeid varundatakse?';

  @override
  String get faqBackupA =>
      'Iga päev hoiab rakendus vaikselt selles telefonis krüpteeritud koopiat ja säilitab viimased 7. Seadetes saate eksportida ka parooliga kaitstud varukoopia faili ja selle teises telefonis taastada.';

  @override
  String get faqPrayerQ => 'Kuidas palveajad töötavad?';

  @override
  String get faqPrayerA =>
      'Valige oma linn jaotises Seaded → Palveajad. Ajad arvutatakse telefonis seal kasutatava meetodiga ning saate muuta meetodit ja Asri koolkonda. Saate teavituse iga palve ajal ja käimasolev fookusseanss peatub.';

  @override
  String get faqPrivacyQ => 'Kus mu andmeid hoitakse?';

  @override
  String get faqPrivacyA =>
      'Ainult teie telefonis, krüpteeritud andmebaasis. Kontot ega jälgimist pole. Internetti kasutavad ainult funktsioonid, mille ise sisse lülitate, näiteks valikuline assistent.';

  @override
  String get faqAssistantQ => 'Mis on assistent?';

  @override
  String get faqAssistantA =>
      'Valikuline abiline, mille ühendate seadetes oma TI-teenusega. Vaikimisi on see välja lülitatud ja küsib enne mis tahes märkmeteksti saatmist.';

  @override
  String get tourPlanTitle => 'Planeerige oma päev';

  @override
  String get tourPlanBody =>
      'Ülesanded, kalender ja harjumused ühes rahulikus kohas. Alustage iga hommikut valikuga „Alusta päeva”.';

  @override
  String get tourFocusTitle => 'Keskenduge sügavalt';

  @override
  String get tourFocusBody =>
      'Ajastatud seansid päris loodushelidega, „Ära sega” ja õrnad lõputoonid.';

  @override
  String get tourLearnTitle => 'Õppige püsivalt';

  @override
  String get tourLearnBody =>
      'Ajastatud kordamisega kaardid, kõne paljudes keeltes ja import Ankist või Excelist.';

  @override
  String get helpTitle => 'Abi ja küsimused';

  @override
  String get helpOpen => 'Ava';

  @override
  String get helpTour => 'Vaata tutvustust';

  @override
  String get tourNext => 'Edasi';

  @override
  String get tourDone => 'Alustame';

  @override
  String get transferColTitle => 'Pealkiri';

  @override
  String get transferColNotes => 'Märkmed';

  @override
  String get transferColBody => 'Tekst';

  @override
  String get transferColDue => 'Tähtaeg';

  @override
  String get transferColPriority => 'Prioriteet (0-3)';

  @override
  String get transferColDone => 'Tehtud';

  @override
  String get transferColProject => 'Projekt';

  @override
  String get transferColCategory => 'Kategooria';

  @override
  String get transferTitle => 'Import ja eksport';

  @override
  String get transferSaveAs => 'Salvesta kui';

  @override
  String get transferImport => 'Impordi failist';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV või tabel Wordis. Veerud: pealkiri, tähtaeg (2026-12-31), prioriteet 0-3, tehtud, projekt, märkmed. Rakenduses juba olevad ülesanded jäetakse vahele.';

  @override
  String get transferImportNotesHint =>
      'Wordi, Markdowni või tekstifailidest saab märge. Excel või CSV: üks märge rea kohta (pealkiri, tekst).';

  @override
  String get transferSaved => 'Fail salvestatud';

  @override
  String get transferFailed => 'Faili ei õnnestunud luua. Midagi ei muudetud.';

  @override
  String get transferUnsupported =>
      'Seda faili ei saa siin lugeda. Kasutage Exceli, CSV, Wordi, Markdowni või teksti.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added lisatud',
      one: '1 lisatud',
      zero: 'Uut pole midagi lisada',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Tekst';

  @override
  String get transferAllNotes => 'Kõik märkmed';

  @override
  String get transferThisNote => 'See märge';

  @override
  String get transferDeckFormats => 'Salvesta Exceli, Wordi või PDF-ina';

  @override
  String get faqFilesQ => 'Kas saan kasutada Exceli, Wordi või PDF-faile?';

  @override
  String get faqFilesA =>
      'Jah. Ülesannetes ja märkmetes on üleval impordi- ja ekspordinupp (kaks noolt) ning igal pakil on see menüüs. Salvestage Exceli, CSV, Wordi või PDF-ina või tooge sisse Exceli, CSV, Wordi, Markdowni või tekstifaile. Veergude nimed võivad olla rakenduse mis tahes keeles ja salvestatud faile saab alati uuesti importida.';

  @override
  String get tplLecture => 'Loeng';

  @override
  String get tplBook => 'Raamatu kokkuvõte';

  @override
  String get tplJournal => 'Päevik';

  @override
  String get tplWeek => 'Nädalaplaan';

  @override
  String get tplLectureBody => '## Põhipunktid\n- \n\n## Küsimused\n- [ ] \n\n## Kokkuvõte\n';

  @override
  String get tplBookBody =>
      '## Peamine mõte\n\n## Mida õppisin\n- \n\n## Tsitaadid\n> \n\n## Rakendada\n- [ ] \n';

  @override
  String get tplJournalBody => '## Olen tänulik\n- \n\n## Tänane fookus\n- [ ] \n\n## Märkmed\n';

  @override
  String get tplWeekBody =>
      '## Nädala eesmärgid\n- [ ] \n\n### Laupäev\n- [ ] \n\n### Pühapäev\n- [ ] \n\n### Esmaspäev\n- [ ] \n\n### Teisipäev\n- [ ] \n\n### Kolmapäev\n- [ ] \n\n### Neljapäev\n- [ ] \n\n### Reede\n- [ ] \n';

  @override
  String get tplHint => 'Alusta mallist';

  @override
  String get noteImage => 'Pilt';

  @override
  String get noteAddImage => 'Lisa pilt';

  @override
  String get noteImageUnreadable => 'See fail ei ole pilt, mida rakendus suudab lugeda.';

  @override
  String get noteImageTooLarge => 'See pilt on liiga suur.';

  @override
  String get examSet => 'Määra eksami kuupäev';

  @override
  String get examDate => 'Eksami kuupäev';

  @override
  String get examToday => 'Eksam on täna. Edu!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Eksamini $count päeva',
      one: 'Eksam on homme',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'õppige $count uut kaarti päevas',
      one: 'õppige 1 uus kaart päevas',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'kõik kaardid on õpitud, jätkake kordamist';

  @override
  String examRaiseLimit(int count) {
    return 'Näita $count uut kaarti päevas';
  }

  @override
  String get backupDriveHint =>
      'Koopia hoidmiseks võrgus valige järgmisena avaneval salvestuskuval Google Drive (või mõni muu pilverakendus).';

  @override
  String get flashShareDeck => 'Jaga pakki sõbraga';

  @override
  String get flashSortManual => 'Minu järjestus (lohistamine)';

  @override
  String get flashReorderHint => 'Hoidke pidet ja lohistage kaarti, et seda teisaldada.';

  @override
  String get flashReorderNeedsAll => 'Kaartide lohistamiseks tühjendage otsing ja filtrid.';

  @override
  String get flashDragHandle => 'Lohistage teisaldamiseks';

  @override
  String get reportTitle => 'Kuuaruanne';

  @override
  String get reportFocus => 'Fookusaeg';

  @override
  String reportSessions(int count) {
    return '$count seanssi';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Parim päev: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktiivset päeva';
  }

  @override
  String get reportCards => 'Korratud kaardid';

  @override
  String reportCardsKnown(String percent) {
    return '$percent meeles';
  }

  @override
  String get reportTasks => 'Tehtud ülesanded';

  @override
  String get reportHabits => 'Harjumuste märked';

  @override
  String get reportEmpty => 'Sel kuul pole veel midagi registreeritud.';

  @override
  String get reportSave => 'Salvesta PDF-i või Wordina';

  @override
  String get reportPrevMonth => 'Eelmine kuu';

  @override
  String get reportNextMonth => 'Järgmine kuu';

  @override
  String get careTitle => 'Telefoni ja andmete hooldus';

  @override
  String get storageTitle => 'Salvestusruum';

  @override
  String get storageSubtitle => 'Mis võtab ruumi ja kasutamata piltide puhastamine';

  @override
  String get storagePictures => 'Pildid märkmetes';

  @override
  String get storageCardMedia => 'Pildid ja heli kaartidel';

  @override
  String get storageText => 'Märkmete tekst';

  @override
  String get storageFree => 'Vaba ruum telefonis';

  @override
  String get storageLow =>
      'Teie telefon on peaaegu täis. Vabastage ruumi, et varukoopiad ja meeldetuletused töötaksid edasi.';

  @override
  String storageUnused(int count, String size) {
    return '$count kasutamata pilti ($size)';
  }

  @override
  String get storageNoUnused => 'Kasutamata pilte pole. Kõik on korras.';

  @override
  String get storageClean => 'Eemalda kasutamata pildid';

  @override
  String storageCleaned(int count) {
    return '$count pilti eemaldatud';
  }

  @override
  String get storageHint =>
      'Pilt loetakse kasutamata pildiks ainult siis, kui ükski märge seda ei näita, sealhulgas prügikastis olevad märkmed.';

  @override
  String get batteryTitle => 'Et meeldetuletused töötaksid';

  @override
  String get batterySubtitle => 'Mõni telefon peatab taustal rakendusi. Kontrollige oma telefoni.';

  @override
  String get batteryStatusOk =>
      'Akusäästja seda rakendust ei piira. Meeldetuletused ja helid peaksid saabuma õigel ajal.';

  @override
  String get batteryStatusLimited =>
      'Akusäästja võib selle rakenduse taustal peatada, nii et meeldetuletused ja helid võivad hilineda või puududa.';

  @override
  String get batteryOpen => 'Ava akuseaded';

  @override
  String get batteryOpenApp => 'Ava rakenduse seaded';

  @override
  String get batteryGeneric =>
      'Valige akuseadetes see rakendus ja määrake „Piiranguteta” (või „Ära optimeeri”).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: avage ka Turvalisus › Load › Automaatkäivitus ja lülitage see rakendus sisse ning määrake akusäästjaks „Piiranguteta”.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: avage Aku › see rakendus ja lubage taustategevus ja automaatkäivitus; lukustage rakendus hiljutiste rakenduste loendis.';

  @override
  String get batterySamsung =>
      'Samsung: Aku › Taustakasutuse piirangud: eemaldage see rakendus unerežiimis ja sügavas unerežiimis rakenduste hulgast.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Rakenduste käivitamine › see rakendus › halda käsitsi ning lubage automaatkäivitus, teisene käivitus ja taustal töötamine.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Aku › Taustal energiatarve › lubage see rakendus ja lülitage lubades sisse automaatkäivitus.';

  @override
  String get whatsNewTitle => 'Mis on uut';

  @override
  String get whatsNewSubtitle => 'Viimased muudatused mõne reaga';

  @override
  String get whatsNewDone => 'Selge';

  @override
  String get whatsNewOrderTitle => 'Lohistage kaardid oma järjestusse';

  @override
  String get whatsNewOrderBody =>
      'Valige pakis Sordi › Minu järjestus, seejärel hoidke pidet ja lohistage.';

  @override
  String get whatsNewSpeechTitle => 'Kõlar kaardi igal küljel';

  @override
  String get whatsNewSpeechBody =>
      'Puudutage seda, et kuulda sõna või tõlget. Kiirus, kordused ja hääl on kordamismenüüs. Keel tuvastatakse teksti järgi.';

  @override
  String get whatsNewReportTitle => 'Kuuaruanne';

  @override
  String get whatsNewReportBody =>
      'Puudutage Ülevaates aruande ikooni, et näha kuud ja salvestada see PDF-i või Wordina.';

  @override
  String get whatsNewCareTitle => 'Telefoni ja andmete hooldus';

  @override
  String get whatsNewCareBody =>
      'Seadetes on nüüd salvestusruumi leht piltide puhastamisega ja akujuhend teie telefoni margi jaoks.';

  @override
  String get whatsNewSoundTitle => 'Rahulikumad helid';

  @override
  String get whatsNewSoundBody => 'Loodushelid on pehmemad ja vaiksemad ning pildikaardid kenamad.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Kontrollitud $date: viimane varukoopia avaneb korrektselt.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Kontrollitud $date: leiti kahjustatud varukoopia ja see asendati uuega.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Kontrollitud $date: viimast varukoopiat ei õnnestunud avada. Salvestage varukoopia fail seadetes ise.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Tavaliselt õpite umbes kell $time';
  }

  @override
  String get smartReviewTimeUse => 'Kasuta';

  @override
  String get widgetNewNote => 'Uus märge';

  @override
  String get noteConnections => 'Sildid, lingid ja ülesanded';

  @override
  String get navCards => 'Kaardid';

  @override
  String get studyAnswerWay => 'Kuidas vastata';

  @override
  String get studyMorePractice => 'Lisaharjutus';

  @override
  String get studySessionSettings => 'Seansi seaded';

  @override
  String get focusAdjustTitle => 'Teie seanss';

  @override
  String get focusPresetsTitle => 'Valmis';

  @override
  String get focusPresetStudy => 'Õppimine';

  @override
  String get focusPresetDeep => 'Süvatöö';

  @override
  String get focusPresetQuick => 'Kiire spurt';

  @override
  String get focusPresetReading => 'Lugemine';

  @override
  String get focusPresetWorkout => 'Treeningvoorud';

  @override
  String get focusAdjustMinutes => 'Fookuse pikkus';

  @override
  String get focusAdjustBreak => 'Pausi pikkus';

  @override
  String get focusAdjustRounds => 'Voorud';

  @override
  String get focusRoundsOpen => 'Piiranguta';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Puudutage aja muutmiseks';

  @override
  String get flashArrangeDecks => 'Korralda pakid';

  @override
  String get flashDeckActions => 'Paki valikud';

  @override
  String get starterBrowse => 'Valmis pakid';

  @override
  String get starterBrowseHint => 'Lisage ühe puudutusega ja alustage õppimist';

  @override
  String get dashOpenDecks => 'Ava oma kaardid';

  @override
  String speechVoiceNumber(String n) {
    return 'Hääl $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Hea voog. Puhata $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Alusta pausi';

  @override
  String tasksFinishAt(String time) {
    return 'Alustage kohe ja lõpetate kõik kella $time-ks';
  }

  @override
  String get focusCalmPacing => 'Rahulik tempo';

  @override
  String get focusCalmPacingHint => 'Ainult täisminutid ja ring, ilma tiksuvate sekunditeta';

  @override
  String get focusFlipHint => 'Alustamiseks pöörake telefon ekraaniga alla';

  @override
  String get focusImmersive => 'Süvenemisrežiim';

  @override
  String get focusImmersiveBlack => 'Puhas must (säästab akut)';

  @override
  String get focusFlipToFocus => 'Pööra fookuseks';

  @override
  String get focusFlipToFocusHint =>
      'Süvenemisrežiimis: ekraaniga alla alustab, ülestõstmine peatab';

  @override
  String get guardTitle => 'Segajate kaitse';

  @override
  String get guardSubtitle => 'Peatage segavad rakendused, kui keskendute';

  @override
  String get guardSwitch => 'Peata segavad rakendused';

  @override
  String get guardSwitchHint => 'Fookusseansside ajal ja Ajakaitse tundidel';

  @override
  String get guardNeedsAccess => 'Vajab hõlbustuslülitit: puudutage selle sisselülitamiseks';

  @override
  String get guardDisclosureTitle => 'Kuidas kaitse töötab';

  @override
  String get guardDisclosureBody =>
      'Teie valitud rakenduste peatamiseks kasutab Deep Focus Androidi hõlbustusteenust, et näha, milline rakendus on avatud. Kui „Sulge Shorts ja Reels” on sees, kontrollib see ka, kas ekraanil on lühivideote mängija.\n\nSee ei loe ühtegi teksti, ei salvesta midagi nähtust ega saada midagi kuhugi: kõik jääb teie telefoni. Saate selle igal ajal hõlbustusseadetes välja lülitada.';

  @override
  String get guardAgree => 'Nõustu ja ava seaded';

  @override
  String get guardModeGentle => 'Leebe';

  @override
  String get guardModeStrict => 'Range';

  @override
  String get guardGentleHint => '5-sekundiline hingamispaus, siis otsustate teie';

  @override
  String get guardStrictHint => 'Valitud rakendused jäävad suletuks kuni fookusaja lõpuni';

  @override
  String get guardApps => 'Peatatavad rakendused';

  @override
  String get guardAppsAllowed => 'Lubatud rakendused';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rakendust',
      one: '1 rakendus',
      zero: 'Veel pole midagi valitud',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Luba ainult valitud rakendused';

  @override
  String get guardAllowlistHint =>
      'Kõik teised rakendused peatatakse; kõned, seaded ja klaviatuur töötavad alati';

  @override
  String get guardShorts => 'Sulge Shorts ja Reels';

  @override
  String get guardShortsHint =>
      'Alati, kui kaitse on sees. Garantiita: need rakendused muutuvad sageli';

  @override
  String get guardSchedule => 'Ajakaitse';

  @override
  String get guardScheduleHint => 'Kaitse ka valitud päevadel ja tundidel, näiteks koolis või tööl';

  @override
  String get guardFrom => 'Alates';

  @override
  String get guardTo => 'Kuni';

  @override
  String get guardSearchApps => 'Otsi rakendusi';

  @override
  String get guardNoApps => 'Rakendusi ei leitud';

  @override
  String get guardPrivacy =>
      'Töötab ainult teie telefonis: kaitse näeb, milline rakendus on avatud, kuid mitte kunagi selle sisu, ega saada midagi.';

  @override
  String get guardBreathe => 'Hingake sisse… ja välja';

  @override
  String get guardQuestion => 'Kas vajate seda rakendust praegu?';

  @override
  String get guardBackToFocus => 'Tagasi fookusesse';

  @override
  String get guardOpenFive => 'Ava 5 minutiks';

  @override
  String get guardStrictBody => 'See rakendus on peatatud kuni teie fookusaja lõpuni.';

  @override
  String get guardShortsClosed => 'Lühivideod suletakse, kuni kaitse on sees';

  @override
  String get faqGuardQ => 'Kuidas peatada segavad rakendused, kui keskendun?';

  @override
  String get faqGuardA =>
      'Avage Fookus → taimeri seaded → Segajate kaitse. Valige rakendused ja seejärel Leebe (5-sekundiline hingetõmme ja küsimus „Kas vajate seda rakendust praegu?”) või Range (need jäävad suletuks). See töötab fookusseansside ajal ja Ajakaitsega teie määratud päevadel ja tundidel. „Luba ainult valitud rakendused” peatab kõik muu; kõned, seaded ja klaviatuur töötavad alati. Android palub teil kaitse ühe korra hõlbustusseadetes sisse lülitada. See näeb ainult, milline rakendus on avatud, ega saada midagi.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Teisaldatud: $name';
  }

  @override
  String get notesDragHint => 'Hoidke märget ja lohistage see märkmikule';

  @override
  String get guardReviewCards => 'Korda hoopis kaarte';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Teid ootab $count kaarti',
      one: 'Teid ootab 1 kaart',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Hädaolukord: hoidke 10 sekundit';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Hoidke edasi… $n';
  }

  @override
  String get guardWeekTitle => 'See nädal';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pausi',
      one: '1 paus',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tagasi fookusesse $count korda',
      one: 'tagasi fookusesse 1 kord',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Nimeta sõnad ümber';

  @override
  String get wordsSubtitle => 'Oma sõna mis tahes rakenduse teksti jaoks';

  @override
  String get wordsHint =>
      'Teksti muutmiseks puudutage seda. Teie sõnad kehtivad ainult selle keele kohta ja säilivad varukoopiates.';

  @override
  String get wordsSearch => 'Otsi tekste';

  @override
  String get wordsChangedOnly => 'Ainult muudetud';

  @override
  String wordsOriginal(String text) {
    return 'Algne: $text';
  }

  @override
  String get wordsReset => 'Kasuta algset';

  @override
  String get wordsResetAll => 'Lähtesta kõik sõnad';

  @override
  String get wordsResetAllConfirm => 'Kõik selle keele tekstid taastatakse algseks.';

  @override
  String get wordsNone => 'Teksti ei leitud';

  @override
  String get settingsLanguageSearch => 'Otsi keeli';

  @override
  String get settingsLanguageNoMatch => 'Ükski keel ei sobi';

  @override
  String aiSmokeTest(int count) {
    return 'Sinu fookuseseeria kasvas $count päevani';
  }
}
