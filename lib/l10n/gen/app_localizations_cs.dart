// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Domů';

  @override
  String get navTasks => 'Úkoly';

  @override
  String get navFocus => 'Soustředění';

  @override
  String get navCalendar => 'Kalendář';

  @override
  String get navSpaces => 'Prostory';

  @override
  String get moduleProjects => 'Projekty';

  @override
  String get moduleNotes => 'Poznámky';

  @override
  String get moduleFlashcards => 'Kartičky';

  @override
  String get moduleGoals => 'Cíle';

  @override
  String get moduleHabits => 'Návyky';

  @override
  String get moduleAnalytics => 'Přehledy';

  @override
  String get moduleSearch => 'Hledat';

  @override
  String get moduleAssistant => 'Asistent';

  @override
  String get moduleSettings => 'Nastavení';

  @override
  String get moduleTrash => 'Koš';

  @override
  String get actionSave => 'Uložit';

  @override
  String get actionCancel => 'Zrušit';

  @override
  String get actionDelete => 'Smazat';

  @override
  String get actionEdit => 'Upravit';

  @override
  String get actionDone => 'Hotovo';

  @override
  String get actionAdd => 'Přidat';

  @override
  String get actionCreate => 'Vytvořit';

  @override
  String get actionClose => 'Zavřít';

  @override
  String get actionBack => 'Zpět';

  @override
  String get actionUndo => 'Vrátit';

  @override
  String get actionRestore => 'Obnovit';

  @override
  String get actionRetry => 'Zkusit znovu';

  @override
  String get actionContinue => 'Pokračovat';

  @override
  String get actionSkip => 'Přeskočit';

  @override
  String get actionArchive => 'Archivovat';

  @override
  String get actionUnarchive => 'Vrátit z archivu';

  @override
  String get actionPin => 'Připnout';

  @override
  String get actionUnpin => 'Odepnout';

  @override
  String get actionMore => 'Další možnosti';

  @override
  String get actionClear => 'Vymazat';

  @override
  String get actionSearch => 'Hledat';

  @override
  String get actionSort => 'Řadit';

  @override
  String get actionShare => 'Sdílet';

  @override
  String get actionImport => 'Importovat';

  @override
  String get actionExport => 'Exportovat';

  @override
  String get actionPause => 'Pozastavit';

  @override
  String get actionResume => 'Pokračovat';

  @override
  String get actionStart => 'Spustit';

  @override
  String get actionStop => 'Zastavit';

  @override
  String get actionComplete => 'Dokončit';

  @override
  String get actionDeleteForever => 'Smazat natrvalo';

  @override
  String get actionEmptyTrash => 'Vysypat koš';

  @override
  String get actionUnlink => 'Odpojit';

  @override
  String get actionCustomize => 'Přizpůsobit';

  @override
  String get actionPreview => 'Náhled';

  @override
  String get actionLog => 'Zapsat pokrok';

  @override
  String get stateLoading => 'Načítání…';

  @override
  String get stateSaving => 'Ukládání…';

  @override
  String get stateSaved => 'Uloženo';

  @override
  String get stateUnsaved => 'Neuložené změny';

  @override
  String get errorGenericTitle => 'Něco se pokazilo';

  @override
  String get errorGenericMessage => 'Vaše data jsou v bezpečí. Zkuste to prosím znovu.';

  @override
  String get errorLoadFailed => 'Tento obsah se nepodařilo načíst.';

  @override
  String get errorSaveFailed => 'Nepodařilo se uložit. Vaše změny tu stále jsou.';

  @override
  String get validationRequired => 'Toto pole je povinné';

  @override
  String get validationTitleRequired => 'Zadejte název';

  @override
  String get validationNameRequired => 'Zadejte jméno';

  @override
  String get validationTooLong => 'Je to příliš dlouhé';

  @override
  String get validationEndBeforeStart => 'Konec musí být po začátku';

  @override
  String get validationStartAfterDue => 'Datum zahájení musí být před termínem';

  @override
  String get validationPositiveNumber => 'Zadejte číslo větší než nula';

  @override
  String get validationDependencyCycle => 'Tím by vznikla kruhová závislost';

  @override
  String get validationInvalidRepeat => 'Toto pravidlo opakování není platné';

  @override
  String get deletedItem => 'Přesunuto do koše';

  @override
  String get untitled => 'Bez názvu';

  @override
  String get noProject => 'Bez projektu';

  @override
  String get greetingMorning => 'Dobré ráno';

  @override
  String get greetingAfternoon => 'Dobré odpoledne';

  @override
  String get greetingEvening => 'Dobrý večer';

  @override
  String get dashFocusToday => 'Dnešní soustředění';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done z $target';
  }

  @override
  String get dashStartFocus => 'Začít soustředění';

  @override
  String get dashFocusRunning => 'Probíhá sezení';

  @override
  String get dashTodayTasks => 'Na dnešek';

  @override
  String get dashAgenda => 'Program';

  @override
  String get dashHabits => 'Dnešní návyky';

  @override
  String get dashGoals => 'Cíle';

  @override
  String get dashReview => 'Opakování';

  @override
  String get dashRecentNotes => 'Nedávné poznámky';

  @override
  String get dashInsight => 'Tip';

  @override
  String get dashSeeAll => 'Zobrazit vše';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartiček k opakování',
      few: '$count kartičky k opakování',
      one: '1 kartička k opakování',
      zero: 'Žádné kartičky k opakování',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Opakovat teď';

  @override
  String get dashCustomizeTitle => 'Části přehledu';

  @override
  String get dashCustomizeHint => 'Vyberte, co se zobrazí na domovské obrazovce.';

  @override
  String get dashSectionFocus => 'Soustředění';

  @override
  String get dashSectionToday => 'Dnešní úkoly';

  @override
  String get dashSectionAgenda => 'Program';

  @override
  String get dashSectionHabits => 'Návyky';

  @override
  String get dashSectionGoals => 'Cíle';

  @override
  String get dashSectionReview => 'Opakování kartiček';

  @override
  String get dashSectionNotes => 'Nedávné poznámky';

  @override
  String get dashSectionInsight => 'Tipy';

  @override
  String get quickAddTask => 'Nový úkol';

  @override
  String get quickAddNote => 'Nová poznámka';

  @override
  String get quickAddEvent => 'Nová událost';

  @override
  String get quickStartFocus => 'Soustředění';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Máte $count úkolů po termínu. Začněte tím nejdůležitějším.',
      few: 'Máte $count úkoly po termínu. Začněte tím nejdůležitějším.',
      one: 'Máte 1 úkol po termínu. Přeplánujte ho, nebo ho nejdřív dokončete.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Do denního cíle soustředění vám chybí $minutes min.';
  }

  @override
  String get insightCardsDue => 'Zopakujte si kartičky, dokud jsou čerstvé v paměti.';

  @override
  String get insightAllClear =>
      'Všechno jde podle plánu. Naplánujte si zítřek, nebo si dejte klidnou přestávku.';

  @override
  String insightHabitStreak(String habit) {
    return 'Udržte sérii: $habit dnes ještě čeká.';
  }

  @override
  String get focusTitle => 'Soustředění';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Odpočet';

  @override
  String get focusModeCountUp => 'Stopky';

  @override
  String get focusModeOpen => 'Volné';

  @override
  String get focusPhaseWork => 'Soustředění';

  @override
  String get focusPhaseShortBreak => 'Krátká přestávka';

  @override
  String get focusPhaseLongBreak => 'Dlouhá přestávka';

  @override
  String get focusReady => 'Až budete připraveni';

  @override
  String get focusPaused => 'Pozastaveno';

  @override
  String get focusRunning => 'Soustředění běží';

  @override
  String get focusDuration => 'Délka';

  @override
  String get focusLinkTask => 'Připojit úkol';

  @override
  String get focusLinkedTask => 'Pracuji na';

  @override
  String get focusNoTask => 'Žádný připojený úkol';

  @override
  String focusCycle(int current, int total) {
    return 'Kolo $current z $total';
  }

  @override
  String get focusSkipBreak => 'Přeskočit přestávku';

  @override
  String get focusStartBreak => 'Začít přestávku';

  @override
  String get focusStartNext => 'Začít další soustředění';

  @override
  String get focusSessionComplete => 'Sezení dokončeno';

  @override
  String get focusSessionStopped => 'Sezení uloženo';

  @override
  String focusSessionSummary(String duration) {
    return 'Soustředili jste se $duration.';
  }

  @override
  String get focusAddNote => 'Přidejte k sezení poznámku';

  @override
  String get focusHistory => 'Historie';

  @override
  String get focusNoHistory => 'Dokončená sezení se zobrazí tady';

  @override
  String get focusTargets => 'Cíle';

  @override
  String get focusDailyTarget => 'Denní cíl';

  @override
  String get focusWeeklyTarget => 'Týdenní cíl';

  @override
  String get focusOutcomeCompleted => 'Dokončeno';

  @override
  String get focusOutcomeInterrupted => 'Ukončeno předčasně';

  @override
  String get focusRecovered => 'Sezení pokračovalo, i když byla aplikace zavřená.';

  @override
  String get focusCompletedWhileAway =>
      'Sezení skončilo, když byla aplikace zavřená, a bylo uloženo.';

  @override
  String get focusNotificationsOff => 'Oznámení jsou vypnutá. Na konec sezení vás nic neupozorní.';

  @override
  String get focusBatteryHint =>
      'Některá zařízení pozastavují aplikace na pozadí. Časovač zůstává přesný, ale upozornění se mohou zpozdit. Pro spolehlivá upozornění povolte neomezené využití baterie.';

  @override
  String get focusOpenSettings => 'Otevřít nastavení';

  @override
  String get focusStopConfirmTitle => 'Zastavit toto sezení?';

  @override
  String get focusStopConfirmMessage => 'Dosavadní čas soustředění se uloží.';

  @override
  String get focusDiscard => 'Zahodit';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minut',
      few: '$minutes minuty',
      one: '1 minuta',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, zbývá $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, uplynulo $time';
  }

  @override
  String get focusDeleteSession => 'Smazat sezení';

  @override
  String get tasksTitle => 'Úkoly';

  @override
  String get tasksViewToday => 'Dnes';

  @override
  String get tasksViewUpcoming => 'Nadcházející';

  @override
  String get tasksViewAll => 'Vše';

  @override
  String get tasksViewOverdue => 'Po termínu';

  @override
  String get tasksViewCompleted => 'Dokončené';

  @override
  String get tasksQuickAddHint => 'Přidat úkol…';

  @override
  String get tasksEmptyTitle => 'Vše hotovo';

  @override
  String get tasksEmptyMessage => 'Přidejte úkol a dejte dni tvar.';

  @override
  String get tasksEmptyCompleted => 'Dokončené úkoly se zobrazí tady.';

  @override
  String get taskNew => 'Nový úkol';

  @override
  String get taskEdit => 'Upravit úkol';

  @override
  String get taskTitleLabel => 'Název';

  @override
  String get taskTitleHint => 'Co je potřeba udělat?';

  @override
  String get taskDescriptionLabel => 'Popis';

  @override
  String get taskNotesLabel => 'Poznámky';

  @override
  String get taskPriority => 'Priorita';

  @override
  String get priorityNone => 'Žádná';

  @override
  String get priorityLow => 'Nízká';

  @override
  String get priorityMedium => 'Střední';

  @override
  String get priorityHigh => 'Vysoká';

  @override
  String get priorityUrgent => 'Naléhavá';

  @override
  String get taskDueDate => 'Termín';

  @override
  String get taskStartDate => 'Datum zahájení';

  @override
  String get taskReminder => 'Připomenutí';

  @override
  String get taskRepeat => 'Opakování';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategorie';

  @override
  String get taskCategoryHint => 'např. Práce, Domov, Studium';

  @override
  String get taskEstimateMinutes => 'Odhad (minuty)';

  @override
  String get taskTracked => 'Naměřené soustředění';

  @override
  String get taskLabels => 'Štítky';

  @override
  String get taskAddLabel => 'Nový štítek';

  @override
  String get taskChecklist => 'Kontrolní seznam';

  @override
  String get taskAddChecklistItem => 'Přidat položku';

  @override
  String get taskSubtasks => 'Dílčí úkoly';

  @override
  String get taskAddSubtask => 'Přidat dílčí úkol';

  @override
  String get taskDependencies => 'Blokováno úkolem';

  @override
  String get taskAddDependency => 'Přidat blokující úkol';

  @override
  String get taskLinkedNotes => 'Propojené poznámky';

  @override
  String get taskSetTime => 'Nastavit čas';

  @override
  String get taskNoDate => 'Bez data';

  @override
  String get taskCompleted => 'Úkol dokončen';

  @override
  String get taskNextOccurrence => 'Další výskyt vytvořen';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dní po termínu',
      few: '$days dny po termínu',
      one: '1 den po termínu',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Označit „$title“ jako hotové';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Označit „$title“ jako nehotové';
  }

  @override
  String get sortSmart => 'Chytře';

  @override
  String get sortDueDate => 'Termín';

  @override
  String get sortPriority => 'Priorita';

  @override
  String get sortCreated => 'Nejnovější';

  @override
  String get sortTitle => 'Název';

  @override
  String get filterAllProjects => 'Všechny projekty';

  @override
  String get filterAnyPriority => 'Jakákoli priorita';

  @override
  String get filterTitle => 'Filtr a řazení';

  @override
  String get dateToday => 'Dnes';

  @override
  String get dateTomorrow => 'Zítra';

  @override
  String get dateYesterday => 'Včera';

  @override
  String get repeatNever => 'Neopakuje se';

  @override
  String get repeatDaily => 'Každý den';

  @override
  String get repeatWeekdays => 'Každý pracovní den';

  @override
  String get repeatWeekly => 'Každý týden';

  @override
  String get repeatMonthly => 'Každý měsíc';

  @override
  String get repeatYearly => 'Každý rok';

  @override
  String get repeatCustom => 'Vlastní';

  @override
  String get repeatEvery => 'Opakovat každý';

  @override
  String get repeatOnDays => 'Ve dnech';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dní',
      few: 'dny',
      one: 'den',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'týdnů',
      few: 'týdny',
      one: 'týden',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'měsíců',
      few: 'měsíce',
      one: 'měsíc',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'let',
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
      other: '$count opakováních',
      few: '$count opakováních',
      one: '1 opakování',
    );
    return 'Skončí po $_temp0';
  }

  @override
  String get repeatEndsNever => 'Nikdy nekončí';

  @override
  String get reminderAtTime => 'V čase události';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minut předem',
      few: '$minutes minuty předem',
      one: '1 minutu předem',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours hodin předem',
      few: '$hours hodiny předem',
      one: '1 hodinu předem',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 den předem';

  @override
  String get projectsTitle => 'Projekty';

  @override
  String get projectsEmptyTitle => 'Zatím žádné projekty';

  @override
  String get projectsEmptyMessage => 'Seskupte související úkoly, poznámky a čas soustředění.';

  @override
  String get projectNew => 'Nový projekt';

  @override
  String get projectEdit => 'Upravit projekt';

  @override
  String get projectName => 'Název';

  @override
  String get projectDescription => 'Popis';

  @override
  String get projectGoal => 'Cíl';

  @override
  String get projectDeadline => 'Termín';

  @override
  String get projectColor => 'Barva';

  @override
  String get projectIcon => 'Ikona';

  @override
  String get projectProgress => 'Pokrok';

  @override
  String projectTasksDone(int done, int total) {
    return 'Hotovo $done z $total úkolů';
  }

  @override
  String get projectFocusTime => 'Čas soustředění';

  @override
  String get projectArchived => 'Archivované projekty';

  @override
  String get projectShowArchived => 'Zobrazit archivované';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Zbývá $days dní',
      few: 'Zbývají $days dny',
      one: 'Zbývá 1 den',
      zero: 'Termín dnes',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Po termínu';

  @override
  String get calendarTitle => 'Kalendář';

  @override
  String get calendarMonth => 'Měsíc';

  @override
  String get calendarWeek => 'Týden';

  @override
  String get calendarDay => 'Den';

  @override
  String get calendarToday => 'Dnes';

  @override
  String get calendarPrevious => 'Předchozí';

  @override
  String get calendarNext => 'Další';

  @override
  String get calendarNoEvents => 'Nic naplánováno';

  @override
  String get calendarAllDay => 'Celý den';

  @override
  String get eventNew => 'Nová událost';

  @override
  String get eventEdit => 'Upravit událost';

  @override
  String get eventTitleHint => 'Název události';

  @override
  String get eventStarts => 'Začátek';

  @override
  String get eventEnds => 'Konec';

  @override
  String get eventKind => 'Typ';

  @override
  String get eventKindEvent => 'Událost';

  @override
  String get eventKindTimeBlock => 'Časový blok';

  @override
  String get eventKindFocus => 'Sezení soustředění';

  @override
  String get eventKindGoal => 'Osobní cíl';

  @override
  String get eventDescription => 'Podrobnosti';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Překrývá se s $count událostmi',
      few: 'Překrývá se s $count událostmi',
      one: 'Překrývá se s 1 událostí',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Konflikty v plánu tento den';

  @override
  String get calendarTaskDue => 'Termín úkolu';

  @override
  String get calendarDragHint => 'Podržte a přetáhněte událost, chcete-li ji přesunout';

  @override
  String get calendarRescheduled => 'Událost přesunuta';

  @override
  String get calendarScheduleTask => 'Naplánovat jako časový blok';

  @override
  String get notesTitle => 'Poznámky';

  @override
  String get notesViewAll => 'Vše';

  @override
  String get notesViewPinned => 'Připnuté';

  @override
  String get notesViewFavorites => 'Oblíbené';

  @override
  String get notesViewArchived => 'Archivované';

  @override
  String get notesTags => 'Štítky';

  @override
  String get notesNewNotebook => 'Nový zápisník';

  @override
  String get notesNoNotebook => 'Bez zápisníku';

  @override
  String get notesEmptyTitle => 'Prázdný list';

  @override
  String get notesEmptyMessage => 'Zachyťte nápady, poznámky ze schůzek a znalosti.';

  @override
  String get noteTitleHint => 'Název';

  @override
  String get noteBodyHint =>
      'Začněte psát… Použijte # pro štítky a [[Název]] pro propojení poznámek.';

  @override
  String get noteFavorite => 'Oblíbené';

  @override
  String get noteUnfavorite => 'Odebrat z oblíbených';

  @override
  String get noteMoveTo => 'Přesunout do zápisníku';

  @override
  String get noteBacklinks => 'Odkazují sem';

  @override
  String get noteLinkedTasks => 'Propojené úkoly';

  @override
  String get noteLinkTask => 'Připojit úkol';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Nadpis';

  @override
  String get noteFormatBold => 'Tučně';

  @override
  String get noteFormatItalic => 'Kurzíva';

  @override
  String get noteFormatList => 'Odrážky';

  @override
  String get noteFormatChecklist => 'Kontrolní seznam';

  @override
  String get noteFormatLink => 'Odkaz';

  @override
  String noteEdited(String time) {
    return 'Upraveno $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count slov',
      few: '$count slova',
      one: '1 slovo',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kartičky';

  @override
  String get flashEmptyTitle => 'Vytvořte svůj první balíček';

  @override
  String get flashEmptyMessage =>
      'Opakování v intervalech ukáže každou kartičku těsně předtím, než byste ji zapomněli.';

  @override
  String get deckNew => 'Nový balíček';

  @override
  String get deckEdit => 'Upravit balíček';

  @override
  String get deckName => 'Název balíčku';

  @override
  String get deckDescription => 'Popis';

  @override
  String get deckDailyNew => 'Nové kartičky denně';

  @override
  String get deckDailyReview => 'Denní cíl opakování';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartiček',
      few: '$count kartičky',
      one: '1 kartička',
      zero: 'Žádné kartičky',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'K opakování';

  @override
  String get deckNewCards => 'Nové';

  @override
  String get deckMature => 'Naučené';

  @override
  String get deckStudy => 'Učit se';

  @override
  String get deckNothingDue => 'Teď není co opakovat. Vraťte se později.';

  @override
  String get deckEmptyCards => 'Přidejte kartičky a začněte se učit.';

  @override
  String get cardNew => 'Nová kartička';

  @override
  String get cardEdit => 'Upravit kartičku';

  @override
  String get cardFront => 'Líc';

  @override
  String get cardBack => 'Rub';

  @override
  String get cardFrontHint => 'Otázka nebo pojem';

  @override
  String get cardBackHint => 'Odpověď nebo definice';

  @override
  String get cardTags => 'Štítky';

  @override
  String get cardAddAnother => 'Uložit a přidat další';

  @override
  String get reviewShowAnswer => 'Ukázat odpověď';

  @override
  String get reviewAgain => 'Znovu';

  @override
  String get reviewHard => 'Těžké';

  @override
  String get reviewGood => 'Dobré';

  @override
  String get reviewEasy => 'Snadné';

  @override
  String reviewProgress(int done, int total) {
    return '$done z $total';
  }

  @override
  String get reviewFinishedTitle => 'Sezení dokončeno';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zopakovali jste $count kartiček.',
      few: 'Zopakovali jste $count kartičky.',
      one: 'Zopakovali jste 1 kartičku.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Klepnutím odhalíte odpověď';

  @override
  String get importCardsTitle => 'Importovat kartičky';

  @override
  String get importCardsHint =>
      'Vložte jednu kartičku na řádek (líc a rub oddělené tabulátorem nebo středníkem), nebo vyberte soubor: Excel (.xlsx), CSV, balíček Anki (.apkg) nebo exportovaný balíček.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Importováno $count kartiček',
      few: 'Importovány $count kartičky',
      one: 'Importována 1 kartička',
      zero: 'Nic nebylo importováno',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Tento obsah se nepodařilo importovat.';

  @override
  String get exportCopied => 'Balíček exportován';

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
      few: '$count dny',
      one: '1 den',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Cíle';

  @override
  String get goalsEmptyTitle => 'Mějte cíl';

  @override
  String get goalsEmptyMessage =>
      'Stanovte si denní, týdenní, měsíční nebo dlouhodobé cíle a sledujte skutečný pokrok.';

  @override
  String get goalNew => 'Nový cíl';

  @override
  String get goalEdit => 'Upravit cíl';

  @override
  String get goalTitleHint => 'Čeho chcete dosáhnout?';

  @override
  String get goalPeriod => 'Období';

  @override
  String get goalPeriodDaily => 'Denní';

  @override
  String get goalPeriodWeekly => 'Týdenní';

  @override
  String get goalPeriodMonthly => 'Měsíční';

  @override
  String get goalPeriodLongTerm => 'Dlouhodobý';

  @override
  String get goalTarget => 'Cílová hodnota';

  @override
  String get goalUnit => 'Jednotka';

  @override
  String get goalUnitHint => 'např. stránky, km, hodiny';

  @override
  String get goalStatusActive => 'Aktivní';

  @override
  String get goalStatusPaused => 'Pozastavený';

  @override
  String get goalStatusAchieved => 'Dosažený';

  @override
  String get goalPause => 'Pozastavit cíl';

  @override
  String get goalResume => 'Obnovit cíl';

  @override
  String get goalMarkAchieved => 'Označit jako dosažený';

  @override
  String goalProgressOf(String current, String target) {
    return '$current z $target';
  }

  @override
  String get goalLogAmount => 'Množství';

  @override
  String get goalLogNote => 'Poznámka (volitelné)';

  @override
  String get goalHistory => 'Historie';

  @override
  String get goalNoHistory => 'Zapsaný pokrok se zobrazí tady';

  @override
  String get goalLinkedTasks => 'Propojené úkoly';

  @override
  String get goalLinkedTasksHint =>
      'Každý dokončený propojený úkol se k tomuto cíli počítá jako 1.';

  @override
  String get goalThisPeriod => 'Toto období';

  @override
  String get habitsTitle => 'Návyky';

  @override
  String get habitsEmptyTitle => 'Malé kroky každý den';

  @override
  String get habitsEmptyMessage => 'Vytvořte si návyk a odškrtněte ho, když ho splníte.';

  @override
  String get habitNew => 'Nový návyk';

  @override
  String get habitEdit => 'Upravit návyk';

  @override
  String get habitNameHint => 'např. Přečíst 20 stran';

  @override
  String get habitDays => 'Plán';

  @override
  String get habitEveryDay => 'Každý den';

  @override
  String get habitTargetPerDay => 'Kolikrát denně';

  @override
  String get habitReminder => 'Denní připomenutí';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Série $count dní',
      few: 'Série $count dny',
      one: 'Série 1 den',
      zero: 'Žádná série',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Nejdelší série';

  @override
  String get habitCurrentStreak => 'Aktuální série';

  @override
  String get habitConsistency => 'Pravidelnost';

  @override
  String get habitLast90 => 'Posledních 90 dní';

  @override
  String get habitPaused => 'Pozastaveno';

  @override
  String get habitPause => 'Pozastavit návyk';

  @override
  String get habitResume => 'Obnovit návyk';

  @override
  String get habitDoneToday => 'Dnes splněno';

  @override
  String habitCountToday(int count, int target) {
    return 'Dnes $count z $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Odškrtnout „$name“';
  }

  @override
  String get habitNotScheduledToday => 'Dnes není v plánu';

  @override
  String get analyticsTitle => 'Přehledy';

  @override
  String get rangeWeek => '7 dní';

  @override
  String get rangeMonth => '30 dní';

  @override
  String get rangeQuarter => '90 dní';

  @override
  String get statFocusTime => 'Čas soustředění';

  @override
  String get statSessions => 'Sezení';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed dokončeno · $interrupted ukončeno předčasně';
  }

  @override
  String get statTasksDone => 'Dokončené úkoly';

  @override
  String get statCompletionRate => 'Dokončeno včas';

  @override
  String get statHabitConsistency => 'Pravidelnost návyků';

  @override
  String get statRetention => 'Zapamatované kartičky';

  @override
  String get statReviews => 'Opakování';

  @override
  String get statActiveGoals => 'Aktivní cíle';

  @override
  String get statEstimated => 'Odhadem odvedená práce';

  @override
  String get statEstimatedNote => 'Podle vašich odhadů, ne podle naměřeného času';

  @override
  String get statMeasuredNote => 'Naměřeno ze sezení soustředění';

  @override
  String get chartFocusByDay => 'Minuty soustředění za den';

  @override
  String get chartTasksByDay => 'Dokončené úkoly za den';

  @override
  String get chartTimeByProject => 'Čas podle projektu';

  @override
  String get chartProjectProgress => 'Pokrok projektů';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: celkem $total, nejlepší den $best';
  }

  @override
  String get analyticsNoData => 'Zatím málo dat';

  @override
  String get analyticsUnassigned => 'Nepřiřazeno';

  @override
  String get searchHint => 'Hledat všude…';

  @override
  String get searchRecent => 'Nedávná hledání';

  @override
  String get searchClearRecent => 'Vymazat nedávná hledání';

  @override
  String searchNoResults(String query) {
    return 'Žádné výsledky pro „$query“';
  }

  @override
  String get searchStartTyping =>
      'Hledejte v úkolech, poznámkách, kartičkách, cílech, událostech a dalších. Hledání zůstává v tomto zařízení.';

  @override
  String get searchCatTask => 'Úkoly';

  @override
  String get searchCatProject => 'Projekty';

  @override
  String get searchCatNote => 'Poznámky';

  @override
  String get searchCatFlashcard => 'Kartičky';

  @override
  String get searchCatDeck => 'Balíčky';

  @override
  String get searchCatGoal => 'Cíle';

  @override
  String get searchCatHabit => 'Návyky';

  @override
  String get searchCatEvent => 'Události';

  @override
  String get searchCatSession => 'Sezení';

  @override
  String get searchAll => 'Vše';

  @override
  String get assistantTitle => 'Asistent';

  @override
  String get assistantIntro =>
      'Pomoc s plánováním, která funguje ve vašem zařízení. Pro shrnutí a generování můžete volitelně připojit službu AI podle svého výběru.';

  @override
  String get assistantOnDevice => 'V zařízení';

  @override
  String get assistantCloud => 'Služba AI';

  @override
  String get assistantPlanDay => 'Naplánovat můj den';

  @override
  String get assistantPlanDayDesc =>
      'Seřadí otevřené úkoly podle naléhavosti, priority a odhadu a vmístí je kolem vašich událostí.';

  @override
  String get assistantExtractTasks => 'Vytáhnout úkoly z poznámky';

  @override
  String get assistantExtractTasksDesc =>
      'Najde v poznámce položky kontrolního seznamu a řádky s úkoly a udělá z nich úkoly.';

  @override
  String get assistantMakeCards => 'Vytvořit kartičky z poznámky';

  @override
  String get assistantMakeCardsDesc =>
      'Udělá kartičky z řádků „pojem: definice“ a z řádků s otázkou a odpovědí.';

  @override
  String get assistantSummarize => 'Shrnout poznámku';

  @override
  String get assistantSummarizeDesc =>
      'Vyžaduje službu AI. Poznámka se odešle až po vašem potvrzení.';

  @override
  String get assistantWorkload => 'Přehled vytížení';

  @override
  String get assistantWorkloadDesc =>
      'Porovná odhadovanou práci s vaším volným časem v tomto týdnu.';

  @override
  String get assistantPlanEmpty => 'Žádné otevřené úkoly k plánování. Užijte si volno.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Volný čas na soustředění dnes: $time';
  }

  @override
  String get assistantPlanOverflow => 'Tohle se dnes možná nevejde:';

  @override
  String get assistantChooseNote => 'Vyberte poznámku';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nalezeno $count úkolů',
      few: 'Nalezeny $count úkoly',
      one: 'Nalezen 1 úkol',
      zero: 'V poznámce nebyly nalezeny žádné úkoly',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nalezeno $count kartiček',
      few: 'Nalezeny $count kartičky',
      one: 'Nalezena 1 kartička',
      zero: 'V poznámce nebyly nalezeny žádné kartičky',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Vyberte balíček';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Odhadovaná práce: $estimated. Volný čas: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Máte naplánováno víc, než kolik je času. Zvažte přesunutí úkolů s nižší prioritou.';

  @override
  String get assistantWorkloadOk => 'Váš plán se vejde do dostupného času.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count otevřených úkolů nemá odhad.',
      few: '$count otevřené úkoly nemají odhad.',
      one: '1 otevřený úkol nemá odhad.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Služba AI';

  @override
  String get assistantProviderOff =>
      'Žádná služba není připojena. Nástroje v zařízení fungují dál.';

  @override
  String assistantProviderOn(String host) {
    return 'Připojeno k $host';
  }

  @override
  String get assistantEndpoint => 'Koncový bod API (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'Klíč API';

  @override
  String get assistantApiKeyStored => 'Bezpečně uloženo v tomto zařízení';

  @override
  String get assistantHttpsOnly => 'Povoleny jsou jen koncové body HTTPS';

  @override
  String get assistantConsentTitle => 'Odeslat tento obsah vaší službě AI?';

  @override
  String assistantConsentBody(String host) {
    return 'Vybraný text poznámky opustí toto zařízení a zpracuje ho $host. Nic jiného se neodesílá.';
  }

  @override
  String get assistantConsentAlways => 'U této služby se už neptat';

  @override
  String get assistantSend => 'Odeslat';

  @override
  String get assistantUnavailable => 'Službu AI se nepodařilo zastihnout. Zkuste to později.';

  @override
  String get assistantDisabledTitle => 'Asistent je vypnutý';

  @override
  String get assistantDisabledMessage =>
      'Zapněte ho a používejte nástroje pro plánování. Žádná data neopustí vaše zařízení, pokud nepřipojíte službu a nepotvrdíte každý požadavek.';

  @override
  String get assistantSummaryTitle => 'Shrnutí';

  @override
  String get assistantRemoveProvider => 'Odebrat službu';

  @override
  String get settingsTitle => 'Nastavení';

  @override
  String get settingsGeneral => 'Obecné';

  @override
  String get settingsLanguage => 'Jazyk';

  @override
  String get settingsLanguageSystem => 'Jazyk zařízení';

  @override
  String get settingsAppearance => 'Vzhled';

  @override
  String get settingsTheme => 'Motiv';

  @override
  String get themeLight => 'Světlý';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get themeSystem => 'Podle systému';

  @override
  String get settingsReduceMotion => 'Omezit pohyb';

  @override
  String get settingsReduceMotionDesc => 'Méně animací a pohyblivých pozadí';

  @override
  String get settingsFocus => 'Časovač soustředění';

  @override
  String get settingsWorkLength => 'Délka soustředění';

  @override
  String get settingsShortBreak => 'Krátká přestávka';

  @override
  String get settingsLongBreak => 'Dlouhá přestávka';

  @override
  String get settingsLongBreakEvery => 'Dlouhá přestávka po';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sezeních',
      few: '$count sezeních',
      one: '1 sezení',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Spouštět přestávky automaticky';

  @override
  String get settingsSound => 'Zvuk při dokončení';

  @override
  String get settingsDailyFocusTarget => 'Denní cíl soustředění';

  @override
  String get settingsWeeklyFocusTarget => 'Týdenní cíl soustředění';

  @override
  String get settingsNotifications => 'Oznámení';

  @override
  String get settingsNotificationsEnable => 'Povolit připomenutí';

  @override
  String get settingsQuietHours => 'Klidné hodiny';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Připomenutí návyků, cílů a opakování jsou ztlumená od $start do $end';
  }

  @override
  String get settingsReviewReminder => 'Připomenutí opakování kartiček';

  @override
  String get settingsPermissionDenied => 'Oznámení jsou zablokovaná v nastavení systému.';

  @override
  String get settingsPrivacy => 'Soukromí a data';

  @override
  String get settingsPrivacyStatement =>
      'Vaše data jsou uložena jen v tomto zařízení a jsou šifrovaná. Žádný účet, žádná analytika ani sledování.';

  @override
  String get settingsBackup => 'Vytvořit šifrovanou zálohu';

  @override
  String get settingsBackupDesc => 'Chráněno heslem, které si zvolíte';

  @override
  String get settingsRestore => 'Obnovit ze zálohy';

  @override
  String get settingsRestoreDesc => 'Nahradí všechna data v tomto zařízení';

  @override
  String get settingsErase => 'Smazat všechna data';

  @override
  String get settingsEraseDesc => 'Natrvalo smazat vše v tomto zařízení';

  @override
  String get settingsEraseConfirmTitle => 'Smazat všechna data?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Všechny úkoly, poznámky, kartičky, cíle, návyky, události a sezení budou natrvalo smazány. Pro potvrzení napište $word.';
  }

  @override
  String get settingsEraseWord => 'SMAZAT';

  @override
  String get settingsErased => 'Všechna data smazána';

  @override
  String get backupPassword => 'Heslo zálohy';

  @override
  String get backupPasswordConfirm => 'Potvrďte heslo';

  @override
  String backupPasswordHint(int count) {
    return 'Alespoň $count znaků. Pokud ho ztratíte, nelze ho obnovit.';
  }

  @override
  String get backupPasswordMismatch => 'Hesla se neshodují';

  @override
  String get backupPasswordShort => 'Heslo je příliš krátké';

  @override
  String get backupCreating => 'Šifrování zálohy…';

  @override
  String get backupCreated => 'Záloha je připravena k uložení';

  @override
  String get backupRestoring => 'Ověřování a obnovování…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Obnoveno $count položek',
      few: 'Obnoveny $count položky',
      one: 'Obnovena 1 položka',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Špatné heslo, nebo byl soubor změněn.';

  @override
  String get backupNotABackup => 'Tento soubor není zálohou Deep Focus.';

  @override
  String get backupCorrupted => 'Soubor zálohy je poškozený.';

  @override
  String get backupNewer =>
      'Tuto zálohu vytvořila novější verze aplikace. Nejprve aplikaci aktualizujte.';

  @override
  String get backupRestoreConfirmTitle => 'Nahradit všechna data?';

  @override
  String get backupRestoreConfirmBody =>
      'Vše, co je teď v tomto zařízení, nahradí záloha. Pokud obnovení selže, nic se nezmění.';

  @override
  String get settingsAbout => 'O aplikaci';

  @override
  String settingsVersion(String version) {
    return 'Verze $version';
  }

  @override
  String get settingsLicenses => 'Licence open source';

  @override
  String get settingsAssistant => 'Asistent';

  @override
  String get settingsAssistantEnable => 'Zapnout asistenta';

  @override
  String get settingsDashboard => 'Části domovské stránky';

  @override
  String get settingsTrash => 'Koš';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Koš je prázdný';

  @override
  String get trashHint => 'Smazané položky tu zůstanou, dokud je neodstraníte.';

  @override
  String get trashTasks => 'Úkoly';

  @override
  String get trashNotes => 'Poznámky';

  @override
  String get onboardWelcomeTitle => 'Vítejte ve svém novém pracovním prostoru';

  @override
  String get onboardWelcomeBody =>
      'Úkoly, soustředění, kalendář, poznámky, kartičky, cíle a návyky — pohromadě a krásně jednoduše.';

  @override
  String get onboardPrivateTitle => 'Soukromí od základu';

  @override
  String get onboardPrivateBody =>
      'Všechno zůstává šifrované v tomto zařízení. Žádný účet. Žádné sledování. Rozhodujete vy.';

  @override
  String get onboardLanguageTitle => 'Vyberte si jazyk';

  @override
  String get onboardNotifTitle => 'Jemná připomenutí';

  @override
  String get onboardNotifBody =>
      'Povolte oznámení pro připomenutí úkolů a upozornění na soustředění. Můžete to kdykoli změnit.';

  @override
  String get onboardGetStarted => 'Začít';

  @override
  String onboardStep(int current, int total) {
    return 'Krok $current z $total';
  }

  @override
  String get notifChannelReminders => 'Připomenutí';

  @override
  String get notifChannelRemindersDesc => 'Připomenutí úkolů, událostí, návyků a cílů';

  @override
  String get notifChannelFocus => 'Časovač soustředění';

  @override
  String get notifChannelFocusDesc => 'Upozornění na konec sezení nebo přestávky';

  @override
  String get notifTaskTitle => 'Připomenutí úkolu';

  @override
  String get notifEventTitle => 'Nadcházející událost';

  @override
  String notifEventBody(String title, String time) {
    return '$title v $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sezení soustředění dokončeno';

  @override
  String get notifFocusDoneBody => 'Skvělá práce. Čas na přestávku.';

  @override
  String get notifBreakDoneTitle => 'Přestávka skončila';

  @override
  String get notifBreakDoneBody => 'Připraveni na další sezení?';

  @override
  String get notifHabitTitle => 'Připomenutí návyku';

  @override
  String get notifReviewTitle => 'Kartičky jsou připravené';

  @override
  String get notifReviewBody => 'Krátké opakování udrží paměť v kondici.';

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
  String get weekdaysShort => 'P,Ú,S,Č,P,S,N';

  @override
  String a11yProgress(int value) {
    return 'Pokrok $value procent';
  }

  @override
  String a11yPriority(String level) {
    return 'Priorita: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Barva $index';
  }

  @override
  String get analyticsRangeLabel => 'Časové období';

  @override
  String get analyticsRefresh => 'Obnovit';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done z $total úkolů s termínem dokončeno včas';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Hotovo $done z $total úkolů';
  }

  @override
  String get analyticsNoProjects => 'Žádné aktivní projekty';

  @override
  String get analyticsNoFocus => 'V tomto období žádná sezení soustředění';

  @override
  String get analyticsHabitsNone => 'Žádné aktivní návyky';

  @override
  String get analyticsRetentionNote => 'Podíl naučených kartiček, které jste si pamatovali';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Volný čas se počítá $start–$end v pracovní dny ($days), bez událostí s časem. Odhadovaná práce je součet odhadů otevřených úkolů s termínem v příštích 7 dnech.';
  }

  @override
  String get assistantWorkdaysMonFri => 'pondělí–pátek';

  @override
  String get assistantWorkdaysSunThu => 'neděle–čtvrtek';

  @override
  String get assistantWorkloadDayOff => 'Volný den';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated naplánováno · $free volno';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Naplánováno od teď do $end, kolem dnešních událostí. Nejdřív úkoly po termínu, pak podle priority, termínu a odhadu.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Naplánovat jako časové bloky';

  @override
  String get assistantScheduleConfirmTitle => 'Přidat časové bloky do kalendáře?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Do dnešního kalendáře se přidá $count časových bloků.',
      few: 'Do dnešního kalendáře se přidají $count časové bloky.',
      one: 'Do dnešního kalendáře se přidá 1 časový blok.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Přidáno $count časových bloků',
      few: 'Přidány $count časové bloky',
      one: 'Přidán 1 časový blok',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Už v kalendáři';

  @override
  String get assistantPlanTimeline => 'Vejde se dnes';

  @override
  String get assistantNoEstimate => 'Přidejte odhad, aby šly naplánovat';

  @override
  String get assistantNoNotes => 'Zatím žádné poznámky. Nejdřív nějakou napište.';

  @override
  String get assistantNoteEmpty => 'Tato poznámka je prázdná.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vytvořeno $count úkolů',
      few: 'Vytvořeny $count úkoly',
      one: 'Vytvořen 1 úkol',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vytvořeno $count kartiček',
      few: 'Vytvořeny $count kartičky',
      one: 'Vytvořena 1 kartička',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vytvořit $count',
      one: 'Vytvořit 1',
      zero: 'Nic nevybráno',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Rozpoznáno: nezaškrtnutá políčka „- [ ]“ a řádky začínající TODO: nebo To do:';

  @override
  String get assistantCardsHint =>
      'Rozpoznáno: „pojem: definice“, „pojem — definice“ a dvojice řádků Q:/A:';

  @override
  String get assistantProviderHint =>
      'Použijte jakoukoli službu kompatibilní s OpenAI. Klíč zůstává v zabezpečeném úložišti zařízení a nikdy není součástí záloh.';

  @override
  String get assistantEndpointHelp => 'Například https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Ponechte prázdné, chcete-li zachovat uložený klíč';

  @override
  String get assistantApiKeyRequired => 'Zadejte klíč API';

  @override
  String get assistantProviderSaved => 'Služba uložena';

  @override
  String get assistantProviderRemoved => 'Služba odebrána a klíč smazán';

  @override
  String get assistantRemoveProviderConfirm =>
      'Odebrat službu a smazat uložený klíč API z tohoto zařízení?';

  @override
  String get assistantAskEveryTime => 'Ptát se před každým požadavkem';

  @override
  String get assistantSummarizing => 'Shrnování…';

  @override
  String assistantSummaryNote(String host) {
    return 'Vytvořila služba $host. Než se na to spolehnete, zkontrolujte to.';
  }

  @override
  String get assistantCopy => 'Kopírovat';

  @override
  String get assistantCopied => 'Zkopírováno';

  @override
  String get assistantConfigure => 'Nastavit službu';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Všechny události v této sérii byly přesunuty';

  @override
  String get calendarEventReminder => 'Připomenutí';

  @override
  String get calendarEventRepeat => 'Opakování';

  @override
  String get calendarEventColor => 'Barva';

  @override
  String get calendarDefaultColor => 'Použít barvu typu';

  @override
  String get calendarEventLinkedTask => 'Propojený úkol';

  @override
  String get calendarEventNoTask => 'Žádný propojený úkol';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count událostí',
      few: '$count události',
      one: '1 událost',
      zero: 'Žádné události',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count úkolů s termínem',
      few: '$count úkoly s termínem',
      one: '1 úkol s termínem',
      zero: 'žádné úkoly s termínem',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Přidejte událost nebo časový blok a naplánujte si tento den.';

  @override
  String get calendarNow => 'Aktuální čas';

  @override
  String get calendarRecurring => 'Opakuje se';

  @override
  String get calendarEventNotFound => 'Tato událost už neexistuje';

  @override
  String get calendarEventLocalTime => 'Časy jsou zobrazeny v časovém pásmu zařízení';

  @override
  String get calendarEventDeleted => 'Událost přesunuta do koše';

  @override
  String get calendarConflictMarker => 'Překrývá se s jinou událostí';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Změny se projeví u všech událostí v této sérii';

  @override
  String get calendarDragHintSeries => 'Přetažením opakované události přesunete celou sérii';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, termín úkolu';
  }

  @override
  String get startupErrorTitle => 'Vaše data se nepodařilo otevřít';

  @override
  String get startupErrorLocked =>
      'Šifrovací klíč k datům tohoto zařízení není dostupný. Nic nebylo smazáno. Často pomůže zařízení restartovat. Pokud jste zařízení nedávno obnovovali, obnovte data raději ze šifrované zálohy.';

  @override
  String get startupErrorCipher =>
      'Toto zařízení nepodporuje šifrované úložiště, které aplikace potřebuje. Nic nebylo uloženo nešifrovaně.';

  @override
  String get startupErrorRetry => 'Zkusit znovu';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartiček čeká na opakování',
      few: '$count kartičky čekají na opakování',
      one: '1 kartička čeká na opakování',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count k opakování';
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
  String get flashcardsValidationNonNegative => 'Zadejte 0 nebo více';

  @override
  String get flashcardsSearchCards => 'Hledat kartičky';

  @override
  String get flashcardsSearchEmpty => 'Hledání neodpovídají žádné kartičky';

  @override
  String get flashcardsCardAdded => 'Kartička přidána';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Opakovat $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopírovat do schránky';

  @override
  String get flashcardsExportTitle => 'Exportovat balíček';

  @override
  String get flashcardsDeleteDeck => 'Smazat balíček';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, další opakování za $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Otázka: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Odpověď: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Ukázat otázku';

  @override
  String get flashcardsImportField => 'Kartičky k importu';

  @override
  String get flashcardsNothingToStudy => 'Není co učit';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartiček připravených k učení',
      few: '$count kartičky připravené k učení',
      one: '1 kartička připravená k učení',
      zero: 'Žádné kartičky nejsou připravené',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Podle hodnocení';

  @override
  String get flashcardsDeckNotFound => 'Tento balíček už není k dispozici.';

  @override
  String get focusSessionDeleted => 'Sezení smazáno';

  @override
  String get focusDeleteConfirm =>
      'Smazat toto sezení z historie? Jeho čas se už nebude započítávat do vašich cílů.';

  @override
  String get focusUnlinkTask => 'Odebrat propojený úkol';

  @override
  String get focusNoteHint => 'Na čem jste pracovali?';

  @override
  String get focusTargetCaption => 'Naměřeno z uložených sezení';

  @override
  String get focusModeLabel => 'Režim časovače';

  @override
  String focusUpNext(String phase) {
    return 'Další: $phase';
  }

  @override
  String get focusStopwatchHint => 'Počítá nahoru, dokud nezastavíte.';

  @override
  String get focusOpenHint => 'Bez časového limitu. Skončete, až budete hotovi.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Připomenutí jsou v nastavení vypnutá. Na konec sezení vás nic neupozorní.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Vše';

  @override
  String get goalsFilterPeriod => 'Filtr období';

  @override
  String get goalsFilterStatus => 'Filtr stavu';

  @override
  String get goalsEmptyFiltered => 'Tomuto filtru neodpovídají žádné cíle';

  @override
  String goalsDueOn(String date) {
    return 'Termín $date';
  }

  @override
  String get goalsDeadline => 'Termín (volitelné)';

  @override
  String get goalsNoDeadline => 'Bez termínu';

  @override
  String get goalsSetDeadline => 'Nastavit termín';

  @override
  String get goalsRemoveDeadline => 'Odebrat termín';

  @override
  String get goalsDescription => 'Popis (volitelné)';

  @override
  String get goalsTitleLabel => 'Název';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Cíle dosaženo';

  @override
  String get goalsLogged => 'Pokrok zapsán';

  @override
  String get goalsEntryDeleted => 'Záznam odstraněn';

  @override
  String get goalsDeleteEntry => 'Odstranit záznam';

  @override
  String get goalsDeleted => 'Cíl smazán';

  @override
  String get goalsMarkActive => 'Označit jako aktivní';

  @override
  String get goalsNotFound => 'Tento cíl už není k dispozici';

  @override
  String get goalsLinkTask => 'Připojit úkol';

  @override
  String get goalsNoLinkedTasks => 'Zatím žádné propojené úkoly';

  @override
  String get goalsUnlinkTask => 'Odpojit úkol';

  @override
  String get goalsTaskOpen => 'Zatím nedokončeno';

  @override
  String get goalsTaskLinked => 'Úkol připojen';

  @override
  String get goalsTaskUnlinked => 'Úkol odpojen';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dokončených propojených úkolů',
      few: '$count dokončené propojené úkoly',
      one: '1 dokončený propojený úkol',
    );
    return 'Zahrnuje $_temp0 v tomto období';
  }

  @override
  String get goalsHistoryAllTime =>
      'Záznamy z dřívějších období tu zůstávají, ale počítají se jen do svého období.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Dnes hotovo $done z $total';
  }

  @override
  String get habitsNothingToday => 'Na dnešek nejsou naplánované žádné návyky';

  @override
  String get habitsDecrease => 'Odebrat jedno odškrtnutí';

  @override
  String get habitsResetToday => 'Vynulovat dnešek';

  @override
  String get habitsCheckInHint => 'Podržením upravíte';

  @override
  String get habitsName => 'Název';

  @override
  String get habitsColor => 'Barva';

  @override
  String get habitsValidationDays => 'Vyberte alespoň jeden den';

  @override
  String habitsReminderAt(String time) {
    return 'Každý den v $time';
  }

  @override
  String get habitsSetReminder => 'Nastavit čas připomenutí';

  @override
  String get habitsRemoveReminder => 'Odebrat připomenutí';

  @override
  String get habitsReminderNote =>
      'Připomenutí se zobrazí v naplánované dny, pokud jsou povolena oznámení.';

  @override
  String get habitsArchived => 'Návyk archivován';

  @override
  String get habitsNotFound => 'Tento návyk už není k dispozici';

  @override
  String get habitsLast30 => 'Posledních 30 dní';

  @override
  String get habitsConsistencyNone => 'Zatím málo dat';

  @override
  String get habitsCalendar => 'Historie odškrtnutí';

  @override
  String get habitsCalendarHint => 'Klepnutím na den ho opravíte.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count z $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Odškrtnutí za posledních 90 dní. Pravidelnost $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Odškrtnutí za posledních 90 dní. Zatím málo dat.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dní',
      few: '$count dny',
      one: '1 den',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Pozastavené dny sérii neovlivní.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Archivovat návyk';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× denně',
      few: '$count× denně',
      one: 'Jednou denně',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Ostatní poznámky';

  @override
  String get notesAllNotebooks => 'Všechny zápisníky';

  @override
  String get notesNotebookName => 'Název zápisníku';

  @override
  String get notesNotebookColor => 'Barva';

  @override
  String get notesDeleteNotebook => 'Smazat zápisník';

  @override
  String get notesDeleteNotebookMessage =>
      'Zápisník se odstraní. Jeho poznámky zůstanou a najdete je v Všech zápisnících.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Připněte důležité poznámky, ať zůstanou nahoře.';

  @override
  String get notesEmptyFavorites => 'Poznámky označené jako oblíbené se zobrazí tady.';

  @override
  String get notesEmptyArchived => 'Archivované poznámky se zobrazí tady.';

  @override
  String get notesEmptyFiltered => 'Těmto filtrům neodpovídají žádné poznámky.';

  @override
  String get notesArchivedSnack => 'Poznámka archivována';

  @override
  String get notesUnarchivedSnack => 'Poznámka vrácena mezi vaše poznámky';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Hotovo $done z $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formátování';

  @override
  String get notesWrite => 'Psát';

  @override
  String get notesPreviewEmpty => 'Zatím není co zobrazit.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Sem zatím neodkazují žádné jiné poznámky. Odkažte na tuto poznámku pomocí [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Dejte poznámce název, aby na ni mohly odkazovat jiné poznámky.';

  @override
  String get notesLinkedTasksEmpty => 'K této poznámce nejsou připojeny žádné úkoly.';

  @override
  String notesLinkMissing(String title) {
    return 'Poznámka s názvem „$title“ zatím neexistuje.';
  }

  @override
  String get notesNotFound => 'Tato poznámka už neexistuje.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Položka seznamu: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Otevřít poznámku $title';
  }

  @override
  String get notesTaskDone => 'Dokončeno';

  @override
  String get notifTimerDoneBody => 'Nastavený čas uplynul.';

  @override
  String get onboardingPrivatePointDevice => 'Uloženo jen v tomto zařízení, šifrovaně';

  @override
  String get onboardingPrivatePointAccount => 'Bez účtu';

  @override
  String get onboardingPrivatePointTracking => 'Bez analytiky, bez sledování';

  @override
  String get onboardingLanguageBody => 'Můžete to kdykoli změnit v Nastavení.';

  @override
  String get onboardingNext => 'Další';

  @override
  String get projectsActive => 'Aktivní';

  @override
  String get projectNameHint => 'např. Uvedení produktu';

  @override
  String get projectGoalHint => 'Jak vypadá hotovo?';

  @override
  String get projectNoDeadline => 'Bez termínu';

  @override
  String get projectTasksOpen => 'Otevřené úkoly';

  @override
  String get projectTasksCompleted => 'Dokončené úkoly';

  @override
  String get projectAddTask => 'Přidat úkol do projektu';

  @override
  String get projectAddNote => 'Nová poznámka k projektu';

  @override
  String get projectLinkedNotes => 'Poznámky';

  @override
  String get projectNoTasks => 'V tomto projektu zatím nejsou žádné úkoly';

  @override
  String get projectArchivedBadge => 'Archivováno';

  @override
  String get projectDeleted => 'Projekt přesunut do koše';

  @override
  String get projectDeleteMessage => 'Úkoly zůstanou ve vašem seznamu bez projektu.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, dokončeno $percent procent';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count výsledků',
      few: '$count výsledky',
      one: '1 výsledek',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtrovat podle typu';

  @override
  String searchRecentTap(String query) {
    return 'Znovu hledat $query';
  }

  @override
  String get settingsLanguageHint =>
      'Vyberte jazyk celé aplikace. Názvy jsou uvedeny ve vlastním jazyce.';

  @override
  String get settingsThemeHint => 'Světlý, tmavý nebo podle systému';

  @override
  String settingsDecrease(String setting) {
    return 'Snížit $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Zvýšit $setting';
  }

  @override
  String get settingsQuietStart => 'Začátek';

  @override
  String get settingsQuietEnd => 'Konec';

  @override
  String get settingsNotificationsHint =>
      'Tím se uloží vaše volba v aplikaci. Systém může také požádat o oprávnění.';

  @override
  String get settingsDashboardHint =>
      'Přetažením změníte pořadí. Vypněte části, které nepotřebujete.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Přesunout $section';
  }

  @override
  String get settingsDashboardReset => 'Obnovit výchozí pořadí';

  @override
  String get settingsAssistantDesc =>
      'Volitelná pomoc s plánováním. Nic neopustí toto zařízení, pokud nepřipojíte službu.';

  @override
  String get settingsAssistantSetup => 'Asistent a nastavení služby';

  @override
  String get settingsTrashDesc => 'Obnovit nebo natrvalo smazat odstraněné položky';

  @override
  String get settingsEraseFirstBody =>
      'Tuto akci nelze vrátit. Zvažte nejdřív vytvoření šifrované zálohy.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Napište $word';
  }

  @override
  String get settingsEraseFailed => 'Data se nepodařilo smazat. Nic se nezměnilo.';

  @override
  String get settingsAboutTagline =>
      'Soukromý pracovní prostor pro produktivitu, který funguje lokálně.';

  @override
  String get backupShowPassword => 'Zobrazit heslo';

  @override
  String get backupHidePassword => 'Skrýt heslo';

  @override
  String get backupSaved => 'Záloha uložena';

  @override
  String get backupFailed => 'Zálohu se nepodařilo vytvořit. Vaše data se nezměnila.';

  @override
  String get backupReadFailed => 'Vybraný soubor se nepodařilo přečíst.';

  @override
  String get backupRestoreFailed => 'Obnovení selhalo. Nic se nezměnilo.';

  @override
  String get backupShareSubject => 'Šifrovaná záloha Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Každých $count dní',
      few: 'Každé $count dny',
      one: 'Každý den',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Každých $count týdnů',
      few: 'Každé $count týdny',
      one: 'Každý týden',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Každých $count měsíců',
      few: 'Každé $count měsíce',
      one: 'Každý měsíc',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Každých $count let',
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
  String get repeatEndsLabel => 'Konec';

  @override
  String get repeatEndsAfter => 'Po určitém počtu opakování';

  @override
  String get repeatCountLabel => 'Počet opakování';

  @override
  String get reminderNone => 'Bez připomenutí';

  @override
  String get reminderCustomTime => 'V určitý čas';

  @override
  String get a11yDecrease => 'Snížit';

  @override
  String get a11yIncrease => 'Zvýšit';

  @override
  String get pickTaskTitle => 'Vyberte úkol';

  @override
  String get pickTaskEmpty => 'Žádné otevřené úkoly';

  @override
  String get tasksSearchTooltip => 'Hledat úkoly';

  @override
  String get tasksSectionOverdue => 'Po termínu';

  @override
  String get tasksSectionToday => 'Dnes';

  @override
  String get tasksRecurringSemantics => 'Opakuje se';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimální priorita';

  @override
  String get tasksFilterCategory => 'Kategorie';

  @override
  String get tasksFilterAnyCategory => 'Jakákoli kategorie';

  @override
  String get tasksFilterLabel => 'Štítek';

  @override
  String get tasksFilterAnyLabel => 'Jakýkoli štítek';

  @override
  String get tasksFilterReset => 'Zrušit filtry';

  @override
  String get tasksViewByProject => 'Podle projektu';

  @override
  String get tasksViewByPriority => 'Podle priority';

  @override
  String get tasksViewByCategory => 'Podle kategorie';

  @override
  String get tasksGroupNoCategory => 'Bez kategorie';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count úkoly',
      few: '$count úkoly',
      one: '1 úkolem',
    );
    return 'Blokováno $_temp0';
  }

  @override
  String get taskBlockedWarning => 'Tento úkol blokují nedokončené úkoly. Přesto dokončit?';

  @override
  String get taskStartFocus => 'Soustředit se na tento úkol';

  @override
  String get taskRemoveDate => 'Odebrat datum';

  @override
  String get taskAllDay => 'Bez konkrétního času';

  @override
  String get taskSaved => 'Úkol uložen';

  @override
  String get taskCreated => 'Úkol vytvořen';

  @override
  String get taskReminderNeedsDue => 'Pro relativní připomenutí nastavte termín';

  @override
  String get taskSubtaskDetailsHint =>
      'Nejdřív úkol uložte, pak můžete přidat dílčí úkoly, položky seznamu, štítky a závislosti.';

  @override
  String get taskLabelName => 'Název štítku';

  @override
  String get taskMoreDetails => 'Podrobnosti';

  @override
  String get taskPlanning => 'Plánování';

  @override
  String get taskOrganize => 'Uspořádání';

  @override
  String get taskBreakdown => 'Rozpad';

  @override
  String get trashDeleteTaskTitle => 'Smazat tento úkol natrvalo?';

  @override
  String get trashDeleteNoteTitle => 'Smazat tuto poznámku natrvalo?';

  @override
  String get trashDeleteBody => 'Tuto akci nelze vrátit.';

  @override
  String get trashEmptyTitle => 'Vysypat koš?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count položek bude natrvalo smazáno.',
      few: '$count položky budou natrvalo smazány.',
      one: '1 položka bude natrvalo smazána.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Obnoveno';

  @override
  String get trashPurged => 'Smazáno natrvalo';

  @override
  String trashDeletedOn(String date) {
    return 'Smazáno $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count položek',
      few: '$count položky',
      one: '1 položka',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Přečíst nahlas';

  @override
  String get flashcardsTtsUnavailable => 'Převod textu na řeč není v tomto zařízení k dispozici.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Pro tento jazyk není nainstalován žádný hlas. Přidejte ho v nastavení převodu textu na řeč v Androidu.';

  @override
  String get calendarAgenda => 'Program';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Jiskra',
      'rocket': 'Raketa',
      'book': 'Kniha',
      'work': 'Práce',
      'home': 'Domov',
      'heart': 'Srdce',
      'code': 'Kód',
      'palette': 'Paleta',
      'fitness': 'Fitness',
      'school': 'Škola',
      'travel': 'Cestování',
      'money': 'Úspory',
      'other': 'Ikona',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Další pole';

  @override
  String get cardFieldExample => 'Příklad';

  @override
  String get cardFieldExplanation => 'Vysvětlení';

  @override
  String get cardFieldPronunciation => 'Výslovnost';

  @override
  String get cardFieldNotes => 'Doplňující poznámky';

  @override
  String get projectMilestones => 'Milníky';

  @override
  String get milestoneAdd => 'Přidat milník';

  @override
  String get milestoneEdit => 'Upravit milník';

  @override
  String get milestoneTitleLabel => 'Milník';

  @override
  String get milestoneNoDate => 'Bez data';

  @override
  String get milestonesEmpty =>
      'Zatím žádné milníky. Přidejte kontrolní body s daty a sledujte projekt v kalendáři.';

  @override
  String get milestoneDeleted => 'Milník smazán';

  @override
  String milestoneDoneA11y(String title) {
    return 'Označit milník „$title“ jako hotový';
  }

  @override
  String calendarMilestone(String project) {
    return 'Milník · $project';
  }

  @override
  String get tasksViewInbox => 'Doručené';

  @override
  String get tasksViewArchived => 'Archivované';

  @override
  String get tasksEmptyInbox =>
      'Sem přistanou úkoly bez projektu nebo data. Roztřiďte je, až budete mít chvilku.';

  @override
  String get tasksEmptyArchived =>
      'Archivované úkoly se uchovávají tady, mimo vaše seznamy a připomenutí.';

  @override
  String get taskArchivedBadge => 'Archivováno';

  @override
  String get taskStatusInProgress => 'Rozpracováno';

  @override
  String get taskArchived => 'Úkol archivován';

  @override
  String get taskUnarchived => 'Úkol vrácen z archivu';

  @override
  String get focusPlanTitle => 'Plán sezení';

  @override
  String focusPlanTotal(String duration) {
    return 'Celkem $duration';
  }

  @override
  String get focusPlanRounds => 'Sezení soustředění';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Dlouhá přestávka po';

  @override
  String get focusPlanSkipLastBreak => 'Přeskočit poslední přestávku';

  @override
  String get focusPlanAutoBreaks => 'Spouštět přestávky automaticky';

  @override
  String get focusPlanAutoFocus => 'Po přestávce automaticky spustit soustředění';

  @override
  String get focusPlanSave => 'Uložit plán';

  @override
  String get focusPlanNameHint => 'např. Příprava na zkoušku';

  @override
  String get focusPlanSaved => 'Plán uložen';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min soustředění, $rest min přestávka';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Snížit $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Zvýšit $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sezení $current z $total';
  }

  @override
  String get focusSeriesComplete => 'Série dokončena. Výborně!';

  @override
  String get filterAll => 'Vše';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importováno · $duplicates duplicit přeskočeno · $invalid neúplných řádků';
  }

  @override
  String get flashcardsSuspend => 'Pozastavit kartičku';

  @override
  String get flashcardsResume => 'Obnovit kartičku';

  @override
  String get flashcardsSuspended => 'Kartička pozastavena: nebude se plánovat';

  @override
  String get flashcardsResumed => 'Kartička obnovena';

  @override
  String get flashcardsSuspendedFilter => 'Pozastavené';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown z $total kartiček';
  }

  @override
  String get flashcardsImportFile => 'Ze souboru';

  @override
  String get speechTitle => 'Řeč';

  @override
  String get speechAppLanguage => 'Jazyk aplikace';

  @override
  String get speechFrontLanguage => 'Jazyk lícu';

  @override
  String get speechBackLanguage => 'Jazyk rubu';

  @override
  String get speechRepeat => 'Opakovat každé čtení';

  @override
  String get speechRate => 'Rychlost';

  @override
  String get speechAutoRead => 'Číst otázku automaticky';

  @override
  String get speechHint =>
      'Používá hlasy nainstalované v tomto zařízení, offline. Pokud jazyk nemá hlas, dozvíte se to a nic jiného se místo něj nepoužije.';

  @override
  String get studyHowTitle => 'Jak se chcete učit?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zopakovat $count kartiček',
      few: 'Zopakovat $count kartičky',
      one: 'Zopakovat 1 kartičku',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Procvičit všechny kartičky (plán se nemění)';

  @override
  String get studyPracticeMistakes => 'Procvičit nedávné chyby';

  @override
  String get studyPracticeHint =>
      'Procvičovací kola nikdy nemění, kdy jsou kartičky na řadě. Opakování plán aktualizuje.';

  @override
  String get studyModeClassic => 'Klasicky';

  @override
  String get studyModeReverse => 'Obráceně';

  @override
  String get studyModeMixed => 'Oběma směry';

  @override
  String get studyModeTyped => 'Napsat odpověď';

  @override
  String get studyModeChoice => 'Výběr z možností';

  @override
  String get studyModeListening => 'Poslech';

  @override
  String get studyPractice => 'procvičování';

  @override
  String get studyNoMistakes => 'V tomto balíčku žádné nedávné chyby. Skvělé!';

  @override
  String get studyTypeAnswer => 'Napište odpověď';

  @override
  String get studyCheck => 'Zkontrolovat';

  @override
  String get studyKnewIt => 'Věděl jsem';

  @override
  String get studyDidntKnow => 'Nevěděl jsem';

  @override
  String studyMistakes(int count) {
    return 'Chybně ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Zopakovat chybné kartičky';

  @override
  String get studyCorrect => 'Správně';

  @override
  String get studyAlmost => 'Skoro — zkontrolujte pravopis';

  @override
  String get studyWrong => 'Ne tak docela';

  @override
  String get studyShowText => 'Zobrazit text';

  @override
  String get flashcardsImportFileFailed =>
      'Soubor se nepodařilo otevřít. Můžete místo toho vložit jeho obsah.';

  @override
  String get studyNoMatchingCards => 'Této volbě zatím neodpovídají žádné kartičky.';

  @override
  String get studyPracticeNew => 'Jen nové';

  @override
  String get studyPracticeHard => 'Těžké kartičky';

  @override
  String get studyPracticeFavorites => 'Oblíbené';

  @override
  String get studySessionSize => 'Kartiček na sezení';

  @override
  String get studySessionAll => 'Vše';

  @override
  String get studyOrder => 'Pořadí';

  @override
  String get studyOrderDue => 'Nejdéle po termínu nejdřív';

  @override
  String get studyOrderRandom => 'Náhodně';

  @override
  String get studyOrderHardest => 'Nejtěžší nejdřív';

  @override
  String get flashcardsHard => 'Těžké';

  @override
  String get flashcardsFavorites => 'Oblíbené';

  @override
  String get flashcardsFavorite => 'Přidat do oblíbených';

  @override
  String get flashcardsUnfavorite => 'Odebrat z oblíbených';

  @override
  String get flashcardsDuplicate => 'Duplikovat';

  @override
  String get flashcardsMoveTo => 'Přesunout do balíčku';

  @override
  String get flashcardsNoOtherDeck => 'Nejdřív vytvořte jiný balíček.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kartiček přesunuto',
      few: '$count kartičky přesunuty',
      one: 'Kartička přesunuta',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Přidat štítek';

  @override
  String get flashcardsTagHint => 'např. slovesa';

  @override
  String flashcardsSelected(int count) {
    return 'Vybráno: $count';
  }

  @override
  String get flashcardsSelectAll => 'Vybrat vše zobrazené';

  @override
  String flashcardsSelectCard(String front) {
    return 'Vybrat $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Vybavení $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Možný duplikát';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Tento balíček už obsahuje „$front“ → „$back“. Přesto uložit?';
  }

  @override
  String get flashcardsSaveAnyway => 'Přesto uložit';

  @override
  String get flashcardsStats => 'Statistiky';

  @override
  String get flashcardsStatTotal => 'Kartičky';

  @override
  String get flashcardsStatLearning => 'Učím se';

  @override
  String get flashcardsStatMatureCaption => 'Zapamatováno 21+ dní';

  @override
  String get flashcardsStatReviewsToday => 'Opakování dnes';

  @override
  String get flashcardsStatCorrect => 'Správné odpovědi';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Posledních $days dní';
  }

  @override
  String get flashcardsStatForget => 'Míra zapomínání';

  @override
  String get flashcardsStatForgetCaption => '„Znovu“ u naučených kartiček';

  @override
  String get flashcardsStatRecall => 'Vybavení teď';

  @override
  String get flashcardsStatRecallCaption => 'Odhad FSRS, opakované kartičky';

  @override
  String flashcardsStatActivity(int count) {
    return 'Opakování za den · celkem $count';
  }

  @override
  String get flashcardsStatHistory => 'Poslední odpovědi';

  @override
  String get flashcardsStatNoHistory =>
      'Zatím žádná opakování. Učte se z balíčku a uvidíte tu svůj pokrok.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Přečíst $field nahlas';
  }

  @override
  String get speechVoice => 'Hlas';

  @override
  String get speechVoiceDefault => 'Automaticky';

  @override
  String get speechVoiceOnline => 'vyžaduje internet';

  @override
  String get speechTest => 'Vyzkoušet hlas';

  @override
  String get importNext => 'Náhled';

  @override
  String get importPreviewTitle => 'Přiřadit sloupce k polím';

  @override
  String get importIgnoreColumn => 'Ignorovat';

  @override
  String importColumn(int n) {
    return 'Sloupec $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kartiček připraveno · $invalid neúplných řádků bude přeskočeno';
  }

  @override
  String get importNeedFrontBack => 'Vyberte, které sloupce jsou líc a rub.';

  @override
  String get actionMoveUp => 'Posunout nahoru';

  @override
  String get actionMoveDown => 'Posunout dolů';

  @override
  String get flashcardsLayoutTitle => 'Rozložení kartičky';

  @override
  String get flashcardsLayoutHint =>
      'Přejmenujte, skryjte nebo přeuspořádejte doplňková pole tohoto balíčku. Obsah kartiček se nikdy nemění.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Zobrazovat $field při učení';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Odhalovat odpověď postupně';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Nejdřív se zobrazí rub; každé další pole se otevře klepnutím.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Zobrazit $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Tento soubor je větší než $mb MB.';
  }

  @override
  String get flashcardsImage => 'Obrázek';

  @override
  String get flashcardsAudio => 'Zvuk';

  @override
  String get flashcardsAddImage => 'Přidat obrázek';

  @override
  String get flashcardsAddAudio => 'Přidat zvuk';

  @override
  String get flashcardsPlayAudio => 'Přehrát nahrávku';

  @override
  String get flashcardsAudioUnavailable => 'Tuto nahrávku nelze v tomto zařízení přehrát.';

  @override
  String get flashcardsCustomFields => 'Vaše pole';

  @override
  String get flashcardsTemplates => 'Šablony';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Pole $n';
  }

  @override
  String get flashcardsAddField => 'Přidat pole';

  @override
  String get flashcardsFieldName => 'Název pole';

  @override
  String get flashcardsFieldLangDefault => 'Jazyk strany';

  @override
  String get flashcardsTemplateConfirm =>
      'Šablona určuje, jak se pole zobrazují, a přidá svá pole. Vaše kartičky a stávající pole zůstanou beze změny.';

  @override
  String get flashcardsApplyTemplate => 'Použít';

  @override
  String get templateVocabulary => 'Slovní zásoba';

  @override
  String get templateTwoTranslations => 'Slovo se dvěma překlady';

  @override
  String get templateQuestionAnswer => 'Otázka a odpověď';

  @override
  String get templateDefinition => 'Pojem a definice';

  @override
  String get templateGrammar => 'Gramatické pravidlo';

  @override
  String get templateFieldPlural => 'Množné číslo';

  @override
  String get templateFieldTranslation2 => 'Druhý překlad';

  @override
  String get templateFieldSynonyms => 'Synonyma';

  @override
  String get templateFieldRule => 'Pravidlo';

  @override
  String get deckCategory => 'Úroveň nebo téma';

  @override
  String get deckCategoryHint => 'např. A1, Medicína';

  @override
  String get flashcardsSearchAll => 'Hledat ve všech kartičkách';

  @override
  String get flashcardsSearchAllHint => 'Slovo, překlad, příklad, poznámka, štítek…';

  @override
  String get flashcardsAllDecks => 'Všechny balíčky';

  @override
  String get flashcardsAllLanguages => 'Všechny jazyky';

  @override
  String get flashcardsLangUnset => 'Jazyk není nastaven';

  @override
  String get flashcardsLevelUnset => 'Bez úrovně nebo tématu';

  @override
  String get flashcardsByLanguage => 'Pokrok podle jazyka';

  @override
  String get flashcardsByLevel => 'Pokrok podle úrovně nebo tématu';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks balíčků · $cards kartiček · $mature naučených · $due k opakování · $correct správně (30 dní)';
  }

  @override
  String get flashcardsRecord => 'Nahrát';

  @override
  String get flashcardsRecording => 'Nahrávání…';

  @override
  String get flashcardsRecordStop => 'Zastavit a ponechat';

  @override
  String get flashcardsMicDenied =>
      'Přístup k mikrofonu je vypnutý. Pro nahrávání ho povolte v nastavení systému.';

  @override
  String get flashcardsRecordFailed => 'Nahrávání není v tomto zařízení k dispozici.';

  @override
  String get soundsTitle => 'Zvuky';

  @override
  String get soundsNature => 'Příroda';

  @override
  String get soundsNoise => 'Šum pro soustředění';

  @override
  String get soundRain => 'Déšť';

  @override
  String get soundStorm => 'Bouřka';

  @override
  String get soundRiver => 'Řeka';

  @override
  String get soundOcean => 'Mořské vlny';

  @override
  String get soundFire => 'Táborák';

  @override
  String get soundForest => 'Ptáci v lese';

  @override
  String get soundNight => 'Letní noc';

  @override
  String get soundWhite => 'Bílý šum';

  @override
  String get soundPink => 'Růžový šum';

  @override
  String get soundBrown => 'Hnědý šum';

  @override
  String get soundsPlay => 'Přehrát';

  @override
  String get soundsSleep => 'Časovač usnutí';

  @override
  String get soundsSleepOff => 'Vypnuto';

  @override
  String soundsSleepAt(String time) {
    return 'Zastaví se v $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Najednou může hrát nejvýš $count zvuků.';
  }

  @override
  String get soundsHint =>
      'Klepnutím na zvuk začněte. Smíchejte několik a nastavte každému hlasitost.';

  @override
  String get soundsMixer => 'Mix';

  @override
  String soundsVolumeOf(String name) {
    return 'Hlasitost: $name';
  }

  @override
  String get soundsChannel => 'Zvuky přírody';

  @override
  String get settingsEndTone => 'Zvuk na konci časovače';

  @override
  String get toneGentle => 'Jemné pípnutí';

  @override
  String get toneBeeps => 'Pípnutí';

  @override
  String get toneWood => 'Ťukání do dřeva';

  @override
  String get toneBird => 'Volání ptáka';

  @override
  String get toneStream => 'Potůček';

  @override
  String get toneSystem => 'Zvuk telefonu';

  @override
  String get speechOnPhone => 'V tomto telefonu';

  @override
  String get speechAllLanguages => 'Všechny jazyky';

  @override
  String get speechSearchLanguage => 'Hledat jazyky';

  @override
  String get speechGetVoices => 'Stáhnout další hlasy';

  @override
  String get speechGetVoicesHint =>
      'Jazyky bez hlasu si můžete stáhnout v nastavení řeči v telefonu.';

  @override
  String get speechSettingsFailed => 'Nastavení řeči v tomto telefonu se nepodařilo otevřít.';

  @override
  String get speechVoiceMissing => 'Není nainstalován hlas';

  @override
  String get speechPause => 'Pauza mezi opakováními';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'S odpovědí přečíst i příklad';

  @override
  String get flashListen => 'Poslech';

  @override
  String get flashListenNext => 'Další kartička';

  @override
  String get flashListenEmpty => 'Nejsou kartičky k poslechu.';

  @override
  String get flashViewTable => 'Tabulka';

  @override
  String get flashViewCards => 'Kartičky';

  @override
  String get flashSwapSides => 'Prohodit sloupce';

  @override
  String get flashSort => 'Řadit';

  @override
  String get flashSortNewest => 'Nejnovější nejdřív';

  @override
  String get flashSortAlpha => 'A až Z';

  @override
  String get flashSortDue => 'K opakování nejdřív';

  @override
  String get flashSortHard => 'Nejtěžší nejdřív';

  @override
  String get flashPasteCards => 'Vložit kartičky';

  @override
  String get flashClipboardEmpty => 'Schránka neobsahuje text.';

  @override
  String get flashMenuAdd => 'Přidat kartičky';

  @override
  String get flashMenuDeck => 'Balíček';

  @override
  String get flashToday => 'Dnes';

  @override
  String get flashStudyNow => 'Učit se';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zodpovězených kartiček',
      few: '$count zodpovězené kartičky',
      one: '1 zodpovězená kartička',
      zero: 'Žádné zodpovězené kartičky',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Déšť v lese';

  @override
  String get autoBackupTitle => 'Automatické zálohy';

  @override
  String get autoBackupDesc => 'Každý den v tomto telefonu; uchovává se posledních 7';

  @override
  String get autoBackupHint =>
      'Tyto kopie zůstávají v tomto telefonu a při odinstalaci aplikace se smažou. Při přechodu na nový telefon uložte soubor pomocí „Zálohovat“.';

  @override
  String get autoBackupNone => 'Zatím žádná automatická záloha. První se vytvoří dnes.';

  @override
  String get autoBackupRestore => 'Obnovit';

  @override
  String autoBackupConfirm(String date) {
    return 'Nahradit všechna současná data zálohou z $date?';
  }

  @override
  String get autoBackupRestored => 'Obnoveno.';

  @override
  String get errorLogTitle => 'Protokol chyb';

  @override
  String get errorLogHint =>
      'Když se něco pokazí, zapíše se to sem: jen druh chyby a místo v kódu, nikdy váš obsah. Sdílejte ho a pomozte problém opravit.';

  @override
  String get errorLogEmpty => 'Nezaznamenány žádné chyby.';

  @override
  String get errorLogClear => 'Vymazat';

  @override
  String get soundsWithFocus => 'Přehrávat při sezeních soustředění';

  @override
  String get soundsWithFocusHint =>
      'Váš mix se spustí se sezením soustředění a o přestávkách se pozastaví.';

  @override
  String get soundsSavedMixes => 'Uložené mixy';

  @override
  String get soundsSaveMix => 'Uložit tento mix';

  @override
  String get soundsMixNameHint => 'Název, např. Deštivá knihovna';

  @override
  String soundsDeleteMix(String name) {
    return 'Smazat mix „$name“?';
  }

  @override
  String get settingsReviewReminderHint => 'Jednou denně, jen když jsou kartičky k opakování';

  @override
  String get settingsReviewTime => 'Čas připomenutí';

  @override
  String get shortcutFocus => 'Soustředění';

  @override
  String get shortcutNewTask => 'Nový úkol';

  @override
  String get shortcutReview => 'Opakovat kartičky';

  @override
  String get shortcutSounds => 'Zvuky přírody';

  @override
  String get myDayTitle => 'Začít můj den';

  @override
  String get myDayHint => 'Váš den na jeden pohled a pak soustředění jedním klepnutím';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count úkolů na dnešek',
      few: '$count úkoly na dnešek',
      one: '1 úkol na dnešek',
      zero: 'Na dnešek žádné úkoly',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Dnes už žádné události';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Další: $title v $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zbývá $count návyků',
      few: 'Zbývají $count návyky',
      one: 'Zbývá 1 návyk',
      zero: 'Všechny návyky splněny',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Začít sezením soustředění';

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
  String get settingsHijri => 'Datum podle hidžry';

  @override
  String get settingsHijriHint => 'Zobrazuje se v kalendáři a na domovské obrazovce (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dní',
      few: '$count dny',
      one: '1 den',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Dnes $done z $goal kartiček';
  }

  @override
  String get studyGoalReached => 'Denní cíl splněn. Výborně!';

  @override
  String get studyWeekTitle => 'Váš týden';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Za 7 dní $count zodpovězených kartiček',
      few: 'Za 7 dní $count zodpovězené kartičky',
      one: 'Za 7 dní 1 zodpovězená kartička',
      zero: 'Za 7 dní žádné zodpovězené kartičky',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration soustředění za 7 dní';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Série: $current · Nejlepší: $best';
  }

  @override
  String get studyGoalTitle => 'Denní cíl (kartičky)';

  @override
  String get studyGoalOff => 'Vypnuto';

  @override
  String get focusDndTitle => 'Nerušit během soustředění';

  @override
  String get focusDndHint => 'Zapne se při každém sezení soustředění a o přestávce se vypne';

  @override
  String get focusDndNeedsAccess => 'Pro použití povolte přístup v nastavení telefonu';

  @override
  String get voiceInput => 'Diktovat';

  @override
  String get voiceInputPrompt => 'Mluvte';

  @override
  String get voiceInputUnavailable =>
      'Hlasové zadávání není v tomto telefonu k dispozici. Nainstalujte nebo zapněte službu rozpoznávání řeči (například Rozpoznávání a syntéza řeči od Googlu).';

  @override
  String get prayerFajr => 'Fadžr';

  @override
  String get prayerSunrise => 'Východ slunce';

  @override
  String get prayerDhuhr => 'Zuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Íša';

  @override
  String get prayerMethodMwl => 'Muslimská světová liga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egyptský všeobecný úřad';

  @override
  String get prayerMethodJordan => 'Jordánsko, ministerstvo awqáfu';

  @override
  String get prayerMethodKarachi => 'Univerzita islámských věd, Karáčí';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Oblast Perského zálivu';

  @override
  String get prayerMethodKuwait => 'Kuvajt';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Turecko, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malajsie, Indonésie';

  @override
  String get prayerMethodFrance => 'Francie (12°)';

  @override
  String get prayerMethodRussia => 'Rusko, Duchovní správa';

  @override
  String prayerNotifTitle(String name) {
    return 'Čas na $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Čas modlitby · $time';
  }

  @override
  String get prayerTitle => 'Časy modliteb';

  @override
  String get prayerOffHint =>
      'Vyberte své město a uvidíte časy modliteb. Počítají se v telefonu; přístup k poloze není potřeba.';

  @override
  String get prayerChooseCity => 'Vybrat město';

  @override
  String get prayerCity => 'Město';

  @override
  String get prayerCitySearch => 'Hledat město';

  @override
  String get prayerMethod => 'Metoda výpočtu';

  @override
  String get prayerHanafiAsr => 'Hanafijský asr (pozdější čas)';

  @override
  String get prayerReminders => 'Upozornit při každém čase modlitby';

  @override
  String get prayerPauseFocus => 'Pozastavit soustředění v čas modlitby';

  @override
  String get prayerPauseFocusHint => 'Běžící sezení se pozastaví; po modlitbě pokračujte';

  @override
  String get prayerTurnOff => 'Vypnout časy modliteb';

  @override
  String get prayerAccuracyNote =>
      'Vypočítané časy se mohou o pár minut lišit od vaší místní mešity.';

  @override
  String prayerNext(String name, String time) {
    return '$name v $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Tento soubor Anki používá nejnovější formát. V Anki ho exportujte znovu se zapnutou volbou „Podporovat starší verze Anki“ a importujte ten soubor.';

  @override
  String get importTemplate => 'Šablona tabulky';

  @override
  String get importTemplateFront => 'jablko';

  @override
  String get importTemplateBack => 'kulaté ovoce';

  @override
  String get importTemplateExample => 'Každý den jím jablko.';

  @override
  String get importTemplateTag => 'jídlo';

  @override
  String get starterTitle => 'Úvodní balíčky';

  @override
  String get starterHint =>
      'Přidejte si jeden a hned se začněte učit. Později ho můžete upravit nebo smazat.';

  @override
  String get starterAdd => 'Přidat';

  @override
  String get starterWords => 'Běžná anglická slova (arabsky)';

  @override
  String get starterCapitals => 'Hlavní města světa';

  @override
  String get starterElements => 'Chemické prvky';

  @override
  String get settingsAccent => 'Barva zvýraznění';

  @override
  String get accentViolet => 'Fialová';

  @override
  String get accentBlue => 'Modrá';

  @override
  String get accentTeal => 'Modrozelená';

  @override
  String get accentGreen => 'Zelená';

  @override
  String get accentRose => 'Růžová';

  @override
  String get accentAmber => 'Jantarová';

  @override
  String get settingsFlashTextSize => 'Velikost textu kartiček';

  @override
  String get settingsFlashTextSample => 'Příklad';

  @override
  String get widgetStartFocus => 'Klepněte a soustřeďte se';

  @override
  String widgetFocusUntil(String time) {
    return 'Soustředění do $time';
  }

  @override
  String get widgetNoCardsDue => 'Kartičky: vše hotovo';

  @override
  String get faqMyDayQ => 'Co dělá „Začít můj den“?';

  @override
  String get faqMyDayA =>
      'Jednou denně ho nabídne domovská obrazovka: uvidíte dnešní úkoly, další událost, zbývající návyky a kartičky k opakování a jedním klepnutím spustíte sezení soustředění. Podržením ikony aplikace získáte rychlé akce, nebo si přidejte widget na domovskou obrazovku a uvidíte čas soustředění a kartičky k opakování.';

  @override
  String get faqTasksQ => 'Jak přidám úkol s připomenutím?';

  @override
  String get faqTasksA =>
      'Klepněte na Nový úkol na Domů nebo na + v Úkolech. Napište název nebo ho nadiktujte mikrofonem a pak nastavte termín, čas a připomenutí. Úkoly po termínu jsou na prvním místě.';

  @override
  String get faqFocusQ => 'Jak funguje časovač soustředění?';

  @override
  String get faqFocusA =>
      'Vyberte Pomodoro, odpočet nebo volný čas a stiskněte Spustit; přestávky mohou následovat automaticky. V Nastavení můžete zvolit zvuk na konci, zapnout Nerušit během soustředění a pouštět při každém sezení zvuky přírody.';

  @override
  String get faqSoundsQ => 'Mohu míchat zvuky přírody?';

  @override
  String get faqSoundsA =>
      'Zapněte až šest skutečných nahrávek, každé nastavte hlasitost a mix si uložte pod názvem. Hrají dál na pozadí a časovač usnutí je může zastavit. Žádná hudba se nepoužívá.';

  @override
  String get faqCalendarQ => 'Umí kalendář zobrazit data podle hidžry?';

  @override
  String get faqCalendarA =>
      'Ano. Data podle hidžry (Umm al-Qura) se v arabštině zobrazují automaticky a v Nastavení je lze zapnout pro jakýkoli jazyk. Události, úkoly s termínem a milníky projektů se zobrazují společně.';

  @override
  String get faqFlashcardsQ => 'Jak opakování rozhoduje, které kartičky uvidím?';

  @override
  String get faqFlashcardsA =>
      'Kartičky, které dobře znáte, se vracejí po delší době, a ty, které nevíte, se vracejí brzy (opakování v intervalech). Každou odpověď ohodnoťte jako Znovu, Těžké, Dobré nebo Snadné. Nastavte si denní cíl a udržujte sérii na kartě Dnes. U balíčku nastavte datum zkoušky a uvidíte, kolik dní zbývá a kolik nových kartiček se máte denně učit. Řazení „Moje pořadí“ umožní přetahovat kartičky na místo, klepnutím na reproduktor na kterékoli straně si ji poslechnete a rychlost a opakování nastavíte v nabídce Řeč.';

  @override
  String get faqImportQ => 'Mohu přenést kartičky z Anki nebo Excelu?';

  @override
  String get faqImportA =>
      'Ano. V balíčku zvolte Importovat a vyberte soubor: Anki (.apkg), Excel (.xlsx) nebo CSV, a přiřaďte sloupce. Pomocí „Šablona tabulky“ můžete psát kartičky na počítači. Obrázky a zvuky ze souborů Anki se neimportují.';

  @override
  String get faqNotesQ => 'Co umí poznámky?';

  @override
  String get faqNotesA =>
      'Pište volně s kontrolními seznamy a formátováním, připínejte nebo označujte důležité poznámky jako oblíbené, přidávejte štítky a propojujte poznámky s úkoly. Tlačítkem mikrofonu můžete diktovat. Novou poznámku můžete začít ze šablony (přednáška, shrnutí knihy, deník, týdenní plán) a tlačítkem obrázku přidáte fotky.';

  @override
  String get faqHabitsQ => 'Jak se počítají série návyků?';

  @override
  String get faqHabitsA =>
      'Den se počítá, když v naplánovaný den dosáhnete cíle návyku. Pozastavení návyku sérii ochrání. Každý návyk může mít vlastní čas připomenutí.';

  @override
  String get faqGoalsQ => 'Jak cíle sledují pokrok?';

  @override
  String get faqGoalsA =>
      'Zadejte cíli cílovou hodnotu a jednotku a zapisujte pokrok. Jeho karta ukazuje, jak daleko jste a kolik zbývá do termínu.';

  @override
  String get faqProjectsQ => 'K čemu jsou projekty?';

  @override
  String get faqProjectsA =>
      'Seskupte úkoly do projektu, přidejte milníky s daty a sledujte celkový pokrok. Milníky se zobrazují i v kalendáři.';

  @override
  String get faqInsightsQ => 'Co ukazují Přehledy?';

  @override
  String get faqInsightsA =>
      'Čas soustředění, dokončené úkoly a učení za dny a týdny s jemnými tipy. Vše se počítá ve vašem telefonu.';

  @override
  String get faqSpacesQ => 'Kde jsou všechny části?';

  @override
  String get faqSpacesA =>
      'Prostory obsahují všechny části aplikace (poznámky, balíčky, návyky, cíle, projekty, zvuky a další), takže hlavní lišta zůstává jednoduchá.';

  @override
  String get faqBackupQ => 'Jak se zálohují moje data?';

  @override
  String get faqBackupA =>
      'Aplikace každý den v tichosti uloží šifrovanou kopii do tohoto telefonu a ponechá posledních 7. V Nastavení můžete také exportovat zálohu chráněnou heslem a obnovit ji v jiném telefonu.';

  @override
  String get faqPrayerQ => 'Jak fungují časy modliteb?';

  @override
  String get faqPrayerA =>
      'Vyberte své město v Nastavení → Časy modliteb. Časy se počítají v telefonu metodou, která se tam používá, a metodu i školu pro asr můžete změnit. Můžete dostávat upozornění u každé modlitby a běžící sezení soustředění se pozastaví.';

  @override
  String get faqPrivacyQ => 'Kde jsou moje data uložena?';

  @override
  String get faqPrivacyA =>
      'Jen ve vašem telefonu, v šifrované databázi. Žádný účet ani sledování. Internet používají jen funkce, které sami zapnete, například volitelný asistent.';

  @override
  String get faqAssistantQ => 'Co je asistent?';

  @override
  String get faqAssistantA =>
      'Volitelný pomocník, kterého v Nastavení připojíte ke své vlastní službě AI. Ve výchozím stavu je vypnutý a před odesláním jakéhokoli textu poznámky se zeptá.';

  @override
  String get tourPlanTitle => 'Naplánujte si den';

  @override
  String get tourPlanBody =>
      'Úkoly, kalendář a návyky na jednom klidném místě. Každé ráno začněte „Začít můj den“.';

  @override
  String get tourFocusTitle => 'Soustřeďte se naplno';

  @override
  String get tourFocusBody =>
      'Sezení s časovačem, skutečné zvuky přírody, Nerušit a jemné tóny na konci.';

  @override
  String get tourLearnTitle => 'Učte se natrvalo';

  @override
  String get tourLearnBody =>
      'Kartičky s opakováním v intervalech, čtení nahlas v mnoha jazycích a import z Anki nebo Excelu.';

  @override
  String get helpTitle => 'Nápověda a otázky';

  @override
  String get helpOpen => 'Otevřít';

  @override
  String get helpTour => 'Projít prohlídku';

  @override
  String get tourNext => 'Další';

  @override
  String get tourDone => 'Pojďme na to';

  @override
  String get transferColTitle => 'Název';

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
  String get transferColCategory => 'Kategorie';

  @override
  String get transferTitle => 'Import a export';

  @override
  String get transferSaveAs => 'Uložit jako';

  @override
  String get transferImport => 'Importovat ze souboru';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV nebo tabulka ve Wordu. Sloupce: název, termín (2026-12-31), priorita 0-3, hotovo, projekt, poznámky. Úkoly, které už v aplikaci jsou, se přeskočí.';

  @override
  String get transferImportNotesHint =>
      'Ze souborů Word, Markdown nebo textových souborů se stane poznámka. Excel nebo CSV: jedna poznámka na řádek (název, text).';

  @override
  String get transferSaved => 'Soubor uložen';

  @override
  String get transferFailed => 'Soubor se nepodařilo vytvořit. Nic se nezměnilo.';

  @override
  String get transferUnsupported =>
      'Tento soubor tu nelze přečíst. Použijte Excel, CSV, Word, Markdown nebo text.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Přidáno $added',
      few: 'Přidány $added',
      one: 'Přidán 1',
      zero: 'Nic nového k přidání',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Text';

  @override
  String get transferAllNotes => 'Všechny poznámky';

  @override
  String get transferThisNote => 'Tato poznámka';

  @override
  String get transferDeckFormats => 'Uložit jako Excel, Word nebo PDF';

  @override
  String get faqFilesQ => 'Mohu používat soubory Excel, Word nebo PDF?';

  @override
  String get faqFilesA =>
      'Ano. Úkoly a Poznámky mají nahoře tlačítko importu a exportu (dvě šipky) a každý balíček ho má v nabídce. Ukládejte jako Excel, CSV, Word nebo PDF, nebo přineste soubory Excel, CSV, Word, Markdown či textové. Názvy sloupců mohou být v kterémkoli jazyce aplikace a soubory, které jste uložili, lze vždy znovu importovat.';

  @override
  String get tplLecture => 'Přednáška';

  @override
  String get tplBook => 'Shrnutí knihy';

  @override
  String get tplJournal => 'Deník';

  @override
  String get tplWeek => 'Týdenní plán';

  @override
  String get tplLectureBody => '## Hlavní body\n- \n\n## Otázky\n- [ ] \n\n## Shrnutí\n';

  @override
  String get tplBookBody =>
      '## Hlavní myšlenka\n\n## Co jsem se naučil\n- \n\n## Citáty\n> \n\n## K použití\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Jsem vděčný za\n- \n\n## Dnešní soustředění\n- [ ] \n\n## Poznámky\n';

  @override
  String get tplWeekBody =>
      '## Cíle na tento týden\n- [ ] \n\n### Sobota\n- [ ] \n\n### Neděle\n- [ ] \n\n### Pondělí\n- [ ] \n\n### Úterý\n- [ ] \n\n### Středa\n- [ ] \n\n### Čtvrtek\n- [ ] \n\n### Pátek\n- [ ] \n';

  @override
  String get tplHint => 'Začít ze šablony';

  @override
  String get noteImage => 'Obrázek';

  @override
  String get noteAddImage => 'Přidat obrázek';

  @override
  String get noteImageUnreadable => 'Tento soubor není obrázek, který aplikace umí přečíst.';

  @override
  String get noteImageTooLarge => 'Tento obrázek je příliš velký.';

  @override
  String get examSet => 'Nastavit datum zkoušky';

  @override
  String get examDate => 'Datum zkoušky';

  @override
  String get examToday => 'Zkouška je dnes. Hodně štěstí!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zkouška za $count dní',
      few: 'Zkouška za $count dny',
      one: 'Zkouška zítra',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'učte se $count nových kartiček denně',
      few: 'učte se $count nové kartičky denně',
      one: 'učte se 1 novou kartičku denně',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'všechny kartičky naučené, dál opakujte';

  @override
  String examRaiseLimit(int count) {
    return 'Zobrazovat $count nových kartiček denně';
  }

  @override
  String get backupDriveHint =>
      'Chcete-li mít kopii online, zvolte na obrazovce ukládání, která se otevře, Disk Google (nebo jinou cloudovou aplikaci).';

  @override
  String get flashShareDeck => 'Sdílet balíček s přítelem';

  @override
  String get flashSortManual => 'Moje pořadí (přetažení)';

  @override
  String get flashReorderHint => 'Kartičku přesunete tak, že podržíte úchyt a přetáhnete ji.';

  @override
  String get flashReorderNeedsAll => 'Chcete-li přetahovat kartičky, vymažte hledání a filtry.';

  @override
  String get flashDragHandle => 'Přesuňte přetažením';

  @override
  String get reportTitle => 'Měsíční přehled';

  @override
  String get reportFocus => 'Čas soustředění';

  @override
  String reportSessions(int count) {
    return '$count sezení';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Nejlepší den: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktivních dní';
  }

  @override
  String get reportCards => 'Zopakované kartičky';

  @override
  String reportCardsKnown(String percent) {
    return 'Zapamatováno $percent';
  }

  @override
  String get reportTasks => 'Dokončené úkoly';

  @override
  String get reportHabits => 'Splněné návyky';

  @override
  String get reportEmpty => 'Tento měsíc zatím nic nezaznamenáno.';

  @override
  String get reportSave => 'Uložit jako PDF nebo Word';

  @override
  String get reportPrevMonth => 'Předchozí měsíc';

  @override
  String get reportNextMonth => 'Další měsíc';

  @override
  String get careTitle => 'Péče o telefon a data';

  @override
  String get storageTitle => 'Úložiště';

  @override
  String get storageSubtitle => 'Co zabírá místo a úklid nepoužívaných obrázků';

  @override
  String get storagePictures => 'Obrázky v poznámkách';

  @override
  String get storageCardMedia => 'Obrázky a zvuk v kartičkách';

  @override
  String get storageText => 'Text poznámek';

  @override
  String get storageFree => 'Volné místo v telefonu';

  @override
  String get storageLow =>
      'Telefon je téměř plný. Uvolněte trochu místa, aby zálohy a připomenutí dál fungovaly.';

  @override
  String storageUnused(int count, String size) {
    return '$count nepoužívaných obrázků ($size)';
  }

  @override
  String get storageNoUnused => 'Žádné nepoužívané obrázky. Vše je v pořádku.';

  @override
  String get storageClean => 'Odstranit nepoužívané obrázky';

  @override
  String storageCleaned(int count) {
    return 'Odstraněno obrázků: $count';
  }

  @override
  String get storageHint =>
      'Obrázek se počítá jako nepoužívaný, jen když ho nezobrazuje žádná poznámka, ani poznámky v koši.';

  @override
  String get batteryTitle => 'Udržte připomenutí v chodu';

  @override
  String get batterySubtitle =>
      'Některé telefony zastavují aplikace na pozadí. Zkontrolujte ten svůj.';

  @override
  String get batteryStatusOk =>
      'Spořič baterie tuto aplikaci neomezuje. Připomenutí a zvuky by měly přicházet včas.';

  @override
  String get batteryStatusLimited =>
      'Spořič baterie může tuto aplikaci na pozadí zastavit, takže připomenutí a zvuky mohou přijít pozdě nebo vůbec.';

  @override
  String get batteryOpen => 'Otevřít nastavení baterie';

  @override
  String get batteryOpenApp => 'Otevřít nastavení aplikace';

  @override
  String get batteryGeneric =>
      'V nastavení baterie vyberte tuto aplikaci a nastavte ji na Bez omezení (nebo Neoptimalizovat).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: otevřete také Zabezpečení › Oprávnění › Automatické spuštění, zapněte tuto aplikaci a spořič baterie nastavte na Bez omezení.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: otevřete Baterie › tato aplikace, povolte aktivitu na pozadí a automatické spuštění a zamkněte aplikaci v seznamu posledních aplikací.';

  @override
  String get batterySamsung =>
      'Samsung: Baterie › Limity využití na pozadí: odeberte tuto aplikaci z Uspaných aplikací a Hluboce uspaných aplikací.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Spouštění aplikací › tato aplikace › spravovat ručně a povolte automatické spuštění, sekundární spuštění a běh na pozadí.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Baterie › Spotřeba energie na pozadí › povolte tuto aplikaci a v oprávněních zapněte automatické spuštění.';

  @override
  String get whatsNewTitle => 'Co je nového';

  @override
  String get whatsNewSubtitle => 'Nejnovější změny v několika řádcích';

  @override
  String get whatsNewDone => 'Rozumím';

  @override
  String get whatsNewOrderTitle => 'Přetáhněte kartičky do vlastního pořadí';

  @override
  String get whatsNewOrderBody =>
      'V balíčku zvolte Řadit › Moje pořadí, pak podržte úchyt a táhněte.';

  @override
  String get whatsNewSpeechTitle => 'Reproduktor na každé straně kartičky';

  @override
  String get whatsNewSpeechBody =>
      'Klepnutím si poslechnete slovo nebo překlad. Rychlost, opakování a hlas najdete v nabídce opakování. Jazyk se pozná z textu.';

  @override
  String get whatsNewReportTitle => 'Měsíční přehled';

  @override
  String get whatsNewReportBody =>
      'V Přehledech klepněte na ikonu přehledu, zobrazte si měsíc a uložte ho jako PDF nebo Word.';

  @override
  String get whatsNewCareTitle => 'Péče o telefon a data';

  @override
  String get whatsNewCareBody =>
      'V Nastavení je nová stránka úložiště s úklidem obrázků a průvodce baterií pro značku vašeho telefonu.';

  @override
  String get whatsNewSoundTitle => 'Klidnější zvuky';

  @override
  String get whatsNewSoundBody => 'Zvuky přírody jsou jemnější a tišší a obrázkové karty hezčí.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Zkontrolováno $date: poslední záloha se otevírá správně.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Zkontrolováno $date: byla nalezena poškozená záloha a nahrazena novou.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Zkontrolováno $date: poslední zálohu se nepodařilo otevřít. Uložte si soubor zálohy sami v Nastavení.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Obvykle se učíte kolem $time';
  }

  @override
  String get smartReviewTimeUse => 'Použít';

  @override
  String get widgetNewNote => 'Nová poznámka';

  @override
  String get noteConnections => 'Štítky, odkazy a úkoly';

  @override
  String get navCards => 'Kartičky';

  @override
  String get studyAnswerWay => 'Jak odpovídat';

  @override
  String get studyMorePractice => 'Procvičování navíc';

  @override
  String get studySessionSettings => 'Nastavení sezení';

  @override
  String get focusAdjustTitle => 'Vaše sezení';

  @override
  String get focusPresetsTitle => 'Připravené';

  @override
  String get focusPresetStudy => 'Studium';

  @override
  String get focusPresetDeep => 'Hluboká práce';

  @override
  String get focusPresetQuick => 'Rychlý sprint';

  @override
  String get focusPresetReading => 'Čtení';

  @override
  String get focusPresetWorkout => 'Tréninková kola';

  @override
  String get focusAdjustMinutes => 'Délka soustředění';

  @override
  String get focusAdjustBreak => 'Délka přestávky';

  @override
  String get focusAdjustRounds => 'Kola';

  @override
  String get focusRoundsOpen => 'Bez omezení';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Klepnutím změníte čas';

  @override
  String get flashArrangeDecks => 'Uspořádat balíčky';

  @override
  String get flashDeckActions => 'Možnosti balíčku';

  @override
  String get starterBrowse => 'Připravené balíčky';

  @override
  String get starterBrowseHint => 'Přidejte jeden klepnutím a začněte se učit';

  @override
  String get dashOpenDecks => 'Otevřít kartičky';

  @override
  String speechVoiceNumber(String n) {
    return 'Hlas $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Pěkný flow. Odpočinout si $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Začít přestávku';

  @override
  String tasksFinishAt(String time) {
    return 'Když začnete teď, budete se vším hotovi v $time';
  }

  @override
  String get focusCalmPacing => 'Klidné tempo';

  @override
  String get focusCalmPacingHint => 'Jen celé minuty a kruh, žádné tikající sekundy';

  @override
  String get focusFlipHint => 'Otočte telefon displejem dolů a začněte';

  @override
  String get focusImmersive => 'Pohlcující režim';

  @override
  String get focusImmersiveBlack => 'Čistě černá (šetří baterii)';

  @override
  String get focusFlipToFocus => 'Otočit a soustředit se';

  @override
  String get focusFlipToFocusHint =>
      'V pohlcujícím režimu: displej dolů spustí, zvednutí pozastaví';

  @override
  String get guardTitle => 'Ochrana před rozptýlením';

  @override
  String get guardSubtitle => 'Pozastavte rušivé aplikace, když se soustředíte';

  @override
  String get guardSwitch => 'Pozastavit rušivé aplikace';

  @override
  String get guardSwitchHint => 'Během sezení soustředění a ve vašich hodinách Časové ochrany';

  @override
  String get guardNeedsAccess => 'Vyžaduje přepínač usnadnění: klepnutím ho zapněte';

  @override
  String get guardDisclosureTitle => 'Jak ochrana funguje';

  @override
  String get guardDisclosureBody =>
      'Aby Deep Focus mohl pozastavit vybrané aplikace, používá službu usnadnění přístupu v Androidu ke zjištění, která aplikace je otevřená. Se zapnutou volbou „Zavírat Shorts a Reels“ také kontroluje, zda je na obrazovce přehrávač krátkých videí.\n\nNečte žádný text, neukládá nic z toho, co vidí, a nic nikam neodesílá: vše zůstává ve vašem telefonu. Kdykoli ji můžete vypnout v nastavení usnadnění přístupu.';

  @override
  String get guardAgree => 'Souhlasím a otevřít nastavení';

  @override
  String get guardModeGentle => 'Mírný';

  @override
  String get guardModeStrict => 'Přísný';

  @override
  String get guardGentleHint => 'Pětisekundová pauza na dech, pak se rozhodnete';

  @override
  String get guardStrictHint => 'Vybrané aplikace zůstanou zavřené až do konce soustředění';

  @override
  String get guardApps => 'Aplikace k pozastavení';

  @override
  String get guardAppsAllowed => 'Povolené aplikace';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikací',
      few: '$count aplikace',
      one: '1 aplikace',
      zero: 'Zatím nic nevybráno',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Povolit jen vybrané aplikace';

  @override
  String get guardAllowlistHint =>
      'Všechny ostatní aplikace se pozastaví; hovory, nastavení a klávesnice fungují vždy';

  @override
  String get guardShorts => 'Zavírat Shorts a Reels';

  @override
  String get guardShortsHint =>
      'Kdykoli je ochrana zapnutá. Podle možností: tyto aplikace se často mění';

  @override
  String get guardSchedule => 'Časová ochrana';

  @override
  String get guardScheduleHint =>
      'Chránit také ve vybrané dny a hodiny, třeba ve škole nebo v práci';

  @override
  String get guardFrom => 'Od';

  @override
  String get guardTo => 'Do';

  @override
  String get guardSearchApps => 'Hledat aplikace';

  @override
  String get guardNoApps => 'Nenalezeny žádné aplikace';

  @override
  String get guardPrivacy =>
      'Funguje jen ve vašem telefonu: ochrana vidí, která aplikace je otevřená, nikdy ne její obsah, a nic neodesílá.';

  @override
  String get guardBreathe => 'Nádech… a výdech';

  @override
  String get guardQuestion => 'Potřebujete tuto aplikaci teď?';

  @override
  String get guardBackToFocus => 'Zpět k soustředění';

  @override
  String get guardOpenFive => 'Otevřít na 5 minut';

  @override
  String get guardStrictBody => 'Tato aplikace je pozastavená do konce vašeho soustředění.';

  @override
  String get guardShortsClosed => 'Krátká videa se zavírají, dokud je ochrana zapnutá';

  @override
  String get faqGuardQ => 'Jak zastavím rušivé aplikace, když se soustředím?';

  @override
  String get faqGuardA =>
      'Otevřete Soustředění → nastavení časovače → Ochrana před rozptýlením. Vyberte aplikace a pak Mírný (pět sekund dechu a otázka „Potřebujete tuto aplikaci teď?“) nebo Přísný (zůstanou zavřené). Funguje během sezení soustředění a s Časovou ochranou i ve dnech a hodinách, které nastavíte. „Povolit jen vybrané aplikace“ pozastaví vše ostatní; hovory, nastavení a klávesnice fungují vždy. Android vás jednou požádá o zapnutí ochrany v nastavení usnadnění přístupu. Vidí jen, která aplikace je otevřená, a nic neodesílá.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Přesunuto do: $name';
  }

  @override
  String get notesDragHint => 'Podržte poznámku a přetáhněte ji na zápisník';

  @override
  String get guardReviewCards => 'Raději zopakovat kartičky';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Čeká na vás $count kartiček',
      few: 'Čekají na vás $count kartičky',
      one: 'Čeká na vás 1 kartička',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Nouze: podržte 10 sekund';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Držte dál… $n';
  }

  @override
  String get guardWeekTitle => 'Tento týden';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozastavení',
      few: '$count pozastavení',
      one: '1 pozastavení',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'zpět k soustředění $count×',
      few: 'zpět k soustředění $count×',
      one: 'zpět k soustředění jednou',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Přejmenovat slova';

  @override
  String get wordsSubtitle => 'Použijte vlastní slovo pro jakýkoli text v aplikaci';

  @override
  String get wordsHint =>
      'Klepnutím na text ho změníte. Vaše slova platí jen pro tento jazyk a ukládají se do záloh.';

  @override
  String get wordsSearch => 'Hledat texty';

  @override
  String get wordsChangedOnly => 'Jen změněné';

  @override
  String wordsOriginal(String text) {
    return 'Původní: $text';
  }

  @override
  String get wordsReset => 'Použít původní';

  @override
  String get wordsResetAll => 'Obnovit všechna slova';

  @override
  String get wordsResetAllConfirm => 'Všechny texty v tomto jazyce se vrátí k původním.';

  @override
  String get wordsNone => 'Nenalezen žádný text';

  @override
  String get settingsLanguageSearch => 'Hledat jazyky';

  @override
  String get settingsLanguageNoMatch => 'Žádný jazyk neodpovídá';

  @override
  String get soundsMyMusic => 'Váš zvuk';

  @override
  String get soundsMusicHint =>
      'Přehrajte zvukový soubor z telefonu. Nic se nekopíruje ani nenahrává.';

  @override
  String get soundsChooseMusic => 'Vybrat zvuk';

  @override
  String get soundsRemoveMusic => 'Odebrat zvuk';

  @override
  String get wordPacksTitle => 'Balíčky slovíček';

  @override
  String get wordPacksHint =>
      'Seznamy slov podle témat. Stáhněte jen jazyk, který chcete, a kartičky pak volně upravujte nebo mažte.';

  @override
  String get wordPacksFailed => 'Stažení se nezdařilo. Zkontrolujte připojení.';

  @override
  String get wordPacksEmpty => 'Slova pro tento jazyk se ještě připravují.';
}
