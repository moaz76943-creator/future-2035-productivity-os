// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Start';

  @override
  String get navTasks => 'Zadania';

  @override
  String get navFocus => 'Skupienie';

  @override
  String get navCalendar => 'Kalendarz';

  @override
  String get navSpaces => 'Przestrzenie';

  @override
  String get moduleProjects => 'Projekty';

  @override
  String get moduleNotes => 'Notatki';

  @override
  String get moduleFlashcards => 'Fiszki';

  @override
  String get moduleGoals => 'Cele';

  @override
  String get moduleHabits => 'Nawyki';

  @override
  String get moduleAnalytics => 'Statystyki';

  @override
  String get moduleSearch => 'Szukaj';

  @override
  String get moduleAssistant => 'Asystent';

  @override
  String get moduleSettings => 'Ustawienia';

  @override
  String get moduleTrash => 'Kosz';

  @override
  String get actionSave => 'Zapisz';

  @override
  String get actionCancel => 'Anuluj';

  @override
  String get actionDelete => 'Usuń';

  @override
  String get actionEdit => 'Edytuj';

  @override
  String get actionDone => 'Gotowe';

  @override
  String get actionAdd => 'Dodaj';

  @override
  String get actionCreate => 'Utwórz';

  @override
  String get actionClose => 'Zamknij';

  @override
  String get actionBack => 'Wstecz';

  @override
  String get actionUndo => 'Cofnij';

  @override
  String get actionRestore => 'Przywróć';

  @override
  String get actionRetry => 'Spróbuj ponownie';

  @override
  String get actionContinue => 'Dalej';

  @override
  String get actionSkip => 'Pomiń';

  @override
  String get actionArchive => 'Archiwizuj';

  @override
  String get actionUnarchive => 'Przywróć z archiwum';

  @override
  String get actionPin => 'Przypnij';

  @override
  String get actionUnpin => 'Odepnij';

  @override
  String get actionMore => 'Więcej opcji';

  @override
  String get actionClear => 'Wyczyść';

  @override
  String get actionSearch => 'Szukaj';

  @override
  String get actionSort => 'Sortuj';

  @override
  String get actionShare => 'Udostępnij';

  @override
  String get actionImport => 'Importuj';

  @override
  String get actionExport => 'Eksportuj';

  @override
  String get actionPause => 'Wstrzymaj';

  @override
  String get actionResume => 'Wznów';

  @override
  String get actionStart => 'Rozpocznij';

  @override
  String get actionStop => 'Zatrzymaj';

  @override
  String get actionComplete => 'Zakończ';

  @override
  String get actionDeleteForever => 'Usuń na zawsze';

  @override
  String get actionEmptyTrash => 'Opróżnij kosz';

  @override
  String get actionUnlink => 'Odłącz';

  @override
  String get actionCustomize => 'Dostosuj';

  @override
  String get actionPreview => 'Podgląd';

  @override
  String get actionLog => 'Zapisz postęp';

  @override
  String get stateLoading => 'Wczytywanie…';

  @override
  String get stateSaving => 'Zapisywanie…';

  @override
  String get stateSaved => 'Zapisano';

  @override
  String get stateUnsaved => 'Niezapisane zmiany';

  @override
  String get errorGenericTitle => 'Coś poszło nie tak';

  @override
  String get errorGenericMessage => 'Twoje dane są bezpieczne. Spróbuj ponownie.';

  @override
  String get errorLoadFailed => 'Nie udało się wczytać tej treści.';

  @override
  String get errorSaveFailed => 'Nie udało się zapisać. Twoje zmiany wciąż tu są.';

  @override
  String get validationRequired => 'To pole jest wymagane';

  @override
  String get validationTitleRequired => 'Wpisz tytuł';

  @override
  String get validationNameRequired => 'Wpisz nazwę';

  @override
  String get validationTooLong => 'To jest za długie';

  @override
  String get validationEndBeforeStart => 'Koniec musi być po początku';

  @override
  String get validationStartAfterDue => 'Data rozpoczęcia musi być przed terminem';

  @override
  String get validationPositiveNumber => 'Wpisz liczbę większą od zera';

  @override
  String get validationDependencyCycle => 'To utworzyłoby zależność cykliczną';

  @override
  String get validationInvalidRepeat => 'Ta reguła powtarzania jest nieprawidłowa';

  @override
  String get deletedItem => 'Przeniesiono do kosza';

  @override
  String get untitled => 'Bez tytułu';

  @override
  String get noProject => 'Bez projektu';

  @override
  String get greetingMorning => 'Dzień dobry';

  @override
  String get greetingAfternoon => 'Dzień dobry';

  @override
  String get greetingEvening => 'Dobry wieczór';

  @override
  String get dashFocusToday => 'Dzisiejsze skupienie';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done z $target';
  }

  @override
  String get dashStartFocus => 'Zacznij skupienie';

  @override
  String get dashFocusRunning => 'Sesja trwa';

  @override
  String get dashTodayTasks => 'Na dziś';

  @override
  String get dashAgenda => 'Plan dnia';

  @override
  String get dashHabits => 'Dzisiejsze nawyki';

  @override
  String get dashGoals => 'Cele';

  @override
  String get dashReview => 'Powtórki';

  @override
  String get dashRecentNotes => 'Ostatnie notatki';

  @override
  String get dashInsight => 'Sugestia';

  @override
  String get dashSeeAll => 'Pokaż wszystko';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiszki do powtórki',
      many: '$count fiszek do powtórki',
      few: '$count fiszki do powtórki',
      one: '1 fiszka do powtórki',
      zero: 'Brak fiszek do powtórki',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Powtórz teraz';

  @override
  String get dashCustomizeTitle => 'Sekcje ekranu głównego';

  @override
  String get dashCustomizeHint => 'Wybierz, co pojawia się na ekranie głównym.';

  @override
  String get dashSectionFocus => 'Skupienie';

  @override
  String get dashSectionToday => 'Zadania na dziś';

  @override
  String get dashSectionAgenda => 'Plan dnia';

  @override
  String get dashSectionHabits => 'Nawyki';

  @override
  String get dashSectionGoals => 'Cele';

  @override
  String get dashSectionReview => 'Powtórka fiszek';

  @override
  String get dashSectionNotes => 'Ostatnie notatki';

  @override
  String get dashSectionInsight => 'Sugestie';

  @override
  String get quickAddTask => 'Nowe zadanie';

  @override
  String get quickAddNote => 'Nowa notatka';

  @override
  String get quickAddEvent => 'Nowe wydarzenie';

  @override
  String get quickStartFocus => 'Skupienie';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Masz $count zaległego zadania. Zacznij od najważniejszego.',
      many: 'Masz $count zaległych zadań. Zacznij od najważniejszego.',
      few: 'Masz $count zaległe zadania. Zacznij od najważniejszego.',
      one: 'Masz 1 zaległe zadanie. Najpierw je przełóż lub zakończ.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Do dziennego celu skupienia brakuje Ci $minutes min.';
  }

  @override
  String get insightCardsDue => 'Powtórz teraz zaległe fiszki, póki są świeże.';

  @override
  String get insightAllClear =>
      'Wszystko idzie zgodnie z planem. Zaplanuj jutro albo zrób uważną przerwę.';

  @override
  String insightHabitStreak(String habit) {
    return 'Utrzymaj serię: $habit czeka dziś na wykonanie.';
  }

  @override
  String get focusTitle => 'Skupienie';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Minutnik';

  @override
  String get focusModeCountUp => 'Stoper';

  @override
  String get focusModeOpen => 'Swobodna';

  @override
  String get focusPhaseWork => 'Skupienie';

  @override
  String get focusPhaseShortBreak => 'Krótka przerwa';

  @override
  String get focusPhaseLongBreak => 'Długa przerwa';

  @override
  String get focusReady => 'Gotowe, kiedy Ty będziesz';

  @override
  String get focusPaused => 'Wstrzymano';

  @override
  String get focusRunning => 'W skupieniu';

  @override
  String get focusDuration => 'Czas trwania';

  @override
  String get focusLinkTask => 'Połącz zadanie';

  @override
  String get focusLinkedTask => 'Pracujesz nad';

  @override
  String get focusNoTask => 'Brak połączonego zadania';

  @override
  String focusCycle(int current, int total) {
    return 'Cykl $current z $total';
  }

  @override
  String get focusSkipBreak => 'Pomiń przerwę';

  @override
  String get focusStartBreak => 'Zacznij przerwę';

  @override
  String get focusStartNext => 'Zacznij kolejne skupienie';

  @override
  String get focusSessionComplete => 'Sesja ukończona';

  @override
  String get focusSessionStopped => 'Sesja zapisana';

  @override
  String focusSessionSummary(String duration) {
    return 'Skupiałeś się przez $duration.';
  }

  @override
  String get focusAddNote => 'Dodaj notatkę o tej sesji';

  @override
  String get focusHistory => 'Historia';

  @override
  String get focusNoHistory => 'Ukończone sesje pojawią się tutaj';

  @override
  String get focusTargets => 'Cele';

  @override
  String get focusDailyTarget => 'Cel dzienny';

  @override
  String get focusWeeklyTarget => 'Cel tygodniowy';

  @override
  String get focusOutcomeCompleted => 'Ukończona';

  @override
  String get focusOutcomeInterrupted => 'Przerwana wcześniej';

  @override
  String get focusRecovered => 'Sesja trwała dalej, gdy aplikacja była zamknięta.';

  @override
  String get focusCompletedWhileAway =>
      'Sesja zakończyła się, gdy aplikacja była zamknięta, i została zapisana.';

  @override
  String get focusNotificationsOff =>
      'Powiadomienia są wyłączone. Nie dostaniesz alertu po zakończeniu sesji.';

  @override
  String get focusBatteryHint =>
      'Niektóre urządzenia wstrzymują aplikacje w tle. Minutnik pozostaje dokładny, ale alerty mogą się spóźniać. Zezwól na nieograniczone użycie baterii, aby alerty były niezawodne.';

  @override
  String get focusOpenSettings => 'Otwórz ustawienia';

  @override
  String get focusStopConfirmTitle => 'Zatrzymać tę sesję?';

  @override
  String get focusStopConfirmMessage => 'Dotychczasowy czas skupienia zostanie zapisany.';

  @override
  String get focusDiscard => 'Odrzuć';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuty',
      many: '$minutes minut',
      few: '$minutes minuty',
      one: '1 minuta',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, pozostało $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, minęło $time';
  }

  @override
  String get focusDeleteSession => 'Usuń sesję';

  @override
  String get tasksTitle => 'Zadania';

  @override
  String get tasksViewToday => 'Dziś';

  @override
  String get tasksViewUpcoming => 'Nadchodzące';

  @override
  String get tasksViewAll => 'Wszystkie';

  @override
  String get tasksViewOverdue => 'Zaległe';

  @override
  String get tasksViewCompleted => 'Ukończone';

  @override
  String get tasksQuickAddHint => 'Dodaj zadanie…';

  @override
  String get tasksEmptyTitle => 'Wszystko zrobione';

  @override
  String get tasksEmptyMessage => 'Dodaj zadanie, aby zaplanować swój dzień.';

  @override
  String get tasksEmptyCompleted => 'Ukończone zadania pojawią się tutaj.';

  @override
  String get taskNew => 'Nowe zadanie';

  @override
  String get taskEdit => 'Edytuj zadanie';

  @override
  String get taskTitleLabel => 'Tytuł';

  @override
  String get taskTitleHint => 'Co trzeba zrobić?';

  @override
  String get taskDescriptionLabel => 'Opis';

  @override
  String get taskNotesLabel => 'Notatki';

  @override
  String get taskPriority => 'Priorytet';

  @override
  String get priorityNone => 'Brak';

  @override
  String get priorityLow => 'Niski';

  @override
  String get priorityMedium => 'Średni';

  @override
  String get priorityHigh => 'Wysoki';

  @override
  String get priorityUrgent => 'Pilny';

  @override
  String get taskDueDate => 'Termin';

  @override
  String get taskStartDate => 'Data rozpoczęcia';

  @override
  String get taskReminder => 'Przypomnienie';

  @override
  String get taskRepeat => 'Powtarzaj';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategoria';

  @override
  String get taskCategoryHint => 'np. Praca, Dom, Nauka';

  @override
  String get taskEstimateMinutes => 'Szacunek (minuty)';

  @override
  String get taskTracked => 'Zmierzone skupienie';

  @override
  String get taskLabels => 'Etykiety';

  @override
  String get taskAddLabel => 'Nowa etykieta';

  @override
  String get taskChecklist => 'Lista kontrolna';

  @override
  String get taskAddChecklistItem => 'Dodaj pozycję';

  @override
  String get taskSubtasks => 'Podzadania';

  @override
  String get taskAddSubtask => 'Dodaj podzadanie';

  @override
  String get taskDependencies => 'Blokowane przez';

  @override
  String get taskAddDependency => 'Dodaj zadanie blokujące';

  @override
  String get taskLinkedNotes => 'Połączone notatki';

  @override
  String get taskSetTime => 'Ustaw godzinę';

  @override
  String get taskNoDate => 'Bez daty';

  @override
  String get taskCompleted => 'Zadanie ukończone';

  @override
  String get taskNextOccurrence => 'Utworzono kolejne powtórzenie';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dnia po terminie',
      many: '$days dni po terminie',
      few: '$days dni po terminie',
      one: '1 dzień po terminie',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Oznacz „$title” jako zrobione';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Oznacz „$title” jako niezrobione';
  }

  @override
  String get sortSmart => 'Inteligentnie';

  @override
  String get sortDueDate => 'Termin';

  @override
  String get sortPriority => 'Priorytet';

  @override
  String get sortCreated => 'Najnowsze';

  @override
  String get sortTitle => 'Tytuł';

  @override
  String get filterAllProjects => 'Wszystkie projekty';

  @override
  String get filterAnyPriority => 'Dowolny priorytet';

  @override
  String get filterTitle => 'Filtruj i sortuj';

  @override
  String get dateToday => 'Dziś';

  @override
  String get dateTomorrow => 'Jutro';

  @override
  String get dateYesterday => 'Wczoraj';

  @override
  String get repeatNever => 'Nie powtarza się';

  @override
  String get repeatDaily => 'Codziennie';

  @override
  String get repeatWeekdays => 'W dni robocze';

  @override
  String get repeatWeekly => 'Co tydzień';

  @override
  String get repeatMonthly => 'Co miesiąc';

  @override
  String get repeatYearly => 'Co rok';

  @override
  String get repeatCustom => 'Niestandardowe';

  @override
  String get repeatEvery => 'Powtarzaj co';

  @override
  String get repeatOnDays => 'W dni';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dnia',
      many: 'dni',
      few: 'dni',
      one: 'dzień',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tygodnia',
      many: 'tygodni',
      few: 'tygodnie',
      one: 'tydzień',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'miesiąca',
      many: 'miesięcy',
      few: 'miesiące',
      one: 'miesiąc',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'roku',
      many: 'lat',
      few: 'lata',
      one: 'rok',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count razach',
      one: '1 razie',
    );
    return 'Kończy się po $_temp0';
  }

  @override
  String get repeatEndsNever => 'Nigdy się nie kończy';

  @override
  String get reminderAtTime => 'W chwili wydarzenia';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuty wcześniej',
      many: '$minutes minut wcześniej',
      few: '$minutes minuty wcześniej',
      one: '1 minutę wcześniej',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours godziny wcześniej',
      many: '$hours godzin wcześniej',
      few: '$hours godziny wcześniej',
      one: '1 godzinę wcześniej',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 dzień wcześniej';

  @override
  String get projectsTitle => 'Projekty';

  @override
  String get projectsEmptyTitle => 'Brak projektów';

  @override
  String get projectsEmptyMessage => 'Grupuj powiązane zadania, notatki i czas skupienia.';

  @override
  String get projectNew => 'Nowy projekt';

  @override
  String get projectEdit => 'Edytuj projekt';

  @override
  String get projectName => 'Nazwa';

  @override
  String get projectDescription => 'Opis';

  @override
  String get projectGoal => 'Cel';

  @override
  String get projectDeadline => 'Termin';

  @override
  String get projectColor => 'Kolor';

  @override
  String get projectIcon => 'Ikona';

  @override
  String get projectProgress => 'Postęp';

  @override
  String projectTasksDone(int done, int total) {
    return 'Ukończono $done z $total zadań';
  }

  @override
  String get projectFocusTime => 'Czas skupienia';

  @override
  String get projectArchived => 'Zarchiwizowane projekty';

  @override
  String get projectShowArchived => 'Pokaż zarchiwizowane';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Zostało $days dnia',
      many: 'Zostało $days dni',
      few: 'Zostały $days dni',
      one: 'Został 1 dzień',
      zero: 'Termin dziś',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Po terminie';

  @override
  String get calendarTitle => 'Kalendarz';

  @override
  String get calendarMonth => 'Miesiąc';

  @override
  String get calendarWeek => 'Tydzień';

  @override
  String get calendarDay => 'Dzień';

  @override
  String get calendarToday => 'Dziś';

  @override
  String get calendarPrevious => 'Poprzedni';

  @override
  String get calendarNext => 'Następny';

  @override
  String get calendarNoEvents => 'Nic nie zaplanowano';

  @override
  String get calendarAllDay => 'Cały dzień';

  @override
  String get eventNew => 'Nowe wydarzenie';

  @override
  String get eventEdit => 'Edytuj wydarzenie';

  @override
  String get eventTitleHint => 'Tytuł wydarzenia';

  @override
  String get eventStarts => 'Początek';

  @override
  String get eventEnds => 'Koniec';

  @override
  String get eventKind => 'Typ';

  @override
  String get eventKindEvent => 'Wydarzenie';

  @override
  String get eventKindTimeBlock => 'Blok czasu';

  @override
  String get eventKindFocus => 'Sesja skupienia';

  @override
  String get eventKindGoal => 'Cel osobisty';

  @override
  String get eventDescription => 'Szczegóły';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Koliduje z $count wydarzeniami',
      one: 'Koliduje z 1 wydarzeniem',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Konflikty w planie tego dnia';

  @override
  String get calendarTaskDue => 'Zadanie z terminem';

  @override
  String get calendarDragHint => 'Przytrzymaj i przeciągnij wydarzenie, aby je przenieść';

  @override
  String get calendarRescheduled => 'Wydarzenie przeniesione';

  @override
  String get calendarScheduleTask => 'Zaplanuj jako blok czasu';

  @override
  String get notesTitle => 'Notatki';

  @override
  String get notesViewAll => 'Wszystkie';

  @override
  String get notesViewPinned => 'Przypięte';

  @override
  String get notesViewFavorites => 'Ulubione';

  @override
  String get notesViewArchived => 'Zarchiwizowane';

  @override
  String get notesTags => 'Tagi';

  @override
  String get notesNewNotebook => 'Nowy notes';

  @override
  String get notesNoNotebook => 'Bez notesu';

  @override
  String get notesEmptyTitle => 'Czysta karta';

  @override
  String get notesEmptyMessage => 'Zapisuj pomysły, notatki ze spotkań i wiedzę.';

  @override
  String get noteTitleHint => 'Tytuł';

  @override
  String get noteBodyHint => 'Zacznij pisać… Użyj # dla tagów i [[Tytuł]], aby łączyć notatki.';

  @override
  String get noteFavorite => 'Ulubiona';

  @override
  String get noteUnfavorite => 'Usuń z ulubionych';

  @override
  String get noteMoveTo => 'Przenieś do notesu';

  @override
  String get noteBacklinks => 'Linkowane z';

  @override
  String get noteLinkedTasks => 'Połączone zadania';

  @override
  String get noteLinkTask => 'Połącz zadanie';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Nagłówek';

  @override
  String get noteFormatBold => 'Pogrubienie';

  @override
  String get noteFormatItalic => 'Kursywa';

  @override
  String get noteFormatList => 'Lista punktowana';

  @override
  String get noteFormatChecklist => 'Lista kontrolna';

  @override
  String get noteFormatLink => 'Link';

  @override
  String noteEdited(String time) {
    return 'Edytowano $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count słowa',
      many: '$count słów',
      few: '$count słowa',
      one: '1 słowo',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Fiszki';

  @override
  String get flashEmptyTitle => 'Utwórz pierwszą talię';

  @override
  String get flashEmptyMessage =>
      'Powtórki rozłożone w czasie pokazują każdą fiszkę tuż przed tym, zanim ją zapomnisz.';

  @override
  String get deckNew => 'Nowa talia';

  @override
  String get deckEdit => 'Edytuj talię';

  @override
  String get deckName => 'Nazwa talii';

  @override
  String get deckDescription => 'Opis';

  @override
  String get deckDailyNew => 'Nowe fiszki dziennie';

  @override
  String get deckDailyReview => 'Dzienny cel powtórek';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiszki',
      many: '$count fiszek',
      few: '$count fiszki',
      one: '1 fiszka',
      zero: 'Brak fiszek',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Do powtórki';

  @override
  String get deckNewCards => 'Nowe';

  @override
  String get deckMature => 'Utrwalone';

  @override
  String get deckStudy => 'Ucz się';

  @override
  String get deckNothingDue => 'Teraz nic nie czeka. Wróć później.';

  @override
  String get deckEmptyCards => 'Dodaj fiszki, aby zacząć naukę.';

  @override
  String get cardNew => 'Nowa fiszka';

  @override
  String get cardEdit => 'Edytuj fiszkę';

  @override
  String get cardFront => 'Przód';

  @override
  String get cardBack => 'Tył';

  @override
  String get cardFrontHint => 'Pytanie lub pojęcie';

  @override
  String get cardBackHint => 'Odpowiedź lub definicja';

  @override
  String get cardTags => 'Tagi';

  @override
  String get cardAddAnother => 'Zapisz i dodaj kolejną';

  @override
  String get reviewShowAnswer => 'Pokaż odpowiedź';

  @override
  String get reviewAgain => 'Jeszcze raz';

  @override
  String get reviewHard => 'Trudne';

  @override
  String get reviewGood => 'Dobrze';

  @override
  String get reviewEasy => 'Łatwe';

  @override
  String reviewProgress(int done, int total) {
    return '$done z $total';
  }

  @override
  String get reviewFinishedTitle => 'Sesja ukończona';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Powtórzono $count fiszki.',
      many: 'Powtórzono $count fiszek.',
      few: 'Powtórzono $count fiszki.',
      one: 'Powtórzono 1 fiszkę.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Dotknij, aby zobaczyć odpowiedź';

  @override
  String get importCardsTitle => 'Importuj fiszki';

  @override
  String get importCardsHint =>
      'Wklej jedną fiszkę na wiersz (przód i tył oddzielone tabulatorem lub średnikiem) albo wybierz plik: Excel (.xlsx), CSV, talię Anki (.apkg) lub wyeksportowaną talię.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zaimportowano $count fiszki',
      many: 'Zaimportowano $count fiszek',
      few: 'Zaimportowano $count fiszki',
      one: 'Zaimportowano 1 fiszkę',
      zero: 'Nie zaimportowano fiszek',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Nie udało się zaimportować tej treści.';

  @override
  String get exportCopied => 'Talia wyeksportowana';

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
      other: '$count dni',
      one: '1 dzień',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Cele';

  @override
  String get goalsEmptyTitle => 'Postaw sobie cel';

  @override
  String get goalsEmptyMessage =>
      'Ustal cele dzienne, tygodniowe, miesięczne lub długoterminowe i śledź prawdziwy postęp.';

  @override
  String get goalNew => 'Nowy cel';

  @override
  String get goalEdit => 'Edytuj cel';

  @override
  String get goalTitleHint => 'Co chcesz osiągnąć?';

  @override
  String get goalPeriod => 'Okres';

  @override
  String get goalPeriodDaily => 'Dzienny';

  @override
  String get goalPeriodWeekly => 'Tygodniowy';

  @override
  String get goalPeriodMonthly => 'Miesięczny';

  @override
  String get goalPeriodLongTerm => 'Długoterminowy';

  @override
  String get goalTarget => 'Wartość docelowa';

  @override
  String get goalUnit => 'Jednostka';

  @override
  String get goalUnitHint => 'np. strony, km, godziny';

  @override
  String get goalStatusActive => 'Aktywny';

  @override
  String get goalStatusPaused => 'Wstrzymany';

  @override
  String get goalStatusAchieved => 'Osiągnięty';

  @override
  String get goalPause => 'Wstrzymaj cel';

  @override
  String get goalResume => 'Wznów cel';

  @override
  String get goalMarkAchieved => 'Oznacz jako osiągnięty';

  @override
  String goalProgressOf(String current, String target) {
    return '$current z $target';
  }

  @override
  String get goalLogAmount => 'Ilość';

  @override
  String get goalLogNote => 'Notatka (opcjonalnie)';

  @override
  String get goalHistory => 'Historia';

  @override
  String get goalNoHistory => 'Zapisany postęp pojawi się tutaj';

  @override
  String get goalLinkedTasks => 'Połączone zadania';

  @override
  String get goalLinkedTasksHint =>
      'Każde ukończone połączone zadanie liczy się jako 1 do tego celu.';

  @override
  String get goalThisPeriod => 'Ten okres';

  @override
  String get habitsTitle => 'Nawyki';

  @override
  String get habitsEmptyTitle => 'Małe kroki, każdego dnia';

  @override
  String get habitsEmptyMessage => 'Utwórz nawyk i odhaczaj go, gdy go wykonasz.';

  @override
  String get habitNew => 'Nowy nawyk';

  @override
  String get habitEdit => 'Edytuj nawyk';

  @override
  String get habitNameHint => 'np. Przeczytaj 20 stron';

  @override
  String get habitDays => 'Harmonogram';

  @override
  String get habitEveryDay => 'Codziennie';

  @override
  String get habitTargetPerDay => 'Razy dziennie';

  @override
  String get habitReminder => 'Codzienne przypomnienie';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Seria: $count dni',
      one: 'Seria: 1 dzień',
      zero: 'Brak serii',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Najlepsza seria';

  @override
  String get habitCurrentStreak => 'Obecna seria';

  @override
  String get habitConsistency => 'Regularność';

  @override
  String get habitLast90 => 'Ostatnie 90 dni';

  @override
  String get habitPaused => 'Wstrzymany';

  @override
  String get habitPause => 'Wstrzymaj nawyk';

  @override
  String get habitResume => 'Wznów nawyk';

  @override
  String get habitDoneToday => 'Zrobione dziś';

  @override
  String habitCountToday(int count, int target) {
    return 'Dziś $count z $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Odhacz „$name”';
  }

  @override
  String get habitNotScheduledToday => 'Nie zaplanowano na dziś';

  @override
  String get analyticsTitle => 'Statystyki';

  @override
  String get rangeWeek => '7 dni';

  @override
  String get rangeMonth => '30 dni';

  @override
  String get rangeQuarter => '90 dni';

  @override
  String get statFocusTime => 'Czas skupienia';

  @override
  String get statSessions => 'Sesje';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed ukończone · $interrupted przerwane wcześniej';
  }

  @override
  String get statTasksDone => 'Ukończone zadania';

  @override
  String get statCompletionRate => 'Ukończone na czas';

  @override
  String get statHabitConsistency => 'Regularność nawyków';

  @override
  String get statRetention => 'Zapamiętywanie fiszek';

  @override
  String get statReviews => 'Powtórki';

  @override
  String get statActiveGoals => 'Aktywne cele';

  @override
  String get statEstimated => 'Szacowana wykonana praca';

  @override
  String get statEstimatedNote => 'Na podstawie Twoich szacunków, nie zmierzonego czasu';

  @override
  String get statMeasuredNote => 'Zmierzone z sesji skupienia';

  @override
  String get chartFocusByDay => 'Minuty skupienia dziennie';

  @override
  String get chartTasksByDay => 'Ukończone zadania dziennie';

  @override
  String get chartTimeByProject => 'Czas według projektu';

  @override
  String get chartProjectProgress => 'Postęp projektów';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: łącznie $total, najlepszy dzień $best';
  }

  @override
  String get analyticsNoData => 'Za mało danych';

  @override
  String get analyticsUnassigned => 'Nieprzypisane';

  @override
  String get searchHint => 'Szukaj wszędzie…';

  @override
  String get searchRecent => 'Ostatnie wyszukiwania';

  @override
  String get searchClearRecent => 'Wyczyść ostatnie wyszukiwania';

  @override
  String searchNoResults(String query) {
    return 'Brak wyników dla „$query”';
  }

  @override
  String get searchStartTyping =>
      'Szukaj w zadaniach, notatkach, fiszkach, celach, wydarzeniach i nie tylko. Wyszukiwanie zostaje na tym urządzeniu.';

  @override
  String get searchCatTask => 'Zadania';

  @override
  String get searchCatProject => 'Projekty';

  @override
  String get searchCatNote => 'Notatki';

  @override
  String get searchCatFlashcard => 'Fiszki';

  @override
  String get searchCatDeck => 'Talie';

  @override
  String get searchCatGoal => 'Cele';

  @override
  String get searchCatHabit => 'Nawyki';

  @override
  String get searchCatEvent => 'Wydarzenia';

  @override
  String get searchCatSession => 'Sesje';

  @override
  String get searchAll => 'Wszystko';

  @override
  String get assistantTitle => 'Asystent';

  @override
  String get assistantIntro =>
      'Pomoc w planowaniu działająca na Twoim urządzeniu. Opcjonalnie połącz wybranego dostawcę AI do streszczeń i generowania.';

  @override
  String get assistantOnDevice => 'Na urządzeniu';

  @override
  String get assistantCloud => 'Dostawca AI';

  @override
  String get assistantPlanDay => 'Zaplanuj mój dzień';

  @override
  String get assistantPlanDayDesc =>
      'Porządkuje otwarte zadania według pilności, priorytetu i szacunku oraz układa je wokół Twoich wydarzeń.';

  @override
  String get assistantExtractTasks => 'Wyciągnij zadania z notatki';

  @override
  String get assistantExtractTasksDesc =>
      'Znajduje pozycje list kontrolnych i wiersze działań w notatce i zamienia je w zadania.';

  @override
  String get assistantMakeCards => 'Utwórz fiszki z notatki';

  @override
  String get assistantMakeCardsDesc =>
      'Zamienia wiersze „pojęcie: definicja” oraz pytanie/odpowiedź w fiszki.';

  @override
  String get assistantSummarize => 'Streść notatkę';

  @override
  String get assistantSummarizeDesc =>
      'Wymaga dostawcy AI. Notatka zostanie wysłana dopiero po Twoim potwierdzeniu.';

  @override
  String get assistantWorkload => 'Przegląd obciążenia';

  @override
  String get assistantWorkloadDesc =>
      'Porównuje szacowaną pracę z Twoim wolnym czasem w tym tygodniu.';

  @override
  String get assistantPlanEmpty => 'Brak otwartych zadań do zaplanowania. Ciesz się wolną chwilą.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Wolny czas na skupienie dziś: $time';
  }

  @override
  String get assistantPlanOverflow => 'To może się dziś nie zmieścić:';

  @override
  String get assistantChooseNote => 'Wybierz notatkę';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Znaleziono $count zadania',
      many: 'Znaleziono $count zadań',
      few: 'Znaleziono $count zadania',
      one: 'Znaleziono 1 zadanie',
      zero: 'Nie znaleziono zadań w tej notatce',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Znaleziono $count fiszki',
      many: 'Znaleziono $count fiszek',
      few: 'Znaleziono $count fiszki',
      one: 'Znaleziono 1 fiszkę',
      zero: 'Nie znaleziono fiszek w tej notatce',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Wybierz talię';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Szacowana praca: $estimated. Wolny czas: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Masz zaplanowane więcej, niż masz czasu. Rozważ przesunięcie mniej ważnych zadań.';

  @override
  String get assistantWorkloadOk => 'Twój plan mieści się w dostępnym czasie.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count otwartego zadania nie ma szacunku.',
      many: '$count otwartych zadań nie ma szacunku.',
      few: '$count otwarte zadania nie mają szacunku.',
      one: '1 otwarte zadanie nie ma szacunku.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Dostawca AI';

  @override
  String get assistantProviderOff =>
      'Brak połączonego dostawcy. Narzędzia na urządzeniu nadal działają.';

  @override
  String assistantProviderOn(String host) {
    return 'Połączono z $host';
  }

  @override
  String get assistantEndpoint => 'Punkt końcowy API (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'Klucz API';

  @override
  String get assistantApiKeyStored => 'Przechowywany bezpiecznie na tym urządzeniu';

  @override
  String get assistantHttpsOnly => 'Dozwolone są tylko punkty końcowe HTTPS';

  @override
  String get assistantConsentTitle => 'Wysłać tę treść do dostawcy AI?';

  @override
  String assistantConsentBody(String host) {
    return 'Wybrany tekst notatki opuści to urządzenie i zostanie przetworzony przez $host. Nic więcej nie jest wysyłane.';
  }

  @override
  String get assistantConsentAlways => 'Nie pytaj ponownie dla tego dostawcy';

  @override
  String get assistantSend => 'Wyślij';

  @override
  String get assistantUnavailable => 'Nie można połączyć się z dostawcą AI. Spróbuj później.';

  @override
  String get assistantDisabledTitle => 'Asystent jest wyłączony';

  @override
  String get assistantDisabledMessage =>
      'Włącz go, aby korzystać z narzędzi planowania. Żadne dane nie opuszczają urządzenia, chyba że połączysz dostawcę i potwierdzisz każde żądanie.';

  @override
  String get assistantSummaryTitle => 'Streszczenie';

  @override
  String get assistantRemoveProvider => 'Usuń dostawcę';

  @override
  String get settingsTitle => 'Ustawienia';

  @override
  String get settingsGeneral => 'Ogólne';

  @override
  String get settingsLanguage => 'Język';

  @override
  String get settingsLanguageSystem => 'Język urządzenia';

  @override
  String get settingsAppearance => 'Wygląd';

  @override
  String get settingsTheme => 'Motyw';

  @override
  String get themeLight => 'Jasny';

  @override
  String get themeDark => 'Ciemny';

  @override
  String get themeSystem => 'Systemowy';

  @override
  String get settingsReduceMotion => 'Ogranicz ruch';

  @override
  String get settingsReduceMotionDesc => 'Ogranicz animacje i ruchome tła';

  @override
  String get settingsFocus => 'Minutnik skupienia';

  @override
  String get settingsWorkLength => 'Długość skupienia';

  @override
  String get settingsShortBreak => 'Krótka przerwa';

  @override
  String get settingsLongBreak => 'Długa przerwa';

  @override
  String get settingsLongBreakEvery => 'Długa przerwa po';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesjach',
      one: '1 sesji',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Uruchamiaj przerwy automatycznie';

  @override
  String get settingsSound => 'Dźwięk zakończenia';

  @override
  String get settingsDailyFocusTarget => 'Dzienny cel skupienia';

  @override
  String get settingsWeeklyFocusTarget => 'Tygodniowy cel skupienia';

  @override
  String get settingsNotifications => 'Powiadomienia';

  @override
  String get settingsNotificationsEnable => 'Zezwól na przypomnienia';

  @override
  String get settingsQuietHours => 'Godziny ciszy';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Przypomnienia o nawykach, celach i powtórkach są wyciszone od $start do $end';
  }

  @override
  String get settingsReviewReminder => 'Przypomnienie o powtórce fiszek';

  @override
  String get settingsPermissionDenied => 'Powiadomienia są zablokowane w ustawieniach systemu.';

  @override
  String get settingsPrivacy => 'Prywatność i dane';

  @override
  String get settingsPrivacyStatement =>
      'Twoje dane są przechowywane tylko na tym urządzeniu i szyfrowane. Bez konta, bez analityki, bez śledzenia.';

  @override
  String get settingsBackup => 'Utwórz zaszyfrowaną kopię';

  @override
  String get settingsBackupDesc => 'Chroniona hasłem, które wybierzesz';

  @override
  String get settingsRestore => 'Przywróć z kopii';

  @override
  String get settingsRestoreDesc => 'Zastępuje wszystkie dane na tym urządzeniu';

  @override
  String get settingsErase => 'Usuń wszystkie dane';

  @override
  String get settingsEraseDesc => 'Trwale usuń wszystko z tego urządzenia';

  @override
  String get settingsEraseConfirmTitle => 'Usunąć wszystkie dane?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Wszystkie zadania, notatki, fiszki, cele, nawyki, wydarzenia i sesje zostaną trwale usunięte. Wpisz $word, aby potwierdzić.';
  }

  @override
  String get settingsEraseWord => 'USUŃ';

  @override
  String get settingsErased => 'Wszystkie dane usunięte';

  @override
  String get backupPassword => 'Hasło kopii';

  @override
  String get backupPasswordConfirm => 'Potwierdź hasło';

  @override
  String backupPasswordHint(int count) {
    return 'Co najmniej $count znaków. Po utracie nie da się go odzyskać.';
  }

  @override
  String get backupPasswordMismatch => 'Hasła nie są zgodne';

  @override
  String get backupPasswordShort => 'Hasło jest za krótkie';

  @override
  String get backupCreating => 'Szyfrowanie kopii…';

  @override
  String get backupCreated => 'Kopia gotowa do zapisania';

  @override
  String get backupRestoring => 'Sprawdzanie i przywracanie…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Przywrócono $count elementu',
      many: 'Przywrócono $count elementów',
      few: 'Przywrócono $count elementy',
      one: 'Przywrócono 1 element',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Złe hasło albo plik został zmieniony.';

  @override
  String get backupNotABackup => 'Ten plik nie jest kopią Deep Focus.';

  @override
  String get backupCorrupted => 'Plik kopii jest uszkodzony.';

  @override
  String get backupNewer =>
      'Ta kopia pochodzi z nowszej wersji aplikacji. Najpierw zaktualizuj aplikację.';

  @override
  String get backupRestoreConfirmTitle => 'Zastąpić wszystkie dane?';

  @override
  String get backupRestoreConfirmBody =>
      'Wszystko na tym urządzeniu zostanie zastąpione kopią. Jeśli przywracanie się nie uda, nic się nie zmieni.';

  @override
  String get settingsAbout => 'O aplikacji';

  @override
  String settingsVersion(String version) {
    return 'Wersja $version';
  }

  @override
  String get settingsLicenses => 'Licencje open source';

  @override
  String get settingsAssistant => 'Asystent';

  @override
  String get settingsAssistantEnable => 'Włącz asystenta';

  @override
  String get settingsDashboard => 'Sekcje ekranu głównego';

  @override
  String get settingsTrash => 'Kosz';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Kosz jest pusty';

  @override
  String get trashHint => 'Usunięte elementy zostają tutaj, dopóki ich nie usuniesz.';

  @override
  String get trashTasks => 'Zadania';

  @override
  String get trashNotes => 'Notatki';

  @override
  String get onboardWelcomeTitle => 'Witaj w swojej nowej przestrzeni pracy';

  @override
  String get onboardWelcomeBody =>
      'Zadania, skupienie, kalendarz, notatki, fiszki, cele i nawyki — razem i pięknie prosto.';

  @override
  String get onboardPrivateTitle => 'Prywatność od podstaw';

  @override
  String get onboardPrivateBody =>
      'Wszystko zostaje na tym urządzeniu, zaszyfrowane. Bez konta. Bez śledzenia. Ty masz kontrolę.';

  @override
  String get onboardLanguageTitle => 'Wybierz język';

  @override
  String get onboardNotifTitle => 'Łagodne przypomnienia';

  @override
  String get onboardNotifBody =>
      'Zezwól na powiadomienia o zadaniach i skupieniu. Możesz to zmienić w każdej chwili.';

  @override
  String get onboardGetStarted => 'Zaczynamy';

  @override
  String onboardStep(int current, int total) {
    return 'Krok $current z $total';
  }

  @override
  String get notifChannelReminders => 'Przypomnienia';

  @override
  String get notifChannelRemindersDesc =>
      'Przypomnienia o zadaniach, wydarzeniach, nawykach i celach';

  @override
  String get notifChannelFocus => 'Minutnik skupienia';

  @override
  String get notifChannelFocusDesc => 'Alerty po zakończeniu sesji skupienia lub przerwy';

  @override
  String get notifTaskTitle => 'Przypomnienie o zadaniu';

  @override
  String get notifEventTitle => 'Nadchodzące wydarzenie';

  @override
  String notifEventBody(String title, String time) {
    return '$title o $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sesja skupienia ukończona';

  @override
  String get notifFocusDoneBody => 'Świetna robota. Czas na przerwę.';

  @override
  String get notifBreakDoneTitle => 'Przerwa się skończyła';

  @override
  String get notifBreakDoneBody => 'Gotowy na kolejną sesję skupienia?';

  @override
  String get notifHabitTitle => 'Przypomnienie o nawyku';

  @override
  String get notifReviewTitle => 'Fiszki czekają';

  @override
  String get notifReviewBody => 'Krótka powtórka wzmacnia pamięć.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours godz. $minutes min';
  }

  @override
  String durationHours(int hours) {
    return '$hours godz.';
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
  String get weekdaysShort => 'P,W,Ś,C,P,S,N';

  @override
  String a11yProgress(int value) {
    return 'Postęp $value procent';
  }

  @override
  String a11yPriority(String level) {
    return 'Priorytet: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Kolor $index';
  }

  @override
  String get analyticsRangeLabel => 'Zakres czasu';

  @override
  String get analyticsRefresh => 'Odśwież';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done z $total zadań z terminem ukończonych na czas';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Ukończono $done z $total zadań';
  }

  @override
  String get analyticsNoProjects => 'Brak aktywnych projektów';

  @override
  String get analyticsNoFocus => 'Brak sesji skupienia w tym zakresie';

  @override
  String get analyticsHabitsNone => 'Brak aktywnych nawyków';

  @override
  String get analyticsRetentionNote => 'Odsetek utrwalonych fiszek, które pamiętałeś';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Wolny czas liczony jest $start–$end w dni robocze ($days), minus wydarzenia z godziną. Szacowana praca to suma szacunków otwartych zadań z terminem w ciągu najbliższych 7 dni.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Poniedziałek–piątek';

  @override
  String get assistantWorkdaysSunThu => 'Niedziela–czwartek';

  @override
  String get assistantWorkloadDayOff => 'Dzień wolny';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated zaplanowane · $free wolne';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Zaplanowane od teraz do $end, wokół dzisiejszych wydarzeń. Najpierw zaległe zadania, potem priorytet, termin i szacunek.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Zaplanuj jako bloki czasu';

  @override
  String get assistantScheduleConfirmTitle => 'Dodać bloki czasu do kalendarza?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Do dzisiejszego kalendarza zostanie dodane $count bloku czasu.',
      many: 'Do dzisiejszego kalendarza zostanie dodanych $count bloków czasu.',
      few: 'Do dzisiejszego kalendarza zostaną dodane $count bloki czasu.',
      one: 'Do dzisiejszego kalendarza zostanie dodany 1 blok czasu.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano $count bloku czasu',
      many: 'Dodano $count bloków czasu',
      few: 'Dodano $count bloki czasu',
      one: 'Dodano 1 blok czasu',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Już w kalendarzu';

  @override
  String get assistantPlanTimeline => 'Zmieści się dziś';

  @override
  String get assistantNoEstimate => 'Dodaj szacunek, aby je zaplanować';

  @override
  String get assistantNoNotes => 'Brak notatek. Najpierw napisz notatkę.';

  @override
  String get assistantNoteEmpty => 'Ta notatka jest pusta.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Utworzono $count zadania',
      many: 'Utworzono $count zadań',
      few: 'Utworzono $count zadania',
      one: 'Utworzono 1 zadanie',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Utworzono $count fiszki',
      many: 'Utworzono $count fiszek',
      few: 'Utworzono $count fiszki',
      one: 'Utworzono 1 fiszkę',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Utwórz $count',
      one: 'Utwórz 1',
      zero: 'Nic nie wybrano',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Rozpoznawane: niezaznaczone pola „- [ ]” i wiersze zaczynające się od TODO: lub To do:';

  @override
  String get assistantCardsHint =>
      'Rozpoznawane: „pojęcie: definicja”, „pojęcie — definicja” oraz pary wierszy z Q: i A:';

  @override
  String get assistantProviderHint =>
      'Użyj dowolnej usługi zgodnej z OpenAI. Klucz zostaje w bezpiecznym magazynie urządzenia i nigdy nie trafia do kopii.';

  @override
  String get assistantEndpointHelp => 'Na przykład https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Zostaw puste, aby zachować zapisany klucz';

  @override
  String get assistantApiKeyRequired => 'Wpisz klucz API';

  @override
  String get assistantProviderSaved => 'Dostawca zapisany';

  @override
  String get assistantProviderRemoved => 'Dostawca usunięty, klucz skasowany';

  @override
  String get assistantRemoveProviderConfirm =>
      'Usunąć dostawcę i skasować zapisany klucz API z tego urządzenia?';

  @override
  String get assistantAskEveryTime => 'Pytaj przed każdym żądaniem';

  @override
  String get assistantSummarizing => 'Streszczanie…';

  @override
  String assistantSummaryNote(String host) {
    return 'Wygenerowane przez $host. Sprawdź przed użyciem.';
  }

  @override
  String get assistantCopy => 'Kopiuj';

  @override
  String get assistantCopied => 'Skopiowano';

  @override
  String get assistantConfigure => 'Skonfiguruj dostawcę';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Wszystkie wydarzenia z tej serii zostały przeniesione';

  @override
  String get calendarEventReminder => 'Przypomnienie';

  @override
  String get calendarEventRepeat => 'Powtarzaj';

  @override
  String get calendarEventColor => 'Kolor';

  @override
  String get calendarDefaultColor => 'Użyj koloru typu';

  @override
  String get calendarEventLinkedTask => 'Połączone zadanie';

  @override
  String get calendarEventNoTask => 'Brak połączonego zadania';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wydarzenia',
      many: '$count wydarzeń',
      few: '$count wydarzenia',
      one: '1 wydarzenie',
      zero: 'Brak wydarzeń',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zadania z terminem',
      many: '$count zadań z terminem',
      few: '$count zadania z terminem',
      one: '1 zadanie z terminem',
      zero: 'brak zadań z terminem',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Dodaj wydarzenie lub blok czasu, aby zaplanować ten dzień.';

  @override
  String get calendarNow => 'Bieżąca godzina';

  @override
  String get calendarRecurring => 'Powtarza się';

  @override
  String get calendarEventNotFound => 'To wydarzenie już nie istnieje';

  @override
  String get calendarEventLocalTime => 'Godziny są pokazywane w strefie czasowej urządzenia';

  @override
  String get calendarEventDeleted => 'Wydarzenie przeniesiono do kosza';

  @override
  String get calendarConflictMarker => 'Koliduje z innym wydarzeniem';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Zmiany dotyczą każdego wydarzenia w tej serii';

  @override
  String get calendarDragHintSeries =>
      'Przeciągnięcie powtarzającego się wydarzenia przenosi całą serię';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, termin zadania';
  }

  @override
  String get startupErrorTitle => 'Nie udało się otworzyć Twoich danych';

  @override
  String get startupErrorLocked =>
      'Klucz szyfrowania danych tego urządzenia jest niedostępny. Nic nie zostało usunięte. Często pomaga ponowne uruchomienie urządzenia. Jeśli niedawno przywracałeś urządzenie, przywróć dane z zaszyfrowanej kopii.';

  @override
  String get startupErrorCipher =>
      'To urządzenie nie obsługuje szyfrowanego magazynu wymaganego przez aplikację. Nic nie zapisano bez szyfrowania.';

  @override
  String get startupErrorRetry => 'Spróbuj ponownie';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiszki czeka na powtórkę',
      many: '$count fiszek czeka na powtórkę',
      few: '$count fiszki czekają na powtórkę',
      one: '1 fiszka czeka na powtórkę',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return 'Do powtórki: $count';
  }

  @override
  String flashcardsNewCount(int count) {
    return 'Nowe: $count';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Utrwalone fiszki: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Wpisz 0 lub więcej';

  @override
  String get flashcardsSearchCards => 'Szukaj fiszek';

  @override
  String get flashcardsSearchEmpty => 'Żadna fiszka nie pasuje do wyszukiwania';

  @override
  String get flashcardsCardAdded => 'Fiszka dodana';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Powtórka $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Kopiuj do schowka';

  @override
  String get flashcardsExportTitle => 'Eksportuj talię';

  @override
  String get flashcardsDeleteDeck => 'Usuń talię';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, następna powtórka za $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Pytanie: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Odpowiedź: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Pokaż pytanie';

  @override
  String get flashcardsImportField => 'Fiszki do zaimportowania';

  @override
  String get flashcardsNothingToStudy => 'Nie ma czego się uczyć';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiszki gotowej do nauki',
      many: '$count fiszek gotowych do nauki',
      few: '$count fiszki gotowe do nauki',
      one: '1 fiszka gotowa do nauki',
      zero: 'Brak gotowych fiszek',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Według oceny';

  @override
  String get flashcardsDeckNotFound => 'Ta talia nie jest już dostępna.';

  @override
  String get focusSessionDeleted => 'Sesja usunięta';

  @override
  String get focusDeleteConfirm =>
      'Usunąć tę sesję z historii? Jej czas przestanie się liczyć do Twoich celów.';

  @override
  String get focusUnlinkTask => 'Usuń połączone zadanie';

  @override
  String get focusNoteHint => 'Nad czym pracowałeś?';

  @override
  String get focusTargetCaption => 'Zmierzone z zapisanych sesji';

  @override
  String get focusModeLabel => 'Tryb minutnika';

  @override
  String focusUpNext(String phase) {
    return 'Dalej: $phase';
  }

  @override
  String get focusStopwatchHint => 'Liczy w górę, aż zatrzymasz.';

  @override
  String get focusOpenHint => 'Bez limitu czasu. Zakończ, kiedy skończysz.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Przypomnienia są wyłączone w ustawieniach. Nie dostaniesz alertu po zakończeniu sesji.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Wszystkie';

  @override
  String get goalsFilterPeriod => 'Filtr okresu';

  @override
  String get goalsFilterStatus => 'Filtr stanu';

  @override
  String get goalsEmptyFiltered => 'Żaden cel nie pasuje do tego filtra';

  @override
  String goalsDueOn(String date) {
    return 'Termin $date';
  }

  @override
  String get goalsDeadline => 'Termin (opcjonalnie)';

  @override
  String get goalsNoDeadline => 'Bez terminu';

  @override
  String get goalsSetDeadline => 'Ustaw termin';

  @override
  String get goalsRemoveDeadline => 'Usuń termin';

  @override
  String get goalsDescription => 'Opis (opcjonalnie)';

  @override
  String get goalsTitleLabel => 'Tytuł';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Cel osiągnięty';

  @override
  String get goalsLogged => 'Postęp zapisany';

  @override
  String get goalsEntryDeleted => 'Wpis usunięty';

  @override
  String get goalsDeleteEntry => 'Usuń wpis';

  @override
  String get goalsDeleted => 'Cel usunięty';

  @override
  String get goalsMarkActive => 'Oznacz jako aktywny';

  @override
  String get goalsNotFound => 'Ten cel nie jest już dostępny';

  @override
  String get goalsLinkTask => 'Połącz zadanie';

  @override
  String get goalsNoLinkedTasks => 'Brak połączonych zadań';

  @override
  String get goalsUnlinkTask => 'Odłącz zadanie';

  @override
  String get goalsTaskOpen => 'Jeszcze nieukończone';

  @override
  String get goalsTaskLinked => 'Zadanie połączone';

  @override
  String get goalsTaskUnlinked => 'Zadanie odłączone';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ukończonego połączonego zadania',
      many: '$count ukończonych połączonych zadań',
      few: '$count ukończone połączone zadania',
      one: '1 ukończone połączone zadanie',
    );
    return 'Obejmuje $_temp0 w tym okresie';
  }

  @override
  String get goalsHistoryAllTime =>
      'Wpisy z wcześniejszych okresów zostają tutaj, ale liczą się tylko do swojego okresu.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Dziś zrobione $done z $total';
  }

  @override
  String get habitsNothingToday => 'Na dziś nie zaplanowano żadnych nawyków';

  @override
  String get habitsDecrease => 'Cofnij jedno odhaczenie';

  @override
  String get habitsResetToday => 'Wyzeruj dzisiaj';

  @override
  String get habitsCheckInHint => 'Przytrzymaj, aby dostosować';

  @override
  String get habitsName => 'Nazwa';

  @override
  String get habitsColor => 'Kolor';

  @override
  String get habitsValidationDays => 'Wybierz co najmniej jeden dzień';

  @override
  String habitsReminderAt(String time) {
    return 'Codziennie o $time';
  }

  @override
  String get habitsSetReminder => 'Ustaw godzinę przypomnienia';

  @override
  String get habitsRemoveReminder => 'Usuń przypomnienie';

  @override
  String get habitsReminderNote =>
      'Przypomnienia pojawiają się w zaplanowane dni, jeśli powiadomienia są dozwolone.';

  @override
  String get habitsArchived => 'Nawyk zarchiwizowany';

  @override
  String get habitsNotFound => 'Ten nawyk nie jest już dostępny';

  @override
  String get habitsLast30 => 'Ostatnie 30 dni';

  @override
  String get habitsConsistencyNone => 'Za mało danych';

  @override
  String get habitsCalendar => 'Historia odhaczeń';

  @override
  String get habitsCalendarHint => 'Dotknij dnia, aby go poprawić.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count z $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Odhaczenia z ostatnich 90 dni. Regularność $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Odhaczenia z ostatnich 90 dni. Za mało danych.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dni',
      one: '1 dzień',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Wstrzymane dni nie wpływają na Twoją serię.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Archiwizuj nawyk';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count razy dziennie',
      one: 'Raz dziennie',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Pozostałe notatki';

  @override
  String get notesAllNotebooks => 'Wszystkie notesy';

  @override
  String get notesNotebookName => 'Nazwa notesu';

  @override
  String get notesNotebookColor => 'Kolor';

  @override
  String get notesDeleteNotebook => 'Usuń notes';

  @override
  String get notesDeleteNotebookMessage =>
      'Notes zostanie usunięty. Jego notatki zostaną i pojawią się w Wszystkie notesy.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Przypinaj ważne notatki, by zostały na górze.';

  @override
  String get notesEmptyFavorites => 'Tutaj pojawią się notatki oznaczone jako ulubione.';

  @override
  String get notesEmptyArchived => 'Tutaj pojawią się zarchiwizowane notatki.';

  @override
  String get notesEmptyFiltered => 'Żadna notatka nie pasuje do tych filtrów.';

  @override
  String get notesArchivedSnack => 'Notatka zarchiwizowana';

  @override
  String get notesUnarchivedSnack => 'Notatka wróciła do Twoich notatek';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Zrobione $done z $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatowanie';

  @override
  String get notesWrite => 'Pisz';

  @override
  String get notesPreviewEmpty => 'Na razie nie ma czego pokazać.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Żadna inna notatka jeszcze tu nie linkuje. Połącz z tą notatką przez [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Nadaj tej notatce tytuł, aby inne notatki mogły do niej linkować.';

  @override
  String get notesLinkedTasksEmpty => 'Brak zadań połączonych z tą notatką.';

  @override
  String notesLinkMissing(String title) {
    return 'Nie ma jeszcze notatki o tytule „$title”.';
  }

  @override
  String get notesNotFound => 'Ta notatka już nie istnieje.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Pozycja listy: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Otwórz notatkę $title';
  }

  @override
  String get notesTaskDone => 'Ukończone';

  @override
  String get notifTimerDoneBody => 'Ustawiony czas minął.';

  @override
  String get onboardingPrivatePointDevice => 'Przechowywane tylko na tym urządzeniu, zaszyfrowane';

  @override
  String get onboardingPrivatePointAccount => 'Bez zakładania konta';

  @override
  String get onboardingPrivatePointTracking => 'Bez analityki i śledzenia';

  @override
  String get onboardingLanguageBody => 'Możesz to zmienić w każdej chwili w Ustawieniach.';

  @override
  String get onboardingNext => 'Dalej';

  @override
  String get projectsActive => 'Aktywne';

  @override
  String get projectNameHint => 'np. Premiera produktu';

  @override
  String get projectGoalHint => 'Po czym poznasz, że to koniec?';

  @override
  String get projectNoDeadline => 'Bez terminu';

  @override
  String get projectTasksOpen => 'Otwarte zadania';

  @override
  String get projectTasksCompleted => 'Ukończone zadania';

  @override
  String get projectAddTask => 'Dodaj zadanie do projektu';

  @override
  String get projectAddNote => 'Nowa notatka projektu';

  @override
  String get projectLinkedNotes => 'Notatki';

  @override
  String get projectNoTasks => 'Brak zadań w tym projekcie';

  @override
  String get projectArchivedBadge => 'Zarchiwizowany';

  @override
  String get projectDeleted => 'Projekt przeniesiono do kosza';

  @override
  String get projectDeleteMessage => 'Zadania zostaną na liście bez projektu.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, ukończono $percent procent';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wyniku',
      many: '$count wyników',
      few: '$count wyniki',
      one: '1 wynik',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtruj według typu';

  @override
  String searchRecentTap(String query) {
    return 'Szukaj ponownie: $query';
  }

  @override
  String get settingsLanguageHint =>
      'Wybierz język całej aplikacji. Nazwy są pokazane w ich własnym języku.';

  @override
  String get settingsThemeHint => 'Jasny, ciemny lub jak w systemie';

  @override
  String settingsDecrease(String setting) {
    return 'Zmniejsz: $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Zwiększ: $setting';
  }

  @override
  String get settingsQuietStart => 'Początek';

  @override
  String get settingsQuietEnd => 'Koniec';

  @override
  String get settingsNotificationsHint =>
      'To zapisuje Twój wybór w aplikacji. System może też poprosić o zgodę.';

  @override
  String get settingsDashboardHint =>
      'Przeciągnij, aby zmienić kolejność. Wyłącz niepotrzebne sekcje.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Przenieś: $section';
  }

  @override
  String get settingsDashboardReset => 'Przywróć domyślną kolejność';

  @override
  String get settingsAssistantDesc =>
      'Opcjonalna pomoc w planowaniu. Nic nie opuszcza urządzenia, chyba że połączysz dostawcę.';

  @override
  String get settingsAssistantSetup => 'Asystent i konfiguracja dostawcy';

  @override
  String get settingsTrashDesc => 'Przywróć lub trwale usuń usunięte elementy';

  @override
  String get settingsEraseFirstBody =>
      'Tego nie da się cofnąć. Najpierw rozważ utworzenie zaszyfrowanej kopii.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Wpisz $word';
  }

  @override
  String get settingsEraseFailed => 'Nie udało się usunąć danych. Nic się nie zmieniło.';

  @override
  String get settingsAboutTagline =>
      'Prywatna przestrzeń do produktywności, działająca przede wszystkim lokalnie.';

  @override
  String get backupShowPassword => 'Pokaż hasło';

  @override
  String get backupHidePassword => 'Ukryj hasło';

  @override
  String get backupSaved => 'Kopia zapisana';

  @override
  String get backupFailed => 'Nie udało się utworzyć kopii. Twoje dane są bez zmian.';

  @override
  String get backupReadFailed => 'Nie udało się odczytać wybranego pliku.';

  @override
  String get backupRestoreFailed => 'Przywracanie nie powiodło się. Nic się nie zmieniło.';

  @override
  String get backupShareSubject => 'Zaszyfrowana kopia Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Co $count dni',
      one: 'Codziennie',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Co $count tygodnie',
      one: 'Co tydzień',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Co $count miesiące',
      one: 'Co miesiąc',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Co $count lata',
      one: 'Co rok',
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
    return 'w: $days';
  }

  @override
  String get repeatEndsLabel => 'Kończy się';

  @override
  String get repeatEndsAfter => 'Po określonej liczbie razy';

  @override
  String get repeatCountLabel => 'Liczba powtórzeń';

  @override
  String get reminderNone => 'Bez przypomnienia';

  @override
  String get reminderCustomTime => 'O konkretnej godzinie';

  @override
  String get a11yDecrease => 'Zmniejsz';

  @override
  String get a11yIncrease => 'Zwiększ';

  @override
  String get pickTaskTitle => 'Wybierz zadanie';

  @override
  String get pickTaskEmpty => 'Brak otwartych zadań';

  @override
  String get tasksSearchTooltip => 'Szukaj zadań';

  @override
  String get tasksSectionOverdue => 'Zaległe';

  @override
  String get tasksSectionToday => 'Dziś';

  @override
  String get tasksRecurringSemantics => 'Powtarza się';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimalny priorytet';

  @override
  String get tasksFilterCategory => 'Kategoria';

  @override
  String get tasksFilterAnyCategory => 'Dowolna kategoria';

  @override
  String get tasksFilterLabel => 'Etykieta';

  @override
  String get tasksFilterAnyLabel => 'Dowolna etykieta';

  @override
  String get tasksFilterReset => 'Wyczyść filtry';

  @override
  String get tasksViewByProject => 'Według projektu';

  @override
  String get tasksViewByPriority => 'Według priorytetu';

  @override
  String get tasksViewByCategory => 'Według kategorii';

  @override
  String get tasksGroupNoCategory => 'Bez kategorii';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zadania',
      many: '$count zadań',
      few: '$count zadania',
      one: '1 zadanie',
    );
    return 'Blokowane przez $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'To zadanie jest blokowane przez nieukończone zadania. Ukończyć mimo to?';

  @override
  String get taskStartFocus => 'Skup się na tym zadaniu';

  @override
  String get taskRemoveDate => 'Usuń datę';

  @override
  String get taskAllDay => 'Bez konkretnej godziny';

  @override
  String get taskSaved => 'Zadanie zapisane';

  @override
  String get taskCreated => 'Zadanie utworzone';

  @override
  String get taskReminderNeedsDue => 'Ustaw termin, aby używać przypomnień względnych';

  @override
  String get taskSubtaskDetailsHint =>
      'Najpierw zapisz zadanie, aby dodać podzadania, pozycje listy, etykiety i zależności.';

  @override
  String get taskLabelName => 'Nazwa etykiety';

  @override
  String get taskMoreDetails => 'Szczegóły';

  @override
  String get taskPlanning => 'Planowanie';

  @override
  String get taskOrganize => 'Porządkowanie';

  @override
  String get taskBreakdown => 'Podział';

  @override
  String get trashDeleteTaskTitle => 'Usunąć to zadanie na zawsze?';

  @override
  String get trashDeleteNoteTitle => 'Usunąć tę notatkę na zawsze?';

  @override
  String get trashDeleteBody => 'Tego nie da się cofnąć.';

  @override
  String get trashEmptyTitle => 'Opróżnić kosz?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementu zostanie trwale usunięte.',
      many: '$count elementów zostanie trwale usuniętych.',
      few: '$count elementy zostaną trwale usunięte.',
      one: '1 element zostanie trwale usunięty.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Przywrócono';

  @override
  String get trashPurged => 'Usunięto na zawsze';

  @override
  String trashDeletedOn(String date) {
    return 'Usunięto $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementu',
      many: '$count elementów',
      few: '$count elementy',
      one: '1 element',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Czytaj na głos';

  @override
  String get flashcardsTtsUnavailable => 'Synteza mowy nie jest dostępna na tym urządzeniu.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Dla tego języka nie zainstalowano głosu. Dodaj go w ustawieniach syntezy mowy Androida.';

  @override
  String get calendarAgenda => 'Plan dnia';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Iskra',
      'rocket': 'Rakieta',
      'book': 'Książka',
      'work': 'Praca',
      'home': 'Dom',
      'heart': 'Serce',
      'code': 'Kod',
      'palette': 'Paleta',
      'fitness': 'Fitness',
      'school': 'Szkoła',
      'travel': 'Podróże',
      'money': 'Oszczędności',
      'other': 'Ikona',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Więcej pól';

  @override
  String get cardFieldExample => 'Przykład';

  @override
  String get cardFieldExplanation => 'Wyjaśnienie';

  @override
  String get cardFieldPronunciation => 'Wymowa';

  @override
  String get cardFieldNotes => 'Dodatkowe notatki';

  @override
  String get projectMilestones => 'Kamienie milowe';

  @override
  String get milestoneAdd => 'Dodaj kamień milowy';

  @override
  String get milestoneEdit => 'Edytuj kamień milowy';

  @override
  String get milestoneTitleLabel => 'Kamień milowy';

  @override
  String get milestoneNoDate => 'Bez daty';

  @override
  String get milestonesEmpty =>
      'Brak kamieni milowych. Dodaj etapy z datami, aby śledzić projekt w kalendarzu.';

  @override
  String get milestoneDeleted => 'Kamień milowy usunięty';

  @override
  String milestoneDoneA11y(String title) {
    return 'Oznacz kamień milowy „$title” jako zrobiony';
  }

  @override
  String calendarMilestone(String project) {
    return 'Kamień milowy · $project';
  }

  @override
  String get tasksViewInbox => 'Skrzynka';

  @override
  String get tasksViewArchived => 'Archiwum';

  @override
  String get tasksEmptyInbox =>
      'Trafiają tu zadania bez projektu i daty. Uporządkuj je, gdy masz chwilę.';

  @override
  String get tasksEmptyArchived =>
      'Zarchiwizowane zadania zostają tutaj, poza listami i przypomnieniami.';

  @override
  String get taskArchivedBadge => 'Zarchiwizowane';

  @override
  String get taskStatusInProgress => 'W toku';

  @override
  String get taskArchived => 'Zadanie zarchiwizowane';

  @override
  String get taskUnarchived => 'Zadanie przywrócone z archiwum';

  @override
  String get focusPlanTitle => 'Plan sesji';

  @override
  String focusPlanTotal(String duration) {
    return 'Łącznie $duration';
  }

  @override
  String get focusPlanRounds => 'Sesje skupienia';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Długa przerwa po';

  @override
  String get focusPlanSkipLastBreak => 'Pomiń ostatnią przerwę';

  @override
  String get focusPlanAutoBreaks => 'Uruchamiaj przerwy automatycznie';

  @override
  String get focusPlanAutoFocus => 'Po przerwie zaczynaj skupienie automatycznie';

  @override
  String get focusPlanSave => 'Zapisz plan';

  @override
  String get focusPlanNameHint => 'np. Przygotowanie do egzaminu';

  @override
  String get focusPlanSaved => 'Plan zapisany';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min skupienia, $rest min przerwy';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Zmniejsz: $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Zwiększ: $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sesja $current z $total';
  }

  @override
  String get focusSeriesComplete => 'Seria ukończona. Świetnie!';

  @override
  String get filterAll => 'Wszystkie';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Zaimportowano $added · pominięto duplikaty: $duplicates · niepełne wiersze: $invalid';
  }

  @override
  String get flashcardsSuspend => 'Zawieś fiszkę';

  @override
  String get flashcardsResume => 'Wznów fiszkę';

  @override
  String get flashcardsSuspended => 'Fiszka zawieszona: nie będzie planowana';

  @override
  String get flashcardsResumed => 'Fiszka wznowiona';

  @override
  String get flashcardsSuspendedFilter => 'Zawieszona';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown z $total fiszek';
  }

  @override
  String get flashcardsImportFile => 'Z pliku';

  @override
  String get speechTitle => 'Mowa';

  @override
  String get speechAppLanguage => 'Język aplikacji';

  @override
  String get speechFrontLanguage => 'Język przodu';

  @override
  String get speechBackLanguage => 'Język tyłu';

  @override
  String get speechRepeat => 'Powtarzaj każde czytanie';

  @override
  String get speechRate => 'Szybkość';

  @override
  String get speechAutoRead => 'Czytaj pytanie automatycznie';

  @override
  String get speechHint =>
      'Używa głosów zainstalowanych na tym urządzeniu, offline. Jeśli język nie ma głosu, dostaniesz informację i nic innego nie zostanie użyte.';

  @override
  String get studyHowTitle => 'Jak chcesz się uczyć?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Powtórz $count fiszki',
      many: 'Powtórz $count fiszek',
      few: 'Powtórz $count fiszki',
      one: 'Powtórz 1 fiszkę',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Ćwicz wszystkie fiszki (plan bez zmian)';

  @override
  String get studyPracticeMistakes => 'Ćwicz ostatnie błędy';

  @override
  String get studyPracticeHint =>
      'Ćwiczenia nigdy nie zmieniają terminów fiszek. Powtórka aktualizuje plan.';

  @override
  String get studyModeClassic => 'Klasycznie';

  @override
  String get studyModeReverse => 'Odwrotnie';

  @override
  String get studyModeMixed => 'W obie strony';

  @override
  String get studyModeTyped => 'Wpisz odpowiedź';

  @override
  String get studyModeChoice => 'Wybór z listy';

  @override
  String get studyModeListening => 'Słuchanie';

  @override
  String get studyPractice => 'ćwiczenie';

  @override
  String get studyNoMistakes => 'Brak ostatnich błędów w tej talii. Brawo!';

  @override
  String get studyTypeAnswer => 'Wpisz odpowiedź';

  @override
  String get studyCheck => 'Sprawdź';

  @override
  String get studyKnewIt => 'Wiedziałem';

  @override
  String get studyDidntKnow => 'Nie wiedziałem';

  @override
  String studyMistakes(int count) {
    return 'Pominięte ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Powtórz pominięte fiszki';

  @override
  String get studyCorrect => 'Dobrze';

  @override
  String get studyAlmost => 'Prawie — sprawdź pisownię';

  @override
  String get studyWrong => 'Nie całkiem';

  @override
  String get studyShowText => 'Pokaż tekst';

  @override
  String get flashcardsImportFileFailed =>
      'Nie udało się otworzyć pliku. Możesz wkleić jego treść.';

  @override
  String get studyNoMatchingCards => 'Brak fiszek dla tego wyboru.';

  @override
  String get studyPracticeNew => 'Tylko nowe';

  @override
  String get studyPracticeHard => 'Trudne fiszki';

  @override
  String get studyPracticeFavorites => 'Ulubione';

  @override
  String get studySessionSize => 'Fiszki na sesję';

  @override
  String get studySessionAll => 'Wszystkie';

  @override
  String get studyOrder => 'Kolejność';

  @override
  String get studyOrderDue => 'Najbardziej zaległe najpierw';

  @override
  String get studyOrderRandom => 'Losowo';

  @override
  String get studyOrderHardest => 'Najtrudniejsze najpierw';

  @override
  String get flashcardsHard => 'Trudne';

  @override
  String get flashcardsFavorites => 'Ulubione';

  @override
  String get flashcardsFavorite => 'Dodaj do ulubionych';

  @override
  String get flashcardsUnfavorite => 'Usuń z ulubionych';

  @override
  String get flashcardsDuplicate => 'Duplikuj';

  @override
  String get flashcardsMoveTo => 'Przenieś do talii';

  @override
  String get flashcardsNoOtherDeck => 'Najpierw utwórz inną talię.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Przeniesiono fiszki: $count',
      one: 'Fiszkę przeniesiono',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Dodaj tag';

  @override
  String get flashcardsTagHint => 'np. czasowniki';

  @override
  String flashcardsSelected(int count) {
    return 'Zaznaczono: $count';
  }

  @override
  String get flashcardsSelectAll => 'Zaznacz wszystkie widoczne';

  @override
  String flashcardsSelectCard(String front) {
    return 'Zaznacz $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Przypomnienie $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Możliwy duplikat';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Ta talia ma już „$front” → „$back”. Zapisać mimo to?';
  }

  @override
  String get flashcardsSaveAnyway => 'Zapisz mimo to';

  @override
  String get flashcardsStats => 'Statystyki';

  @override
  String get flashcardsStatTotal => 'Fiszki';

  @override
  String get flashcardsStatLearning => 'W nauce';

  @override
  String get flashcardsStatMatureCaption => 'Pamiętane 21+ dni';

  @override
  String get flashcardsStatReviewsToday => 'Powtórki dziś';

  @override
  String get flashcardsStatCorrect => 'Poprawne odpowiedzi';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Ostatnie $days dni';
  }

  @override
  String get flashcardsStatForget => 'Wskaźnik zapominania';

  @override
  String get flashcardsStatForgetCaption => '„Jeszcze raz” przy nauczonych fiszkach';

  @override
  String get flashcardsStatRecall => 'Przypominanie teraz';

  @override
  String get flashcardsStatRecallCaption => 'Szacunek FSRS, powtórzone fiszki';

  @override
  String flashcardsStatActivity(int count) {
    return 'Powtórki dziennie · łącznie $count';
  }

  @override
  String get flashcardsStatHistory => 'Ostatnie odpowiedzi';

  @override
  String get flashcardsStatNoHistory =>
      'Brak powtórek. Ucz się z talii, by zobaczyć tu swój postęp.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Czytaj na głos: $field';
  }

  @override
  String get speechVoice => 'Głos';

  @override
  String get speechVoiceDefault => 'Automatycznie';

  @override
  String get speechVoiceOnline => 'wymaga internetu';

  @override
  String get speechTest => 'Wypróbuj głos';

  @override
  String get importNext => 'Podgląd';

  @override
  String get importPreviewTitle => 'Dopasuj kolumny do pól';

  @override
  String get importIgnoreColumn => 'Pomiń';

  @override
  String importColumn(int n) {
    return 'Kolumna $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'Gotowe fiszki: $ready · niepełne wiersze do pominięcia: $invalid';
  }

  @override
  String get importNeedFrontBack => 'Wybierz, które kolumny są przodem, a które tyłem.';

  @override
  String get actionMoveUp => 'W górę';

  @override
  String get actionMoveDown => 'W dół';

  @override
  String get flashcardsLayoutTitle => 'Układ fiszki';

  @override
  String get flashcardsLayoutHint =>
      'Zmień nazwy, ukryj lub uporządkuj dodatkowe pola tej talii. Treść fiszek nigdy się nie zmienia.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Pokazuj $field podczas nauki';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Odsłaniaj odpowiedź krok po kroku';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Najpierw pojawia się tył; każde dodatkowe pole otwiera się po dotknięciu.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Pokaż $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Ten plik jest większy niż $mb MB.';
  }

  @override
  String get flashcardsImage => 'Obraz';

  @override
  String get flashcardsAudio => 'Dźwięk';

  @override
  String get flashcardsAddImage => 'Dodaj obraz';

  @override
  String get flashcardsAddAudio => 'Dodaj dźwięk';

  @override
  String get flashcardsPlayAudio => 'Odtwórz nagranie';

  @override
  String get flashcardsAudioUnavailable => 'Tego nagrania nie można odtworzyć na tym urządzeniu.';

  @override
  String get flashcardsCustomFields => 'Twoje pola';

  @override
  String get flashcardsTemplates => 'Szablony';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Pole $n';
  }

  @override
  String get flashcardsAddField => 'Dodaj pole';

  @override
  String get flashcardsFieldName => 'Nazwa pola';

  @override
  String get flashcardsFieldLangDefault => 'Język strony';

  @override
  String get flashcardsTemplateConfirm =>
      'Szablon ustala, jak wyświetlać pola, i dodaje swoje pola. Twoje fiszki i istniejące pola zostają bez zmian.';

  @override
  String get flashcardsApplyTemplate => 'Zastosuj';

  @override
  String get templateVocabulary => 'Słownictwo';

  @override
  String get templateTwoTranslations => 'Słowo z dwoma tłumaczeniami';

  @override
  String get templateQuestionAnswer => 'Pytanie i odpowiedź';

  @override
  String get templateDefinition => 'Pojęcie i definicja';

  @override
  String get templateGrammar => 'Reguła gramatyczna';

  @override
  String get templateFieldPlural => 'Liczba mnoga';

  @override
  String get templateFieldTranslation2 => 'Drugie tłumaczenie';

  @override
  String get templateFieldSynonyms => 'Synonimy';

  @override
  String get templateFieldRule => 'Reguła';

  @override
  String get deckCategory => 'Poziom lub temat';

  @override
  String get deckCategoryHint => 'np. A1, Medycyna';

  @override
  String get flashcardsSearchAll => 'Szukaj we wszystkich fiszkach';

  @override
  String get flashcardsSearchAllHint => 'Słowo, tłumaczenie, przykład, notatka, tag…';

  @override
  String get flashcardsAllDecks => 'Wszystkie talie';

  @override
  String get flashcardsAllLanguages => 'Wszystkie języki';

  @override
  String get flashcardsLangUnset => 'Język nie ustawiony';

  @override
  String get flashcardsLevelUnset => 'Bez poziomu i tematu';

  @override
  String get flashcardsByLanguage => 'Postęp według języka';

  @override
  String get flashcardsByLevel => 'Postęp według poziomu lub tematu';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'Talie: $decks · fiszki: $cards · utrwalone: $mature · do powtórki: $due · poprawne: $correct (30 dni)';
  }

  @override
  String get flashcardsRecord => 'Nagraj';

  @override
  String get flashcardsRecording => 'Nagrywanie…';

  @override
  String get flashcardsRecordStop => 'Zatrzymaj i zachowaj';

  @override
  String get flashcardsMicDenied =>
      'Dostęp do mikrofonu jest wyłączony. Zezwól na niego w ustawieniach systemu, aby nagrywać.';

  @override
  String get flashcardsRecordFailed => 'Nagrywanie nie jest dostępne na tym urządzeniu.';

  @override
  String get soundsTitle => 'Dźwięki';

  @override
  String get soundsNature => 'Natura';

  @override
  String get soundsNoise => 'Szum do skupienia';

  @override
  String get soundRain => 'Deszcz';

  @override
  String get soundStorm => 'Burza';

  @override
  String get soundRiver => 'Rzeka';

  @override
  String get soundOcean => 'Fale oceanu';

  @override
  String get soundFire => 'Ognisko';

  @override
  String get soundForest => 'Ptaki w lesie';

  @override
  String get soundNight => 'Letnia noc';

  @override
  String get soundWhite => 'Biały szum';

  @override
  String get soundPink => 'Różowy szum';

  @override
  String get soundBrown => 'Brązowy szum';

  @override
  String get soundsPlay => 'Odtwórz';

  @override
  String get soundsSleep => 'Wyłącznik czasowy';

  @override
  String get soundsSleepOff => 'Wyłączony';

  @override
  String soundsSleepAt(String time) {
    return 'Zatrzyma się o $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Naraz może grać do $count dźwięków.';
  }

  @override
  String get soundsHint => 'Dotknij dźwięku, aby zacząć. Łącz kilka i ustaw każdą głośność.';

  @override
  String get soundsMixer => 'Miks';

  @override
  String soundsVolumeOf(String name) {
    return 'Głośność: $name';
  }

  @override
  String get soundsChannel => 'Dźwięki natury';

  @override
  String get settingsEndTone => 'Dźwięk końca minutnika';

  @override
  String get toneGentle => 'Łagodne sygnały';

  @override
  String get toneBeeps => 'Sygnały';

  @override
  String get toneWood => 'Stukanie w drewno';

  @override
  String get toneBird => 'Śpiew ptaka';

  @override
  String get toneStream => 'Strumyk';

  @override
  String get toneSystem => 'Dźwięk telefonu';

  @override
  String get speechOnPhone => 'Na tym telefonie';

  @override
  String get speechAllLanguages => 'Wszystkie języki';

  @override
  String get speechSearchLanguage => 'Szukaj języków';

  @override
  String get speechGetVoices => 'Pobierz więcej głosów';

  @override
  String get speechGetVoicesHint => 'Języki bez głosu można pobrać w ustawieniach mowy telefonu.';

  @override
  String get speechSettingsFailed => 'Nie udało się otworzyć ustawień mowy na tym telefonie.';

  @override
  String get speechVoiceMissing => 'Brak zainstalowanego głosu';

  @override
  String get speechPause => 'Pauza między powtórzeniami';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Czytaj przykład razem z odpowiedzią';

  @override
  String get flashListen => 'Słuchaj';

  @override
  String get flashListenNext => 'Następna fiszka';

  @override
  String get flashListenEmpty => 'Brak fiszek do słuchania.';

  @override
  String get flashViewTable => 'Tabela';

  @override
  String get flashViewCards => 'Fiszki';

  @override
  String get flashSwapSides => 'Zamień kolumny';

  @override
  String get flashSort => 'Sortuj';

  @override
  String get flashSortNewest => 'Najnowsze najpierw';

  @override
  String get flashSortAlpha => 'Od A do Z';

  @override
  String get flashSortDue => 'Do powtórki najpierw';

  @override
  String get flashSortHard => 'Najtrudniejsze najpierw';

  @override
  String get flashPasteCards => 'Wklej fiszki';

  @override
  String get flashClipboardEmpty => 'Schowek nie zawiera tekstu.';

  @override
  String get flashMenuAdd => 'Dodaj fiszki';

  @override
  String get flashMenuDeck => 'Talia';

  @override
  String get flashToday => 'Dziś';

  @override
  String get flashStudyNow => 'Ucz się';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odpowiedzi',
      many: '$count odpowiedzi',
      few: '$count odpowiedzi',
      one: '1 odpowiedź',
      zero: 'Brak odpowiedzi',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Deszcz w lesie';

  @override
  String get autoBackupTitle => 'Automatyczne kopie';

  @override
  String get autoBackupDesc => 'Codziennie na tym telefonie; zachowywane jest ostatnie 7';

  @override
  String get autoBackupHint =>
      'Te kopie zostają na tym telefonie i znikają po odinstalowaniu aplikacji. Aby przenieść się na nowy telefon, zapisz plik przez „Kopia zapasowa”.';

  @override
  String get autoBackupNone => 'Brak automatycznej kopii. Pierwsza powstanie dziś.';

  @override
  String get autoBackupRestore => 'Przywróć';

  @override
  String autoBackupConfirm(String date) {
    return 'Zastąpić wszystkie obecne dane kopią z $date?';
  }

  @override
  String get autoBackupRestored => 'Przywrócono.';

  @override
  String get errorLogTitle => 'Dziennik błędów';

  @override
  String get errorLogHint =>
      'Jeśli coś pójdzie nie tak, zostanie to tu zapisane: tylko rodzaj błędu i miejsce w kodzie, nigdy Twoje treści. Udostępnij go, aby pomóc naprawić problem.';

  @override
  String get errorLogEmpty => 'Brak zapisanych błędów.';

  @override
  String get errorLogClear => 'Wyczyść';

  @override
  String get soundsWithFocus => 'Odtwarzaj z sesjami skupienia';

  @override
  String get soundsWithFocusHint =>
      'Twój miks startuje z sesją skupienia i zatrzymuje się w przerwach.';

  @override
  String get soundsSavedMixes => 'Zapisane miksy';

  @override
  String get soundsSaveMix => 'Zapisz ten miks';

  @override
  String get soundsMixNameHint => 'Nazwa, np. Deszczowa biblioteka';

  @override
  String soundsDeleteMix(String name) {
    return 'Usunąć miks „$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Raz dziennie, tylko gdy są fiszki do powtórki';

  @override
  String get settingsReviewTime => 'Godzina przypomnienia';

  @override
  String get shortcutFocus => 'Skupienie';

  @override
  String get shortcutNewTask => 'Nowe zadanie';

  @override
  String get shortcutReview => 'Powtórz fiszki';

  @override
  String get shortcutSounds => 'Dźwięki natury';

  @override
  String get myDayTitle => 'Zacznij dzień';

  @override
  String get myDayHint => 'Twój dzień w skrócie, potem jedno dotknięcie do skupienia';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zadania na dziś',
      many: '$count zadań na dziś',
      few: '$count zadania na dziś',
      one: '1 zadanie na dziś',
      zero: 'Brak zadań na dziś',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Dziś nie ma już wydarzeń';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Dalej: $title o $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zostało $count nawyku',
      many: 'Zostało $count nawyków',
      few: 'Zostały $count nawyki',
      one: 'Został 1 nawyk',
      zero: 'Wszystkie nawyki zrobione',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Zacznij od sesji skupienia';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi as-Sani';

  @override
  String get hijriMonth5 => 'Dżumada al-Ula';

  @override
  String get hijriMonth6 => 'Dżumada al-Achira';

  @override
  String get hijriMonth7 => 'Radżab';

  @override
  String get hijriMonth8 => 'Szaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Szawwal';

  @override
  String get hijriMonth11 => 'Zu al-Kada';

  @override
  String get hijriMonth12 => 'Zu al-Hidżdża';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year r. H.';
  }

  @override
  String get settingsHijri => 'Daty hidżry';

  @override
  String get settingsHijriHint => 'Pokazywane w kalendarzu i na ekranie głównym (Umm al-Kura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dni',
      one: '1 dzień',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Dziś $done z $goal fiszek';
  }

  @override
  String get studyGoalReached => 'Dzienny cel osiągnięty. Brawo!';

  @override
  String get studyWeekTitle => 'Twój tydzień';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odpowiedzi w 7 dni',
      one: '1 odpowiedź w 7 dni',
      zero: 'Brak odpowiedzi w 7 dni',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration skupienia w 7 dni';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Seria: $current · Najlepsza: $best';
  }

  @override
  String get studyGoalTitle => 'Dzienny cel (fiszki)';

  @override
  String get studyGoalOff => 'Wyłączony';

  @override
  String get focusDndTitle => 'Nie przeszkadzać podczas skupienia';

  @override
  String get focusDndHint => 'Włącza się przy każdej sesji skupienia i wyłącza w przerwie';

  @override
  String get focusDndNeedsAccess =>
      'Zezwól na dostęp w ustawieniach telefonu, aby z tego korzystać';

  @override
  String get voiceInput => 'Mów, aby pisać';

  @override
  String get voiceInputPrompt => 'Mów teraz';

  @override
  String get voiceInputUnavailable =>
      'Pisanie głosowe nie jest dostępne na tym telefonie. Zainstaluj lub włącz usługę mowy (np. Rozpoznawanie i synteza mowy od Google).';

  @override
  String get prayerFajr => 'Fadżr';

  @override
  String get prayerSunrise => 'Wschód słońca';

  @override
  String get prayerDhuhr => 'Zuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isza';

  @override
  String get prayerMethodMwl => 'Muzułmańska Liga Świata';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Kura, Mekka';

  @override
  String get prayerMethodEgypt => 'Egipski Urząd Generalny';

  @override
  String get prayerMethodJordan => 'Jordania, Ministerstwo Awkafu';

  @override
  String get prayerMethodKarachi => 'Uniwersytet Nauk Islamskich, Karaczi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Region Zatoki';

  @override
  String get prayerMethodKuwait => 'Kuwejt';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Turcja, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malezja, Indonezja';

  @override
  String get prayerMethodFrance => 'Francja (12°)';

  @override
  String get prayerMethodRussia => 'Rosja, Zarząd Duchowy';

  @override
  String prayerNotifTitle(String name) {
    return 'Czas na $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Czas modlitwy · $time';
  }

  @override
  String get prayerTitle => 'Czasy modlitw';

  @override
  String get prayerOffHint =>
      'Wybierz miasto, aby zobaczyć czasy modlitw. Są obliczane na telefonie; dostęp do lokalizacji nie jest potrzebny.';

  @override
  String get prayerChooseCity => 'Wybierz miasto';

  @override
  String get prayerCity => 'Miasto';

  @override
  String get prayerCitySearch => 'Szukaj miasta';

  @override
  String get prayerMethod => 'Metoda obliczania';

  @override
  String get prayerHanafiAsr => 'Asr hanaficki (późniejszy)';

  @override
  String get prayerReminders => 'Powiadamiaj przy każdej modlitwie';

  @override
  String get prayerPauseFocus => 'Wstrzymuj skupienie w czasie modlitwy';

  @override
  String get prayerPauseFocusHint => 'Trwająca sesja zostanie wstrzymana; kontynuuj po modlitwie';

  @override
  String get prayerTurnOff => 'Wyłącz czasy modlitw';

  @override
  String get prayerAccuracyNote =>
      'Obliczone czasy mogą różnić się o kilka minut od czasów w Twoim meczecie.';

  @override
  String prayerNext(String name, String time) {
    return '$name o $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Ten plik Anki ma najnowszy format. W Anki wyeksportuj ponownie z włączoną opcją „Obsługa starszych wersji Anki”, a potem zaimportuj ten plik.';

  @override
  String get importTemplate => 'Szablon arkusza';

  @override
  String get importTemplateFront => 'jabłko';

  @override
  String get importTemplateBack => 'okrągły owoc';

  @override
  String get importTemplateExample => 'Codziennie jem jabłko.';

  @override
  String get importTemplateTag => 'jedzenie';

  @override
  String get starterTitle => 'Talie na start';

  @override
  String get starterHint =>
      'Dodaj jedną, aby od razu spróbować nauki. Możesz ją potem edytować lub usunąć.';

  @override
  String get starterAdd => 'Dodaj';

  @override
  String get starterWords => 'Codzienne słowa angielskie (po arabsku)';

  @override
  String get starterCapitals => 'Stolice świata';

  @override
  String get starterElements => 'Pierwiastki chemiczne';

  @override
  String get settingsAccent => 'Kolor akcentu';

  @override
  String get accentViolet => 'Fioletowy';

  @override
  String get accentBlue => 'Niebieski';

  @override
  String get accentTeal => 'Morski';

  @override
  String get accentGreen => 'Zielony';

  @override
  String get accentRose => 'Różany';

  @override
  String get accentAmber => 'Bursztynowy';

  @override
  String get settingsFlashTextSize => 'Rozmiar tekstu fiszek';

  @override
  String get settingsFlashTextSample => 'Przykład';

  @override
  String get widgetStartFocus => 'Dotknij, aby się skupić';

  @override
  String widgetFocusUntil(String time) {
    return 'Skupienie do $time';
  }

  @override
  String get widgetNoCardsDue => 'Fiszki: wszystko zrobione';

  @override
  String get faqMyDayQ => 'Co robi „Zacznij dzień”?';

  @override
  String get faqMyDayA =>
      'Raz dziennie ekran główny to proponuje: zobacz dzisiejsze zadania, następne wydarzenie, pozostałe nawyki i fiszki do powtórki, a potem jednym dotknięciem zacznij sesję skupienia. Przytrzymaj ikonę aplikacji, by mieć szybkie akcje, albo dodaj widżet, by widzieć czas skupienia i fiszki do powtórki.';

  @override
  String get faqTasksQ => 'Jak dodać zadanie z przypomnieniem?';

  @override
  String get faqTasksA =>
      'Dotknij Nowe zadanie na ekranie głównym lub + w Zadaniach. Wpisz tytuł lub podyktuj go mikrofonem, potem ustaw termin, godzinę i przypomnienie. Zaległe zadania są na górze listy.';

  @override
  String get faqFocusQ => 'Jak działa minutnik skupienia?';

  @override
  String get faqFocusA =>
      'Wybierz Pomodoro, odliczanie lub czas otwarty i naciśnij Start; przerwy mogą następować automatycznie. W Ustawieniach wybierzesz dźwięk zakończenia, włączysz Nie przeszkadzać podczas skupienia i odtworzysz dźwięki natury przy każdej sesji.';

  @override
  String get faqSoundsQ => 'Czy mogę miksować dźwięki natury?';

  @override
  String get faqSoundsA =>
      'Włącz do sześciu prawdziwych nagrań, ustaw każdą głośność i zapisz miks pod nazwą. Grają dalej w tle, a wyłącznik czasowy może je zatrzymać. Nie używamy muzyki.';

  @override
  String get faqCalendarQ => 'Czy kalendarz może pokazywać daty hidżry?';

  @override
  String get faqCalendarA =>
      'Tak. Daty hidżry (Umm al-Kura) pojawiają się automatycznie po arabsku i można je włączyć w Ustawieniach dla każdego języka. Wydarzenia, zadania z terminem i kamienie milowe projektów są widoczne razem.';

  @override
  String get faqFlashcardsQ => 'Jak powtórki wybierają, które fiszki widzę?';

  @override
  String get faqFlashcardsA =>
      'Fiszki, które znasz dobrze, wracają po dłuższych przerwach, a te, których nie pamiętasz, wracają szybko (powtórki rozłożone w czasie). Oceniaj każdą odpowiedź: Jeszcze raz, Trudne, Dobrze lub Łatwe. Ustaw dzienny cel i utrzymuj serię na karcie Dziś. Ustaw datę egzaminu w talii, aby widzieć pozostałe dni i ile nowych fiszek uczyć się dziennie. Sortuj według „Moja kolejność”, by przeciągać fiszki, dotknij głośnika po dowolnej stronie, by ją usłyszeć, a szybkość i powtórzenia ustaw w menu Mowa.';

  @override
  String get faqImportQ => 'Czy mogę przenieść fiszki z Anki lub Excela?';

  @override
  String get faqImportA =>
      'Tak. W talii wybierz Importuj, a potem plik: Anki (.apkg), Excel (.xlsx) lub CSV, i dopasuj kolumny. Użyj „Szablon arkusza”, by pisać fiszki na komputerze. Obrazy i dźwięki z plików Anki nie są importowane.';

  @override
  String get faqNotesQ => 'Co potrafią notatki?';

  @override
  String get faqNotesA =>
      'Pisz swobodnie z listami i formatowaniem, przypinaj lub oznaczaj ważne notatki jako ulubione, dodawaj tagi i łącz notatki z zadaniami. Przycisk mikrofonu pozwala dyktować. Nowa notatka może zacząć się od szablonu (wykład, streszczenie książki, dziennik, plan tygodnia), a przycisk obrazu dodaje zdjęcia.';

  @override
  String get faqHabitsQ => 'Jak liczone są serie nawyków?';

  @override
  String get faqHabitsA =>
      'Dzień się liczy, gdy osiągniesz cel nawyku w zaplanowany dzień. Wstrzymanie nawyku chroni serię. Każdy nawyk może mieć własną godzinę przypomnienia.';

  @override
  String get faqGoalsQ => 'Jak cele śledzą postęp?';

  @override
  String get faqGoalsA =>
      'Nadaj celowi wartość docelową i jednostkę, potem zapisuj postęp. Jego karta pokazuje, jak daleko jesteś i ile zostało do terminu.';

  @override
  String get faqProjectsQ => 'Do czego służą projekty?';

  @override
  String get faqProjectsA =>
      'Grupuj zadania w projekcie, dodawaj kamienie milowe z datami i śledź ogólny postęp. Kamienie milowe pojawiają się też w kalendarzu.';

  @override
  String get faqInsightsQ => 'Co pokazują Statystyki?';

  @override
  String get faqInsightsA =>
      'Twój czas skupienia, ukończone zadania i naukę w dniach i tygodniach, z łagodnymi sugestiami. Wszystko jest liczone na Twoim telefonie.';

  @override
  String get faqSpacesQ => 'Gdzie są wszystkie sekcje?';

  @override
  String get faqSpacesA =>
      'Przestrzenie zawierają każdą część aplikacji (notatki, talie, nawyki, cele, projekty, dźwięki i więcej), dzięki czemu główny pasek jest prosty.';

  @override
  String get faqBackupQ => 'Jak są zabezpieczane moje dane?';

  @override
  String get faqBackupA =>
      'Każdego dnia aplikacja po cichu zapisuje zaszyfrowaną kopię na tym telefonie i trzyma ostatnie 7. W Ustawieniach możesz też wyeksportować plik kopii chroniony hasłem i przywrócić go na innym telefonie.';

  @override
  String get faqPrayerQ => 'Jak działają czasy modlitw?';

  @override
  String get faqPrayerA =>
      'Wybierz miasto w Ustawienia → Czasy modlitw. Czasy są liczone na telefonie metodą stosowaną w tym miejscu, a metodę i szkołę dla Asr możesz zmienić. Możesz dostawać powiadomienie przy każdej modlitwie, a trwająca sesja skupienia zostanie wstrzymana.';

  @override
  String get faqPrivacyQ => 'Gdzie są przechowywane moje dane?';

  @override
  String get faqPrivacyA =>
      'Tylko na Twoim telefonie, w zaszyfrowanej bazie danych. Nie ma konta ani śledzenia. Z internetu korzystają tylko funkcje, które sam włączysz, np. opcjonalny asystent.';

  @override
  String get faqAssistantQ => 'Czym jest asystent?';

  @override
  String get faqAssistantA =>
      'Opcjonalnym pomocnikiem, którego łączysz w Ustawieniach z własną usługą AI. Domyślnie jest wyłączony i pyta przed wysłaniem tekstu notatki.';

  @override
  String get tourPlanTitle => 'Zaplanuj dzień';

  @override
  String get tourPlanBody =>
      'Zadania, kalendarz i nawyki w jednym spokojnym miejscu. Zaczynaj każdy poranek od „Zacznij dzień”.';

  @override
  String get tourFocusTitle => 'Skup się głęboko';

  @override
  String get tourFocusBody =>
      'Sesje na czas z prawdziwymi dźwiękami natury, trybem Nie przeszkadzać i łagodnymi sygnałami końca.';

  @override
  String get tourLearnTitle => 'Ucz się na trwałe';

  @override
  String get tourLearnBody =>
      'Fiszki z powtórkami rozłożonymi w czasie, mowa w wielu językach i import z Anki lub Excela.';

  @override
  String get helpTitle => 'Pomoc i pytania';

  @override
  String get helpOpen => 'Otwórz';

  @override
  String get helpTour => 'Obejrzyj przewodnik';

  @override
  String get tourNext => 'Dalej';

  @override
  String get tourDone => 'Zaczynajmy';

  @override
  String get transferColTitle => 'Tytuł';

  @override
  String get transferColNotes => 'Notatki';

  @override
  String get transferColBody => 'Tekst';

  @override
  String get transferColDue => 'Termin';

  @override
  String get transferColPriority => 'Priorytet (0-3)';

  @override
  String get transferColDone => 'Zrobione';

  @override
  String get transferColProject => 'Projekt';

  @override
  String get transferColCategory => 'Kategoria';

  @override
  String get transferTitle => 'Import i eksport';

  @override
  String get transferSaveAs => 'Zapisz jako';

  @override
  String get transferImport => 'Importuj z pliku';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV lub tabela w Wordzie. Kolumny: tytuł, termin (2026-12-31), priorytet 0-3, zrobione, projekt, notatki. Zadania, które już są w aplikacji, są pomijane.';

  @override
  String get transferImportNotesHint =>
      'Pliki Word, Markdown lub tekstowe stają się notatką. Excel lub CSV: jedna notatka na wiersz (tytuł, tekst).';

  @override
  String get transferSaved => 'Plik zapisany';

  @override
  String get transferFailed => 'Nie udało się utworzyć pliku. Nic się nie zmieniło.';

  @override
  String get transferUnsupported =>
      'Tego pliku nie da się tu odczytać. Użyj Excela, CSV, Worda, Markdown lub tekstu.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Dodano $added',
      one: 'Dodano 1',
      zero: 'Nic nowego do dodania',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Tekst';

  @override
  String get transferAllNotes => 'Wszystkie notatki';

  @override
  String get transferThisNote => 'Ta notatka';

  @override
  String get transferDeckFormats => 'Zapisz jako Excel, Word lub PDF';

  @override
  String get faqFilesQ => 'Czy mogę używać plików Excel, Word lub PDF?';

  @override
  String get faqFilesA =>
      'Tak. Zadania i Notatki mają u góry przycisk importu i eksportu (dwie strzałki), a każda talia ma go w swoim menu. Zapisuj jako Excel, CSV, Word lub PDF albo wczytuj pliki Excel, CSV, Word, Markdown lub tekstowe. Nazwy kolumn mogą być w dowolnym języku aplikacji, a zapisane pliki zawsze można zaimportować ponownie.';

  @override
  String get tplLecture => 'Wykład';

  @override
  String get tplBook => 'Streszczenie książki';

  @override
  String get tplJournal => 'Dziennik';

  @override
  String get tplWeek => 'Plan tygodnia';

  @override
  String get tplLectureBody =>
      '## Najważniejsze punkty\n- \n\n## Pytania\n- [ ] \n\n## Podsumowanie\n';

  @override
  String get tplBookBody =>
      '## Główna myśl\n\n## Czego się nauczyłem\n- \n\n## Cytaty\n> \n\n## Do zastosowania\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Jestem wdzięczny za\n- \n\n## Dzisiejsze skupienie\n- [ ] \n\n## Notatki\n';

  @override
  String get tplWeekBody =>
      '## Cele na ten tydzień\n- [ ] \n\n### Sobota\n- [ ] \n\n### Niedziela\n- [ ] \n\n### Poniedziałek\n- [ ] \n\n### Wtorek\n- [ ] \n\n### Środa\n- [ ] \n\n### Czwartek\n- [ ] \n\n### Piątek\n- [ ] \n';

  @override
  String get tplHint => 'Zacznij od szablonu';

  @override
  String get noteImage => 'Obraz';

  @override
  String get noteAddImage => 'Dodaj obraz';

  @override
  String get noteImageUnreadable => 'Ten plik nie jest obrazem, który aplikacja może odczytać.';

  @override
  String get noteImageTooLarge => 'Ten obraz jest za duży.';

  @override
  String get examSet => 'Ustaw datę egzaminu';

  @override
  String get examDate => 'Data egzaminu';

  @override
  String get examToday => 'Egzamin dziś. Powodzenia!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Egzamin za $count dni',
      one: 'Egzamin jutro',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ucz się $count nowych fiszek dziennie',
      one: 'ucz się 1 nowej fiszki dziennie',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'wszystkie fiszki opanowane, powtarzaj dalej';

  @override
  String examRaiseLimit(int count) {
    return 'Pokazuj $count nowych fiszek dziennie';
  }

  @override
  String get backupDriveHint =>
      'Aby mieć kopię w sieci, wybierz Dysk Google (lub inną aplikację chmurową) na ekranie zapisu, który się otworzy.';

  @override
  String get flashShareDeck => 'Udostępnij talię znajomemu';

  @override
  String get flashSortManual => 'Moja kolejność (przeciągnij)';

  @override
  String get flashReorderHint => 'Przytrzymaj uchwyt i przeciągnij fiszkę, aby ją przenieść.';

  @override
  String get flashReorderNeedsAll => 'Wyczyść wyszukiwanie i filtry, aby przeciągać fiszki.';

  @override
  String get flashDragHandle => 'Przeciągnij, aby przenieść';

  @override
  String get reportTitle => 'Raport miesięczny';

  @override
  String get reportFocus => 'Czas skupienia';

  @override
  String reportSessions(int count) {
    return 'Sesje: $count';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Najlepszy dzień: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return 'Aktywne dni: $count';
  }

  @override
  String get reportCards => 'Powtórzone fiszki';

  @override
  String reportCardsKnown(String percent) {
    return 'Zapamiętane: $percent';
  }

  @override
  String get reportTasks => 'Ukończone zadania';

  @override
  String get reportHabits => 'Odhaczenia nawyków';

  @override
  String get reportEmpty => 'W tym miesiącu nic jeszcze nie zapisano.';

  @override
  String get reportSave => 'Zapisz jako PDF lub Word';

  @override
  String get reportPrevMonth => 'Poprzedni miesiąc';

  @override
  String get reportNextMonth => 'Następny miesiąc';

  @override
  String get careTitle => 'Dbanie o telefon i dane';

  @override
  String get storageTitle => 'Pamięć';

  @override
  String get storageSubtitle => 'Co zajmuje miejsce i porządki z nieużywanymi obrazami';

  @override
  String get storagePictures => 'Obrazy w notatkach';

  @override
  String get storageCardMedia => 'Obrazy i dźwięki w fiszkach';

  @override
  String get storageText => 'Tekst notatek';

  @override
  String get storageFree => 'Wolne na telefonie';

  @override
  String get storageLow =>
      'Pamięć telefonu jest prawie pełna. Zwolnij trochę miejsca, aby kopie i przypomnienia działały dalej.';

  @override
  String storageUnused(int count, String size) {
    return 'Nieużywane obrazy: $count ($size)';
  }

  @override
  String get storageNoUnused => 'Brak nieużywanych obrazów. Wszystko w porządku.';

  @override
  String get storageClean => 'Usuń nieużywane obrazy';

  @override
  String storageCleaned(int count) {
    return 'Usunięte obrazy: $count';
  }

  @override
  String get storageHint =>
      'Obraz liczy się jako nieużywany tylko wtedy, gdy nie pokazuje go żadna notatka, także w koszu.';

  @override
  String get batteryTitle => 'Niech przypomnienia działają';

  @override
  String get batterySubtitle => 'Niektóre telefony zatrzymują aplikacje w tle. Sprawdź swój.';

  @override
  String get batteryStatusOk =>
      'Oszczędzanie baterii nie ogranicza tej aplikacji. Przypomnienia i dźwięki powinny docierać na czas.';

  @override
  String get batteryStatusLimited =>
      'Oszczędzanie baterii może zatrzymywać aplikację w tle, przez co przypomnienia i dźwięki mogą się spóźniać lub nie pojawiać.';

  @override
  String get batteryOpen => 'Otwórz ustawienia baterii';

  @override
  String get batteryOpenApp => 'Otwórz ustawienia aplikacji';

  @override
  String get batteryGeneric =>
      'W ustawieniach baterii wybierz tę aplikację i ustaw Bez ograniczeń (lub Nie optymalizuj).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: otwórz też Bezpieczeństwo › Uprawnienia › Autostart i włącz tę aplikację, a Oszczędzanie baterii ustaw na Bez ograniczeń.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: otwórz Bateria › ta aplikacja i zezwól na działanie w tle i autostart; zablokuj aplikację na liście ostatnich aplikacji.';

  @override
  String get batterySamsung =>
      'Samsung: Bateria › Limity użycia w tle: usuń tę aplikację z Uśpionych aplikacji i Głęboko uśpionych aplikacji.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Uruchamianie aplikacji › ta aplikacja › zarządzaj ręcznie i zezwól na autostart, uruchamianie pośrednie i działanie w tle.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Bateria › Zużycie energii w tle › zezwól tej aplikacji i włącz autostart w uprawnieniach.';

  @override
  String get whatsNewTitle => 'Co nowego';

  @override
  String get whatsNewSubtitle => 'Ostatnie zmiany w kilku zdaniach';

  @override
  String get whatsNewDone => 'Rozumiem';

  @override
  String get whatsNewOrderTitle => 'Przeciągaj fiszki we własnej kolejności';

  @override
  String get whatsNewOrderBody =>
      'W talii wybierz Sortuj › Moja kolejność, potem przytrzymaj uchwyt i przeciągnij.';

  @override
  String get whatsNewSpeechTitle => 'Głośnik na każdej stronie fiszki';

  @override
  String get whatsNewSpeechBody =>
      'Dotknij go, aby usłyszeć słowo lub tłumaczenie. Szybkość, powtórzenia i głos są w menu powtórki. Język jest rozpoznawany z tekstu.';

  @override
  String get whatsNewReportTitle => 'Raport miesięczny';

  @override
  String get whatsNewReportBody =>
      'W Statystykach dotknij ikony raportu, aby zobaczyć miesiąc i zapisać go jako PDF lub Word.';

  @override
  String get whatsNewCareTitle => 'Dbanie o telefon i dane';

  @override
  String get whatsNewCareBody =>
      'Ustawienia mają teraz stronę pamięci z porządkowaniem obrazów i przewodnik po baterii dla marki Twojego telefonu.';

  @override
  String get whatsNewSoundTitle => 'Spokojniejsze dźwięki';

  @override
  String get whatsNewSoundBody =>
      'Dźwięki natury są łagodniejsze i cichsze, a karty z obrazami ładniejsze.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Sprawdzono $date: najnowsza kopia otwiera się poprawnie.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Sprawdzono $date: znaleziono uszkodzoną kopię i zastąpiono ją nową.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Sprawdzono $date: nie udało się otworzyć najnowszej kopii. Zapisz plik kopii samodzielnie w Ustawieniach.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Zwykle uczysz się około $time';
  }

  @override
  String get smartReviewTimeUse => 'Użyj';

  @override
  String get widgetNewNote => 'Nowa notatka';

  @override
  String get noteConnections => 'Tagi, linki i zadania';

  @override
  String get navCards => 'Fiszki';

  @override
  String get studyAnswerWay => 'Jak odpowiadać';

  @override
  String get studyMorePractice => 'Dodatkowe ćwiczenia';

  @override
  String get studySessionSettings => 'Ustawienia sesji';

  @override
  String get focusAdjustTitle => 'Twoja sesja';

  @override
  String get focusPresetsTitle => 'Gotowe';

  @override
  String get focusPresetStudy => 'Nauka';

  @override
  String get focusPresetDeep => 'Głęboka praca';

  @override
  String get focusPresetQuick => 'Szybki sprint';

  @override
  String get focusPresetReading => 'Czytanie';

  @override
  String get focusPresetWorkout => 'Rundy treningowe';

  @override
  String get focusAdjustMinutes => 'Długość skupienia';

  @override
  String get focusAdjustBreak => 'Długość przerwy';

  @override
  String get focusAdjustRounds => 'Rundy';

  @override
  String get focusRoundsOpen => 'Bez limitu';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Dotknij, aby zmienić czas';

  @override
  String get flashArrangeDecks => 'Uporządkuj talie';

  @override
  String get flashDeckActions => 'Opcje talii';

  @override
  String get starterBrowse => 'Gotowe talie';

  @override
  String get starterBrowseHint => 'Dodaj jednym dotknięciem i zacznij naukę';

  @override
  String get dashOpenDecks => 'Otwórz swoje fiszki';

  @override
  String speechVoiceNumber(String n) {
    return 'Głos $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Dobry rytm. Przerwa $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Zacznij przerwę';

  @override
  String tasksFinishAt(String time) {
    return 'Zacznij teraz, a skończysz wszystko do $time';
  }

  @override
  String get focusCalmPacing => 'Spokojne tempo';

  @override
  String get focusCalmPacingHint => 'Tylko pełne minuty i pierścień, bez tykających sekund';

  @override
  String get focusFlipHint => 'Połóż telefon ekranem w dół, aby zacząć';

  @override
  String get focusImmersive => 'Tryb immersyjny';

  @override
  String get focusImmersiveBlack => 'Czysta czerń (oszczędza baterię)';

  @override
  String get focusFlipToFocus => 'Obróć, aby się skupić';

  @override
  String get focusFlipToFocusHint =>
      'W trybie immersyjnym: ekranem w dół startuje, podniesienie wstrzymuje';

  @override
  String get guardTitle => 'Ochrona przed rozpraszaczami';

  @override
  String get guardSubtitle => 'Wstrzymuj rozpraszające aplikacje podczas skupienia';

  @override
  String get guardSwitch => 'Wstrzymuj rozpraszające aplikacje';

  @override
  String get guardSwitchHint => 'Podczas sesji skupienia i w godzinach Strażnika czasu';

  @override
  String get guardNeedsAccess => 'Wymaga przełącznika ułatwień dostępu: dotknij, aby go włączyć';

  @override
  String get guardDisclosureTitle => 'Jak działa ochrona';

  @override
  String get guardDisclosureBody =>
      'Aby wstrzymywać wybrane aplikacje, Deep Focus korzysta z usługi ułatwień dostępu Androida i widzi, która aplikacja jest otwarta. Przy włączonej opcji „Zamykaj Shorts i Reels” sprawdza też, czy na ekranie jest odtwarzacz krótkich filmów.\n\nNie czyta tekstu, nie zapisuje niczego, co widzi, i nic nie wysyła: wszystko zostaje na Twoim telefonie. Możesz ją wyłączyć w każdej chwili w ustawieniach ułatwień dostępu.';

  @override
  String get guardAgree => 'Zgadzam się, otwórz ustawienia';

  @override
  String get guardModeGentle => 'Łagodna';

  @override
  String get guardModeStrict => 'Ścisła';

  @override
  String get guardGentleHint => '5 sekund oddechu, potem Ty decydujesz';

  @override
  String get guardStrictHint => 'Wybrane aplikacje są zamknięte do końca skupienia';

  @override
  String get guardApps => 'Aplikacje do wstrzymania';

  @override
  String get guardAppsAllowed => 'Dozwolone aplikacje';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikacji',
      many: '$count aplikacji',
      few: '$count aplikacje',
      one: '1 aplikacja',
      zero: 'Jeszcze nie wybrano',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Zezwalaj tylko na wybrane aplikacje';

  @override
  String get guardAllowlistHint =>
      'Wszystkie inne aplikacje są wstrzymane; połączenia, ustawienia i klawiatura działają zawsze';

  @override
  String get guardShorts => 'Zamykaj Shorts i Reels';

  @override
  String get guardShortsHint =>
      'Zawsze, gdy ochrona jest włączona. Bez gwarancji: te aplikacje często się zmieniają';

  @override
  String get guardSchedule => 'Strażnik czasu';

  @override
  String get guardScheduleHint => 'Chroń też w wybrane dni i godziny, np. w szkole lub w pracy';

  @override
  String get guardFrom => 'Od';

  @override
  String get guardTo => 'Do';

  @override
  String get guardSearchApps => 'Szukaj aplikacji';

  @override
  String get guardNoApps => 'Nie znaleziono aplikacji';

  @override
  String get guardPrivacy =>
      'Działa tylko na Twoim telefonie: ochrona widzi, która aplikacja jest otwarta, nigdy jej zawartości, i nic nie wysyła.';

  @override
  String get guardBreathe => 'Wdech… i wydech';

  @override
  String get guardQuestion => 'Czy potrzebujesz teraz tej aplikacji?';

  @override
  String get guardBackToFocus => 'Wróć do skupienia';

  @override
  String get guardOpenFive => 'Otwórz na 5 minut';

  @override
  String get guardStrictBody => 'Ta aplikacja jest wstrzymana do końca Twojego skupienia.';

  @override
  String get guardShortsClosed => 'Krótkie filmy są zamknięte, dopóki ochrona jest włączona';

  @override
  String get faqGuardQ => 'Jak zatrzymać rozpraszające aplikacje podczas skupienia?';

  @override
  String get faqGuardA =>
      'Otwórz Skupienie → ustawienia minutnika → Ochrona przed rozpraszaczami. Wybierz aplikacje, a potem tryb Łagodny (5 sekund oddechu i pytanie „Czy potrzebujesz teraz tej aplikacji?”) lub Ścisły (zostają zamknięte). Działa podczas sesji skupienia, a ze Strażnikiem czasu w wybrane dni i godziny. „Zezwalaj tylko na wybrane aplikacje” wstrzymuje wszystko inne; połączenia, ustawienia i klawiatura działają zawsze. Android raz poprosi o włączenie ochrony w ustawieniach ułatwień dostępu. Widzi tylko, która aplikacja jest otwarta, i nic nie wysyła.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Przeniesiono do: $name';
  }

  @override
  String get notesDragHint => 'Przytrzymaj notatkę i przeciągnij ją na notes';

  @override
  String get guardReviewCards => 'Zamiast tego powtórz fiszki';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Czeka na Ciebie $count fiszki',
      many: 'Czeka na Ciebie $count fiszek',
      few: 'Czekają na Ciebie $count fiszki',
      one: 'Czeka na Ciebie 1 fiszka',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Awaryjnie: przytrzymaj 10 sekund';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Trzymaj dalej… $n';
  }

  @override
  String get guardWeekTitle => 'Ten tydzień';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauzy',
      many: '$count pauz',
      few: '$count pauzy',
      one: '1 pauza',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count powrotu do skupienia',
      many: '$count powrotów do skupienia',
      few: '$count powroty do skupienia',
      one: '1 powrót do skupienia',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Zmień nazwy słów';

  @override
  String get wordsSubtitle => 'Używaj własnych słów dla dowolnego tekstu w aplikacji';

  @override
  String get wordsHint =>
      'Dotknij tekstu, aby go zmienić. Twoje słowa obowiązują tylko w tym języku i trafiają do kopii.';

  @override
  String get wordsSearch => 'Szukaj tekstów';

  @override
  String get wordsChangedOnly => 'Tylko zmienione';

  @override
  String wordsOriginal(String text) {
    return 'Oryginał: $text';
  }

  @override
  String get wordsReset => 'Użyj oryginału';

  @override
  String get wordsResetAll => 'Przywróć wszystkie słowa';

  @override
  String get wordsResetAllConfirm => 'Każdy tekst w tym języku wróci do oryginału.';

  @override
  String get wordsNone => 'Nie znaleziono tekstu';

  @override
  String get settingsLanguageSearch => 'Szukaj języka';

  @override
  String get settingsLanguageNoMatch => 'Brak pasującego języka';

  @override
  String get soundsMyMusic => 'Twój dźwięk';

  @override
  String get soundsMusicHint =>
      'Odtwórz plik audio z telefonu. Nic nie jest kopiowane ani przesyłane.';

  @override
  String get soundsChooseMusic => 'Wybierz dźwięk';

  @override
  String get soundsRemoveMusic => 'Usuń dźwięk';

  @override
  String get wordPacksTitle => 'Pakiety słówek';

  @override
  String get wordPacksHint =>
      'Listy słów według tematów. Pobierz tylko wybrany język, a potem swobodnie edytuj lub usuwaj fiszki.';

  @override
  String get wordPacksFailed => 'Nie udało się pobrać. Sprawdź połączenie.';

  @override
  String get wordPacksEmpty => 'Słowa dla tego języka są jeszcze przygotowywane.';
}
