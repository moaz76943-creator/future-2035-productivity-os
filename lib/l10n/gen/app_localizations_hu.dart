// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Kezdőlap';

  @override
  String get navTasks => 'Feladatok';

  @override
  String get navFocus => 'Fókusz';

  @override
  String get navCalendar => 'Naptár';

  @override
  String get navSpaces => 'Terek';

  @override
  String get moduleProjects => 'Projektek';

  @override
  String get moduleNotes => 'Jegyzetek';

  @override
  String get moduleFlashcards => 'Kártyák';

  @override
  String get moduleGoals => 'Célok';

  @override
  String get moduleHabits => 'Szokások';

  @override
  String get moduleAnalytics => 'Elemzések';

  @override
  String get moduleSearch => 'Keresés';

  @override
  String get moduleAssistant => 'Asszisztens';

  @override
  String get moduleSettings => 'Beállítások';

  @override
  String get moduleTrash => 'Kuka';

  @override
  String get actionSave => 'Mentés';

  @override
  String get actionCancel => 'Mégse';

  @override
  String get actionDelete => 'Törlés';

  @override
  String get actionEdit => 'Szerkesztés';

  @override
  String get actionDone => 'Kész';

  @override
  String get actionAdd => 'Hozzáadás';

  @override
  String get actionCreate => 'Létrehozás';

  @override
  String get actionClose => 'Bezárás';

  @override
  String get actionBack => 'Vissza';

  @override
  String get actionUndo => 'Visszavonás';

  @override
  String get actionRestore => 'Visszaállítás';

  @override
  String get actionRetry => 'Újra';

  @override
  String get actionContinue => 'Tovább';

  @override
  String get actionSkip => 'Kihagyás';

  @override
  String get actionArchive => 'Archiválás';

  @override
  String get actionUnarchive => 'Visszavétel az archívumból';

  @override
  String get actionPin => 'Kitűzés';

  @override
  String get actionUnpin => 'Kitűzés megszüntetése';

  @override
  String get actionMore => 'További lehetőségek';

  @override
  String get actionClear => 'Törlés';

  @override
  String get actionSearch => 'Keresés';

  @override
  String get actionSort => 'Rendezés';

  @override
  String get actionShare => 'Megosztás';

  @override
  String get actionImport => 'Importálás';

  @override
  String get actionExport => 'Exportálás';

  @override
  String get actionPause => 'Szünet';

  @override
  String get actionResume => 'Folytatás';

  @override
  String get actionStart => 'Indítás';

  @override
  String get actionStop => 'Leállítás';

  @override
  String get actionComplete => 'Befejezés';

  @override
  String get actionDeleteForever => 'Végleges törlés';

  @override
  String get actionEmptyTrash => 'Kuka ürítése';

  @override
  String get actionUnlink => 'Leválasztás';

  @override
  String get actionCustomize => 'Testreszabás';

  @override
  String get actionPreview => 'Előnézet';

  @override
  String get actionLog => 'Előrehaladás rögzítése';

  @override
  String get stateLoading => 'Betöltés…';

  @override
  String get stateSaving => 'Mentés…';

  @override
  String get stateSaved => 'Mentve';

  @override
  String get stateUnsaved => 'Nem mentett módosítások';

  @override
  String get errorGenericTitle => 'Valami hiba történt';

  @override
  String get errorGenericMessage => 'Az adataid biztonságban vannak. Próbáld újra.';

  @override
  String get errorLoadFailed => 'Ezt a tartalmat nem sikerült betölteni.';

  @override
  String get errorSaveFailed => 'Nem sikerült menteni. A módosításaid még megvannak.';

  @override
  String get validationRequired => 'Ezt a mezőt ki kell tölteni';

  @override
  String get validationTitleRequired => 'Adj meg egy címet';

  @override
  String get validationNameRequired => 'Adj meg egy nevet';

  @override
  String get validationTooLong => 'Ez túl hosszú';

  @override
  String get validationEndBeforeStart => 'A végnek a kezdés után kell lennie';

  @override
  String get validationStartAfterDue => 'A kezdés dátumának a határidő előtt kell lennie';

  @override
  String get validationPositiveNumber => 'Adj meg nullánál nagyobb számot';

  @override
  String get validationDependencyCycle => 'Ez körkörös függőséget hozna létre';

  @override
  String get validationInvalidRepeat => 'Ez az ismétlési szabály érvénytelen';

  @override
  String get deletedItem => 'Áthelyezve a kukába';

  @override
  String get untitled => 'Névtelen';

  @override
  String get noProject => 'Nincs projekt';

  @override
  String get greetingMorning => 'Jó reggelt';

  @override
  String get greetingAfternoon => 'Jó napot';

  @override
  String get greetingEvening => 'Jó estét';

  @override
  String get dashFocusToday => 'Mai fókusz';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Fókusz indítása';

  @override
  String get dashFocusRunning => 'Munkamenet folyamatban';

  @override
  String get dashTodayTasks => 'Mára esedékes';

  @override
  String get dashAgenda => 'Napirend';

  @override
  String get dashHabits => 'Mai szokások';

  @override
  String get dashGoals => 'Célok';

  @override
  String get dashReview => 'Ismétlés';

  @override
  String get dashRecentNotes => 'Legutóbbi jegyzetek';

  @override
  String get dashInsight => 'Javaslat';

  @override
  String get dashSeeAll => 'Összes';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ismétlendő kártya',
      one: '1 ismétlendő kártya',
      zero: 'Nincs ismétlendő kártya',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Ismétlés most';

  @override
  String get dashCustomizeTitle => 'A kezdőlap részei';

  @override
  String get dashCustomizeHint => 'Válaszd ki, mi jelenjen meg a kezdőképernyőn.';

  @override
  String get dashSectionFocus => 'Fókusz';

  @override
  String get dashSectionToday => 'Mai feladatok';

  @override
  String get dashSectionAgenda => 'Napirend';

  @override
  String get dashSectionHabits => 'Szokások';

  @override
  String get dashSectionGoals => 'Célok';

  @override
  String get dashSectionReview => 'Kártyák ismétlése';

  @override
  String get dashSectionNotes => 'Legutóbbi jegyzetek';

  @override
  String get dashSectionInsight => 'Javaslatok';

  @override
  String get quickAddTask => 'Új feladat';

  @override
  String get quickAddNote => 'Új jegyzet';

  @override
  String get quickAddEvent => 'Új esemény';

  @override
  String get quickStartFocus => 'Fókusz';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lejárt feladatod van. Kezdd a legfontosabbal.',
      one: '1 lejárt feladatod van. Ütemezd át, vagy fejezd be először.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Még $minutes perc van hátra a napi fókuszcélodig.';
  }

  @override
  String get insightCardsDue => 'Ismételd át a kártyáidat most, amíg frissek.';

  @override
  String get insightAllClear =>
      'Minden a terv szerint halad. Tervezd meg a holnapot, vagy tarts egy nyugodt szünetet.';

  @override
  String insightHabitStreak(String habit) {
    return 'Tartsd meg a sorozatot: $habit ma még hátravan.';
  }

  @override
  String get focusTitle => 'Fókusz';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Visszaszámláló';

  @override
  String get focusModeCountUp => 'Stopper';

  @override
  String get focusModeOpen => 'Szabad';

  @override
  String get focusPhaseWork => 'Fókusz';

  @override
  String get focusPhaseShortBreak => 'Rövid szünet';

  @override
  String get focusPhaseLongBreak => 'Hosszú szünet';

  @override
  String get focusReady => 'Amikor készen állsz';

  @override
  String get focusPaused => 'Szüneteltetve';

  @override
  String get focusRunning => 'Fókuszban';

  @override
  String get focusDuration => 'Időtartam';

  @override
  String get focusLinkTask => 'Feladat csatolása';

  @override
  String get focusLinkedTask => 'Ezen dolgozom';

  @override
  String get focusNoTask => 'Nincs csatolt feladat';

  @override
  String focusCycle(int current, int total) {
    return '$current. kör / $total';
  }

  @override
  String get focusSkipBreak => 'Szünet kihagyása';

  @override
  String get focusStartBreak => 'Szünet indítása';

  @override
  String get focusStartNext => 'Következő fókusz indítása';

  @override
  String get focusSessionComplete => 'Munkamenet kész';

  @override
  String get focusSessionStopped => 'Munkamenet mentve';

  @override
  String focusSessionSummary(String duration) {
    return '$duration időt töltöttél fókuszban.';
  }

  @override
  String get focusAddNote => 'Jegyzet hozzáadása a munkamenethez';

  @override
  String get focusHistory => 'Előzmények';

  @override
  String get focusNoHistory => 'A befejezett munkamenetek itt jelennek meg';

  @override
  String get focusOutcomeCompleted => 'Befejezve';

  @override
  String get focusOutcomeInterrupted => 'Korán leállítva';

  @override
  String get focusRecovered => 'A munkamenet folytatódott, amíg az alkalmazás be volt zárva.';

  @override
  String get focusCompletedWhileAway =>
      'Egy munkamenet véget ért, amíg az alkalmazás be volt zárva, és el lett mentve.';

  @override
  String get focusNotificationsOff =>
      'Az értesítések ki vannak kapcsolva. Nem kapsz jelzést, amikor egy munkamenet véget ér.';

  @override
  String get focusBatteryHint =>
      'Egyes eszközök szüneteltetik a háttérben futó alkalmazásokat. Az időzítő pontos marad, de a jelzések késhetnek. A megbízható jelzésekhez engedélyezd a korlátlan akkumulátorhasználatot.';

  @override
  String get focusOpenSettings => 'Beállítások megnyitása';

  @override
  String get focusStopConfirmTitle => 'Leállítod a munkamenetet?';

  @override
  String get focusStopConfirmMessage => 'Az eddigi fókuszidő mentésre kerül.';

  @override
  String get focusDiscard => 'Elvetés';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes perc',
      one: '1 perc',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time van hátra';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time telt el';
  }

  @override
  String get focusDeleteSession => 'Munkamenet törlése';

  @override
  String get tasksTitle => 'Feladatok';

  @override
  String get tasksViewToday => 'Ma';

  @override
  String get tasksViewUpcoming => 'Közelgő';

  @override
  String get tasksViewAll => 'Összes';

  @override
  String get tasksViewOverdue => 'Lejárt';

  @override
  String get tasksViewCompleted => 'Befejezett';

  @override
  String get tasksQuickAddHint => 'Feladat hozzáadása…';

  @override
  String get tasksEmptyTitle => 'Minden kész';

  @override
  String get tasksEmptyMessage => 'Adj hozzá egy feladatot, és formáld a napodat.';

  @override
  String get tasksEmptyCompleted => 'A befejezett feladatok itt jelennek meg.';

  @override
  String get taskNew => 'Új feladat';

  @override
  String get taskEdit => 'Feladat szerkesztése';

  @override
  String get taskTitleLabel => 'Cím';

  @override
  String get taskTitleHint => 'Mit kell elvégezni?';

  @override
  String get taskDescriptionLabel => 'Leírás';

  @override
  String get taskNotesLabel => 'Jegyzetek';

  @override
  String get taskPriority => 'Prioritás';

  @override
  String get priorityNone => 'Nincs';

  @override
  String get priorityLow => 'Alacsony';

  @override
  String get priorityMedium => 'Közepes';

  @override
  String get priorityHigh => 'Magas';

  @override
  String get priorityUrgent => 'Sürgős';

  @override
  String get taskDueDate => 'Határidő';

  @override
  String get taskStartDate => 'Kezdés dátuma';

  @override
  String get taskReminder => 'Emlékeztető';

  @override
  String get taskRepeat => 'Ismétlés';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategória';

  @override
  String get taskCategoryHint => 'pl. Munka, Otthon, Tanulás';

  @override
  String get taskEstimateMinutes => 'Becslés (perc)';

  @override
  String get taskTracked => 'Mért fókusz';

  @override
  String get taskLabels => 'Címkék';

  @override
  String get taskAddLabel => 'Új címke';

  @override
  String get taskChecklist => 'Ellenőrzőlista';

  @override
  String get taskAddChecklistItem => 'Elem hozzáadása';

  @override
  String get taskSubtasks => 'Részfeladatok';

  @override
  String get taskAddSubtask => 'Részfeladat hozzáadása';

  @override
  String get taskDependencies => 'Ezek blokkolják';

  @override
  String get taskAddDependency => 'Blokkoló feladat hozzáadása';

  @override
  String get taskLinkedNotes => 'Kapcsolt jegyzetek';

  @override
  String get taskSetTime => 'Időpont beállítása';

  @override
  String get taskNoDate => 'Nincs dátum';

  @override
  String get taskCompleted => 'Feladat befejezve';

  @override
  String get taskNextOccurrence => 'A következő alkalom létrejött';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days napja lejárt',
      one: '1 napja lejárt',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '„$title” megjelölése késznek';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '„$title” megjelölése nem késznek';
  }

  @override
  String get sortSmart => 'Okos';

  @override
  String get sortDueDate => 'Határidő';

  @override
  String get sortPriority => 'Prioritás';

  @override
  String get sortCreated => 'Legújabb';

  @override
  String get sortTitle => 'Cím';

  @override
  String get filterAllProjects => 'Minden projekt';

  @override
  String get filterAnyPriority => 'Bármely prioritás';

  @override
  String get filterTitle => 'Szűrés és rendezés';

  @override
  String get dateToday => 'Ma';

  @override
  String get dateTomorrow => 'Holnap';

  @override
  String get dateYesterday => 'Tegnap';

  @override
  String get repeatNever => 'Nem ismétlődik';

  @override
  String get repeatDaily => 'Minden nap';

  @override
  String get repeatWeekdays => 'Minden hétköznap';

  @override
  String get repeatWeekly => 'Minden héten';

  @override
  String get repeatMonthly => 'Minden hónapban';

  @override
  String get repeatYearly => 'Minden évben';

  @override
  String get repeatCustom => 'Egyéni';

  @override
  String get repeatEvery => 'Ismétlés minden';

  @override
  String get repeatOnDays => 'Ezeken a napokon';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'nap', one: 'nap');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'hét', one: 'hét');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'hónap', one: 'hónap');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'év', one: 'év');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alkalom',
      one: '1 alkalom',
    );
    return 'Vége $_temp0 után';
  }

  @override
  String get repeatEndsNever => 'Soha nem ér véget';

  @override
  String get reminderAtTime => 'Az esemény időpontjában';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes perccel előtte',
      one: '1 perccel előtte',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours órával előtte',
      one: '1 órával előtte',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 nappal előtte';

  @override
  String get projectsTitle => 'Projektek';

  @override
  String get projectsEmptyTitle => 'Még nincsenek projektek';

  @override
  String get projectsEmptyMessage =>
      'Csoportosítsd az összetartozó feladatokat, jegyzeteket és fókuszidőt.';

  @override
  String get projectNew => 'Új projekt';

  @override
  String get projectEdit => 'Projekt szerkesztése';

  @override
  String get projectName => 'Név';

  @override
  String get projectDescription => 'Leírás';

  @override
  String get projectGoal => 'Cél';

  @override
  String get projectDeadline => 'Határidő';

  @override
  String get projectColor => 'Szín';

  @override
  String get projectIcon => 'Ikon';

  @override
  String get projectProgress => 'Előrehaladás';

  @override
  String projectTasksDone(int done, int total) {
    return '$done / $total feladat kész';
  }

  @override
  String get projectFocusTime => 'Fókuszidő';

  @override
  String get projectArchived => 'Archivált projektek';

  @override
  String get projectShowArchived => 'Archiváltak megjelenítése';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days nap van hátra',
      one: '1 nap van hátra',
      zero: 'Ma esedékes',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Lejárt határidő';

  @override
  String get calendarTitle => 'Naptár';

  @override
  String get calendarMonth => 'Hónap';

  @override
  String get calendarWeek => 'Hét';

  @override
  String get calendarDay => 'Nap';

  @override
  String get calendarToday => 'Ma';

  @override
  String get calendarPrevious => 'Előző';

  @override
  String get calendarNext => 'Következő';

  @override
  String get calendarNoEvents => 'Nincs semmi betervezve';

  @override
  String get calendarAllDay => 'Egész nap';

  @override
  String get eventNew => 'Új esemény';

  @override
  String get eventEdit => 'Esemény szerkesztése';

  @override
  String get eventTitleHint => 'Az esemény címe';

  @override
  String get eventStarts => 'Kezdés';

  @override
  String get eventEnds => 'Befejezés';

  @override
  String get eventKind => 'Típus';

  @override
  String get eventKindEvent => 'Esemény';

  @override
  String get eventKindTimeBlock => 'Időblokk';

  @override
  String get eventKindFocus => 'Fókusz-munkamenet';

  @override
  String get eventKindGoal => 'Személyes cél';

  @override
  String get eventDescription => 'Részletek';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ütközik $count eseménnyel',
      one: 'Ütközik 1 eseménnyel',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Ütközések ezen a napon';

  @override
  String get calendarTaskDue => 'Esedékes feladat';

  @override
  String get calendarDragHint => 'Egy esemény áthelyezéséhez nyomd le hosszan, és húzd el';

  @override
  String get calendarRescheduled => 'Esemény áthelyezve';

  @override
  String get calendarScheduleTask => 'Ütemezés időblokként';

  @override
  String get notesTitle => 'Jegyzetek';

  @override
  String get notesViewAll => 'Összes';

  @override
  String get notesViewPinned => 'Kitűzött';

  @override
  String get notesViewFavorites => 'Kedvencek';

  @override
  String get notesViewArchived => 'Archivált';

  @override
  String get notesTags => 'Címkék';

  @override
  String get notesNewNotebook => 'Új jegyzetfüzet';

  @override
  String get notesNoNotebook => 'Nincs jegyzetfüzet';

  @override
  String get notesEmptyTitle => 'Üres lap';

  @override
  String get notesEmptyMessage => 'Rögzítsd az ötleteket, a megbeszélések jegyzeteit és a tudást.';

  @override
  String get noteTitleHint => 'Cím';

  @override
  String get noteBodyHint => 'Kezdj el írni…';

  @override
  String get noteFavorite => 'Kedvenc';

  @override
  String get noteUnfavorite => 'Eltávolítás a kedvencekből';

  @override
  String get noteMoveTo => 'Áthelyezés jegyzetfüzetbe';

  @override
  String get noteBacklinks => 'Ide hivatkoznak';

  @override
  String get noteLinkedTasks => 'Kapcsolt feladatok';

  @override
  String get noteLinkTask => 'Feladat csatolása';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Címsor';

  @override
  String get noteFormatBold => 'Félkövér';

  @override
  String get noteFormatItalic => 'Dőlt';

  @override
  String get noteFormatList => 'Felsorolás';

  @override
  String get noteFormatChecklist => 'Ellenőrzőlista';

  @override
  String get noteFormatLink => 'Hivatkozás';

  @override
  String noteEdited(String time) {
    return 'Szerkesztve: $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count szó',
      one: '1 szó',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Kártyák';

  @override
  String get flashEmptyTitle => 'Készítsd el az első paklidat';

  @override
  String get flashEmptyMessage =>
      'Az időközönkénti ismétlés minden kártyát éppen azelőtt mutat meg, hogy elfelejtenéd.';

  @override
  String get deckNew => 'Új pakli';

  @override
  String get deckEdit => 'Pakli szerkesztése';

  @override
  String get deckName => 'A pakli neve';

  @override
  String get deckDescription => 'Leírás';

  @override
  String get deckDailyNew => 'Új kártyák naponta';

  @override
  String get deckDailyReview => 'Napi ismétlési cél';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártya',
      one: '1 kártya',
      zero: 'Nincs kártya',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Esedékes';

  @override
  String get deckNewCards => 'Új';

  @override
  String get deckMature => 'Megtanult';

  @override
  String get deckStudy => 'Tanulás';

  @override
  String get deckNothingDue => 'Most nincs mit ismételni. Gyere vissza később.';

  @override
  String get deckEmptyCards => 'Adj hozzá kártyákat, hogy elkezdhesd a tanulást.';

  @override
  String get cardNew => 'Új kártya';

  @override
  String get cardEdit => 'Kártya szerkesztése';

  @override
  String get cardFront => 'Előlap';

  @override
  String get cardBack => 'Hátlap';

  @override
  String get cardFrontHint => 'Kérdés vagy fogalom';

  @override
  String get cardBackHint => 'Válasz vagy meghatározás';

  @override
  String get cardTags => 'Címkék';

  @override
  String get cardAddAnother => 'Mentés és új hozzáadása';

  @override
  String get reviewShowAnswer => 'Válasz megjelenítése';

  @override
  String get reviewAgain => 'Újra';

  @override
  String get reviewHard => 'Nehéz';

  @override
  String get reviewGood => 'Jó';

  @override
  String get reviewEasy => 'Könnyű';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => 'Munkamenet kész';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártyát ismételtél.',
      one: '1 kártyát ismételtél.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Koppints a válasz megjelenítéséhez';

  @override
  String get importCardsTitle => 'Kártyák importálása';

  @override
  String get importCardsHint =>
      'Illessz be soronként egy kártyát (az elő- és hátlapot tabulátor vagy pontosvessző válassza el), vagy válassz fájlt: Excel (.xlsx), CSV, Anki-pakli (.apkg) vagy exportált pakli.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártya importálva',
      one: '1 kártya importálva',
      zero: 'Nem lett importálva kártya',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Ezt a tartalmat nem sikerült importálni.';

  @override
  String get exportCopied => 'Pakli exportálva';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perc',
      one: '1 perc',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap',
      one: '1 nap',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Célok';

  @override
  String get goalsEmptyTitle => 'Tűzz ki valamit';

  @override
  String get goalsEmptyMessage =>
      'Állíts be napi, heti, havi vagy hosszú távú célokat, és kövesd a valódi előrehaladást.';

  @override
  String get goalNew => 'Új cél';

  @override
  String get goalEdit => 'Cél szerkesztése';

  @override
  String get goalTitleHint => 'Mit szeretnél elérni?';

  @override
  String get goalPeriod => 'Időszak';

  @override
  String get goalPeriodDaily => 'Napi';

  @override
  String get goalPeriodWeekly => 'Heti';

  @override
  String get goalPeriodMonthly => 'Havi';

  @override
  String get goalPeriodLongTerm => 'Hosszú távú';

  @override
  String get goalTarget => 'Célérték';

  @override
  String get goalUnit => 'Mértékegység';

  @override
  String get goalUnitHint => 'pl. oldal, km, óra';

  @override
  String get goalStatusActive => 'Aktív';

  @override
  String get goalStatusPaused => 'Szüneteltetve';

  @override
  String get goalStatusAchieved => 'Elérve';

  @override
  String get goalPause => 'Cél szüneteltetése';

  @override
  String get goalResume => 'Cél folytatása';

  @override
  String get goalMarkAchieved => 'Megjelölés elértként';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => 'Mennyiség';

  @override
  String get goalLogNote => 'Megjegyzés (nem kötelező)';

  @override
  String get goalHistory => 'Előzmények';

  @override
  String get goalNoHistory => 'A rögzített előrehaladás itt jelenik meg';

  @override
  String get goalLinkedTasks => 'Kapcsolt feladatok';

  @override
  String get goalLinkedTasksHint =>
      'Minden befejezett kapcsolt feladat 1-nek számít ennél a célnál.';

  @override
  String get goalThisPeriod => 'Ez az időszak';

  @override
  String get habitsTitle => 'Szokások';

  @override
  String get habitsEmptyTitle => 'Kis lépések, minden nap';

  @override
  String get habitsEmptyMessage => 'Hozz létre egy szokást, és pipáld ki, amikor megcsinálod.';

  @override
  String get habitNew => 'Új szokás';

  @override
  String get habitEdit => 'Szokás szerkesztése';

  @override
  String get habitNameHint => 'pl. Olvass el 20 oldalt';

  @override
  String get habitDays => 'Ütemezés';

  @override
  String get habitEveryDay => 'Minden nap';

  @override
  String get habitTargetPerDay => 'Hányszor naponta';

  @override
  String get habitReminder => 'Napi emlékeztető';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count napos sorozat',
      one: '1 napos sorozat',
      zero: 'Nincs sorozat',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Leghosszabb sorozat';

  @override
  String get habitCurrentStreak => 'Jelenlegi sorozat';

  @override
  String get habitConsistency => 'Rendszeresség';

  @override
  String get habitLast90 => 'Elmúlt 90 nap';

  @override
  String get habitPaused => 'Szüneteltetve';

  @override
  String get habitPause => 'Szokás szüneteltetése';

  @override
  String get habitResume => 'Szokás folytatása';

  @override
  String get habitDoneToday => 'Ma kész';

  @override
  String habitCountToday(int count, int target) {
    return 'Ma $count / $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '„$name” kipipálása';
  }

  @override
  String get habitNotScheduledToday => 'Ma nincs ütemezve';

  @override
  String get analyticsTitle => 'Elemzések';

  @override
  String get rangeWeek => '7 nap';

  @override
  String get rangeMonth => '30 nap';

  @override
  String get rangeQuarter => '90 nap';

  @override
  String get statFocusTime => 'Fókuszidő';

  @override
  String get statSessions => 'Munkamenetek';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed befejezve · $interrupted korán leállítva';
  }

  @override
  String get statTasksDone => 'Befejezett feladatok';

  @override
  String get statCompletionRate => 'Időben befejezve';

  @override
  String get statHabitConsistency => 'Szokások rendszeressége';

  @override
  String get statRetention => 'Megjegyzett kártyák';

  @override
  String get statReviews => 'Ismétlések';

  @override
  String get statActiveGoals => 'Aktív célok';

  @override
  String get statEstimated => 'Becsült elvégzett munka';

  @override
  String get statEstimatedNote => 'A becsléseid alapján, nem mért idő';

  @override
  String get statMeasuredNote => 'A fókusz-munkamenetekből mérve';

  @override
  String get chartFocusByDay => 'Fókuszpercek naponta';

  @override
  String get chartTasksByDay => 'Befejezett feladatok naponta';

  @override
  String get chartTimeByProject => 'Idő projektenként';

  @override
  String get chartProjectProgress => 'Projektek előrehaladása';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: összesen $total, legjobb nap $best';
  }

  @override
  String get analyticsNoData => 'Még nincs elég adat';

  @override
  String get analyticsUnassigned => 'Nincs hozzárendelve';

  @override
  String get searchHint => 'Keresés mindenben…';

  @override
  String get searchRecent => 'Legutóbbi keresések';

  @override
  String get searchClearRecent => 'Legutóbbi keresések törlése';

  @override
  String searchNoResults(String query) {
    return 'Nincs találat erre: „$query”';
  }

  @override
  String get searchStartTyping =>
      'Keress a feladatok, jegyzetek, kártyák, célok, események és egyebek között. A keresés ezen az eszközön marad.';

  @override
  String get searchCatTask => 'Feladatok';

  @override
  String get searchCatProject => 'Projektek';

  @override
  String get searchCatNote => 'Jegyzetek';

  @override
  String get searchCatFlashcard => 'Kártyák';

  @override
  String get searchCatDeck => 'Paklik';

  @override
  String get searchCatGoal => 'Célok';

  @override
  String get searchCatHabit => 'Szokások';

  @override
  String get searchCatEvent => 'Események';

  @override
  String get searchCatSession => 'Munkamenetek';

  @override
  String get searchAll => 'Összes';

  @override
  String get assistantTitle => 'Asszisztens';

  @override
  String get assistantIntro =>
      'Tervezési segítség, amely az eszközödön működik. Összefoglalókhoz és tartalomkészítéshez igény szerint csatlakoztathatsz egy általad választott MI-szolgáltatást.';

  @override
  String get assistantOnDevice => 'Az eszközön';

  @override
  String get assistantCloud => 'MI-szolgáltatás';

  @override
  String get assistantPlanDay => 'A napom megtervezése';

  @override
  String get assistantPlanDayDesc =>
      'Sürgősség, prioritás és becslés szerint sorba rendezi a nyitott feladatokat, és beilleszti őket az eseményeid közé.';

  @override
  String get assistantExtractTasks => 'Feladatok kinyerése jegyzetből';

  @override
  String get assistantExtractTasksDesc =>
      'Megkeresi a jegyzetben az ellenőrzőlista-elemeket és a teendősorokat, és feladatot készít belőlük.';

  @override
  String get assistantMakeCards => 'Kártyák készítése jegyzetből';

  @override
  String get assistantMakeCardsDesc =>
      'A „fogalom: meghatározás” és a kérdés–válasz sorokból kártyákat készít.';

  @override
  String get assistantSummarize => 'Jegyzet összefoglalása';

  @override
  String get assistantSummarizeDesc =>
      'MI-szolgáltatás szükséges hozzá. A jegyzet csak a jóváhagyásod után megy el.';

  @override
  String get assistantWorkload => 'Munkaterhelés áttekintése';

  @override
  String get assistantWorkloadDesc => 'Összeveti a becsült munkát a heti szabadidőddel.';

  @override
  String get assistantPlanEmpty => 'Nincs tervezendő nyitott feladat. Élvezd a szabad időt.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Szabad fókuszidő ma: $time';
  }

  @override
  String get assistantPlanOverflow => 'Ezek ma talán nem férnek bele:';

  @override
  String get assistantChooseNote => 'Válassz jegyzetet';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count feladat található',
      one: '1 feladat található',
      zero: 'Nem található feladat a jegyzetben',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártya található',
      one: '1 kártya található',
      zero: 'Nem található kártya a jegyzetben',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Válassz paklit';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Becsült munka: $estimated. Szabadidő: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Többet terveztél, mint amennyi időd van. Érdemes lehet áthelyezni az alacsonyabb prioritású feladatokat.';

  @override
  String get assistantWorkloadOk => 'A terved belefér a rendelkezésre álló időbe.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nyitott feladatnak nincs becslése.',
      one: '1 nyitott feladatnak nincs becslése.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'MI-szolgáltatás';

  @override
  String get assistantProviderOff =>
      'Nincs csatlakoztatott szolgáltatás. Az eszközön futó eszközök továbbra is működnek.';

  @override
  String assistantProviderOn(String host) {
    return 'Csatlakozva: $host';
  }

  @override
  String get assistantEndpoint => 'API-végpont (HTTPS)';

  @override
  String get assistantModel => 'Modell';

  @override
  String get assistantApiKey => 'API-kulcs';

  @override
  String get assistantApiKeyStored => 'Biztonságosan tárolva ezen az eszközön';

  @override
  String get assistantHttpsOnly => 'Csak HTTPS-végpontok engedélyezettek';

  @override
  String get assistantConsentTitle => 'Elküldöd ezt a tartalmat az MI-szolgáltatásodnak?';

  @override
  String assistantConsentBody(String host) {
    return 'A kiválasztott jegyzetszöveg elhagyja ezt az eszközt, és $host dolgozza fel. Semmi más nem megy el.';
  }

  @override
  String get assistantConsentAlways => 'Ennél a szolgáltatásnál ne kérdezzen újra';

  @override
  String get assistantSend => 'Küldés';

  @override
  String get assistantUnavailable => 'Az MI-szolgáltatás nem érhető el. Próbáld újra később.';

  @override
  String get assistantDisabledTitle => 'Az asszisztens ki van kapcsolva';

  @override
  String get assistantDisabledMessage =>
      'Kapcsold be a tervezőeszközök használatához. Semmilyen adat nem hagyja el az eszközödet, hacsak nem csatlakoztatsz szolgáltatást, és nem hagysz jóvá minden kérést.';

  @override
  String get assistantSummaryTitle => 'Összefoglaló';

  @override
  String get assistantRemoveProvider => 'Szolgáltatás eltávolítása';

  @override
  String get settingsTitle => 'Beállítások';

  @override
  String get settingsGeneral => 'Általános';

  @override
  String get settingsLanguage => 'Nyelv';

  @override
  String get settingsLanguageSystem => 'Az eszköz nyelve';

  @override
  String get settingsAppearance => 'Megjelenés';

  @override
  String get settingsTheme => 'Téma';

  @override
  String get themeLight => 'Világos';

  @override
  String get themeDark => 'Sötét';

  @override
  String get themeSystem => 'Rendszer szerint';

  @override
  String get settingsReduceMotion => 'Kevesebb mozgás';

  @override
  String get settingsReduceMotionDesc => 'Kevesebb animáció és mozgó háttér';

  @override
  String get settingsFocus => 'Fókuszidőzítő';

  @override
  String get settingsWorkLength => 'A fókusz hossza';

  @override
  String get settingsShortBreak => 'Rövid szünet';

  @override
  String get settingsLongBreak => 'Hosszú szünet';

  @override
  String get settingsLongBreakEvery => 'Hosszú szünet ennyi után';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count munkamenet',
      one: '1 munkamenet',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Szünetek automatikus indítása';

  @override
  String get settingsSound => 'Befejező hang';

  @override
  String get settingsDailyFocusTarget => 'Napi fókuszcél';

  @override
  String get settingsWeeklyFocusTarget => 'Heti fókuszcél';

  @override
  String get settingsNotifications => 'Értesítések';

  @override
  String get settingsNotificationsEnable => 'Emlékeztetők engedélyezése';

  @override
  String get settingsQuietHours => 'Csendes órák';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'A szokás-, cél- és ismétlési emlékeztetők $start és $end között némák';
  }

  @override
  String get settingsReviewReminder => 'Kártyaismétlési emlékeztető';

  @override
  String get settingsPermissionDenied =>
      'Az értesítések le vannak tiltva a rendszerbeállításokban.';

  @override
  String get settingsPrivacy => 'Adatvédelem és adatok';

  @override
  String get settingsPrivacyStatement =>
      'Az adataid csak ezen az eszközön tárolódnak, titkosítva. Nincs fiók, nincs elemzés és nincs követés.';

  @override
  String get settingsBackup => 'Titkosított biztonsági mentés készítése';

  @override
  String get settingsBackupDesc => 'Az általad választott jelszóval védve';

  @override
  String get settingsRestore => 'Visszaállítás biztonsági mentésből';

  @override
  String get settingsRestoreDesc => 'Lecseréli az eszközön lévő összes adatot';

  @override
  String get settingsErase => 'Minden adat törlése';

  @override
  String get settingsEraseDesc => 'Minden végleges törlése erről az eszközről';

  @override
  String get settingsEraseConfirmTitle => 'Törlöd az összes adatot?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Minden feladat, jegyzet, kártya, cél, szokás, esemény és munkamenet véglegesen törlődik. A megerősítéshez írd be: $word.';
  }

  @override
  String get settingsEraseWord => 'TÖRLÉS';

  @override
  String get settingsErased => 'Minden adat törölve';

  @override
  String get backupPassword => 'A biztonsági mentés jelszava';

  @override
  String get backupPasswordConfirm => 'Jelszó megerősítése';

  @override
  String backupPasswordHint(int count) {
    return 'Legalább $count karakter. Ha elfelejted, nem állítható vissza.';
  }

  @override
  String get backupPasswordMismatch => 'A jelszavak nem egyeznek';

  @override
  String get backupPasswordShort => 'A jelszó túl rövid';

  @override
  String get backupCreating => 'Biztonsági mentés titkosítása…';

  @override
  String get backupCreated => 'A biztonsági mentés menthető';

  @override
  String get backupRestoring => 'Ellenőrzés és visszaállítás…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elem visszaállítva',
      one: '1 elem visszaállítva',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Hibás jelszó, vagy a fájl módosult.';

  @override
  String get backupNotABackup => 'Ez a fájl nem a Deep Focus biztonsági mentése.';

  @override
  String get backupCorrupted => 'A biztonsági mentés fájlja sérült.';

  @override
  String get backupNewer =>
      'Ezt a biztonsági mentést az alkalmazás egy újabb verziója készítette. Először frissíts.';

  @override
  String get backupRestoreConfirmTitle => 'Lecseréled az összes adatot?';

  @override
  String get backupRestoreConfirmBody =>
      'Minden, ami most az eszközön van, lecserélődik a biztonsági mentésre. Ha a visszaállítás nem sikerül, semmi sem változik.';

  @override
  String get settingsAbout => 'Névjegy';

  @override
  String settingsVersion(String version) {
    return 'Verzió: $version';
  }

  @override
  String get settingsLicenses => 'Nyílt forráskódú licencek';

  @override
  String get settingsAssistant => 'Asszisztens';

  @override
  String get settingsAssistantEnable => 'Asszisztens bekapcsolása';

  @override
  String get settingsDashboard => 'A kezdőlap részei';

  @override
  String get settingsTrash => 'Kuka';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes perc';
  }

  @override
  String get trashEmpty => 'A kuka üres';

  @override
  String get trashHint => 'A törölt elemek itt maradnak, amíg el nem távolítod őket.';

  @override
  String get trashTasks => 'Feladatok';

  @override
  String get trashNotes => 'Jegyzetek';

  @override
  String get onboardWelcomeTitle => 'Üdv az új munkaterületeden';

  @override
  String get onboardWelcomeBody =>
      'Feladatok, fókusz, naptár, jegyzetek, kártyák, célok és szokások — együtt, gyönyörűen egyszerűen.';

  @override
  String get onboardPrivateTitle => 'Alapjaiban privát';

  @override
  String get onboardPrivateBody =>
      'Minden titkosítva ezen az eszközön marad. Nincs fiók. Nincs követés. Te irányítasz.';

  @override
  String get onboardLanguageTitle => 'Válaszd ki a nyelvet';

  @override
  String get onboardNotifTitle => 'Kíméletes emlékeztetők';

  @override
  String get onboardNotifBody =>
      'Engedélyezd az értesítéseket a feladat-emlékeztetőkhöz és a fókuszjelzésekhez. Ezt bármikor módosíthatod.';

  @override
  String get onboardGetStarted => 'Kezdjük';

  @override
  String onboardStep(int current, int total) {
    return '$current. lépés / $total';
  }

  @override
  String get notifChannelReminders => 'Emlékeztetők';

  @override
  String get notifChannelRemindersDesc => 'Feladat-, esemény-, szokás- és célemlékeztetők';

  @override
  String get notifChannelFocus => 'Fókuszidőzítő';

  @override
  String get notifChannelFocusDesc => 'Jelzés, amikor egy fókusz-munkamenet vagy szünet véget ér';

  @override
  String get notifTaskTitle => 'Feladat-emlékeztető';

  @override
  String get notifEventTitle => 'Közelgő esemény';

  @override
  String notifEventBody(String title, String time) {
    return '$title, $time';
  }

  @override
  String get notifFocusDoneTitle => 'Fókusz-munkamenet kész';

  @override
  String get notifFocusDoneBody => 'Szép munka. Ideje szünetet tartani.';

  @override
  String get notifBreakDoneTitle => 'Vége a szünetnek';

  @override
  String get notifBreakDoneBody => 'Készen állsz a következő munkamenetre?';

  @override
  String get notifHabitTitle => 'Szokásemlékeztető';

  @override
  String get notifReviewTitle => 'A kártyáid várnak';

  @override
  String get notifReviewBody => 'Egy rövid ismétlés frissen tartja a memóriát.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ó $minutes p';
  }

  @override
  String durationHours(int hours) {
    return '$hours ó';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes p';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'H,K,Sz,Cs,P,Sz,V';

  @override
  String a11yProgress(int value) {
    return 'Előrehaladás: $value százalék';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritás: $level';
  }

  @override
  String a11yColor(int index) {
    return '$index. szín';
  }

  @override
  String get analyticsRangeLabel => 'Időtartomány';

  @override
  String get analyticsRefresh => 'Frissítés';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done / $total esedékes feladat készült el időben';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done / $total feladat kész';
  }

  @override
  String get analyticsNoProjects => 'Nincsenek aktív projektek';

  @override
  String get analyticsNoFocus => 'Nincs fókusz-munkamenet ebben az időszakban';

  @override
  String get analyticsHabitsNone => 'Nincsenek aktív szokások';

  @override
  String get analyticsRetentionNote => 'A megtanult kártyák közül ennyire emlékeztél';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'A szabadidő $start–$end között számít a munkanapokon ($days), az időponthoz kötött események nélkül. A becsült munka a következő 7 napban esedékes nyitott feladatok becsléseinek összege.';
  }

  @override
  String get assistantWorkdaysMonFri => 'hétfő–péntek';

  @override
  String get assistantWorkdaysSunThu => 'vasárnap–csütörtök';

  @override
  String get assistantWorkloadDayOff => 'Szabadnap';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated tervezve · $free szabad';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Mostantól $end-ig tervezve, a mai események köré. Először a lejárt feladatok, aztán prioritás, határidő és becslés szerint.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Ütemezés időblokkokként';

  @override
  String get assistantScheduleConfirmTitle => 'Hozzáadod az időblokkokat a naptárhoz?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count időblokk kerül a mai naptárba.',
      one: '1 időblokk kerül a mai naptárba.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count időblokk hozzáadva',
      one: '1 időblokk hozzáadva',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Már a naptárban van';

  @override
  String get assistantPlanTimeline => 'Ma belefér';

  @override
  String get assistantNoEstimate => 'Adj meg becslést, hogy ezeket is betervezhesd';

  @override
  String get assistantNoNotes => 'Még nincsenek jegyzetek. Először írj egyet.';

  @override
  String get assistantNoteEmpty => 'Ez a jegyzet üres.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count feladat létrehozva',
      one: '1 feladat létrehozva',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártya létrehozva',
      one: '1 kártya létrehozva',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count létrehozása',
      one: '1 létrehozása',
      zero: 'Nincs kiválasztva semmi',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Felismert: üres jelölőnégyzetek („- [ ]”) és TODO: vagy To do: kezdetű sorok';

  @override
  String get assistantCardsHint =>
      'Felismert: „fogalom: meghatározás”, „fogalom — meghatározás” és Q:/A: sorpárok';

  @override
  String get assistantProviderHint =>
      'Bármely OpenAI-kompatibilis szolgáltatást használhatsz. A kulcs az eszköz biztonságos tárhelyén marad, és soha nem kerül bele a biztonsági mentésekbe.';

  @override
  String get assistantEndpointHelp => 'Például https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Hagyd üresen a tárolt kulcs megtartásához';

  @override
  String get assistantApiKeyRequired => 'Adj meg egy API-kulcsot';

  @override
  String get assistantProviderSaved => 'Szolgáltatás mentve';

  @override
  String get assistantProviderRemoved => 'Szolgáltatás eltávolítva, kulcs törölve';

  @override
  String get assistantRemoveProviderConfirm =>
      'Eltávolítod a szolgáltatást, és törlöd a tárolt API-kulcsot erről az eszközről?';

  @override
  String get assistantAskEveryTime => 'Kérdezzen minden kérés előtt';

  @override
  String get assistantSummarizing => 'Összefoglalás…';

  @override
  String assistantSummaryNote(String host) {
    return 'Készítette: $host. Ellenőrizd, mielőtt hagyatkozol rá.';
  }

  @override
  String get assistantCopy => 'Másolás';

  @override
  String get assistantCopied => 'Másolva';

  @override
  String get assistantConfigure => 'Szolgáltatás beállítása';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'A sorozat összes eseménye áthelyezve';

  @override
  String get calendarEventReminder => 'Emlékeztető';

  @override
  String get calendarEventRepeat => 'Ismétlés';

  @override
  String get calendarEventColor => 'Szín';

  @override
  String get calendarDefaultColor => 'A típus színének használata';

  @override
  String get calendarEventLinkedTask => 'Kapcsolt feladat';

  @override
  String get calendarEventNoTask => 'Nincs kapcsolt feladat';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count esemény',
      one: '1 esemény',
      zero: 'Nincs esemény',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count esedékes feladat',
      one: '1 esedékes feladat',
      zero: 'nincs esedékes feladat',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Adj hozzá eseményt vagy időblokkot a nap megtervezéséhez.';

  @override
  String get calendarNow => 'Jelenlegi idő';

  @override
  String get calendarRecurring => 'Ismétlődik';

  @override
  String get calendarEventNotFound => 'Ez az esemény már nem létezik';

  @override
  String get calendarEventLocalTime => 'Az időpontok az eszköz időzónájában jelennek meg';

  @override
  String get calendarEventDeleted => 'Esemény áthelyezve a kukába';

  @override
  String get calendarConflictMarker => 'Ütközik egy másik eseménnyel';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'A módosítások a sorozat minden eseményére vonatkoznak';

  @override
  String get calendarDragHintSeries => 'Egy ismétlődő esemény húzásával az egész sorozat elmozdul';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, esedékes feladat';
  }

  @override
  String get startupErrorTitle => 'Nem sikerült megnyitni az adataidat';

  @override
  String get startupErrorLocked =>
      'Az eszköz adatainak titkosítási kulcsa nem érhető el. Semmi sem törlődött. Gyakran segít az eszköz újraindítása. Ha nemrég állítottad vissza az eszközt, inkább titkosított biztonsági mentésből állítsd vissza az adataidat.';

  @override
  String get startupErrorCipher =>
      'Ez az eszköz nem támogatja az alkalmazáshoz szükséges titkosított tárolást. Semmi sem lett titkosítatlanul mentve.';

  @override
  String get startupErrorRetry => 'Újra';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártya vár ismétlésre',
      one: '1 kártya vár ismétlésre',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count esedékes';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count új';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Megtanult kártyák: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Adj meg 0-t vagy többet';

  @override
  String get flashcardsSearchCards => 'Kártyák keresése';

  @override
  String get flashcardsSearchEmpty => 'Nincs a keresésnek megfelelő kártya';

  @override
  String get flashcardsCardAdded => 'Kártya hozzáadva';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Esedékes: $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Másolás a vágólapra';

  @override
  String get flashcardsExportTitle => 'Pakli exportálása';

  @override
  String get flashcardsDeleteDeck => 'Pakli törlése';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, következő ismétlés $interval múlva';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Kérdés: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Válasz: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Kérdés megjelenítése';

  @override
  String get flashcardsImportField => 'Importálandó kártyák';

  @override
  String get flashcardsNothingToStudy => 'Nincs mit tanulni';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártya vár tanulásra',
      one: '1 kártya vár tanulásra',
      zero: 'Nincs kész kártya',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Értékelés szerint';

  @override
  String get flashcardsDeckNotFound => 'Ez a pakli már nem érhető el.';

  @override
  String get focusSessionDeleted => 'Munkamenet törölve';

  @override
  String get focusDeleteConfirm =>
      'Törlöd ezt a munkamenetet az előzményekből? Az ideje többé nem számít bele a céljaidba.';

  @override
  String get focusUnlinkTask => 'Kapcsolt feladat eltávolítása';

  @override
  String get focusNoteHint => 'Min dolgoztál?';

  @override
  String get focusModeLabel => 'Időzítő módja';

  @override
  String focusUpNext(String phase) {
    return 'Következik: $phase';
  }

  @override
  String get focusStopwatchHint => 'Felfelé számol, amíg le nem állítod.';

  @override
  String get focusOpenHint => 'Nincs időkorlát. Állj meg, amikor végeztél.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Az emlékeztetők ki vannak kapcsolva a beállításokban. Nem kapsz jelzést, amikor egy munkamenet véget ér.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Összes';

  @override
  String get goalsFilterPeriod => 'Időszakszűrő';

  @override
  String get goalsFilterStatus => 'Állapotszűrő';

  @override
  String get goalsEmptyFiltered => 'Egy cél sem felel meg ennek a szűrőnek';

  @override
  String goalsDueOn(String date) {
    return 'Határidő: $date';
  }

  @override
  String get goalsDeadline => 'Határidő (nem kötelező)';

  @override
  String get goalsNoDeadline => 'Nincs határidő';

  @override
  String get goalsSetDeadline => 'Határidő megadása';

  @override
  String get goalsRemoveDeadline => 'Határidő eltávolítása';

  @override
  String get goalsDescription => 'Leírás (nem kötelező)';

  @override
  String get goalsTitleLabel => 'Cím';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Célérték elérve';

  @override
  String get goalsLogged => 'Előrehaladás rögzítve';

  @override
  String get goalsEntryDeleted => 'Bejegyzés eltávolítva';

  @override
  String get goalsDeleteEntry => 'Bejegyzés eltávolítása';

  @override
  String get goalsDeleted => 'Cél törölve';

  @override
  String get goalsMarkActive => 'Megjelölés aktívként';

  @override
  String get goalsNotFound => 'Ez a cél már nem érhető el';

  @override
  String get goalsLinkTask => 'Feladat csatolása';

  @override
  String get goalsNoLinkedTasks => 'Még nincsenek kapcsolt feladatok';

  @override
  String get goalsUnlinkTask => 'Feladat leválasztása';

  @override
  String get goalsTaskOpen => 'Még nincs kész';

  @override
  String get goalsTaskLinked => 'Feladat csatolva';

  @override
  String get goalsTaskUnlinked => 'Feladat leválasztva';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count befejezett kapcsolt feladatot',
      one: '1 befejezett kapcsolt feladatot',
    );
    return 'Ebben az időszakban $_temp0 tartalmaz';
  }

  @override
  String get goalsHistoryAllTime =>
      'A korábbi időszakok bejegyzései itt maradnak, de csak a saját időszakukba számítanak.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Ma $done / $total kész';
  }

  @override
  String get habitsNothingToday => 'Mára nincs ütemezett szokás';

  @override
  String get habitsDecrease => 'Egy pipa visszavonása';

  @override
  String get habitsResetToday => 'A mai nap nullázása';

  @override
  String get habitsCheckInHint => 'Hosszan nyomva módosíthatod';

  @override
  String get habitsName => 'Név';

  @override
  String get habitsColor => 'Szín';

  @override
  String get habitsValidationDays => 'Válassz legalább egy napot';

  @override
  String habitsReminderAt(String time) {
    return 'Minden nap $time-kor';
  }

  @override
  String get habitsSetReminder => 'Emlékeztető időpontjának megadása';

  @override
  String get habitsRemoveReminder => 'Emlékeztető eltávolítása';

  @override
  String get habitsReminderNote =>
      'Az emlékeztetők az ütemezett napokon jelennek meg, ha az értesítések engedélyezve vannak.';

  @override
  String get habitsArchived => 'Szokás archiválva';

  @override
  String get habitsNotFound => 'Ez a szokás már nem érhető el';

  @override
  String get habitsLast30 => 'Elmúlt 30 nap';

  @override
  String get habitsConsistencyNone => 'Még nincs elég adat';

  @override
  String get habitsCalendar => 'Pipák előzményei';

  @override
  String get habitsCalendarHint => 'Koppints egy napra a javításhoz.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count / $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Pipák az elmúlt 90 napban. Rendszeresség: $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Pipák az elmúlt 90 napban. Még nincs elég adat.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap',
      one: '1 nap',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'A szüneteltetett napok nem befolyásolják a sorozatodat.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Szokás archiválása';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Naponta $count alkalommal',
      one: 'Naponta egyszer',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Egyéb jegyzetek';

  @override
  String get notesAllNotebooks => 'Minden jegyzetfüzet';

  @override
  String get notesNotebookName => 'A jegyzetfüzet neve';

  @override
  String get notesNotebookColor => 'Szín';

  @override
  String get notesDeleteNotebook => 'Jegyzetfüzet törlése';

  @override
  String get notesDeleteNotebookMessage =>
      'A jegyzetfüzet törlődik. A jegyzetei megmaradnak, és a Minden jegyzetfüzet alatt jelennek meg.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Tűzd ki a fontos jegyzeteket, hogy felül maradjanak.';

  @override
  String get notesEmptyFavorites => 'A kedvencnek jelölt jegyzetek itt jelennek meg.';

  @override
  String get notesEmptyArchived => 'Az archivált jegyzetek itt jelennek meg.';

  @override
  String get notesEmptyFiltered => 'Egy jegyzet sem felel meg ezeknek a szűrőknek.';

  @override
  String get notesArchivedSnack => 'Jegyzet archiválva';

  @override
  String get notesUnarchivedSnack => 'Jegyzet visszakerült a jegyzeteid közé';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done / $total kész';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formázás';

  @override
  String get notesWrite => 'Írás';

  @override
  String get notesPreviewEmpty => 'Még nincs mit megjeleníteni.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Még egy jegyzet sem hivatkozik ide. Erre a jegyzetre így hivatkozhatsz: [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Adj címet a jegyzetnek, hogy más jegyzetek hivatkozhassanak rá.';

  @override
  String get notesLinkedTasksEmpty => 'Ehhez a jegyzethez nincs feladat kapcsolva.';

  @override
  String notesLinkMissing(String title) {
    return 'Még nincs „$title” című jegyzet.';
  }

  @override
  String get notesNotFound => 'Ez a jegyzet már nem létezik.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Ellenőrzőlista-elem: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return '$title jegyzet megnyitása';
  }

  @override
  String get notesTaskDone => 'Befejezve';

  @override
  String get notifTimerDoneBody => 'A beállított idő letelt.';

  @override
  String get onboardingPrivatePointDevice => 'Csak ezen az eszközön, titkosítva tárolva';

  @override
  String get onboardingPrivatePointAccount => 'Nincs szükség fiókra';

  @override
  String get onboardingPrivatePointTracking => 'Nincs elemzés, nincs követés';

  @override
  String get onboardingLanguageBody => 'Ezt bármikor módosíthatod a Beállításokban.';

  @override
  String get onboardingNext => 'Tovább';

  @override
  String get projectsActive => 'Aktív';

  @override
  String get projectNameHint => 'pl. Termékbevezetés';

  @override
  String get projectGoalHint => 'Mikor kész?';

  @override
  String get projectNoDeadline => 'Nincs határidő';

  @override
  String get projectTasksOpen => 'Nyitott feladatok';

  @override
  String get projectTasksCompleted => 'Befejezett feladatok';

  @override
  String get projectAddTask => 'Feladat hozzáadása a projekthez';

  @override
  String get projectAddNote => 'Új projektjegyzet';

  @override
  String get projectLinkedNotes => 'Jegyzetek';

  @override
  String get projectNoTasks => 'Ebben a projektben még nincsenek feladatok';

  @override
  String get projectArchivedBadge => 'Archivált';

  @override
  String get projectDeleted => 'Projekt áthelyezve a kukába';

  @override
  String get projectDeleteMessage => 'A feladatok projekt nélkül a listádban maradnak.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent százalékban kész';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count találat',
      one: '1 találat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Szűrés típus szerint';

  @override
  String searchRecentTap(String query) {
    return 'Újbóli keresés: $query';
  }

  @override
  String get settingsLanguageHint =>
      'Válaszd ki az egész alkalmazás nyelvét. A nevek a saját nyelvükön jelennek meg.';

  @override
  String get settingsThemeHint => 'Világos, sötét vagy a rendszer szerint';

  @override
  String settingsDecrease(String setting) {
    return '$setting csökkentése';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting növelése';
  }

  @override
  String get settingsQuietStart => 'Kezdés';

  @override
  String get settingsQuietEnd => 'Befejezés';

  @override
  String get settingsNotificationsHint =>
      'Ez az alkalmazásban menti a beállításodat. A rendszer is kérhet engedélyt.';

  @override
  String get settingsDashboardHint =>
      'Húzással rendezheted át. Kapcsold ki a részeket, amelyekre nincs szükséged.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section áthelyezése';
  }

  @override
  String get settingsDashboardReset => 'Alapértelmezett sorrend visszaállítása';

  @override
  String get settingsAssistantDesc =>
      'Nem kötelező tervezési segítség. Semmi sem hagyja el az eszközt, hacsak nem csatlakoztatsz szolgáltatást.';

  @override
  String get settingsAssistantSetup => 'Asszisztens és szolgáltatás beállítása';

  @override
  String get settingsTrashDesc => 'Törölt elemek visszaállítása vagy végleges törlése';

  @override
  String get settingsEraseFirstBody =>
      'Ez nem vonható vissza. Érdemes előbb titkosított biztonsági mentést készíteni.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Írd be: $word';
  }

  @override
  String get settingsEraseFailed => 'Az adatokat nem sikerült törölni. Semmi sem változott.';

  @override
  String get settingsAboutTagline => 'Privát, helyben működő munkaterület a produktivitáshoz.';

  @override
  String get backupShowPassword => 'Jelszó megjelenítése';

  @override
  String get backupHidePassword => 'Jelszó elrejtése';

  @override
  String get backupSaved => 'Biztonsági mentés elmentve';

  @override
  String get backupFailed =>
      'A biztonsági mentést nem sikerült elkészíteni. Az adataid nem változtak.';

  @override
  String get backupReadFailed => 'A kiválasztott fájlt nem sikerült beolvasni.';

  @override
  String get backupRestoreFailed => 'A visszaállítás nem sikerült. Semmi sem változott.';

  @override
  String get backupShareSubject => 'Deep Focus titkosított biztonsági mentés';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count naponta',
      one: 'Minden nap',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hetente',
      one: 'Minden héten',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count havonta',
      one: 'Minden hónapban',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count évente',
      one: 'Minden évben',
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
    return 'ezeken a napokon: $days';
  }

  @override
  String get repeatEndsLabel => 'Vége';

  @override
  String get repeatEndsAfter => 'Adott számú alkalom után';

  @override
  String get repeatCountLabel => 'Alkalmak száma';

  @override
  String get reminderNone => 'Nincs emlékeztető';

  @override
  String get reminderCustomTime => 'Adott időpontban';

  @override
  String get a11yDecrease => 'Csökkentés';

  @override
  String get a11yIncrease => 'Növelés';

  @override
  String get pickTaskTitle => 'Válassz feladatot';

  @override
  String get pickTaskEmpty => 'Nincsenek nyitott feladatok';

  @override
  String get tasksSearchTooltip => 'Feladatok keresése';

  @override
  String get tasksSectionOverdue => 'Lejárt';

  @override
  String get tasksSectionToday => 'Ma';

  @override
  String get tasksRecurringSemantics => 'Ismétlődik';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimális prioritás';

  @override
  String get tasksFilterCategory => 'Kategória';

  @override
  String get tasksFilterAnyCategory => 'Bármely kategória';

  @override
  String get tasksFilterLabel => 'Címke';

  @override
  String get tasksFilterAnyLabel => 'Bármely címke';

  @override
  String get tasksFilterReset => 'Szűrők törlése';

  @override
  String get tasksViewByProject => 'Projekt szerint';

  @override
  String get tasksViewByPriority => 'Prioritás szerint';

  @override
  String get tasksViewByCategory => 'Kategória szerint';

  @override
  String get tasksGroupNoCategory => 'Nincs kategória';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count feladat blokkolja',
      one: '1 feladat blokkolja',
    );
    return '$_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Ezt a feladatot befejezetlen feladatok blokkolják. Mégis befejezed?';

  @override
  String get taskStartFocus => 'Fókusz erre a feladatra';

  @override
  String get taskRemoveDate => 'Dátum eltávolítása';

  @override
  String get taskAllDay => 'Nincs konkrét időpont';

  @override
  String get taskSaved => 'Feladat mentve';

  @override
  String get taskCreated => 'Feladat létrehozva';

  @override
  String get taskReminderNeedsDue => 'A relatív emlékeztetőkhöz adj meg határidőt';

  @override
  String get taskLabelName => 'A címke neve';

  @override
  String get taskPlanning => 'Tervezés';

  @override
  String get taskOrganize => 'Rendszerezés';

  @override
  String get taskBreakdown => 'Lebontás';

  @override
  String get trashDeleteTaskTitle => 'Véglegesen törlöd ezt a feladatot?';

  @override
  String get trashDeleteNoteTitle => 'Véglegesen törlöd ezt a jegyzetet?';

  @override
  String get trashDeleteBody => 'Ez nem vonható vissza.';

  @override
  String get trashEmptyTitle => 'Kiüríted a kukát?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elem véglegesen törlődik.',
      one: '1 elem véglegesen törlődik.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Visszaállítva';

  @override
  String get trashPurged => 'Véglegesen törölve';

  @override
  String trashDeletedOn(String date) {
    return 'Törölve: $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elem',
      one: '1 elem',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Felolvasás';

  @override
  String get flashcardsTtsUnavailable => 'A szövegfelolvasás nem érhető el ezen az eszközön.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Ehhez a nyelvhez nincs hang telepítve. Adj hozzá egyet az Android szövegfelolvasási beállításaiban.';

  @override
  String get calendarAgenda => 'Napirend';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Szikra',
      'rocket': 'Rakéta',
      'book': 'Könyv',
      'work': 'Munka',
      'home': 'Otthon',
      'heart': 'Szív',
      'code': 'Kód',
      'palette': 'Paletta',
      'fitness': 'Edzés',
      'school': 'Iskola',
      'travel': 'Utazás',
      'money': 'Megtakarítás',
      'other': 'Ikon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'További mezők';

  @override
  String get cardFieldExample => 'Példa';

  @override
  String get cardFieldExplanation => 'Magyarázat';

  @override
  String get cardFieldPronunciation => 'Kiejtés';

  @override
  String get cardFieldNotes => 'További megjegyzések';

  @override
  String get projectMilestones => 'Mérföldkövek';

  @override
  String get milestoneAdd => 'Mérföldkő hozzáadása';

  @override
  String get milestoneEdit => 'Mérföldkő szerkesztése';

  @override
  String get milestoneTitleLabel => 'Mérföldkő';

  @override
  String get milestoneNoDate => 'Nincs dátum';

  @override
  String get milestonesEmpty =>
      'Még nincsenek mérföldkövek. Adj hozzá dátummal ellátott ellenőrzőpontokat, hogy a naptárban követhesd a projektet.';

  @override
  String get milestoneDeleted => 'Mérföldkő törölve';

  @override
  String milestoneDoneA11y(String title) {
    return '„$title” mérföldkő megjelölése késznek';
  }

  @override
  String calendarMilestone(String project) {
    return 'Mérföldkő · $project';
  }

  @override
  String get tasksViewInbox => 'Beérkezett';

  @override
  String get tasksViewArchived => 'Archivált';

  @override
  String get tasksEmptyInbox =>
      'A projekt vagy dátum nélküli feladatok ide kerülnek. Rendezd őket, amikor van egy perced.';

  @override
  String get tasksEmptyArchived =>
      'Az archivált feladatok itt maradnak, a listáidon és emlékeztetőiden kívül.';

  @override
  String get taskArchivedBadge => 'Archivált';

  @override
  String get taskStatusInProgress => 'Folyamatban';

  @override
  String get taskArchived => 'Feladat archiválva';

  @override
  String get taskUnarchived => 'Feladat visszavéve az archívumból';

  @override
  String get focusPlanTitle => 'Munkamenetterv';

  @override
  String focusPlanTotal(String duration) {
    return 'Összesen $duration';
  }

  @override
  String get focusPlanRounds => 'Fókusz-munkamenetek';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Hosszú szünet ennyi után';

  @override
  String get focusPlanSkipLastBreak => 'Utolsó szünet kihagyása';

  @override
  String get focusPlanAutoBreaks => 'Szünetek automatikus indítása';

  @override
  String get focusPlanAutoFocus => 'Fókusz automatikus indítása szünet után';

  @override
  String get focusPlanSave => 'Terv mentése';

  @override
  String get focusPlanNameHint => 'pl. Vizsgafelkészülés';

  @override
  String get focusPlanSaved => 'Terv mentve';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work perc fókusz, $rest perc szünet';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label csökkentése';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label növelése';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '$current. munkamenet / $total';
  }

  @override
  String get focusSeriesComplete => 'A sorozat kész. Szép munka!';

  @override
  String get filterAll => 'Összes';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importálva · $duplicates ismétlődés kihagyva · $invalid hiányos sor';
  }

  @override
  String get flashcardsSuspend => 'Kártya felfüggesztése';

  @override
  String get flashcardsResume => 'Kártya folytatása';

  @override
  String get flashcardsSuspended => 'Kártya felfüggesztve: nem lesz ütemezve';

  @override
  String get flashcardsResumed => 'Kártya folytatva';

  @override
  String get flashcardsSuspendedFilter => 'Felfüggesztett';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown / $total kártya';
  }

  @override
  String get flashcardsImportFile => 'Fájlból';

  @override
  String get speechTitle => 'Beszéd';

  @override
  String get speechAppLanguage => 'Az alkalmazás nyelve';

  @override
  String get speechFrontLanguage => 'Az előlap nyelve';

  @override
  String get speechBackLanguage => 'A hátlap nyelve';

  @override
  String get speechRepeat => 'Minden felolvasás ismétlése';

  @override
  String get speechRate => 'Sebesség';

  @override
  String get speechAutoRead => 'A kérdés automatikus felolvasása';

  @override
  String get speechHint =>
      'Az eszközre telepített hangokat használja, internet nélkül. Ha egy nyelvhez nincs hang, szól, és nem használ helyette mást.';

  @override
  String get studyHowTitle => 'Hogyan szeretnél tanulni?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártya ismétlése',
      one: '1 kártya ismétlése',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Minden kártya gyakorlása (az ütemezés nem változik)';

  @override
  String get studyPracticeMistakes => 'A legutóbbi hibák gyakorlása';

  @override
  String get studyPracticeHint =>
      'A gyakorlókörök sosem változtatják meg, mikor esedékesek a kártyák. Az ismétlés frissíti az ütemezést.';

  @override
  String get studyModeClassic => 'Klasszikus';

  @override
  String get studyModeReverse => 'Fordított';

  @override
  String get studyModeMixed => 'Mindkét irányban';

  @override
  String get studyModeTyped => 'Válasz begépelése';

  @override
  String get studyModeChoice => 'Feleletválasztós';

  @override
  String get studyModeListening => 'Hallás utáni';

  @override
  String get studyPractice => 'gyakorlás';

  @override
  String get studyNoMistakes => 'Ebben a pakliban nincs friss hiba. Szép!';

  @override
  String get studyTypeAnswer => 'Írd be a válaszod';

  @override
  String get studyCheck => 'Ellenőrzés';

  @override
  String get studyKnewIt => 'Tudtam';

  @override
  String get studyDidntKnow => 'Nem tudtam';

  @override
  String studyMistakes(int count) {
    return 'Elrontva ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Az elrontott kártyák ismétlése';

  @override
  String get studyCorrect => 'Helyes';

  @override
  String get studyAlmost => 'Majdnem — ellenőrizd a helyesírást';

  @override
  String get studyWrong => 'Nem egészen';

  @override
  String get studyShowText => 'Szöveg megjelenítése';

  @override
  String get flashcardsImportFileFailed =>
      'A fájlt nem sikerült megnyitni. Helyette beillesztheted a tartalmát.';

  @override
  String get studyNoMatchingCards => 'Ennek a választásnak még egy kártya sem felel meg.';

  @override
  String get studyPracticeNew => 'Csak újak';

  @override
  String get studyPracticeHard => 'Nehéz kártyák';

  @override
  String get studyPracticeFavorites => 'Kedvencek';

  @override
  String get studySessionSize => 'Kártyák munkamenetenként';

  @override
  String get studySessionAll => 'Összes';

  @override
  String get studyOrder => 'Sorrend';

  @override
  String get studyOrderDue => 'A leginkább lejártak elöl';

  @override
  String get studyOrderRandom => 'Véletlenszerű';

  @override
  String get studyOrderHardest => 'A legnehezebbek elöl';

  @override
  String get flashcardsHard => 'Nehéz';

  @override
  String get flashcardsFavorites => 'Kedvencek';

  @override
  String get flashcardsFavorite => 'Hozzáadás a kedvencekhez';

  @override
  String get flashcardsUnfavorite => 'Eltávolítás a kedvencekből';

  @override
  String get flashcardsDuplicate => 'Másolat készítése';

  @override
  String get flashcardsMoveTo => 'Áthelyezés pakliba';

  @override
  String get flashcardsNoOtherDeck => 'Előbb hozz létre egy másik paklit.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártya áthelyezve',
      one: 'Kártya áthelyezve',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Címke hozzáadása';

  @override
  String get flashcardsTagHint => 'pl. igék';

  @override
  String flashcardsSelected(int count) {
    return '$count kiválasztva';
  }

  @override
  String get flashcardsSelectAll => 'Minden megjelenített kiválasztása';

  @override
  String flashcardsSelectCard(String front) {
    return '$front kiválasztása';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Felidézés: $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Lehetséges ismétlődés';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Ebben a pakliban már van „$front” → „$back”. Mégis mented?';
  }

  @override
  String get flashcardsSaveAnyway => 'Mentés mégis';

  @override
  String get flashcardsStats => 'Statisztika';

  @override
  String get flashcardsStatTotal => 'Kártyák';

  @override
  String get flashcardsStatLearning => 'Tanulás alatt';

  @override
  String get flashcardsStatMatureCaption => '21+ napja megjegyezve';

  @override
  String get flashcardsStatReviewsToday => 'Mai ismétlések';

  @override
  String get flashcardsStatCorrect => 'Helyes válaszok';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Elmúlt $days nap';
  }

  @override
  String get flashcardsStatForget => 'Felejtési arány';

  @override
  String get flashcardsStatForgetCaption => '„Újra” a megtanult kártyáknál';

  @override
  String get flashcardsStatRecall => 'Felidézés most';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-becslés, ismételt kártyák';

  @override
  String flashcardsStatActivity(int count) {
    return 'Ismétlések naponta · összesen $count';
  }

  @override
  String get flashcardsStatHistory => 'Legutóbbi válaszok';

  @override
  String get flashcardsStatNoHistory =>
      'Még nincs ismétlés. Tanulj a pakliból, és itt látod majd a haladásodat.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field felolvasása';
  }

  @override
  String get speechVoice => 'Hang';

  @override
  String get speechVoiceDefault => 'Automatikus';

  @override
  String get speechVoiceOnline => 'internet kell hozzá';

  @override
  String get speechTest => 'Hang kipróbálása';

  @override
  String get importNext => 'Előnézet';

  @override
  String get importPreviewTitle => 'Oszlopok hozzárendelése a mezőkhöz';

  @override
  String get importIgnoreColumn => 'Kihagyás';

  @override
  String importColumn(int n) {
    return '$n. oszlop';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready kártya kész · $invalid hiányos sor kimarad';
  }

  @override
  String get importNeedFrontBack => 'Válaszd ki, melyik oszlop az előlap és melyik a hátlap.';

  @override
  String get actionMoveUp => 'Feljebb';

  @override
  String get actionMoveDown => 'Lejjebb';

  @override
  String get flashcardsLayoutTitle => 'Kártya elrendezése';

  @override
  String get flashcardsLayoutHint =>
      'Nevezd át, rejtsd el vagy rendezd át a pakli kiegészítő mezőit. A kártyák tartalma soha nem változik.';

  @override
  String flashcardsLayoutShow(String field) {
    return '$field megjelenítése tanulás közben';
  }

  @override
  String get flashcardsLayoutStepReveal => 'A válasz lépésenkénti felfedése';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Először a hátlap jelenik meg; minden további mező egy koppintásra nyílik.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field megjelenítése';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Ez a fájl nagyobb $mb MB-nál.';
  }

  @override
  String get flashcardsImage => 'Kép';

  @override
  String get flashcardsAudio => 'Hang';

  @override
  String get flashcardsAddImage => 'Kép hozzáadása';

  @override
  String get flashcardsAddAudio => 'Hang hozzáadása';

  @override
  String get flashcardsPlayAudio => 'Felvétel lejátszása';

  @override
  String get flashcardsAudioUnavailable => 'Ez a felvétel nem játszható le ezen az eszközön.';

  @override
  String get flashcardsCustomFields => 'Saját mezőid';

  @override
  String get flashcardsTemplates => 'Sablonok';

  @override
  String flashcardsNewFieldName(int n) {
    return '$n. mező';
  }

  @override
  String get flashcardsAddField => 'Mező hozzáadása';

  @override
  String get flashcardsFieldName => 'A mező neve';

  @override
  String get flashcardsFieldLangDefault => 'Az oldal nyelve';

  @override
  String get flashcardsTemplateConfirm =>
      'A sablon meghatározza a mezők megjelenését, és hozzáadja a saját mezőit. A kártyáid és a meglévő mezők változatlanok maradnak.';

  @override
  String get flashcardsApplyTemplate => 'Alkalmazás';

  @override
  String get templateVocabulary => 'Szókincs';

  @override
  String get templateTwoTranslations => 'Szó két fordítással';

  @override
  String get templateQuestionAnswer => 'Kérdés és válasz';

  @override
  String get templateDefinition => 'Fogalom és meghatározás';

  @override
  String get templateGrammar => 'Nyelvtani szabály';

  @override
  String get templateFieldPlural => 'Többes szám';

  @override
  String get templateFieldTranslation2 => 'Második fordítás';

  @override
  String get templateFieldSynonyms => 'Szinonimák';

  @override
  String get templateFieldRule => 'Szabály';

  @override
  String get deckCategory => 'Szint vagy téma';

  @override
  String get deckCategoryHint => 'pl. A1, Orvostudomány';

  @override
  String get flashcardsSearchAll => 'Keresés az összes kártyában';

  @override
  String get flashcardsSearchAllHint => 'Szó, fordítás, példa, megjegyzés, címke…';

  @override
  String get flashcardsAllDecks => 'Minden pakli';

  @override
  String get flashcardsAllLanguages => 'Minden nyelv';

  @override
  String get flashcardsLangUnset => 'Nincs megadva nyelv';

  @override
  String get flashcardsLevelUnset => 'Nincs szint vagy téma';

  @override
  String get flashcardsByLanguage => 'Haladás nyelvenként';

  @override
  String get flashcardsByLevel => 'Haladás szint vagy téma szerint';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks pakli · $cards kártya · $mature megtanult · $due esedékes · $correct helyes (30 nap)';
  }

  @override
  String get flashcardsRecord => 'Felvétel';

  @override
  String get flashcardsRecording => 'Felvétel folyamatban…';

  @override
  String get flashcardsRecordStop => 'Leállítás és megtartás';

  @override
  String get flashcardsMicDenied =>
      'A mikrofon-hozzáférés ki van kapcsolva. A felvételhez engedélyezd a rendszerbeállításokban.';

  @override
  String get flashcardsRecordFailed => 'A felvétel nem érhető el ezen az eszközön.';

  @override
  String get soundsTitle => 'Hangok';

  @override
  String get soundsNature => 'Természet';

  @override
  String get soundsNoise => 'Fókuszzaj';

  @override
  String get soundRain => 'Eső';

  @override
  String get soundStorm => 'Zivatar';

  @override
  String get soundRiver => 'Folyó';

  @override
  String get soundOcean => 'Tengerhullámok';

  @override
  String get soundFire => 'Tábortűz';

  @override
  String get soundForest => 'Erdei madarak';

  @override
  String get soundNight => 'Nyári éjszaka';

  @override
  String get soundWhite => 'Fehér zaj';

  @override
  String get soundPink => 'Rózsaszín zaj';

  @override
  String get soundBrown => 'Barna zaj';

  @override
  String get soundsPlay => 'Lejátszás';

  @override
  String get soundsSleep => 'Elalvási időzítő';

  @override
  String get soundsSleepOff => 'Ki';

  @override
  String soundsSleepAt(String time) {
    return 'Leáll: $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Egyszerre legfeljebb $count hang szólhat.';
  }

  @override
  String get soundsHint =>
      'Koppints egy hangra a kezdéshez. Keverj többet, és állítsd be mindegyik hangerejét.';

  @override
  String get soundsMixer => 'Keverés';

  @override
  String soundsVolumeOf(String name) {
    return '$name hangereje';
  }

  @override
  String get soundsChannel => 'Természeti hangok';

  @override
  String get settingsEndTone => 'Az időzítő záróhangja';

  @override
  String get toneGentle => 'Lágy sípolás';

  @override
  String get toneBeeps => 'Sípolás';

  @override
  String get toneWood => 'Kopogás fán';

  @override
  String get toneBird => 'Madárhang';

  @override
  String get toneStream => 'Patak';

  @override
  String get toneSystem => 'A telefon hangja';

  @override
  String get speechOnPhone => 'Ezen a telefonon';

  @override
  String get speechAllLanguages => 'Minden nyelv';

  @override
  String get speechSearchLanguage => 'Nyelvek keresése';

  @override
  String get speechGetVoices => 'További hangok letöltése';

  @override
  String get speechGetVoicesHint =>
      'A hang nélküli nyelvekhez a telefon beszédbeállításaiban tölthetsz le hangot.';

  @override
  String get speechSettingsFailed => 'Nem sikerült megnyitni a telefon beszédbeállításait.';

  @override
  String get speechVoiceMissing => 'Nincs telepített hang';

  @override
  String get speechPause => 'Szünet az ismétlések között';

  @override
  String speechSeconds(String seconds) {
    return '$seconds mp';
  }

  @override
  String get speechExample => 'A példa felolvasása a válasszal';

  @override
  String get flashListen => 'Hallgatás';

  @override
  String get flashListenNext => 'Következő kártya';

  @override
  String get flashListenEmpty => 'Nincs meghallgatható kártya.';

  @override
  String get flashViewTable => 'Táblázat';

  @override
  String get flashViewCards => 'Kártyák';

  @override
  String get flashSwapSides => 'Oszlopok felcserélése';

  @override
  String get flashSort => 'Rendezés';

  @override
  String get flashSortNewest => 'Legújabbak elöl';

  @override
  String get flashSortAlpha => 'A–Z';

  @override
  String get flashSortDue => 'Esedékesek elöl';

  @override
  String get flashSortHard => 'Legnehezebbek elöl';

  @override
  String get flashPasteCards => 'Kártyák beillesztése';

  @override
  String get flashClipboardEmpty => 'A vágólapon nincs szöveg.';

  @override
  String get flashMenuAdd => 'Kártyák hozzáadása';

  @override
  String get flashMenuDeck => 'Pakli';

  @override
  String get flashToday => 'Ma';

  @override
  String get flashStudyNow => 'Tanulás';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count megválaszolt kártya',
      one: '1 megválaszolt kártya',
      zero: 'Nincs megválaszolt kártya',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Eső az erdőben';

  @override
  String get autoBackupTitle => 'Automatikus biztonsági mentések';

  @override
  String get autoBackupDesc => 'Minden nap ezen a telefonon; az utolsó 7 megmarad';

  @override
  String get autoBackupHint =>
      'Ezek a másolatok ezen a telefonon maradnak, és törlődnek, ha eltávolítod az alkalmazást. Új telefonra váltáskor a „Biztonsági mentés” gombbal ments egy fájlt.';

  @override
  String get autoBackupNone => 'Még nincs automatikus biztonsági mentés. Az első ma készül el.';

  @override
  String get autoBackupRestore => 'Visszaállítás';

  @override
  String autoBackupConfirm(String date) {
    return 'Lecseréled az összes jelenlegi adatot a(z) $date napi biztonsági mentésre?';
  }

  @override
  String get autoBackupRestored => 'Visszaállítva.';

  @override
  String get errorLogTitle => 'Hibanapló';

  @override
  String get errorLogHint =>
      'Ha valami elromlik, itt rögzítődik: csak a hiba fajtája és a helye a kódban, soha nem a tartalmad. Oszd meg, hogy segíts a hiba javításában.';

  @override
  String get errorLogEmpty => 'Nincs rögzített hiba.';

  @override
  String get errorLogClear => 'Törlés';

  @override
  String get soundsWithFocus => 'Lejátszás fókusz-munkamenetek alatt';

  @override
  String get soundsWithFocusHint =>
      'A keveréked a fókusz-munkamenettel indul, és szünetekben megáll.';

  @override
  String get soundsSavedMixes => 'Mentett keverékek';

  @override
  String get soundsSaveMix => 'Keverék mentése';

  @override
  String get soundsMixNameHint => 'Név, pl. Esős könyvtár';

  @override
  String soundsDeleteMix(String name) {
    return 'Törlöd a(z) „$name” keveréket?';
  }

  @override
  String get settingsReviewReminderHint => 'Naponta egyszer, csak ha vannak esedékes kártyák';

  @override
  String get settingsReviewTime => 'Emlékeztető időpontja';

  @override
  String get shortcutFocus => 'Fókusz';

  @override
  String get shortcutNewTask => 'Új feladat';

  @override
  String get shortcutReview => 'Kártyák ismétlése';

  @override
  String get shortcutSounds => 'Természeti hangok';

  @override
  String get myDayTitle => 'Kezdjük a napot';

  @override
  String get myDayHint => 'A napod egy pillantásra, aztán egy koppintással fókusz';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count feladat mára',
      one: '1 feladat mára',
      zero: 'Mára nincs feladat',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Ma már nincs több esemény';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Következik: $title, $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count szokás van hátra',
      one: '1 szokás van hátra',
      zero: 'Minden szokás kész',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Kezdés egy fókusz-munkamenettel';

  @override
  String get hijriMonth1 => 'Moharrem';

  @override
  String get hijriMonth2 => 'Szafar';

  @override
  String get hijriMonth3 => 'Rabí al-avval';

  @override
  String get hijriMonth4 => 'Rabí asz-szání';

  @override
  String get hijriMonth5 => 'Dzsumádá al-úlá';

  @override
  String get hijriMonth6 => 'Dzsumádá al-áhira';

  @override
  String get hijriMonth7 => 'Radzsab';

  @override
  String get hijriMonth8 => 'Saabán';

  @override
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Savvál';

  @override
  String get hijriMonth11 => 'Dzú l-kaada';

  @override
  String get hijriMonth12 => 'Dzú l-hiddzsa';

  @override
  String hijriDate(int day, String month, int year) {
    return '$year. $month $day. (hidzsra)';
  }

  @override
  String get settingsHijri => 'Hidzsra szerinti dátumok';

  @override
  String get settingsHijriHint => 'A naptárban és a kezdőképernyőn jelenik meg (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap',
      one: '1 nap',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Ma $done / $goal kártya';
  }

  @override
  String get studyGoalReached => 'A napi cél teljesítve. Szép munka!';

  @override
  String get studyWeekTitle => 'A heted';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7 nap alatt $count megválaszolt kártya',
      one: '7 nap alatt 1 megválaszolt kártya',
      zero: '7 nap alatt nem válaszoltál kártyára',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration fókusz 7 nap alatt';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Sorozat: $current · Legjobb: $best';
  }

  @override
  String get studyGoalTitle => 'Napi cél (kártya)';

  @override
  String get studyGoalOff => 'Ki';

  @override
  String get focusDndTitle => 'Ne zavarjanak fókusz közben';

  @override
  String get focusDndHint => 'Minden fókusz-munkamenetnél bekapcsol, szünetben pedig ki';

  @override
  String get focusDndNeedsAccess =>
      'A használathoz engedélyezd a hozzáférést a telefon beállításaiban';

  @override
  String get voiceInput => 'Diktálás';

  @override
  String get voiceInputPrompt => 'Beszélj most';

  @override
  String get voiceInputUnavailable =>
      'A hangalapú bevitel nem érhető el ezen a telefonon. Telepíts vagy kapcsolj be egy beszédszolgáltatást (például a Google Beszédfelismerés és -szintézis alkalmazását).';

  @override
  String get prayerFajr => 'Fadzsr';

  @override
  String get prayerSunrise => 'Napkelte';

  @override
  String get prayerDhuhr => 'Zuhr';

  @override
  String get prayerAsr => 'Aszr';

  @override
  String get prayerMaghrib => 'Magrib';

  @override
  String get prayerIsha => 'Isá';

  @override
  String get prayerMethodMwl => 'Muszlim Világliga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egyiptomi Általános Hatóság';

  @override
  String get prayerMethodJordan => 'Jordánia, Vallásügyi (Awqaf) Minisztérium';

  @override
  String get prayerMethodKarachi => 'Iszlám Tudományok Egyeteme, Karacsi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Öböl-menti térség';

  @override
  String get prayerMethodKuwait => 'Kuvait';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Törökország, Diyanet';

  @override
  String get prayerMethodSingapore => 'Szingapúr, Malajzia, Indonézia';

  @override
  String get prayerMethodFrance => 'Franciaország (12°)';

  @override
  String get prayerMethodRussia => 'Oroszország, Szellemi Igazgatóság';

  @override
  String prayerNotifTitle(String name) {
    return 'Ideje: $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Imaidő · $time';
  }

  @override
  String get prayerTitle => 'Imaidők';

  @override
  String get prayerOffHint =>
      'Válaszd ki a városodat az imaidők megjelenítéséhez. A telefonon számolódnak; nincs szükség helyhozzáférésre.';

  @override
  String get prayerChooseCity => 'Város kiválasztása';

  @override
  String get prayerCity => 'Város';

  @override
  String get prayerCitySearch => 'Város keresése';

  @override
  String get prayerMethod => 'Számítási módszer';

  @override
  String get prayerHanafiAsr => 'Hanafita aszr (későbbi időpont)';

  @override
  String get prayerReminders => 'Értesítés minden imaidőben';

  @override
  String get prayerPauseFocus => 'Fókusz szüneteltetése imaidőben';

  @override
  String get prayerPauseFocusHint => 'A futó munkamenet szünetel; az ima után folytathatod';

  @override
  String get prayerTurnOff => 'Imaidők kikapcsolása';

  @override
  String get prayerAccuracyNote =>
      'A számított időpontok néhány perccel eltérhetnek a helyi mecsetétől.';

  @override
  String prayerNext(String name, String time) {
    return '$name: $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Ez az Anki-fájl a legújabb formátumot használja. Az Ankiban exportáld újra a „Régebbi Anki-verziók támogatása” beállítással, majd azt a fájlt importáld.';

  @override
  String get importTemplate => 'Táblázatsablon';

  @override
  String get importTemplateFront => 'alma';

  @override
  String get importTemplateBack => 'kerek gyümölcs';

  @override
  String get importTemplateExample => 'Minden nap eszem egy almát.';

  @override
  String get importTemplateTag => 'étel';

  @override
  String get starterTitle => 'Kezdő paklik';

  @override
  String get starterHint =>
      'Adj hozzá egyet, és máris kezdheted a tanulást. Később szerkesztheted vagy törölheted.';

  @override
  String get starterAdd => 'Hozzáadás';

  @override
  String get starterWords => 'Hétköznapi angol szavak (arabul)';

  @override
  String get starterCapitals => 'A világ fővárosai';

  @override
  String get starterElements => 'Kémiai elemek';

  @override
  String get settingsAccent => 'Kiemelőszín';

  @override
  String get accentViolet => 'Ibolya';

  @override
  String get accentBlue => 'Kék';

  @override
  String get accentTeal => 'Kékeszöld';

  @override
  String get accentGreen => 'Zöld';

  @override
  String get accentRose => 'Rózsa';

  @override
  String get accentAmber => 'Borostyán';

  @override
  String get settingsFlashTextSize => 'A kártyák szövegmérete';

  @override
  String get settingsFlashTextSample => 'Példa';

  @override
  String get widgetStartFocus => 'Koppints a fókuszhoz';

  @override
  String widgetFocusUntil(String time) {
    return 'Fókusz eddig: $time';
  }

  @override
  String get widgetNoCardsDue => 'Kártyák: minden kész';

  @override
  String get faqMyDayQ => 'Mit csinál a „Kezdjük a napot”?';

  @override
  String get faqMyDayA =>
      'A kezdőképernyő naponta egyszer felajánlja: látod a mai feladatokat, a következő eseményt, a hátralévő szokásokat és az esedékes kártyákat, majd egy koppintással fókusz-munkamenetet indíthatsz. Nyomd hosszan az alkalmazás ikonját a gyorsműveletekhez, vagy tedd ki a kezdőképernyőre a modult, hogy lásd a fókuszidőt és az esedékes kártyákat.';

  @override
  String get faqTasksQ => 'Hogyan adhatok hozzá feladatot emlékeztetővel?';

  @override
  String get faqTasksA =>
      'Koppints az Új feladat gombra a Kezdőlapon vagy a + jelre a Feladatokban. Írd be a címet, vagy mondd be a mikrofonba, aztán állítsd be a határidőt, az időpontot és az emlékeztetőt. A lejárt feladatok elöl szerepelnek.';

  @override
  String get faqFocusQ => 'Hogyan működik a fókuszidőzítő?';

  @override
  String get faqFocusA =>
      'Válaszd a Pomodorót, a visszaszámlálót vagy a szabad időt, és nyomd meg az Indítást; a szünetek automatikusan következhetnek. A Beállításokban kiválaszthatod a záróhangot, bekapcsolhatod a Ne zavarjanak fókusz közben módot, és minden munkamenethez lejátszhatod a természeti hangokat.';

  @override
  String get faqSoundsQ => 'Keverhetek természeti hangokat?';

  @override
  String get faqSoundsA =>
      'Kapcsolj be legfeljebb hat valódi felvételt, állítsd be mindegyik hangerejét, és mentsd el a keveréket egy névvel. A háttérben szólnak tovább, és egy elalvási időzítő leállíthatja őket. Zenét nem használunk.';

  @override
  String get faqCalendarQ => 'Meg tudja jeleníteni a naptár a hidzsra szerinti dátumokat?';

  @override
  String get faqCalendarA =>
      'Igen. A hidzsra szerinti dátumok (Umm al-Qura) arab nyelven automatikusan megjelennek, és bármely nyelvhez bekapcsolhatók a Beállításokban. Az események, a határidős feladatok és a projektek mérföldkövei együtt jelennek meg.';

  @override
  String get faqFlashcardsQ => 'Hogyan dönti el az ismétlés, milyen kártyákat látok?';

  @override
  String get faqFlashcardsA =>
      'A jól ismert kártyák hosszabb idő után térnek vissza, az elrontottak hamar (időközönkénti ismétlés). Minden választ értékelj: Újra, Nehéz, Jó vagy Könnyű. Állíts be napi célt, és tartsd meg a sorozatodat a Ma kártyán. Adj meg vizsgadátumot egy paklihoz, hogy lásd, hány nap van hátra, és naponta hány új kártyát érdemes megtanulni. A „Saját sorrend” rendezéssel a helyükre húzhatod a kártyákat, a hangszóróra koppintva bármelyik oldalt meghallgathatod, a sebességet és az ismétléseket pedig a Beszéd menüben állíthatod.';

  @override
  String get faqImportQ => 'Áthozhatok kártyákat az Ankiból vagy az Excelből?';

  @override
  String get faqImportA =>
      'Igen. Egy pakliban válaszd az Importálást, majd egy fájlt: Anki (.apkg), Excel (.xlsx) vagy CSV, és rendeld hozzá az oszlopokat. A „Táblázatsablon” segítségével számítógépen is írhatsz kártyákat. Az Anki-fájlokban lévő képek és hangok nem kerülnek importálásra.';

  @override
  String get faqNotesQ => 'Mit tudnak a jegyzetek?';

  @override
  String get faqNotesA =>
      'Írj szabadon ellenőrzőlistákkal és formázással, tűzd ki vagy jelöld kedvencnek a fontos jegyzeteket, adj hozzá címkéket, és kapcsold össze a jegyzeteket feladatokkal. A mikrofon gombbal diktálhatsz. Új jegyzetet sablonból is kezdhetsz (előadás, könyvösszefoglaló, napló, heti terv), a kép gombbal pedig fotókat adhatsz hozzá.';

  @override
  String get faqHabitsQ => 'Hogyan számolódnak a szokássorozatok?';

  @override
  String get faqHabitsA =>
      'Egy nap akkor számít, ha egy ütemezett napon eléred a szokás célját. A szokás szüneteltetése megóvja a sorozatot. Minden szokásnak lehet saját emlékeztetőidőpontja.';

  @override
  String get faqGoalsQ => 'Hogyan követik a célok az előrehaladást?';

  @override
  String get faqGoalsA =>
      'Adj meg a célhoz célértéket és mértékegységet, majd rögzítsd az előrehaladást. A kártyája mutatja, hol tartasz, és mennyi van hátra a határidőig.';

  @override
  String get faqProjectsQ => 'Mire valók a projektek?';

  @override
  String get faqProjectsA =>
      'Csoportosítsd a feladatokat egy projektbe, adj hozzá dátumos mérföldköveket, és kövesd az összesített előrehaladást. A mérföldkövek a naptárban is megjelennek.';

  @override
  String get faqInsightsQ => 'Mit mutatnak az Elemzések?';

  @override
  String get faqInsightsA =>
      'A fókuszidődet, a befejezett feladatokat és a tanulást napokra és hetekre bontva, kíméletes javaslatokkal. Minden a telefonodon számolódik.';

  @override
  String get faqSpacesQ => 'Hol vannak a részek?';

  @override
  String get faqSpacesA =>
      'A Terek listázza az alkalmazás minden részét (jegyzetek, paklik, szokások, célok, projektek, hangok és egyebek), így a fősáv egyszerű marad.';

  @override
  String get faqBackupQ => 'Hogyan készül biztonsági mentés az adataimról?';

  @override
  String get faqBackupA =>
      'Az alkalmazás minden nap csendben titkosított másolatot készít ezen a telefonon, és megtartja az utolsó 7-et. A Beállításokban jelszóval védett biztonsági mentést is exportálhatsz, és egy másik telefonon visszaállíthatod.';

  @override
  String get faqPrayerQ => 'Hogyan működnek az imaidők?';

  @override
  String get faqPrayerA =>
      'Válaszd ki a városodat a Beállítások → Imaidők menüben. Az időpontokat a telefon az ott használt módszerrel számolja, a módszer és az aszr iskolája módosítható. Minden imánál kérhetsz értesítést, és a futó fókusz-munkamenet szünetel.';

  @override
  String get faqPrivacyQ => 'Hol tárolódnak az adataim?';

  @override
  String get faqPrivacyA =>
      'Csak a telefonodon, titkosított adatbázisban. Nincs fiók és nincs követés. Az internetet csak az általad bekapcsolt funkciók használják, például a nem kötelező asszisztens.';

  @override
  String get faqAssistantQ => 'Mi az asszisztens?';

  @override
  String get faqAssistantA =>
      'Nem kötelező segítő, amelyet a Beállításokban a saját MI-szolgáltatásodhoz csatlakoztatsz. Alapból ki van kapcsolva, és rákérdez, mielőtt bármilyen jegyzetszöveget elküldene.';

  @override
  String get tourPlanTitle => 'Tervezd meg a napod';

  @override
  String get tourPlanBody =>
      'Feladatok, naptár és szokások egy nyugodt helyen. Kezdd minden reggel a „Kezdjük a napot” gombbal.';

  @override
  String get tourFocusTitle => 'Fókuszálj mélyen';

  @override
  String get tourFocusBody =>
      'Időzített munkamenetek valódi természeti hangokkal, Ne zavarjanak móddal és lágy záróhangokkal.';

  @override
  String get tourLearnTitle => 'Tanulj tartósan';

  @override
  String get tourLearnBody =>
      'Kártyák időközönkénti ismétléssel, felolvasás sok nyelven, importálás Ankiból vagy Excelből.';

  @override
  String get helpTitle => 'Súgó és kérdések';

  @override
  String get helpOpen => 'Megnyitás';

  @override
  String get helpTour => 'Bemutató megtekintése';

  @override
  String get tourNext => 'Tovább';

  @override
  String get tourDone => 'Kezdjük';

  @override
  String get transferColTitle => 'Cím';

  @override
  String get transferColNotes => 'Jegyzetek';

  @override
  String get transferColBody => 'Szöveg';

  @override
  String get transferColDue => 'Határidő';

  @override
  String get transferColPriority => 'Prioritás (0-3)';

  @override
  String get transferColDone => 'Kész';

  @override
  String get transferColProject => 'Projekt';

  @override
  String get transferColCategory => 'Kategória';

  @override
  String get transferTitle => 'Importálás és exportálás';

  @override
  String get transferSaveAs => 'Mentés másként';

  @override
  String get transferImport => 'Importálás fájlból';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV vagy Word-táblázat. Oszlopok: cím, határidő (2026-12-31), prioritás 0-3, kész, projekt, jegyzetek. Az alkalmazásban már meglévő feladatok kimaradnak.';

  @override
  String get transferImportNotesHint =>
      'A Word-, Markdown- vagy szövegfájlokból jegyzet lesz. Excel vagy CSV: soronként egy jegyzet (cím, szöveg).';

  @override
  String get transferSaved => 'Fájl mentve';

  @override
  String get transferFailed => 'A fájlt nem sikerült elkészíteni. Semmi sem változott.';

  @override
  String get transferUnsupported =>
      'Ez a fájl itt nem olvasható. Használj Excelt, CSV-t, Wordöt, Markdownt vagy szöveget.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added hozzáadva',
      one: '1 hozzáadva',
      zero: 'Nincs új hozzáadnivaló',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Szöveg';

  @override
  String get transferAllNotes => 'Minden jegyzet';

  @override
  String get transferThisNote => 'Ez a jegyzet';

  @override
  String get transferDeckFormats => 'Mentés Excel, Word vagy PDF formátumban';

  @override
  String get faqFilesQ => 'Használhatok Excel-, Word- vagy PDF-fájlokat?';

  @override
  String get faqFilesA =>
      'Igen. A Feladatok és a Jegyzetek tetején van egy import–export gomb (két nyíl), és minden pakli menüjében is megtalálod. Menthetsz Excel, CSV, Word vagy PDF formátumban, és behozhatsz Excel-, CSV-, Word-, Markdown- vagy szövegfájlokat. Az oszlopnevek az alkalmazás bármely nyelvén lehetnek, a mentett fájljaidat pedig mindig újra importálhatod.';

  @override
  String get tplLecture => 'Előadás';

  @override
  String get tplBook => 'Könyvösszefoglaló';

  @override
  String get tplJournal => 'Napló';

  @override
  String get tplWeek => 'Heti terv';

  @override
  String get tplLectureBody => '## Fő gondolatok\n- \n\n## Kérdések\n- [ ] \n\n## Összefoglalás\n';

  @override
  String get tplBookBody =>
      '## A fő gondolat\n\n## Amit tanultam\n- \n\n## Idézetek\n> \n\n## Alkalmazni\n- [ ] \n';

  @override
  String get tplJournalBody => '## Hálás vagyok\n- \n\n## A mai fókusz\n- [ ] \n\n## Jegyzetek\n';

  @override
  String get tplWeekBody =>
      '## A hét céljai\n- [ ] \n\n### Szombat\n- [ ] \n\n### Vasárnap\n- [ ] \n\n### Hétfő\n- [ ] \n\n### Kedd\n- [ ] \n\n### Szerda\n- [ ] \n\n### Csütörtök\n- [ ] \n\n### Péntek\n- [ ] \n';

  @override
  String get tplHint => 'Kezdés sablonból';

  @override
  String get noteImage => 'Kép';

  @override
  String get noteAddImage => 'Kép hozzáadása';

  @override
  String get noteImageUnreadable =>
      'Ez a fájl nem olyan kép, amelyet az alkalmazás be tud olvasni.';

  @override
  String get noteImageTooLarge => 'Ez a kép túl nagy.';

  @override
  String get examSet => 'Vizsgadátum megadása';

  @override
  String get examDate => 'Vizsgadátum';

  @override
  String get examToday => 'Ma van a vizsga. Sok sikert!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap múlva vizsga',
      one: 'Holnap vizsga',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tanulj meg napi $count új kártyát',
      one: 'tanulj meg napi 1 új kártyát',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'minden kártya megtanulva, ismételj tovább';

  @override
  String examRaiseLimit(int count) {
    return 'Napi $count új kártya megjelenítése';
  }

  @override
  String get backupDriveHint =>
      'Ha online is szeretnél másolatot, a megnyíló mentési képernyőn válaszd a Google Drive-ot (vagy egy másik felhőalkalmazást).';

  @override
  String get flashShareDeck => 'Pakli megosztása egy baráttal';

  @override
  String get flashSortManual => 'Saját sorrend (húzás)';

  @override
  String get flashReorderHint =>
      'Tartsd lenyomva a fogantyút, és húzd el a kártyát az áthelyezéshez.';

  @override
  String get flashReorderNeedsAll => 'A kártyák húzásához töröld a keresést és a szűrőket.';

  @override
  String get flashDragHandle => 'Húzd az áthelyezéshez';

  @override
  String get reportTitle => 'Havi jelentés';

  @override
  String get reportFocus => 'Fókuszidő';

  @override
  String reportSessions(int count) {
    return '$count munkamenet';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Legjobb nap: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktív nap';
  }

  @override
  String get reportCards => 'Ismételt kártyák';

  @override
  String reportCardsKnown(String percent) {
    return '$percent megjegyezve';
  }

  @override
  String get reportTasks => 'Befejezett feladatok';

  @override
  String get reportHabits => 'Szokáspipák';

  @override
  String get reportEmpty => 'Ebben a hónapban még nincs rögzítve semmi.';

  @override
  String get reportSave => 'Mentés PDF vagy Word formátumban';

  @override
  String get reportPrevMonth => 'Előző hónap';

  @override
  String get reportNextMonth => 'Következő hónap';

  @override
  String get careTitle => 'A telefon és az adatok gondozása';

  @override
  String get storageTitle => 'Tárhely';

  @override
  String get storageSubtitle => 'Mi foglal helyet, és a nem használt képek törlése';

  @override
  String get storagePictures => 'Képek a jegyzetekben';

  @override
  String get storageCardMedia => 'Képek és hangok a kártyákon';

  @override
  String get storageText => 'Jegyzetek szövege';

  @override
  String get storageFree => 'Szabad hely a telefonon';

  @override
  String get storageLow =>
      'A telefonod majdnem megtelt. Szabadíts fel egy kis helyet, hogy a biztonsági mentések és az emlékeztetők továbbra is működjenek.';

  @override
  String storageUnused(int count, String size) {
    return '$count nem használt kép ($size)';
  }

  @override
  String get storageNoUnused => 'Nincs nem használt kép. Minden rendben.';

  @override
  String get storageClean => 'Nem használt képek eltávolítása';

  @override
  String storageCleaned(int count) {
    return '$count kép eltávolítva';
  }

  @override
  String get storageHint =>
      'Egy kép csak akkor számít nem használtnak, ha egyetlen jegyzet sem jeleníti meg, a kukában lévőket is beleértve.';

  @override
  String get batteryTitle => 'Hogy az emlékeztetők működjenek';

  @override
  String get batterySubtitle =>
      'Egyes telefonok leállítják a háttérben futó alkalmazásokat. Ellenőrizd a tiédet.';

  @override
  String get batteryStatusOk =>
      'Az akkumulátorkímélő nem korlátozza ezt az alkalmazást. Az emlékeztetőknek és hangoknak időben meg kell érkezniük.';

  @override
  String get batteryStatusLimited =>
      'Az akkumulátorkímélő leállíthatja ezt az alkalmazást a háttérben, így az emlékeztetők és hangok késhetnek vagy elmaradhatnak.';

  @override
  String get batteryOpen => 'Akkumulátor-beállítások megnyitása';

  @override
  String get batteryOpenApp => 'Alkalmazásbeállítások megnyitása';

  @override
  String get batteryGeneric =>
      'Az akkumulátor-beállításokban válaszd ki ezt az alkalmazást, és állítsd Korlátlan (vagy Ne optimalizáljon) értékre.';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: nyisd meg a Biztonság › Engedélyek › Automatikus indítás menüt is, kapcsold be ezt az alkalmazást, az akkumulátorkímélőt pedig állítsd Nincs korlátozás értékre.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: nyisd meg az Akkumulátor › ez az alkalmazás menüt, engedélyezd a háttérben futást és az automatikus indítást; zárold az alkalmazást a legutóbbi alkalmazások listájában.';

  @override
  String get batterySamsung =>
      'Samsung: Akkumulátor › Háttérhasználati korlátok: vedd ki az alkalmazást az Alvó alkalmazások és a Mélyalvó alkalmazások közül.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Alkalmazásindítás › ez az alkalmazás › kézi kezelés, és engedélyezd az automatikus indítást, a másodlagos indítást és a háttérben futást.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Akkumulátor › Háttér-energiafogyasztás › engedélyezd ezt az alkalmazást, az engedélyeknél pedig kapcsold be az automatikus indítást.';

  @override
  String get whatsNewTitle => 'Újdonságok';

  @override
  String get whatsNewSubtitle => 'A legfrissebb változások néhány sorban';

  @override
  String get whatsNewDone => 'Értem';

  @override
  String get whatsNewOrderTitle => 'Húzd a kártyákat a saját sorrendedbe';

  @override
  String get whatsNewOrderBody =>
      'Egy pakliban válaszd a Rendezés › Saját sorrend lehetőséget, majd tartsd lenyomva a fogantyút, és húzd.';

  @override
  String get whatsNewSpeechTitle => 'Hangszóró a kártya mindkét oldalán';

  @override
  String get whatsNewSpeechBody =>
      'Koppints rá, hogy meghallgasd a szót vagy a fordítást. A sebesség, az ismétlések és a hang az ismétlés menüjében található. A nyelvet a szöveg alapján ismeri fel.';

  @override
  String get whatsNewReportTitle => 'Havi jelentés';

  @override
  String get whatsNewReportBody =>
      'Az Elemzésekben koppints a jelentés ikonra, hogy lásd a hónapot, és PDF vagy Word formátumban mentsd.';

  @override
  String get whatsNewCareTitle => 'A telefon és az adatok gondozása';

  @override
  String get whatsNewCareBody =>
      'A Beállításokban most van egy tárhelyoldal képtisztítással és egy akkumulátor-útmutató a telefonod márkájához.';

  @override
  String get whatsNewSoundTitle => 'Nyugodtabb hangok';

  @override
  String get whatsNewSoundBody =>
      'A természeti hangok lágyabbak és halkabbak, a képes kártyák pedig szebbek.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Ellenőrizve: $date. A legutóbbi biztonsági mentés rendben megnyílik.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Ellenőrizve: $date. Sérült biztonsági mentést találtunk, és újra cseréltük.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Ellenőrizve: $date. A legutóbbi biztonsági mentést nem sikerült megnyitni. Ments magad egy biztonsági mentést a Beállításokban.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Általában $time körül tanulsz';
  }

  @override
  String get smartReviewTimeUse => 'Használom';

  @override
  String get widgetNewNote => 'Új jegyzet';

  @override
  String get noteConnections => 'Címkék, hivatkozások és feladatok';

  @override
  String get navCards => 'Kártyák';

  @override
  String get studyAnswerWay => 'Hogyan válaszolsz?';

  @override
  String get studyMorePractice => 'Extra gyakorlás';

  @override
  String get studySessionSettings => 'A munkamenet beállításai';

  @override
  String get focusAdjustTitle => 'A munkameneted';

  @override
  String get focusPresetsTitle => 'Kész változatok';

  @override
  String get focusPresetStudy => 'Tanulás';

  @override
  String get focusPresetDeep => 'Elmélyült munka';

  @override
  String get focusPresetQuick => 'Gyors sprint';

  @override
  String get focusPresetReading => 'Olvasás';

  @override
  String get focusPresetWorkout => 'Edzéskörök';

  @override
  String get focusAdjustMinutes => 'A fókusz hossza';

  @override
  String get focusAdjustBreak => 'A szünet hossza';

  @override
  String get focusAdjustRounds => 'Körök';

  @override
  String get focusRoundsOpen => 'Nincs korlát';

  @override
  String focusMinutesShort(String n) {
    return '$n perc';
  }

  @override
  String get focusTapToAdjust => 'Koppints az idő módosításához';

  @override
  String get flashArrangeDecks => 'Paklik rendezése';

  @override
  String get flashDeckActions => 'Pakli beállításai';

  @override
  String get starterBrowse => 'Kész paklik';

  @override
  String get starterBrowseHint => 'Adj hozzá egyet egy koppintással, és kezdd el a tanulást';

  @override
  String get dashOpenDecks => 'Kártyák megnyitása';

  @override
  String speechVoiceNumber(String n) {
    return '$n. hang';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Szép flow. Pihensz $m percet?';
  }

  @override
  String get focusFlowBreakStart => 'Szünet indítása';

  @override
  String tasksFinishAt(String time) {
    return 'Ha most kezded, mindennel végzel ekkorra: $time';
  }

  @override
  String get focusCalmPacing => 'Nyugodt tempó';

  @override
  String get focusCalmPacingHint => 'Csak egész percek és a gyűrű, ketyegő másodpercek nélkül';

  @override
  String get focusFlipHint => 'Fordítsd képernyővel lefelé a telefont a kezdéshez';

  @override
  String get focusImmersive => 'Elmélyült mód';

  @override
  String get focusImmersiveBlack => 'Tiszta fekete (kíméli az akkumulátort)';

  @override
  String get focusFlipToFocus => 'Fordítsd meg a fókuszhoz';

  @override
  String get focusFlipToFocusHint =>
      'Elmélyült módban: képernyővel lefelé indul, felemelve szünetel';

  @override
  String get guardTitle => 'Figyelemelterelés-védő';

  @override
  String get guardSubtitle => 'Szüneteltesd a zavaró alkalmazásokat, amíg fókuszálsz';

  @override
  String get guardSwitch => 'Zavaró alkalmazások szüneteltetése';

  @override
  String get guardSwitchHint => 'Fókusz-munkamenetek alatt és az Időőr óráidban';

  @override
  String get guardNeedsAccess =>
      'A kisegítő lehetőségek kapcsolója kell hozzá: koppints a bekapcsoláshoz';

  @override
  String get guardDisclosureTitle => 'Hogyan működik a védő';

  @override
  String get guardDisclosureBody =>
      'A kiválasztott alkalmazások szüneteltetéséhez a Deep Focus az Android kisegítő szolgáltatását használja, hogy lássa, melyik alkalmazás van megnyitva. Ha a „Shorts és Reels bezárása” be van kapcsolva, azt is ellenőrzi, hogy rövidvideó-lejátszó van-e a képernyőn.\n\nNem olvas szöveget, semmit nem tárol abból, amit lát, és semmit nem küld sehová: minden a telefonodon marad. Bármikor kikapcsolhatod a kisegítő lehetőségek beállításaiban.';

  @override
  String get guardAgree => 'Elfogadom, beállítások megnyitása';

  @override
  String get guardModeGentle => 'Kíméletes';

  @override
  String get guardModeStrict => 'Szigorú';

  @override
  String get guardGentleHint => '5 másodperces légzőszünet, aztán te döntesz';

  @override
  String get guardStrictHint => 'A kiválasztott alkalmazások zárva maradnak a fókuszidő végéig';

  @override
  String get guardApps => 'Szüneteltetendő alkalmazások';

  @override
  String get guardAppsAllowed => 'Engedélyezett alkalmazások';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alkalmazás',
      one: '1 alkalmazás',
      zero: 'Még nincs kiválasztva',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Csak a kiválasztott alkalmazások engedélyezése';

  @override
  String get guardAllowlistHint =>
      'Minden más alkalmazás szünetel; a hívások, a beállítások és a billentyűzet mindig működnek';

  @override
  String get guardShorts => 'Shorts és Reels bezárása';

  @override
  String get guardShortsHint =>
      'Amíg a védő be van kapcsolva. Amennyire lehet: ezek az alkalmazások gyakran változnak';

  @override
  String get guardSchedule => 'Időőr';

  @override
  String get guardScheduleHint =>
      'Védelem a megadott napokon és órákban is, például iskolában vagy munkában';

  @override
  String get guardFrom => 'Ettől';

  @override
  String get guardTo => 'Eddig';

  @override
  String get guardSearchApps => 'Alkalmazások keresése';

  @override
  String get guardNoApps => 'Nem található alkalmazás';

  @override
  String get guardPrivacy =>
      'Csak a telefonodon működik: a védő látja, melyik alkalmazás van megnyitva, de a tartalmát soha, és semmit sem küld el.';

  @override
  String get guardBreathe => 'Lélegezz be… és ki';

  @override
  String get guardQuestion => 'Most szükséged van erre az alkalmazásra?';

  @override
  String get guardBackToFocus => 'Vissza a fókuszhoz';

  @override
  String get guardOpenFive => 'Megnyitás 5 percre';

  @override
  String get guardStrictBody => 'Ez az alkalmazás a fókuszidőd végéig szünetel.';

  @override
  String get guardShortsClosed => 'A rövid videók bezáródnak, amíg a védő be van kapcsolva';

  @override
  String get faqGuardQ => 'Hogyan állíthatom le a zavaró alkalmazásokat fókusz közben?';

  @override
  String get faqGuardA =>
      'Nyisd meg: Fókusz → időzítő beállításai → Figyelemelterelés-védő. Válaszd ki az alkalmazásokat, majd a Kíméletes (5 másodperc légzés és a kérdés: „Most szükséged van erre az alkalmazásra?”) vagy a Szigorú módot (zárva maradnak). Fókusz-munkamenetek alatt működik, az Időőrrel pedig a megadott napokon és órákban is. A „Csak a kiválasztott alkalmazások engedélyezése” minden mást szüneteltet; a hívások, a beállítások és a billentyűzet mindig működnek. Az Android egyszer megkér, hogy kapcsold be a védőt a kisegítő lehetőségek beállításaiban. Csak azt látja, melyik alkalmazás van megnyitva, és semmit sem küld el.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Áthelyezve ide: $name';
  }

  @override
  String get notesDragHint => 'Tarts lenyomva egy jegyzetet, és húzd egy jegyzetfüzetre';

  @override
  String get guardReviewCards => 'Inkább kártyákat ismétlek';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kártya vár rád',
      one: '1 kártya vár rád',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Vészhelyzet: tartsd lenyomva 10 másodpercig';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Tartsd tovább… $n';
  }

  @override
  String get guardWeekTitle => 'Ezen a héten';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count szüneteltetés',
      one: '1 szüneteltetés',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alkalommal vissza a fókuszhoz',
      one: 'egyszer vissza a fókuszhoz',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Szavak átnevezése';

  @override
  String get wordsSubtitle => 'Saját szót használhatsz az alkalmazás bármely szövegéhez';

  @override
  String get wordsHint =>
      'Koppints egy szövegre a módosításához. A szavaid csak erre a nyelvre vonatkoznak, és a biztonsági mentésekbe is bekerülnek.';

  @override
  String get wordsSearch => 'Szövegek keresése';

  @override
  String get wordsChangedOnly => 'Csak a módosítottak';

  @override
  String wordsOriginal(String text) {
    return 'Eredeti: $text';
  }

  @override
  String get wordsReset => 'Eredeti használata';

  @override
  String get wordsResetAll => 'Minden szó visszaállítása';

  @override
  String get wordsResetAllConfirm => 'Ezen a nyelven minden szöveg visszaáll az eredetire.';

  @override
  String get wordsNone => 'Nem található szöveg';

  @override
  String get settingsLanguageSearch => 'Nyelvek keresése';

  @override
  String get settingsLanguageNoMatch => 'Nincs egyező nyelv';

  @override
  String get soundsMyMusic => 'Saját hangfájl';

  @override
  String get soundsMusicHint =>
      'Játssz le egy hangfájlt a telefonodról. Semmi sem lesz másolva vagy feltöltve.';

  @override
  String get soundsChooseMusic => 'Hang kiválasztása';

  @override
  String get soundsRemoveMusic => 'Hang eltávolítása';

  @override
  String get wordPacksTitle => 'Nyelvtanulás';

  @override
  String get wordPacksHint =>
      'Szólisták témák szerint. Csak a kívánt nyelvet töltsd le, aztán szabadon szerkeszd vagy töröld a kártyákat.';

  @override
  String get wordPacksFailed => 'A letöltés nem sikerült. Ellenőrizd a kapcsolatot.';

  @override
  String get wordPacksEmpty => 'A nyelv szavai még készülnek.';
}
