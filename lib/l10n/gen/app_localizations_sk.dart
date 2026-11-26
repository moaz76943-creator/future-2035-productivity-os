// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Domov';

  @override
  String get navTasks => 'Úlohy';

  @override
  String get navFocus => 'Sústredenie';

  @override
  String get navCalendar => 'Kalendár';

  @override
  String get navSpaces => 'Priestory';

  @override
  String get moduleProjects => 'Projekty';

  @override
  String get moduleNotes => 'Poznámky';

  @override
  String get moduleFlashcards => 'Kartičky';

  @override
  String get moduleGoals => 'Ciele';

  @override
  String get moduleHabits => 'Návyky';

  @override
  String get moduleAnalytics => 'Prehľady';

  @override
  String get moduleSearch => 'Hľadať';

  @override
  String get moduleAssistant => 'Asistent';

  @override
  String get moduleSettings => 'Nastavenia';

  @override
  String get moduleTrash => 'Kôš';

  @override
  String get actionSave => 'Uložiť';

  @override
  String get actionCancel => 'Zrušiť';

  @override
  String get actionDelete => 'Odstrániť';

  @override
  String get actionEdit => 'Upraviť';

  @override
  String get actionDone => 'Hotovo';

  @override
  String get actionAdd => 'Pridať';

  @override
  String get actionCreate => 'Vytvoriť';

  @override
  String get actionClose => 'Zavrieť';

  @override
  String get actionBack => 'Späť';

  @override
  String get actionUndo => 'Vrátiť späť';

  @override
  String get actionRestore => 'Obnoviť';

  @override
  String get actionRetry => 'Skúsiť znova';

  @override
  String get actionContinue => 'Pokračovať';

  @override
  String get actionSkip => 'Preskočiť';

  @override
  String get actionArchive => 'Archivovať';

  @override
  String get actionUnarchive => 'Vrátiť z archívu';

  @override
  String get actionPin => 'Pripnúť';

  @override
  String get actionUnpin => 'Odopnúť';

  @override
  String get actionMore => 'Ďalšie možnosti';

  @override
  String get actionClear => 'Vymazať';

  @override
  String get actionSearch => 'Hľadať';

  @override
  String get actionSort => 'Zoradiť';

  @override
  String get actionShare => 'Zdieľať';

  @override
  String get actionImport => 'Importovať';

  @override
  String get actionExport => 'Exportovať';

  @override
  String get actionPause => 'Pozastaviť';

  @override
  String get actionResume => 'Pokračovať';

  @override
  String get actionStart => 'Spustiť';

  @override
  String get actionStop => 'Zastaviť';

  @override
  String get actionComplete => 'Dokončiť';

  @override
  String get actionDeleteForever => 'Odstrániť natrvalo';

  @override
  String get actionEmptyTrash => 'Vysypať kôš';

  @override
  String get actionUnlink => 'Odpojiť';

  @override
  String get actionCustomize => 'Prispôsobiť';

  @override
  String get actionPreview => 'Ukážka';

  @override
  String get actionLog => 'Zapísať pokrok';

  @override
  String get stateLoading => 'Načítava sa…';

  @override
  String get stateSaving => 'Ukladá sa…';

  @override
  String get stateSaved => 'Uložené';

  @override
  String get stateUnsaved => 'Neuložené zmeny';

  @override
  String get errorGenericTitle => 'Niečo sa pokazilo';

  @override
  String get errorGenericMessage => 'Vaše údaje sú v bezpečí. Skúste to znova.';

  @override
  String get errorLoadFailed => 'Tento obsah sa nepodarilo načítať.';

  @override
  String get errorSaveFailed => 'Nepodarilo sa uložiť. Vaše zmeny tu stále sú.';

  @override
  String get validationRequired => 'Toto pole je povinné';

  @override
  String get validationTitleRequired => 'Zadajte názov';

  @override
  String get validationNameRequired => 'Zadajte meno';

  @override
  String get validationTooLong => 'Je to príliš dlhé';

  @override
  String get validationEndBeforeStart => 'Koniec musí byť po začiatku';

  @override
  String get validationStartAfterDue => 'Dátum začiatku musí byť pred termínom';

  @override
  String get validationPositiveNumber => 'Zadajte číslo väčšie ako nula';

  @override
  String get validationDependencyCycle => 'Takto by vznikla kruhová závislosť';

  @override
  String get validationInvalidRepeat => 'Toto pravidlo opakovania nie je platné';

  @override
  String get deletedItem => 'Presunuté do koša';

  @override
  String get untitled => 'Bez názvu';

  @override
  String get noProject => 'Bez projektu';

  @override
  String get greetingMorning => 'Dobré ráno';

  @override
  String get greetingAfternoon => 'Dobrý deň';

  @override
  String get greetingEvening => 'Dobrý večer';

  @override
  String get dashFocusToday => 'Dnešné sústredenie';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done z $target';
  }

  @override
  String get dashStartFocus => 'Začať sústredenie';

  @override
  String get dashFocusRunning => 'Prebieha sedenie';

  @override
  String get dashTodayTasks => 'Na dnes';

  @override
  String get dashAgenda => 'Program';

  @override
  String get dashHabits => 'Dnešné návyky';

  @override
  String get dashGoals => 'Ciele';

  @override
  String get dashReview => 'Opakovanie';

  @override
  String get dashRecentNotes => 'Nedávne poznámky';

  @override
  String get dashInsight => 'Tip';

  @override
  String get dashSeeAll => 'Zobraziť všetko';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartičiek na opakovanie',
      few: '$count kartičky na opakovanie',
      one: '1 kartička na opakovanie',
      zero: 'Žiadne kartičky na opakovanie',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Opakovať teraz';

  @override
  String get dashCustomizeTitle => 'Časti prehľadu';

  @override
  String get dashCustomizeHint => 'Vyberte, čo sa zobrazí na domovskej obrazovke.';

  @override
  String get dashSectionFocus => 'Sústredenie';

  @override
  String get dashSectionToday => 'Dnešné úlohy';

  @override
  String get dashSectionAgenda => 'Program';

  @override
  String get dashSectionHabits => 'Návyky';

  @override
  String get dashSectionGoals => 'Ciele';

  @override
  String get dashSectionReview => 'Opakovanie kartičiek';

  @override
  String get dashSectionNotes => 'Nedávne poznámky';

  @override
  String get dashSectionInsight => 'Tipy';

  @override
  String get quickAddTask => 'Nová úloha';

  @override
  String get quickAddNote => 'Nová poznámka';

  @override
  String get quickAddEvent => 'Nová udalosť';

  @override
  String get quickStartFocus => 'Sústredenie';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Máte $count úloh po termíne. Začnite tou najdôležitejšou.',
      few: 'Máte $count úlohy po termíne. Začnite tou najdôležitejšou.',
      one: 'Máte 1 úlohu po termíne. Preplánujte ju alebo ju najprv dokončite.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Do denného cieľa sústredenia vám chýba $minutes min.';
  }

  @override
  String get insightCardsDue => 'Zopakujte si kartičky, kým sú čerstvé v pamäti.';

  @override
  String get insightAllClear =>
      'Všetko ide podľa plánu. Naplánujte si zajtrajšok alebo si dajte pokojnú prestávku.';

  @override
  String insightHabitStreak(String habit) {
    return 'Udržte sériu: $habit dnes ešte čaká.';
  }

  @override
  String get focusTitle => 'Sústredenie';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Odpočítavanie';

  @override
  String get focusModeCountUp => 'Stopky';

  @override
  String get focusModeOpen => 'Voľné';

  @override
  String get focusPhaseWork => 'Sústredenie';

  @override
  String get focusPhaseShortBreak => 'Krátka prestávka';

  @override
  String get focusPhaseLongBreak => 'Dlhá prestávka';

  @override
  String get focusReady => 'Keď budete pripravení';

  @override
  String get focusPaused => 'Pozastavené';

  @override
  String get focusRunning => 'Sústredenie beží';

  @override
  String get focusDuration => 'Dĺžka';

  @override
  String get focusLinkTask => 'Pripojiť úlohu';

  @override
  String get focusLinkedTask => 'Pracujem na';

  @override
  String get focusNoTask => 'Žiadna pripojená úloha';

  @override
  String focusCycle(int current, int total) {
    return 'Kolo $current z $total';
  }

  @override
  String get focusSkipBreak => 'Preskočiť prestávku';

  @override
  String get focusStartBreak => 'Začať prestávku';

  @override
  String get focusStartNext => 'Začať ďalšie sústredenie';

  @override
  String get focusSessionComplete => 'Sedenie dokončené';

  @override
  String get focusSessionStopped => 'Sedenie uložené';

  @override
  String focusSessionSummary(String duration) {
    return 'Sústredili ste sa $duration.';
  }

  @override
  String get focusAddNote => 'Pridajte k sedeniu poznámku';

  @override
  String get focusHistory => 'História';

  @override
  String get focusNoHistory => 'Dokončené sedenia sa zobrazia tu';

  @override
  String get focusOutcomeCompleted => 'Dokončené';

  @override
  String get focusOutcomeInterrupted => 'Ukončené predčasne';

  @override
  String get focusRecovered => 'Sedenie pokračovalo, aj keď bola aplikácia zatvorená.';

  @override
  String get focusCompletedWhileAway =>
      'Sedenie skončilo, keď bola aplikácia zatvorená, a bolo uložené.';

  @override
  String get focusNotificationsOff =>
      'Upozornenia sú vypnuté. Na koniec sedenia vás nič neupozorní.';

  @override
  String get focusBatteryHint =>
      'Niektoré zariadenia pozastavujú aplikácie na pozadí. Časovač zostáva presný, ale upozornenia sa môžu oneskoriť. Pre spoľahlivé upozornenia povoľte neobmedzené využitie batérie.';

  @override
  String get focusOpenSettings => 'Otvoriť nastavenia';

  @override
  String get focusStopConfirmTitle => 'Zastaviť toto sedenie?';

  @override
  String get focusStopConfirmMessage => 'Doterajší čas sústredenia sa uloží.';

  @override
  String get focusDiscard => 'Zahodiť';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minút',
      few: '$minutes minúty',
      one: '1 minúta',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, zostáva $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, uplynulo $time';
  }

  @override
  String get focusDeleteSession => 'Odstrániť sedenie';

  @override
  String get tasksTitle => 'Úlohy';

  @override
  String get tasksViewToday => 'Dnes';

  @override
  String get tasksViewUpcoming => 'Nadchádzajúce';

  @override
  String get tasksViewAll => 'Všetky';

  @override
  String get tasksViewOverdue => 'Po termíne';

  @override
  String get tasksViewCompleted => 'Dokončené';

  @override
  String get tasksQuickAddHint => 'Pridať úlohu…';

  @override
  String get tasksEmptyTitle => 'Všetko hotové';

  @override
  String get tasksEmptyMessage => 'Pridajte úlohu a dajte dňu tvar.';

  @override
  String get tasksEmptyCompleted => 'Dokončené úlohy sa zobrazia tu.';

  @override
  String get taskNew => 'Nová úloha';

  @override
  String get taskEdit => 'Upraviť úlohu';

  @override
  String get taskTitleLabel => 'Názov';

  @override
  String get taskTitleHint => 'Čo treba urobiť?';

  @override
  String get taskDescriptionLabel => 'Popis';

  @override
  String get taskNotesLabel => 'Poznámky';

  @override
  String get taskPriority => 'Priorita';

  @override
  String get priorityNone => 'Žiadna';

  @override
  String get priorityLow => 'Nízka';

  @override
  String get priorityMedium => 'Stredná';

  @override
  String get priorityHigh => 'Vysoká';

  @override
  String get priorityUrgent => 'Naliehavá';

  @override
  String get taskDueDate => 'Termín';

  @override
  String get taskStartDate => 'Dátum začiatku';

  @override
  String get taskReminder => 'Pripomienka';

  @override
  String get taskRepeat => 'Opakovanie';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategória';

  @override
  String get taskCategoryHint => 'napr. Práca, Domov, Štúdium';

  @override
  String get taskEstimateMinutes => 'Odhad (minúty)';

  @override
  String get taskTracked => 'Namerané sústredenie';

  @override
  String get taskLabels => 'Štítky';

  @override
  String get taskAddLabel => 'Nový štítok';

  @override
  String get taskChecklist => 'Kontrolný zoznam';

  @override
  String get taskAddChecklistItem => 'Pridať položku';

  @override
  String get taskSubtasks => 'Čiastkové úlohy';

  @override
  String get taskAddSubtask => 'Pridať čiastkovú úlohu';

  @override
  String get taskDependencies => 'Blokované úlohou';

  @override
  String get taskAddDependency => 'Pridať blokujúcu úlohu';

  @override
  String get taskLinkedNotes => 'Prepojené poznámky';

  @override
  String get taskSetTime => 'Nastaviť čas';

  @override
  String get taskNoDate => 'Bez dátumu';

  @override
  String get taskCompleted => 'Úloha dokončená';

  @override
  String get taskNextOccurrence => 'Ďalší výskyt vytvorený';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dní po termíne',
      few: '$days dni po termíne',
      one: '1 deň po termíne',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Označiť „$title“ ako hotové';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Označiť „$title“ ako nehotové';
  }

  @override
  String get sortSmart => 'Inteligentne';

  @override
  String get sortDueDate => 'Termín';

  @override
  String get sortPriority => 'Priorita';

  @override
  String get sortCreated => 'Najnovšie';

  @override
  String get sortTitle => 'Názov';

  @override
  String get filterAllProjects => 'Všetky projekty';

  @override
  String get filterAnyPriority => 'Akákoľvek priorita';

  @override
  String get filterTitle => 'Filter a zoradenie';

  @override
  String get dateToday => 'Dnes';

  @override
  String get dateTomorrow => 'Zajtra';

  @override
  String get dateYesterday => 'Včera';

  @override
  String get repeatNever => 'Neopakuje sa';

  @override
  String get repeatDaily => 'Každý deň';

  @override
  String get repeatWeekdays => 'Každý pracovný deň';

  @override
  String get repeatWeekly => 'Každý týždeň';

  @override
  String get repeatMonthly => 'Každý mesiac';

  @override
  String get repeatYearly => 'Každý rok';

  @override
  String get repeatCustom => 'Vlastné';

  @override
  String get repeatEvery => 'Opakovať každý';

  @override
  String get repeatOnDays => 'V dňoch';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dní',
      few: 'dni',
      one: 'deň',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'týždňov',
      few: 'týždne',
      one: 'týždeň',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mesiacov',
      few: 'mesiace',
      one: 'mesiac',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'rokov',
      few: 'roky',
      one: 'rok',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opakovaniach',
      few: '$count opakovaniach',
      one: '1 opakovaní',
    );
    return 'Skončí po $_temp0';
  }

  @override
  String get repeatEndsNever => 'Nikdy nekončí';

  @override
  String get reminderAtTime => 'V čase udalosti';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minút vopred',
      few: '$minutes minúty vopred',
      one: '1 minútu vopred',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours hodín vopred',
      few: '$hours hodiny vopred',
      one: '1 hodinu vopred',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 deň vopred';

  @override
  String get projectsTitle => 'Projekty';

  @override
  String get projectsEmptyTitle => 'Zatiaľ žiadne projekty';

  @override
  String get projectsEmptyMessage => 'Zoskupte súvisiace úlohy, poznámky a čas sústredenia.';

  @override
  String get projectNew => 'Nový projekt';

  @override
  String get projectEdit => 'Upraviť projekt';

  @override
  String get projectName => 'Názov';

  @override
  String get projectDescription => 'Popis';

  @override
  String get projectGoal => 'Cieľ';

  @override
  String get projectDeadline => 'Termín';

  @override
  String get projectColor => 'Farba';

  @override
  String get projectIcon => 'Ikona';

  @override
  String get projectProgress => 'Pokrok';

  @override
  String projectTasksDone(int done, int total) {
    return 'Hotovo $done z $total úloh';
  }

  @override
  String get projectFocusTime => 'Čas sústredenia';

  @override
  String get projectArchived => 'Archivované projekty';

  @override
  String get projectShowArchived => 'Zobraziť archivované';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Zostáva $days dní',
      few: 'Zostávajú $days dni',
      one: 'Zostáva 1 deň',
      zero: 'Termín dnes',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Po termíne';

  @override
  String get calendarTitle => 'Kalendár';

  @override
  String get calendarMonth => 'Mesiac';

  @override
  String get calendarWeek => 'Týždeň';

  @override
  String get calendarDay => 'Deň';

  @override
  String get calendarToday => 'Dnes';

  @override
  String get calendarPrevious => 'Predchádzajúce';

  @override
  String get calendarNext => 'Ďalšie';

  @override
  String get calendarNoEvents => 'Nič naplánované';

  @override
  String get calendarAllDay => 'Celý deň';

  @override
  String get eventNew => 'Nová udalosť';

  @override
  String get eventEdit => 'Upraviť udalosť';

  @override
  String get eventTitleHint => 'Názov udalosti';

  @override
  String get eventStarts => 'Začiatok';

  @override
  String get eventEnds => 'Koniec';

  @override
  String get eventKind => 'Typ';

  @override
  String get eventKindEvent => 'Udalosť';

  @override
  String get eventKindTimeBlock => 'Časový blok';

  @override
  String get eventKindFocus => 'Sedenie sústredenia';

  @override
  String get eventKindGoal => 'Osobný cieľ';

  @override
  String get eventDescription => 'Podrobnosti';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Prekrýva sa s $count udalosťami',
      few: 'Prekrýva sa s $count udalosťami',
      one: 'Prekrýva sa s 1 udalosťou',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Konflikty v pláne v tento deň';

  @override
  String get calendarTaskDue => 'Termín úlohy';

  @override
  String get calendarDragHint => 'Podržte a potiahnite udalosť, ak ju chcete presunúť';

  @override
  String get calendarRescheduled => 'Udalosť presunutá';

  @override
  String get calendarScheduleTask => 'Naplánovať ako časový blok';

  @override
  String get notesTitle => 'Poznámky';

  @override
  String get notesViewAll => 'Všetky';

  @override
  String get notesViewPinned => 'Pripnuté';

  @override
  String get notesViewFavorites => 'Obľúbené';

  @override
  String get notesViewArchived => 'Archivované';

  @override
  String get notesTags => 'Štítky';

  @override
  String get notesNewNotebook => 'Nový zápisník';

  @override
  String get notesNoNotebook => 'Bez zápisníka';

  @override
  String get notesEmptyTitle => 'Prázdny list';

  @override
  String get notesEmptyMessage => 'Zachyťte nápady, poznámky zo stretnutí a znalosti.';

  @override
  String get noteTitleHint => 'Názov';

  @override
  String get noteBodyHint =>
      'Začnite písať… Použite # pre štítky a [[Názov]] na prepojenie poznámok.';

  @override
  String get noteFavorite => 'Obľúbené';

  @override
  String get noteUnfavorite => 'Odobrať z obľúbených';

  @override
  String get noteMoveTo => 'Presunúť do zápisníka';

  @override
  String get noteBacklinks => 'Odkazujú sem';

  @override
  String get noteLinkedTasks => 'Prepojené úlohy';

  @override
  String get noteLinkTask => 'Pripojiť úlohu';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Nadpis';

  @override
  String get noteFormatBold => 'Tučné';

  @override
  String get noteFormatItalic => 'Kurzíva';

  @override
  String get noteFormatList => 'Odrážky';

  @override
  String get noteFormatChecklist => 'Kontrolný zoznam';

  @override
  String get noteFormatLink => 'Odkaz';

  @override
  String noteEdited(String time) {
    return 'Upravené $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count slov',
      few: '$count slová',
      one: '1 slovo',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kartičky';

  @override
  String get flashEmptyTitle => 'Vytvorte svoj prvý balíček';

  @override
  String get flashEmptyMessage =>
      'Opakovanie v intervaloch ukáže každú kartičku tesne predtým, ako by ste ju zabudli.';

  @override
  String get deckNew => 'Nový balíček';

  @override
  String get deckEdit => 'Upraviť balíček';

  @override
  String get deckName => 'Názov balíčka';

  @override
  String get deckDescription => 'Popis';

  @override
  String get deckDailyNew => 'Nové kartičky denne';

  @override
  String get deckDailyReview => 'Denný cieľ opakovania';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartičiek',
      few: '$count kartičky',
      one: '1 kartička',
      zero: 'Žiadne kartičky',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Na opakovanie';

  @override
  String get deckNewCards => 'Nové';

  @override
  String get deckMature => 'Naučené';

  @override
  String get deckStudy => 'Učiť sa';

  @override
  String get deckNothingDue => 'Teraz nie je čo opakovať. Vráťte sa neskôr.';

  @override
  String get deckEmptyCards => 'Pridajte kartičky a začnite sa učiť.';

  @override
  String get cardNew => 'Nová kartička';

  @override
  String get cardEdit => 'Upraviť kartičku';

  @override
  String get cardFront => 'Predná strana';

  @override
  String get cardBack => 'Zadná strana';

  @override
  String get cardFrontHint => 'Otázka alebo pojem';

  @override
  String get cardBackHint => 'Odpoveď alebo definícia';

  @override
  String get cardTags => 'Štítky';

  @override
  String get cardAddAnother => 'Uložiť a pridať ďalšiu';

  @override
  String get reviewShowAnswer => 'Ukázať odpoveď';

  @override
  String get reviewAgain => 'Znova';

  @override
  String get reviewHard => 'Ťažké';

  @override
  String get reviewGood => 'Dobré';

  @override
  String get reviewEasy => 'Ľahké';

  @override
  String reviewProgress(int done, int total) {
    return '$done z $total';
  }

  @override
  String get reviewFinishedTitle => 'Sedenie dokončené';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zopakovali ste $count kartičiek.',
      few: 'Zopakovali ste $count kartičky.',
      one: 'Zopakovali ste 1 kartičku.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Ťuknutím odhalíte odpoveď';

  @override
  String get importCardsTitle => 'Importovať kartičky';

  @override
  String get importCardsHint =>
      'Vložte jednu kartičku na riadok (prednú a zadnú stranu oddeľte tabulátorom alebo bodkočiarkou), alebo vyberte súbor: Excel (.xlsx), CSV, balíček Anki (.apkg) alebo exportovaný balíček.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Importovaných $count kartičiek',
      few: 'Importované $count kartičky',
      one: 'Importovaná 1 kartička',
      zero: 'Nič sa neimportovalo',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Tento obsah sa nepodarilo importovať.';

  @override
  String get exportCopied => 'Balíček exportovaný';

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
      other: '$count dní',
      few: '$count dni',
      one: '1 deň',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Ciele';

  @override
  String get goalsEmptyTitle => 'Majte cieľ';

  @override
  String get goalsEmptyMessage =>
      'Stanovte si denné, týždenné, mesačné alebo dlhodobé ciele a sledujte skutočný pokrok.';

  @override
  String get goalNew => 'Nový cieľ';

  @override
  String get goalEdit => 'Upraviť cieľ';

  @override
  String get goalTitleHint => 'Čo chcete dosiahnuť?';

  @override
  String get goalPeriod => 'Obdobie';

  @override
  String get goalPeriodDaily => 'Denný';

  @override
  String get goalPeriodWeekly => 'Týždenný';

  @override
  String get goalPeriodMonthly => 'Mesačný';

  @override
  String get goalPeriodLongTerm => 'Dlhodobý';

  @override
  String get goalTarget => 'Cieľová hodnota';

  @override
  String get goalUnit => 'Jednotka';

  @override
  String get goalUnitHint => 'napr. strany, km, hodiny';

  @override
  String get goalStatusActive => 'Aktívny';

  @override
  String get goalStatusPaused => 'Pozastavený';

  @override
  String get goalStatusAchieved => 'Dosiahnutý';

  @override
  String get goalPause => 'Pozastaviť cieľ';

  @override
  String get goalResume => 'Obnoviť cieľ';

  @override
  String get goalMarkAchieved => 'Označiť ako dosiahnutý';

  @override
  String goalProgressOf(String current, String target) {
    return '$current z $target';
  }

  @override
  String get goalLogAmount => 'Množstvo';

  @override
  String get goalLogNote => 'Poznámka (voliteľné)';

  @override
  String get goalHistory => 'História';

  @override
  String get goalNoHistory => 'Zapísaný pokrok sa zobrazí tu';

  @override
  String get goalLinkedTasks => 'Prepojené úlohy';

  @override
  String get goalLinkedTasksHint =>
      'Každá dokončená prepojená úloha sa do tohto cieľa počíta ako 1.';

  @override
  String get goalThisPeriod => 'Toto obdobie';

  @override
  String get habitsTitle => 'Návyky';

  @override
  String get habitsEmptyTitle => 'Malé kroky každý deň';

  @override
  String get habitsEmptyMessage => 'Vytvorte si návyk a odškrtnite ho, keď ho splníte.';

  @override
  String get habitNew => 'Nový návyk';

  @override
  String get habitEdit => 'Upraviť návyk';

  @override
  String get habitNameHint => 'napr. Prečítať 20 strán';

  @override
  String get habitDays => 'Plán';

  @override
  String get habitEveryDay => 'Každý deň';

  @override
  String get habitTargetPerDay => 'Koľkokrát denne';

  @override
  String get habitReminder => 'Denná pripomienka';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Séria $count dní',
      few: 'Séria $count dni',
      one: 'Séria 1 deň',
      zero: 'Žiadna séria',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Najdlhšia séria';

  @override
  String get habitCurrentStreak => 'Aktuálna séria';

  @override
  String get habitConsistency => 'Pravidelnosť';

  @override
  String get habitLast90 => 'Posledných 90 dní';

  @override
  String get habitPaused => 'Pozastavené';

  @override
  String get habitPause => 'Pozastaviť návyk';

  @override
  String get habitResume => 'Obnoviť návyk';

  @override
  String get habitDoneToday => 'Dnes splnené';

  @override
  String habitCountToday(int count, int target) {
    return 'Dnes $count z $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Odškrtnúť „$name“';
  }

  @override
  String get habitNotScheduledToday => 'Dnes nie je v pláne';

  @override
  String get analyticsTitle => 'Prehľady';

  @override
  String get rangeWeek => '7 dní';

  @override
  String get rangeMonth => '30 dní';

  @override
  String get rangeQuarter => '90 dní';

  @override
  String get statFocusTime => 'Čas sústredenia';

  @override
  String get statSessions => 'Sedenia';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed dokončených · $interrupted ukončených predčasne';
  }

  @override
  String get statTasksDone => 'Dokončené úlohy';

  @override
  String get statCompletionRate => 'Dokončené včas';

  @override
  String get statHabitConsistency => 'Pravidelnosť návykov';

  @override
  String get statRetention => 'Zapamätané kartičky';

  @override
  String get statReviews => 'Opakovania';

  @override
  String get statActiveGoals => 'Aktívne ciele';

  @override
  String get statEstimated => 'Odhadom odvedená práca';

  @override
  String get statEstimatedNote => 'Podľa vašich odhadov, nie podľa nameraného času';

  @override
  String get statMeasuredNote => 'Namerané zo sedení sústredenia';

  @override
  String get chartFocusByDay => 'Minúty sústredenia za deň';

  @override
  String get chartTasksByDay => 'Dokončené úlohy za deň';

  @override
  String get chartTimeByProject => 'Čas podľa projektu';

  @override
  String get chartProjectProgress => 'Pokrok projektov';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: spolu $total, najlepší deň $best';
  }

  @override
  String get analyticsNoData => 'Zatiaľ málo údajov';

  @override
  String get analyticsUnassigned => 'Nepriradené';

  @override
  String get searchHint => 'Hľadať všade…';

  @override
  String get searchRecent => 'Nedávne hľadania';

  @override
  String get searchClearRecent => 'Vymazať nedávne hľadania';

  @override
  String searchNoResults(String query) {
    return 'Žiadne výsledky pre „$query“';
  }

  @override
  String get searchStartTyping =>
      'Hľadajte v úlohách, poznámkach, kartičkách, cieľoch, udalostiach a ďalších. Hľadanie zostáva v tomto zariadení.';

  @override
  String get searchCatTask => 'Úlohy';

  @override
  String get searchCatProject => 'Projekty';

  @override
  String get searchCatNote => 'Poznámky';

  @override
  String get searchCatFlashcard => 'Kartičky';

  @override
  String get searchCatDeck => 'Balíčky';

  @override
  String get searchCatGoal => 'Ciele';

  @override
  String get searchCatHabit => 'Návyky';

  @override
  String get searchCatEvent => 'Udalosti';

  @override
  String get searchCatSession => 'Sedenia';

  @override
  String get searchAll => 'Všetky';

  @override
  String get assistantTitle => 'Asistent';

  @override
  String get assistantIntro =>
      'Pomoc s plánovaním, ktorá funguje vo vašom zariadení. Na zhrnutia a generovanie môžete voliteľne pripojiť službu AI podľa vlastného výberu.';

  @override
  String get assistantOnDevice => 'V zariadení';

  @override
  String get assistantCloud => 'Služba AI';

  @override
  String get assistantPlanDay => 'Naplánovať môj deň';

  @override
  String get assistantPlanDayDesc =>
      'Zoradí otvorené úlohy podľa naliehavosti, priority a odhadu a vloží ich medzi vaše udalosti.';

  @override
  String get assistantExtractTasks => 'Vytiahnuť úlohy z poznámky';

  @override
  String get assistantExtractTasksDesc =>
      'Nájde v poznámke položky kontrolného zoznamu a riadky s úlohami a urobí z nich úlohy.';

  @override
  String get assistantMakeCards => 'Vytvoriť kartičky z poznámky';

  @override
  String get assistantMakeCardsDesc =>
      'Urobí kartičky z riadkov „pojem: definícia“ a z riadkov s otázkou a odpoveďou.';

  @override
  String get assistantSummarize => 'Zhrnúť poznámku';

  @override
  String get assistantSummarizeDesc =>
      'Vyžaduje službu AI. Poznámka sa odošle až po vašom potvrdení.';

  @override
  String get assistantWorkload => 'Prehľad vyťaženia';

  @override
  String get assistantWorkloadDesc =>
      'Porovná odhadovanú prácu s vaším voľným časom v tomto týždni.';

  @override
  String get assistantPlanEmpty => 'Žiadne otvorené úlohy na plánovanie. Užite si voľno.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Voľný čas na sústredenie dnes: $time';
  }

  @override
  String get assistantPlanOverflow => 'Toto sa dnes možno nezmestí:';

  @override
  String get assistantChooseNote => 'Vyberte poznámku';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Našlo sa $count úloh',
      few: 'Našli sa $count úlohy',
      one: 'Našla sa 1 úloha',
      zero: 'V poznámke sa nenašli žiadne úlohy',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Našlo sa $count kartičiek',
      few: 'Našli sa $count kartičky',
      one: 'Našla sa 1 kartička',
      zero: 'V poznámke sa nenašli žiadne kartičky',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Vyberte balíček';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Odhadovaná práca: $estimated. Voľný čas: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Máte naplánované viac, než koľko je času. Zvážte presunutie úloh s nižšou prioritou.';

  @override
  String get assistantWorkloadOk => 'Váš plán sa zmestí do dostupného času.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count otvorených úloh nemá odhad.',
      few: '$count otvorené úlohy nemajú odhad.',
      one: '1 otvorená úloha nemá odhad.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Služba AI';

  @override
  String get assistantProviderOff =>
      'Žiadna služba nie je pripojená. Nástroje v zariadení fungujú ďalej.';

  @override
  String assistantProviderOn(String host) {
    return 'Pripojené k $host';
  }

  @override
  String get assistantEndpoint => 'Koncový bod API (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'Kľúč API';

  @override
  String get assistantApiKeyStored => 'Bezpečne uložené v tomto zariadení';

  @override
  String get assistantHttpsOnly => 'Povolené sú len koncové body HTTPS';

  @override
  String get assistantConsentTitle => 'Odoslať tento obsah vašej službe AI?';

  @override
  String assistantConsentBody(String host) {
    return 'Vybraný text poznámky opustí toto zariadenie a spracuje ho $host. Nič iné sa neodosiela.';
  }

  @override
  String get assistantConsentAlways => 'Pri tejto službe sa už nepýtať';

  @override
  String get assistantSend => 'Odoslať';

  @override
  String get assistantUnavailable => 'Službu AI sa nepodarilo zastihnúť. Skúste to neskôr.';

  @override
  String get assistantDisabledTitle => 'Asistent je vypnutý';

  @override
  String get assistantDisabledMessage =>
      'Zapnite ho a používajte nástroje na plánovanie. Žiadne údaje neopustia vaše zariadenie, pokiaľ nepripojíte službu a nepotvrdíte každú požiadavku.';

  @override
  String get assistantSummaryTitle => 'Zhrnutie';

  @override
  String get assistantRemoveProvider => 'Odstrániť službu';

  @override
  String get settingsTitle => 'Nastavenia';

  @override
  String get settingsGeneral => 'Všeobecné';

  @override
  String get settingsLanguage => 'Jazyk';

  @override
  String get settingsLanguageSystem => 'Jazyk zariadenia';

  @override
  String get settingsAppearance => 'Vzhľad';

  @override
  String get settingsTheme => 'Motív';

  @override
  String get themeLight => 'Svetlý';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get themeSystem => 'Podľa systému';

  @override
  String get settingsReduceMotion => 'Obmedziť pohyb';

  @override
  String get settingsReduceMotionDesc => 'Menej animácií a pohyblivých pozadí';

  @override
  String get settingsFocus => 'Časovač sústredenia';

  @override
  String get settingsWorkLength => 'Dĺžka sústredenia';

  @override
  String get settingsShortBreak => 'Krátka prestávka';

  @override
  String get settingsLongBreak => 'Dlhá prestávka';

  @override
  String get settingsLongBreakEvery => 'Dlhá prestávka po';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sedeniach',
      few: '$count sedeniach',
      one: '1 sedení',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Spúšťať prestávky automaticky';

  @override
  String get settingsSound => 'Zvuk pri dokončení';

  @override
  String get settingsDailyFocusTarget => 'Denný cieľ sústredenia';

  @override
  String get settingsWeeklyFocusTarget => 'Týždenný cieľ sústredenia';

  @override
  String get settingsNotifications => 'Upozornenia';

  @override
  String get settingsNotificationsEnable => 'Povoliť pripomienky';

  @override
  String get settingsQuietHours => 'Tiché hodiny';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Pripomienky návykov, cieľov a opakovania sú stlmené od $start do $end';
  }

  @override
  String get settingsReviewReminder => 'Pripomienka opakovania kartičiek';

  @override
  String get settingsPermissionDenied => 'Upozornenia sú zablokované v nastaveniach systému.';

  @override
  String get settingsPrivacy => 'Súkromie a údaje';

  @override
  String get settingsPrivacyStatement =>
      'Vaše údaje sú uložené len v tomto zariadení a sú šifrované. Žiadny účet, žiadna analytika ani sledovanie.';

  @override
  String get settingsBackup => 'Vytvoriť šifrovanú zálohu';

  @override
  String get settingsBackupDesc => 'Chránené heslom, ktoré si zvolíte';

  @override
  String get settingsRestore => 'Obnoviť zo zálohy';

  @override
  String get settingsRestoreDesc => 'Nahradí všetky údaje v tomto zariadení';

  @override
  String get settingsErase => 'Vymazať všetky údaje';

  @override
  String get settingsEraseDesc => 'Natrvalo vymazať všetko v tomto zariadení';

  @override
  String get settingsEraseConfirmTitle => 'Vymazať všetky údaje?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Všetky úlohy, poznámky, kartičky, ciele, návyky, udalosti a sedenia budú natrvalo odstránené. Na potvrdenie napíšte $word.';
  }

  @override
  String get settingsEraseWord => 'VYMAZAŤ';

  @override
  String get settingsErased => 'Všetky údaje vymazané';

  @override
  String get backupPassword => 'Heslo zálohy';

  @override
  String get backupPasswordConfirm => 'Potvrďte heslo';

  @override
  String backupPasswordHint(int count) {
    return 'Aspoň $count znakov. Ak ho stratíte, nedá sa obnoviť.';
  }

  @override
  String get backupPasswordMismatch => 'Heslá sa nezhodujú';

  @override
  String get backupPasswordShort => 'Heslo je príliš krátke';

  @override
  String get backupCreating => 'Šifruje sa záloha…';

  @override
  String get backupCreated => 'Záloha je pripravená na uloženie';

  @override
  String get backupRestoring => 'Overuje sa a obnovuje…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Obnovených $count položiek',
      few: 'Obnovené $count položky',
      one: 'Obnovená 1 položka',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Nesprávne heslo, alebo bol súbor zmenený.';

  @override
  String get backupNotABackup => 'Tento súbor nie je zálohou Deep Focus.';

  @override
  String get backupCorrupted => 'Súbor zálohy je poškodený.';

  @override
  String get backupNewer =>
      'Túto zálohu vytvorila novšia verzia aplikácie. Najprv aplikáciu aktualizujte.';

  @override
  String get backupRestoreConfirmTitle => 'Nahradiť všetky údaje?';

  @override
  String get backupRestoreConfirmBody =>
      'Všetko, čo je teraz v tomto zariadení, nahradí záloha. Ak obnovenie zlyhá, nič sa nezmení.';

  @override
  String get settingsAbout => 'O aplikácii';

  @override
  String settingsVersion(String version) {
    return 'Verzia $version';
  }

  @override
  String get settingsLicenses => 'Licencie open source';

  @override
  String get settingsAssistant => 'Asistent';

  @override
  String get settingsAssistantEnable => 'Zapnúť asistenta';

  @override
  String get settingsDashboard => 'Časti domovskej stránky';

  @override
  String get settingsTrash => 'Kôš';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Kôš je prázdny';

  @override
  String get trashHint => 'Odstránené položky tu zostanú, kým ich nevymažete.';

  @override
  String get trashTasks => 'Úlohy';

  @override
  String get trashNotes => 'Poznámky';

  @override
  String get onboardWelcomeTitle => 'Vitajte vo svojom novom pracovnom priestore';

  @override
  String get onboardWelcomeBody =>
      'Úlohy, sústredenie, kalendár, poznámky, kartičky, ciele a návyky — pokope a krásne jednoducho.';

  @override
  String get onboardPrivateTitle => 'Súkromie od základu';

  @override
  String get onboardPrivateBody =>
      'Všetko zostáva šifrované v tomto zariadení. Žiadny účet. Žiadne sledovanie. Rozhodujete vy.';

  @override
  String get onboardLanguageTitle => 'Vyberte si jazyk';

  @override
  String get onboardNotifTitle => 'Jemné pripomienky';

  @override
  String get onboardNotifBody =>
      'Povoľte upozornenia na pripomienky úloh a sústredenia. Môžete to kedykoľvek zmeniť.';

  @override
  String get onboardGetStarted => 'Začať';

  @override
  String onboardStep(int current, int total) {
    return 'Krok $current z $total';
  }

  @override
  String get notifChannelReminders => 'Pripomienky';

  @override
  String get notifChannelRemindersDesc => 'Pripomienky úloh, udalostí, návykov a cieľov';

  @override
  String get notifChannelFocus => 'Časovač sústredenia';

  @override
  String get notifChannelFocusDesc => 'Upozornenia na koniec sedenia alebo prestávky';

  @override
  String get notifTaskTitle => 'Pripomienka úlohy';

  @override
  String get notifEventTitle => 'Nadchádzajúca udalosť';

  @override
  String notifEventBody(String title, String time) {
    return '$title o $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sedenie sústredenia dokončené';

  @override
  String get notifFocusDoneBody => 'Skvelá práca. Čas na prestávku.';

  @override
  String get notifBreakDoneTitle => 'Prestávka sa skončila';

  @override
  String get notifBreakDoneBody => 'Pripravení na ďalšie sedenie?';

  @override
  String get notifHabitTitle => 'Pripomienka návyku';

  @override
  String get notifReviewTitle => 'Kartičky sú pripravené';

  @override
  String get notifReviewBody => 'Krátke opakovanie udrží pamäť v kondícii.';

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
    return '$value %';
  }

  @override
  String get weekdaysShort => 'P,U,S,Š,P,S,N';

  @override
  String a11yProgress(int value) {
    return 'Pokrok $value percent';
  }

  @override
  String a11yPriority(String level) {
    return 'Priorita: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Farba $index';
  }

  @override
  String get analyticsRangeLabel => 'Časové obdobie';

  @override
  String get analyticsRefresh => 'Obnoviť';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done z $total úloh s termínom dokončených včas';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Hotovo $done z $total úloh';
  }

  @override
  String get analyticsNoProjects => 'Žiadne aktívne projekty';

  @override
  String get analyticsNoFocus => 'V tomto období žiadne sedenia sústredenia';

  @override
  String get analyticsHabitsNone => 'Žiadne aktívne návyky';

  @override
  String get analyticsRetentionNote => 'Podiel naučených kartičiek, ktoré ste si zapamätali';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Voľný čas sa počíta $start–$end v pracovné dni ($days), bez udalostí s časom. Odhadovaná práca je súčet odhadov otvorených úloh s termínom v najbližších 7 dňoch.';
  }

  @override
  String get assistantWorkdaysMonFri => 'pondelok–piatok';

  @override
  String get assistantWorkdaysSunThu => 'nedeľa–štvrtok';

  @override
  String get assistantWorkloadDayOff => 'Voľný deň';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated naplánované · $free voľno';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Naplánované odteraz do $end, okolo dnešných udalostí. Najprv úlohy po termíne, potom podľa priority, termínu a odhadu.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Naplánovať ako časové bloky';

  @override
  String get assistantScheduleConfirmTitle => 'Pridať časové bloky do kalendára?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Do dnešného kalendára sa pridá $count časových blokov.',
      few: 'Do dnešného kalendára sa pridajú $count časové bloky.',
      one: 'Do dnešného kalendára sa pridá 1 časový blok.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridaných $count časových blokov',
      few: 'Pridané $count časové bloky',
      one: 'Pridaný 1 časový blok',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Už v kalendári';

  @override
  String get assistantPlanTimeline => 'Zmestí sa dnes';

  @override
  String get assistantNoEstimate => 'Pridajte odhad, aby sa dali naplánovať';

  @override
  String get assistantNoNotes => 'Zatiaľ žiadne poznámky. Najprv nejakú napíšte.';

  @override
  String get assistantNoteEmpty => 'Táto poznámka je prázdna.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vytvorených $count úloh',
      few: 'Vytvorené $count úlohy',
      one: 'Vytvorená 1 úloha',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vytvorených $count kartičiek',
      few: 'Vytvorené $count kartičky',
      one: 'Vytvorená 1 kartička',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vytvoriť $count',
      one: 'Vytvoriť 1',
      zero: 'Nič nie je vybrané',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Rozpoznané: nezačiarknuté políčka „- [ ]“ a riadky začínajúce TODO: alebo To do:';

  @override
  String get assistantCardsHint =>
      'Rozpoznané: „pojem: definícia“, „pojem — definícia“ a dvojice riadkov Q:/A:';

  @override
  String get assistantProviderHint =>
      'Použite akúkoľvek službu kompatibilnú s OpenAI. Kľúč zostáva v zabezpečenom úložisku zariadenia a nikdy nie je súčasťou záloh.';

  @override
  String get assistantEndpointHelp => 'Napríklad https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Ak chcete zachovať uložený kľúč, nechajte prázdne';

  @override
  String get assistantApiKeyRequired => 'Zadajte kľúč API';

  @override
  String get assistantProviderSaved => 'Služba uložená';

  @override
  String get assistantProviderRemoved => 'Služba odstránená a kľúč vymazaný';

  @override
  String get assistantRemoveProviderConfirm =>
      'Odstrániť službu a vymazať uložený kľúč API z tohto zariadenia?';

  @override
  String get assistantAskEveryTime => 'Pýtať sa pred každou požiadavkou';

  @override
  String get assistantSummarizing => 'Zhŕňa sa…';

  @override
  String assistantSummaryNote(String host) {
    return 'Vytvorila služba $host. Skôr než sa na to spoľahnete, skontrolujte to.';
  }

  @override
  String get assistantCopy => 'Kopírovať';

  @override
  String get assistantCopied => 'Skopírované';

  @override
  String get assistantConfigure => 'Nastaviť službu';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Všetky udalosti v tejto sérii boli presunuté';

  @override
  String get calendarEventReminder => 'Pripomienka';

  @override
  String get calendarEventRepeat => 'Opakovanie';

  @override
  String get calendarEventColor => 'Farba';

  @override
  String get calendarDefaultColor => 'Použiť farbu typu';

  @override
  String get calendarEventLinkedTask => 'Prepojená úloha';

  @override
  String get calendarEventNoTask => 'Žiadna prepojená úloha';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count udalostí',
      few: '$count udalosti',
      one: '1 udalosť',
      zero: 'Žiadne udalosti',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count úloh s termínom',
      few: '$count úlohy s termínom',
      one: '1 úloha s termínom',
      zero: 'žiadne úlohy s termínom',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Pridajte udalosť alebo časový blok a naplánujte si tento deň.';

  @override
  String get calendarNow => 'Aktuálny čas';

  @override
  String get calendarRecurring => 'Opakuje sa';

  @override
  String get calendarEventNotFound => 'Táto udalosť už neexistuje';

  @override
  String get calendarEventLocalTime => 'Časy sa zobrazujú v časovom pásme zariadenia';

  @override
  String get calendarEventDeleted => 'Udalosť presunutá do koša';

  @override
  String get calendarConflictMarker => 'Prekrýva sa s inou udalosťou';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Zmeny sa prejavia pri všetkých udalostiach v tejto sérii';

  @override
  String get calendarDragHintSeries => 'Potiahnutím opakovanej udalosti presuniete celú sériu';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, termín úlohy';
  }

  @override
  String get startupErrorTitle => 'Vaše údaje sa nepodarilo otvoriť';

  @override
  String get startupErrorLocked =>
      'Šifrovací kľúč k údajom tohto zariadenia nie je dostupný. Nič nebolo odstránené. Často pomôže zariadenie reštartovať. Ak ste zariadenie nedávno obnovovali, obnovte údaje radšej zo šifrovanej zálohy.';

  @override
  String get startupErrorCipher =>
      'Toto zariadenie nepodporuje šifrované úložisko, ktoré aplikácia potrebuje. Nič nebolo uložené nešifrovane.';

  @override
  String get startupErrorRetry => 'Skúsiť znova';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartičiek čaká na opakovanie',
      few: '$count kartičky čakajú na opakovanie',
      one: '1 kartička čaká na opakovanie',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count na opakovanie';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count nových';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Naučené kartičky: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Zadajte 0 alebo viac';

  @override
  String get flashcardsSearchCards => 'Hľadať kartičky';

  @override
  String get flashcardsSearchEmpty => 'Hľadaniu nezodpovedajú žiadne kartičky';

  @override
  String get flashcardsCardAdded => 'Kartička pridaná';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Opakovať $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopírovať do schránky';

  @override
  String get flashcardsExportTitle => 'Exportovať balíček';

  @override
  String get flashcardsDeleteDeck => 'Odstrániť balíček';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, ďalšie opakovanie o $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Otázka: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Odpoveď: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Ukázať otázku';

  @override
  String get flashcardsImportField => 'Kartičky na import';

  @override
  String get flashcardsNothingToStudy => 'Nie je čo učiť sa';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartičiek pripravených na učenie',
      few: '$count kartičky pripravené na učenie',
      one: '1 kartička pripravená na učenie',
      zero: 'Žiadne kartičky nie sú pripravené',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Podľa hodnotenia';

  @override
  String get flashcardsDeckNotFound => 'Tento balíček už nie je k dispozícii.';

  @override
  String get focusSessionDeleted => 'Sedenie odstránené';

  @override
  String get focusDeleteConfirm =>
      'Odstrániť toto sedenie z histórie? Jeho čas sa už nebude započítavať do vašich cieľov.';

  @override
  String get focusUnlinkTask => 'Odstrániť prepojenú úlohu';

  @override
  String get focusNoteHint => 'Na čom ste pracovali?';

  @override
  String get focusModeLabel => 'Režim časovača';

  @override
  String focusUpNext(String phase) {
    return 'Ďalej: $phase';
  }

  @override
  String get focusStopwatchHint => 'Počíta nahor, kým nezastavíte.';

  @override
  String get focusOpenHint => 'Bez časového limitu. Skončite, keď budete hotoví.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Pripomienky sú v nastaveniach vypnuté. Na koniec sedenia vás nič neupozorní.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Všetky';

  @override
  String get goalsFilterPeriod => 'Filter obdobia';

  @override
  String get goalsFilterStatus => 'Filter stavu';

  @override
  String get goalsEmptyFiltered => 'Tomuto filtru nezodpovedajú žiadne ciele';

  @override
  String goalsDueOn(String date) {
    return 'Termín $date';
  }

  @override
  String get goalsDeadline => 'Termín (voliteľné)';

  @override
  String get goalsNoDeadline => 'Bez termínu';

  @override
  String get goalsSetDeadline => 'Nastaviť termín';

  @override
  String get goalsRemoveDeadline => 'Odstrániť termín';

  @override
  String get goalsDescription => 'Popis (voliteľné)';

  @override
  String get goalsTitleLabel => 'Názov';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Cieľ dosiahnutý';

  @override
  String get goalsLogged => 'Pokrok zapísaný';

  @override
  String get goalsEntryDeleted => 'Záznam odstránený';

  @override
  String get goalsDeleteEntry => 'Odstrániť záznam';

  @override
  String get goalsDeleted => 'Cieľ odstránený';

  @override
  String get goalsMarkActive => 'Označiť ako aktívny';

  @override
  String get goalsNotFound => 'Tento cieľ už nie je k dispozícii';

  @override
  String get goalsLinkTask => 'Pripojiť úlohu';

  @override
  String get goalsNoLinkedTasks => 'Zatiaľ žiadne prepojené úlohy';

  @override
  String get goalsUnlinkTask => 'Odpojiť úlohu';

  @override
  String get goalsTaskOpen => 'Zatiaľ nedokončené';

  @override
  String get goalsTaskLinked => 'Úloha pripojená';

  @override
  String get goalsTaskUnlinked => 'Úloha odpojená';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dokončených prepojených úloh',
      few: '$count dokončené prepojené úlohy',
      one: '1 dokončenú prepojenú úlohu',
    );
    return 'Zahŕňa $_temp0 v tomto období';
  }

  @override
  String get goalsHistoryAllTime =>
      'Záznamy z predchádzajúcich období tu zostávajú, ale počítajú sa len do svojho obdobia.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Dnes hotovo $done z $total';
  }

  @override
  String get habitsNothingToday => 'Na dnes nie sú naplánované žiadne návyky';

  @override
  String get habitsDecrease => 'Odobrať jedno odškrtnutie';

  @override
  String get habitsResetToday => 'Vynulovať dnešok';

  @override
  String get habitsCheckInHint => 'Podržaním upravíte';

  @override
  String get habitsName => 'Názov';

  @override
  String get habitsColor => 'Farba';

  @override
  String get habitsValidationDays => 'Vyberte aspoň jeden deň';

  @override
  String habitsReminderAt(String time) {
    return 'Každý deň o $time';
  }

  @override
  String get habitsSetReminder => 'Nastaviť čas pripomienky';

  @override
  String get habitsRemoveReminder => 'Odstrániť pripomienku';

  @override
  String get habitsReminderNote =>
      'Pripomienky sa zobrazia v naplánované dni, ak sú povolené upozornenia.';

  @override
  String get habitsArchived => 'Návyk archivovaný';

  @override
  String get habitsNotFound => 'Tento návyk už nie je k dispozícii';

  @override
  String get habitsLast30 => 'Posledných 30 dní';

  @override
  String get habitsConsistencyNone => 'Zatiaľ málo údajov';

  @override
  String get habitsCalendar => 'História odškrtnutí';

  @override
  String get habitsCalendarHint => 'Ťuknutím na deň ho opravíte.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count z $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Odškrtnutia za posledných 90 dní. Pravidelnosť $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Odškrtnutia za posledných 90 dní. Zatiaľ málo údajov.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dní',
      few: '$count dni',
      one: '1 deň',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Pozastavené dni sériu neovplyvnia.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Archivovať návyk';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× denne',
      few: '$count× denne',
      one: 'Raz denne',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Ostatné poznámky';

  @override
  String get notesAllNotebooks => 'Všetky zápisníky';

  @override
  String get notesNotebookName => 'Názov zápisníka';

  @override
  String get notesNotebookColor => 'Farba';

  @override
  String get notesDeleteNotebook => 'Odstrániť zápisník';

  @override
  String get notesDeleteNotebookMessage =>
      'Zápisník sa odstráni. Jeho poznámky zostanú a nájdete ich vo Všetkých zápisníkoch.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Pripnite dôležité poznámky, aby zostali hore.';

  @override
  String get notesEmptyFavorites => 'Poznámky označené ako obľúbené sa zobrazia tu.';

  @override
  String get notesEmptyArchived => 'Archivované poznámky sa zobrazia tu.';

  @override
  String get notesEmptyFiltered => 'Týmto filtrom nezodpovedajú žiadne poznámky.';

  @override
  String get notesArchivedSnack => 'Poznámka archivovaná';

  @override
  String get notesUnarchivedSnack => 'Poznámka vrátená medzi vaše poznámky';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Hotovo $done z $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formátovanie';

  @override
  String get notesWrite => 'Písať';

  @override
  String get notesPreviewEmpty => 'Zatiaľ nie je čo zobraziť.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Sem zatiaľ neodkazujú žiadne iné poznámky. Odkážte na túto poznámku pomocou [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Dajte poznámke názov, aby na ňu mohli odkazovať iné poznámky.';

  @override
  String get notesLinkedTasksEmpty => 'K tejto poznámke nie sú pripojené žiadne úlohy.';

  @override
  String notesLinkMissing(String title) {
    return 'Poznámka s názvom „$title“ zatiaľ neexistuje.';
  }

  @override
  String get notesNotFound => 'Táto poznámka už neexistuje.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Položka zoznamu: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Otvoriť poznámku $title';
  }

  @override
  String get notesTaskDone => 'Dokončené';

  @override
  String get notifTimerDoneBody => 'Nastavený čas uplynul.';

  @override
  String get onboardingPrivatePointDevice => 'Uložené len v tomto zariadení, šifrovane';

  @override
  String get onboardingPrivatePointAccount => 'Bez účtu';

  @override
  String get onboardingPrivatePointTracking => 'Bez analytiky, bez sledovania';

  @override
  String get onboardingLanguageBody => 'Môžete to kedykoľvek zmeniť v Nastaveniach.';

  @override
  String get onboardingNext => 'Ďalej';

  @override
  String get projectsActive => 'Aktívne';

  @override
  String get projectNameHint => 'napr. Uvedenie produktu';

  @override
  String get projectGoalHint => 'Ako vyzerá hotovo?';

  @override
  String get projectNoDeadline => 'Bez termínu';

  @override
  String get projectTasksOpen => 'Otvorené úlohy';

  @override
  String get projectTasksCompleted => 'Dokončené úlohy';

  @override
  String get projectAddTask => 'Pridať úlohu do projektu';

  @override
  String get projectAddNote => 'Nová poznámka k projektu';

  @override
  String get projectLinkedNotes => 'Poznámky';

  @override
  String get projectNoTasks => 'V tomto projekte zatiaľ nie sú žiadne úlohy';

  @override
  String get projectArchivedBadge => 'Archivované';

  @override
  String get projectDeleted => 'Projekt presunutý do koša';

  @override
  String get projectDeleteMessage => 'Úlohy zostanú vo vašom zozname bez projektu.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, dokončené na $percent percent';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count výsledkov',
      few: '$count výsledky',
      one: '1 výsledok',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtrovať podľa typu';

  @override
  String searchRecentTap(String query) {
    return 'Znova hľadať $query';
  }

  @override
  String get settingsLanguageHint =>
      'Vyberte jazyk celej aplikácie. Názvy sú uvedené vo vlastnom jazyku.';

  @override
  String get settingsThemeHint => 'Svetlý, tmavý alebo podľa systému';

  @override
  String settingsDecrease(String setting) {
    return 'Znížiť $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Zvýšiť $setting';
  }

  @override
  String get settingsQuietStart => 'Začiatok';

  @override
  String get settingsQuietEnd => 'Koniec';

  @override
  String get settingsNotificationsHint =>
      'Týmto sa uloží vaša voľba v aplikácii. Systém môže tiež požiadať o povolenie.';

  @override
  String get settingsDashboardHint =>
      'Potiahnutím zmeníte poradie. Vypnite časti, ktoré nepotrebujete.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Presunúť $section';
  }

  @override
  String get settingsDashboardReset => 'Obnoviť predvolené poradie';

  @override
  String get settingsAssistantDesc =>
      'Voliteľná pomoc s plánovaním. Nič neopustí toto zariadenie, pokiaľ nepripojíte službu.';

  @override
  String get settingsAssistantSetup => 'Asistent a nastavenie služby';

  @override
  String get settingsTrashDesc => 'Obnoviť alebo natrvalo vymazať odstránené položky';

  @override
  String get settingsEraseFirstBody =>
      'Túto akciu nie je možné vrátiť. Zvážte najprv vytvorenie šifrovanej zálohy.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Napíšte $word';
  }

  @override
  String get settingsEraseFailed => 'Údaje sa nepodarilo vymazať. Nič sa nezmenilo.';

  @override
  String get settingsAboutTagline =>
      'Súkromný pracovný priestor pre produktivitu, ktorý funguje lokálne.';

  @override
  String get backupShowPassword => 'Zobraziť heslo';

  @override
  String get backupHidePassword => 'Skryť heslo';

  @override
  String get backupSaved => 'Záloha uložená';

  @override
  String get backupFailed => 'Zálohu sa nepodarilo vytvoriť. Vaše údaje sa nezmenili.';

  @override
  String get backupReadFailed => 'Vybraný súbor sa nepodarilo prečítať.';

  @override
  String get backupRestoreFailed => 'Obnovenie zlyhalo. Nič sa nezmenilo.';

  @override
  String get backupShareSubject => 'Šifrovaná záloha Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Každých $count dní',
      few: 'Každé $count dni',
      one: 'Každý deň',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Každých $count týždňov',
      few: 'Každé $count týždne',
      one: 'Každý týždeň',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Každých $count mesiacov',
      few: 'Každé $count mesiace',
      one: 'Každý mesiac',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Každých $count rokov',
      few: 'Každé $count roky',
      one: 'Každý rok',
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
    return 'v $days';
  }

  @override
  String get repeatEndsLabel => 'Koniec';

  @override
  String get repeatEndsAfter => 'Po určitom počte opakovaní';

  @override
  String get repeatCountLabel => 'Počet opakovaní';

  @override
  String get reminderNone => 'Bez pripomienky';

  @override
  String get reminderCustomTime => 'V určitý čas';

  @override
  String get a11yDecrease => 'Znížiť';

  @override
  String get a11yIncrease => 'Zvýšiť';

  @override
  String get pickTaskTitle => 'Vyberte úlohu';

  @override
  String get pickTaskEmpty => 'Žiadne otvorené úlohy';

  @override
  String get tasksSearchTooltip => 'Hľadať úlohy';

  @override
  String get tasksSectionOverdue => 'Po termíne';

  @override
  String get tasksSectionToday => 'Dnes';

  @override
  String get tasksRecurringSemantics => 'Opakuje sa';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimálna priorita';

  @override
  String get tasksFilterCategory => 'Kategória';

  @override
  String get tasksFilterAnyCategory => 'Akákoľvek kategória';

  @override
  String get tasksFilterLabel => 'Štítok';

  @override
  String get tasksFilterAnyLabel => 'Akýkoľvek štítok';

  @override
  String get tasksFilterReset => 'Zrušiť filtre';

  @override
  String get tasksViewByProject => 'Podľa projektu';

  @override
  String get tasksViewByPriority => 'Podľa priority';

  @override
  String get tasksViewByCategory => 'Podľa kategórie';

  @override
  String get tasksGroupNoCategory => 'Bez kategórie';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count úlohami',
      few: '$count úlohami',
      one: '1 úlohou',
    );
    return 'Blokované $_temp0';
  }

  @override
  String get taskBlockedWarning => 'Túto úlohu blokujú nedokončené úlohy. Napriek tomu dokončiť?';

  @override
  String get taskStartFocus => 'Sústrediť sa na túto úlohu';

  @override
  String get taskRemoveDate => 'Odstrániť dátum';

  @override
  String get taskAllDay => 'Bez konkrétneho času';

  @override
  String get taskSaved => 'Úloha uložená';

  @override
  String get taskCreated => 'Úloha vytvorená';

  @override
  String get taskReminderNeedsDue => 'Na relatívne pripomienky nastavte termín';

  @override
  String get taskLabelName => 'Názov štítka';

  @override
  String get taskPlanning => 'Plánovanie';

  @override
  String get taskOrganize => 'Usporiadanie';

  @override
  String get taskBreakdown => 'Rozdelenie';

  @override
  String get trashDeleteTaskTitle => 'Natrvalo odstrániť túto úlohu?';

  @override
  String get trashDeleteNoteTitle => 'Natrvalo odstrániť túto poznámku?';

  @override
  String get trashDeleteBody => 'Túto akciu nie je možné vrátiť.';

  @override
  String get trashEmptyTitle => 'Vysypať kôš?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count položiek bude natrvalo odstránených.',
      few: '$count položky budú natrvalo odstránené.',
      one: '1 položka bude natrvalo odstránená.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Obnovené';

  @override
  String get trashPurged => 'Natrvalo odstránené';

  @override
  String trashDeletedOn(String date) {
    return 'Odstránené $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count položiek',
      few: '$count položky',
      one: '1 položka',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Prečítať nahlas';

  @override
  String get flashcardsTtsUnavailable =>
      'Prevod textu na reč nie je v tomto zariadení k dispozícii.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Pre tento jazyk nie je nainštalovaný žiadny hlas. Pridajte ho v nastaveniach prevodu textu na reč v Androide.';

  @override
  String get calendarAgenda => 'Program';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Iskra',
      'rocket': 'Raketa',
      'book': 'Kniha',
      'work': 'Práca',
      'home': 'Domov',
      'heart': 'Srdce',
      'code': 'Kód',
      'palette': 'Paleta',
      'fitness': 'Fitnes',
      'school': 'Škola',
      'travel': 'Cestovanie',
      'money': 'Úspory',
      'other': 'Ikona',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Ďalšie polia';

  @override
  String get cardFieldExample => 'Príklad';

  @override
  String get cardFieldExplanation => 'Vysvetlenie';

  @override
  String get cardFieldPronunciation => 'Výslovnosť';

  @override
  String get cardFieldNotes => 'Doplňujúce poznámky';

  @override
  String get projectMilestones => 'Míľniky';

  @override
  String get milestoneAdd => 'Pridať míľnik';

  @override
  String get milestoneEdit => 'Upraviť míľnik';

  @override
  String get milestoneTitleLabel => 'Míľnik';

  @override
  String get milestoneNoDate => 'Bez dátumu';

  @override
  String get milestonesEmpty =>
      'Zatiaľ žiadne míľniky. Pridajte kontrolné body s dátumami a sledujte projekt v kalendári.';

  @override
  String get milestoneDeleted => 'Míľnik odstránený';

  @override
  String milestoneDoneA11y(String title) {
    return 'Označiť míľnik „$title“ ako hotový';
  }

  @override
  String calendarMilestone(String project) {
    return 'Míľnik · $project';
  }

  @override
  String get tasksViewInbox => 'Doručené';

  @override
  String get tasksViewArchived => 'Archivované';

  @override
  String get tasksEmptyInbox =>
      'Sem pristanú úlohy bez projektu alebo dátumu. Roztrieďte ich, keď budete mať chvíľku.';

  @override
  String get tasksEmptyArchived =>
      'Archivované úlohy sa uchovávajú tu, mimo vašich zoznamov a pripomienok.';

  @override
  String get taskArchivedBadge => 'Archivované';

  @override
  String get taskStatusInProgress => 'Rozpracované';

  @override
  String get taskArchived => 'Úloha archivovaná';

  @override
  String get taskUnarchived => 'Úloha vrátená z archívu';

  @override
  String get focusPlanTitle => 'Plán sedení';

  @override
  String focusPlanTotal(String duration) {
    return 'Spolu $duration';
  }

  @override
  String get focusPlanRounds => 'Sedenia sústredenia';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Dlhá prestávka po';

  @override
  String get focusPlanSkipLastBreak => 'Preskočiť poslednú prestávku';

  @override
  String get focusPlanAutoBreaks => 'Spúšťať prestávky automaticky';

  @override
  String get focusPlanAutoFocus => 'Po prestávke automaticky spustiť sústredenie';

  @override
  String get focusPlanSave => 'Uložiť plán';

  @override
  String get focusPlanNameHint => 'napr. Príprava na skúšku';

  @override
  String get focusPlanSaved => 'Plán uložený';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min sústredenia, $rest min prestávka';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Znížiť $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Zvýšiť $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sedenie $current z $total';
  }

  @override
  String get focusSeriesComplete => 'Séria dokončená. Výborne!';

  @override
  String get filterAll => 'Všetky';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importovaných · $duplicates duplikátov preskočených · $invalid neúplných riadkov';
  }

  @override
  String get flashcardsSuspend => 'Pozastaviť kartičku';

  @override
  String get flashcardsResume => 'Obnoviť kartičku';

  @override
  String get flashcardsSuspended => 'Kartička pozastavená: nebude sa plánovať';

  @override
  String get flashcardsResumed => 'Kartička obnovená';

  @override
  String get flashcardsSuspendedFilter => 'Pozastavené';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown z $total kartičiek';
  }

  @override
  String get flashcardsImportFile => 'Zo súboru';

  @override
  String get speechTitle => 'Reč';

  @override
  String get speechAppLanguage => 'Jazyk aplikácie';

  @override
  String get speechFrontLanguage => 'Jazyk prednej strany';

  @override
  String get speechBackLanguage => 'Jazyk zadnej strany';

  @override
  String get speechRepeat => 'Opakovať každé čítanie';

  @override
  String get speechRate => 'Rýchlosť';

  @override
  String get speechAutoRead => 'Čítať otázku automaticky';

  @override
  String get speechHint =>
      'Používa hlasy nainštalované v tomto zariadení, offline. Ak jazyk nemá hlas, dozviete sa to a nič iné sa namiesto neho nepoužije.';

  @override
  String get studyHowTitle => 'Ako sa chcete učiť?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zopakovať $count kartičiek',
      few: 'Zopakovať $count kartičky',
      one: 'Zopakovať 1 kartičku',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Precvičiť všetky kartičky (plán sa nemení)';

  @override
  String get studyPracticeMistakes => 'Precvičiť nedávne chyby';

  @override
  String get studyPracticeHint =>
      'Precvičovacie kolá nikdy nemenia, kedy sú kartičky na rade. Opakovanie plán aktualizuje.';

  @override
  String get studyModeClassic => 'Klasicky';

  @override
  String get studyModeReverse => 'Obrátene';

  @override
  String get studyModeMixed => 'Oboma smermi';

  @override
  String get studyModeTyped => 'Napísať odpoveď';

  @override
  String get studyModeChoice => 'Výber z možností';

  @override
  String get studyModeListening => 'Počúvanie';

  @override
  String get studyPractice => 'precvičovanie';

  @override
  String get studyNoMistakes => 'V tomto balíčku žiadne nedávne chyby. Skvelé!';

  @override
  String get studyTypeAnswer => 'Napíšte odpoveď';

  @override
  String get studyCheck => 'Skontrolovať';

  @override
  String get studyKnewIt => 'Vedel som';

  @override
  String get studyDidntKnow => 'Nevedel som';

  @override
  String studyMistakes(int count) {
    return 'Nesprávne ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Zopakovať nesprávne kartičky';

  @override
  String get studyCorrect => 'Správne';

  @override
  String get studyAlmost => 'Takmer — skontrolujte pravopis';

  @override
  String get studyWrong => 'Nie celkom';

  @override
  String get studyShowText => 'Zobraziť text';

  @override
  String get flashcardsImportFileFailed =>
      'Súbor sa nepodarilo otvoriť. Môžete namiesto toho vložiť jeho obsah.';

  @override
  String get studyNoMatchingCards => 'Tejto voľbe zatiaľ nezodpovedajú žiadne kartičky.';

  @override
  String get studyPracticeNew => 'Len nové';

  @override
  String get studyPracticeHard => 'Ťažké kartičky';

  @override
  String get studyPracticeFavorites => 'Obľúbené';

  @override
  String get studySessionSize => 'Kartičiek na sedenie';

  @override
  String get studySessionAll => 'Všetky';

  @override
  String get studyOrder => 'Poradie';

  @override
  String get studyOrderDue => 'Najdlhšie po termíne najprv';

  @override
  String get studyOrderRandom => 'Náhodne';

  @override
  String get studyOrderHardest => 'Najťažšie najprv';

  @override
  String get flashcardsHard => 'Ťažké';

  @override
  String get flashcardsFavorites => 'Obľúbené';

  @override
  String get flashcardsFavorite => 'Pridať do obľúbených';

  @override
  String get flashcardsUnfavorite => 'Odobrať z obľúbených';

  @override
  String get flashcardsDuplicate => 'Duplikovať';

  @override
  String get flashcardsMoveTo => 'Presunúť do balíčka';

  @override
  String get flashcardsNoOtherDeck => 'Najprv vytvorte iný balíček.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartičiek presunutých',
      few: '$count kartičky presunuté',
      one: 'Kartička presunutá',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Pridať štítok';

  @override
  String get flashcardsTagHint => 'napr. slovesá';

  @override
  String flashcardsSelected(int count) {
    return 'Vybrané: $count';
  }

  @override
  String get flashcardsSelectAll => 'Vybrať všetko zobrazené';

  @override
  String flashcardsSelectCard(String front) {
    return 'Vybrať $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Vybavenie $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Možný duplikát';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Tento balíček už obsahuje „$front“ → „$back“. Napriek tomu uložiť?';
  }

  @override
  String get flashcardsSaveAnyway => 'Napriek tomu uložiť';

  @override
  String get flashcardsStats => 'Štatistiky';

  @override
  String get flashcardsStatTotal => 'Kartičky';

  @override
  String get flashcardsStatLearning => 'Učím sa';

  @override
  String get flashcardsStatMatureCaption => 'Zapamätané 21+ dní';

  @override
  String get flashcardsStatReviewsToday => 'Opakovania dnes';

  @override
  String get flashcardsStatCorrect => 'Správne odpovede';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Posledných $days dní';
  }

  @override
  String get flashcardsStatForget => 'Miera zabúdania';

  @override
  String get flashcardsStatForgetCaption => '„Znova“ pri naučených kartičkách';

  @override
  String get flashcardsStatRecall => 'Vybavenie teraz';

  @override
  String get flashcardsStatRecallCaption => 'Odhad FSRS, opakované kartičky';

  @override
  String flashcardsStatActivity(int count) {
    return 'Opakovania za deň · spolu $count';
  }

  @override
  String get flashcardsStatHistory => 'Posledné odpovede';

  @override
  String get flashcardsStatNoHistory =>
      'Zatiaľ žiadne opakovania. Učte sa z balíčka a uvidíte tu svoj pokrok.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Prečítať $field nahlas';
  }

  @override
  String get speechVoice => 'Hlas';

  @override
  String get speechVoiceDefault => 'Automaticky';

  @override
  String get speechVoiceOnline => 'vyžaduje internet';

  @override
  String get speechTest => 'Vyskúšať hlas';

  @override
  String get importNext => 'Ukážka';

  @override
  String get importPreviewTitle => 'Priradiť stĺpce k poliam';

  @override
  String get importIgnoreColumn => 'Ignorovať';

  @override
  String importColumn(int n) {
    return 'Stĺpec $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kartičiek pripravených · $invalid neúplných riadkov sa preskočí';
  }

  @override
  String get importNeedFrontBack => 'Vyberte, ktoré stĺpce sú predná a zadná strana.';

  @override
  String get actionMoveUp => 'Posunúť nahor';

  @override
  String get actionMoveDown => 'Posunúť nadol';

  @override
  String get flashcardsLayoutTitle => 'Rozloženie kartičky';

  @override
  String get flashcardsLayoutHint =>
      'Premenujte, skryte alebo preusporiadajte doplnkové polia tohto balíčka. Obsah kartičiek sa nikdy nemení.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Zobrazovať $field pri učení';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Odhaľovať odpoveď postupne';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Najprv sa zobrazí zadná strana; každé ďalšie pole sa otvorí ťuknutím.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Zobraziť $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Tento súbor je väčší ako $mb MB.';
  }

  @override
  String get flashcardsImage => 'Obrázok';

  @override
  String get flashcardsAudio => 'Zvuk';

  @override
  String get flashcardsAddImage => 'Pridať obrázok';

  @override
  String get flashcardsAddAudio => 'Pridať zvuk';

  @override
  String get flashcardsPlayAudio => 'Prehrať nahrávku';

  @override
  String get flashcardsAudioUnavailable => 'Túto nahrávku nie je možné v tomto zariadení prehrať.';

  @override
  String get flashcardsCustomFields => 'Vaše polia';

  @override
  String get flashcardsTemplates => 'Šablóny';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Pole $n';
  }

  @override
  String get flashcardsAddField => 'Pridať pole';

  @override
  String get flashcardsFieldName => 'Názov poľa';

  @override
  String get flashcardsFieldLangDefault => 'Jazyk strany';

  @override
  String get flashcardsTemplateConfirm =>
      'Šablóna určuje, ako sa polia zobrazujú, a pridá svoje polia. Vaše kartičky a existujúce polia zostanú bez zmeny.';

  @override
  String get flashcardsApplyTemplate => 'Použiť';

  @override
  String get templateVocabulary => 'Slovná zásoba';

  @override
  String get templateTwoTranslations => 'Slovo s dvoma prekladmi';

  @override
  String get templateQuestionAnswer => 'Otázka a odpoveď';

  @override
  String get templateDefinition => 'Pojem a definícia';

  @override
  String get templateGrammar => 'Gramatické pravidlo';

  @override
  String get templateFieldPlural => 'Množné číslo';

  @override
  String get templateFieldTranslation2 => 'Druhý preklad';

  @override
  String get templateFieldSynonyms => 'Synonymá';

  @override
  String get templateFieldRule => 'Pravidlo';

  @override
  String get deckCategory => 'Úroveň alebo téma';

  @override
  String get deckCategoryHint => 'napr. A1, Medicína';

  @override
  String get flashcardsSearchAll => 'Hľadať vo všetkých kartičkách';

  @override
  String get flashcardsSearchAllHint => 'Slovo, preklad, príklad, poznámka, štítok…';

  @override
  String get flashcardsAllDecks => 'Všetky balíčky';

  @override
  String get flashcardsAllLanguages => 'Všetky jazyky';

  @override
  String get flashcardsLangUnset => 'Jazyk nie je nastavený';

  @override
  String get flashcardsLevelUnset => 'Bez úrovne alebo témy';

  @override
  String get flashcardsByLanguage => 'Pokrok podľa jazyka';

  @override
  String get flashcardsByLevel => 'Pokrok podľa úrovne alebo témy';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks balíčkov · $cards kartičiek · $mature naučených · $due na opakovanie · $correct správne (30 dní)';
  }

  @override
  String get flashcardsRecord => 'Nahrať';

  @override
  String get flashcardsRecording => 'Nahráva sa…';

  @override
  String get flashcardsRecordStop => 'Zastaviť a ponechať';

  @override
  String get flashcardsMicDenied =>
      'Prístup k mikrofónu je vypnutý. Na nahrávanie ho povoľte v nastaveniach systému.';

  @override
  String get flashcardsRecordFailed => 'Nahrávanie nie je v tomto zariadení k dispozícii.';

  @override
  String get soundsTitle => 'Zvuky';

  @override
  String get soundsNature => 'Príroda';

  @override
  String get soundsNoise => 'Šum na sústredenie';

  @override
  String get soundRain => 'Dážď';

  @override
  String get soundStorm => 'Búrka';

  @override
  String get soundRiver => 'Rieka';

  @override
  String get soundOcean => 'Morské vlny';

  @override
  String get soundFire => 'Táborák';

  @override
  String get soundForest => 'Vtáky v lese';

  @override
  String get soundNight => 'Letná noc';

  @override
  String get soundWhite => 'Biely šum';

  @override
  String get soundPink => 'Ružový šum';

  @override
  String get soundBrown => 'Hnedý šum';

  @override
  String get soundsPlay => 'Prehrať';

  @override
  String get soundsSleep => 'Časovač spánku';

  @override
  String get soundsSleepOff => 'Vypnuté';

  @override
  String soundsSleepAt(String time) {
    return 'Zastaví sa o $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Naraz môže hrať najviac $count zvukov.';
  }

  @override
  String get soundsHint =>
      'Ťuknutím na zvuk začnite. Zmiešajte viacero a každému nastavte hlasitosť.';

  @override
  String get soundsMixer => 'Mix';

  @override
  String soundsVolumeOf(String name) {
    return 'Hlasitosť: $name';
  }

  @override
  String get soundsChannel => 'Zvuky prírody';

  @override
  String get settingsEndTone => 'Zvuk na konci časovača';

  @override
  String get toneGentle => 'Jemné pípnutie';

  @override
  String get toneBeeps => 'Pípnutie';

  @override
  String get toneWood => 'Klopanie na drevo';

  @override
  String get toneBird => 'Volanie vtáka';

  @override
  String get toneStream => 'Potôčik';

  @override
  String get toneSystem => 'Zvuk telefónu';

  @override
  String get speechOnPhone => 'V tomto telefóne';

  @override
  String get speechAllLanguages => 'Všetky jazyky';

  @override
  String get speechSearchLanguage => 'Hľadať jazyky';

  @override
  String get speechGetVoices => 'Stiahnuť ďalšie hlasy';

  @override
  String get speechGetVoicesHint =>
      'Jazyky bez hlasu si môžete stiahnuť v nastaveniach reči v telefóne.';

  @override
  String get speechSettingsFailed => 'Nastavenia reči v tomto telefóne sa nepodarilo otvoriť.';

  @override
  String get speechVoiceMissing => 'Nie je nainštalovaný hlas';

  @override
  String get speechPause => 'Pauza medzi opakovaniami';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'S odpoveďou prečítať aj príklad';

  @override
  String get flashListen => 'Počúvať';

  @override
  String get flashListenNext => 'Ďalšia kartička';

  @override
  String get flashListenEmpty => 'Nie sú kartičky na počúvanie.';

  @override
  String get flashViewTable => 'Tabuľka';

  @override
  String get flashViewCards => 'Kartičky';

  @override
  String get flashSwapSides => 'Vymeniť stĺpce';

  @override
  String get flashSort => 'Zoradiť';

  @override
  String get flashSortNewest => 'Najnovšie najprv';

  @override
  String get flashSortAlpha => 'A až Z';

  @override
  String get flashSortDue => 'Na opakovanie najprv';

  @override
  String get flashSortHard => 'Najťažšie najprv';

  @override
  String get flashPasteCards => 'Vložiť kartičky';

  @override
  String get flashClipboardEmpty => 'Schránka neobsahuje text.';

  @override
  String get flashMenuAdd => 'Pridať kartičky';

  @override
  String get flashMenuDeck => 'Balíček';

  @override
  String get flashToday => 'Dnes';

  @override
  String get flashStudyNow => 'Učiť sa';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zodpovedaných kartičiek',
      few: '$count zodpovedané kartičky',
      one: '1 zodpovedaná kartička',
      zero: 'Žiadne zodpovedané kartičky',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Dážď v lese';

  @override
  String get autoBackupTitle => 'Automatické zálohy';

  @override
  String get autoBackupDesc => 'Každý deň v tomto telefóne; uchováva sa posledných 7';

  @override
  String get autoBackupHint =>
      'Tieto kópie zostávajú v tomto telefóne a pri odinštalovaní aplikácie sa vymažú. Pri prechode na nový telefón uložte súbor pomocou „Zálohovať“.';

  @override
  String get autoBackupNone => 'Zatiaľ žiadna automatická záloha. Prvá sa vytvorí dnes.';

  @override
  String get autoBackupRestore => 'Obnoviť';

  @override
  String autoBackupConfirm(String date) {
    return 'Nahradiť všetky súčasné údaje zálohou z $date?';
  }

  @override
  String get autoBackupRestored => 'Obnovené.';

  @override
  String get errorLogTitle => 'Denník chýb';

  @override
  String get errorLogHint =>
      'Keď sa niečo pokazí, zapíše sa to sem: len druh chyby a miesto v kóde, nikdy váš obsah. Zdieľajte ho a pomôžte problém opraviť.';

  @override
  String get errorLogEmpty => 'Nezaznamenané žiadne chyby.';

  @override
  String get errorLogClear => 'Vymazať';

  @override
  String get soundsWithFocus => 'Prehrávať pri sedeniach sústredenia';

  @override
  String get soundsWithFocusHint =>
      'Váš mix sa spustí so sedením sústredenia a cez prestávky sa pozastaví.';

  @override
  String get soundsSavedMixes => 'Uložené mixy';

  @override
  String get soundsSaveMix => 'Uložiť tento mix';

  @override
  String get soundsMixNameHint => 'Názov, napr. Daždivá knižnica';

  @override
  String soundsDeleteMix(String name) {
    return 'Odstrániť mix „$name“?';
  }

  @override
  String get settingsReviewReminderHint => 'Raz denne, len keď sú kartičky na opakovanie';

  @override
  String get settingsReviewTime => 'Čas pripomienky';

  @override
  String get shortcutFocus => 'Sústredenie';

  @override
  String get shortcutNewTask => 'Nová úloha';

  @override
  String get shortcutReview => 'Opakovať kartičky';

  @override
  String get shortcutSounds => 'Zvuky prírody';

  @override
  String get myDayTitle => 'Začať môj deň';

  @override
  String get myDayHint => 'Váš deň na jeden pohľad a potom sústredenie jedným ťuknutím';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count úloh na dnes',
      few: '$count úlohy na dnes',
      one: '1 úloha na dnes',
      zero: 'Na dnes žiadne úlohy',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Dnes už žiadne udalosti';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Ďalej: $title o $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zostáva $count návykov',
      few: 'Zostávajú $count návyky',
      one: 'Zostáva 1 návyk',
      zero: 'Všetky návyky splnené',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Začať sedením sústredenia';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabí al-avval';

  @override
  String get hijriMonth4 => 'Rabí as-sání';

  @override
  String get hijriMonth5 => 'Džumádá al-úlá';

  @override
  String get hijriMonth6 => 'Džumádá al-áchira';

  @override
  String get hijriMonth7 => 'Radžab';

  @override
  String get hijriMonth8 => 'Ša’bán';

  @override
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Šauvál';

  @override
  String get hijriMonth11 => 'Zú l-ka’da';

  @override
  String get hijriMonth12 => 'Zú l-hidždža';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day. $month $year h.';
  }

  @override
  String get settingsHijri => 'Dátum podľa hidžry';

  @override
  String get settingsHijriHint => 'Zobrazuje sa v kalendári a na domovskej obrazovke (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dní',
      few: '$count dni',
      one: '1 deň',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Dnes $done z $goal kartičiek';
  }

  @override
  String get studyGoalReached => 'Denný cieľ splnený. Výborne!';

  @override
  String get studyWeekTitle => 'Váš týždeň';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Za 7 dní $count zodpovedaných kartičiek',
      few: 'Za 7 dní $count zodpovedané kartičky',
      one: 'Za 7 dní 1 zodpovedaná kartička',
      zero: 'Za 7 dní žiadne zodpovedané kartičky',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration sústredenia za 7 dní';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Séria: $current · Najlepšia: $best';
  }

  @override
  String get studyGoalTitle => 'Denný cieľ (kartičky)';

  @override
  String get studyGoalOff => 'Vypnuté';

  @override
  String get focusDndTitle => 'Nerušiť počas sústredenia';

  @override
  String get focusDndHint => 'Zapne sa pri každom sedení sústredenia a cez prestávku sa vypne';

  @override
  String get focusDndNeedsAccess => 'Na použitie povoľte prístup v nastaveniach telefónu';

  @override
  String get voiceInput => 'Diktovať';

  @override
  String get voiceInputPrompt => 'Hovorte';

  @override
  String get voiceInputUnavailable =>
      'Hlasové zadávanie nie je v tomto telefóne k dispozícii. Nainštalujte alebo zapnite službu rozpoznávania reči (napríklad Rozpoznávanie a syntéza reči od Googlu).';

  @override
  String get prayerFajr => 'Fadžr';

  @override
  String get prayerSunrise => 'Východ slnka';

  @override
  String get prayerDhuhr => 'Zuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Íša';

  @override
  String get prayerMethodMwl => 'Moslimská svetová liga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egyptský všeobecný úrad';

  @override
  String get prayerMethodJordan => 'Jordánsko, ministerstvo awqáfu';

  @override
  String get prayerMethodKarachi => 'Univerzita islamských vied, Karáči';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Oblasť Perzského zálivu';

  @override
  String get prayerMethodKuwait => 'Kuvajt';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Turecko, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malajzia, Indonézia';

  @override
  String get prayerMethodFrance => 'Francúzsko (12°)';

  @override
  String get prayerMethodRussia => 'Rusko, Duchovná správa';

  @override
  String prayerNotifTitle(String name) {
    return 'Čas na $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Čas modlitby · $time';
  }

  @override
  String get prayerTitle => 'Časy modlitieb';

  @override
  String get prayerOffHint =>
      'Vyberte svoje mesto a uvidíte časy modlitieb. Počítajú sa v telefóne; prístup k polohe nie je potrebný.';

  @override
  String get prayerChooseCity => 'Vybrať mesto';

  @override
  String get prayerCity => 'Mesto';

  @override
  String get prayerCitySearch => 'Hľadať mesto';

  @override
  String get prayerMethod => 'Metóda výpočtu';

  @override
  String get prayerHanafiAsr => 'Hanafijský asr (neskorší čas)';

  @override
  String get prayerReminders => 'Upozorniť pri každom čase modlitby';

  @override
  String get prayerPauseFocus => 'Pozastaviť sústredenie v čase modlitby';

  @override
  String get prayerPauseFocusHint => 'Prebiehajúce sedenie sa pozastaví; po modlitbe pokračujte';

  @override
  String get prayerTurnOff => 'Vypnúť časy modlitieb';

  @override
  String get prayerAccuracyNote =>
      'Vypočítané časy sa môžu o pár minút líšiť od vašej miestnej mešity.';

  @override
  String prayerNext(String name, String time) {
    return '$name o $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Tento súbor Anki používa najnovší formát. V Anki ho exportujte znova so zapnutou voľbou „Podporovať staršie verzie Anki“ a importujte ten súbor.';

  @override
  String get importTemplate => 'Šablóna tabuľky';

  @override
  String get importTemplateFront => 'jablko';

  @override
  String get importTemplateBack => 'okrúhle ovocie';

  @override
  String get importTemplateExample => 'Každý deň jem jablko.';

  @override
  String get importTemplateTag => 'jedlo';

  @override
  String get starterTitle => 'Úvodné balíčky';

  @override
  String get starterHint =>
      'Pridajte si jeden a hneď sa začnite učiť. Neskôr ho môžete upraviť alebo odstrániť.';

  @override
  String get starterAdd => 'Pridať';

  @override
  String get starterWords => 'Bežné anglické slová (po arabsky)';

  @override
  String get starterCapitals => 'Hlavné mestá sveta';

  @override
  String get starterElements => 'Chemické prvky';

  @override
  String get settingsAccent => 'Farba zvýraznenia';

  @override
  String get accentViolet => 'Fialová';

  @override
  String get accentBlue => 'Modrá';

  @override
  String get accentTeal => 'Modrozelená';

  @override
  String get accentGreen => 'Zelená';

  @override
  String get accentRose => 'Ružová';

  @override
  String get accentAmber => 'Jantárová';

  @override
  String get settingsFlashTextSize => 'Veľkosť textu kartičiek';

  @override
  String get settingsFlashTextSample => 'Príklad';

  @override
  String get widgetStartFocus => 'Ťuknite a sústreďte sa';

  @override
  String widgetFocusUntil(String time) {
    return 'Sústredenie do $time';
  }

  @override
  String get widgetNoCardsDue => 'Kartičky: všetko hotové';

  @override
  String get faqMyDayQ => 'Čo robí „Začať môj deň“?';

  @override
  String get faqMyDayA =>
      'Raz denne ho ponúkne domovská obrazovka: uvidíte dnešné úlohy, ďalšiu udalosť, zostávajúce návyky a kartičky na opakovanie a jedným ťuknutím spustíte sedenie sústredenia. Podržaním ikony aplikácie získate rýchle akcie, alebo si pridajte miniaplikáciu na domovskú obrazovku a uvidíte čas sústredenia a kartičky na opakovanie.';

  @override
  String get faqTasksQ => 'Ako pridám úlohu s pripomienkou?';

  @override
  String get faqTasksA =>
      'Ťuknite na Nová úloha na Domove alebo na + v Úlohách. Napíšte názov alebo ho nadiktujte mikrofónom a potom nastavte termín, čas a pripomienku. Úlohy po termíne sú na prvom mieste.';

  @override
  String get faqFocusQ => 'Ako funguje časovač sústredenia?';

  @override
  String get faqFocusA =>
      'Vyberte Pomodoro, odpočítavanie alebo voľný čas a stlačte Spustiť; prestávky môžu nasledovať automaticky. V Nastaveniach môžete zvoliť zvuk na konci, zapnúť Nerušiť počas sústredenia a púšťať pri každom sedení zvuky prírody.';

  @override
  String get faqSoundsQ => 'Môžem miešať zvuky prírody?';

  @override
  String get faqSoundsA =>
      'Zapnite až šesť skutočných nahrávok, každej nastavte hlasitosť a mix si uložte pod názvom. Hrajú ďalej na pozadí a časovač spánku ich môže zastaviť. Žiadna hudba sa nepoužíva.';

  @override
  String get faqCalendarQ => 'Dokáže kalendár zobraziť dátumy podľa hidžry?';

  @override
  String get faqCalendarA =>
      'Áno. Dátumy podľa hidžry (Umm al-Qura) sa v arabčine zobrazujú automaticky a v Nastaveniach ich možno zapnúť pre akýkoľvek jazyk. Udalosti, úlohy s termínom a míľniky projektov sa zobrazujú spolu.';

  @override
  String get faqFlashcardsQ => 'Ako opakovanie rozhoduje, ktoré kartičky uvidím?';

  @override
  String get faqFlashcardsA =>
      'Kartičky, ktoré dobre poznáte, sa vracajú po dlhšom čase, a tie, ktoré neviete, sa vracajú skoro (opakovanie v intervaloch). Každú odpoveď ohodnoťte ako Znova, Ťažké, Dobré alebo Ľahké. Nastavte si denný cieľ a udržujte sériu na karte Dnes. Pri balíčku nastavte dátum skúšky a uvidíte, koľko dní zostáva a koľko nových kartičiek sa máte denne naučiť. Zoradenie „Moje poradie“ umožní presúvať kartičky na miesto, ťuknutím na reproduktor na ktorejkoľvek strane si ju vypočujete a rýchlosť a opakovania nastavíte v ponuke Reč.';

  @override
  String get faqImportQ => 'Môžem preniesť kartičky z Anki alebo Excelu?';

  @override
  String get faqImportA =>
      'Áno. V balíčku zvoľte Importovať a vyberte súbor: Anki (.apkg), Excel (.xlsx) alebo CSV, a priraďte stĺpce. Pomocou „Šablóna tabuľky“ môžete písať kartičky na počítači. Obrázky a zvuky zo súborov Anki sa neimportujú.';

  @override
  String get faqNotesQ => 'Čo dokážu poznámky?';

  @override
  String get faqNotesA =>
      'Píšte voľne s kontrolnými zoznamami a formátovaním, pripínajte alebo označujte dôležité poznámky ako obľúbené, pridávajte štítky a prepájajte poznámky s úlohami. Tlačidlom mikrofónu môžete diktovať. Novú poznámku môžete začať zo šablóny (prednáška, zhrnutie knihy, denník, týždenný plán) a tlačidlom obrázka pridáte fotky.';

  @override
  String get faqHabitsQ => 'Ako sa počítajú série návykov?';

  @override
  String get faqHabitsA =>
      'Deň sa počíta, keď v naplánovaný deň dosiahnete cieľ návyku. Pozastavenie návyku sériu ochráni. Každý návyk môže mať vlastný čas pripomienky.';

  @override
  String get faqGoalsQ => 'Ako ciele sledujú pokrok?';

  @override
  String get faqGoalsA =>
      'Zadajte cieľu cieľovú hodnotu a jednotku a zapisujte pokrok. Jeho karta ukazuje, ako ďaleko ste a koľko zostáva do termínu.';

  @override
  String get faqProjectsQ => 'Na čo sú projekty?';

  @override
  String get faqProjectsA =>
      'Zoskupte úlohy do projektu, pridajte míľniky s dátumami a sledujte celkový pokrok. Míľniky sa zobrazujú aj v kalendári.';

  @override
  String get faqInsightsQ => 'Čo ukazujú Prehľady?';

  @override
  String get faqInsightsA =>
      'Čas sústredenia, dokončené úlohy a učenie za dni a týždne s jemnými tipmi. Všetko sa počíta vo vašom telefóne.';

  @override
  String get faqSpacesQ => 'Kde sú všetky časti?';

  @override
  String get faqSpacesA =>
      'Priestory obsahujú všetky časti aplikácie (poznámky, balíčky, návyky, ciele, projekty, zvuky a ďalšie), takže hlavná lišta zostáva jednoduchá.';

  @override
  String get faqBackupQ => 'Ako sa zálohujú moje údaje?';

  @override
  String get faqBackupA =>
      'Aplikácia každý deň potichu uloží šifrovanú kópiu do tohto telefónu a ponechá posledných 7. V Nastaveniach môžete tiež exportovať zálohu chránenú heslom a obnoviť ju v inom telefóne.';

  @override
  String get faqPrayerQ => 'Ako fungujú časy modlitieb?';

  @override
  String get faqPrayerA =>
      'Vyberte svoje mesto v Nastavenia → Časy modlitieb. Časy sa počítajú v telefóne metódou, ktorá sa tam používa, a metódu aj školu pre asr môžete zmeniť. Môžete dostávať upozornenie pri každej modlitbe a prebiehajúce sedenie sústredenia sa pozastaví.';

  @override
  String get faqPrivacyQ => 'Kde sú moje údaje uložené?';

  @override
  String get faqPrivacyA =>
      'Len vo vašom telefóne, v šifrovanej databáze. Žiadny účet ani sledovanie. Internet používajú len funkcie, ktoré sami zapnete, napríklad voliteľný asistent.';

  @override
  String get faqAssistantQ => 'Čo je asistent?';

  @override
  String get faqAssistantA =>
      'Voliteľný pomocník, ktorého v Nastaveniach pripojíte k vlastnej službe AI. Predvolene je vypnutý a pred odoslaním akéhokoľvek textu poznámky sa opýta.';

  @override
  String get tourPlanTitle => 'Naplánujte si deň';

  @override
  String get tourPlanBody =>
      'Úlohy, kalendár a návyky na jednom pokojnom mieste. Každé ráno začnite „Začať môj deň“.';

  @override
  String get tourFocusTitle => 'Sústreďte sa naplno';

  @override
  String get tourFocusBody =>
      'Sedenia s časovačom, skutočné zvuky prírody, Nerušiť a jemné tóny na konci.';

  @override
  String get tourLearnTitle => 'Učte sa natrvalo';

  @override
  String get tourLearnBody =>
      'Kartičky s opakovaním v intervaloch, čítanie nahlas v mnohých jazykoch a import z Anki alebo Excelu.';

  @override
  String get helpTitle => 'Pomoc a otázky';

  @override
  String get helpOpen => 'Otvoriť';

  @override
  String get helpTour => 'Prejsť prehliadku';

  @override
  String get tourNext => 'Ďalej';

  @override
  String get tourDone => 'Poďme na to';

  @override
  String get transferColTitle => 'Názov';

  @override
  String get transferColNotes => 'Poznámky';

  @override
  String get transferColBody => 'Text';

  @override
  String get transferColDue => 'Termín';

  @override
  String get transferColPriority => 'Priorita (0-3)';

  @override
  String get transferColDone => 'Hotovo';

  @override
  String get transferColProject => 'Projekt';

  @override
  String get transferColCategory => 'Kategória';

  @override
  String get transferTitle => 'Import a export';

  @override
  String get transferSaveAs => 'Uložiť ako';

  @override
  String get transferImport => 'Importovať zo súboru';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV alebo tabuľka vo Worde. Stĺpce: názov, termín (2026-12-31), priorita 0-3, hotovo, projekt, poznámky. Úlohy, ktoré už v aplikácii sú, sa preskočia.';

  @override
  String get transferImportNotesHint =>
      'Zo súborov Word, Markdown alebo textových súborov sa stane poznámka. Excel alebo CSV: jedna poznámka na riadok (názov, text).';

  @override
  String get transferSaved => 'Súbor uložený';

  @override
  String get transferFailed => 'Súbor sa nepodarilo vytvoriť. Nič sa nezmenilo.';

  @override
  String get transferUnsupported =>
      'Tento súbor sa tu nedá prečítať. Použite Excel, CSV, Word, Markdown alebo text.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Pridaných $added položiek',
      few: 'Pridané $added položky',
      one: 'Pridaná 1 položka',
      zero: 'Nič nové na pridanie',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Text';

  @override
  String get transferAllNotes => 'Všetky poznámky';

  @override
  String get transferThisNote => 'Táto poznámka';

  @override
  String get transferDeckFormats => 'Uložiť ako Excel, Word alebo PDF';

  @override
  String get faqFilesQ => 'Môžem používať súbory Excel, Word alebo PDF?';

  @override
  String get faqFilesA =>
      'Áno. Úlohy a Poznámky majú hore tlačidlo importu a exportu (dve šípky) a každý balíček ho má v ponuke. Ukladajte ako Excel, CSV, Word alebo PDF, alebo prineste súbory Excel, CSV, Word, Markdown či textové. Názvy stĺpcov môžu byť v ktoromkoľvek jazyku aplikácie a súbory, ktoré ste uložili, sa dajú vždy znova importovať.';

  @override
  String get tplLecture => 'Prednáška';

  @override
  String get tplBook => 'Zhrnutie knihy';

  @override
  String get tplJournal => 'Denník';

  @override
  String get tplWeek => 'Týždenný plán';

  @override
  String get tplLectureBody => '## Hlavné body\n- \n\n## Otázky\n- [ ] \n\n## Zhrnutie\n';

  @override
  String get tplBookBody =>
      '## Hlavná myšlienka\n\n## Čo som sa naučil\n- \n\n## Citáty\n> \n\n## Na použitie\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Som vďačný za\n- \n\n## Dnešné sústredenie\n- [ ] \n\n## Poznámky\n';

  @override
  String get tplWeekBody =>
      '## Ciele na tento týždeň\n- [ ] \n\n### Sobota\n- [ ] \n\n### Nedeľa\n- [ ] \n\n### Pondelok\n- [ ] \n\n### Utorok\n- [ ] \n\n### Streda\n- [ ] \n\n### Štvrtok\n- [ ] \n\n### Piatok\n- [ ] \n';

  @override
  String get tplHint => 'Začať zo šablóny';

  @override
  String get noteImage => 'Obrázok';

  @override
  String get noteAddImage => 'Pridať obrázok';

  @override
  String get noteImageUnreadable => 'Tento súbor nie je obrázok, ktorý aplikácia vie prečítať.';

  @override
  String get noteImageTooLarge => 'Tento obrázok je príliš veľký.';

  @override
  String get examSet => 'Nastaviť dátum skúšky';

  @override
  String get examDate => 'Dátum skúšky';

  @override
  String get examToday => 'Skúška je dnes. Veľa šťastia!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Skúška o $count dní',
      few: 'Skúška o $count dni',
      one: 'Skúška zajtra',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'učte sa $count nových kartičiek denne',
      few: 'učte sa $count nové kartičky denne',
      one: 'učte sa 1 novú kartičku denne',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'všetky kartičky naučené, opakujte ďalej';

  @override
  String examRaiseLimit(int count) {
    return 'Zobrazovať $count nových kartičiek denne';
  }

  @override
  String get backupDriveHint =>
      'Ak chcete mať kópiu online, na obrazovke ukladania, ktorá sa otvorí, zvoľte Disk Google (alebo inú cloudovú aplikáciu).';

  @override
  String get flashShareDeck => 'Zdieľať balíček s priateľom';

  @override
  String get flashSortManual => 'Moje poradie (potiahnutie)';

  @override
  String get flashReorderHint => 'Kartičku presuniete tak, že podržíte úchyt a potiahnete ju.';

  @override
  String get flashReorderNeedsAll => 'Ak chcete presúvať kartičky, vymažte hľadanie a filtre.';

  @override
  String get flashDragHandle => 'Presuňte potiahnutím';

  @override
  String get reportTitle => 'Mesačný prehľad';

  @override
  String get reportFocus => 'Čas sústredenia';

  @override
  String reportSessions(int count) {
    return '$count sedení';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Najlepší deň: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktívnych dní';
  }

  @override
  String get reportCards => 'Zopakované kartičky';

  @override
  String reportCardsKnown(String percent) {
    return 'Zapamätané $percent';
  }

  @override
  String get reportTasks => 'Dokončené úlohy';

  @override
  String get reportHabits => 'Splnené návyky';

  @override
  String get reportEmpty => 'Tento mesiac zatiaľ nič nezaznamenané.';

  @override
  String get reportSave => 'Uložiť ako PDF alebo Word';

  @override
  String get reportPrevMonth => 'Predchádzajúci mesiac';

  @override
  String get reportNextMonth => 'Ďalší mesiac';

  @override
  String get careTitle => 'Starostlivosť o telefón a údaje';

  @override
  String get storageTitle => 'Úložisko';

  @override
  String get storageSubtitle => 'Čo zaberá miesto a upratovanie nepoužívaných obrázkov';

  @override
  String get storagePictures => 'Obrázky v poznámkach';

  @override
  String get storageCardMedia => 'Obrázky a zvuk v kartičkách';

  @override
  String get storageText => 'Text poznámok';

  @override
  String get storageFree => 'Voľné miesto v telefóne';

  @override
  String get storageLow =>
      'Telefón je takmer plný. Uvoľnite trochu miesta, aby zálohy a pripomienky fungovali ďalej.';

  @override
  String storageUnused(int count, String size) {
    return '$count nepoužívaných obrázkov ($size)';
  }

  @override
  String get storageNoUnused => 'Žiadne nepoužívané obrázky. Všetko je v poriadku.';

  @override
  String get storageClean => 'Odstrániť nepoužívané obrázky';

  @override
  String storageCleaned(int count) {
    return 'Odstránené obrázky: $count';
  }

  @override
  String get storageHint =>
      'Obrázok sa počíta ako nepoužívaný, len keď ho nezobrazuje žiadna poznámka, ani poznámky v koši.';

  @override
  String get batteryTitle => 'Udržte pripomienky v chode';

  @override
  String get batterySubtitle =>
      'Niektoré telefóny zastavujú aplikácie na pozadí. Skontrolujte ten svoj.';

  @override
  String get batteryStatusOk =>
      'Šetrič batérie túto aplikáciu neobmedzuje. Pripomienky a zvuky by mali prichádzať včas.';

  @override
  String get batteryStatusLimited =>
      'Šetrič batérie môže túto aplikáciu na pozadí zastaviť, takže pripomienky a zvuky môžu prísť neskoro alebo vôbec.';

  @override
  String get batteryOpen => 'Otvoriť nastavenia batérie';

  @override
  String get batteryOpenApp => 'Otvoriť nastavenia aplikácie';

  @override
  String get batteryGeneric =>
      'V nastaveniach batérie vyberte túto aplikáciu a nastavte ju na Bez obmedzení (alebo Neoptimalizovať).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: otvorte aj Zabezpečenie › Povolenia › Automatické spustenie, zapnite túto aplikáciu a šetrič batérie nastavte na Bez obmedzení.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: otvorte Batéria › táto aplikácia, povoľte aktivitu na pozadí a automatické spustenie a uzamknite aplikáciu v zozname nedávnych aplikácií.';

  @override
  String get batterySamsung =>
      'Samsung: Batéria › Obmedzenia používania na pozadí: odstráňte túto aplikáciu z Uspaných aplikácií a Hlboko uspaných aplikácií.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Spúšťanie aplikácií › táto aplikácia › spravovať ručne a povoľte automatické spustenie, sekundárne spustenie a beh na pozadí.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Batéria › Spotreba energie na pozadí › povoľte túto aplikáciu a v povoleniach zapnite automatické spustenie.';

  @override
  String get whatsNewTitle => 'Čo je nové';

  @override
  String get whatsNewSubtitle => 'Najnovšie zmeny v niekoľkých riadkoch';

  @override
  String get whatsNewDone => 'Rozumiem';

  @override
  String get whatsNewOrderTitle => 'Potiahnite kartičky do vlastného poradia';

  @override
  String get whatsNewOrderBody =>
      'V balíčku zvoľte Zoradiť › Moje poradie, potom podržte úchyt a ťahajte.';

  @override
  String get whatsNewSpeechTitle => 'Reproduktor na každej strane kartičky';

  @override
  String get whatsNewSpeechBody =>
      'Ťuknutím si vypočujete slovo alebo preklad. Rýchlosť, opakovania a hlas nájdete v ponuke opakovania. Jazyk sa rozpozná z textu.';

  @override
  String get whatsNewReportTitle => 'Mesačný prehľad';

  @override
  String get whatsNewReportBody =>
      'V Prehľadoch ťuknite na ikonu prehľadu, zobrazte si mesiac a uložte ho ako PDF alebo Word.';

  @override
  String get whatsNewCareTitle => 'Starostlivosť o telefón a údaje';

  @override
  String get whatsNewCareBody =>
      'V Nastaveniach je nová stránka úložiska s upratovaním obrázkov a sprievodca batériou pre značku vášho telefónu.';

  @override
  String get whatsNewSoundTitle => 'Pokojnejšie zvuky';

  @override
  String get whatsNewSoundBody => 'Zvuky prírody sú jemnejšie a tichšie a obrázkové karty krajšie.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Skontrolované $date: posledná záloha sa otvára správne.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Skontrolované $date: našla sa poškodená záloha a bola nahradená novou.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Skontrolované $date: poslednú zálohu sa nepodarilo otvoriť. Uložte si súbor zálohy sami v Nastaveniach.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Zvyčajne sa učíte okolo $time';
  }

  @override
  String get smartReviewTimeUse => 'Použiť';

  @override
  String get widgetNewNote => 'Nová poznámka';

  @override
  String get noteConnections => 'Štítky, odkazy a úlohy';

  @override
  String get navCards => 'Kartičky';

  @override
  String get studyAnswerWay => 'Ako odpovedať';

  @override
  String get studyMorePractice => 'Precvičovanie navyše';

  @override
  String get studySessionSettings => 'Nastavenia sedenia';

  @override
  String get focusAdjustTitle => 'Vaše sedenie';

  @override
  String get focusPresetsTitle => 'Pripravené';

  @override
  String get focusPresetStudy => 'Štúdium';

  @override
  String get focusPresetDeep => 'Hlboká práca';

  @override
  String get focusPresetQuick => 'Rýchly šprint';

  @override
  String get focusPresetReading => 'Čítanie';

  @override
  String get focusPresetWorkout => 'Tréningové kolá';

  @override
  String get focusAdjustMinutes => 'Dĺžka sústredenia';

  @override
  String get focusAdjustBreak => 'Dĺžka prestávky';

  @override
  String get focusAdjustRounds => 'Kolá';

  @override
  String get focusRoundsOpen => 'Bez obmedzenia';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Ťuknutím zmeníte čas';

  @override
  String get flashArrangeDecks => 'Usporiadať balíčky';

  @override
  String get flashDeckActions => 'Možnosti balíčka';

  @override
  String get starterBrowse => 'Pripravené balíčky';

  @override
  String get starterBrowseHint => 'Pridajte jeden ťuknutím a začnite sa učiť';

  @override
  String get dashOpenDecks => 'Otvoriť kartičky';

  @override
  String speechVoiceNumber(String n) {
    return 'Hlas $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Pekný flow. Oddýchnuť si $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Začať prestávku';

  @override
  String tasksFinishAt(String time) {
    return 'Ak začnete teraz, so všetkým budete hotoví o $time';
  }

  @override
  String get focusCalmPacing => 'Pokojné tempo';

  @override
  String get focusCalmPacingHint => 'Len celé minúty a kruh, žiadne tikajúce sekundy';

  @override
  String get focusFlipHint => 'Otočte telefón displejom nadol a začnite';

  @override
  String get focusImmersive => 'Pohlcujúci režim';

  @override
  String get focusImmersiveBlack => 'Čisto čierna (šetrí batériu)';

  @override
  String get focusFlipToFocus => 'Otočiť a sústrediť sa';

  @override
  String get focusFlipToFocusHint =>
      'V pohlcujúcom režime: displej nadol spustí, zdvihnutie pozastaví';

  @override
  String get guardTitle => 'Ochrana pred rozptýlením';

  @override
  String get guardSubtitle => 'Pozastavte rušivé aplikácie, keď sa sústredíte';

  @override
  String get guardSwitch => 'Pozastaviť rušivé aplikácie';

  @override
  String get guardSwitchHint => 'Počas sedení sústredenia a vo vašich hodinách Časovej ochrany';

  @override
  String get guardNeedsAccess => 'Vyžaduje prepínač dostupnosti: ťuknutím ho zapnite';

  @override
  String get guardDisclosureTitle => 'Ako ochrana funguje';

  @override
  String get guardDisclosureBody =>
      'Aby Deep Focus mohol pozastaviť vybrané aplikácie, používa službu dostupnosti v Androide na zistenie, ktorá aplikácia je otvorená. So zapnutou voľbou „Zatvárať Shorts a Reels“ tiež kontroluje, či je na obrazovke prehrávač krátkych videí.\n\nNečíta žiadny text, neukladá nič z toho, čo vidí, a nič nikam neodosiela: všetko zostáva vo vašom telefóne. Kedykoľvek ju môžete vypnúť v nastaveniach dostupnosti.';

  @override
  String get guardAgree => 'Súhlasím a otvoriť nastavenia';

  @override
  String get guardModeGentle => 'Mierny';

  @override
  String get guardModeStrict => 'Prísny';

  @override
  String get guardGentleHint => 'Päťsekundová pauza na nádych, potom sa rozhodnete';

  @override
  String get guardStrictHint => 'Vybrané aplikácie zostanú zatvorené až do konca sústredenia';

  @override
  String get guardApps => 'Aplikácie na pozastavenie';

  @override
  String get guardAppsAllowed => 'Povolené aplikácie';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikácií',
      few: '$count aplikácie',
      one: '1 aplikácia',
      zero: 'Zatiaľ nič nevybrané',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Povoliť len vybrané aplikácie';

  @override
  String get guardAllowlistHint =>
      'Všetky ostatné aplikácie sa pozastavia; hovory, nastavenia a klávesnica fungujú vždy';

  @override
  String get guardShorts => 'Zatvárať Shorts a Reels';

  @override
  String get guardShortsHint =>
      'Kedykoľvek je ochrana zapnutá. Podľa možností: tieto aplikácie sa často menia';

  @override
  String get guardSchedule => 'Časová ochrana';

  @override
  String get guardScheduleHint =>
      'Chrániť aj vo vybrané dni a hodiny, napríklad v škole alebo v práci';

  @override
  String get guardFrom => 'Od';

  @override
  String get guardTo => 'Do';

  @override
  String get guardSearchApps => 'Hľadať aplikácie';

  @override
  String get guardNoApps => 'Nenašli sa žiadne aplikácie';

  @override
  String get guardPrivacy =>
      'Funguje len vo vašom telefóne: ochrana vidí, ktorá aplikácia je otvorená, nikdy nie jej obsah, a nič neodosiela.';

  @override
  String get guardBreathe => 'Nádych… a výdych';

  @override
  String get guardQuestion => 'Potrebujete túto aplikáciu teraz?';

  @override
  String get guardBackToFocus => 'Späť k sústredeniu';

  @override
  String get guardOpenFive => 'Otvoriť na 5 minút';

  @override
  String get guardStrictBody => 'Táto aplikácia je pozastavená do konca vášho sústredenia.';

  @override
  String get guardShortsClosed => 'Krátke videá sa zatvárajú, kým je ochrana zapnutá';

  @override
  String get faqGuardQ => 'Ako zastavím rušivé aplikácie, keď sa sústredím?';

  @override
  String get faqGuardA =>
      'Otvorte Sústredenie → nastavenia časovača → Ochrana pred rozptýlením. Vyberte aplikácie a potom Mierny (päť sekúnd nádychu a otázka „Potrebujete túto aplikáciu teraz?“) alebo Prísny (zostanú zatvorené). Funguje počas sedení sústredenia a s Časovou ochranou aj v dňoch a hodinách, ktoré nastavíte. „Povoliť len vybrané aplikácie“ pozastaví všetko ostatné; hovory, nastavenia a klávesnica fungujú vždy. Android vás raz požiada o zapnutie ochrany v nastaveniach dostupnosti. Vidí len, ktorá aplikácia je otvorená, a nič neodosiela.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Presunuté do: $name';
  }

  @override
  String get notesDragHint => 'Podržte poznámku a potiahnite ju na zápisník';

  @override
  String get guardReviewCards => 'Radšej zopakovať kartičky';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Čaká na vás $count kartičiek',
      few: 'Čakajú na vás $count kartičky',
      one: 'Čaká na vás 1 kartička',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Núdza: podržte 10 sekúnd';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Držte ďalej… $n';
  }

  @override
  String get guardWeekTitle => 'Tento týždeň';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozastavení',
      few: '$count pozastavenia',
      one: '1 pozastavenie',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'späť k sústredeniu $count-krát',
      few: 'späť k sústredeniu $count-krát',
      one: 'späť k sústredeniu raz',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Premenovať slová';

  @override
  String get wordsSubtitle => 'Použite vlastné slovo pre akýkoľvek text v aplikácii';

  @override
  String get wordsHint =>
      'Ťuknutím na text ho zmeníte. Vaše slová platia len pre tento jazyk a ukladajú sa do záloh.';

  @override
  String get wordsSearch => 'Hľadať texty';

  @override
  String get wordsChangedOnly => 'Len zmenené';

  @override
  String wordsOriginal(String text) {
    return 'Pôvodné: $text';
  }

  @override
  String get wordsReset => 'Použiť pôvodné';

  @override
  String get wordsResetAll => 'Obnoviť všetky slová';

  @override
  String get wordsResetAllConfirm => 'Všetky texty v tomto jazyku sa vrátia k pôvodným.';

  @override
  String get wordsNone => 'Nenašiel sa žiadny text';

  @override
  String get settingsLanguageSearch => 'Hľadať jazyky';

  @override
  String get settingsLanguageNoMatch => 'Žiadny jazyk nezodpovedá';

  @override
  String get soundsMyMusic => 'Váš zvuk';

  @override
  String get soundsMusicHint =>
      'Prehrajte zvukový súbor z telefónu. Nič sa nekopíruje ani nenahráva.';

  @override
  String get soundsChooseMusic => 'Vybrať zvuk';

  @override
  String get soundsRemoveMusic => 'Odstrániť zvuk';

  @override
  String get wordPacksTitle => 'Balíčky slovíčok';

  @override
  String get wordPacksHint =>
      'Zoznamy slov podľa tém. Stiahnite iba jazyk, ktorý chcete, a kartičky potom voľne upravujte alebo mažte.';

  @override
  String get wordPacksFailed => 'Stiahnutie zlyhalo. Skontrolujte pripojenie.';

  @override
  String get wordPacksEmpty => 'Slová pre tento jazyk sa ešte pripravujú.';
}
